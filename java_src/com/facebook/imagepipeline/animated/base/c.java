package com.facebook.imagepipeline.animated.base;

import com.facebook.infer.annotation.Nullsafe;

/* JADX INFO: loaded from: classes9.dex */
@Nullsafe(Nullsafe.Mode.STRICT)
public class c {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private boolean f27564a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private boolean f27565b = true;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    private int f27566c = -1;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    private boolean f27567d;

    public b a() {
        return new b(this);
    }

    public boolean b() {
        return this.f27565b;
    }

    public boolean c() {
        return this.f27567d;
    }

    public boolean d() {
        return this.f27564a;
    }

    public int e() {
        return this.f27566c;
    }

    public c f(boolean allowPrefetching) {
        this.f27565b = allowPrefetching;
        return this;
    }

    public c g(boolean enableDebugging) {
        this.f27567d = enableDebugging;
        return this;
    }

    public c h(boolean forceKeepAllFramesInMemory) {
        this.f27564a = forceKeepAllFramesInMemory;
        return this;
    }

    public c i(int maximumBytes) {
        this.f27566c = maximumBytes;
        return this;
    }
}
