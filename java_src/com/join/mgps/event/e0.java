package com.join.mgps.event;

/* JADX INFO: loaded from: classes3.dex */
public class e0 {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public int f68170a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public String f68171b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public long f68172c;

    public e0(int status, String id2) {
        this.f68170a = status;
        this.f68171b = id2;
    }

    public String a() {
        return this.f68171b;
    }

    public long b() {
        return this.f68172c;
    }

    public int c() {
        return this.f68170a;
    }

    public void d(String id2) {
        this.f68171b = id2;
    }

    public void e(long progress) {
        this.f68172c = progress;
    }

    public void f(int status) {
        this.f68170a = status;
    }

    public e0(int status, String id2, long progress) {
        this.f68170a = status;
        this.f68171b = id2;
        this.f68172c = progress;
    }
}
