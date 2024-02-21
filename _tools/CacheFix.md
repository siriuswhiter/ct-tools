---
slug: cachefix
name: CacheFix
description: "Symbolic verification of cache side-channel freedom"
year: 2018
target: Trace
technique: Symbolic
guarantees: "sound with restrictions"
available: true
repo: https://bitbucket.org/sudiptac/cachefix/src/master/
papers:
 - name: "Symbolic verification of cache side-channel freedom"
   link: https://doi.org/10.1109/TCAD.2018.2858402
---

## Abstract

Cache timing attacks allow third-party observers to retrieve sensitive
information from program executions. But, is it possible to automatically
check the vulnerability of a program against cache timing attacks and then,
automatically shield program executions against these attacks? For a given
program, a cache configuration and an attack model, our CacheFix framework
either verifies the cache side-channel freedom of the program or synthesizes
a series of patches to ensure cache side-channel freedom during program
execution. At the core of our framework is a novel symbolic verification
technique based on automated abstraction refinement of cache semantics. The
power of such a framework allows symbolic reasoning over counterexample traces
and combines it with runtime monitoring for eliminating cache side channels
during program execution. Our evaluation with routines from OpenSSL ,
libfixedtimefixedpoint , GDK , and FourQlib libraries reveals that our CacheFix
approach (dis)proves cache side-channel freedom within an average of 75 s. In
nearly all test cases, CacheFix synthesizes all patches within 20 min to ensure
cache side-channel freedom of the respective routines during execution.