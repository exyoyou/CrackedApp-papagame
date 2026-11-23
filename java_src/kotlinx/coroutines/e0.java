package kotlinx.coroutines;

import kotlin.Result;
import kotlin.ResultKt;
import kotlin.Unit;
import kotlin.coroutines.Continuation;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.internal.SourceDebugExtension;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;

/* JADX INFO: loaded from: classes.dex */
@SourceDebugExtension({"SMAP\nCompletionState.kt\nKotlin\n*S Kotlin\n*F\n+ 1 CompletionState.kt\nkotlinx/coroutines/CompletionStateKt\n+ 2 StackTraceRecovery.kt\nkotlinx/coroutines/internal/StackTraceRecoveryKt\n*L\n1#1,63:1\n57#2,2:64\n57#2,2:66\n*S KotlinDebug\n*F\n+ 1 CompletionState.kt\nkotlinx/coroutines/CompletionStateKt\n*L\n17#1:64,2\n23#1:66,2\n*E\n"})
public final class e0 {
    @NotNull
    public static final <T> Object a(@Nullable Object obj, @NotNull Continuation<? super T> continuation) {
        if (obj instanceof b0) {
            Result.Companion companion = Result.INSTANCE;
            return Result.m50constructorimpl(ResultKt.createFailure(((b0) obj).f92345a));
        }
        Result.Companion companion2 = Result.INSTANCE;
        return Result.m50constructorimpl(obj);
    }

    @Nullable
    public static final <T> Object b(@NotNull Object obj, @Nullable Function1<? super Throwable, Unit> function1) {
        Throwable thM53exceptionOrNullimpl = Result.m53exceptionOrNullimpl(obj);
        if (thM53exceptionOrNullimpl == null) {
            return function1 != null ? new c0(obj, function1) : obj;
        }
        return new b0(thM53exceptionOrNullimpl, false, 2, null);
    }

    @Nullable
    public static final <T> Object c(@NotNull Object obj, @NotNull n<?> nVar) {
        Throwable thM53exceptionOrNullimpl = Result.m53exceptionOrNullimpl(obj);
        return thM53exceptionOrNullimpl == null ? obj : new b0(thM53exceptionOrNullimpl, false, 2, null);
    }

    public static /* synthetic */ Object d(Object obj, Function1 function1, int i10, Object obj2) {
        if ((i10 & 1) != 0) {
            function1 = null;
        }
        return b(obj, function1);
    }
}
