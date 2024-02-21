---
slug: sidetrail
title: SideTrail
description: "SideTrail: Verifying time-balancing of cryptosystems"
year: 2018
target: LLVM IR
technique: Formal
guarantees: "other"
available: true
repo: https://github.com/aws/s2n-tls/tree/main/tests/sidetrail
papers:
 - name: "SideTrail: Verifying time-balancing of cryptosystems"
   link: https://doi.org/10.1007/978-3-030-03592-1_12
---

## Description

**SideTrail** (at one point called SideWinder) is a tool for verifying time-balanced implementations. The notion of time-balance is a weakening of the constant-time notion that allows for the presence of leakage that is provably under some bound $\delta$ (execution time is negligibly influenced by secrets). For $\delta = 0$ this notion fits well with the notion of constant-time. The tool uses a cross-product technique similar to that of **ct-verif**. However, instead of asserting the equality of memory accesses and program counter, it asserts the equality of an instruction counter. Its leakage model and technique are well suited against remote (non-cache) attackers.

The tool is deployed in the CI of Amazon's **s2n** library at [link](https://github.com/awslabs/s2n/tree/main/tests/sidetrail), where it is used to verify the time-balancedness of several parts of the codebase, handling the CBC decryption, HMAC padding, and AEAD decryption.

## Abstract

Timing-based side-channel attacks are a serious security risk for modern cryptosystems. The time-balancing countermeasure used by several TLS implementations (e.g. s2n, GnuTLS) ensures that execution timing is negligibly influenced by secrets, and hence no attacker-observable timing behavior depends on secrets. These implementations can be difficult to validate, since time-balancing countermeasures depend on global properties across multiple executions. In this work we introduce the tool SIDETRAIL, which we use to prove the correctness of time-balancing countermeasures in s2n, the open-source TLS implementation used across a range of products from AWS, including S3. SIDETRAIL is used in s2n’s continuous integration process, and has detected three side-channel issues that the s2n team confirmed and repaired before the affected code was deployed to production systems.