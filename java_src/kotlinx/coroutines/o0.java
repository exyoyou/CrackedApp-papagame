package kotlinx.coroutines;

import kotlin.Result;
import kotlin.ResultKt;
import kotlin.coroutines.Continuation;
import kotlin.jvm.internal.SourceDebugExtension;
import org.jetbrains.annotations.NotNull;

/* JADX INFO: loaded from: classes.dex */
@SourceDebugExtension({"SMAP\nDebugStrings.kt\nKotlin\n*S Kotlin\n*F\n+ 1 DebugStrings.kt\nkotlinx/coroutines/DebugStringsKt\n+ 2 fake.kt\nkotlin/jvm/internal/FakeKt\n*L\n1#1,18:1\n1#2:19\n*E\n"})
public final class o0 {
    @NotNull
    public static final String a(@NotNull Object obj) {
        return obj.getClass().getSimpleName();
    }

    @NotNull
    public static final String b(@NotNull Object obj) {
        return Integer.toHexString(System.identityHashCode(obj));
    }

    @NotNull
    public static final String c(@NotNull Continuation<?> continuation) {
        Object objM50constructorimpl;
        if (continuation instanceof kotlinx.coroutines.internal.m) {
            return continuation.toString();
        }
        try {
            Result.Companion companion = Result.INSTANCE;
            objM50constructorimpl = Result.m50constructorimpl(continuation + '@' + b(continuation));
        } catch (Throwable th) {
            Result.Companion companion2 = Result.INSTANCE;
            objM50constructorimpl = Result.m50constructorimpl(ResultKt.createFailure(th));
        }
        if (Result.m53exceptionOrNullimpl(objM50constructorimpl) != null) {
            objM50constructorimpl = continuation.getClass().getName() + '@' + b(continuation);
        }
        return (String) objM50constructorimpl;
    }
}
