package com.sdk.d;

/* JADX INFO: loaded from: classes2.dex */
public class a<T> {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public boolean f78472a = false;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public e<?> f78473b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public a<T> f78474c;

    public a(T t10) {
        a(t10);
    }

    /* JADX WARN: Type inference failed for: r0v0, types: [T, com.sdk.d.e, com.sdk.d.e<?>] */
    public T a() {
        ?? r10 = (T) this.f78473b;
        if (r10 == 0) {
            return null;
        }
        return this.f78472a ? r10 : (T) r10.f78501b;
    }

    /* JADX WARN: Multi-variable type inference failed */
    public void a(T t10) {
        if (t10 == 0) {
            this.f78473b = null;
        } else if (!(t10 instanceof e)) {
            this.f78473b = new e<>(b.DEFAULT, t10);
        } else {
            this.f78473b = (e) t10;
            this.f78472a = true;
        }
    }
}
