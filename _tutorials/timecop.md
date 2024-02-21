---
slug: timecop
title: Timecop
description: "Constant Time Analysis with Timecop"
---

Timecop uses Valgrind's memcheck module to dynamically analyse binary, looking for constant-time violations. This particular module is originally designed to raise a warning when some uninitialised variable is used in a branch or to perform some memory access. The idea behind Timecop is to annotate the source code so that the secret elements are *poisoned* and considered as uninitialised by valgrind. 

Installation
------------

TODO.


Markup (declaring secrets)
--------------------------


Timecop enables you to declare the private variables and/or memory regions (arrays) containing secret (*poison*), and to declassify variables (*unpoison*) in some part of the code if needed.
You can include external libraries just like with any other C program and you can analyse those libraries, if you wish (enable debugging if you want clear results). 

Since you will execute the binary with valgrind, you need to define a `main()` function, declare / poison the appropriate inputs, and call the function to evaluate. The file must include the header file `poison.h` to be able to annotate secret variables.

The syntax for the markup declarations can be seen in poison.h, but will be succinctly shown here for your benefit.
```c
poison(addr, len);
unpoison(addr, len);
```
Those functions respectively mark as secret and unmark `len` bytes starting at `addr`.


Note that a single call to the function is evaluated, using the values you provided, so you may need to provide different inputs to explore the code and detect a constant-time violation.

For the full documentation, and a practical example, please refer to the Timecop website.

Analysis (running Timecop)
--------------------------

You need to compile your binary before you can analyse it - libraries without annotations can also be analysed using a C wrapper calling a specific function with annotated inputs.

For valgrind to be able to output details on where the error occurred, we strongly advised to compile the targeted code with debug symbols.

You can generate binaries for analysis with your C compiler like so:
```sh
$ clang -Wall -Wextra -g my_example.c -o my_example
```

You can then run Timecop on the binary called "my_example" by running valgrind:
```sh
valgrind --track-origins=yes ./my_example
```

The run should be fairly quick, but may generate lots of warnings. If so, you may want to check if some of them are independent of your annotations.
