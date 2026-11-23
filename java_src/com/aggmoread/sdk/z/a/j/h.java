package com.aggmoread.sdk.z.a.j;

/* JADX INFO: loaded from: classes7.dex */
public class h extends Exception {

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private int f3580b;

    public h(int i10, String str) {
        super(str);
        this.f3580b = i10;
    }

    public int a() {
        return this.f3580b;
    }

    public h(int i10, String str, Throwable th) {
        super(str, th);
        this.f3580b = i10;
    }

    public h(int i10, Throwable th) {
        super(th);
        this.f3580b = i10;
    }

    public h(String str) {
        super(str);
        this.f3580b = 0;
    }
}
