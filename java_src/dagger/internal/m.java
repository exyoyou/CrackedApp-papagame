package dagger.internal;

/* JADX INFO: loaded from: classes8.dex */
public final class m<T> implements l<dagger.a<T>> {

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    static final /* synthetic */ boolean f90841b = false;

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private final l<T> f90842a;

    private m(l<T> provider) {
        this.f90842a = provider;
    }

    public static <T> l<dagger.a<T>> a(l<T> provider) {
        return new m((l) k.b(provider));
    }

    @Deprecated
    public static <T> l<dagger.a<T>> b(vb.a<T> provider) {
        return a(n.a(provider));
    }

    @Override // vb.a, tb.a
    /* JADX INFO: renamed from: c, reason: merged with bridge method [inline-methods] */
    public dagger.a<T> get() {
        return d.b(this.f90842a);
    }
}
