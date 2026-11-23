package com.kwad.components.core.offline.moitor;

import com.ksad.json.annotation.KsJson;

/* JADX INFO: loaded from: classes2.dex */
@KsJson
public class d extends com.kwad.sdk.commercial.c.a {
    public String acX;
    public long acY;
    public long acZ;
    public String adb;
    public long adc;

    public final d M(long j10) {
        this.acY = j10;
        return this;
    }

    public final d N(long j10) {
        this.acZ = j10;
        return this;
    }

    public final d O(long j10) {
        this.adc = j10;
        return this;
    }

    public final d aV(String str) {
        this.acX = str;
        return this;
    }

    public final d aW(String str) {
        this.errorMsg = str;
        return this;
    }

    public final d aX(String str) {
        this.adb = str;
        return this;
    }

    @Override // com.kwad.sdk.commercial.c.a
    /* JADX INFO: renamed from: bu, reason: merged with bridge method [inline-methods] */
    public final d setErrorCode(int i10) {
        this.errorCode = i10;
        return this;
    }
}
