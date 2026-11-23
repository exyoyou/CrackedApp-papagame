package com.kwad.components.ad.c.c;

import com.ksad.json.annotation.KsJson;

/* JADX INFO: loaded from: classes2.dex */
@KsJson
public class b extends com.kwad.sdk.commercial.c.a {
    public int adNum;
    public int cP;
    public long cQ;
    public int cR;
    public long loadTime;
    public int materialType;
    public String materialUrl;
    public long renderTime;
    public int renderType;
    public int status;

    public static b av() {
        return new b();
    }

    public final b A(int i10) {
        this.cR = i10;
        return this;
    }

    public final b e(long j10) {
        this.loadTime = j10;
        return this;
    }

    public final b f(long j10) {
        this.renderTime = j10;
        return this;
    }

    public final b g(long j10) {
        this.cQ = j10;
        return this;
    }

    public final b p(String str) {
        this.materialUrl = str;
        return this;
    }

    public final b v(int i10) {
        this.status = i10;
        return this;
    }

    public final b w(int i10) {
        this.adNum = i10;
        return this;
    }

    public final b x(int i10) {
        this.materialType = i10;
        return this;
    }

    public final b y(int i10) {
        this.renderType = i10;
        return this;
    }

    public final b z(int i10) {
        this.cP = i10;
        return this;
    }
}
