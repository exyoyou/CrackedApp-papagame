package org.webrtc.haima;

import android.os.Handler;
import android.os.HandlerThread;
import android.text.TextUtils;
import com.join.mgps.activity.posting.PostingActivity_;
import io.socket.client.IO;
import io.socket.client.Socket;
import io.socket.emitter.Emitter;
import io.socket.engineio.client.transports.WebSocket;
import java.net.Inet4Address;
import java.net.Inet6Address;
import java.net.InetAddress;
import java.net.UnknownHostException;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.List;
import java.util.concurrent.CountDownLatch;
import java.util.concurrent.TimeUnit;
import okhttp3.Dns;
import okhttp3.OkHttpClient;
import org.hmwebrtc.IceCandidate;
import org.hmwebrtc.Logging;
import org.hmwebrtc.PeerConnection;
import org.hmwebrtc.RtcCountlyConstants;
import org.hmwebrtc.SessionDescription;
import org.json.JSONArray;
import org.json.JSONException;
import org.json.JSONObject;
import org.webrtc.haima.countly.RtcCountlyUtil;
import org.webrtc.haima.util.ExceptionUtils;

/* JADX INFO: loaded from: classes10.dex */
public class SocketIORTCClient implements AppRTCClient {
    private static final String TAG = "SocketIORTCClient";
    private AppRTCClient.RoomConnectionParameters connectionParameters;
    private AppRTCClient.SignalingEvents events;
    private final Handler handler;
    private HmSocketIOOptions hmOpt;
    private OkHttpClient httpClient;
    private boolean mReleasing;
    private Socket mSocket;
    private IO.Options opt;
    private List<PeerConnection.IceServer> iceServers = new ArrayList();
    public Emitter.Listener onSocketIOMessage = new Emitter.Listener() { // from class: org.webrtc.haima.SocketIORTCClient.18
        /* JADX WARN: Code duplicated, block: B:18:0x005a  */
        /* JADX WARN: Failed to restore switch over string. Please report as a decompilation issue */
        @Override // io.socket.emitter.Emitter.Listener
        public void call(Object... objArr) {
            byte b10;
            try {
                JSONObject jSONObject = (JSONObject) objArr[0];
                Logging.i(SocketIORTCClient.TAG, "socket io received   " + jSONObject.toString());
                String strOptString = jSONObject.optString("type");
                switch (strOptString.hashCode()) {
                    case -313011143:
                        if (strOptString.equals("remove-candidates")) {
                            b10 = 1;
                        } else {
                            b10 = -1;
                        }
                        break;
                    case 3267882:
                        if (strOptString.equals("join")) {
                            b10 = 3;
                        } else {
                            b10 = -1;
                        }
                        break;
                    case 105650780:
                        if (strOptString.equals("offer")) {
                            b10 = 2;
                        } else {
                            b10 = -1;
                        }
                        break;
                    case 508663171:
                        if (strOptString.equals("candidate")) {
                            b10 = 0;
                        } else {
                            b10 = -1;
                        }
                        break;
                    default:
                        b10 = -1;
                        break;
                }
                if (b10 == 0) {
                    JSONObject jSONObject2 = jSONObject.getJSONObject("payload");
                    if (SocketIORTCClient.this.roomState.ordinal() < ConnectionState.OFFER_RECVED.ordinal()) {
                        Logging.i(SocketIORTCClient.TAG, "recved candidate before offered, drop it.");
                        SocketIORTCClient.this.events.onThrowSignalExceptionMsg("onRemoteRestart-->recved Candidate before OFFER msg");
                        return;
                    }
                    SocketIORTCClient.this.stateChanged(ConnectionState.CANDIDATE_RECVED);
                    try {
                        SocketIORTCClient.this.events.onRemoteIceCandidate(SocketIORTCClient.this.toJavaCandidate(jSONObject2));
                        return;
                    } catch (Exception e10) {
                        SocketIORTCClient.this.events.onThrowSignalExceptionMsg("onRemoteIceCandidate-->" + ExceptionUtils.toString(e10));
                        return;
                    }
                }
                if (b10 == 1) {
                    JSONArray jSONArray = jSONObject.getJSONArray("candidates");
                    IceCandidate[] iceCandidateArr = new IceCandidate[jSONArray.length()];
                    for (int i10 = 0; i10 < jSONArray.length(); i10++) {
                        iceCandidateArr[i10] = SocketIORTCClient.this.toJavaCandidate(jSONArray.getJSONObject(i10));
                    }
                    try {
                        SocketIORTCClient.this.events.onRemoteIceCandidatesRemoved(iceCandidateArr);
                        return;
                    } catch (Exception e11) {
                        SocketIORTCClient.this.events.onThrowSignalExceptionMsg("onRemoteIceCandidatesRemoved-->" + ExceptionUtils.toString(e11));
                        return;
                    }
                }
                if (b10 != 2) {
                    if (b10 != 3) {
                        SocketIORTCClient.this.events.onThrowSignalExceptionMsg("socketio message JSON parsing error: " + strOptString);
                        return;
                    }
                    int iOrdinal = SocketIORTCClient.this.roomState.ordinal();
                    ConnectionState connectionState = ConnectionState.JOINED;
                    if (iOrdinal >= connectionState.ordinal()) {
                        SocketIORTCClient.this.events.onThrowSignalExceptionMsg("onRecvRemoteJoin-->recved duplicate join msg, just ignore it.");
                        return;
                    }
                    SocketIORTCClient.this.events.onThrowSignalExceptionMsg("onRecvRemoteJoin-->recved remote joined msg.");
                    SocketIORTCClient.this.stateChanged(connectionState);
                    SocketIORTCClient.this.collectSignalParameters();
                    return;
                }
                SessionDescription sessionDescription = new SessionDescription(SessionDescription.Type.fromCanonicalForm(strOptString), jSONObject.getJSONObject("payload").getString("sdp"));
                int iOrdinal2 = SocketIORTCClient.this.roomState.ordinal();
                ConnectionState connectionState2 = ConnectionState.OFFER_RECVED;
                if (iOrdinal2 >= connectionState2.ordinal()) {
                    Logging.i(SocketIORTCClient.TAG, "recved duplicate OFFER msg, rtc in ROM is crash? what should we do?");
                    SocketIORTCClient.this.events.onReportEvent(RtcCountlyConstants.RTC_RECV_DUPLICATE_OFFER, "");
                    SocketIORTCClient.this.events.forceDisconnectRTC("recved duplicate OFFER msg");
                    return;
                }
                SocketIORTCClient.this.stateChanged(connectionState2);
                try {
                    SocketIORTCClient.this.events.onRemoteDescription(sessionDescription);
                    return;
                } catch (Exception e12) {
                    SocketIORTCClient.this.events.onThrowSignalExceptionMsg("onRemoteDescription-->" + ExceptionUtils.toString(e12));
                    return;
                }
            } catch (JSONException e13) {
                SocketIORTCClient.this.reportError("socketio message JSON parsing error: " + e13.toString());
            }
            SocketIORTCClient.this.reportError("socketio message JSON parsing error: " + e13.toString());
        }
    };
    private ConnectionState roomState = ConnectionState.INIT;

