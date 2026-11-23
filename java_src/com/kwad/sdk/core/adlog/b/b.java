package com.kwad.sdk.core.adlog.b;

import com.ksad.json.annotation.KsJson;
import com.kwad.sdk.core.response.model.AdTemplate;

/* JADX INFO: loaded from: classes2.dex */
@KsJson
public class b extends com.kwad.sdk.commercial.c.a {
    public int aKI;
    public int aLP;
    public String aLQ;
    public boolean aLZ;
    public int aMa;
    public int aMb;
    public long aMc;
    public int retryCount;
    public int status;

    public static b Jd() {
        return new b();
    }

    public final b az(long j10) {
        this.aMc = j10;
        return this;
    }

    public final b bE(boolean z10) {
        this.aLZ = z10;
        return this;
    }

    @Override // com.kwad.sdk.commercial.c.a
    /* JADX INFO: renamed from: cD, reason: merged with bridge method [inline-methods] */
    public final b setAdTemplate(AdTemplate adTemplate) {
        super.setAdTemplate(adTemplate);
        return this;
    }

    public final b dK(int i10) {
        this.status = i10;
        return this;
    }

    public final b dL(int i10) {
        this.aKI = i10;
        return this;
    }

    public final b dM(int i10) {
        this.retryCount = i10;
        return this;
    }

    public final b dN(int i10) {
        this.aLP = i10;
        return this;
    }

    public final b dO(int i10) {
        this.aMa = i10;
        return this;
    }

    public final b dP(int i10) {
        this.aMb = i10;
        return this;
    }

    public final b dY(String str) {
        this.aLQ = str;
        return this;
    }
}
