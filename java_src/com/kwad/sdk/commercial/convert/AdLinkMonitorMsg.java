package com.kwad.sdk.commercial.convert;

import com.ksad.json.annotation.KsJson;
import java.io.Serializable;

/* JADX INFO: loaded from: classes2.dex */
@KsJson
public class AdLinkMonitorMsg extends com.kwad.sdk.commercial.c.a implements Serializable {
    public static final int CACHE_LOAD = 2;
    public static final int GET_VIEW_COST = 3;
    public static final int NATIVE = 1;
    public static final int ONLINE_LOAD = 1;
    public static final int PRE_RENDER_COST = 2;
    public static final int REQUEST_COST = 1;
    public static final int TK = 2;
    public static final int VIEW_RENDER_COST = 4;
    private static final long serialVersionUID = -6924282068763767612L;
    public int adStyle;
    public long durationTime;
    public int materialLoadType;
    public int renderType;
    public int status;

    public static AdLinkMonitorMsg obtain() {
        return new AdLinkMonitorMsg();
    }

    public AdLinkMonitorMsg setAdStyle(int i10) {
        this.adStyle = i10;
        return this;
    }

    public AdLinkMonitorMsg setDurationTime(long j10) {
        this.durationTime = j10;
        return this;
    }

    public AdLinkMonitorMsg setMaterialLoadType(int i10) {
        this.materialLoadType = i10;
        return this;
    }

    public AdLinkMonitorMsg setRenderType(int i10) {
        this.renderType = i10;
        return this;
    }

    public AdLinkMonitorMsg setStatus(int i10) {
        this.status = i10;
        return this;
    }
}
