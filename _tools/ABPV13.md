---
slug: apbv13
name: ABPV13
description: "Formal verification of side-channel countermeasures using self-composition"
year: 2013
target: C
technique: Formal
guarantees: sound
available: false
papers:
 - name: "Formal verification of side-channel countermeasures using self-composition"
   link: https://doi.org/10.1016/j.scico.2011.10.008
---

## Abstract

Formal verification of cryptographic software implementations poses significant challenges
for off-the-shelf tools. This is due to the domain-specific characteristics of the code,
involving aggressive optimizations and non-functional security requirements, namely the
critical aspect of countermeasures against side-channel attacks. In this paper, we extend
previous results supporting the practicality of self-composition proofs of non-interference
and generalizations thereof. We tackle the formal verification of high-level security policies
adopted in the implementation of the recently proposed NaCl cryptographic library. We formalize
these policies and propose a formal verification approach based on self-composition, extending
the range of security policies that could previously be handled using this technique. We
demonstrate our results by addressing compliance with the NaCl security policies in real-world
cryptographic code, highlighting the potential for automation of our techniques.
