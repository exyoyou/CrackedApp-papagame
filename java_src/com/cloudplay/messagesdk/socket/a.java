package com.cloudplay.messagesdk.socket;

import android.text.TextUtils;
import com.cloudplay.messagesdk.a.e;
import com.cloudplay.messagesdk.a.g;
import com.cloudplay.messagesdk.a.i;
import com.cloudplay.messagesdk.a.j;
import com.cloudplay.messagesdk.entity.FutureCount;
import com.cloudplay.messagesdk.entity.HMBinaryMessage;
import com.cloudplay.messagesdk.entity.HMMessage;
import com.cloudplay.messagesdk.entity.HMSysAbility;
import com.cloudplay.messagesdk.entity.HMTxtMessage;
import com.cloudplay.messagesdk.listener.SendListener;
import com.cloudplay.messagesdk.socket.websocket.exceptions.WebSocketException;
import com.cloudplay.messagesdk.socket.websocket.schedulers.MessageSchedulerType;
import com.haima.hmcp.ConstantsInternal;
import com.haima.hmcp.widgets.AbsIjkVideoView;
import java.util.HashMap;
import java.util.concurrent.ConcurrentHashMap;
import java.util.concurrent.Future;
import java.util.concurrent.TimeUnit;
import org.json.JSONObject;

/* JADX INFO: loaded from: classes9.dex */
public class a {

    /* JADX INFO: renamed from: l, reason: collision with root package name */
    private static final ConcurrentHashMap<String, SendListener> f24108l = new ConcurrentHashMap<>();

    /* JADX INFO: renamed from: m, reason: collision with root package name */
    private static final ConcurrentHashMap<String, FutureCount> f24109m = new ConcurrentHashMap<>();

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private com.cloudplay.messagesdk.socket.b.d f24110a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private com.cloudplay.messagesdk.socket.b.d f24111b;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    private long f24113d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    private String f24114e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    private Future f24115f;

    /* JADX INFO: renamed from: g, reason: collision with root package name */
    private Future f24116g;

    /* JADX INFO: renamed from: i, reason: collision with root package name */
    private String f24118i;

    /* JADX INFO: renamed from: j, reason: collision with root package name */
    private OnWebSocketListener f24119j;

    /* JADX INFO: renamed from: k, reason: collision with root package name */
    private MessageSchedulerType f24120k;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    private SocketType f24112c = SocketType.LINK_WS_SERVER;

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    private boolean f24117h = false;

    class c implements Runnable {
        c() {
        }

        @Override // java.lang.Runnable
        public void run() {
            e.a("WebSocketManager", "scheduledSocketConnect()->scheduleAtFixedRate()->run() connectLink");
            a aVar = a.this;
            aVar.a(aVar.f24118i);
        }
    }

    class d implements Runnable {
        d() {
        }

        @Override // java.lang.Runnable
        public void run() {
            e.a("WebSocketManager", "scheduledSocketConnect()->scheduleAtFixedRate()->run() connectLocalWSServer");
            a.this.a();
        }
    }

    public boolean e() {
        com.cloudplay.messagesdk.socket.b.d dVar = this.f24111b;
        return dVar != null && dVar.isConnected();
    }

    public void f() {
        e.a("WebSocketManager", "stop() mIsStop:" + this.f24117h);
        if (this.f24117h) {
            return;
        }
        a(SocketType.WS_SERVER);
        a(SocketType.LINK);
        this.f24117h = true;
        com.cloudplay.messagesdk.socket.b.d dVar = this.f24110a;
        if (dVar != null && dVar.isConnected()) {
            e.a("WebSocketManager", "stop() mName:" + this.f24110a.b());
            this.f24110a.a();
        }
        com.cloudplay.messagesdk.socket.b.d dVar2 = this.f24111b;
        if (dVar2 == null || !dVar2.isConnected()) {
            return;
        }
        e.a("WebSocketManager", "stop() mName:" + this.f24111b.b());
        this.f24111b.sendClose();
    }

    private void a(com.cloudplay.messagesdk.socket.b.h.b bVar) {
    }

