package com.kwad.components.ad.draw.a;

import com.ksad.json.annotation.KsJson;

/* JADX INFO: loaded from: classes2.dex */
@KsJson
public class b extends com.kwad.sdk.commercial.c.a {
    public int adNum;
    public int adStyle;
    public int cP;
    public long cQ;
    public long loadTime;
    public int materialType;
    public String materialUrl;
    public String methodName;
    public long renderTime;
    public int renderType;
    public int status;

    public static b aS() {
        return new b();
    }

    public final b D(int i10) {
        this.status = i10;
        return this;
    }

    public final b E(int i10) {
        this.adNum = i10;
        return this;
    }

    public final b F(int i10) {
        this.materialType = i10;
        return this;
    }

    public final b G(int i10) {
        this.renderType = i10;
        return this;
    }

    public final b H(int i10) {
        this.cP = i10;
        return this;
    }

    public final b I(int i10) {
        this.adStyle = i10;
        return this;
    }

    public final b h(long j10) {
        this.loadTime = j10;
        return this;
    }

    public final b i(long j10) {
        this.renderTime = j10;
        return this;
    }

    public final b j(long j10) {
        this.cQ = j10;
        return this;
    }

    public final b q(String str) {
        this.methodName = str;
        return this;
    }

    public final b r(String str) {
        this.materialUrl = str;
        return this;
    }
}
