; ModuleID = 'test2.85a5f5bf6abb92ac-cgu.0'
source_filename = "test2.85a5f5bf6abb92ac-cgu.0"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@bitand_mut_self = unnamed_addr alias void (ptr, ptr, ptr), ptr @bitand_let_mut

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(argmem: readwrite) uwtable
define void @bitand_let_mut(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([16 x i8]) align 16 captures(none) dereferenceable(16) initializes((0, 16)) %_0, ptr dead_on_return noalias nofree noundef align 16 captures(none) dereferenceable(16) %a, ptr noalias nofree noundef readonly align 16 captures(none) dereferenceable(16) %b) unnamed_addr #0 {
start:
  %_3 = load i128, ptr %b, align 16, !noundef !4
  %0 = load i128, ptr %a, align 16, !noundef !4
  %1 = and i128 %0, %_3
  store i128 %1, ptr %a, align 16
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(16) %_0, ptr noundef nonnull align 16 dereferenceable(16) %a, i64 16, i1 false)
  ret void
}

; Function Attrs: mustprogress nocallback nofree nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memcpy.p0.p0.i64(ptr noalias writeonly captures(none), ptr noalias readonly captures(none), i64, i1 immarg) #1

attributes #0 = { mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(argmem: readwrite) uwtable "probe-stack"="inline-asm" "target-cpu"="x86-64" }
attributes #1 = { mustprogress nocallback nofree nounwind willreturn memory(argmem: readwrite) }

!llvm.module.flags = !{!0, !1, !2}
!llvm.ident = !{!3}

!0 = !{i32 8, !"PIC Level", i32 2}
!1 = !{i32 2, !"RtLibUseGOT", i32 1}
!2 = !{i32 7, !"uwtable", i32 2}
!3 = !{!"rustc version 1.98.0-nightly (c1b22f44c 2026-06-17)"}
!4 = !{}
