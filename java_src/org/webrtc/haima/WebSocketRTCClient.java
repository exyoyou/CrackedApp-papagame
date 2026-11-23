package org.webrtc.haima;

import android.content.Context;
import android.os.Handler;
import android.os.HandlerThread;
import android.os.Looper;
import android.text.TextUtils;
import androidx.annotation.Nullable;
import com.join.mgps.activity.posting.PostingActivity_;
import com.sigmob.sdk.base.mta.PointCategory;
import com.xinzhu.overmind.client.frameworks.accounts.GrantCredentialsPermissionActivity;
import io.socket.engineio.client.Socket;
import java.util.ArrayList;
import java.util.List;
import org.hmwebrtc.IceCandidate;
import org.hmwebrtc.Logging;
import org.hmwebrtc.PeerConnection;
import org.hmwebrtc.SessionDescription;
import org.json.JSONException;
import org.json.JSONObject;

/* JADX INFO: loaded from: classes10.dex */
public class WebSocketRTCClient implements WebSocketSignalClient.IWebSocketConnectionEvent {
    private static final String TAG = "WebSocketRTCClient";
    private WebSocketSignalClient.IWebSocketSignalClientCallback mCallback;
    private String mCloudId;
    private String mCoturnServer;
    private WebSocketSignalClient.IWebSocketSignalClientEvent mEvents;
    private final HmRtcEnvironment mRtcEnv;
    private String mSdkVersion;
    private WebSocketSignalClient mWSClient;

    @Nullable
    private Handler mWSClientThreadHandler;
    private final String TYPE_REQUEST = PointCategory.REQUEST;
    private final String TYPE_RESPONSE = GrantCredentialsPermissionActivity.f89267i;
    private final String METHOD_HANDSHAKE = Socket.EVENT_HANDSHAKE;
    private final String METHOD_SETOFFER = "setoffer";
    private final String METHOD_RECONNECT = "reconnect";
    private final String METHOD_SETANSWER = "setanswer";
    private final String METHOD_HEARTBEAT = Socket.EVENT_HEARTBEAT;
    private final String METHOD_CANDIDATE = "candidate";
    private final String METHOD_EXTENSION = "extension";
    private Object mWSClientThreadHandlerLock = new Object();
    private List<PeerConnection.IceServer> iceServers = new ArrayList();
    private String mStreamerVersion = "";
    private String mOfferSdp = "";
    private boolean mEnableHandShakeEvent = false;

    public WebSocketRTCClient(final Context context, String str, String str2, final String str3, String str4, WebSocketSignalClient.IWebSocketSignalClientEvent iWebSocketSignalClientEvent, WebSocketSignalClient.IWebSocketSignalClientCallback iWebSocketSignalClientCallback, HmRtcEnvironment hmRtcEnvironment) {
        this.mCloudId = str2;
        this.mSdkVersion = str4;
        this.mCoturnServer = str;
        this.mEvents = iWebSocketSignalClientEvent;
        this.mRtcEnv = hmRtcEnvironment;
        this.mCallback = iWebSocketSignalClientCallback;
        if (iWebSocketSignalClientCallback != null) {
            HandlerThread handlerThread = new HandlerThread(TAG);
            handlerThread.start();
            synchronized (this.mWSClientThreadHandlerLock) {
                Handler handler = new Handler(handlerThread.getLooper());
                this.mWSClientThreadHandler = handler;
                handler.post(new Runnable() { // from class: org.webrtc.haima.h1
                    @Override // java.lang.Runnable
                    public final void run() {
                        this.f96101b.lambda$new$0(context, str3);
                    }
                });
            }
        }
    }

