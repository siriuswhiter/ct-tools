---
slug: timecop
name: Timecop
description: "-"
year: "-"
target: Binary
technique: Dynamic
guarantees: "sound with restrictions"
available: true
site: https://www.post-apocalyptic-crypto.org/timecop/
papers:
 - name: "Automated dynamic analysis for timing side-channels (blog)"
   link: https://www.post-apocalyptic-crypto.org/timecop/
---

## Description

The **TIMECOP** tool is a tool that uses Valgrind's memcheck client requests `VALGRIND_MAKE_MEM_{UN}DEFINED`  to essentially implement a method like **ctgrind**. It is a part of the [SUPERCOP](https://bench.cr.yp.to/supercop.html) toolkit (**S**ystem for **U**nified **P**erformance **E**valuation **R**elated to **C**ryptographic **O**perations and **P**rimitives) and is used to evaluate the constant-time properties of implementations in SUPERCOP.

## Abstract

Even though modern CPUs and operating systems have various methods to separate processes from one another, some side-channels can remain that allow attackers to extract information across process, CPU [5](https://eprint.iacr.org/2015/898.pdf), or even network boundaries [3](https://cr.yp.to/antiforgery/cachetiming-20050414.pdf).

One such side-channel can open up when the execution time of a piece of code depends on secret data. This class of vulnerabilities has been used succesfully in the past to extract encryption keys from AES, private keys from RSA, and other kinds of attacks.

Timing side-channels can be hard to spot in the wild, but they can be detected automatically to some degree with dynamic analysis. TIMECOP applies this analysis to the SUPERCOP benchmarking suite, covering over 2,700 implementations of cryptographic algorithms. The [results](https://www.post-apocalyptic-crypto.org/timecop/#results) are presented.