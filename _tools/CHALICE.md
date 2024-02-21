---
slug: chalice
name: CHALICE
description: "Quantifying the Information Leakage in Cache Attacks via Symbolic Execution"
year: 2019
target: LLVM IR
technique: Symbolic
guarantees: other
available: true
repo: https://bitbucket.org/sudiptac/chalice
papers:
 - name: "Quantifying the Information Leakage in Cache Attacks via Symbolic Execution"
   link: https://dl.acm.org/doi/10.1145/3288758
---

## Abstract

Cache attacks allow attackers to infer the properties of a secret execution by
observing cache hits and misses. But how much information can actually leak
through such attacks? For a given program, a cache model, and an input, our
CHALICE framework leverages symbolic execution to compute the amount of
information that can possibly leak through cache attacks. At the core of CHALICE
is a novel approach to quantify information leakage that can highlight critical
cache side-channel leakage on arbitrary binary code. In our evaluation on
real-world programs from OpenSSL and Linux GDK libraries, CHALICE effectively
quantifies information leakage: For an AES-128 implementation on Linux, for
instance, CHALICE finds that a cache attack can leak as much as 127 out of 128
bits of the encryption key.