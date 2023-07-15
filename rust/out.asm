<&T as core::fmt::Debug>::fmt
<() as std::process::Termination>::report
<I as core::iter::traits::collect::IntoIterator>::into_iter
<T as alloc::slice::hack::ConvertVec>::to_vec
<T as alloc::vec::spec_from_elem::SpecFromElem>::from_elem
<T as core::any::Any>::type_id
<[T] as core::fmt::Debug>::fmt
<alloc::alloc::Global as core::alloc::Allocator>::allocate
<alloc::alloc::Global as core::alloc::Allocator>::allocate_zeroed
<alloc::alloc::Global as core::alloc::Allocator>::deallocate
<alloc::alloc::Global as core::alloc::Allocator>::grow
<alloc::alloc::Global as core::alloc::Allocator>::shrink
<alloc::boxed::Box<T> as core::default::Default>::default
<alloc::raw_vec::RawVec<T,A> as core::ops::drop::Drop>::drop
<alloc::vec::ExtendElement<T> as alloc::vec::ExtendWith<T>>::last
<alloc::vec::ExtendElement<T> as alloc::vec::ExtendWith<T>>::next
<alloc::vec::Vec<T,A> as core::fmt::Debug>::fmt
<alloc::vec::Vec<T,A> as core::ops::drop::Drop>::drop
<alloc::vec::Vec<T,A> as core::ops::index::Index<I>>::index
<alloc::vec::Vec<T,A> as core::ops::index::IndexMut<I>>::index_mut
<alloc::vec::Vec<T> as core::default::Default>::default
<alloc::vec::set_len_on_drop::SetLenOnDrop as core::ops::drop::Drop>::drop
<core::ops::range::Range<T> as core::iter::range::RangeIteratorImpl>::spec_next
<core::slice::iter::Iter<T> as core::iter::traits::iterator::Iterator>::next
<u64 as alloc::vec::is_zero::IsZero>::is_zero
<usize as core::iter::range::Step>::forward_unchecked
<usize as core::slice::index::SliceIndex<[T]>>::index
<usize as core::slice::index::SliceIndex<[T]>>::index_mut
__unnamed_1
__unnamed_10
__unnamed_11
__unnamed_12
__unnamed_13
__unnamed_14
__unnamed_15
__unnamed_16
__unnamed_17
__unnamed_18
__unnamed_19
__unnamed_2
__unnamed_20
__unnamed_21
__unnamed_22
__unnamed_23
__unnamed_24
__unnamed_25
__unnamed_26
__unnamed_27
__unnamed_28
__unnamed_29
__unnamed_3
__unnamed_4
__unnamed_5
__unnamed_6
__unnamed_7
__unnamed_8
__unnamed_9
alloc::alloc::Global::alloc_impl
alloc::alloc::Global::grow_impl
alloc::alloc::box_free
alloc::alloc::exchange_malloc
alloc::raw_vec::RawVec<T,A>::allocate_in
alloc::raw_vec::RawVec<T,A>::current_memory
alloc::raw_vec::RawVec<T,A>::grow_amortized
alloc::raw_vec::RawVec<T,A>::reserve::do_reserve_and_handle
alloc::raw_vec::RawVec<T,A>::reserve_for_push
alloc::raw_vec::RawVec<T,A>::set_ptr_and_cap
alloc::raw_vec::RawVec<T,A>::shrink
alloc::raw_vec::RawVec<T,A>::shrink::{{closure}}
alloc::raw_vec::finish_grow
alloc::raw_vec::finish_grow::{{closure}}
alloc::raw_vec::handle_reserve
alloc::raw_vec::handle_reserve::{{closure}}
alloc::slice::<impl [T]>::to_vec
alloc::vec::Vec<T,A>::extend_with
alloc::vec::Vec<T,A>::len
alloc::vec::Vec<T,A>::push
alloc::vec::Vec<T,A>::reserve
alloc::vec::Vec<T,A>::shrink_to_fit
alloc::vec::Vec<T>::new
alloc::vec::from_elem
core::alloc::layout::Layout::array::inner
core::cmp::impls::<impl core::cmp::Ord for usize>::cmp
core::cmp::max_by
core::fmt::Arguments::new_const
core::fmt::Arguments::new_v1
core::fmt::builders::DebugList::entries
core::fmt::num::<impl core::fmt::Debug for u8>::fmt
core::iter::range::<impl core::iter::traits::iterator::Iterator for core::ops::range::Range<A>>::next
core::ops::function::FnOnce::call_once
core::ops::function::FnOnce::call_once{{vtable.shim}}
core::ptr::drop_in_place<&u8>
core::ptr::drop_in_place<alloc::boxed::Box<alloc::vec::Vec<&dyn core::any::Any>>>
core::ptr::drop_in_place<alloc::raw_vec::RawVec<&dyn core::any::Any>>
core::ptr::drop_in_place<alloc::raw_vec::RawVec<u64>>
core::ptr::drop_in_place<alloc::raw_vec::RawVec<u8>>
core::ptr::drop_in_place<alloc::vec::Vec<&dyn core::any::Any>>
core::ptr::drop_in_place<alloc::vec::Vec<u64>>
core::ptr::drop_in_place<alloc::vec::Vec<u8>>
core::ptr::drop_in_place<alloc::vec::set_len_on_drop::SetLenOnDrop>
core::ptr::drop_in_place<std::rt::lang_start<()>::{{closure}}>
core::ptr::drop_in_place<u8>
core::result::Result<T,E>::map_err
core::slice::iter::<impl core::iter::traits::collect::IntoIterator for &[T]>::into_iter
rust::comp::hc_enc
rust::main
std::rt::lang_start
std::rt::lang_start::{{closure}}
std::sys_common::backtrace::__rust_begin_short_backtrace
file /rustc/8ede3aae28fe6e4d52b38157d7bfe0d3bceef225\library\core\src\fmt\rt.rs does not exist!
rust::main (src\main.rs:6):
 push    rbp
 sub     rsp, 176
 lea     rbp, [rsp, +, 128]
 mov     qword, ptr, [rbp, +, 40], -2
 lea     rdx, [rip, +, __unnamed_21]
 lea     rcx, [rbp, -, 16]
 mov     qword, ptr, [rbp, -, 88], rcx
 mov     r8d, 3
 call    rust::comp::hc_enc
 mov     rcx, qword, ptr, [rbp, -, 88]
 mov     qword, ptr, [rbp, +, 24], rcx
 lea     rax, [rip, +, _ZN65_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..fmt..Debug$GT$3fmt17hf3e03682bc058435E]
 mov     qword, ptr, [rbp, +, 32], rax
 mov     qword, ptr, [rbp, +, 8], rcx
 mov     qword, ptr, [rbp, +, 16], rax
 mov     rcx, qword, ptr, [rbp, +, 8]
 mov     rax, qword, ptr, [rbp, +, 16]
 mov     qword, ptr, [rbp, -, 32], rcx
 mov     qword, ptr, [rbp, -, 24], rax
 mov     rax, rsp
 mov     qword, ptr, [rax, +, 32], 1
 lea     rdx, [rip, +, __unnamed_22]
 lea     rcx, [rbp, -, 80]
 mov     r8d, 2
 lea     r9, [rbp, -, 32]
 call    core::fmt::Arguments::new_v1
 jmp     .LBB105_2
