---
slug: ct-verif
title: ct-verif
description: "Constant Time Analysis with ct-verif"
---

Installation
------------

TODO.

Markup (declaring secrets)
--------------------------

ct-verif enables you to declare the private and public variables and/or memory regions (arrays) containing secret or public inputs, declassified outputs, but also you need to declare those regions to be non-overlapping.
ct-verif will pick up those secrets and look for influences on program behaviour violating the constant-time criterion (i.e. there shall be neither secret content dependent branching behaviour nor secret dependent memory address indexing (array accesses)).

ct-verif expects a wrapper function containing a call to the function(s) you want to analyze. If you want to mark secret variables or memory areas, you need to do this using special markup declarations and compile a binary from this. You can include external libraries just like with any other C program and you can analyze those libraries, if you wish. First, let's look at the markup.

You need to include the header file `ctverif.h` in your file, so you get to use them.
The syntax for the markup declarations can be seen in `ctverif.h`, but will be succinctly shown here for your benefit. Some examples would be:
```c
void public_in(smack_value_t);
void public_out(smack_value_t);
void declassified_out(smack_value_t);
void public_invariant(smack_value_t);
```
The only parameter of those functions is the name of your variable. You need to wrap your variable in a call to `__SMACK_value()`.
The more complicated part is non-overlapping region markup:
```c
__disjoint_regions(addr1,len1,addr2,len2);
```

You can use it all in a practical example, taken from the official repository, like this:
```c
int curve25519_donna_wrapper(u8 *mypublic, const u8 *secret, const u8 *basepoint) {
  __disjoint_regions(mypublic,32,secret,32);
  __disjoint_regions(basepoint,32,secret,32);

  /* Boilerplate (until modularity) */
  public_in(__SMACK_value(mypublic));
  public_in(__SMACK_value(secret));
  public_in(__SMACK_value(basepoint));

  /* Important stuff */
  public_in(__SMACK_values(basepoint,32));
  declassified_out(__SMACK_values(mypublic,32));
  //  declassified_out_object(__SMACK_return_object());

  return curve25519_donna(mypublic,secret,basepoint);
}
```

For the full documentation, please refer to the ct-verif paper and the header files themselves.

Analysis (compiling examples and running ct-verif)
--------------------------------------------

Using ct-verif compiles and analyzes programs in one step. After you have done the markup, you are ready to run ct-verif.

You can run ct-verif on a source code file called `my_example.c` and analyze the code entry point `main` with the following command:
```sh
$ ctverif --entry-points main my_example.c
```

You can expect some warnings and a lot of debug output during compilation steps.