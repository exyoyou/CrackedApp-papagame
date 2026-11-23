package com.nineoldandroids.util;

/* JADX INFO: loaded from: classes2.dex */
public abstract class c<T, V> {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private final String f76313a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private final Class<V> f76314b;

    public c(Class<V> cls, String str) {
        this.f76313a = str;
        this.f76314b = cls;
    }

    public static <T, V> c<T, V> d(Class<T> cls, Class<V> cls2, String str) {
        return new d(cls, cls2, str);
    }

    public abstract V a(T t10);

    public String b() {
        return this.f76313a;
    }

    public boolean c() {
        return false;
    }

    public void e(T t10, V v10) {
        throw new UnsupportedOperationException("Property " + b() + " is read-only");
    }

    public Class<V> getType() {
        return this.f76314b;
    }
}
