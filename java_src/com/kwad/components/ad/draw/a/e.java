package com.kwad.components.ad.draw.a;

import com.ksad.json.annotation.KsJson;

/* JADX INFO: loaded from: classes2.dex */
@KsJson
public class e extends com.kwad.sdk.commercial.c.a {
    public long dP;
    public int materialType;
    public String materialUrl;
    public int status;

    public static e aT() {
        return new e();
    }

    public final e J(int i10) {
        this.status = i10;
        return this;
    }

    public final e K(int i10) {
        this.materialType = i10;
        return this;
    }

    public final e k(long j10) {
        this.dP = j10;
        return this;
    }

    public final e s(String str) {
        this.materialUrl = str;
        return this;
    }
}
