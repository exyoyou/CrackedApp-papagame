package com.kwad.sdk.core.adlog.a;

import androidx.annotation.NonNull;
import org.json.JSONObject;

/* JADX INFO: loaded from: classes2.dex */
public final class a {
    public JSONObject aLM;
    public com.kwad.sdk.core.adlog.c.a aLN;
    public long aLO;
    public int aLP;
    public String aLQ;
    public int retryCount;
    public String url;

    public static a IU() {
        return new a();
    }

    public final a ay(long j10) {
        this.aLO = j10;
        return this;
    }

    public final a c(com.kwad.sdk.core.adlog.c.a aVar) {
        this.aLN = aVar;
        return this;
    }

    public final a dJ(int i10) {
        this.aLP = i10;
        return this;
    }

    public final a dW(String str) {
        this.url = str;
        return this;
    }

    public final a dX(String str) {
        this.aLQ = str;
        return this;
    }

    public final a j(JSONObject jSONObject) {
        this.aLM = jSONObject;
        return this;
    }

    @NonNull
    public final String toString() {
        return "AdLogCache {actionType=" + this.aLN.aKI + ", retryCount=" + this.retryCount + ", retryErrorCode=" + this.aLP + ", retryErrorMsg=" + this.aLQ + '}';
    }
}
