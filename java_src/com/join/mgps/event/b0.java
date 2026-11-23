package com.join.mgps.event;

/* JADX INFO: loaded from: classes3.dex */
public class b0 {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private int f68156a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private int f68157b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    private Object f68158c;

    public b0(int event) {
        this.f68156a = event;
    }

    public int a() {
        return this.f68157b;
    }

    public Object b() {
        return this.f68158c;
    }

    public int c() {
        return this.f68156a;
    }

    public void d(int adType) {
        this.f68157b = adType;
    }

    public void e(Object data) {
        this.f68158c = data;
    }

    public void f(int event) {
        this.f68156a = event;
    }

    public b0(int event, Object data) {
        this.f68156a = event;
        this.f68158c = data;
    }
}
