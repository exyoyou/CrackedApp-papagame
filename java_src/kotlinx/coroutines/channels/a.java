package kotlinx.coroutines.channels;

import java.util.concurrent.CancellationException;
import kotlin.coroutines.CoroutineContext;
import kotlinx.coroutines.i0;
import kotlinx.coroutines.l1;
import kotlinx.coroutines.o0;
import kotlinx.coroutines.v1;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;

/* JADX INFO: loaded from: classes.dex */
class a<E> extends h<E> implements c<E> {
    public a(@NotNull CoroutineContext coroutineContext, @NotNull g<E> gVar, boolean z10) {
        super(coroutineContext, gVar, false, z10);
        Q0((v1) coroutineContext.get(v1.F1));
    }

    @Override // kotlinx.coroutines.JobSupport
    protected boolean O0(@NotNull Throwable th) {
        i0.b(get$context(), th);
        return true;
    }

    @Override // kotlinx.coroutines.JobSupport
    protected void l1(@Nullable Throwable th) {
        g<E> gVarK1 = K1();
        CancellationException cancellationExceptionA = null;
        if (th != null) {
            cancellationExceptionA = th instanceof CancellationException ? (CancellationException) th : null;
            if (cancellationExceptionA == null) {
                cancellationExceptionA = l1.a(o0.a(this) + " was cancelled", th);
            }
        }
        gVarK1.b(cancellationExceptionA);
    }
}
