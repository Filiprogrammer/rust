; ModuleID = 'test5.d2686de125220750-cgu.0'
source_filename = "test5.d2686de125220750-cgu.0"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@_RNvCsi3ZMnpQSFXM_5test515mutate_huge_mut = unnamed_addr alias void (ptr, ptr), ptr @_RNvCsi3ZMnpQSFXM_5test515mutate_huge_let

; test5::mutate_huge_let
; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind nonlazybind willreturn memory(argmem: readwrite) uwtable
define void @_RNvCsi3ZMnpQSFXM_5test515mutate_huge_let(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([800 x i8]) align 8 captures(none) dereferenceable(800) initializes((0, 800)) %_0, ptr dead_on_return noalias nofree noundef align 8 captures(none) dereferenceable(800) %a) unnamed_addr #0 {
start:
  %0 = load i64, ptr %a, align 8, !noundef !4
  %1 = add i64 %0, 1
  store i64 %1, ptr %a, align 8
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(800) %_0, ptr noundef nonnull align 8 dereferenceable(800) %a, i64 800, i1 false)
  ret void
}

; Function Attrs: mustprogress nocallback nofree nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memcpy.p0.p0.i64(ptr noalias writeonly captures(none), ptr noalias readonly captures(none), i64, i1 immarg) #1

attributes #0 = { mustprogress nofree noinline norecurse nosync nounwind nonlazybind willreturn memory(argmem: readwrite) uwtable "probe-stack"="inline-asm" "target-cpu"="x86-64" }
attributes #1 = { mustprogress nocallback nofree nounwind willreturn memory(argmem: readwrite) }

!llvm.module.flags = !{!0, !1, !2}
!llvm.ident = !{!3}

!0 = !{i32 8, !"PIC Level", i32 2}
!1 = !{i32 2, !"RtLibUseGOT", i32 1}
!2 = !{i32 7, !"uwtable", i32 2}
!3 = !{!"rustc version 1.98.0-nightly (c1b22f44c 2026-06-17)"}
!4 = !{}