    public void b(HMMessage hMMessage, SendListener sendListener) {
        e.a("WebSocketManager", "sendWSServerMessage() mCurSocketType:" + this.f24112c + ",message:" + hMMessage);
        try {
            if (!(hMMessage instanceof HMTxtMessage)) {
                if (hMMessage instanceof HMBinaryMessage) {
                    HMBinaryMessage hMBinaryMessage = (HMBinaryMessage) hMMessage;
                    if ((this.f24112c.a() & SocketType.WS_SERVER.a()) == 0) {
                        e.b("WebSocketManager", "sendWSServerMessage() current socket type unsupported");
                        j.a(false, hMBinaryMessage.getMid(), sendListener);
                        return;
                    }
                    com.cloudplay.messagesdk.socket.b.d dVar = this.f24111b;
                    if (dVar != null) {
                        dVar.sendMessage(hMBinaryMessage.getPayload(), true);
                        j.a(true, hMBinaryMessage.getMid(), sendListener);
                        return;
                    }
                    return;
                }
                return;
            }
            HMTxtMessage hMTxtMessage = (HMTxtMessage) hMMessage;
            String strA = com.cloudplay.messagesdk.a.d.a(hMTxtMessage);
            int iA = this.f24112c.a();
            SocketType socketType = SocketType.WS_SERVER;
            if ((iA & socketType.a()) != 0) {
                if (this.f24111b == null) {
                    j.a(hMTxtMessage.getMid(), false, false, "mWsServerSocket is NULL");
                    e.b("WebSocketManager", "sendWSServerMessage() mWsServerSocket is NULL ");
                    return;
                }
                if (1 == hMTxtMessage.getAck()) {
                    this.f24111b.sendMessage(strA);
                } else {
                    this.f24111b.sendMessage(hMTxtMessage.getPayload());
                }
                if (this.f24112c == socketType) {
                    j.a(true, hMTxtMessage.getMid(), sendListener);
                }
            }
        } catch (Exception e10) {
            e.b("WebSocketManager", "sendWSServerMessage() e:" + e10);
        }
    }

    public com.cloudplay.messagesdk.socket.b.d c() {
        return this.f24110a;
    }

    public com.cloudplay.messagesdk.socket.b.d d() {
        return this.f24111b;
    }

    public void c(SocketType socketType) {
        e.a("WebSocketManager", "setCurSocketType() curSocketType:" + socketType);
        this.f24112c = socketType;
        g.a().a("channelCFG", "" + socketType.a());
    }

    /* JADX INFO: renamed from: com.cloudplay.messagesdk.socket.a$a, reason: collision with other inner class name */
    class C0528a extends com.cloudplay.messagesdk.socket.b.e {
        C0528a(SocketType socketType) {
            super(socketType);
        }

        @Override // com.cloudplay.messagesdk.socket.websocket.interfaces.IWebSocketConnectionHandler
        public void onClose(int i10, String str) {
            StringBuilder sb2 = new StringBuilder();
            sb2.append("connectLocalWSServer()->connect()->onClose() ");
            SocketType socketType = SocketType.WS_SERVER;
            sb2.append(socketType.name());
            sb2.append(" code:");
            sb2.append(i10);
            sb2.append(",reason:");
            sb2.append(str);
            e.a("WebSocketManager", sb2.toString());
            if (a.this.f24119j != null) {
                a.this.f24119j.onDisConnect(socketType, i10, str);
            } else {
                e.a("WebSocketManager", "connectLocalWSServer()->connect()->onClose() mOnWebSocketListener is null");
            }
        }

        @Override // com.cloudplay.messagesdk.socket.websocket.interfaces.IWebSocketConnectionHandler
        public void onMessage(byte[] bArr, boolean z10) {
            StringBuilder sb2 = new StringBuilder();
            sb2.append("connectLocalWSServer()->connect()->onMessage() ");
            SocketType socketType = SocketType.WS_SERVER;
            sb2.append(socketType.name());
            e.a("WebSocketManager", sb2.toString());
            if (a.this.f24119j != null) {
                a.this.f24119j.onMessage(socketType, bArr, z10);
            } else {
                e.a("WebSocketManager", "mOnWebSocketListener is null");
            }
        }

        @Override // com.cloudplay.messagesdk.socket.websocket.interfaces.IWebSocketConnectionHandler
        public void onOpen() {
            StringBuilder sb2 = new StringBuilder();
            sb2.append("connectLocalWSServer()->connect()->onOpen() ");
            SocketType socketType = SocketType.WS_SERVER;
            sb2.append(socketType.name());
            e.a("WebSocketManager", sb2.toString());
            HMSysAbility hMSysAbility = new HMSysAbility();
            hMSysAbility.setHm_sys_config_channelType_ability(1L);
            a.this.f24111b.sendMessage(com.cloudplay.messagesdk.a.d.a(hMSysAbility));
            if (a.this.f24119j != null) {
                a.this.f24119j.onConnect(socketType);
            } else {
                e.a("WebSocketManager", "connectLocalWSServer()->connect()->onOpen() mOnWebSocketListener is null");
            }
        }

