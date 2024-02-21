---
slug: anableps
title: ANABLEPS
description: "Time and Order: Towards Automatically Identifying Side-Channel Vulnerabilities in Enclave Binaries"
year: 2019
target: Binary
technique: Dynamic
guarantees: "no"
available: true
repo: https://github.com/OSUSecLab/ANABLEPS
papers:
 - name: "Time and Order: Towards Automatically Identifying Side-Channel Vulnerabilities in Enclave Binaries"
   link: https://www.usenix.org/conference/raid2019/presentation/wang-wubing
---

![GitHub last commit](https://img.shields.io/github/last-commit/OSUSecLab/ANABLEPS) ![GitHub contributors](https://img.shields.io/github/contributors/OSUSecLab/ANABLEPS)![GitHub Repo stars](https://img.shields.io/github/stars/OSUSecLab/ANABLEPS)

## Abstract

While Intel SGX provides confidentiality and integrity guarantees to programs running inside enclaves,
side channels remain a primary concern of SGX security. Previous works have broadly considered the
side-channel attacks against SGX enclaves at the levels of pages, caches, and branches, using a
variety of attack vectors and techniques. Most of these studies have only exploited the "order"
attribute of the memory access patterns (e.g., sequences of page accesses) as side channels. However,
the other attribute of memory access patterns, “time”, which characterizes the interval between two
specific memory accesses, is mostly unexplored. In this paper, we present ANABLEPS, a tool to automate
the detection of side-channel vulnerabilities in enclave binaries, considering both order and time.
ANABLEPS leverages concolic execution and fuzzing techniques to generate input sets for an arbitrary
enclave program, constructing extended dynamic control-flow graph representation of execution traces
using Intel PT, and automatically analyzing and identifying side-channel vulnerabilities using graph analysis.
