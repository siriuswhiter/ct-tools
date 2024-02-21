---
slug: fact
name: FaCT
description: "FaCT: a DSL for timing-sensitive computation"
year: 2019
target: DSL
technique: Formal
guarantees: sound
available: true
repo: https://github.com/plsyssec/fact
papers:
 - name: "FaCT: a DSL for timing-sensitive computation"
   link: https://doi.org/10.1145/3314221.3314605
---

![GitHub last commit](https://img.shields.io/github/last-commit/plsyssec/fact)![GitHub contributors](https://img.shields.io/github/contributors/plsyssec/fact)![GitHub Repo stars](https://img.shields.io/github/stars/plsyssec/fact)

## Description

The **FaCT** tool is less of a tool for analysis of implementations for timing leakage and more of a domain-specific language for writing constant-time implementations that automatically removes leakage during compilation. The language is C-like, compiles into LLVM IR, and offers the `secret` keyword, which is used to mark certain variables as secret, which then triggers the compiler to generate constant-time code with regards to their values.

## Abstract

Real-world cryptographic code is often written in a subset of C intended to execute in constant-time, thereby avoiding timing side channel vulnerabilities. This C subset eschews structured programming as we know it: if-statements, looping constructs, and procedural abstractions can leak timing information when handling sensitive data. The resulting obfuscation has led to subtle bugs, even in widely-used high-profile libraries like OpenSSL.

To address the challenge of writing constant-time cryptographic code, we present FaCT, a crypto DSL that provides high-level but safe language constructs. The FaCT compiler uses a secrecy type system to automatically transform potentially timing-sensitive high-level code into low-level, constant-time LLVM bitcode. We develop the language and type system, formalize the constant-time transformation, and present an empirical evaluation that uses FaCT to implement core crypto routines from several open-source projects including OpenSSL, libsodium, and curve25519-donna. Our evaluation shows that FaCT’s design makes it possible to write readable, high-level cryptographic code, with efficient, constant-time behavior.