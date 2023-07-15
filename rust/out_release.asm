<&T as core::fmt::Debug>::fmt
<T as core::any::Any>::type_id
<alloc::vec::Vec<T,A> as core::fmt::Debug>::fmt
__unnamed_1
__unnamed_2
__unnamed_3
__unnamed_4
__unnamed_5
__unnamed_6
__unnamed_7
__unnamed_8
__unnamed_9
alloc::raw_vec::RawVec<T,A>::reserve_for_push
alloc::raw_vec::finish_grow
core::ops::function::FnOnce::call_once{{vtable.shim}}
core::ptr::drop_in_place<&u8>
core::ptr::drop_in_place<alloc::boxed::Box<alloc::vec::Vec<&dyn core::any::Any>>>
core::ptr::drop_in_place<alloc::vec::Vec<&dyn core::any::Any>>
core::ptr::drop_in_place<alloc::vec::Vec<u64>>
core::ptr::drop_in_place<alloc::vec::Vec<u8>>
core::ptr::drop_in_place<u8>
rust::main
std::rt::lang_start
std::rt::lang_start::{{closure}}
std::sys_common::backtrace::__rust_begin_short_backtrace
rust::main:
 push    rbp
 push    r15
 push    r14
 push    r13
 push    r12
 push    rsi
 push    rdi
 push    rbx
 sub     rsp, 216
 lea     rbp, [rsp, +, 128]
 mov     qword, ptr, [rbp, +, 80], -2
 movzx   eax, byte, ptr, [rip, +, __rust_no_alloc_shim_is_unstable]
 mov     ecx, 26
 mov     edx, 1
 call    __rust_alloc
 test    rax, rax
 je      .LBB17_47
 movups  xmm0, xmmword, ptr, [rip, +, __unnamed_3+10]
 movups  xmmword, ptr, [rax, +, 10], xmm0
 movups  xmm0, xmmword, ptr, [rip, +, __unnamed_3]
 mov     qword, ptr, [rbp, -, 56], rax
 movups  xmmword, ptr, [rax], xmm0
 mov     esi, 8
 mov     ecx, 2048
 mov     edx, 8
 call    __rust_alloc_zeroed
 test    rax, rax
 je      .LBB17_14
 mov     rcx, rax
 mov     qword, ptr, [rax, +, 520], 3
 mov     qword, ptr, [rbp, +, 8], 1
 xorps   xmm0, xmm0
 movups  xmmword, ptr, [rbp, +, 16], xmm0
 mov     qword, ptr, [rbp, -, 40], 8
 movups  xmmword, ptr, [rbp, -, 32], xmm0
 mov     eax, 1
 mov     qword, ptr, [rbp, +, 64], rax
 xor     ebx, ebx
 lea     r14, [rbp, -, 40]
 lea     r13, [rbp, +, 8]
 xor     edi, edi
 xor     r15d, r15d
 mov     qword, ptr, [rbp, +, 72], rcx
 jmp     .LBB17_3
.LBB17_10:
 mov     rax, qword, ptr, [rbp, +, 8]
 mov     qword, ptr, [rbp, +, 64], rax
 mov     byte, ptr, [rax, +, rbx], r15b
 inc     rbx
 mov     qword, ptr, [rbp, +, 24], rbx
.LBB17_11:
 mov     rcx, qword, ptr, [rbp, +, 72]
 inc     r15
 cmp     r15, 256
 je      .LBB17_12
.LBB17_3:
 mov     r12, qword, ptr, [rcx, +, 8*r15]
 test    r12, r12
 je      .LBB17_11
 cmp     rdi, qword, ptr, [rbp, -, 32]
 jne     .LBB17_7
 mov     rcx, r14
 mov     rdx, rdi
 call    alloc::raw_vec::RawVec<T,A>::reserve_for_push
 mov     rsi, qword, ptr, [rbp, -, 40]
 mov     rdi, qword, ptr, [rbp, -, 24]
.LBB17_7:
 mov     qword, ptr, [rsi, +, 8*rdi], r12
 inc     rdi
 mov     qword, ptr, [rbp, -, 24], rdi
 mov     rbx, qword, ptr, [rbp, +, 24]
 cmp     rbx, qword, ptr, [rbp, +, 16]
 jne     .LBB17_10
 mov     rcx, r13
 mov     rdx, rbx
 call    alloc::raw_vec::RawVec<T,A>::reserve_for_push
 mov     rbx, qword, ptr, [rbp, +, 24]
 jmp     .LBB17_10
.LBB17_12:
 mov     rax, qword, ptr, [rbp, -, 40]
 mov     qword, ptr, [rbp, +, 56], rax
 mov     rax, qword, ptr, [rbp, -, 32]
 mov     qword, ptr, [rbp, -, 48], rax
 mov     r14d, 8
 mov     edx, 2048
 mov     r8d, 8
 call    __rust_dealloc
 movzx   eax, byte, ptr, [rip, +, __rust_no_alloc_shim_is_unstable]
 mov     ecx, 24
 mov     edx, 8
 call    __rust_alloc
 test    rax, rax
 je      .LBB17_13
 mov     r12, rax
 mov     qword, ptr, [rax], 8
 add     rax, 8
 mov     qword, ptr, [rbp, -, 88], rax
 xorps   xmm0, xmm0
 movups  xmmword, ptr, [r12, +, 8], xmm0
 mov     qword, ptr, [rbp, -, 40], 8
 mov     qword, ptr, [rbp, -, 32], 0
 xor     r13d, r13d
 lea     rsi, [rip, +, __unnamed_4]
 xor     r15d, r15d
 mov     qword, ptr, [rbp, +, 72], r12
 jmp     .LBB17_20