    private void addDeviceInfo(JSONObject jSONObject) {
        try {
            if (!TextUtils.isEmpty(this.mSdkVersion)) {
                jsonPut(jSONObject, "lib_rtc_ver", this.mSdkVersion);
            }
            HmRtcEnvironment hmRtcEnvironment = this.mRtcEnv;
            if (hmRtcEnvironment == null) {
                return;
            }
            String stringValue = hmRtcEnvironment.getStringValue(HmRtcEnvironment.kDeviceOs, null);
            if (TextUtils.isEmpty(stringValue)) {
                jsonPut(jSONObject, HmRtcEnvironment.kDeviceOs, "andr");
            } else {
                jsonPut(jSONObject, HmRtcEnvironment.kDeviceOs, "andr" + stringValue);
            }
            String stringValue2 = this.mRtcEnv.getStringValue(HmRtcEnvironment.kDeviceModel, null);
            if (!TextUtils.isEmpty(stringValue2)) {
                jsonPut(jSONObject, HmRtcEnvironment.kDeviceModel, stringValue2);
            }
            String stringValue3 = this.mRtcEnv.getStringValue(HmRtcEnvironment.kDeviceBrand, null);
            if (!TextUtils.isEmpty(stringValue3)) {
                jsonPut(jSONObject, HmRtcEnvironment.kDeviceBrand, stringValue3);
            }
            String stringValue4 = this.mRtcEnv.getStringValue(HmRtcEnvironment.kDeviceResolution, null);
            if (!TextUtils.isEmpty(stringValue4)) {
                jsonPut(jSONObject, HmRtcEnvironment.kDeviceResolution, stringValue4);
            }
            String stringValue5 = this.mRtcEnv.getStringValue(HmRtcEnvironment.kUserId, null);
            if (!TextUtils.isEmpty(stringValue5)) {
                jsonPut(jSONObject, "uid", stringValue5);
            }
            String stringValue6 = this.mRtcEnv.getStringValue(HmRtcEnvironment.kDeviceId, null);
            if (TextUtils.isEmpty(stringValue6)) {
                return;
            }
            jsonPut(jSONObject, "did", stringValue6);
        } catch (Exception e10) {
            Logging.e(TAG, "addDeviceInfo failed! " + e10.toString());
        }
    }

    private PeerConnection.IceServer createIceServer(String str) {
        String[] strArrSplit = str.split("@");
        if (strArrSplit.length <= 1) {
            Logging.e(TAG, "Fatal error, coturn server url is error: " + str);
            return null;
        }
        String[] strArrSplit2 = strArrSplit[1].trim().split(":");
        if (strArrSplit2.length > 1) {
            return new PeerConnection.IceServer(strArrSplit[0], strArrSplit2[0], strArrSplit2[1]);
        }
        Logging.e(TAG, "Fatal error, coturn server auth is error: " + str);
        return null;
    }

