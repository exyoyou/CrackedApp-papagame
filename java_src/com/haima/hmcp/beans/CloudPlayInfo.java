package com.haima.hmcp.beans;

import android.util.Log;
import com.haima.hmcp.Constants;
import com.haima.hmcp.business.WebSocketManager;
import com.haima.hmcp.countly.CountlyUtil;
import com.haima.hmcp.input.HMInput;
import com.haima.hmcp.utils.LogUtils;

/* JADX INFO: loaded from: classes5.dex */
public class CloudPlayInfo {
    private static final String TAG = "CloudPlayInfo";
    protected HMInput mHMInput;
    protected WebSocketManager webSocketManager;
    public boolean isGetStreamUrlSuccess = false;
    public boolean isGetCloudServiceSuccess = false;
    public boolean isGetOperationFiveSuccess = false;
    public boolean isTurnOnVideoSuccess = false;
    public boolean isVideoConnectSuccess = false;
    public boolean isAudioConnectSuccess = false;
    public boolean isSignalConnectSuccess = false;
    public boolean isReceiveOffer = false;
    public boolean isSendAnswer = false;
    public boolean isSendCandidate = false;
    public boolean isReceiveCandidate = false;
    public boolean isWebrtcConnectSuccess = false;
    public boolean isWebrtcConnectFailed = false;
    public boolean isWebrtcConnectTimeout = false;
    public boolean isFirstFrameArrival = false;
    public boolean isMatchStreamType = true;
    public int pingCount = 0;
    public int pongCount = 0;
    public String reportStatusCode = "";
    protected boolean isStatusCodeEnable = true;

    public void disable() {
        this.isStatusCodeEnable = false;
    }

    public boolean isPingPongNormal() {
        int i10;
        LogUtils.d(TAG, "pingCount : " + this.pingCount + "pongCount : " + this.pongCount);
        int i11 = this.pingCount;
        return (i11 == 0 || (i10 = this.pongCount) == 0 || i11 != i10) ? false : true;
    }

    public void pingCountPlus1() {
        this.pingCount++;
    }

    public void pongCountPlus1() {
        this.pongCount++;
    }

    public void reset() {
        LogUtils.d(TAG, "reset");
        this.isGetStreamUrlSuccess = false;
        this.isGetCloudServiceSuccess = false;
        this.isGetOperationFiveSuccess = false;
        this.isTurnOnVideoSuccess = false;
        this.isVideoConnectSuccess = false;
        this.isAudioConnectSuccess = false;
        this.isSignalConnectSuccess = false;
        this.isReceiveOffer = false;
        this.isSendAnswer = false;
        this.isSendCandidate = false;
        this.isReceiveCandidate = false;
        this.isWebrtcConnectSuccess = false;
        this.isWebrtcConnectFailed = false;
        this.isWebrtcConnectTimeout = false;
        this.isFirstFrameArrival = false;
        this.isMatchStreamType = true;
        this.pingCount = 0;
        this.pongCount = 0;
        this.reportStatusCode = "";
    }

    public void resetCloudPlayInfo() {
        reset();
    }

    public void setCloudServiceSuccess(boolean z10) {
        this.isGetCloudServiceSuccess = z10;
    }

    public void setHMInput(HMInput hMInput) {
        LogUtils.d(TAG, "setHmInput");
        this.mHMInput = hMInput;
    }

    public void setPingPong(int i10, int i11) {
        this.pingCount = i10;
        this.pongCount = i11;
    }

    public void setWebSocketManager(WebSocketManager webSocketManager) {
        WebSocketManager webSocketManager2;
        if (webSocketManager == null && (webSocketManager2 = this.webSocketManager) != null) {
            webSocketManager2.resetListeners();
        }
        this.webSocketManager = webSocketManager;
    }

