---
slug: encover
title: ENCoVer
description: "ENCoVer: Symbolic exploration for information flow security"
year: 2012
target: Java
technique: Formal
guarantees: sound
available: true
repo: https://people.kth.se/~musard/files/encover.html
papers:
 - name: "ENCoVer: Symbolic exploration for information flow security"
   link: https://doi.org/10.1109/CSF.2012.24
---

## Abstract

We address the problem of program verification for information flow policies by means of symbolic execution and model checking. Noninterference-like security policies are formalized using epistemic logic. We show how the policies can be accurately verified using a combination of concolic testing and SMT solving. As we demonstrate, many scenarios considered tricky in the literature can be solved precisely using the proposed approach. This is confirmed by experiments performed with ENCOVER, a tool based on Java Path Finder and Z3, which we have developed for epistemic noninterference concolic verification.