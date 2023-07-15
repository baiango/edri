# Performance
### Use functions that support AVX in the STL
Only use functions from the Rust standard library if it support Advanced Vector Extensions 1/2(AVX/2). (Excluding AVX512 only functions because of downclocking and overheating reason)  
[rust/src/main.rs](https://github.com/baiango/edri/blob/fea10698b0773ac95917ab4eae22689f80c6c705/rust/src/main.rs)
```
#![forbid(unsafe_code)]


fn main() {
	println!("Hello, world!");
	println!("Hello, world!");
	println!("Hello, world!");
}
```
[rust/out.asm](https://github.com/baiango/edri/blob/fea10698b0773ac95917ab4eae22689f80c6c705/rust/out.asm)  
```
rust::main:
 push    rsi
 push    rdi
 sub     rsp, 104
 movaps  xmmword, ptr, [rsp, +, 80], xmm6
 lea     rsi, [rip, +, __unnamed_2]
 mov     qword, ptr, [rsp, +, 32], rsi
 mov     qword, ptr, [rsp, +, 40], 1
 lea     rdi, [rip, +, __unnamed_3]
 mov     qword, ptr, [rsp, +, 48], rdi
 xorps   xmm6, xmm6
 movups  xmmword, ptr, [rsp, +, 56], xmm6
 lea     rcx, [rsp, +, 32]
 call    std::io::stdio::_print
 mov     qword, ptr, [rsp, +, 32], rsi
 mov     qword, ptr, [rsp, +, 40], 1
 mov     qword, ptr, [rsp, +, 48], rdi
 movups  xmmword, ptr, [rsp, +, 56], xmm6
 lea     rcx, [rsp, +, 32]
 call    std::io::stdio::_print
 mov     qword, ptr, [rsp, +, 32], rsi
 mov     qword, ptr, [rsp, +, 40], 1
 mov     qword, ptr, [rsp, +, 48], rdi
 movups  xmmword, ptr, [rsp, +, 56], xmm6
 lea     rcx, [rsp, +, 32]
 call    std::io::stdio::_print
 movaps  xmm6, xmmword, ptr, [rsp, +, 80]
 add     rsp, 104
 pop     rdi
 pop     rsi
 ret
```
You can see it use xmm or ymm in the assembly. You can expect that will run faster x2 than your normal scalar code.
