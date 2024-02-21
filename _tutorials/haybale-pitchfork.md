---
slug: haybale-pitchfork
title: haybale-pitchfork
description: "Constant Time Analysis with haybale-pitchfork"
---

pitchfork will handle variables as abstract data, either public or secret, and perform some symbolic analysis to unroll all possible execution paths, tainting all data depending on a secret along the way. If a secret variable is used in a branch or memory access, a warning is raised with the execution trace leading to the constant time violation.    
pitchfork works with LLVM bitcode, and not directly on the binary.

Installation
------------

TODO.

Bitcode generation
------------------
First, you need to generate the bitcode (an intermediate representation, between source code and assembly) corresponding to the code to asses. However, you don't need to annotate the target code in any way. 

You can generate the bitcode (\*.bc files) form a source file by compiling it with clang. Simply use the flags `-c -emit-llvm`. To make debugging easier, you may want to generate LLVM text-format files (\*.ll) using the flags `-S -emit-llvm`, and compile for debugging. For instance, compiling main.c into LLVM bitcode would result in the following commands:
```bash
clang -g -c -emit-llvm main.c -o main.bc
clang -g -S -emit-llvm main.c -o main.ll
```

Once you got the bitcode generated, all the following operations happens in a Rust wrapper.

Markup (declaring secrets)
--------------------------

pitchfork expects a Rust file with a `main()` function containing a project (your bitcode file(s)), some configurations (default configurations are available) and the entry point you want to use (the function name). The file must include the pitchfork crate :
```rust
use pitchfork::*;
```

You can then check whether the function is constant-time in all its inputs, or if it ever makes some constant-time violation by calling
```rust
pub fn check_for_ct_violation_in_inputs<'p>(
    funcname: &'p str, 
    project: &'p Project, 
    config: Config<'p, Backend>, 
    pitchfork_config: &PitchforkConfig
) -> ConstantTimeResultForFunction<'p>
```
This comes down to considering all inputs as secret. For a more fine grained analysis, you may need to define an abstract definition of its signature, to make some inputs secret (`AbstractData::secret()`), and others public (`AbstractData::default()`). Then, you can call pitchfork with 
```rust
pub fn check_for_ct_violation<'p>(
    funcname: &'p str, 
    project: &'p Project, 
    args: Option<Vec<AbstractData>>, // This is the abstract signature
    sd: &StructDescriptions,        
    config: Config<'p, Backend>, 
    pitchfork_config: &PitchforkConfig
) -> ConstantTimeResultForFunction<'p>
```
Both aforementioned function can be printed to return the result of the analysis.

You can use it all in a practical example like this:

```rust
fn main() {
    // Create the project from the path
    let project = Project::from_bc_dir(&Path::new("bitcode_dir/"), "bc")
        .unwrap_or_else(|e| panic!("Failed to create project: {}", e));
    // Assuming only the second input is secret
    let sig = Some(vec![
            AbstractData::default(),
            AbstractData::secret(),
            AbstractData::default(),
        ]);
    
    let result = check_for_ct_violation(
		"curve_donna", 
		&project, 
		sig,
		&StructDescriptions::new(),
		Config::default(), 
        &PitchforkConfig::default());
    
    println!("{}", result);
}
```

More information on how to fix some values in the signature, deal with pointers or data structures are available on Github, illustrated with practical examples.

Analysis (running pitchfork)
----------------------------

Once you have generated your bitcode and created the Rust file, you need to compile it, and link the pitchfork crate. To define such dependencies, Rust works with Cargo files which require a particular directory architecture. Namely, your Rust source code should be in a src/ folder. The following minimalist Cargo.toml file should then do the trick :

```toml
[package]
name = "pitchfork_harness"
version = "1.0.0"
edition = "2018"


[dependencies.pitchfork]
package = "haybale-pitchfork"
path = "[PITCHFORK FOLDERNAME]"
features = ["llvm-10"]
```

You should then have the following folder architecture:
```
./Cargo.toml
./src/
    main.rs
./bitcode_folder/
    *.bc
    *.ll
```

You can run pitchfork using 
```sh
cargo run 
```

Code with a large number of paths (recursive function calls, large loops, ...) can be long to process. If you do not get any result after 10 minutes, you may want to run the pitchfork on some less complex code.

