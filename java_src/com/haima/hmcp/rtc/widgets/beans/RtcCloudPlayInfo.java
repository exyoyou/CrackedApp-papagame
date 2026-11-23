package com.haima.hmcp.rtc.widgets.beans;

import android.util.Log;
import com.haima.hmcp.Constants;
import com.haima.hmcp.beans.CloudPlayInfo;
import com.haima.hmcp.business.WebSocketManager;
import com.haima.hmcp.countly.CountlyUtil;
import com.haima.hmcp.input.HMInput;

/* JADX INFO: loaded from: classes5.dex */
public class RtcCloudPlayInfo extends CloudPlayInfo {
    @Override // com.haima.hmcp.beans.CloudPlayInfo
    public String toStatusCode() {
        String str;
        String str2 = "";
        if (!this.isStatusCodeEnable) {
            return "";
        }
        WebSocketManager webSocketManager = this.webSocketManager;
        if (webSocketManager != null) {
            try {
                if (this.isGetStreamUrlSuccess) {
                    if (!this.isGetCloudServiceSuccess || this.isWebrtcConnectSuccess) {
                        if (!this.isGetOperationFiveSuccess) {
                            str = Constants.ERRORCODE_WEBRTC_019;
                        } else if (!this.isTurnOnVideoSuccess) {
                            str = Constants.ERRORCODE_WEBRTC_020;
                        }
                    } else if (!this.isSignalConnectSuccess) {
                        str = Constants.ERRORCODE_WEBRTC_005;
                    } else if (!this.isReceiveOffer) {
                        str = Constants.ERRORCODE_WEBRTC_006;
                    } else if (!this.isSendAnswer) {
                        str = Constants.ERRORCODE_WEBRTC_007;
                    } else if (!this.isSendCandidate) {
                        str = Constants.ERRORCODE_WEBRTC_008;
                    } else if (!this.isReceiveCandidate) {
                        str = Constants.ERRORCODE_WEBRTC_009;
                    } else if (this.isWebrtcConnectTimeout) {
                        str = Constants.ERRORCODE_WEBRTC_010;
                    } else {
                        boolean z10 = true;
                        if (this.isWebrtcConnectFailed) {
                            HMInput hMInput = this.mHMInput;
                            if (hMInput == null || !hMInput.isConnected()) {
                                z10 = false;
                            }
                            str = z10 ? Constants.ERRORCODE_WEBRTC_015 : Constants.ERRORCODE_WEBRTC_016;
                        } else {
                            HMInput hMInput2 = this.mHMInput;
                            if (hMInput2 == null || !hMInput2.isConnected()) {
                                z10 = false;
                            }
                            if (z10) {
                                str = !this.isFirstFrameArrival ? Constants.ERRORCODE_WEBRTC_012 : Constants.ERRORCODE_WEBRTC_011;
                            } else {
                                str = !this.isFirstFrameArrival ? Constants.ERRORCODE_WEBRTC_014 : Constants.ERRORCODE_WEBRTC_013;
                            }
                        }
                    }
                } else if (!this.isGetCloudServiceSuccess) {
                    str = Constants.ERRORCODE_WEBRTC_001;
                } else if (!this.isMatchStreamType) {
                    str = Constants.ERRORCODE_WEBRTC_017;
                } else if (webSocketManager.isConnect(WebSocketManager.WebSocketType.TYPE_ACCESS)) {
                    str = !isPingPongNormal() ? Constants.ERRORCODE_WEBRTC_003 : Constants.ERRORCODE_WEBRTC_004;
                } else {
                    str = Constants.ERRORCODE_WEBRTC_002;
                }
                str2 = str;
            } catch (Exception e10) {
                CountlyUtil.recordErrorEvent("CloudPlayInfo toStatusCode error : " + Log.getStackTraceString(e10));
            }
        } else {
            CountlyUtil.recordErrorEvent("CloudPlayInfo toStatusCode : webSocketManager null ");
        }
        this.reportStatusCode = str2;
        return str2;
    }
}
