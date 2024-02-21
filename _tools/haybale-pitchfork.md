---
slug: haybale-pitchfork
name: haybale-pitchfork
description: "-"
year: 2019
target: LLVM IR
technique: Symbolic
guarantees: "sound with restrictions"
available: true
repo: https://github.com/PLSysSec/haybale-pitchfork
---

![GitHub last commit](https://img.shields.io/github/last-commit/PLSysSec/haybale-pitchfork)![GitHub contributors](https://img.shields.io/github/contributors/PLSysSec/haybale-pitchfork)![GitHub Repo stars](https://img.shields.io/github/stars/PLSysSec/haybale-pitchfork)

## Abstract

pitchfork is a tool for verifying that constant-time code is, indeed, constant-time. It can analyze code written in C/C++, Rust, or any other language which can compile to LLVM bitcode (e.g., Swift, Go, and others). Given a function to analyze, pitchfork will either report that the function is constant-time, or give a detailed explanation of why it is not, including the line number of the constant-time violation in the original source, full sequence of branch decisions leading to the violation, and values of all variables at the point of the violation.

pitchfork is built on the [haybale](https://github.com/PLSysSec/haybale) symbolic execution engine, which is also written in Rust.