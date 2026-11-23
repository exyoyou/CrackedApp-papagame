package com.haima.hmcp.widgets;

import android.content.Context;
import android.util.AttributeSet;
import com.haima.hmcp.Constants;
import com.haima.hmcp.beans.CloudPlayInfo;
import com.haima.hmcp.beans.PlayStreamPayloadData;
import com.haima.hmcp.business.HmcpRequest;
import com.haima.hmcp.business.IWebSocket;
import com.haima.hmcp.business.WebSocketManager;
import com.haima.hmcp.countly.CountlyUtil;
import com.haima.hmcp.enums.CloudPlayerKeyboardStatus;
import com.haima.hmcp.listeners.HmcpPlayerListener;
import com.haima.hmcp.utils.HmIMEManager;
import com.haima.hmcp.utils.LogUtils;

/* JADX INFO: loaded from: classes5.dex */
public class HmcpVideoViewImpl extends HmcpVideoViewImplExtension {
    private static final String TAG = HmcpVideoViewImplBase.class.getSimpleName();

    public HmcpVideoViewImpl(Context context, String str) {
        super(context, str);
    }

    @Override // com.haima.hmcp.widgets.AbsIjkVideoView
    protected void callbackCloudDeviceStatus(String str) {
        String str2 = TAG;
        LogUtils.d(str2, "onCloudDeviceStatus :" + str);
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
        LogUtils.d(str, "onCloudPlayerKeyboardStatusChanged :" + cloudPlayerKeyboardStatus);
        HmcpPlayerListener hmcpPlayerListener = this.mListener;
        if (hmcpPlayerListener != null) {
            hmcpPlayerListener.onCloudPlayerKeyboardStatusChanged(cloudPlayerKeyboardStatus);
        } else {
            LogUtils.e(str, "mListener is null");
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

    @Override // com.haima.hmcp.widgets.IBaseHmcpVideoView
    public void hideKeyboard() {
        this.localKeyboardModel.hideInput();
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

    @Override // com.haima.hmcp.widgets.AbsIjkVideoView
    public void internalPlayPreparation(int i10, PlayStreamPayloadData playStreamPayloadData) {
        if (i10 != 1) {
            cleanTimerNoAccess();
            return;
        }
        turnOffSound();
        turnOffVideo();
        CountlyUtil.recordEvent(Constants.COUNTLY_TURN_OFF_VIDEO, "turn off video, add cover");
    }

    public HmcpVideoViewImpl(Context context, AttributeSet attributeSet) {
        super(context, attributeSet);
    }

    public HmcpVideoViewImpl(Context context, AttributeSet attributeSet, int i10) {
        super(context, attributeSet, i10);
    }
}
