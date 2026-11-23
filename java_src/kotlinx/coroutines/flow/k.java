package kotlinx.coroutines.flow;

import java.util.List;
import kotlin.coroutines.Continuation;
import kotlin.coroutines.CoroutineContext;
import kotlinx.coroutines.channels.BufferOverflow;
import kotlinx.coroutines.v1;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;

/* JADX INFO: loaded from: classes.dex */
final class k<T> implements n<T>, a<T>, kotlinx.coroutines.flow.internal.i<T> {

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    @Nullable
    private final v1 f93402b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    private final /* synthetic */ n<T> f93403c;

    /* JADX WARN: Multi-variable type inference failed */
    public k(@NotNull n<? extends T> nVar, @Nullable v1 v1Var) {
        this.f93402b = v1Var;
        this.f93403c = nVar;
    }

    @Override // kotlinx.coroutines.flow.n, kotlinx.coroutines.flow.e
    @Nullable
    public Object a(@NotNull f<? super T> fVar, @NotNull Continuation<?> continuation) {
        return this.f93403c.a(fVar, continuation);
    }

    @Override // kotlinx.coroutines.flow.n
    @NotNull
    public List<T> b() {
        return this.f93403c.b();
    }

    @Override // kotlinx.coroutines.flow.internal.i
    @NotNull
    public e<T> f(@NotNull CoroutineContext coroutineContext, int i10, @NotNull BufferOverflow bufferOverflow) {
        return o.e(this, coroutineContext, i10, bufferOverflow);
    }
}
