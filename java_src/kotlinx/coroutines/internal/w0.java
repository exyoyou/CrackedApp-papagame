package kotlinx.coroutines.internal;

import kotlin.coroutines.CoroutineContext;
import kotlin.coroutines.EmptyCoroutineContext;
import kotlin.jvm.functions.Function2;
import kotlin.jvm.internal.Intrinsics;
import kotlinx.coroutines.t2;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;

/* JADX INFO: loaded from: classes.dex */
public final class w0<T> implements t2<T> {

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private final T f93537b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    @NotNull
    private final ThreadLocal<T> f93538c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    @NotNull
    private final CoroutineContext.Key<?> f93539d;

    public w0(T t10, @NotNull ThreadLocal<T> threadLocal) {
        this.f93537b = t10;
        this.f93538c = threadLocal;
        this.f93539d = new x0(threadLocal);
    }

    @Override // kotlinx.coroutines.t2
    public T a0(@NotNull CoroutineContext coroutineContext) {
        T t10 = this.f93538c.get();
        this.f93538c.set(this.f93537b);
        return t10;
    }

    @Override // kotlin.coroutines.CoroutineContext.Element, kotlin.coroutines.CoroutineContext
    public <R> R fold(R r10, @NotNull Function2<? super R, ? super CoroutineContext.Element, ? extends R> function2) {
        return (R) t2.a.a(this, r10, function2);
    }

    @Override // kotlin.coroutines.CoroutineContext.Element, kotlin.coroutines.CoroutineContext
    @Nullable
    public <E extends CoroutineContext.Element> E get(@NotNull CoroutineContext.Key<E> key) {
        if (!Intrinsics.areEqual(getKey(), key)) {
            return null;
        }
        Intrinsics.checkNotNull(this, "null cannot be cast to non-null type E of kotlinx.coroutines.internal.ThreadLocalElement.get");
        return this;
    }

    @Override // kotlin.coroutines.CoroutineContext.Element
    @NotNull
    public CoroutineContext.Key<?> getKey() {
        return this.f93539d;
    }

    @Override // kotlin.coroutines.CoroutineContext.Element, kotlin.coroutines.CoroutineContext
    @NotNull
    public CoroutineContext minusKey(@NotNull CoroutineContext.Key<?> key) {
        return Intrinsics.areEqual(getKey(), key) ? EmptyCoroutineContext.INSTANCE : this;
    }

    @Override // kotlinx.coroutines.t2
    public void n(@NotNull CoroutineContext coroutineContext, T t10) {
        this.f93538c.set(t10);
    }

    @Override // kotlin.coroutines.CoroutineContext
    @NotNull
    public CoroutineContext plus(@NotNull CoroutineContext coroutineContext) {
        return t2.a.d(this, coroutineContext);
    }

    @NotNull
    public String toString() {
        return "ThreadLocal(value=" + this.f93537b + ", threadLocal = " + this.f93538c + ')';
    }
}
