---
slug: ctgrind
name: ctgrind
description: "-"
year: 2010
target: Binary
technique: Dynamic
guarantees: "sound with restrictions"
available: true
repo: https://github.com/agl/ctgrind
papers:
 - name: "Checking that functions are constant time with Valgrind (blog)"
   link: https://www.imperialviolet.org/2010/04/01/ctgrind.html
---

## Description

**ctgrind** is a patch available for the Valgrind (memcheck) tool, which adds
functionality to mark areas of memory as uninitialized. This is to be used on
secrets. At runtime, the memcheck tool then checks that the secret
(uninitialized) memory is not used in branches or for memory access. As
Valgrind's memcheck supports the `VALGRIND_MAKE_MEM_UNDEFINED` and
`VALGRIND_MAKE_MEM_DEFINED` client requests, it is now possible to implement a
ctgrind-like approach without patches to Valgrind. Furthermore, the patches
are now outdated and no longer work with modern versions of Valgrind. Thus,
use Valgrind directly or use the [Timecop](timecop) tool, which is a
modern analogue of ctgrind.