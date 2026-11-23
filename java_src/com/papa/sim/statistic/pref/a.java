package com.papa.sim.statistic.pref;

/* JADX INFO: loaded from: classes2.dex */
public class a {

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public static final byte f77307e = 0;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    public static final byte f77308f = 0;

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private byte f77309a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private long f77310b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    private long f77311c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    private String f77312d;

    public long a() {
        return this.f77311c;
    }

    public byte b() {
        return this.f77309a;
    }

    public long c() {
        return this.f77310b;
    }

    public String d() {
        return this.f77312d;
    }

    public void e(long j10) {
        this.f77311c = j10;
    }

    public void f(byte b10) {
        this.f77309a = b10;
    }

    public void g(long j10) {
        this.f77310b = j10;
    }

    public void h(String str) {
        this.f77312d = str;
    }

    public String toString() {
        return "uid=" + this.f77312d + ";flag=" + ((int) this.f77309a) + ";startTime=" + this.f77310b + ";endTime=" + this.f77311c;
    }
}
