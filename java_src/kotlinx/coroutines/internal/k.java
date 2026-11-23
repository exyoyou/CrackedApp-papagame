package kotlinx.coroutines.internal;

import java.util.Iterator;
import kotlin.ExceptionsKt__ExceptionsKt;
import kotlin.coroutines.CoroutineContext;
import org.jetbrains.annotations.NotNull;

/* JADX INFO: loaded from: classes.dex */
public final class k {
    public static final void a(@NotNull CoroutineContext coroutineContext, @NotNull Throwable th) {
        Iterator<kotlinx.coroutines.h0> it2 = j.b().iterator();
        while (it2.hasNext()) {
            try {
                it2.next().t(coroutineContext, th);
            } catch (ExceptionSuccessfullyProcessed unused) {
                return;
            } catch (Throwable th2) {
                j.c(kotlinx.coroutines.i0.c(th, th2));
            }
        }
        try {
            ExceptionsKt__ExceptionsKt.addSuppressed(th, new DiagnosticCoroutineContextException(coroutineContext));
        } catch (Throwable unused2) {
        }
        j.c(th);
    }
}
