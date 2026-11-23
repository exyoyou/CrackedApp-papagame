package com.join.mgps.event;

/* JADX INFO: loaded from: classes3.dex */
public class a {

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    public static final int f68137d = 1;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public static final int f68138e = 2;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    public static final int f68139f = 3;

    /* JADX INFO: renamed from: g, reason: collision with root package name */
    public static final int f68140g = 4;

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    public static final int f68141h = 5;

    /* JADX INFO: renamed from: i, reason: collision with root package name */
    public static final int f68142i = 6;

    /* JADX INFO: renamed from: j, reason: collision with root package name */
    public static final int f68143j = 7;

    /* JADX INFO: renamed from: k, reason: collision with root package name */
    public static final int f68144k = 8;

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private int f68145a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private Object f68146b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    private int f68147c = 0;

    public a(int event) {
        this.f68145a = event;
    }

    public int a() {
        return this.f68145a;
    }

    public int b() {
        return this.f68147c;
    }

    public Object c() {
        return this.f68146b;
    }

    public void d(int event) {
        this.f68145a = event;
    }

    public void e(int flag) {
        this.f68147c = flag;
    }

    public void f(Object obj) {
        this.f68146b = obj;
    }

    public a(int event, Object obj) {
        this.f68145a = event;
        this.f68146b = obj;
    }
}
