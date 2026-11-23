package com.join.mgps.event;

/* JADX INFO: loaded from: classes3.dex */
public class k {

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    public static int f68184h = 1;

    /* JADX INFO: renamed from: i, reason: collision with root package name */
    public static int f68185i = 2;

    /* JADX INFO: renamed from: j, reason: collision with root package name */
    public static int f68186j = 3;

    /* JADX INFO: renamed from: k, reason: collision with root package name */
    public static int f68187k = 4;

    /* JADX INFO: renamed from: l, reason: collision with root package name */
    public static int f68188l = 5;

    /* JADX INFO: renamed from: m, reason: collision with root package name */
    public static int f68189m = 6;

    /* JADX INFO: renamed from: n, reason: collision with root package name */
    public static int f68190n = 7;

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private String f68191a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private String f68192b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    private String f68193c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    private long f68194d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    private int f68195e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    private String f68196f;

    /* JADX INFO: renamed from: g, reason: collision with root package name */
    private int f68197g;

    public k(int status, String url) {
        this.f68197g = status;
        this.f68191a = url;
    }

    public long a() {
        return this.f68194d;
    }

    public String b() {
        return this.f68192b;
    }

    public String c() {
        return this.f68193c;
    }

    public int d() {
        return this.f68195e;
    }

    public String e() {
        return this.f68196f;
    }

    public int f() {
        return this.f68197g;
    }

    public String g() {
        return this.f68191a;
    }

    public void h(long actualSize) {
        this.f68194d = actualSize;
    }

    public void i(String name) {
        this.f68192b = name;
    }

    public void j(String path) {
        this.f68193c = path;
    }

    public void k(int progress) {
        this.f68195e = progress;
    }

    public void l(String speed) {
        this.f68196f = speed;
    }

    public void m(String url) {
        this.f68191a = url;
    }

    public k() {
    }
}
