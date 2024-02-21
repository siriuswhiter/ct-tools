---
slug: sc-eliminator
title: SC-Eliminator
description: "Eliminating timing side-channel leaks using program repair"
year: 2018
target: LLVM IR
technique: Formal
guarantees: "sound"
available: true
repo: https://zenodo.org/record/1299357
papers:
 - name: "Eliminating timing side-channel leaks using program repair"
   link: https://doi.org/10.1145/3213846.3213851
---

## Abstract

We propose a method, based on program analysis and transformation, for eliminating timing side channels in software code that implements security-critical applications. Our method takes as input the original program together with a list of secret variables (e.g., cryptographic keys, security tokens, or passwords) and returns the transformed program as output. The transformed program is guaranteed to be functionally equivalent to the original program and free of both instruction- and cache-timing side channels. Specifically, we ensure that the number of CPU cycles taken to execute any path is independent of the secret data, and the cache behavior of memory accesses, in terms of hits and misses, is independent of the secret data. We have implemented our method in LLVM and validated its effectiveness on a large set of applications, which are cryptographic libraries with 19,708 lines of C/C++ code in total. Our experiments show the method is both scalable for real applications and effective in eliminating timing side channels.