.LBB105_2:
 lea     rcx, [rbp, -, 80]
 call    std::io::stdio::_print
 jmp     .LBB105_3
.LBB105_3:
 lea     rcx, [rbp, -, 16]
 call    core::ptr::drop_in_place<alloc::vec::Vec<u8>>
 nop
 add     rsp, 176
 pop     rbp
 ret
rust::comp::hc_enc (src\comp.rs:3):
 push    rbp
 sub     rsp, 592
 lea     rbp, [rsp, +, 128]
 mov     qword, ptr, [rbp, +, 456], -2
 mov     qword, ptr, [rbp, +, 104], r8
 mov     qword, ptr, [rbp, +, 112], rdx
 mov     qword, ptr, [rbp, +, 120], rcx
 mov     qword, ptr, [rbp, +, 128], rcx
 mov     qword, ptr, [rbp, +, 416], rdx
 mov     qword, ptr, [rbp, +, 424], r8
 mov     byte, ptr, [rbp, +, 415], 0
 mov     byte, ptr, [rbp, +, 414], 0
 mov     byte, ptr, [rbp, +, 415], 1
 lea     rdx, [rip, +, __unnamed_12]
 lea     rcx, [rbp, +, 136]
 mov     r8d, 26
 call    alloc::slice::<impl [T]>::to_vec
 xor     eax, eax
 mov     edx, eax
 lea     rcx, [rbp, +, 160]
 mov     r8d, 256
 call    alloc::vec::from_elem
 jmp     .LBB104_2
