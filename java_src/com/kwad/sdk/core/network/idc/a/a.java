package com.kwad.sdk.core.network.idc.a;

/* JADX INFO: loaded from: classes2.dex */
public final class a {
    private final long aUr;
    private volatile boolean aUs = false;

    public a(long j10, boolean z10) {
        this.aUr = j10;
    }

    public final boolean Ms() {
        return this.aUs;
    }

    public final long Mt() {
        return this.aUr;
    }

    public final a bF(boolean z10) {
        this.aUs = true;
        return this;
    }
}
