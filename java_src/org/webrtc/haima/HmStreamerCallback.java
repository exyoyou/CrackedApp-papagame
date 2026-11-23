package org.webrtc.haima;

import org.json.JSONObject;

/* JADX INFO: loaded from: classes10.dex */
public interface HmStreamerCallback {

    public enum MsgId {
        kUserMessage,
        AvailableBandWidth,
        kGeneralJson,
        kVideoFrameDelayFromCapToDec,
        kStreamerBwe
    }

    public static class MsgPayload {
        public byte[] bytes;
        public Object reserve;
    }

    void onAccProxyConnectStateChange(int i10);

    void onCatchExceptionMsg(String str, boolean z10);

    void onCommonMessage(MsgId msgId, long j10, MsgPayload msgPayload);

    void onConnectFailed(String str);

    void onConnected();

    void onCreateAnswer();

    void onCurrentIpAddress(JSONObject jSONObject);

    void onDisconnect(String str);

    void onFrameResolution(long j10, long j11);

    void onMessage(byte[] bArr);

    void onRemoteBinMessage(byte[] bArr);

    void onRemoteInputTransportState(int i10);

    void onRemoteTextMessage(String str);

    void onRemoteVideoEncodeAdaptation(String str, int i10, int i11, int i12);

    void onRtcError(String str);

    void onSignalConnected();

    void onSignalDisconnected();

    void onSignalReceiveMessage(String str, String str2);

    void onSignalSendMessage(String str, String str2, JSONObject jSONObject);

    void onSignalStatus(String str);

    void onSignalV2Connected();

    void onSignalV2Disconnected();

    void onSignalV2RecvOffer();

    void onSignalV2Status(String str);

    void onSwitchConnectionCallback(int i10, int i11);

    void onSwitchToRtmpStreaming();

    void onX86InputClose();

    void onX86InputOpen();

    void onX86InputPong(String str, long j10);
}
