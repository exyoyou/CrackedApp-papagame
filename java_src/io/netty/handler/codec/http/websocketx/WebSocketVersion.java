package io.netty.handler.codec.http.websocketx;

import com.qq.e.comm.managers.setting.GlobalSetting;
import com.sigmob.sdk.base.mta.PointType;

/* JADX INFO: loaded from: classes.dex */
public enum WebSocketVersion {
    UNKNOWN,
    V00,
    V07,
    V08,
    V13;

    public String toHttpHeaderValue() {
        if (this == V00) {
            return "0";
        }
        if (this == V07) {
            return "7";
        }
        if (this == V08) {
            return GlobalSetting.UNIFIED_INTERSTITIAL_HS_AD;
        }
        if (this == V13) {
            return PointType.SIGMOB_REPORT_TRACKING;
        }
        throw new IllegalStateException("Unknown web socket version: " + this);
    }
}