.LBB17_31:
 mov     r14, qword, ptr, [rbp, -, 40]
 mov     r13, qword, ptr, [rbp, -, 24]
.LBB17_32:
 inc     r15
 mov     qword, ptr, [r14, +, 8*r13], r12
 inc     r13
 mov     r12, qword, ptr, [rbp, +, 72]
.LBB17_20:
 mov     qword, ptr, [rbp, -, 24], r13
 cmp     r15, rdi
 jae     .LBB17_21
 cmp     r15, rbx
 jae     .LBB17_25
 mov     rdx, qword, ptr, [r12, +, 16]
 cmp     rdx, qword, ptr, [r12, +, 8]
 jne     .LBB17_29
 mov     rcx, r12
 call    alloc::raw_vec::RawVec<T,A>::reserve_for_push
 mov     r12, qword, ptr, [rbp, +, 72]
 mov     rdx, qword, ptr, [r12, +, 16]
.LBB17_29:
 mov     rax, qword, ptr, [rbp, +, 64]
 add     rax, r15
 mov     rcx, qword, ptr, [r12]
 mov     r8, rdx
 shl     r8, 4
 mov     qword, ptr, [rcx, +, r8], rax
 mov     qword, ptr, [rcx, +, r8, +, 8], rsi
 inc     rdx
 mov     qword, ptr, [r12, +, 16], rdx
 mov     rax, qword, ptr, [rbp, +, 56]
 mov     r12, qword, ptr, [rax, +, 8*r15]
 cmp     r13, qword, ptr, [rbp, -, 32]
 jne     .LBB17_32
 lea     rcx, [rbp, -, 40]
 mov     rdx, r13
 call    alloc::raw_vec::RawVec<T,A>::reserve_for_push
 jmp     .LBB17_31
.LBB17_21:
 cmp     qword, ptr, [r12, +, 16], 2
 jb      .LBB17_33
.LBB17_22:
 jmp     .LBB17_22
.LBB17_33:
 mov     rdx, qword, ptr, [rbp, -, 32]
 test    rdx, rdx
 je      .LBB17_35
 shl     rdx, 3
 mov     r8d, 8
 mov     rcx, r14
 call    __rust_dealloc
.LBB17_35:
 mov     rax, qword, ptr, [rbp, -, 88]
 mov     rdx, qword, ptr, [rax]
 test    rdx, rdx
 lea     rsi, [rbp, +, 8]
 je      .LBB17_37
 mov     rcx, qword, ptr, [r12]
 shl     rdx, 4
 mov     r8d, 8
 call    __rust_dealloc
.LBB17_37:
 mov     edx, 24
 mov     r8d, 8
 mov     rcx, r12
 call    __rust_dealloc
 mov     rax, qword, ptr, [rbp, -, 56]
 mov     qword, ptr, [rbp, -, 80], rax
 mov     qword, ptr, [rbp, -, 72], 26
 mov     qword, ptr, [rbp, -, 64], 26
 mov     rdx, qword, ptr, [rbp, +, 16]
 test    rdx, rdx
 je      .LBB17_39
 mov     r8d, 1
 mov     rcx, qword, ptr, [rbp, +, 64]
 call    __rust_dealloc
.LBB17_39:
 mov     rdx, qword, ptr, [rbp, -, 48]
 test    rdx, rdx
 je      .LBB17_41
 shl     rdx, 3
 mov     r8d, 8
 mov     rcx, qword, ptr, [rbp, +, 56]
 call    __rust_dealloc
.LBB17_41:
 lea     rax, [rbp, -, 80]
 mov     qword, ptr, [rbp, +, 8], rax
 lea     rax, [rip, +, _ZN65_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..fmt..Debug$GT$3fmt17h8731c6a91bc8cd82E]
 mov     qword, ptr, [rbp, +, 16], rax
 lea     rax, [rip, +, __unnamed_5]
 mov     qword, ptr, [rbp, -, 40], rax
 mov     qword, ptr, [rbp, -, 32], 2
 mov     qword, ptr, [rbp, -, 8], 0
 mov     qword, ptr, [rbp, -, 24], rsi
 mov     qword, ptr, [rbp, -, 16], 1
 lea     rcx, [rbp, -, 40]
 call    std::io::stdio::_print
 mov     rdx, qword, ptr, [rbp, -, 72]
 test    rdx, rdx
 je      .LBB17_44
 mov     rcx, qword, ptr, [rbp, -, 80]
 mov     r8d, 1
 call    __rust_dealloc
.LBB17_44:
 nop
 add     rsp, 216
 pop     rbx
 pop     rdi
 pop     rsi
 pop     r12
 pop     r13
 pop     r14
 pop     r15
 pop     rbp
 ret
.LBB17_25:
 lea     r8, [rip, +, __unnamed_6]
 mov     rcx, r15
 mov     rdx, rbx
 call    core::panicking::panic_bounds_check
 jmp     .LBB17_15
.LBB17_47:
 mov     ecx, 1
 mov     edx, 26
 call    alloc::alloc::handle_alloc_error
 ud2
.LBB17_14:
 mov     ecx, 8
 mov     edx, 2048
 call    alloc::alloc::handle_alloc_error
 jmp     .LBB17_15
.LBB17_13:
 mov     ecx, 8
 mov     edx, 24
 call    alloc::alloc::handle_alloc_error
.LBB17_15:
 ud2
