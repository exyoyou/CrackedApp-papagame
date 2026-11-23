package kotlinx.coroutines.selects;

import kotlin.PublishedApi;
import kotlin.Result;
import kotlin.ResultKt;
import kotlin.Unit;
import kotlin.coroutines.Continuation;
import kotlin.coroutines.intrinsics.IntrinsicsKt__IntrinsicsKt;
import kotlin.coroutines.jvm.internal.DebugProbesKt;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.internal.InlineMarker;
import kotlinx.coroutines.CoroutineDispatcher;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;

/* JADX INFO: loaded from: classes.dex */
public final class l {
    /* JADX INFO: Access modifiers changed from: private */
    /* JADX WARN: Multi-variable type inference failed */
    public static final <T> void c(kotlinx.coroutines.n<? super T> nVar, T t10) {
        CoroutineDispatcher coroutineDispatcher = (CoroutineDispatcher) nVar.get$context().get(CoroutineDispatcher.Key);
        if (coroutineDispatcher != null) {
            nVar.N(coroutineDispatcher, t10);
        } else {
            Result.Companion companion = Result.INSTANCE;
            nVar.resumeWith(Result.m50constructorimpl(t10));
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final void d(kotlinx.coroutines.n<?> nVar, Throwable th) {
        CoroutineDispatcher coroutineDispatcher = (CoroutineDispatcher) nVar.get$context().get(CoroutineDispatcher.Key);
        if (coroutineDispatcher != null) {
            nVar.i(coroutineDispatcher, th);
        } else {
            Result.Companion companion = Result.INSTANCE;
            nVar.resumeWith(Result.m50constructorimpl(ResultKt.createFailure(th)));
        }
    }

    @PublishedApi
    @Nullable
    public static final <R> Object e(@NotNull Function1<? super b<? super R>, Unit> function1, @NotNull Continuation<? super R> continuation) {
        SelectBuilderImpl selectBuilderImpl = new SelectBuilderImpl(continuation);
        try {
            function1.invoke(selectBuilderImpl);
        } catch (Throwable th) {
            selectBuilderImpl.R(th);
        }
        Object objQ = selectBuilderImpl.Q();
        if (objQ == IntrinsicsKt__IntrinsicsKt.getCOROUTINE_SUSPENDED()) {
            DebugProbesKt.probeCoroutineSuspended(continuation);
        }
        return objQ;
    }

    @PublishedApi
    private static final <R> Object f(Function1<? super b<? super R>, Unit> function1, Continuation<? super R> continuation) {
        InlineMarker.mark(0);
        SelectBuilderImpl selectBuilderImpl = new SelectBuilderImpl(continuation);
        try {
            function1.invoke(selectBuilderImpl);
        } catch (Throwable th) {
            selectBuilderImpl.R(th);
        }
        Object objQ = selectBuilderImpl.Q();
        if (objQ == IntrinsicsKt__IntrinsicsKt.getCOROUTINE_SUSPENDED()) {
            DebugProbesKt.probeCoroutineSuspended(continuation);
        }
        InlineMarker.mark(1);
        return objQ;
    }

    @PublishedApi
    @Nullable
    public static final <R> Object g(@NotNull Function1<? super b<? super R>, Unit> function1, @NotNull Continuation<? super R> continuation) {
        UnbiasedSelectBuilderImpl unbiasedSelectBuilderImpl = new UnbiasedSelectBuilderImpl(continuation);
        try {
            function1.invoke(unbiasedSelectBuilderImpl);
        } catch (Throwable th) {
            unbiasedSelectBuilderImpl.S(th);
        }
        Object objT = unbiasedSelectBuilderImpl.T();
        if (objT == IntrinsicsKt__IntrinsicsKt.getCOROUTINE_SUSPENDED()) {
            DebugProbesKt.probeCoroutineSuspended(continuation);
        }
        return objT;
    }

    @PublishedApi
    private static final <R> Object h(Function1<? super b<? super R>, Unit> function1, Continuation<? super R> continuation) {
        InlineMarker.mark(0);
        UnbiasedSelectBuilderImpl unbiasedSelectBuilderImpl = new UnbiasedSelectBuilderImpl(continuation);
        try {
            function1.invoke(unbiasedSelectBuilderImpl);
        } catch (Throwable th) {
            unbiasedSelectBuilderImpl.S(th);
        }
        Object objT = unbiasedSelectBuilderImpl.T();
        if (objT == IntrinsicsKt__IntrinsicsKt.getCOROUTINE_SUSPENDED()) {
            DebugProbesKt.probeCoroutineSuspended(continuation);
        }
        InlineMarker.mark(1);
        return objT;
    }
}
