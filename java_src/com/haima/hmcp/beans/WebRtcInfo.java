package com.haima.hmcp.beans;

import java.io.Serializable;

/* JADX INFO: loaded from: classes5.dex */
public class WebRtcInfo implements Serializable {
    public static final int SUPPORTED = 1;
    public static final int UNKNOWN = -1;
    public static final int UNSUPPORTED = 0;
    public String auth;
    public String coTurnUrl;
    public String inputUrl;
    public String ipV6TurnUrl;
    public String roomId;
    public String screenRecordUrl;
    public String screenUrl;
    public String signalUrl;
    public int supportLiving = -1;
    public String turnUrl;

    public String toString() {
        return "WebRtcInfo{coTurnUrl='" + this.coTurnUrl + "', roomId='" + this.roomId + "', signalUrl='" + this.signalUrl + "', inputUrl='" + this.inputUrl + "', screenUrl='" + this.screenUrl + "', auth='" + this.auth + "', turnUrl='" + this.turnUrl + "', ipV6TurnUrl='" + this.ipV6TurnUrl + "', screenRecordUrl='" + this.screenRecordUrl + "', supportLiving=" + this.supportLiving + '}';
    }
}
