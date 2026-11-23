package com.kwad.sdk.core.adlog.b;

import com.ksad.json.annotation.KsJson;
import com.kwad.sdk.core.response.model.AdTemplate;

/* JADX INFO: loaded from: classes2.dex */
@KsJson
public class d extends com.kwad.sdk.commercial.c.a {
    public String aKB;
    public int aKI;
    public int aMd;
    public int retryCount;
    public int status;

    public static d Je() {
        return new d();
    }

    @Override // com.kwad.sdk.commercial.c.a
    /* JADX INFO: renamed from: cE, reason: merged with bridge method [inline-methods] */
    public final d setAdTemplate(AdTemplate adTemplate) {
        super.setAdTemplate(adTemplate);
        return this;
    }

    public final d dQ(int i10) {
        this.status = i10;
        return this;
    }

    public final d dR(int i10) {
        this.aKI = i10;
        return this;
    }

    public final d dS(int i10) {
        this.aMd = 1;
        return this;
    }

    public final d dT(int i10) {
        this.retryCount = i10;
        return this;
    }

    @Override // com.kwad.sdk.commercial.c.a
    /* JADX INFO: renamed from: dU, reason: merged with bridge method [inline-methods] */
    public final d setErrorCode(int i10) {
        super.setErrorCode(i10);
        return this;
    }

    public final d dZ(String str) {
        this.aKB = str;
        return this;
    }

    @Override // com.kwad.sdk.commercial.c.a
    /* JADX INFO: renamed from: ea, reason: merged with bridge method [inline-methods] */
    public final d setErrorMsg(String str) {
        super.setErrorMsg(str);
        return this;
    }
}
