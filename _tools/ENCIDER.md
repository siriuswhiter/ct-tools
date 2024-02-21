---
slug: encider
name: ENCIDER
description: "ENCIDER: Detecting Timing and Cache Side Channels in SGX Enclaves and Cryptographic APIs"
year: 2022
target: LLVM IR
technique: Symbolic
guarantees: "sound with restrictions"
available: true
repo: https://github.com/sysrel/ENCIDER
papers:
 - name: "ENCIDER: Detecting Timing and Cache Side Channels in SGX Enclaves and Cryptographic APIs"
   link: https://ieeexplore.ieee.org/abstract/document/9737388
---

![GitHub last commit](https://img.shields.io/github/last-commit/sysrel/ENCIDER)![GitHub contributors](https://img.shields.io/github/contributors/sysrel/ENCIDER)![GitHub Repo stars](https://img.shields.io/github/stars/sysrel/ENCIDER)

## Abstract

Confidential computing aims to secure the code and data in use by providing a Trusted Execution Environment (TEE) for applications using hardware features such as Intel SGX. Timing and cache side-channel attacks, however, are often outside the scope of the threat model, although once exploited they are able to break all the default security guarantees enforced by hardware. Unfortunately, tools detecting potential side-channel vulnerabilities within applications are limited and usually ignore the strong attack model and the unique programming model imposed by Intel SGX. This article proposes a precise side-channel analysis tool, ENCIDER, detecting both timing and cache side-channel vulnerabilities within SGX applications via inferring potential timing observation points and incorporating the SGX programming model into analysis. ENCIDER uses dynamic symbolic execution to decompose the side-channel requirement based on the bounded non-interference property and implements byte-level information flow tracking via API modeling. We have applied ENCIDER to 4 real-world SGX applications, 2 SGX crypto libraries, and 3 widely-used crypto libraries, and found 29 timing side channels and 73 code and data cache side channels. We also compare ENCIDER with three state-of-the-art side channel analysis tools using their benchmarks. ENCIDER does not only report most of the bugs with 20%-50% run time improvement and 65%-92% memory usage improvement, but also detects 9 missing bugs from these tools. We have reported our findings to the corresponding parties, e.g., Intel and ARM, who have confirmed most of the vulnerabilities detected.