.LBB104_2:
 mov     rdx, qword, ptr, [rbp, +, 104]
 mov     rcx, qword, ptr, [rbp, +, 112]
 call    core::slice::iter::<impl core::iter::traits::collect::IntoIterator for &[T]>::into_iter
 mov     qword, ptr, [rbp, +, 88], rdx
 mov     qword, ptr, [rbp, +, 96], rax
 jmp     .LBB104_4
.LBB104_4:
 mov     rax, qword, ptr, [rbp, +, 88]
 mov     rcx, qword, ptr, [rbp, +, 96]
 mov     qword, ptr, [rbp, +, 184], rcx
 mov     qword, ptr, [rbp, +, 192], rax
.LBB104_5:
 lea     rcx, [rbp, +, 184]
 call    <core::slice::iter::Iter<T> as core::iter::traits::iterator::Iterator>::next
 mov     qword, ptr, [rbp, +, 80], rax
 jmp     .LBB104_6
.LBB104_6:
 mov     rax, qword, ptr, [rbp, +, 80]
 mov     qword, ptr, [rbp, +, 200], rax
 mov     rax, qword, ptr, [rbp, +, 200]
 cmp     rax, 0
 sete    al
 test    al, 1
 jne     .LBB104_7
 jmp     .LBB104_8
.LBB104_7:
 lea     rcx, [rbp, +, 208]
 call    alloc::vec::Vec<T>::new
 jmp     .LBB104_13
.LBB104_8:
 mov     rax, qword, ptr, [rbp, +, 200]
 mov     qword, ptr, [rbp, +, 432], rax
 movzx   eax, byte, ptr, [rax]
 mov     edx, eax
 lea     r8, [rip, +, __unnamed_13]
 lea     rcx, [rbp, +, 160]
 call    <alloc::vec::Vec<T,A> as core::ops::index::IndexMut<I>>::index_mut
 mov     qword, ptr, [rbp, +, 72], rax
 jmp     .LBB104_9
.LBB104_9:
 mov     rax, qword, ptr, [rbp, +, 72]
 mov     rax, qword, ptr, [rax]
 add     rax, 1
 mov     qword, ptr, [rbp, +, 64], rax
 setb    al
 test    al, 1
 jne     .LBB104_11
 mov     rax, qword, ptr, [rbp, +, 72]
 mov     rcx, qword, ptr, [rbp, +, 64]
 mov     qword, ptr, [rax], rcx
 jmp     .LBB104_5
.LBB104_11:
 lea     rcx, [rip, +, str.1]
 lea     r8, [rip, +, __unnamed_13]
 mov     edx, 28
 call    core::panicking::panic
 jmp     .LBB104_12
.LBB104_12:
 ud2
.LBB104_13:
 lea     rcx, [rbp, +, 232]
 call    alloc::vec::Vec<T>::new
 jmp     .LBB104_15
.LBB104_15:
 mov     byte, ptr, [rbp, +, 414], 1
 lea     rcx, [rbp, +, 160]
 call    alloc::vec::Vec<T,A>::len
 mov     qword, ptr, [rbp, +, 56], rax
 jmp     .LBB104_17
.LBB104_17:
 mov     rax, qword, ptr, [rbp, +, 56]
 mov     qword, ptr, [rbp, +, 256], 0
 mov     qword, ptr, [rbp, +, 264], rax
 mov     rcx, qword, ptr, [rbp, +, 256]
 mov     rdx, qword, ptr, [rbp, +, 264]
 call    <I as core::iter::traits::collect::IntoIterator>::into_iter
 mov     qword, ptr, [rbp, +, 40], rdx
 mov     qword, ptr, [rbp, +, 48], rax
 jmp     .LBB104_18
.LBB104_18:
 mov     rax, qword, ptr, [rbp, +, 40]
 mov     rcx, qword, ptr, [rbp, +, 48]
 mov     qword, ptr, [rbp, +, 272], rcx
 mov     qword, ptr, [rbp, +, 280], rax
.LBB104_19:
 lea     rcx, [rbp, +, 272]
 call    core::iter::range::<impl core::iter::traits::iterator::Iterator for core::ops::range::Range<A>>::next
 mov     qword, ptr, [rbp, +, 24], rdx
 mov     qword, ptr, [rbp, +, 32], rax
 jmp     .LBB104_20
.LBB104_20:
 mov     rax, qword, ptr, [rbp, +, 24]
 mov     rcx, qword, ptr, [rbp, +, 32]
 mov     qword, ptr, [rbp, +, 288], rcx
 mov     qword, ptr, [rbp, +, 296], rax
 cmp     qword, ptr, [rbp, +, 288], 0
 jne     .LBB104_22
 mov     byte, ptr, [rbp, +, 414], 0
 mov     rax, qword, ptr, [rbp, +, 248]
 mov     qword, ptr, [rbp, +, 320], rax
 movups  xmm0, xmmword, ptr, [rbp, +, 232]
 movaps  xmmword, ptr, [rbp, +, 304], xmm0
 lea     rcx, [rbp, +, 160]
 call    core::ptr::drop_in_place<alloc::vec::Vec<u64>>
 jmp     .LBB104_29
