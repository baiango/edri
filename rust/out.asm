__unnamed_1
__unnamed_2
__unnamed_3
__unnamed_4
core::ops::function::FnOnce::call_once{{vtable.shim}}
core::ptr::drop_in_place<std::rt::lang_start<()>::{{closure}}>
rust::main
std::rt::lang_start
std::rt::lang_start::{{closure}}
std::sys_common::backtrace::__rust_begin_short_backtrace
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