    private enum ConnectionState {
        INIT,
        CONNECTING,
        CONNECTED,
        JOINED,
        OFFER_RECVED,
        CANDIDATE_RECVED
    }

    public static class HmSocketIOOptions extends IO.Options {
        public boolean dnsIPV4Priority;
    }

    public SocketIORTCClient(AppRTCClient.SignalingEvents signalingEvents, HmSocketIOOptions hmSocketIOOptions) {
        this.events = signalingEvents;
        HandlerThread handlerThread = new HandlerThread(TAG);
        handlerThread.start();
        this.handler = new Handler(handlerThread.getLooper());
        this.hmOpt = hmSocketIOOptions;
        this.mReleasing = false;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void collectSignalParameters() {
        PeerConnection.IceServer iceServerCreateIceServer;
        String[] strArrSplit = this.connectionParameters.coturnServer.split(",");
        int length = strArrSplit.length;
        for (int i10 = 0; i10 < length; i10++) {
            String strReplaceFirst = strArrSplit[i10];
            if (!TextUtils.isEmpty(strReplaceFirst.trim())) {
                if (strReplaceFirst.startsWith("stun:")) {
                    strReplaceFirst = strReplaceFirst.replaceFirst("stun", "turn");
                }
                if (strReplaceFirst.contains("@") && strReplaceFirst.startsWith("turn:") && strReplaceFirst.contains("transport=tcp") && (iceServerCreateIceServer = createIceServer(strReplaceFirst.trim())) != null) {
                    this.iceServers.add(iceServerCreateIceServer);
                    Logging.i(TAG, "add conturnServerUrl = " + strReplaceFirst);
                }
            }
        }
        signalingParametersReady(this.iceServers);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void connectToRoomInternal() {
        Logging.i(TAG, "Connect to signal server: " + this.connectionParameters.signalServer + ", coturn server: " + this.connectionParameters.coturnServer);
        try {
            OkHttpClient okHttpClientBuild = new OkHttpClient.Builder().dns(new Dns() { // from class: org.webrtc.haima.SocketIORTCClient.3
                @Override // okhttp3.Dns
                public List<InetAddress> lookup(String str) throws UnknownHostException {
                    if (str == null) {
                        throw new UnknownHostException("hostname == null");
                    }
                    Logging.i(SocketIORTCClient.TAG, "signalserver prepare resolve host:" + str + " ipv4 priority:" + SocketIORTCClient.this.hmOpt.dnsIPV4Priority);
                    long jCurrentTimeMillis = System.currentTimeMillis();
                    InetAddress[] allByName = InetAddress.getAllByName(str);
                    ArrayList arrayList = new ArrayList();
                    if (allByName.length == 0) {
                        RtcCountlyUtil.recordEvent(RtcCountlyConstants.RTC_SIGNALV1_DNSRESOLVED, arrayList.toString() + " used:" + (System.currentTimeMillis() - jCurrentTimeMillis));
                        return arrayList;
                    }
                    if (HmRtcGlobalConfig.rtcEnableSignalv1DnsResolveOptimize) {
                        ArrayList arrayList2 = new ArrayList();
                        ArrayList arrayList3 = new ArrayList();
                        for (InetAddress inetAddress : allByName) {
                            if (inetAddress instanceof Inet4Address) {
                                arrayList2.add((Inet4Address) inetAddress);
                            } else if (inetAddress instanceof Inet6Address) {
                                arrayList3.add((Inet6Address) inetAddress);
                            }
                        }
                        if (SocketIORTCClient.this.hmOpt.dnsIPV4Priority) {
                            arrayList.addAll(arrayList2);
                            arrayList.addAll(arrayList3);
                        } else {
                            arrayList.addAll(arrayList3);
                            arrayList.addAll(arrayList2);
                        }
                    } else {
                        arrayList = new ArrayList(Arrays.asList(allByName));
                    }
                    Logging.i(SocketIORTCClient.TAG, "signalserver resolved address count:" + arrayList.size() + " detail:" + arrayList);
                    StringBuilder sb2 = new StringBuilder();
                    sb2.append(arrayList.toString());
                    sb2.append(" used:");
                    sb2.append(System.currentTimeMillis() - jCurrentTimeMillis);
                    RtcCountlyUtil.recordEvent(RtcCountlyConstants.RTC_SIGNALV1_DNSRESOLVED, sb2.toString());
                    return arrayList;
                }
            }).build();
            this.httpClient = okHttpClientBuild;
            IO.setDefaultOkHttpWebSocketFactory(okHttpClientBuild);
            IO.Options options = new IO.Options();
            options.transports = new String[]{WebSocket.NAME};
            options.forceNew = true;
            HmSocketIOOptions hmSocketIOOptions = this.hmOpt;
            options.timeout = hmSocketIOOptions.timeout;
            options.reconnectionDelayMax = hmSocketIOOptions.reconnectionDelayMax;
            options.reconnectionAttempts = hmSocketIOOptions.reconnectionAttempts;
            Socket socket = IO.socket(this.connectionParameters.signalServer, options);
            this.mSocket = socket;
            socket.on("onMessage", this.onSocketIOMessage);
            this.mSocket.on("connect", new Emitter.Listener() { // from class: org.webrtc.haima.SocketIORTCClient.4
                @Override // io.socket.emitter.Emitter.Listener
                public void call(Object... objArr) {
                    int iOrdinal = SocketIORTCClient.this.roomState.ordinal();
                    ConnectionState connectionState = ConnectionState.CONNECTED;
                    if (iOrdinal < connectionState.ordinal()) {
                        SocketIORTCClient.this.stateChanged(connectionState);
                        SocketIORTCClient.this.events.onChannelConnected();
                        return;
                    }
                    Logging.i(SocketIORTCClient.TAG, "SocketIO connected again, ignore it.");
                    SocketIORTCClient.this.events.onThrowSignalExceptionMsg("Signal connected again, current state is: " + SocketIORTCClient.this.roomState);
                }
            });
            this.mSocket.on(Socket.EVENT_DISCONNECT, new Emitter.Listener() { // from class: org.webrtc.haima.SocketIORTCClient.5
                @Override // io.socket.emitter.Emitter.Listener
                public void call(Object... objArr) {
                    SocketIORTCClient.this.events.onChannelClose();
                }
            });
            this.mSocket.on("error", new Emitter.Listener() { // from class: org.webrtc.haima.SocketIORTCClient.6
                @Override // io.socket.emitter.Emitter.Listener
                public void call(Object... objArr) {
                    StringBuffer stringBuffer = new StringBuffer();
                    for (Object obj : objArr) {
                        stringBuffer.append(obj.toString());
                        stringBuffer.append("; ");
                    }
                    SocketIORTCClient.this.events.onChannelConnectStatus("Signal error-->" + stringBuffer.toString());
                }
            });
            this.mSocket.on("connect_error", new Emitter.Listener() { // from class: org.webrtc.haima.SocketIORTCClient.7
                @Override // io.socket.emitter.Emitter.Listener
                public void call(Object... objArr) {
                    StringBuffer stringBuffer = new StringBuffer();
                    for (Object obj : objArr) {
                        stringBuffer.append(obj.toString());
                        stringBuffer.append("; ");
                    }
                    SocketIORTCClient.this.events.onChannelConnectStatus("Signal connect error-->" + stringBuffer.toString());
                }
            });
            this.mSocket.on("reconnect", new Emitter.Listener() { // from class: org.webrtc.haima.SocketIORTCClient.8
                @Override // io.socket.emitter.Emitter.Listener
                public void call(Object... objArr) {
                    Logging.i(SocketIORTCClient.TAG, "Signal-->reconnect");
                    SocketIORTCClient.this.events.onChannelConnectStatus("Signal reconnect");
                }
            });
            this.mSocket.on("reconnecting", new Emitter.Listener() { // from class: org.webrtc.haima.SocketIORTCClient.9
                @Override // io.socket.emitter.Emitter.Listener
                public void call(Object... objArr) {
                    Logging.i(SocketIORTCClient.TAG, "Signal-->reconnecting");
                    SocketIORTCClient.this.events.onChannelConnectStatus("Signal reconnecting");
                }
            });
            this.mSocket.on("reconnect_failed", new Emitter.Listener() { // from class: org.webrtc.haima.SocketIORTCClient.10
                @Override // io.socket.emitter.Emitter.Listener
                public void call(Object... objArr) {
                    Logging.i(SocketIORTCClient.TAG, "Signal-->reconnect failed");
                    StringBuffer stringBuffer = new StringBuffer();
                    for (Object obj : objArr) {
                        stringBuffer.append(obj.toString());
                        stringBuffer.append("; ");
                    }
                    SocketIORTCClient.this.events.onChannelConnectStatus("Signal reconnect failed-->" + stringBuffer.toString());
                }
            });
            this.mSocket.on("reconnect_error", new Emitter.Listener() { // from class: org.webrtc.haima.SocketIORTCClient.11
                @Override // io.socket.emitter.Emitter.Listener
                public void call(Object... objArr) {
                    Logging.i(SocketIORTCClient.TAG, "Signal-->reconnect error");
                    StringBuffer stringBuffer = new StringBuffer();
                    for (Object obj : objArr) {
                        stringBuffer.append(obj.toString());
                        stringBuffer.append("; ");
                    }
                    SocketIORTCClient.this.events.onChannelConnectStatus("Signal reconnect error-->" + stringBuffer.toString());
                }
            });
            this.mSocket.on(Socket.EVENT_CONNECTING, new Emitter.Listener() { // from class: org.webrtc.haima.SocketIORTCClient.12
                @Override // io.socket.emitter.Emitter.Listener
                public void call(Object... objArr) {
                    Logging.i(SocketIORTCClient.TAG, "Signal-->connecting");
                    SocketIORTCClient.this.events.onChannelConnectStatus("Signal connecting");
                }
            });
            this.mSocket.on("connect_timeout", new Emitter.Listener() { // from class: org.webrtc.haima.SocketIORTCClient.13
                @Override // io.socket.emitter.Emitter.Listener
                public void call(Object... objArr) {
                    Logging.i(SocketIORTCClient.TAG, "Signal-->connect time out");
                    SocketIORTCClient.this.events.onChannelConnectStatus("Signal connect time out");
                    SocketIORTCClient.this.hmOpt.dnsIPV4Priority = !SocketIORTCClient.this.hmOpt.dnsIPV4Priority;
                }
            });
            stateChanged(ConnectionState.CONNECTING);
            this.mSocket.connect();
        } catch (Exception e10) {
            e10.printStackTrace();
            RtcCountlyUtil.recordEvent(RtcCountlyConstants.RTC_SOCKET_IO_CREATE_EXCEPTION, this.connectionParameters.signalServer + "," + e10.toString());
        }
    }

    private PeerConnection.IceServer createIceServer(String str) {
        Logging.i(TAG, "Add conturnServerUrl = " + str);
        if (PeerConnection.IceTransportsType.ALL == parseIceTransportType(str)) {
            return new PeerConnection.IceServer(str.trim());
        }
        String[] strArrSplit = str.split("@");
        if (strArrSplit.length <= 1) {
            Logging.i(TAG, "Fatal error, coturn server url is error: " + str);
            return null;
        }
        String[] strArrSplit2 = strArrSplit[1].trim().split(":");
        if (strArrSplit2.length > 1) {
            return new PeerConnection.IceServer(strArrSplit[0], strArrSplit2[0], strArrSplit2[1]);
        }
        Logging.i(TAG, "Fatal error, coturn server auth is error: " + str);
        return null;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void disconnectFromRoomInternal() {
        Socket socket = this.mSocket;
        if (socket != null) {
            socket.disconnect();
            this.mSocket.close();
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public boolean isReleasing(String str) {
        if (this.mReleasing) {
            AppRTCClient.SignalingEvents signalingEvents = this.events;
            if (signalingEvents != null) {
                signalingEvents.onThrowSignalExceptionMsg(str + ": SocketIO is releasing.");
            }
            Logging.e(TAG, str + ": SocketIO is releasing.");
        }
        return this.mReleasing;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static void jsonPut(JSONObject jSONObject, String str, Object obj) {
        try {
            jSONObject.put(str, obj);
        } catch (JSONException e10) {
            throw new RuntimeException(e10);
        }
    }

    private PeerConnection.IceTransportsType parseIceTransportType(String str) {
        return (str.contains("@") && str.contains("turn:")) ? PeerConnection.IceTransportsType.RELAY : PeerConnection.IceTransportsType.ALL;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void reportError(final String str) {
        Logging.i(TAG, str);
        this.handler.post(new Runnable() { // from class: org.webrtc.haima.SocketIORTCClient.19
            @Override // java.lang.Runnable
            public void run() {
                SocketIORTCClient.this.events.onChannelError(str);
            }
        });
    }

    private void signalingParametersReady(List<PeerConnection.IceServer> list) {
        try {
            this.events.onConnectedToRoom(list);
        } catch (Exception e10) {
            this.events.onThrowSignalExceptionMsg("onConnectedToRoom-->" + ExceptionUtils.toString(e10));
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void stateChanged(ConnectionState connectionState) {
        Logging.i(TAG, "room connections state from: " + this.roomState + " to " + connectionState);
        this.roomState = connectionState;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public JSONObject toJsonCandidate(IceCandidate iceCandidate) {
        JSONObject jSONObject = new JSONObject();
        jsonPut(jSONObject, PostingActivity_.LABEL_EXTRA, Integer.valueOf(iceCandidate.sdpMLineIndex));
        jsonPut(jSONObject, "id", iceCandidate.sdpMid);
        jsonPut(jSONObject, "candidate", iceCandidate.sdp);
        return jSONObject;
    }

    @Override // org.webrtc.haima.AppRTCClient
    public void connectToRoom(AppRTCClient.RoomConnectionParameters roomConnectionParameters) {
        this.connectionParameters = roomConnectionParameters;
        this.handler.post(new Runnable() { // from class: org.webrtc.haima.SocketIORTCClient.1
            @Override // java.lang.Runnable
            public void run() {
                if (SocketIORTCClient.this.isReleasing("connectToRoom")) {
                    return;
                }
                SocketIORTCClient.this.connectToRoomInternal();
            }
        });
    }

    @Override // org.webrtc.haima.AppRTCClient
    public void disconnectFromRoom() {
        final CountDownLatch countDownLatch = new CountDownLatch(1);
        this.handler.post(new Runnable() { // from class: org.webrtc.haima.SocketIORTCClient.2
            @Override // java.lang.Runnable
            public void run() {
                SocketIORTCClient.this.disconnectFromRoomInternal();
                SocketIORTCClient.this.handler.getLooper().quit();
                countDownLatch.countDown();
            }
        });
        try {
            countDownLatch.await(2L, TimeUnit.SECONDS);
        } catch (Exception e10) {
            this.events.onThrowSignalExceptionMsg("Disconnect from Signal exception: " + e10.toString());
        }
    }

    public void preRelease() {
        if (this.mSocket != null) {
            Logging.i(TAG, "Remove all callbacks in SocketIO.");
            this.mSocket.off();
        }
        this.mReleasing = true;
    }

    @Override // org.webrtc.haima.AppRTCClient
    public void sendAnswerSdp(final SessionDescription sessionDescription) {
        this.handler.post(new Runnable() { // from class: org.webrtc.haima.SocketIORTCClient.15
            @Override // java.lang.Runnable
            public void run() {
                if (SocketIORTCClient.this.isReleasing("sendAnswerSdp")) {
                    return;
                }
                JSONObject jSONObject = new JSONObject();
                SocketIORTCClient.jsonPut(jSONObject, "sdp", sessionDescription.description);
                SocketIORTCClient.jsonPut(jSONObject, "type", "answer");
                SocketIORTCClient socketIORTCClient = SocketIORTCClient.this;
                socketIORTCClient.sendMessage(socketIORTCClient.connectionParameters.roomId, sessionDescription.type.canonicalForm(), jSONObject);
            }
        });
    }

    @Override // org.webrtc.haima.AppRTCClient
    public void sendJoinMsgToRoom() {
        this.handler.post(new Runnable() { // from class: org.webrtc.haima.SocketIORTCClient.14
            @Override // java.lang.Runnable
            public void run() {
                if (SocketIORTCClient.this.isReleasing("sendJoinMsgToRoom")) {
                    return;
                }
                JSONObject jSONObject = new JSONObject();
                SocketIORTCClient.jsonPut(jSONObject, "type", "join");
                SocketIORTCClient socketIORTCClient = SocketIORTCClient.this;
                socketIORTCClient.sendMessage(socketIORTCClient.connectionParameters.roomId, "join", jSONObject);
                Logging.i(SocketIORTCClient.TAG, "send join msg to signal server roomId = " + SocketIORTCClient.this.connectionParameters.roomId);
            }
        });
    }

    @Override // org.webrtc.haima.AppRTCClient
    public void sendLocalIceCandidate(final IceCandidate iceCandidate) {
        this.handler.post(new Runnable() { // from class: org.webrtc.haima.SocketIORTCClient.16
            @Override // java.lang.Runnable
            public void run() {
                if (SocketIORTCClient.this.isReleasing("sendLocalIceCandidate")) {
                    return;
                }
                JSONObject jSONObject = new JSONObject();
                SocketIORTCClient.jsonPut(jSONObject, "type", "candidate");
                SocketIORTCClient.jsonPut(jSONObject, PostingActivity_.LABEL_EXTRA, Integer.valueOf(iceCandidate.sdpMLineIndex));
                SocketIORTCClient.jsonPut(jSONObject, "id", iceCandidate.sdpMid);
                SocketIORTCClient.jsonPut(jSONObject, "candidate", iceCandidate.sdp);
                if (SocketIORTCClient.this.roomState.ordinal() < ConnectionState.CONNECTED.ordinal() || SocketIORTCClient.this.roomState.ordinal() > ConnectionState.CANDIDATE_RECVED.ordinal()) {
                    SocketIORTCClient.this.reportError("Sending ICE candidate in non connected state.");
                } else {
                    SocketIORTCClient socketIORTCClient = SocketIORTCClient.this;
                    socketIORTCClient.sendMessage(socketIORTCClient.connectionParameters.roomId, "candidate", jSONObject);
                }
            }
        });
    }

    @Override // org.webrtc.haima.AppRTCClient
    public void sendLocalIceCandidateRemovals(final IceCandidate[] iceCandidateArr) {
        this.handler.post(new Runnable() { // from class: org.webrtc.haima.SocketIORTCClient.17
            @Override // java.lang.Runnable
            public void run() {
                if (SocketIORTCClient.this.isReleasing("sendLocalIceCandidateRemovals")) {
                    return;
                }
                JSONObject jSONObject = new JSONObject();
                SocketIORTCClient.jsonPut(jSONObject, "type", "remove-candidates");
                JSONArray jSONArray = new JSONArray();
                for (IceCandidate iceCandidate : iceCandidateArr) {
                    jSONArray.put(SocketIORTCClient.this.toJsonCandidate(iceCandidate));
                }
                SocketIORTCClient.jsonPut(jSONObject, "candidates", jSONArray);
                if (SocketIORTCClient.this.roomState != ConnectionState.CONNECTED) {
                    SocketIORTCClient.this.reportError("Sending ICE candidate removals in non connected state.");
                } else {
                    SocketIORTCClient socketIORTCClient = SocketIORTCClient.this;
                    socketIORTCClient.sendMessage(socketIORTCClient.connectionParameters.roomId, "remove-candidates", jSONObject);
                }
            }
        });
    }

    public void sendMessage(String str, String str2, JSONObject jSONObject) {
        try {
            JSONObject jSONObject2 = new JSONObject();
            jSONObject2.put("to", str);
            jSONObject2.put("type", str2);
            jSONObject2.put("payload", jSONObject);
            this.mSocket.emit(str2, jSONObject2);
            try {
                this.events.onChannelSendMessage(str, str2, jSONObject);
                Logging.i(TAG, "socket send " + str2 + " to " + str + " payload:" + jSONObject.toString());
            } catch (Exception e10) {
                this.events.onThrowSignalExceptionMsg("onChannelSendMessage-->" + ExceptionUtils.toString(e10));
            }
        } catch (JSONException e11) {
            throw new RuntimeException(e11);
        }
    }

    IceCandidate toJavaCandidate(JSONObject jSONObject) throws JSONException {
        return new IceCandidate(jSONObject.getString("id"), jSONObject.getInt(PostingActivity_.LABEL_EXTRA), jSONObject.getString("candidate"));
    }
}
