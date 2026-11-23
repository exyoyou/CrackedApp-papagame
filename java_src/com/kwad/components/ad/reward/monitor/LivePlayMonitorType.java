package com.kwad.components.ad.reward.monitor;

/* JADX INFO: loaded from: classes2.dex */
public enum LivePlayMonitorType {
    AD_LIVE_IMPL_LOAD_ERROR(1),
    LIVE_PLAY_MODULE_RELEASE_INNER_EXCEPTION(9);

    private int type;

    LivePlayMonitorType(int i10) {
        this.type = i10;
    }

    public final int getValue() {
        return this.type;
    }
}
