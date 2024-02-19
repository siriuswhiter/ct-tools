## Constant-timeness verification tools

This page lists tools for testing and verification of constant-timeness of programs.

![Oprah giving everyone a tool](/assets/img/oprah.jpg)

## Tools

| Name                                    | Year | Target  | Technique   | Guarantees              |
| --------------------------------------- | ---- | ------- | ----------- | ----------------------- |
| [Abacus](#abacus)                       | 2021 | Binary  | Dynamic     | sound with restrictions |
| [ABPV13](#abpv13)                       | 2013 | C       | Formal      | sound                   |
| [ANABLEPS](#anableps)                   | 2019 | Binary  | Dynamic     | no                      |
| [Binsec/Rel](#binsecrel)                | 2020 | Binary  | Symbolic    | sound with restrictions |
| [Blazer](#blazer)                       | 2017 | Java    | Formal      | sound                   |
| [BPT17](#bpt17)                         | 2017 | C       | Symbolic    | sound with restrictions |
| [CacheAudit](#cacheaudit)               | 2013 | Binary  | Formal      | other                   |
| [CacheD](#cached)                       | 2016 | Trace   | Symbolic    | no                      |
| [CacheFix](#cachefix)                   | 2018 | Trace   | Symbolic    | sound with restrictions |
| [CacheQL](#cacheql)                     | 2022 | Binary  | Dynamic     | sound with restrictions |
| [CacheS](#caches)                       | 2019 | Binary  | Formal      | sound with restrictions |
| [CANAL](#canal)                         | 2018 | LLVM IR | Formal      | sound                   |
| [CaSym](#casym)                         | 2019 | LLVM IR | Symbolic    | sound                   |
| [CaType](#catype)                       | 2022 | Binary  | Formal      | sound                   |
| [CHALICE](#chalice)                     | 2019 | LLVM IR | Symbolic    | other                   |
| [COCO-CHANNEL](#coco-channel)           | 2018 | Java    | Symbolic    | sound                   |
| [Constantine](#constantine)             | 2021 | LLVM IR | Dynamic     | sound with restrictions |
| [ctgrind](#ctgrind)                     | 2010 | Binary  | Dynamic     | sound with restrictions |
| [ct-fuzz](#ct-fuzz)                     | 2020 | LLVM IR | Dynamic     | no                      |
| [ct-verif](#ct-verif)                   | 2016 | LLVM IR | Formal      | sound                   |
| [CT-WASM](#ct-wasm)                     | 2019 | WASM    | Formal      | sound                   |
| [DATA](#data)                           | 2018 | Binary  | Dynamic     | sound with restrictions |
| [dudect](#dudect)                       | 2017 | Binary  | Statistical | no                      |
| [ENCIDER](#encider)                     | 2022 | LLVM    | Symbolic    | sound with restrictions |
| [ENCoVer](#encover)                     | 2012 | Java    | Formal      | sound                   |
| [FaCT](#fact)                           | 2019 | DSL     | Formal      | sound                   |
| [FlowTracker](#flowtracker)             | 2016 | LLVM IR | Formal      | sound                   |
| [haybale-pitchfork](#haybale-pitchfork) | 2019 | LLVM IR | Symbolic    | sound with restrictions |
| [KMO12](#kmo12)                         | 2012 | Binary  | Formal      | other                   |
| [Manifold](#manifold)                   | 2022 | Binary  | Statistical | no                      |
| [MemSan](#memsan)                       | -    | LLVM IR | Dynamic     | sound with restrictions |
| [MicroWalk](#microwalk)                 | 2018 | Binary  | Dynamic     | sound with restrictions |
| [pitchfork-angr](#pitchfork-angr)       | 2019 | Binary  | Symbolic    | no                      |
| [pin_based_cec](#pin-based-cec)         | 2019 | Binary  | Dynamic     | sound with restrictions |
| [SC-Eliminator](#sc-eliminator)         | 2018 | LLVM IR | Formal      | sound                   |
| [SideTrail](#sidetrail)                 | 2018 | LLVM IR | Formal      | other                   |
| [Themis](#themis)                       | 2017 | Java    | Formal      | sound                   |
| [timecop](#timecop)                     | -    | Binary  | Dynamic     | sound with restrictions |
| [tis-ct](#tis-ct)                       | -    | C       | Symbolic    | sound with restrictions |
| [tlsfuzzer](#tlsfuzzer)                 | 2023 | Network | Statistical | other                   |
| [TriggerFlow](#triggerflow)             | 2018 | Binary  | Dynamic     | no                      |
| [VirtualCert](#virtualcert)             | 2014 | x86     | Formal      | sound                   |

This table is based mostly on the work in [*“They’re not that hard to mitigate”: What Cryptographic Library Developers Think About Timing Attacks*](https://crocs.fi.muni.cz/public/papers/usablect_sp22) with manual addition of more tools. 

### Abacus

- Introduced in “Abacus: A Tool for Precise Side-Channel Analysis” by Q. Bao, Z. Wang, J. R. Larus, and D. Wu; <https://doi.org/10.1109/ICSE-Companion52605.2021.00110>
- **Tool available:** <https://github.com/s3team/Abacus> ![GitHub last commit](https://img.shields.io/github/last-commit/s3team/Abacus)![GitHub contributors](https://img.shields.io/github/contributors/s3team/Abacus)![GitHub Repo stars](https://img.shields.io/github/stars/s3team/Abacus)

### ABPV13

- Introduced in “Formal verification of side-channel countermeasures using self-composition” by J. B. Almeida, M. Barbosa, J. S. Pinto, and B. Vieira; <https://doi.org/10.1016/j.scico.2011.10.008>
- **Tool not available**

### ANABLEPS

 - Introduced in “Time and Order: Towards Automatically Identifying Side-Channel Vulnerabilities in Enclave Binaries” by W. Wang, Y. Zhang, and Z. Lin; <https://www.usenix.org/conference/raid2019/presentation/wang-wubing>
 - **Tool available:** <https://github.com/OSUSecLab/ANABLEPS> ![GitHub last commit](https://img.shields.io/github/last-commit/OSUSecLab/ANABLEPS) ![GitHub contributors](https://img.shields.io/github/contributors/OSUSecLab/ANABLEPS)![GitHub Repo stars](https://img.shields.io/github/stars/OSUSecLab/ANABLEPS)

### Binsec/Rel

- Introduced in “Binsec/rel: Efficient relational symbolic execution for constant-time at binary-level” by L. Daniel, S. Bardin, and T. Rezk; <https://doi.org/10.1109/SP40000.2020.00074>
- **Tool available:** <https://github.com/binsec/binsec> ![GitHub last commit](https://img.shields.io/github/last-commit/binsec/Rel)![GitHub contributors](https://img.shields.io/github/contributors/binsec/binsec)![GitHub Repo stars](https://img.shields.io/github/stars/binsec/binsec)
- **Tests available:** <https://github.com/binsec/rel_bench> ![GitHub last commit](https://img.shields.io/github/last-commit/binsec/rel_bench)![GitHub contributors](https://img.shields.io/github/contributors/binsec/rel_bench)![GitHub Repo stars](https://img.shields.io/github/stars/binsec/rel_bench)
- **Binsec/Rel** is a static analysis tool that works on the binary level, thereby overcoming issues of compilers inserting non-constant-time code or turning constant-time code into non-constant-time one.

### Blazer

- Introduced in “Decomposition instead of self-composition for proving the absence of timing channels” by T. Antonopoulos, P. Gazzillo, M. Hicks, E. Koskinen, T. Terauchi, and S. Wei; <https://doi.org/10.1145/3062341.3062378>
- **Tool not available**

### BPT17

- Introduced in “Verifying constant-time implementations by abstract interpretation” by S. Blazy, D. Pichardie, and A. Trieu; <https://doi.org/10.1007/978-3-319-66402-6_16>
- **Tool available:** <http://irisa.fr/celtique/ext/esorics17/>

### CacheAudit

- Introduced in “CacheAudit: A tool for the static analysis of cache side channels” by G. Doychev, D. Feld, B. Köpf, L. Mauborgne, and J. Reineke; <https://www.usenix.org/conference/usenixsecurity13/technical-sessions/paper/doychev>
- **Tool available:** <https://github.com/cacheaudit/cacheaudit> ![GitHub last commit](https://img.shields.io/github/last-commit/cacheaudit/cacheaudit)![GitHub contributors](https://img.shields.io/github/contributors/cacheaudit/cacheaudit)![GitHub Repo stars](https://img.shields.io/github/stars/cacheaudit/cacheaudit)
- **Website:**  <https://software.imdea.org/projects/cacheaudit/>

### CacheD

- Introduced in “Cached: Identifying cache-based timing channels in production software” by S. Wang, P. Wang, X. Liu, D. Zhang, and D. Wu; <https://www.usenix.org/conference/usenixsecurity17/technical-sessions/presentation/wang-shuai>
- **Tool not available**

### CacheFix

- Introduced in “Symbolic verification of cache side-channel freedom” by S. Chattopadhyay and A. Roychoudhury; <https://doi.org/10.1109/TCAD.2018.2858402>
- **Tool available:** <https://bitbucket.org/sudiptac/cachefix/src/master/> ![](https://img.shields.io/badge/last%20commit-may%202018-red)

### CacheQL

- Introduced in “CacheQL: Quantifying and Localizing Cache Side-Channel Vulnerabilities in Production Software” by Y. Yuan, Z. Liu, and S. Wang; <https://arxiv.org/abs/2209.14952>
- **Tool (will be) availablle:** <https://github.com/Yuanyuan-Yuan/CacheQL> ![GitHub last commit](https://img.shields.io/github/last-commit/Yuanyuan-Yuan/CacheQL)![GitHub contributors](https://img.shields.io/github/contributors/Yuanyuan-Yuan/CacheQL)![GitHub Repo stars](https://img.shields.io/github/stars/Yuanyuan-Yuan/CacheQL)

### CacheS

- Introduced in “Identifying cache-based side channels through secret-augmented abstract interpretation” by S. Wang, Y. Bao, X. Liu, P. Wang, D. Zhang, and D. Wu; <https://www.usenix.org/conference/usenixsecurity19/presentation/wang-shuai>
- **Tool not available**

### CANAL

- Introduced in “CANAL: a cache timing analysis framework via LLVM transformation” by C. Sung, B. Paulsen, and C. Wang; <https://dl.acm.org/doi/10.1145/3238147.3240485>
- **Tool available:** <https://github.com/canalcache/canal> ![GitHub last commit](https://img.shields.io/github/last-commit/canalcache/canal)![GitHub contributors](https://img.shields.io/github/contributors/canalcache/canal)![GitHub Repo stars](https://img.shields.io/github/stars/canalcache/canal)

### CaSym

- Introduced in “CaSym: Cache Aware Symbolic Execution for Side Channel Detection and Mitigation” by R. Brotzman, S. Liu, D. Zhang, G. Tan, M. Kandemir; <https://doi.org/10.1109/SP.2019.00022>
- **Tool not available**

### CaType

- Introduced in “Cache Refinement Type for Side-Channel Detection of Cryptographic Software” by K. Jiang, Y. Bao, S. Wang, Z. Liu, and T. Zhang; <https://arxiv.org/abs/2209.04610v2>
- **Tool not available**

### CHALICE

- Introduced in “Quantifying the Information Leakage in Cache Attacks via Symbolic Execution” by S. Chattopadhyay,  M. Beck, A. Rezine, and A. Zeller; <https://dl.acm.org/doi/10.1145/3288758>
- **Tool available:** <https://bitbucket.org/sudiptac/chalice>

### COCO-CHANNEL

- Introduced in “Symbolic path cost analysis for side-channel detection” by T. Brennan, S. Saha, T. Bultan, and C. S. Pasareanu; <https://doi.org/10.1145/3213846.3213867>
- **Tool not available**

### Constantine

- Introduced in “Constantine: Automatic side-channel resistance using efficient control and data flow linearization” by P. Borrello, D. C. D’Elia, L. Querzoni, and C. Giuffrida; <https://arxiv.org/abs/2104.10749>
- **Tool available:** <https://github.com/pietroborrello/constantine> ![GitHub last commit](https://img.shields.io/github/last-commit/pietroborrello/constantine)![GitHub contributors](https://img.shields.io/github/contributors/pietroborrello/constantine)![GitHub Repo stars](https://img.shields.io/github/stars/pietroborrello/constantine)

### ctgrind

- Introduced in <https://github.com/agl/ctgrind> and <https://www.imperialviolet.org/2010/04/01/ctgrind.html>.
- **ctgrind** is a patch available for the Valgrind (memcheck) tool, which adds functionality to mark areas of memory as uninitialized. This is to be used on secrets. At runtime, the memcheck tool then checks that the secret(uninitialized) memory is not used in branches or for memory access. As Valgrind's memcheck supports the `VALGRIND_MAKE_MEM_UNDEFINED` and `VALGRIND_MAKE_MEM_DEFINED` client requests, it is now possible to implement a ctgrind-like approach without patches to Valgrind.
- **Tool available:** Use Valgrind directly.

### ct-fuzz

- Introduced in “ct-fuzz: Fuzzing for timing leaks” by S. He, M. Emmi, and G. F. Ciocarlie; <https://doi.org/10.1109/ICST46399.2020.00063>
- **ct-fuzz** takes inspiration from **ct-verif** in its method but diverges significantly. It first constructs a product program using self-composition of the target with itself, where it asserts that at each point that the memory address accessed by the two programs, whether through control from or indexing, is the same. It then uses a fuzzer against this product program, which splits its fuzzing input equally into the secret inputs for the two instances or the original program in the product program. If the fuzzer detects a failed assert, leakage is detected, as it found two runs through the target, which differ only in secret inputs yet access different offsets in memory.
- **Tool available:** <https://github.com/michael-emmi/ct-fuzz> ![GitHub last commit](https://img.shields.io/github/last-commit/michael-emmi/ct-fuzz)![GitHub contributors](https://img.shields.io/github/contributors/michael-emmi/ct-fuzz)![GitHub Repo stars](https://img.shields.io/github/stars/michael-emmi/ct-fuzz)

### ct-verif

- Introduced in “Verifying Constant-Time Implementations” by J. B. Almeida, M. Barbosa, G. Barthe, F. Dupressoir and M. Emmi; <https://www.usenix.org/system/files/conference/usenixsecurity16/sec16_paper_almeida.pdf>
- The **ct-verif** tool is a static analysis tool verifying constant-time properties of code, working on the level of LLVM IR, with source code annotations. It uses the [SMACK](http://smackers.github.io/) modular software verification toolchain, [Bam-Bam-Boogieman](https://github.com/michael-emmi/bam-bam-boogieman) for Boogie source transformation, [Boogie](https://github.com/boogie-org/boogie) intermediate verification language as well as the [Corral](https://github.com/boogie-org/corral) and [Z3](https://github.com/Z3Prover/z3) solvers. 
- The tool is actively deployed in the CI of Amazon's **s2n** library at [link](https://github.com/awslabs/s2n/tree/main/tests/ctverif). However, even there, it is only used to verify two functions that together have less than 100 lines of code.
- **Tool available:** <https://github.com/imdea-software/verifying-constant-time> ![GitHub last commit](https://img.shields.io/github/last-commit/imdea-software/verifying-constant-time)![GitHub contributors](https://img.shields.io/github/contributors/imdea-software/verifying-constant-time)![GitHub Repo stars](https://img.shields.io/github/stars/imdea-software/verifying-constant-time)

### CT-WASM

- Introduced in “CT-WASM: type-driven secure cryptography for the web ecosystem” by C. Watt, J. Renner, N. Popescu, S. Cauligi, and D. Stefan; <https://doi.org/10.1145/3290390>
- **Tool available:** <https://github.com/PLSysSec/ct-wasm> ![GitHub last commit](https://img.shields.io/github/last-commit/PLSysSec/ct-wasm)![GitHub contributors](https://img.shields.io/github/contributors/PLSysSec/ct-wasm)![GitHub Repo stars](https://img.shields.io/github/stars/PLSysSec/ct-wasm)

### DATA

- Introduced in “DATA - differential address trace analysis: Finding address-based side-channels in binaries” by S. Weiser, A. Zankl, R. Spreitzer, K. Miller, S. Mangard, and G. Sigl; <https://www.usenix.org/conference/usenixsecurity18/presentation/weiser>
- Used in “Big numbers - big troubles: Systematically analyzing nonce leakage in (EC)DSA implementations” by S. Weiser, D. Schrammel, L. Bodner, and R. Spreitzer; <https://www.usenix.org/conference/usenixsecurity20/presentation/weiser>
- **DATA** (Differential Address Trace Analysis) is a tool quite similar to the **Microwalk** framework in that it is a dynamic tool that records memory-accesses of the target into address traces as it processes random secret inputs. The traces are then aligned and analyzed using generic and specific leakage tests. The tool reports the location of leakage and even offers a graphical user interface for analysis.
- **Tool available:** <https://github.com/Fraunhofer-AISEC/DATA> ![GitHub last commit](https://img.shields.io/github/last-commit/Fraunhofer-AISEC/DATA)![GitHub contributors](https://img.shields.io/github/contributors/Fraunhofer-AISEC/DATA)![GitHub Repo stars](https://img.shields.io/github/stars/Fraunhofer-AISEC/DATA)

### dudect

- Introduced in “Dude, is my code constant time?” by O. Reparaz, J. Balasch, and I. Verbauwhede; <https://doi.org/10.23919/DATE.2017.7927267>
- **dudect** is a dynamic tool that uses leakage assessment techniques from physical (power and EM) side-channel analysis, namely test-vector leakage assessment (TVLA). It first runs the target using two classes of secret input data with varying public input data and measures the duration of execution for each run. It then applies a test to the two distributions of the duration of execution for the two classes (either Welch's t-test for equality of means or Kolmogorov-Smirnov test for equality of distributions), and if the distributions differ, leakage is reported. This is analogous to how leakage assessment is used in power side-channel attacks, in that instead of comparing distributions of power consumption at points during the execution of the target, the runtime distributions are compared.
- **Tool available:** <https://github.com/oreparaz/dudect> ![GitHub last commit](https://img.shields.io/github/last-commit/oreparaz/dudect)![GitHub contributors](https://img.shields.io/github/contributors/oreparaz/dudect)![GitHub Repo stars](https://img.shields.io/github/stars/oreparaz/dudect)

### ENCIDER

- Introduced in “ENCIDER: Detecting Timing and Cache Side Channels in SGX Enclaves and Cryptographic APIs” by Tuba Yavuz, Farhaan Fowze, Grant Hernandez, Ken Yihang Bai, Kevin Butler, and Dave Jing Tian; <https://ieeexplore.ieee.org/abstract/document/9737388>
- **Tool available:** <https://github.com/sysrel/ENCIDER>

### ENCoVer

- Introduced in “ENCoVer: Symbolic exploration for information flow security” by M. Balliu, M. Dam, and G. L. Guernic; <https://doi.org/10.1109/CSF.2012.24>
- **Tool available:**  <https://people.kth.se/~musard/files/encover.html>

### FaCT

- Introduced in “FaCT: a DSL for timing-sensitive computation” by S. Cauligi, G. Soeller, B. Johannesmeyer, F. Brown, R. S. Wahby,
  J. Renner, B. Grégoire, G. Barthe, R. Jhala, and D. Stefan; <https://doi.org/10.1145/3314221.3314605>
- The **FaCT** tool is less of a tool for analysis of implementations for timing leakage and more of a domain-specific language for writing constant-time implementations that automatically removes leakage during compilation. The language is C-like, compiles into LLVM IR, and offers the `secret` keyword, which is used to mark certain variables as secret, which then triggers the compiler to generate constant-time code with regards to their values.
- **Tool available:** <https://github.com/plsyssec/fact> ![GitHub last commit](https://img.shields.io/github/last-commit/plsyssec/fact)![GitHub contributors](https://img.shields.io/github/contributors/plsyssec/fact)![GitHub Repo stars](https://img.shields.io/github/stars/plsyssec/fact)

### FlowTracker

- Introduced in “Sparse representation of implicit flows with applications to side-channel detection” by B. Rodrigues, F. M. Q. Pereira, and D. F. Aranha; <https://doi.org/10.1145/2892208.2892230>
- The **FlowTracker** tool is a static tool that works by analyzing the Program Dependence Graph (PDG) of the target in LLVM IR form.
- **Tool not available:** <http://cuda.dcc.ufmg.br/flowtracker/>

### haybale-pitchfork

- Introduced in <https://github.com/PLSysSec/haybale-pitchfork>
- **Tool available:** <https://github.com/PLSysSec/haybale-pitchfork> ![GitHub last commit](https://img.shields.io/github/last-commit/PLSysSec/haybale-pitchfork)![GitHub contributors](https://img.shields.io/github/contributors/PLSysSec/haybale-pitchfork)![GitHub Repo stars](https://img.shields.io/github/stars/PLSysSec/haybale-pitchfork)

### KMO12

- Introduced in “Automatic quantification of cache side-channels” by B. Köpf, L. Mauborgne, and M. Ochoa; <https://doi.org/10.1007/978-3-642-31424-7_40>
- **Tool not available, superseded by [CacheAudit](#cacheaudit)**

### Manifold

- Introduced in “Automated side channel analysis of media software with manifold learning” by Y. Yuan, Q. Pang, and S. Wang; <https://www.usenix.org/conference/usenixsecurity22/presentation/yuan-yuanyuan>
- **Tool available:** <https://zenodo.org/record/5816702#.YdQMHxNByjA>

### MemSan

- Introduced in <https://clang.llvm.org/docs/MemorySanitizer.html>
- **Tool available:** Use MemorySanitizer.

### MicroWalk

- Introduced in “Microwalk: A framework for finding side channels in binaries” by J. Wichelmann, A. Moghimi, T. Eisenbarth, and B. Sunar; <https://doi.org/10.1145/3274694.3274741>,
- Extended in “Microwalk-CI: Practical Side-Channel Analysis for JavaScript Applications” by J. Wichelmann, F. Sieck, A. Pätschke and T. Eisenbarth; <https://doi.org/10.1145/3548606.3560654>
- The **MicroWalk** framework is a dynamic tool that uses Dynamic Binary Instrumentation (DBI) and Mutual Information Analysis (MIA). As a dynamic tool, it runs the target with random inputs and uses dynamic binary instrumentation to log events such as memory allocations, branches, calls, returns, memory reads/writes as well as stack operations into an execution trace. It then processes these traces by applying the chosen leakage model, i.e., in the branching model, it only keeps the control flow events in the execution traces. After collection of traces, it offers several analysis options, either directly comparing the traces or using mutual information analysis either on the whole trace or a specific offset in the execution traces (a specific instruction).
- **Tool available:** <https://github.com/UzL-ITS/Microwalk> ![GitHub last commit](https://img.shields.io/github/last-commit/UzL-ITS/Microwalk)![GitHub contributors](https://img.shields.io/github/contributors/UzL-ITS/Microwalk)![GitHub Repo stars](https://img.shields.io/github/stars/UzL-ITS/Microwalk)

### pitchfork-angr

- Introduced in <https://github.com/PLSysSec/pitchfork-angr>
- **Tool available:** <https://github.com/PLSysSec/pitchfork-angr> ![GitHub last commit](https://img.shields.io/github/last-commit/PLSysSec/pitchfork-angr)![GitHub contributors](https://img.shields.io/github/contributors/PLSysSec/pitchfork-angr)![GitHub Repo stars](https://img.shields.io/github/stars/PLSysSec/pitchfork-angr)

### Pin-based-CEC

- Introduced in <https://github.com/intel/pin-based-cec>
- **Tool available:** <https://github.com/intel/pin-based-cec> ![GitHub last commit](https://img.shields.io/github/last-commit/intel/pin-based-cec)![GitHub contributors](https://img.shields.io/github/contributors/intel/pin-based-cec)![GitHub Repo stars](https://img.shields.io/github/stars/intel/pin-based-cec)

### SC-Eliminator

- Introduced in “Eliminating timing side-channel leaks using program repair” by M. Wu, S. Guo, P. Schaumont, and C. Wang; <https://doi.org/10.1145/3213846.3213851>
- **Tool available:** <https://zenodo.org/record/1299357>

### SideTrail

- Introduced in “Sidetrail: Verifying time-balancing of cryptosystems” by K. Athanasiou, B. Cook, M. Emmi, C. MacCárthaigh, D. Schwartz-Narbonne, and S. Tasiran; <https://doi.org/10.1007/978-3-030-03592-1_12>
- **SideTrail** (at one point called SideWinder) is a tool for verifying time-balanced implementations. The notion of time-balance is a weakening of the constant-time notion that allows for the presence of leakage that is provably under some bound $\delta$ (execution time is negligibly influenced by secrets). For $\delta = 0$ this notion fits well with the notion of constant-time. The tool uses a cross-product technique similar to that of **ct-verif**. However, instead of asserting the equality of memory accesses and program counter, it asserts the equality of an instruction counter. Its leakage model and technique are well suited against remote (non-cache) attackers.
- The tool is deployed in the CI of Amazon's **s2n** library at [link](https://github.com/awslabs/s2n/tree/main/tests/sidetrail), where it is used to verify the time-balancedness of several parts of the codebase, handling the CBC decryption, HMAC padding, and AEAD decryption.
- **Tool available:** <https://github.com/aws/s2n-tls/tree/main/tests/sidetrail>

### Themis

- Introduced in “Precise detection of side-channel vulnerabilities using quantitative cartesian hoare logic” by J. Chen, Y. Feng, and I. Dillig; <https://doi.org/10.1145/3133956.3134058>
- **Tool not available**

### timecop

- Introduced in <https://www.post-apocalyptic-crypto.org/timecop/>
- The **TIMECOP** tool is a tool that uses Valgrind's memcheck client requests `VALGRIND_MAKE_MEM_{UN}DEFINED`  to essentially implement a method like **ctgrind**. It is a part of the [SUPERCOP](https://bench.cr.yp.to/supercop.html) toolkit (**S**ystem for **U**nified **P**erformance **E**valuation **R**elated to **C**ryptographic **O**perations and **P**rimitives) and is used to evaluate the constant-time properties of implementations in SUPERCOP.
- **Tool available:** <https://www.post-apocalyptic-crypto.org/timecop/>

### tis-ct

- <http://web.archive.org/web/20200810074547/http://trust-in-soft.com/tis-ct/>
- **Tool not available**

### tlsfuzzer

- Introduced in “Everlasting ROBOT: The Marvin Attack” by H. Kario; <https://eprint.iacr.org/2023/1442>; and in “Out of the Box Testing” by H. Kario; <https://eprint.iacr.org/2023/1441>
- The tool is a generic TLS test suite with the timing verification as one of the features.
- The tool is unique in that it allows measuring even very small differences (in the sub nanosecond range) over the network, allowing complete black-box testing of implementations. While it does use statistical tests for determining if the side channel is present (sign test, Wilcoxon signed-rank test, and Friedman test), it does combine them with the bootstrapping of the confidence intervals of pairwise differences: providing easy to understand upper bounds of the possible side-channel leakage.
- **Tool available:** <https://github.com/tlsfuzzer/tlsfuzzer> ![GitHub last commit](https://img.shields.io/github/last-commit/tlsfuzzer/tlsfuzzer)![GitHub contributors](https://img.shields.io/github/contributors/tlsfuzzer/tlsfuzzer)![GitHub Repo stars](https://img.shields.io/github/stars/tlsfuzzer/tlsfuzzer)

### TriggerFlow

- Introduced in “Triggerflow: Regression Testing by Advanced Execution Path Inspection” by I. Gridin, C. P. García, N. Tuveri and B. B. Brumley; <https://doi.org/10.1007/978-3-030-22038-9_16>
- **Tool available:** <https://gitlab.com/nisec/triggerflow>

### VirtualCert

- Introduced in “System-level non-interference for constant-time cryptography” by G. Barthe, G. Betarte, J. D. Campo, C. D. Luna, and D. Pichardie; <https://doi.org/10.1145/2660267.2660283>
- **Tool available:** <https://www.fing.edu.uy/inco/grupos/gsi/project/virtualcert/>

## Resources

- <https://neuromancer.sk/article/26>
- <https://crocs.fi.muni.cz/public/papers/usablect_sp22>
