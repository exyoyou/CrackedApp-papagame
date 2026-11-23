package com.kwad.sdk.core.request.model;

import com.ksad.json.annotation.KsJson;

/* JADX INFO: loaded from: classes2.dex */
@KsJson
public class f extends com.kwad.sdk.core.response.a.a implements com.kwad.sdk.core.b {
    public long aXx;
    public int adStyle;
    public int count;
    public int taskType;

    public f() {
    }

    public final void aL(long j10) {
        this.aXx = j10;
    }

    public f(int i10, int i11, int i12, long j10) {
        this.adStyle = i10;
        this.taskType = i11;
        this.count = 1;
        this.aXx = j10;
    }
}
