package com.kwad.components.ad.interstitial.report.realtime.model;

import com.ksad.json.annotation.KsJson;
import com.kwad.sdk.commercial.c.a;
import java.io.Serializable;

/* JADX INFO: loaded from: classes2.dex */
@KsJson
public class InterstitialRealTimeInfo extends a implements Serializable {
    public String materialUrl;
    public long monitorIndex;
    public long renderType;

    public void setMaterialUrl(String str) {
        this.materialUrl = str;
    }

    public void setRenderType(long j10) {
        this.renderType = j10;
    }
}
