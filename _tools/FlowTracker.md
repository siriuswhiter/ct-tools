---
slug: flowtracker
title: FlowTracker
description: "Sparse representation of implicit flows with applications to side-channel detection"
year: 2016
target: LLVM IR
technique: Formal
guarantees: sound
available: false
repo: http://cuda.dcc.ufmg.br/flowtracker/
papers:
 - name: "Sparse representation of implicit flows with applications to side-channel detection"
   link: https://doi.org/10.1145/2892208.2892230
---

## Abstract

Information flow analyses traditionally use the Program Dependence Graph (PDG) as a supporting data-structure. This graph relies on Ferrante et al.'s notion of control dependences to represent implicit flows of information. A limitation of this approach is that it may create O(|I| x |E|) implicit flow edges in the PDG, where I are the instructions in a program, and E are the edges in its control flow graph. This paper shows that it is possible to compute information flow analyses using a different notion of implicit dependence, which yields a number of edges linear on the number of definitions plus uses of variables. Our algorithm computes these dependences in a single traversal of the program's dominance tree. This efficiency is possible due to a key property of programs in Static Single Assignment form: the definition of a variable dominates all its uses. Our algorithm correctly implements Hunt and Sands system of security types. Contrary to their original formulation, which required O(IxI) space and time for structured programs, we require only O(I). We have used our ideas to build FlowTracker, a tool that uncovers side-channel vulnerabilities in cryptographic algorithms. FlowTracker handles programs with over one-million assembly instructions in less than 200 seconds, and creates 24% less implicit flow edges than Ferrante et al.'s technique. FlowTracker has detected an issue in a constant-time implementation of Elliptic Curve Cryptography; it has found several time-variant constructions in OpenSSL, one issue in TrueCrypt and it has validated the isochronous behavior of the NaCl library.