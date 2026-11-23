package com.facebook.rebound;

/* JADX INFO: loaded from: classes9.dex */
public class s extends n {

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    public static double f28874d = 16.6667d;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private double f28875b = f28874d;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    private boolean f28876c;

    @Override // com.facebook.rebound.n
    public void b() {
        this.f28876c = true;
        while (!this.f28871a.g() && this.f28876c) {
            this.f28871a.i(this.f28875b);
        }
    }

    @Override // com.facebook.rebound.n
    public void c() {
        this.f28876c = false;
    }

    public double d() {
        return this.f28875b;
    }

    public void e(double d10) {
        this.f28875b = d10;
    }
}
