---
slug: memsan
title: MemSan
description: "Constant Time Analysis with MemSan"
---

The idea is to use the MemorySanitiser module shipped with clang to dynamically analyse binaries, looking for constant-time violations. This particular module is originally designed to raise a warning when some uninitialised variable is used in a branch or to perform some memory access. In our context, the idea is to annotate the source code so that secret elements are *poisoned* and considered as uninitialised during the analysis. 

Installation
------------

TODO.

Markup (declaring secrets)
--------------------------

MemSan enables you to declare the private variables and/or memory regions (arrays) containing secret (*poison*), and to declassify variables (*unpoison*) in some part of the code if needed.
You can include external libraries just like with any other C program and you can analyse those libraries, if you wish (enable debugging if you want clear results). 

Since you will execute the binary, you need to define a main() function, declare / poison the appropriate inputs, and call the function to evaluate. The file must include the header file sanitizer/msan_interface.h to be able to annotate secret variables.

The syntax for the markup declarations can be seen in the header file, but will be succinctly shown here for your benefit.
```c
/* Make memory region fully uninitialized (size bytes starting at a). */
void __msan_poison(const volatile void *a, size_t size);
/* Make memory region fully initialized (size bytes starting at a). */
void __msan_unpoison(const volatile void *a, size_t size);
/* Make a null-terminated string fully initialized. */
void __msan_unpoison_string(const volatile char *a);
/* Make first n parameters of the next function call fully initialized. */
void __msan_unpoison_param(size_t n);
```
None of these function change the content of the buffer. 

Note that a single call to the function is evaluated, using the values you provided, so you may need to provide different inputs to explore the code and detect a constant-time violation.

For the full documentation, please refer to the Clang documentation.

Analysis (running MemSan)
-------------------------

You need to compile your binary before you can analyse it - libraries without annotations can also be analysed using a C wrapper calling a specific function with annotated inputs. 

For MemSan to be enable, you need to specify the correct option, and use clang as a compiler. We strongly advised to compile the targeted code with debug symbols.

You can generate binaries for analysis like so:
```sh
$ clang -fsanitize=memory -g my_example.c -o my_example
```

The compilation option `-fsanitize-memory-track-origins` can help to track down the origin of the issue. To get meaningful stack traces in error messages add `-fno-omit-frame-pointer`, and disable inline assembly if needed.

By default, MemSan will stop after the first error. You can change this behaviour with the option `-fsanitize-recover=all`.

You can then run the binary called "my_example" and check the warning. The run should be fairly quick, but may generate lots of warnings on large and complex code. If so, you may want to check if some of them are independent of your annotations.
