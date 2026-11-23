package com.kwad.components.ad.reward.monitor;

import java.io.Serializable;

/* JADX INFO: loaded from: classes2.dex */
public class LivePlayMonitorInfo extends com.kwad.sdk.commercial.c.a implements Serializable {
    private static final long serialVersionUID = 220093320997409985L;
    public String appId;
    public String authorId;
    public int scene;
    public Long userId;

    public LivePlayMonitorInfo setAppId(String str) {
        this.appId = str;
        return this;
    }

    public LivePlayMonitorInfo setAuthorId(String str) {
        this.authorId = str;
        return this;
    }

    public LivePlayMonitorInfo setScene(int i10) {
        this.scene = i10;
        return this;
    }

    public LivePlayMonitorInfo setUserId(Long l10) {
        this.userId = l10;
        return this;
    }
}
