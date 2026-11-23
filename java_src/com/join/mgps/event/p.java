package com.join.mgps.event;

/* JADX INFO: loaded from: classes3.dex */
public class p {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private String f68209a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private int f68210b;

    public p(String id2, int type) {
        this.f68209a = id2;
        this.f68210b = type;
    }

    public String a() {
        return this.f68209a;
    }

    public void b(String id2) {
        this.f68209a = id2;
    }

    public void c(int type) {
        this.f68210b = type;
    }

    public int getType() {
        return this.f68210b;
    }
}