.LBB104_22:
 mov     rdx, qword, ptr, [rbp, +, 296]
 mov     qword, ptr, [rbp, +, 8], rdx
 mov     qword, ptr, [rbp, +, 440], rdx
 lea     r8, [rip, +, __unnamed_14]
 lea     rcx, [rbp, +, 160]
 call    <alloc::vec::Vec<T,A> as core::ops::index::Index<I>>::index
 mov     qword, ptr, [rbp, +, 16], rax
 jmp     .LBB104_23
.LBB104_23:
 mov     rax, qword, ptr, [rbp, +, 16]
 cmp     qword, ptr, [rax], 0
 je      .LBB104_19
 mov     rdx, qword, ptr, [rbp, +, 8]
 lea     r8, [rip, +, __unnamed_15]
 lea     rcx, [rbp, +, 160]
 call    <alloc::vec::Vec<T,A> as core::ops::index::Index<I>>::index
 mov     qword, ptr, [rbp], rax
 jmp     .LBB104_25
.LBB104_25:
 mov     rax, qword, ptr, [rbp]
 mov     rdx, qword, ptr, [rax]
 lea     rcx, [rbp, +, 232]
 call    alloc::vec::Vec<T,A>::push
 jmp     .LBB104_26
.LBB104_26:
 mov     rax, qword, ptr, [rbp, +, 8]
 mov     dl, al
 lea     rcx, [rbp, +, 208]
 call    alloc::vec::Vec<T,A>::push
 jmp     .LBB104_27
.LBB104_27:
 jmp     .LBB104_19
.LBB104_29:
 mov     rax, qword, ptr, [rbp, +, 320]
 mov     qword, ptr, [rbp, +, 176], rax
 movaps  xmm0, xmmword, ptr, [rbp, +, 304]
 movaps  xmmword, ptr, [rbp, +, 160], xmm0
 mov     byte, ptr, [rbp, +, 414], 0
 call    <alloc::boxed::Box<T> as core::default::Default>::default
 mov     qword, ptr, [rbp, -, 8], rax
 jmp     .LBB104_32
.LBB104_32:
 mov     rax, qword, ptr, [rbp, -, 8]
 mov     qword, ptr, [rbp, +, 328], rax
 lea     rcx, [rbp, +, 336]
 call    alloc::vec::Vec<T>::new
 jmp     .LBB104_34
.LBB104_34:
 lea     rcx, [rbp, +, 160]
 call    alloc::vec::Vec<T,A>::len
 mov     qword, ptr, [rbp, -, 16], rax
 jmp     .LBB104_36
.LBB104_36:
 mov     rax, qword, ptr, [rbp, -, 16]
 mov     qword, ptr, [rbp, +, 360], 0
 mov     qword, ptr, [rbp, +, 368], rax
 mov     rcx, qword, ptr, [rbp, +, 360]
 mov     rdx, qword, ptr, [rbp, +, 368]
 call    <I as core::iter::traits::collect::IntoIterator>::into_iter
 mov     qword, ptr, [rbp, -, 32], rdx
 mov     qword, ptr, [rbp, -, 24], rax
 jmp     .LBB104_37
.LBB104_37:
 mov     rax, qword, ptr, [rbp, -, 32]
 mov     rcx, qword, ptr, [rbp, -, 24]
 mov     qword, ptr, [rbp, +, 376], rcx
 mov     qword, ptr, [rbp, +, 384], rax
.LBB104_38:
 lea     rcx, [rbp, +, 376]
 call    core::iter::range::<impl core::iter::traits::iterator::Iterator for core::ops::range::Range<A>>::next
 mov     qword, ptr, [rbp, -, 48], rdx
 mov     qword, ptr, [rbp, -, 40], rax
 jmp     .LBB104_39
.LBB104_39:
 mov     rax, qword, ptr, [rbp, -, 48]
 mov     rcx, qword, ptr, [rbp, -, 40]
 mov     qword, ptr, [rbp, +, 392], rcx
 mov     qword, ptr, [rbp, +, 400], rax
 cmp     qword, ptr, [rbp, +, 392], 0
 jne     .LBB104_41
