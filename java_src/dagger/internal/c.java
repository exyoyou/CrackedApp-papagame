package dagger.internal;

/* JADX INFO: loaded from: classes8.dex */
public final class c<T> implements e<T> {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private l<T> f90827a;

    public static <T> void b(l<T> delegateFactory, l<T> delegate) {
        d((c) delegateFactory, delegate);
    }

    @Deprecated
    public static <T> void c(vb.a<T> delegateFactory, vb.a<T> delegate) {
        d((c) delegateFactory, n.a(delegate));
    }

    private static <T> void d(c<T> delegateFactory, l<T> delegate) {
        k.b(delegate);
        if (((c) delegateFactory).f90827a != null) {
            throw new IllegalStateException();
        }
        ((c) delegateFactory).f90827a = delegate;
    }

    l<T> a() {
        return (l) k.b(this.f90827a);
    }

    @Deprecated
    public void e(l<T> delegate) {
        b(this, delegate);
    }

    @Deprecated
    public void f(vb.a<T> delegate) {
        e(n.a(delegate));
    }

    @Override // vb.a, tb.a
    public T get() {
        l<T> lVar = this.f90827a;
        if (lVar != null) {
            return lVar.get();
        }
        throw new IllegalStateException();
    }
}
