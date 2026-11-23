package com.haima.hmcp.input.sender;

import com.haima.hmcp.listeners.IStreamModel;
import com.haima.hmcp.rtc.widgets.RtcModel;
import com.haima.hmcp.rtc.widgets.RtcPlayer;
import com.haima.hmcp.utils.LogUtils;
import com.haima.hmcp.widgets.AbsIjkVideoView;
import java.nio.charset.Charset;
import org.webrtc.haima.HmRtcAdapter;

/* JADX INFO: loaded from: classes5.dex */
public class RtcDatachannelSender extends AbsHMInputSender {
    private static final String TAG = "RtcDatachannelSender";

    RtcDatachannelSender(AbsIjkVideoView absIjkVideoView) {
        super(absIjkVideoView);
    }

    @Override // com.haima.hmcp.input.sender.IHMInputSender
    public void connect() {
        LogUtils.d(TAG, "connect");
    }

    @Override // com.haima.hmcp.input.sender.IHMInputSender
    public void disConnected() {
    }

    @Override // com.haima.hmcp.input.sender.IHMInputSender
    public boolean isConnected() {
        RtcPlayer rtcPlayer;
        HmRtcAdapter hmRtcAdapter;
        IStreamModel streamModel = this.mIjkVideoView.getStreamModel();
        return (streamModel instanceof RtcModel) && (rtcPlayer = ((RtcModel) streamModel).getRtcPlayer()) != null && (hmRtcAdapter = rtcPlayer.getmHmRtcAdapter()) != null && hmRtcAdapter.isConnected();
    }

    @Override // com.haima.hmcp.input.sender.IHMInputSender
    public boolean sendMessage(String str, boolean z10) {
        LogUtils.d(TAG, "sendMessage msg:" + str + ",usDiscardable:" + z10);
        return this.mIjkVideoView.sendARMDCEventByDataType(str.getBytes(Charset.forName("UTF-8")), z10);
    }
}
