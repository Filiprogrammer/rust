; ModuleID = 'test4.b0af15a15131c1de-cgu.0'
source_filename = "test4.b0af15a15131c1de-cgu.0"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(argmem: readwrite) uwtable
define void @bitand(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([16 x i8]) align 16 captures(none) dereferenceable(16) initializes((0, 16)) %_0, ptr dead_on_return noalias nofree noundef readonly align 16 captures(none) dereferenceable(16) %self, ptr noalias nofree noundef readonly align 16 captures(none) dereferenceable(16) %other) unnamed_addr #0 {
start:
  %ret.sroa.0.0.copyload = load i128, ptr %self, align 16
  %_3.i = load i128, ptr %other, align 16, !alias.scope !4, !noalias !7, !noundef !9
  %0 = and i128 %_3.i, %ret.sroa.0.0.copyload
  store i128 %0, ptr %_0, align 16
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(argmem: readwrite) uwtable
define void @bitand_assign(ptr noalias nofree noundef align 16 captures(none) dereferenceable(16) %self, ptr noalias nofree noundef readonly align 16 captures(none) dereferenceable(16) %other) unnamed_addr #0 {
start:
  %_3 = load i128, ptr %other, align 16, !noundef !9
  %0 = load i128, ptr %self, align 16, !noundef !9
  %1 = and i128 %0, %_3
  store i128 %1, ptr %self, align 16
  ret void
}

attributes #0 = { mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(argmem: readwrite) uwtable "probe-stack"="inline-asm" "target-cpu"="x86-64" }

!llvm.module.flags = !{!0, !1, !2}
!llvm.ident = !{!3}

!0 = !{i32 8, !"PIC Level", i32 2}
!1 = !{i32 2, !"RtLibUseGOT", i32 1}
!2 = !{i32 7, !"uwtable", i32 2}
!3 = !{!"rustc version 1.98.0-nightly (c1b22f44c 2026-06-17)"}
!4 = !{!5}
!5 = distinct !{!5, !6, !"bitand_assign: %other"}
!6 = distinct !{!6, !"bitand_assign"}
!7 = !{!8}
!8 = distinct !{!8, !6, !"bitand_assign: %self"}
!9 = !{}
