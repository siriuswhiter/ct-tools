---
slug: memsan
name: MemSan
description: "LLVM MemorySanitizer"
year: "-"
target: LLVM IR
technique: Dynamic
guarantees: "sound with restrictions"
available: true
site: https://clang.llvm.org/docs/MemorySanitizer.html
---

## Description

LLVM's MemorySanitizer can be used very much like Valgrind's memcheck in [ctgrind](ctgrind)
to detect timing leaks.
