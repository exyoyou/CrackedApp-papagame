package kotlinx.coroutines.flow;

import kotlin.Unit;
import kotlin.coroutines.Continuation;
import kotlin.coroutines.intrinsics.IntrinsicsKt__IntrinsicsKt;
import kotlin.coroutines.jvm.internal.ContinuationImpl;
import kotlin.jvm.functions.Function0;
import kotlin.jvm.functions.Function2;
import kotlin.jvm.internal.InlineMarker;
import kotlin.jvm.internal.Intrinsics;
import kotlin.jvm.internal.SourceDebugExtension;
import kotlinx.coroutines.flow.internal.CombineKt;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;

/* JADX INFO: Add missing generic type declarations: [R] */
/* JADX INFO: loaded from: classes.dex */
@SourceDebugExtension({"SMAP\nSafeCollector.common.kt\nKotlin\n*S Kotlin\n*F\n+ 1 SafeCollector.common.kt\nkotlinx/coroutines/flow/internal/SafeCollector_commonKt$unsafeFlow$1\n+ 2 Zip.kt\nkotlinx/coroutines/flow/FlowKt__ZipKt\n*L\n1#1,111:1\n258#2,2:112\n*E\n"})
public final class FlowKt__ZipKt$combineUnsafe$$inlined$unsafeFlow$1<R> implements e<R> {

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    final /* synthetic */ e[] f93190b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    final /* synthetic */ Function2 f93191c;

    public FlowKt__ZipKt$combineUnsafe$$inlined$unsafeFlow$1(e[] eVarArr, Function2 function2) {
        this.f93190b = eVarArr;
        this.f93191c = function2;
    }

    @Override // kotlinx.coroutines.flow.e
    @Nullable
    public Object a(@NotNull f<? super R> fVar, @NotNull Continuation<? super Unit> continuation) {
        e[] eVarArr = this.f93190b;
        Function0 function0R = FlowKt__ZipKt.r();
        Intrinsics.needClassReification();
        Object objA = CombineKt.a(fVar, eVarArr, function0R, new FlowKt__ZipKt$combineUnsafe$1$1(this.f93191c, null), continuation);
        return objA == IntrinsicsKt__IntrinsicsKt.getCOROUTINE_SUSPENDED() ? objA : Unit.INSTANCE;
    }

    @Nullable
    public Object g(@NotNull f fVar, @NotNull Continuation continuation) {
        InlineMarker.mark(4);
        new ContinuationImpl(continuation) { // from class: kotlinx.coroutines.flow.FlowKt__ZipKt$combineUnsafe$$inlined$unsafeFlow$1.1
            int label;
            /* synthetic */ Object result;

            @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
            @Nullable
            public final Object invokeSuspend(@NotNull Object obj) {
                this.result = obj;
                this.label |= Integer.MIN_VALUE;
                return FlowKt__ZipKt$combineUnsafe$$inlined$unsafeFlow$1.this.a(null, this);
            }
        };
        InlineMarker.mark(5);
        e[] eVarArr = this.f93190b;
        Function0 function0R = FlowKt__ZipKt.r();
        Intrinsics.needClassReification();
        FlowKt__ZipKt$combineUnsafe$1$1 flowKt__ZipKt$combineUnsafe$1$1 = new FlowKt__ZipKt$combineUnsafe$1$1(this.f93191c, null);
        InlineMarker.mark(0);
        CombineKt.a(fVar, eVarArr, function0R, flowKt__ZipKt$combineUnsafe$1$1, continuation);
        InlineMarker.mark(1);
        return Unit.INSTANCE;
    }
}
