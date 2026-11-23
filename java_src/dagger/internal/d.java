package dagger.internal;

/* JADX INFO: loaded from: classes8.dex */
public final class d<T> implements l<T>, dagger.a<T> {

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    private static final Object f90828c = new Object();

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    static final /* synthetic */ boolean f90829d = false;

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private volatile l<T> f90830a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private volatile Object f90831b = f90828c;

    private d(l<T> provider) {
        this.f90830a = provider;
    }

    private synchronized Object a() {
        Object obj;
        obj = this.f90831b;
        if (obj == f90828c) {
            obj = this.f90830a.get();
            this.f90831b = f(this.f90831b, obj);
            this.f90830a = null;
        }
        return obj;
    }

    public static <T> dagger.a<T> b(l<T> provider) {
        return provider instanceof dagger.a ? (dagger.a) provider : new d((l) k.b(provider));
    }

    public static <P extends vb.a<T>, T> dagger.a<T> c(P provider) {
        return b(n.a(provider));
    }

    public static <T> l<T> d(l<T> delegate) {
        k.b(delegate);
        return delegate instanceof d ? delegate : new d(delegate);
    }

    @Deprecated
    public static <P extends vb.a<T>, T> vb.a<T> e(P delegate) {
        return d(n.a(delegate));
    }

    private static Object f(Object currentInstance, Object newInstance) {
        if (!(currentInstance != f90828c) || currentInstance == newInstance) {
            return newInstance;
        }
        throw new IllegalStateException("Scoped provider was invoked recursively returning different results: " + currentInstance + " & " + newInstance + ". This is likely due to a circular dependency.");
    }

    @Override // vb.a, tb.a
    public T get() {
        T t10 = (T) this.f90831b;
        return t10 == f90828c ? (T) a() : t10;
    }
}
