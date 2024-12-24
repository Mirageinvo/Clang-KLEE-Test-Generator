; ModuleID = 'unflushed_byte.bc'
source_filename = "unflushed_byte.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

@.str = private unnamed_addr constant [2 x i8] c"i\00", align 1

; Function Attrs: noinline nounwind uwtable
define dso_local i32 @main() #0 !dbg !9 {
  %1 = alloca i32, align 4
  %2 = alloca i8, align 1
  %3 = alloca [3 x i8], align 1
  %4 = alloca i8, align 1
  store i32 0, i32* %1, align 4
  call void @llvm.dbg.declare(metadata i8* %2, metadata !13, metadata !DIExpression()), !dbg !15
  call void @llvm.dbg.declare(metadata [3 x i8]* %3, metadata !16, metadata !DIExpression()), !dbg !20
  call void @klee_make_symbolic(i8* %2, i64 1, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str, i64 0, i64 0)), !dbg !21
  %5 = load i8, i8* %2, align 1, !dbg !22
  %6 = getelementptr inbounds [3 x i8], [3 x i8]* %3, i64 0, i64 0, !dbg !23
  store i8 %5, i8* %6, align 1, !dbg !24
  call void @llvm.dbg.declare(metadata i8* %4, metadata !25, metadata !DIExpression()), !dbg !26
  %7 = getelementptr inbounds [3 x i8], [3 x i8]* %3, i64 0, i64 1, !dbg !27
  %8 = load i8, i8* %7, align 1, !dbg !27
  store i8 %8, i8* %4, align 1, !dbg !26
  ret i32 0, !dbg !28
}

; Function Attrs: nofree nosync nounwind readnone speculatable willreturn
declare void @llvm.dbg.declare(metadata, metadata, metadata) #1

declare dso_local void @klee_make_symbolic(i8*, i64, i8*) #2

attributes #0 = { noinline nounwind uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { nofree nosync nounwind readnone speculatable willreturn }
attributes #2 = { "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }

!llvm.dbg.cu = !{!0}
!llvm.module.flags = !{!3, !4, !5, !6, !7}
!llvm.ident = !{!8}

!0 = distinct !DICompileUnit(language: DW_LANG_C99, file: !1, producer: "Ubuntu clang version 13.0.1-++20220120110924+75e33f71c2da-1~exp1~20220120231001.58", isOptimized: false, runtimeVersion: 0, emissionKind: FullDebug, enums: !2, splitDebugInlining: false, nameTableKind: None)
!1 = !DIFile(filename: "unflushed_byte.c", directory: "/home/mirage/Clang-KLEE-Test-Generator/test_samples/memory_cases/unflushed_byte")
!2 = !{}
!3 = !{i32 7, !"Dwarf Version", i32 4}
!4 = !{i32 2, !"Debug Info Version", i32 3}
!5 = !{i32 1, !"wchar_size", i32 4}
!6 = !{i32 7, !"uwtable", i32 1}
!7 = !{i32 7, !"frame-pointer", i32 2}
!8 = !{!"Ubuntu clang version 13.0.1-++20220120110924+75e33f71c2da-1~exp1~20220120231001.58"}
!9 = distinct !DISubprogram(name: "main", scope: !1, file: !1, line: 4, type: !10, scopeLine: 4, spFlags: DISPFlagDefinition, unit: !0, retainedNodes: !2)
!10 = !DISubroutineType(types: !11)
!11 = !{!12}
!12 = !DIBasicType(name: "int", size: 32, encoding: DW_ATE_signed)
!13 = !DILocalVariable(name: "i", scope: !9, file: !1, line: 5, type: !14)
!14 = !DIBasicType(name: "char", size: 8, encoding: DW_ATE_signed_char)
!15 = !DILocation(line: 5, column: 8, scope: !9)
!16 = !DILocalVariable(name: "x", scope: !9, file: !1, line: 5, type: !17)
!17 = !DICompositeType(tag: DW_TAG_array_type, baseType: !14, size: 24, elements: !18)
!18 = !{!19}
!19 = !DISubrange(count: 3)
!20 = !DILocation(line: 5, column: 11, scope: !9)
!21 = !DILocation(line: 7, column: 3, scope: !9)
!22 = !DILocation(line: 9, column: 10, scope: !9)
!23 = !DILocation(line: 9, column: 3, scope: !9)
!24 = !DILocation(line: 9, column: 8, scope: !9)
!25 = !DILocalVariable(name: "y", scope: !9, file: !1, line: 11, type: !14)
!26 = !DILocation(line: 11, column: 8, scope: !9)
!27 = !DILocation(line: 11, column: 13, scope: !9)
!28 = !DILocation(line: 13, column: 3, scope: !9)
