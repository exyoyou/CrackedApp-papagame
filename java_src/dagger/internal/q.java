package dagger.internal;

/* JADX INFO: loaded from: classes8.dex */
public final class q<T> implements l<T> {

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    private static final Object f90852c = new Object();

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    static final /* synthetic */ boolean f90853d = false;

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private volatile l<T> f90854a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private volatile Object f90855b = f90852c;

    private q(l<T> provider) {
        this.f90854a = provider;
    }

    public static <T> l<T> a(l<T> provider) {
        return ((provider instanceof q) || (provider instanceof d)) ? provider : new q((l) k.b(provider));
    }

    public static <P extends vb.a<T>, T> vb.a<T> b(P delegate) {
        return a(n.a(delegate));
    }

    @Override // vb.a, tb.a
    public T get() {
        T t10 = (T) this.f90855b;
        if (t10 != f90852c) {
            return t10;
        }
        l<T> lVar = this.f90854a;
        if (lVar == null) {
            return (T) this.f90855b;
        }
        T t11 = lVar.get();
        this.f90855b = t11;
        this.f90854a = null;
        return t11;
    }
}
