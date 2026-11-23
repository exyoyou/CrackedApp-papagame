package cn.fly.tcp.b;

/* JADX INFO: loaded from: classes7.dex */
public class c<T> {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private final boolean f1569a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private final a f1570b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    private final T f1571c;

    private c(boolean z10, a aVar, T t10) {
        this.f1569a = z10;
        this.f1570b = aVar;
        this.f1571c = t10;
    }

    public static c<Void> a(a aVar) {
        return new c<>(true, aVar, null);
    }

    public static <T> c<T> b(a aVar) {
        return new c<>(false, aVar, null);
    }

    public T c() {
        return this.f1571c;
    }

    public static <T> c<T> a(a aVar, T t10) {
        return new c<>(true, aVar, t10);
    }

    public a b() {
        return this.f1570b;
    }

    public boolean a() {
        return this.f1569a;
    }
}
