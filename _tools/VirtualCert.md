---
slug: virtualcert
title: VirtualCert
description: "System-level non-interference for constant-time cryptography"
year: 2014
target: x86
technique: Formal
guarantees: "sound"
available: true
site: https://www.fing.edu.uy/inco/grupos/gsi/project/virtualcert/
papers:
 - name: "System-level non-interference for constant-time cryptography"
   link: https://doi.org/10.1145/2660267.2660283
---

## Abstract

Cache-based attacks are a class of side-channel attacks that are particularly effective in virtualized or cloud-based environments, where they have been used to recover secret keys from cryptographic implementations. One common approach to thwart cache-based attacks is to use constant-time implementations, i.e., which do not branch on secrets and do not perform memory accesses that depend on secrets. However, there is no rigorous proof that constant-time implementations are protected against concurrent cache-attacks in virtualization platforms with shared cache; moreover, many prominent implementations are not constant-time. An alternative approach is to rely on system-level mechanisms. One recent such mechanism is stealth memory, which provisions a small amount of private cache for programs to carry potentially leaking computations securely. Stealth memory induces a weak form of constant-time, called S-constant-time, which encompasses some widely used cryptographic implementations. However, there is no rigorous analysis of stealth memory and S-constant-time, and no tool support for checking if applications are S-constant-time.

We propose a new information-flow analysis that checks if an x86 application executes in constant-time, or in S-constant-time. Moreover, we prove that constant-time (resp. S-constant-time) programs do not leak confidential information through the cache to other operating systems executing concurrently on virtualization platforms (resp. platforms supporting stealth memory). The soundness proofs are based on new theorems of independent interest, including isolation theorems for virtualization platforms (resp. platforms supporting stealth memory), and proofs that constant-time implementations (resp. S-constant-time implementations) are non-interfering with respect to a strict information flow policy which disallows that control flow and memory accesses depend on secrets. We formalize our results using the Coq proof assistant and we demonstrate the effectiveness of our analyses on cryptographic implementations, including PolarSSL AES, DES and RC4, SHA256 and Salsa20.