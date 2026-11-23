package com.kwad.sdk.api.model;

import androidx.annotation.Keep;

/* JADX INFO: loaded from: classes2.dex */
@Keep
public class NativeAdExtraData {
    private boolean enableRotate = true;
    private boolean enableShake;
    private int showLiveStatus;
    private int showLiveStyle;

    public int getShowLiveStatus() {
        return this.showLiveStatus;
    }

    public int getShowLiveStyle() {
        return this.showLiveStyle;
    }

    public boolean isEnableRotate() {
        return this.enableRotate;
    }

    public boolean isEnableShake() {
        return this.enableShake;
    }

    public NativeAdExtraData setEnableRotate(boolean z10) {
        this.enableRotate = z10;
        return this;
    }

    public NativeAdExtraData setEnableShake(boolean z10) {
        this.enableShake = z10;
        return this;
    }

    public NativeAdExtraData setShowLiveStatus(int i10) {
        this.showLiveStatus = i10;
        return this;
    }

    public NativeAdExtraData setShowLiveStyle(int i10) {
        this.showLiveStyle = i10;
        return this;
    }
}
