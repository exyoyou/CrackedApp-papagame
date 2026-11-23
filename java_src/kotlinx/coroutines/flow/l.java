package kotlinx.coroutines.flow;

import java.util.List;
import kotlin.coroutines.Continuation;
import kotlin.coroutines.CoroutineContext;
import kotlinx.coroutines.channels.BufferOverflow;
import kotlinx.coroutines.v1;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;

/* JADX INFO: loaded from: classes.dex */
final class l<T> implements u<T>, a<T>, kotlinx.coroutines.flow.internal.i<T> {

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    @Nullable
    private final v1 f93404b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    private final /* synthetic */ u<T> f93405c;

    /* JADX WARN: Multi-variable type inference failed */
    public l(@NotNull u<? extends T> uVar, @Nullable v1 v1Var) {
        this.f93404b = v1Var;
        this.f93405c = uVar;
    }

    @Override // kotlinx.coroutines.flow.n, kotlinx.coroutines.flow.e
    @Nullable
    public Object a(@NotNull f<? super T> fVar, @NotNull Continuation<?> continuation) {
        return this.f93405c.a(fVar, continuation);
    }

    @Override // kotlinx.coroutines.flow.n
    @NotNull
    public List<T> b() {
        return this.f93405c.b();
    }

    @Override // kotlinx.coroutines.flow.internal.i
    @NotNull
    public e<T> f(@NotNull CoroutineContext coroutineContext, int i10, @NotNull BufferOverflow bufferOverflow) {
        return v.d(this, coroutineContext, i10, bufferOverflow);
    }

    @Override // kotlinx.coroutines.flow.u
    public T getValue() {
        return this.f93405c.getValue();
    }
}