.LBB104_40:
 mov     rax, qword, ptr, [rbp, +, 328]
 mov     qword, ptr, [rbp, -, 56], rax
 and     rax, 7
 cmp     rax, 0
 sete    al
 test    al, 1
 jne     .LBB104_49
 jmp     .LBB104_50
.LBB104_41:
 mov     rax, qword, ptr, [rbp, +, 400]
 mov     qword, ptr, [rbp, -, 72], rax
 mov     qword, ptr, [rbp, +, 448], rax
 mov     rax, qword, ptr, [rbp, +, 328]
 mov     qword, ptr, [rbp, -, 64], rax
 and     rax, 7
 cmp     rax, 0
 sete    al
 test    al, 1
 jne     .LBB104_42
 jmp     .LBB104_43
.LBB104_42:
 mov     rdx, qword, ptr, [rbp, -, 72]
 lea     r8, [rip, +, __unnamed_16]
 lea     rcx, [rbp, +, 208]
 call    <alloc::vec::Vec<T,A> as core::ops::index::Index<I>>::index
 mov     qword, ptr, [rbp, -, 80], rax
 jmp     .LBB104_45
.LBB104_43:
 mov     rdx, qword, ptr, [rbp, -, 64]
 lea     r8, [rip, +, __unnamed_17]
 mov     ecx, 8
 call    core::panicking::panic_misaligned_pointer_dereference
 jmp     .LBB104_12
.LBB104_45:
 mov     rdx, qword, ptr, [rbp, -, 80]
 mov     rcx, qword, ptr, [rbp, -, 64]
 lea     r8, [rip, +, __unnamed_18]
 call    alloc::vec::Vec<T,A>::push
 jmp     .LBB104_46
.LBB104_46:
 mov     rdx, qword, ptr, [rbp, -, 72]
 lea     r8, [rip, +, __unnamed_19]
 lea     rcx, [rbp, +, 160]
 call    <alloc::vec::Vec<T,A> as core::ops::index::Index<I>>::index
 mov     qword, ptr, [rbp, -, 88], rax
 jmp     .LBB104_47
.LBB104_47:
 mov     rax, qword, ptr, [rbp, -, 88]
 mov     rdx, qword, ptr, [rax]
 lea     rcx, [rbp, +, 336]
 call    alloc::vec::Vec<T,A>::push
 jmp     .LBB104_48
.LBB104_48:
 jmp     .LBB104_38
.LBB104_49:
 mov     rcx, qword, ptr, [rbp, -, 56]
 call    alloc::vec::Vec<T,A>::len
 mov     qword, ptr, [rbp, -, 96], rax
 jmp     .LBB104_51
.LBB104_50:
 mov     rdx, qword, ptr, [rbp, -, 56]
 lea     r8, [rip, +, __unnamed_20]
 mov     ecx, 8
 call    core::panicking::panic_misaligned_pointer_dereference
 jmp     .LBB104_12
.LBB104_51:
 mov     rax, qword, ptr, [rbp, -, 96]
 cmp     rax, 1
 ja      .LBB104_40
 lea     rcx, [rbp, +, 336]
 call    core::ptr::drop_in_place<alloc::vec::Vec<u64>>
 jmp     .LBB104_53
.LBB104_53:
 lea     rcx, [rbp, +, 328]
 call    core::ptr::drop_in_place<alloc::boxed::Box<alloc::vec::Vec<&dyn core::any::Any>>>
 jmp     .LBB104_54
.LBB104_54:
 lea     rcx, [rbp, +, 136]
 call    alloc::vec::Vec<T,A>::shrink_to_fit
 jmp     .LBB104_55
.LBB104_55:
 mov     rax, qword, ptr, [rbp, +, 120]
 mov     byte, ptr, [rbp, +, 415], 0
 mov     rcx, qword, ptr, [rbp, +, 152]
 mov     qword, ptr, [rax, +, 16], rcx
 movups  xmm0, xmmword, ptr, [rbp, +, 136]
 movups  xmmword, ptr, [rax], xmm0
 lea     rcx, [rbp, +, 208]
 call    core::ptr::drop_in_place<alloc::vec::Vec<u8>>
 jmp     .LBB104_56
.LBB104_56:
 lea     rcx, [rbp, +, 160]
 call    core::ptr::drop_in_place<alloc::vec::Vec<u64>>
 jmp     .LBB104_57
.LBB104_57:
 mov     rax, qword, ptr, [rbp, +, 128]
 mov     byte, ptr, [rbp, +, 415], 0
 add     rsp, 592
 pop     rbp
 ret
