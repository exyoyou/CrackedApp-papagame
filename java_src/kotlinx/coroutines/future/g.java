package kotlinx.coroutines.future;

import java.util.concurrent.CompletionException;
import java.util.function.BiFunction;
import kotlin.Result;
import kotlin.ResultKt;
import kotlin.Unit;
import kotlin.coroutines.Continuation;
import kotlin.jvm.JvmField;
import org.jetbrains.annotations.Nullable;

/* JADX INFO: loaded from: classes.dex */
final class g<T> implements BiFunction<T, Throwable, Unit> {

    @JvmField
    @Nullable
    public volatile Continuation<? super T> cont;

    public g(@Nullable Continuation<? super T> continuation) {
        this.cont = continuation;
    }

    public void a(@Nullable T t10, @Nullable Throwable th) {
        Throwable cause;
        Continuation<? super T> continuation = this.cont;
        if (continuation == null) {
            return;
        }
        if (th == null) {
            Result.Companion companion = Result.INSTANCE;
            continuation.resumeWith(Result.m50constructorimpl(t10));
            return;
        }
        CompletionException completionExceptionA = d.a(th) ? e.a(th) : null;
        if (completionExceptionA != null && (cause = completionExceptionA.getCause()) != null) {
            th = cause;
        }
        Result.Companion companion2 = Result.INSTANCE;
        continuation.resumeWith(Result.m50constructorimpl(ResultKt.createFailure(th)));
    }

    /* JADX WARN: Multi-variable type inference failed */
    @Override // java.util.function.BiFunction
    public /* bridge */ /* synthetic */ Unit apply(Object obj, Throwable th) {
        a(obj, th);
        return Unit.INSTANCE;
    }
}
