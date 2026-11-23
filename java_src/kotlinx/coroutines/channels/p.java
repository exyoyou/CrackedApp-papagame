package kotlinx.coroutines.channels;

import kotlin.Unit;
import kotlin.coroutines.CoroutineContext;
import kotlinx.coroutines.i0;
import org.jetbrains.annotations.NotNull;

/* JADX INFO: loaded from: classes.dex */
final class p<E> extends h<E> implements q<E> {
    public p(@NotNull CoroutineContext coroutineContext, @NotNull g<E> gVar) {
        super(coroutineContext, gVar, true, true);
    }

    @Override // kotlinx.coroutines.a
    protected void H1(@NotNull Throwable th, boolean z10) {
        if (K1().U(th) || z10) {
            return;
        }
        i0.b(get$context(), th);
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // kotlinx.coroutines.a
    /* JADX INFO: renamed from: L1, reason: merged with bridge method [inline-methods] */
    public void I1(@NotNull Unit unit) {
        s.a.a(K1(), null, 1, null);
    }

    @Override // kotlinx.coroutines.channels.q
    public /* bridge */ /* synthetic */ s getChannel() {
        return getChannel();
    }

    @Override // kotlinx.coroutines.a, kotlinx.coroutines.JobSupport, kotlinx.coroutines.v1
    public boolean isActive() {
        return super.isActive();
    }
}
