package com.haima.hmcp.widgets;

import android.content.Context;
import android.util.AttributeSet;
import com.haima.hmcp.Constants;
import com.haima.hmcp.IHmcpVideoView;
import com.haima.hmcp.enums.WsMessageType;
import com.haima.hmcp.listeners.HmFrameCallback;
import com.haima.hmcp.listeners.HmStreamerIPCallback;
import com.haima.hmcp.listeners.ISeiListener;
import com.haima.hmcp.listeners.OnSendWsMessageListener;
import com.haima.hmcp.utils.LogUtils;

/* JADX INFO: loaded from: classes5.dex */
public class HmcpVideoView extends BaseVideoView {
    public HmcpVideoView(Context context) {
        super(context);
    }

    private boolean onlyRtmpStream() {
        return false;
    }

    public void connectAccProxy(String str, int i10, String str2, String str3) {
        LogUtils.d(HmcpVideoView.class.getSimpleName(), "接口未开放");
    }

    public void disconnectAccProxy() {
        LogUtils.d(HmcpVideoView.class.getSimpleName(), "接口未开放");
    }

    @Override // com.haima.hmcp.widgets.BaseVideoView
    protected String getStreamType(int i10) {
        if (Constants.ANDROID_TYPE == 2) {
            return super.getStreamType(i10);
        }
        IHmcpVideoView iHmcpVideoView = this.hmcpVideoViewInterface;
        return (!(iHmcpVideoView != null && iHmcpVideoView.isX86Game()) && i10 == 1 && onlyRtmpStream()) ? Constants.STREAM_TYPE_RTMP : super.getStreamType(i10);
    }

    public void hideKeyboard() {
        IHmcpVideoView iHmcpVideoView = this.hmcpVideoViewInterface;
        if (iHmcpVideoView != null) {
            iHmcpVideoView.hideKeyboard();
        }
    }

    @Override // com.haima.hmcp.widgets.BaseVideoView
    public boolean sendWsMessage(String str, WsMessageType wsMessageType, OnSendWsMessageListener onSendWsMessageListener) {
        return this.hmcpVideoViewInterface.sendWsMessage(str, wsMessageType, onSendWsMessageListener);
    }

    public void setHmFrameCallback(HmFrameCallback hmFrameCallback) {
    }

    @Override // com.haima.hmcp.widgets.BaseVideoView
    public void setHmStreamerIPCallback(HmStreamerIPCallback hmStreamerIPCallback) {
    }

    public void setSeiListener(ISeiListener iSeiListener) {
    }

    public void switchMobileNetworkTransport(boolean z10) {
        LogUtils.d(HmcpVideoView.class.getSimpleName(), "接口未开放");
    }

    public HmcpVideoView(Context context, AttributeSet attributeSet) {
        super(context, attributeSet);
    }

    public HmcpVideoView(Context context, AttributeSet attributeSet, int i10) {
        super(context, attributeSet, i10);
    }
}
