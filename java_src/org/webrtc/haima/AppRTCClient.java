package org.webrtc.haima;

import java.util.List;
import org.hmwebrtc.IceCandidate;
import org.hmwebrtc.PeerConnection;
import org.hmwebrtc.SessionDescription;
import org.json.JSONObject;

/* JADX INFO: loaded from: classes10.dex */
public interface AppRTCClient {

    public static class RoomConnectionParameters {
        public final String coturnServer;
        public final String roomId;
        public final String signalServer;

        public RoomConnectionParameters(String str, String str2, String str3) {
            this.signalServer = str;
            this.roomId = str2;
            this.coturnServer = str3;
        }
    }

    public interface SignalingEvents {
        void forceDisconnectRTC(String str);

        void onChannelClose();

        void onChannelConnectStatus(String str);

        void onChannelConnected();

        void onChannelError(String str);

        void onChannelSendMessage(String str, String str2, JSONObject jSONObject);

        void onConnectedToRoom(List<PeerConnection.IceServer> list);

        void onRemoteDescription(SessionDescription sessionDescription);

        void onRemoteIceCandidate(IceCandidate iceCandidate);

        void onRemoteIceCandidatesRemoved(IceCandidate[] iceCandidateArr);

        void onReportEvent(int i10, String str);

        void onThrowSignalExceptionMsg(String str);
    }

    void connectToRoom(RoomConnectionParameters roomConnectionParameters);

    void disconnectFromRoom();

    void sendAnswerSdp(SessionDescription sessionDescription);

    void sendJoinMsgToRoom();

    void sendLocalIceCandidate(IceCandidate iceCandidate);

    void sendLocalIceCandidateRemovals(IceCandidate[] iceCandidateArr);
}