        @Override // com.cloudplay.messagesdk.socket.websocket.interfaces.IWebSocketConnectionHandler
        public void onMessage(String str) {
            StringBuilder sb2 = new StringBuilder();
            sb2.append("connectLocalWSServer()->connect()->onMessage() ");
            SocketType socketType = SocketType.WS_SERVER;
            sb2.append(socketType.name());
            sb2.append(",payload:");
            sb2.append(str);
            e.a("WebSocketManager", sb2.toString());
            if (a.this.f24119j != null) {
                a.this.f24119j.onMessage(socketType, str);
            } else {
                e.a("WebSocketManager", "connectLocalWSServer()->connect()->onMessage() mOnWebSocketListener is null");
            }
        }
    }

    class b extends com.cloudplay.messagesdk.socket.b.e {
        b(SocketType socketType) {
            super(socketType);
        }

        @Override // com.cloudplay.messagesdk.socket.websocket.interfaces.IWebSocketConnectionHandler
        public void onClose(int i10, String str) {
            StringBuilder sb2 = new StringBuilder();
            sb2.append("connectLink()->connect()->onClose()");
            SocketType socketType = SocketType.LINK;
            sb2.append(socketType.name());
            sb2.append(",code:");
            sb2.append(i10);
            sb2.append(",reason:");
            sb2.append(str);
            e.a("WebSocketManager", sb2.toString());
            if (i10 == 3 && !TextUtils.isEmpty(str)) {
                a.this.f24110a.c();
            } else if (a.this.f24119j != null) {
                a.this.f24119j.onDisConnect(socketType, i10, str);
            } else {
                e.a("WebSocketManager", "connectLink()->connect()->onClose() mOnWebSocketListener is null");
            }
        }

        @Override // com.cloudplay.messagesdk.socket.websocket.interfaces.IWebSocketConnectionHandler
        public void onMessage(byte[] bArr, boolean z10) {
            StringBuilder sb2 = new StringBuilder();
            sb2.append("connectLink()->connect()->onMessage(byte[]) ");
            SocketType socketType = SocketType.LINK;
            sb2.append(socketType.name());
            e.a("WebSocketManager", sb2.toString());
            if (a.this.f24119j != null) {
                a.this.f24119j.onMessage(socketType, bArr, z10);
            } else {
                e.a("WebSocketManager", "connectLink()->connect()->onMessage(byte[])  mOnWebSocketListener is null");
            }
        }

        @Override // com.cloudplay.messagesdk.socket.websocket.interfaces.IWebSocketConnectionHandler
        public void onOpen() {
            StringBuilder sb2 = new StringBuilder();
            sb2.append("connectLink()->connect()->onOpen() ");
            SocketType socketType = SocketType.LINK;
            sb2.append(socketType.name());
            e.a("WebSocketManager", sb2.toString());
            if (a.this.f24119j != null) {
                a.this.f24119j.onConnect(socketType);
            } else {
                e.a("WebSocketManager", "connectLink()->connect()->onOpen() mOnWebSocketListener is null");
            }
        }

        @Override // com.cloudplay.messagesdk.socket.websocket.interfaces.IWebSocketConnectionHandler
        public void onMessage(String str) {
            HMTxtMessage hMTxtMessage;
            StringBuilder sb2 = new StringBuilder();
            sb2.append("connectLink()->connect()->onMessage(msg) ");
            SocketType socketType = SocketType.LINK;
            sb2.append(socketType.name());
            sb2.append(",message:");
            sb2.append(str);
            e.a("WebSocketManager", sb2.toString());
            try {
                JSONObject jSONObject = new JSONObject(str);
                int iOptInt = jSONObject.optInt(ConstantsInternal.ACK);
                int iOptInt2 = jSONObject.optInt("type");
                String strOptString = jSONObject.optString("mid");
                if (iOptInt == 1) {
                    a.this.a(true, strOptString);
                } else if (iOptInt2 == 1) {
                    String strOptString2 = jSONObject.optString("payload");
                    if (a.this.f24119j != null) {
                        a.this.f24119j.onMessage(socketType, strOptString2);
                    } else {
                        e.a("WebSocketManager", "connectLink()->connect()->onMessage(msg)  mOnWebSocketListener is null");
                    }
                } else if (2 == iOptInt2 && (hMTxtMessage = (HMTxtMessage) com.cloudplay.messagesdk.a.d.a(str, HMTxtMessage.class)) != null) {
                    String payload = hMTxtMessage.getPayload();
                    if (!TextUtils.isEmpty(payload)) {
                        JSONObject jSONObject2 = new JSONObject(payload);
                        if (jSONObject2.has(AbsIjkVideoView.JSON_TAG_OPERATION) && 201 == jSONObject2.optInt(AbsIjkVideoView.JSON_TAG_OPERATION) && jSONObject2.has("data")) {
                            String strOptString3 = jSONObject2.optString("data");
                            if (a.this.f24119j != null) {
                                a.this.f24119j.onMessage(socketType, strOptString3);
                            } else {
                                e.b("WebSocketManager", "connectLink()->connect()->onMessage(msg) mOnWebSocketListener is null");
                            }
                        }
                    }
                }
            } catch (Exception e10) {
                e.b("WebSocketManager", "connectLink()->connect()->onMessage(msg) e:" + e10.getMessage());
            }
        }
    }

