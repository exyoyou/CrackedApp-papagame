package com.kwad.components.ad.draw.a;

import com.ksad.json.annotation.KsJson;

/* JADX INFO: loaded from: classes2.dex */
@KsJson
public class a extends com.kwad.sdk.commercial.c.a {
    public int callbackType;
    public String dO;
    public int renderType;

    public static a aR() {
        return new a();
    }

    public final a B(int i10) {
        this.renderType = i10;
        return this;
    }

    public final a C(int i10) {
        this.callbackType = i10;
        return this;
    }
}
