---
slug: ct-wasm
title: CT-WASM
description: "CT-WASM: type-driven secure cryptography for the web ecosystem"
year: 2019
target: WASM
technique: Formal
guarantees: sound
available: true
repo: https://github.com/PLSysSec/ct-wasm
papers:
 - name: "CT-WASM: type-driven secure cryptography for the web ecosystem"
   link: https://doi.org/10.1145/3290390
---

![GitHub last commit](https://img.shields.io/github/last-commit/PLSysSec/ct-wasm)![GitHub contributors](https://img.shields.io/github/contributors/PLSysSec/ct-wasm)![GitHub Repo stars](https://img.shields.io/github/stars/PLSysSec/ct-wasm)

## Abstract

A significant amount of both client and server-side cryptography is implemented in JavaScript. Despite widespread concerns about its security, no other language has been able to match the convenience that comes from its ubiquitous support on the "web ecosystem" - the wide variety of technologies that collectively underpins the modern World Wide Web. With the introduction of the new WebAssembly bytecode language (Wasm) into the web ecosystem, we have a unique opportunity to advance a principled alternative to existing JavaScript cryptography use cases which does not compromise this convenience.

We present Constant-Time WebAssembly (CT-Wasm), a type-driven, strict extension to WebAssembly which facilitates the verifiably secure implementation of cryptographic algorithms. CT-Wasm's type system ensures that code written in CT-Wasm is both information flow secure and resistant to timing side channel attacks; like base Wasm, these guarantees are verifiable in linear time. Building on an existing Wasm mechanization, we mechanize the full CT-Wasm specification, prove soundness of the extended type system, implement a verified type checker, and give several proofs of the language's security properties.

We provide two implementations of CT-Wasm: an OCaml reference interpreter and a native implementation for Node.js and Chromium that extends Google's V8 engine. We also implement a CT-Wasm to Wasm rewrite tool that allows developers to reap the benefits of CT-Wasm's type system today, while developing cryptographic algorithms for base Wasm environments. We evaluate the language, our implementations, and supporting tools by porting several cryptographic primitives - Salsa20, SHA-256, and TEA - and the full TweetNaCl library. We find that CT-Wasm is fast, expressive, and generates code that we experimentally measure to be constant-time.