    public void a(HMMessage hMMessage, SendListener sendListener) {
        e.a("WebSocketManager", "sendLinkMessage() mCurSocketType:" + this.f24112c + ",message:" + hMMessage);
        try {
            if (hMMessage instanceof HMTxtMessage) {
                HMTxtMessage hMTxtMessage = (HMTxtMessage) hMMessage;
                String strA = com.cloudplay.messagesdk.a.d.a(hMTxtMessage);
                if ((this.f24112c.a() & SocketType.LINK.a()) != 0) {
                    e.a("WebSocketManager", "sendLinkMessage() send Link MSG");
                    if (System.currentTimeMillis() - this.f24113d < 200 && TextUtils.equals(hMTxtMessage.getPayload(), this.f24114e)) {
                        e.b("WebSocketManager", "sendLinkMessage() same payload in 200ms :" + hMTxtMessage.getPayload());
                        j.a(hMTxtMessage.getMid(), false, false, "same payload in 200ms");
                        j.a(false, hMTxtMessage.getMid(), sendListener);
                    }
                    this.f24113d = System.currentTimeMillis();
                    this.f24114e = hMTxtMessage.getPayload();
                    if (this.f24110a != null) {
                        e.b("WebSocketManager", "sendLinkMessage() send :" + strA);
                        this.f24110a.sendMessage(strA);
                        ConcurrentHashMap<String, FutureCount> concurrentHashMap = f24109m;
                        if (concurrentHashMap.size() < 100 && sendListener != null) {
                            f24108l.put(hMTxtMessage.getMid(), sendListener);
                        }
                        FutureCount futureCount = concurrentHashMap.get(hMTxtMessage.getMid());
                        if (futureCount != null) {
                            if (futureCount.getCount() >= 2) {
                                j.a(hMTxtMessage.getMid(), false, false, "RETRY_SEND_MESSAGE_COUNT");
                                a(false, hMTxtMessage.getMid());
                                return;
                            }
                            futureCount.setCount(futureCount.getCount() + 1);
                        } else {
                            futureCount = new FutureCount();
                            futureCount.setCount(1);
                        }
                        futureCount.setFuture(b(hMTxtMessage, sendListener));
                        if (concurrentHashMap.size() < 100) {
                            concurrentHashMap.put(hMTxtMessage.getMid(), futureCount);
                            return;
                        }
                        return;
                    }
                    j.a(hMTxtMessage.getMid(), false, false, "mLinkSocket is NULL");
                    e.b("WebSocketManager", "sendLinkMessage() mLinkSocket is NULL ");
                }
            }
        } catch (Exception e10) {
            e.b("WebSocketManager", "sendLinkMessage() e:" + e10);
        }
    }

    private Future b(final HMTxtMessage hMTxtMessage, final SendListener sendListener) {
        return i.b().a().schedule(new Runnable() { // from class: com.cloudplay.messagesdk.socket.b
            @Override // java.lang.Runnable
            public final void run() {
                this.f24125b.a(hMTxtMessage, sendListener);
            }
        }, 2L, TimeUnit.SECONDS);
    }

    public SocketType b() {
        return this.f24112c;
    }