    public void syncStatus(CloudPlayInfo cloudPlayInfo) {
        this.isGetStreamUrlSuccess = cloudPlayInfo.isGetStreamUrlSuccess;
        this.isGetCloudServiceSuccess = cloudPlayInfo.isGetCloudServiceSuccess;
        this.isGetOperationFiveSuccess = cloudPlayInfo.isGetOperationFiveSuccess;
        this.isTurnOnVideoSuccess = cloudPlayInfo.isTurnOnVideoSuccess;
        this.isVideoConnectSuccess = cloudPlayInfo.isVideoConnectSuccess;
        this.isAudioConnectSuccess = cloudPlayInfo.isAudioConnectSuccess;
        this.isSignalConnectSuccess = cloudPlayInfo.isSignalConnectSuccess;
        this.isReceiveOffer = cloudPlayInfo.isReceiveOffer;
        this.isSendAnswer = cloudPlayInfo.isSendAnswer;
        this.isSendCandidate = cloudPlayInfo.isSendCandidate;
        this.isReceiveCandidate = cloudPlayInfo.isReceiveCandidate;
        this.isWebrtcConnectSuccess = cloudPlayInfo.isWebrtcConnectSuccess;
        this.isWebrtcConnectFailed = cloudPlayInfo.isWebrtcConnectFailed;
        this.isWebrtcConnectTimeout = cloudPlayInfo.isWebrtcConnectTimeout;
        this.isFirstFrameArrival = cloudPlayInfo.isFirstFrameArrival;
        this.isMatchStreamType = cloudPlayInfo.isMatchStreamType;
        this.pingCount = cloudPlayInfo.pingCount;
        this.pongCount = cloudPlayInfo.pongCount;
        this.reportStatusCode = cloudPlayInfo.reportStatusCode;
    }

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
                    HMInput hMInput = this.mHMInput;
                    boolean z10 = hMInput != null && hMInput.isConnected();
                    if (this.isVideoConnectSuccess) {
                        str = Constants.ERRORCODE_APP_TIME_OUT_005;
                    } else if (this.isAudioConnectSuccess) {
                        str = Constants.ERRORCODE_APP_TIME_OUT_006;
                    } else {
                        str = z10 ? Constants.ERRORCODE_APP_TIME_OUT_007 : Constants.ERRORCODE_APP_TIME_OUT_008;
                    }
                } else if (!this.isGetCloudServiceSuccess) {
                    str = Constants.ERRORCODE_APP_TIME_OUT_001;
                } else if (!this.isMatchStreamType) {
                    str = Constants.ERRORCODE_APP_TIME_OUT_009;
                } else if (webSocketManager.isConnect(WebSocketManager.WebSocketType.TYPE_ACCESS)) {
                    str = !isPingPongNormal() ? Constants.ERRORCODE_APP_TIME_OUT_003 : Constants.ERRORCODE_APP_TIME_OUT_004;
                } else {
                    str = Constants.ERRORCODE_APP_TIME_OUT_002;
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

    public String toString() {
        String string = super.toString();
        try {
            if (this.webSocketManager == null) {
                return string;
            }
            StringBuilder sb2 = new StringBuilder();
            sb2.append("code : ");
            sb2.append(toStatusCode());
            sb2.append("\n211、201成功 : ");
            sb2.append(this.isGetCloudServiceSuccess);
            sb2.append("\nAccess长连接成功 : ");
            sb2.append(this.webSocketManager.isConnect(WebSocketManager.WebSocketType.TYPE_ACCESS));
            sb2.append("\n乒乓是否正常 : ");
            sb2.append(isPingPongNormal());
            sb2.append("ping : ");
            sb2.append(this.pingCount);
            sb2.append(" pong : ");
            sb2.append(this.pongCount);
            sb2.append("\n获取流地址成功 : ");
            sb2.append(this.isGetStreamUrlSuccess);
            sb2.append("\n视频流连接成功 : ");
            sb2.append(this.isVideoConnectSuccess);
            sb2.append("\n音频流连接成功 : ");
            sb2.append(this.isAudioConnectSuccess);
            sb2.append("\nInput长连接成功 : ");
            HMInput hMInput = this.mHMInput;
            sb2.append(hMInput == null ? "null" : Boolean.valueOf(hMInput.isConnected()));
            sb2.append("\nop5成功 : ");
            sb2.append(this.isGetOperationFiveSuccess);
            sb2.append("\n打开遮罩成功 : ");
            sb2.append(this.isTurnOnVideoSuccess);
            return sb2.toString();
        } catch (Exception unused) {
            return string;
        }
    }
}