    private static void jsonPut(JSONObject jSONObject, String str, Object obj) {
        try {
            jSONObject.put(str, obj);
        } catch (JSONException e10) {
            throw new RuntimeException(e10);
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void lambda$connect$1() {
        WebSocketSignalClient webSocketSignalClient = this.mWSClient;
        if (webSocketSignalClient == null) {
            return;
        }
        webSocketSignalClient.connect();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void lambda$disconnect$2() {
        WebSocketSignalClient webSocketSignalClient = this.mWSClient;
        if (webSocketSignalClient == null) {
            return;
        }
        webSocketSignalClient.disconnect();
        WebSocketSignalClient webSocketSignalClient2 = this.mWSClient;
        if (webSocketSignalClient2 != null) {
            this.mCallback.onReleaseWebSocketClient(webSocketSignalClient2);
        }
        this.mWSClient = null;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static /* synthetic */ void lambda$disconnect$3(Looper looper) {
        Logging.d(TAG, "Quitting mWSClientThread thread.");
        looper.quit();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void lambda$new$0(Context context, String str) {
        this.mWSClient = this.mCallback.onCreateWebSocketClient(context, str, this);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void lambda$sendAnswer$4(SessionDescription sessionDescription) {
        if (this.mWSClient == null) {
            return;
        }
        JSONObject jSONObject = new JSONObject();
        JSONObject jSONObject2 = new JSONObject();
        jsonPut(jSONObject2, "type", PointCategory.REQUEST);
        jsonPut(jSONObject2, com.alipay.sdk.packet.d.f7195s, "setanswer");
        jsonPut(jSONObject2, "cid", this.mCloudId);
        jsonPut(jSONObject, "head", jSONObject2);
        JSONObject jSONObject3 = new JSONObject();
        JSONObject jSONObject4 = new JSONObject();
        jsonPut(jSONObject4, "type", "answer");
        jsonPut(jSONObject4, "sdp", sessionDescription.description);
        jsonPut(jSONObject3, "media_description", jSONObject4);
        jsonPut(jSONObject, "body", jSONObject3);
        Logging.i(TAG, "rtcmessage sendAnswer " + jSONObject.toString());
        this.mWSClient.sendMessage(jSONObject.toString());
        WebSocketSignalClient.IWebSocketSignalClientEvent iWebSocketSignalClientEvent = this.mEvents;
        if (iWebSocketSignalClientEvent != null) {
            iWebSocketSignalClientEvent.onWebSocketSendMessage("answer", jSONObject4);
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void lambda$sendExtMessage$6(String str) {
        if (this.mWSClient == null) {
            return;
        }
        JSONObject jSONObject = new JSONObject();
        JSONObject jSONObject2 = new JSONObject();
        jsonPut(jSONObject2, "type", PointCategory.REQUEST);
        jsonPut(jSONObject2, com.alipay.sdk.packet.d.f7195s, "extension");
        jsonPut(jSONObject2, "cid", this.mCloudId);
        jsonPut(jSONObject, "head", jSONObject2);
        JSONObject jSONObject3 = new JSONObject();
        jsonPut(jSONObject3, "payload", str);
        jsonPut(jSONObject, "body", jSONObject3);
        Logging.i(TAG, "rtcmessage sendExtMessage");
        this.mWSClient.sendMessage(jSONObject.toString());
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void lambda$sendHandShake$7() {
        if (this.mWSClient == null) {
            return;
        }
        JSONObject jSONObject = new JSONObject();
        JSONObject jSONObject2 = new JSONObject();
        jsonPut(jSONObject2, "type", PointCategory.REQUEST);
        jsonPut(jSONObject2, com.alipay.sdk.packet.d.f7195s, Socket.EVENT_HANDSHAKE);
        jsonPut(jSONObject2, "cid", this.mCloudId);
        jsonPut(jSONObject, "head", jSONObject2);
        JSONObject jSONObject3 = new JSONObject();
        JSONObject jSONObject4 = new JSONObject();
        jsonPut(jSONObject4, "version", this.mSdkVersion);
        addDeviceInfo(jSONObject4);
        jsonPut(jSONObject3, "sdk_info", jSONObject4);
        jsonPut(jSONObject, "body", jSONObject3);
        Logging.i(TAG, "rtcmessage sendHandShake " + jSONObject.toString());
        this.mWSClient.sendMessage(jSONObject.toString());
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void lambda$sendHeartBeat$8() {
        if (this.mWSClient == null) {
            return;
        }
        JSONObject jSONObject = new JSONObject();
        JSONObject jSONObject2 = new JSONObject();
        jsonPut(jSONObject2, "type", PointCategory.REQUEST);
        jsonPut(jSONObject2, com.alipay.sdk.packet.d.f7195s, Socket.EVENT_HEARTBEAT);
        jsonPut(jSONObject2, "cid", this.mCloudId);
        jsonPut(jSONObject, "head", jSONObject2);
        Logging.i(TAG, "rtcmessage sendHeartBeat");
        this.mWSClient.sendMessage(jSONObject.toString());
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void lambda$sendIceCandidate$5(IceCandidate iceCandidate) {
        if (this.mWSClient == null) {
            return;
        }
        JSONObject jSONObject = new JSONObject();
        JSONObject jSONObject2 = new JSONObject();
        jsonPut(jSONObject2, "type", PointCategory.REQUEST);
        jsonPut(jSONObject2, com.alipay.sdk.packet.d.f7195s, "candidate");
        jsonPut(jSONObject2, "cid", this.mCloudId);
        jsonPut(jSONObject, "head", jSONObject2);
        JSONObject jSONObject3 = new JSONObject();
        JSONObject jSONObject4 = new JSONObject();
        jsonPut(jSONObject4, PostingActivity_.LABEL_EXTRA, Integer.valueOf(iceCandidate.sdpMLineIndex));
        jsonPut(jSONObject4, "id", iceCandidate.sdpMid);
        jsonPut(jSONObject4, "candidate", iceCandidate.sdp);
        jsonPut(jSONObject3, "candidate_info", jSONObject4);
        jsonPut(jSONObject, "body", jSONObject3);
        Logging.i(TAG, "rtcmessage sendIceCandidate " + jSONObject.toString());
        this.mWSClient.sendMessage(jSONObject.toString());
        WebSocketSignalClient.IWebSocketSignalClientEvent iWebSocketSignalClientEvent = this.mEvents;
        if (iWebSocketSignalClientEvent != null) {
            iWebSocketSignalClientEvent.onWebSocketSendMessage("candidate", jSONObject4);
        }
    }

    private void sendHandShake() {
        synchronized (this.mWSClientThreadHandlerLock) {
            Handler handler = this.mWSClientThreadHandler;
            if (handler != null) {
                handler.post(new Runnable() { // from class: org.webrtc.haima.f1
                    @Override // java.lang.Runnable
                    public final void run() {
                        this.f96092b.lambda$sendHandShake$7();
                    }
                });
            }
        }
    }

    private void sendHeartBeat() {
        synchronized (this.mWSClientThreadHandlerLock) {
            Handler handler = this.mWSClientThreadHandler;
            if (handler != null) {
                handler.post(new Runnable() { // from class: org.webrtc.haima.g1
                    @Override // java.lang.Runnable
                    public final void run() {
                        this.f96096b.lambda$sendHeartBeat$8();
                    }
                });
            }
        }
    }

    private IceCandidate toJavaCandidate(JSONObject jSONObject) throws JSONException {
        return new IceCandidate(jSONObject.getString("id"), jSONObject.getInt(PostingActivity_.LABEL_EXTRA), jSONObject.getString("candidate"));
    }

    public void connect() {
        synchronized (this.mWSClientThreadHandlerLock) {
            Handler handler = this.mWSClientThreadHandler;
            if (handler != null) {
                handler.post(new Runnable() { // from class: org.webrtc.haima.e1
                    @Override // java.lang.Runnable
                    public final void run() {
                        this.f96090b.lambda$connect$1();
                    }
                });
            }
        }
    }

    public void disconnect() {
        synchronized (this.mWSClientThreadHandlerLock) {
            Handler handler = this.mWSClientThreadHandler;
            if (handler != null) {
                handler.postAtFrontOfQueue(new Runnable() { // from class: org.webrtc.haima.i1
                    @Override // java.lang.Runnable
                    public final void run() {
                        this.f96108b.lambda$disconnect$2();
                    }
                });
                final Looper looper = this.mWSClientThreadHandler.getLooper();
                this.mWSClientThreadHandler.post(new Runnable() { // from class: org.webrtc.haima.j1
                    @Override // java.lang.Runnable
                    public final void run() {
                        WebSocketRTCClient.lambda$disconnect$3(looper);
                    }
                });
                this.mWSClientThreadHandler = null;
            }
        }
    }

    public String getStreamrVersion() {
        return this.mStreamerVersion;
    }

    public boolean offerReceived() {
        return !this.mOfferSdp.isEmpty();
    }

    @Override // org.webrtc.haima.WebSocketSignalClient.IWebSocketConnectionEvent
    public void onWebSocketConnectStatus(String str) {
        WebSocketSignalClient.IWebSocketSignalClientEvent iWebSocketSignalClientEvent = this.mEvents;
        if (iWebSocketSignalClientEvent != null) {
            iWebSocketSignalClientEvent.onWebSocketConnectStatus(str);
        }
    }

    @Override // org.webrtc.haima.WebSocketSignalClient.IWebSocketConnectionEvent
    public void onWebSocketConnected() {
        PeerConnection.IceServer iceServerCreateIceServer;
        this.mEnableHandShakeEvent = true;
        sendHandShake();
        if (this.mEvents != null) {
            this.iceServers.clear();
            String[] strArrSplit = this.mCoturnServer.split(",");
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
            this.mEvents.onWebSocketConnected(this.iceServers);
        }
    }

    @Override // org.webrtc.haima.WebSocketSignalClient.IWebSocketConnectionEvent
    public void onWebSocketDisconnected(int i10) {
        WebSocketSignalClient.IWebSocketSignalClientEvent iWebSocketSignalClientEvent = this.mEvents;
        if (iWebSocketSignalClientEvent != null) {
            iWebSocketSignalClientEvent.onWebSocketDisconnected(i10);
        }
    }

    /* JADX WARN: Failed to restore switch over string. Please report as a decompilation issue */
    @Override // org.webrtc.haima.WebSocketSignalClient.IWebSocketConnectionEvent
    public void onWebSocketRecvMessage(String str) {
        JSONObject jSONObjectOptJSONObject;
        JSONObject jSONObjectOptJSONObject2;
        JSONObject jSONObjectOptJSONObject3;
        try {
            JSONObject jSONObject = new JSONObject(str);
            JSONObject jSONObjectOptJSONObject4 = jSONObject.optJSONObject("head");
            if (jSONObjectOptJSONObject4 == null) {
                Logging.i(TAG, "rtcmessage parseMessage not legal msg:" + str);
                return;
            }
            Logging.i(TAG, "parseMessage message:" + str);
            JSONObject jSONObjectOptJSONObject5 = jSONObject.optJSONObject("body");
            String strOptString = jSONObjectOptJSONObject4.optString("type", "");
            if (!this.mCloudId.equals(jSONObjectOptJSONObject4.optString("cid", ""))) {
                Logging.i(TAG, "rtcmessage parseMessage error cid");
                return;
            }
            byte b10 = -1;
            if (!strOptString.equals(PointCategory.REQUEST)) {
                if (strOptString.equals(GrantCredentialsPermissionActivity.f89267i)) {
                    String strOptString2 = jSONObjectOptJSONObject4.optString(com.alipay.sdk.packet.d.f7195s);
                    if (strOptString2.hashCode() == 70679543 && strOptString2.equals(Socket.EVENT_HANDSHAKE)) {
                        b10 = 0;
                    }
                    if (b10 != 0) {
                        Logging.i(TAG, "rtcmessage response method:" + strOptString2 + " errcode:" + jSONObjectOptJSONObject4.optInt("errcode"));
                        return;
                    }
                    int iOptInt = jSONObjectOptJSONObject4.optInt("errcode");
                    Logging.i(TAG, "rtcmessage response method:" + strOptString2 + " errcode:" + iOptInt);
                    if (iOptInt != 0) {
                        WebSocketSignalClient.IWebSocketSignalClientEvent iWebSocketSignalClientEvent = this.mEvents;
                        if (iWebSocketSignalClientEvent != null) {
                            iWebSocketSignalClientEvent.onWebSocketConnectStatus("RTC WebSocket handshake error:" + iOptInt);
                            return;
                        }
                        return;
                    }
                    if (jSONObjectOptJSONObject5 != null && (jSONObjectOptJSONObject = jSONObjectOptJSONObject5.optJSONObject("streamer_info")) != null && this.mStreamerVersion.isEmpty()) {
                        this.mStreamerVersion = jSONObjectOptJSONObject.optString("version");
                        Logging.i(TAG, "rtcmessage handshake succeed streamer version:" + this.mStreamerVersion);
                    }
                    WebSocketSignalClient.IWebSocketSignalClientEvent iWebSocketSignalClientEvent2 = this.mEvents;
                    if (iWebSocketSignalClientEvent2 == null || !this.mEnableHandShakeEvent) {
                        return;
                    }
                    iWebSocketSignalClientEvent2.onWebSocketHandShakeSucceed();
                    this.mEnableHandShakeEvent = false;
                    return;
                }
                return;
            }
            String strOptString3 = jSONObjectOptJSONObject4.optString(com.alipay.sdk.packet.d.f7195s);
            switch (strOptString3.hashCode()) {
                case -612557761:
                    if (strOptString3.equals("extension")) {
                        b10 = 2;
                    }
                    break;
                case 508663171:
                    if (strOptString3.equals("candidate")) {
                        b10 = 1;
                    }
                    break;
                case 990157655:
                    if (strOptString3.equals("reconnect")) {
                        b10 = 3;
                    }
                    break;
                case 1429916474:
                    if (strOptString3.equals("setoffer")) {
                        b10 = 0;
                    }
                    break;
            }
            if (b10 == 0) {
                if (jSONObjectOptJSONObject5 == null || (jSONObjectOptJSONObject2 = jSONObjectOptJSONObject5.optJSONObject("media_description")) == null) {
                    return;
                }
                String string = jSONObjectOptJSONObject2.getString("type");
                String string2 = jSONObjectOptJSONObject2.getString("sdp");
                if (this.mOfferSdp.isEmpty()) {
                    SessionDescription sessionDescription = new SessionDescription(SessionDescription.Type.fromCanonicalForm(string), string2);
                    try {
                        WebSocketSignalClient.IWebSocketSignalClientEvent iWebSocketSignalClientEvent3 = this.mEvents;
                        if (iWebSocketSignalClientEvent3 != null) {
                            iWebSocketSignalClientEvent3.onWebSocketRemoteDescription(sessionDescription);
                        }
                        Logging.i(TAG, "mEvents.onWebSocketRemoteDescription");
                    } catch (Exception e10) {
                        Logging.e(TAG, "onRemoteDescription exception: " + e10.toString());
                    }
                } else if (!this.mOfferSdp.equals(string2)) {
                    try {
                        WebSocketSignalClient.IWebSocketSignalClientEvent iWebSocketSignalClientEvent4 = this.mEvents;
                        if (iWebSocketSignalClientEvent4 != null) {
                            iWebSocketSignalClientEvent4.onWebSocketForceDisconnectRTC("recved different OFFER sdp");
                        }
                        Logging.i(TAG, "mEvents.onWebSocketForceDisconnectRTC");
                    } catch (Exception e11) {
                        Logging.e(TAG, "onRemoteDescription exception: " + e11.toString());
                    }
                }
                this.mOfferSdp = string2;
                return;
            }
            if (b10 == 1) {
                if (jSONObjectOptJSONObject5 == null || (jSONObjectOptJSONObject3 = jSONObjectOptJSONObject5.optJSONObject("candidate_info")) == null) {
                    return;
                }
                try {
                    WebSocketSignalClient.IWebSocketSignalClientEvent iWebSocketSignalClientEvent5 = this.mEvents;
                    if (iWebSocketSignalClientEvent5 != null) {
                        iWebSocketSignalClientEvent5.onWebSocketRemoteIceCandidate(toJavaCandidate(jSONObjectOptJSONObject3), jSONObjectOptJSONObject3.optString("turnserver"));
                    }
                    Logging.i(TAG, "mEvents.onWebSocketRemoteIceCandidate");
                    return;
                } catch (Exception e12) {
                    Logging.e(TAG, "onWebSocketRemoteIceCandidate exception: " + e12.toString());
                    return;
                }
            }
            if (b10 != 2) {
                if (b10 != 3) {
                    return;
                }
                sendHandShake();
                return;
            }
            if (jSONObjectOptJSONObject5 != null) {
                String strOptString4 = jSONObjectOptJSONObject5.optString("payload");
                if (strOptString4.isEmpty()) {
                    return;
                }
                try {
                    WebSocketSignalClient.IWebSocketSignalClientEvent iWebSocketSignalClientEvent6 = this.mEvents;
                    if (iWebSocketSignalClientEvent6 != null) {
                        iWebSocketSignalClientEvent6.onWebSocketRecvExtMessage(strOptString4);
                    }
                    Logging.i(TAG, "mEvents.onWebSocketRecvExtMessage");
                    return;
                } catch (Exception e13) {
                    Logging.e(TAG, "onWebSocketRecvExtMessage exception: " + e13.toString());
                    return;
                }
            }
            return;
            Logging.e(TAG, "string to json exception: " + e.toString());
        } catch (JSONException e14) {
            Logging.e(TAG, "string to json exception: " + e14.toString());
        }
    }

    public void reset() {
        this.mOfferSdp = "";
        this.mEnableHandShakeEvent = false;
    }

    public void sendAnswer(final SessionDescription sessionDescription) {
        synchronized (this.mWSClientThreadHandlerLock) {
            Handler handler = this.mWSClientThreadHandler;
            if (handler != null) {
                handler.post(new Runnable() { // from class: org.webrtc.haima.c1
                    @Override // java.lang.Runnable
                    public final void run() {
                        this.f96075b.lambda$sendAnswer$4(sessionDescription);
                    }
                });
            }
        }
    }

    public void sendExtMessage(final String str) {
        synchronized (this.mWSClientThreadHandlerLock) {
            Handler handler = this.mWSClientThreadHandler;
            if (handler != null) {
                handler.post(new Runnable() { // from class: org.webrtc.haima.d1
                    @Override // java.lang.Runnable
                    public final void run() {
                        this.f96086b.lambda$sendExtMessage$6(str);
                    }
                });
            }
        }
    }

    public void sendIceCandidate(final IceCandidate iceCandidate) {
        synchronized (this.mWSClientThreadHandlerLock) {
            Handler handler = this.mWSClientThreadHandler;
            if (handler != null) {
                handler.post(new Runnable() { // from class: org.webrtc.haima.b1
                    @Override // java.lang.Runnable
                    public final void run() {
                        this.f96070b.lambda$sendIceCandidate$5(iceCandidate);
                    }
                });
            }
        }
    }
}
