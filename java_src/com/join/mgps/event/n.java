package com.join.mgps.event;

/* JADX INFO: loaded from: classes3.dex */
public class n {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private int f68202a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private String f68203b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    private double f68204c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    private long f68205d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    private String f68206e;

    public n(int type, String contentStr, double starNum, long time, String mobileType) {
        this.f68202a = type;
        this.f68203b = contentStr;
        this.f68204c = starNum;
        this.f68205d = time;
        this.f68206e = mobileType;
    }

    public String a() {
        return this.f68203b;
    }

    public String b() {
        return this.f68206e;
    }

    public double c() {
        return this.f68204c;
    }

    public long d() {
        return this.f68205d;
    }

    public void e(String contentStr) {
        this.f68203b = contentStr;
    }

    public void f(String mobileType) {
        this.f68206e = mobileType;
    }

    public void g(double starNum) {
        this.f68204c = starNum;
    }

    public int getType() {
        return this.f68202a;
    }

    public void h(long time) {
        this.f68205d = time;
    }

    public void i(int type) {
        this.f68202a = type;
    }
}
