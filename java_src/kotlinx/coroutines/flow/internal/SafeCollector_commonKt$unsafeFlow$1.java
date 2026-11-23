package kotlinx.coroutines.flow.internal;

import kotlin.Unit;
import kotlin.coroutines.Continuation;
import kotlin.coroutines.intrinsics.IntrinsicsKt__IntrinsicsKt;
import kotlin.coroutines.jvm.internal.ContinuationImpl;
import kotlin.jvm.functions.Function2;
import kotlin.jvm.internal.InlineMarker;
import kotlin.jvm.internal.SourceDebugExtension;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;

/* JADX INFO: Add missing generic type declarations: [T] */
/* JADX INFO: loaded from: classes.dex */
@SourceDebugExtension({"SMAP\nSafeCollector.common.kt\nKotlin\n*S Kotlin\n*F\n+ 1 SafeCollector.common.kt\nkotlinx/coroutines/flow/internal/SafeCollector_commonKt$unsafeFlow$1\n*L\n1#1,111:1\n*E\n"})
public final class SafeCollector_commonKt$unsafeFlow$1<T> implements kotlinx.coroutines.flow.e<T> {

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    final /* synthetic */ Function2<kotlinx.coroutines.flow.f<? super T>, Continuation<? super Unit>, Object> f93379b;

    /* JADX WARN: Multi-variable type inference failed */
    public SafeCollector_commonKt$unsafeFlow$1(Function2<? super kotlinx.coroutines.flow.f<? super T>, ? super Continuation<? super Unit>, ? extends Object> function2) {
        this.f93379b = function2;
    }

    @Override // kotlinx.coroutines.flow.e
    @Nullable
    public Object a(@NotNull kotlinx.coroutines.flow.f<? super T> fVar, @NotNull Continuation<? super Unit> continuation) {
        Object objInvoke = this.f93379b.invoke(fVar, continuation);
        return objInvoke == IntrinsicsKt__IntrinsicsKt.getCOROUTINE_SUSPENDED() ? objInvoke : Unit.INSTANCE;
    }

    @Nullable
    public Object g(@NotNull kotlinx.coroutines.flow.f<? super T> fVar, @NotNull final Continuation<? super Unit> continuation) {
        InlineMarker.mark(4);
        new ContinuationImpl(continuation) { // from class: kotlinx.coroutines.flow.internal.SafeCollector_commonKt$unsafeFlow$1$collect$1
            int label;
            /* synthetic */ Object result;

            @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
            @Nullable
            public final Object invokeSuspend(@NotNull Object obj) {
                this.result = obj;
                this.label |= Integer.MIN_VALUE;
                return this.this$0.a(null, this);
            }
        };
        InlineMarker.mark(5);
        this.f93379b.invoke(fVar, continuation);
        return Unit.INSTANCE;
    }
}
