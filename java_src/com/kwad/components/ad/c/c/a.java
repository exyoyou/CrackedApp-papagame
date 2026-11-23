package com.kwad.components.ad.c.c;

import com.ksad.json.annotation.KsJson;

/* JADX INFO: loaded from: classes2.dex */
@KsJson
public class a extends com.kwad.sdk.commercial.c.a {
    public int cO;
    public int cP;
    public int renderType;

    public static a au() {
        return new a();
    }

    public final a s(int i10) {
        this.cO = i10;
        return this;
    }

    public final a t(int i10) {
        this.renderType = i10;
        return this;
    }

    public final a u(int i10) {
        this.cP = i10;
        return this;
    }
}
