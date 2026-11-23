package kotlinx.coroutines.flow.internal;

import kotlin.PublishedApi;
import org.jetbrains.annotations.NotNull;

/* JADX INFO: loaded from: classes.dex */
public final class h {
    @PublishedApi
    public static final int a(int i10) {
        if (i10 >= 0) {
            return i10;
        }
        throw new ArithmeticException("Index overflow has happened");
    }

    public static final void b(@NotNull AbortFlowException abortFlowException, @NotNull Object obj) {
        if (abortFlowException.owner != obj) {
            throw abortFlowException;
        }
    }
}
