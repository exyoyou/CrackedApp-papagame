package com.join.mgps.event;

/* JADX INFO: loaded from: classes3.dex */
public class b {

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    public static final int f68149d = 1;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public static final int f68150e = 2;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    public static final int f68151f = 3;

    /* JADX INFO: renamed from: g, reason: collision with root package name */
    public static final int f68152g = 4;

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private int f68153a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private long f68154b = 100;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    private int f68155c = 3;

    public b(int eType) {
        this.f68153a = eType;
    }

    public int a() {
        return this.f68155c;
    }

    public int b() {
        return this.f68153a;
    }

    public long c() {
        return this.f68154b;
    }

    public void d(int mCount) {
        this.f68155c = mCount;
    }

    public void e(long mTime) {
        this.f68154b = mTime;
    }
}
