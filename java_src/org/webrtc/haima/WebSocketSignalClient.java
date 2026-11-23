package org.webrtc.haima;

import android.content.Context;
import java.util.List;
import org.hmwebrtc.IceCandidate;
import org.hmwebrtc.PeerConnection;
import org.hmwebrtc.SessionDescription;
import org.json.JSONObject;

/* JADX INFO: loaded from: classes10.dex */
public interface WebSocketSignalClient {

    public interface IWebSocketConnectionEvent {
        void onWebSocketConnectStatus(String str);

        void onWebSocketConnected();

        void onWebSocketDisconnected(int i10);

        void onWebSocketRecvMessage(String str);
    }

    public interface IWebSocketSignalClientCallback {
        WebSocketSignalClient onCreateWebSocketClient(Context context, String str, IWebSocketConnectionEvent iWebSocketConnectionEvent);

        void onReleaseWebSocketClient(WebSocketSignalClient webSocketSignalClient);
    }

    public interface IWebSocketSignalClientEvent {
        void onWebSocketConnectStatus(String str);

        void onWebSocketConnected(List<PeerConnection.IceServer> list);

        void onWebSocketDisconnected(int i10);

        void onWebSocketForceDisconnectRTC(String str);

        void onWebSocketHandShakeSucceed();

        void onWebSocketRecvExtMessage(String str);

        void onWebSocketRemoteDescription(SessionDescription sessionDescription);

        void onWebSocketRemoteIceCandidate(IceCandidate iceCandidate, String str);

        void onWebSocketSendMessage(String str, JSONObject jSONObject);
    }

    void connect();

    void disconnect();

    void sendMessage(String str);
}
