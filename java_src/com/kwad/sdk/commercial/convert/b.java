package com.kwad.sdk.commercial.convert;

import com.ksad.json.annotation.KsJson;

/* JADX INFO: loaded from: classes2.dex */
@KsJson
public class b extends com.kwad.sdk.commercial.c.a {
    public boolean aKo;
    public boolean aKp;
    public String aKq;
    public int adNum;
    public String adSource;
    public String methodName;

    public static b Iq() {
        return new b();
    }

    public final b bC(boolean z10) {
        this.aKo = z10;
        return this;
    }

    public final b dA(int i10) {
        this.adNum = i10;
        return this;
    }

    public final b dt(String str) {
        this.methodName = str;
        return this;
    }

    public final b du(String str) {
        this.aKq = str;
        return this;
    }

    public final b dv(String str) {
        this.adSource = str;
        return this;
    }
}
