---
slug: pin-based-cec
title: "Pin-based CEC"
description: "-"
year: 2019
target: Binary
technique: Dynamic
guarantees: "sound with restrictions"
available: true
repo: https://github.com/intel/pin-based-cec
---

![GitHub last commit](https://img.shields.io/github/last-commit/intel/pin-based-cec)![GitHub contributors](https://img.shields.io/github/contributors/intel/pin-based-cec)![GitHub Repo stars](https://img.shields.io/github/stars/intel/pin-based-cec)

## Abstract

Pin-based Constant Execution Checker (Pin-based CEC) is a dynamic binary instrumentation tool that checks for non-constant execution and memory-access patterns while a program is running. It does this by using the Intel PIN framework to trace every instruction that a targeted subroutine executes, logging all instruction pointers and memory addresses that get accessed, and comparing logs across subroutine invocations to ensure a constant execution profile. The tool uses taint analysis to determine if the execution differences are secret-dependent, to cut down on false positives.