    public void b(SocketType socketType) {
        e.a("WebSocketManager", "scheduledSocketConnect() socketType:" + socketType + ",mIsStop:" + this.f24117h);
        if (this.f24117h) {
            return;
        }
        a(socketType);
        if (socketType == SocketType.LINK) {
            this.f24115f = i.b().a().scheduleAtFixedRate(new c(), 1L, 1L, TimeUnit.SECONDS);
        } else if (socketType == SocketType.WS_SERVER) {
            this.f24116g = i.b().a().scheduleAtFixedRate(new d(), 1L, 1L, TimeUnit.SECONDS);
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void a(HMTxtMessage hMTxtMessage, SendListener sendListener) {
        a((HMMessage) hMTxtMessage, sendListener);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void a(boolean z10, String str) {
        Future future;
        e.e("WebSocketManager", "removeSendMessage() sendMessageResult-" + z10 + "-" + str);
        ConcurrentHashMap<String, FutureCount> concurrentHashMap = f24109m;
        if (concurrentHashMap.containsKey(str) && (future = concurrentHashMap.get(str).getFuture()) != null) {
            future.cancel(true);
            concurrentHashMap.remove(str);
        }
        ConcurrentHashMap<String, SendListener> concurrentHashMap2 = f24108l;
        if (concurrentHashMap2.containsKey(str)) {
            j.a(z10, str, concurrentHashMap2.get(str));
            concurrentHashMap2.remove(str);
        }
    }

    public void a() {
        e.a("WebSocketManager", "connectLocalWSServer() mCurSocketType:" + this.f24112c);
        this.f24117h = false;
        int iA = this.f24112c.a();
        SocketType socketType = SocketType.WS_SERVER;
        if ((iA & socketType.a()) == 0) {
            e.b("WebSocketManager", "connectLocalWSServer() mCurSocketType not match");
            return;
        }
        if (this.f24111b == null) {
            this.f24111b = new com.cloudplay.messagesdk.socket.b.d(socketType.name());
        }
        if (this.f24111b.isConnected()) {
            e.b("WebSocketManager", "connectLocalWSServer() " + socketType.name() + " connected");
            return;
        }
        HashMap map = new HashMap();
        map.put("channelType", Integer.valueOf(socketType.a()));
        map.put("address", "ws://127.0.0.1:7682/token?proto=1&act=0&cli=m_master-2.4.0-cdfca6c7");
        g.a().a("4010", map);
        com.cloudplay.messagesdk.socket.b.h.b bVar = new com.cloudplay.messagesdk.socket.b.h.b();
        bVar.d(250);
        bVar.a(5);
        bVar.b(5);
        bVar.c(3);
        bVar.a(this.f24120k);
        a(bVar);
        try {
            this.f24111b.a(true);
            this.f24111b.connect("ws://127.0.0.1:7682/token?proto=1&act=0&cli=m_master-2.4.0-cdfca6c7", new C0528a(socketType), bVar);
        } catch (WebSocketException e10) {
            e.b("WebSocketManager", "connectLocalWSServer() e:" + e10);
        }
    }

    public void a(String str) {
        e.a("WebSocketManager", "connectLink() url:" + str);
        e.a("WebSocketManager", "connectLink() curSocketType:" + this.f24112c);
        int iA = this.f24112c.a();
        SocketType socketType = SocketType.LINK;
        if ((iA & socketType.a()) == 0) {
            e.b("WebSocketManager", "connectLink() mCurSocketType not match");
            return;
        }
        if (this.f24110a == null) {
            this.f24110a = new com.cloudplay.messagesdk.socket.b.d(socketType.name());
        }
        if (this.f24110a.isConnected()) {
            e.b("WebSocketManager", "connectLink() " + socketType.name() + " connected");
            return;
        }
        com.cloudplay.messagesdk.socket.b.h.b bVar = new com.cloudplay.messagesdk.socket.b.h.b();
        bVar.d(250);
        bVar.a(5);
        bVar.b(5);
        bVar.c(3);
        bVar.a(this.f24120k);
        a(bVar);
        HashMap map = new HashMap();
        map.put("channelType", Integer.valueOf(socketType.a()));
        map.put("address", str);
        g.a().a("4010", map);
        try {
            this.f24118i = str;
            this.f24110a.a(true);
            this.f24110a.connect(str, new b(socketType), bVar);
        } catch (WebSocketException e10) {
            e.a("WebSocketManager", e10);
            HashMap map2 = new HashMap();
            map2.put("channelType", Integer.valueOf(SocketType.LINK.a()));
            map2.put("errorMSG", e10.getMessage());
            g.a().a("4012", map2);
        }
    }

    public void a(OnWebSocketListener onWebSocketListener) {
        e.a("WebSocketManager", "setOnWebSocketListener() listener:" + onWebSocketListener);
        this.f24119j = onWebSocketListener;
    }

    public void a(SocketType socketType) {
        Future future;
        Future future2;
        e.a("WebSocketManager", "cancelSocketConnect() socketType:" + socketType);
        if (socketType == SocketType.LINK && (future2 = this.f24115f) != null) {
            future2.cancel(true);
        }
        if (socketType != SocketType.WS_SERVER || (future = this.f24116g) == null) {
            return;
        }
        future.cancel(true);
    }

    public void a(MessageSchedulerType messageSchedulerType) {
        e.a("WebSocketManager", "setMessageHandleObserveOn() schedulerType:" + messageSchedulerType);
        this.f24120k = messageSchedulerType;
    }
}
