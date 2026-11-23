package com.haima.hmcp.rtmp.widgets;

import android.content.Context;
import android.text.TextUtils;
import android.util.AttributeSet;
import com.haima.hmcp.beans.CloudPlayInfo;
import com.haima.hmcp.business.HmcpRequest;
import com.haima.hmcp.business.IWebSocket;
import com.haima.hmcp.business.WebSocketManager;
import com.haima.hmcp.countly.CountlyUtil;
import com.haima.hmcp.enums.CloudPlayerKeyboardStatus;
import com.haima.hmcp.listeners.HmcpPlayerListener;
import com.haima.hmcp.utils.HmIMEManager;
import com.haima.hmcp.utils.LogUtils;
import com.haima.hmcp.widgets.AbsIjkVideoView;

/* JADX INFO: loaded from: classes5.dex */
public abstract class RtmpCustomVideoViewPlatform extends AbsIjkVideoView {
    private static final String TAG = "RtmpCustomVideoViewPlatform";

    public RtmpCustomVideoViewPlatform(Context context) {
        super(context);
    }

    @Override // com.haima.hmcp.widgets.AbsIjkVideoView
    protected void callbackCloudDeviceStatus(String str) {
        String str2 = TAG;
        LogUtils.i(str2, "onCloudDeviceStatus :" + str);
        HmcpPlayerListener hmcpPlayerListener = this.mListener;
        if (hmcpPlayerListener == null) {
            LogUtils.e(str2, "mListener is null");
        } else {
            hmcpPlayerListener.onCloudDeviceStatus(str);
        }
    }

    @Override // com.haima.hmcp.widgets.AbsIjkVideoView
    protected void callbackCloudPlayerKeyboardStatusChanged(CloudPlayerKeyboardStatus cloudPlayerKeyboardStatus) {
        String str = TAG;
        LogUtils.i(str, "onCloudPlayerKeyboardStatusChanged :" + cloudPlayerKeyboardStatus);
        HmcpPlayerListener hmcpPlayerListener = this.mListener;
        if (hmcpPlayerListener != null) {
            hmcpPlayerListener.onCloudPlayerKeyboardStatusChanged(cloudPlayerKeyboardStatus);
        } else {
            LogUtils.e(str, "mListener is null hide");
        }
    }

    @Override // com.haima.hmcp.widgets.AbsIjkVideoView
    protected void callbackLocalKeyboardShow() {
        if (this.mListener == null || HmIMEManager.getInstance().isShowInput() || HmIMEManager.getInstance().isFastCall()) {
            return;
        }
        LogUtils.e(TAG, "onCloudPlayerKeyboardStatusChanged show");
        this.mListener.onCloudPlayerKeyboardStatusChanged(CloudPlayerKeyboardStatus.CLOUD_PLAYER_KEYBOARD_STATUS_SHOW);
    }

    @Override // com.haima.hmcp.widgets.AbsIjkVideoView
    protected void initManagerSpecial() {
        CloudPlayInfo cloudPlayInfo = AbsIjkVideoView.cloudPlayInfo;
        if (cloudPlayInfo != null) {
            cloudPlayInfo.setWebSocketManager((WebSocketManager) this.mWebSocketManager);
        } else {
            LogUtils.d(TAG, "cloudPlayInfo == null,can't set cloudPlayInfo.setWebSocketManager(mWebSocketManager)");
        }
        HmcpRequest hmcpRequest = this.mRequestManager;
        if (hmcpRequest != null) {
            hmcpRequest.setCloudPlayInfo(AbsIjkVideoView.cloudPlayInfo);
        }
        IWebSocket iWebSocket = this.mWebSocketManager;
        if (iWebSocket != null) {
            ((WebSocketManager) iWebSocket).setCloudPlayInfo(AbsIjkVideoView.cloudPlayInfo);
        }
    }

    @Override // com.haima.hmcp.widgets.AbsIjkVideoView, com.haima.hmcp.business.HmcpRequestManager.OnHmcpSaasRequestListener
    public void onGetCloudServiceSuccess(String str, boolean z10, String str2, int i10, boolean z11) {
        LogUtils.i(TAG, this.curConnectState + "==onGetCloudServiceSuccess===" + str + "====isNeedShowToast===" + z10 + " ===mBitRate = " + this.mBitRate + "=OperationStream=");
        this.isGetCloudServiceSuccess = true;
        this.mIsFirstGetCloudService = z10;
        if (this.curConnectState == 1) {
            syncSpeedVsPlay(null);
        } else {
            this.curCloudServiceState = 2;
            CloudStateSend(2);
        }
        if (TextUtils.isEmpty(str2)) {
            return;
        }
        this.currenteResolutionID = str2;
        CountlyUtil.mResolutionID = str2;
        setResolutionList(this.mHmcpManager.getResolutionDatas(), this.currenteResolutionID, false, z11);
    }

    public RtmpCustomVideoViewPlatform(Context context, AttributeSet attributeSet) {
        super(context, attributeSet);
    }

    public RtmpCustomVideoViewPlatform(Context context, AttributeSet attributeSet, int i10) {
        super(context, attributeSet, i10);
    }
}
