package com.kwad.sdk.core.response.model;

/* JADX INFO: loaded from: classes2.dex */
public final class b {
    private boolean aXL;
    private boolean anr = true;
    private int mHeight;
    private String mUrl;
    private int mWidth;

    public b(String str, int i10, int i11, boolean z10, boolean z11) {
        this.mUrl = str;
        this.mWidth = i10;
        this.mHeight = i11;
        this.aXL = z11;
    }

    public final int getHeight() {
        return this.mHeight;
    }

    public final String getUrl() {
        return this.mUrl;
    }

    public final int getWidth() {
        return this.mWidth;
    }
}
