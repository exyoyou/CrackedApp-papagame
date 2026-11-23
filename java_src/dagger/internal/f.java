package dagger.internal;

/* JADX INFO: loaded from: classes8.dex */
public final class f<T> implements e<T>, dagger.a<T> {

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private static final f<Object> f90832b = new f<>(null);

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private final T f90833a;

    private f(T instance) {
        this.f90833a = instance;
    }

    public static <T> e<T> a(T instance) {
        return new f(k.c(instance, "instance cannot be null"));
    }

    public static <T> e<T> b(T instance) {
        return instance == null ? c() : new f(instance);
    }

    private static <T> f<T> c() {
        return (f<T>) f90832b;
    }

    @Override // vb.a, tb.a
    public T get() {
        return this.f90833a;
    }
}
