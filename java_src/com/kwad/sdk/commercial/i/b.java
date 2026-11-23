package com.kwad.sdk.commercial.i;

import com.ksad.json.annotation.KsJson;
import com.kwad.sdk.core.response.model.AdTemplate;

/* JADX INFO: loaded from: classes2.dex */
@KsJson
public class b extends com.kwad.sdk.commercial.c.a {
    public String aKA;
    public String aKB;
    public int aKI;
    public int requestType;
    public int status;

    public static b IB() {
        return new b();
    }

    @Override // com.kwad.sdk.commercial.c.a
    /* JADX INFO: renamed from: cl, reason: merged with bridge method [inline-methods] */
    public final b setAdTemplate(AdTemplate adTemplate) {
        super.setAdTemplate(adTemplate);
        return this;
    }

    public final b dF(int i10) {
        this.status = i10;
        return this;
    }

    public final b dG(int i10) {
        this.aKI = i10;
        return this;
    }

    public final b dH(int i10) {
        this.requestType = i10;
        return this;
    }

    @Override // com.kwad.sdk.commercial.c.a
    /* JADX INFO: renamed from: dI, reason: merged with bridge method [inline-methods] */
    public final b setErrorCode(int i10) {
        super.setErrorCode(i10);
        return this;
    }

    public final b dL(String str) {
        this.aKA = str;
        return this;
    }

    public final b dM(String str) {
        this.aKB = str;
        return this;
    }

    @Override // com.kwad.sdk.commercial.c.a
    /* JADX INFO: renamed from: dN, reason: merged with bridge method [inline-methods] */
    public final b setErrorMsg(String str) {
        super.setErrorMsg(str);
        return this;
    }
}
