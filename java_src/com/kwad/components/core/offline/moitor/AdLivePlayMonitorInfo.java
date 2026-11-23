package com.kwad.components.core.offline.moitor;

import java.io.Serializable;

/* JADX INFO: loaded from: classes2.dex */
public class AdLivePlayMonitorInfo extends com.kwad.sdk.commercial.c.a implements Serializable {
    private static final long serialVersionUID = -3833408862294416903L;
    public String appId;
    public String authorId;
    public int scene;
    public Long userId;

    public AdLivePlayMonitorInfo setAppId(String str) {
        this.appId = str;
        return this;
    }

    public AdLivePlayMonitorInfo setAuthorId(String str) {
        this.authorId = str;
        return this;
    }

    public AdLivePlayMonitorInfo setScene(int i10) {
        this.scene = i10;
        return this;
    }

    public AdLivePlayMonitorInfo setUserId(Long l10) {
        this.userId = l10;
        return this;
    }
}
