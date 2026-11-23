package com.facebook.drawee.components;

import com.facebook.infer.annotation.Nullsafe;

/* JADX INFO: loaded from: classes9.dex */
@Nullsafe(Nullsafe.Mode.STRICT)
public class c {

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    private static final int f27055d = 4;

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private boolean f27056a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private int f27057b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    private int f27058c;

    public c() {
        a();
    }

    public static c c() {
        return new c();
    }

    public void a() {
        this.f27056a = false;
        this.f27057b = 4;
        e();
    }

    public boolean b() {
        return this.f27056a;
    }

    public void d() {
        this.f27058c++;
    }

    public void e() {
        this.f27058c = 0;
    }

    public void f(int maxTapToRetryAttemps) {
        this.f27057b = maxTapToRetryAttemps;
    }

    public void g(boolean tapToRetryEnabled) {
        this.f27056a = tapToRetryEnabled;
    }

    public boolean h() {
        return this.f27056a && this.f27058c < this.f27057b;
    }
}
