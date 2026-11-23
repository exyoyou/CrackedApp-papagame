package com.kwad.components.core.offline.moitor;

import com.ksad.json.annotation.KsJson;

/* JADX INFO: loaded from: classes2.dex */
@KsJson
public class b extends com.kwad.sdk.commercial.c.a {
    public String acX;
    public long acY;
    public long acZ;
    public long ada;
    public String adb;

    public final b K(long j10) {
        this.acY = j10;
        return this;
    }

    public final b L(long j10) {
        this.acZ = j10;
        return this;
    }

    public final b aS(String str) {
        this.acX = str;
        return this;
    }

    public final b aT(String str) {
        this.errorMsg = str;
        return this;
    }

    public final b aU(String str) {
        this.adb = str;
        return this;
    }

    public final b bs(int i10) {
        this.ada = i10;
        return this;
    }

    @Override // com.kwad.sdk.commercial.c.a
    /* JADX INFO: renamed from: bt, reason: merged with bridge method [inline-methods] */
    public final b setErrorCode(int i10) {
        this.errorCode = i10;
        return this;
    }
}
