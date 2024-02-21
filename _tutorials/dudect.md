---
slug: dudect
title: dudect
description: "Constant Time Analysis with dudect"
---

Installation
------------

TODO.


Preliminary work (setup dudect)
-------------------------------

dudect tries to detect if a specific operation executes in constant time. To do so, it evaluates the overall execution time of the function, feed with different inputs (we will talk about input *classes*), and check if the timing distribution are statistically different. Note that the target of the evaluation is considered as a black-box, so a different control flow resulting on the same exact execution time would not be detected. 

Due to this black-box testing, there is no need to annotate the code. However, dudect expects a main() function in charge of setting the analysis parameters and running the analysis (with `dudect_main()`), and two functions to initialize the input classes and call the code to asses respectively. The file containing these declarations must include dudect.h as it contains all the code to perform the analysis.

Two settings are available in the `dudect_config_t` structure:
* `chunk_size`: size (in byte) of each piece of data to feed in as input, 
* `number_measurements`: number of test to run before generating new inputs.

The two functions must have the following signatures:
```c
/**
 * Generates inputs used during testing (can be random of carefully chosen). 
 * Each input is c->chunk_size long, and can be associated with a class . 
 * @param c is the configuration defined in the main function
 * @param input_data is a c->chunk_size * c->number_measurements buffer
 * @param classes is a c->number_measurements buffer
 */
void prepare_inputs(dudect_config_t *c, uint8_t *input_data, uint8_t *classes);
/**
 * Proper wrapper calling operation to asses **once**. The input is a buffer, 
 * so you may need to parse it if you want to vary multiple input of the 
 * operation you are evaluating. 
 */
uint8_t do_one_computation(uint8_t *data);
```

You can use it all in a practical example, taken from the official repository, as follows:

```c
/* Evaluates the targeted operation, with fixed base point, on data */
uint8_t do_one_computation(uint8_t *data) {
  uint8_t out[32] = {0};
  uint8_t ret = 0;
  const uint8_t basepoint[32] = {9};
  curve25519_donna(out, data, basepoint);
  /* to avoid optimization */
  ret ^= out[0];
  return ret;
}

/* Generates two input classes : 
 *  class 0 inputs are only 00 bytes
 *  class 1 inputs are random bytes 
*/
void prepare_inputs(dudect_config_t *c, uint8_t *input_data, uint8_t *classes) {
  randombytes(input_data, c->number_measurements * c->chunk_size);
  for (size_t i = 0; i < c->number_measurements; i++) {
    classes[i] = randombit();
    if (classes[i] == 0) {
      memset(input_data + (size_t)i * c->chunk_size, 0x00, c->chunk_size);
    } else {
      // leave random
    }
  }
}
```

For the full documentation, please refer to the dudect paper, its repository and the header file itself. Namely, the different practical examples may help.

Analysis (compiling examples and running dudect)
------------------------------------------------

Once the C wrapper is ready, you need to compile all the binaries (tested function and dudect file) to run the analysis. If the function to test is in a library, you can simply link the library and include the appropriate header in your C file.

As a practical example, taken from the official repository, if the function to test is defined in curve25519-donna.c, and your dudect file is dut_donna.c, you can compile it like this:
```sh
gcc curve25519-donna.c dut_donna.c -o dut_donna -lm
```

The detailed output can be cryptic (lots of statistical information), but a clear message is displayed at the end of the line.

Depending on how much repetitions you set, and if you repeat the analysis until a leakage is found, it may take a while (namely if the implementation is constant time). If you have no result after 5 minutes, it suggests there is no leakage _for the input classes you defined_.

