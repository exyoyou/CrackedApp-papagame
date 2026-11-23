package com.haima.hmcp.widgets;

import android.content.Context;
import android.text.TextUtils;
import android.util.AttributeSet;
import com.haima.hmcp.Constants;
import com.haima.hmcp.HmcpManager;
import com.haima.hmcp.beans.CloudPlayInfo;
import com.haima.hmcp.beans.ControlInfo;
import com.haima.hmcp.beans.GamePlatformType;
import com.haima.hmcp.beans.RemoteCaptureParameters;
import com.haima.hmcp.listeners.OnContronListener;
import com.haima.hmcp.listeners.RemoteCaptureListener;
import com.haima.hmcp.rtc.widgets.RtcModel;
import com.haima.hmcp.rtc.widgets.beans.RtcCloudPlayInfo;
import com.haima.hmcp.rtmp.widgets.RtmpModel;
import com.haima.hmcp.utils.LogUtils;
import com.haima.hmcp.utils.ping.PingManager;
import com.haima.hmcp.widgets.beans.VirtualOperateType;
import java.util.List;

/* JADX INFO: loaded from: classes5.dex */
public abstract class HmcpVideoViewImplBase extends AbsIjkVideoView {
    private static final String TAG = "HmcpVideoViewImplBase";
    private String mStreamType;

    public HmcpVideoViewImplBase(Context context, String str) {
        super(context);
        this.mStreamType = str;
        init(context);
    }

    private void init(Context context) {
        LogUtils.d(TAG, "HmcpVideoViewAndroidImpl.init");
        this.mHmcpManager = HmcpManager.getInstance();
        initView(context);
        PingManager.getInstance().setContext(context.getApplicationContext());
        initIME(context);
        initHandler();
        initCloudInfo();
        initManager();
        initModelByStreamType(context);
    }

    private void initCloudInfo() {
        if (Constants.STREAM_TYPE_RTC.equals(this.mStreamType)) {
            AbsIjkVideoView.cloudPlayInfo = new RtcCloudPlayInfo();
        } else {
            AbsIjkVideoView.cloudPlayInfo = new CloudPlayInfo();
        }
    }

    @Override // com.haima.hmcp.widgets.AbsIjkVideoView, com.haima.hmcp.widgets.IBaseHmcpVideoView
    public void distributeControlPermit(List<ControlInfo> list, OnContronListener onContronListener) {
        LogUtils.i(TAG, "distributeControlPermit()" + this.mRequestManager + "; " + getCid());
        if (this.mGamePlatformType != GamePlatformType.X86 || this.mRequestManager == null || TextUtils.isEmpty(getCid())) {
            return;
        }
        this.mRequestManager.requestX86ControlDistribute(HmcpManager.getInstance().getCloudId(), list, onContronListener);
    }

    @Override // com.haima.hmcp.widgets.AbsIjkVideoView, com.haima.hmcp.widgets.IBaseHmcpVideoView
    public VirtualOperateType getOperateType() {
        VirtualOperateType virtualOperateType;
        return (this.mGamePlatformType != GamePlatformType.X86 || (virtualOperateType = this.mDefaultOperateType) == null) ? VirtualOperateType.NONE : virtualOperateType;
    }

    protected void initModelByStreamType(Context context) {
        if (Constants.STREAM_TYPE_RTC.equals(this.mStreamType)) {
            this.streamModel = new RtcModel();
        } else {
            this.streamModel = new RtmpModel();
        }
        this.streamModel.init(context, this, this.mRequestManager);
        this.streamModel.setColorMode(this.mColorMode, null);
    }

    @Override // com.haima.hmcp.widgets.AbsIjkVideoView, com.haima.hmcp.widgets.IBaseHmcpVideoView
    public void queryControlUsers(OnContronListener onContronListener) {
        LogUtils.i(TAG, "queryControlUsers() " + this.mRequestManager + ";" + getCid());
        if (this.mGamePlatformType != GamePlatformType.X86 || this.mRequestManager == null || TextUtils.isEmpty(getCid())) {
            return;
        }
        this.mRequestManager.queryX86ControlInfo(HmcpManager.getInstance().getCloudId(), onContronListener);
    }

    @Override // com.haima.hmcp.widgets.AbsIjkVideoView, com.haima.hmcp.widgets.IBaseHmcpVideoView
    public void remoteCapture(RemoteCaptureParameters remoteCaptureParameters, RemoteCaptureListener remoteCaptureListener) {
        LogUtils.i(TAG, "remoteCapture()" + this.mRequestManager + "; " + getCid());
        if (this.mGamePlatformType != GamePlatformType.X86 || this.mRequestManager == null || TextUtils.isEmpty(getCid())) {
            return;
        }
        this.mRequestManager.remoteCapture(remoteCaptureParameters, remoteCaptureListener);
    }

    @Override // com.haima.hmcp.widgets.AbsIjkVideoView
    public boolean sendEvent(byte[] bArr) {
        return this.streamModel.sendEvent(bArr);
    }

    public HmcpVideoViewImplBase(Context context, AttributeSet attributeSet) {
        super(context, attributeSet);
        this.mStreamType = Constants.STREAM_TYPE_RTC;
        init(context);
    }

    public HmcpVideoViewImplBase(Context context, AttributeSet attributeSet, int i10) {
        super(context, attributeSet, i10);
        this.mStreamType = Constants.STREAM_TYPE_RTC;
        init(context);
    }
}
