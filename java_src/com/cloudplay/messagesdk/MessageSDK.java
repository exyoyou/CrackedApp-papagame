package com.cloudplay.messagesdk;

import android.content.Context;
import android.text.TextUtils;
import androidx.core.app.NotificationCompat;
import com.baidu.mobads.sdk.internal.ax;
import com.cloudplay.messagesdk.a.e;
import com.cloudplay.messagesdk.a.g;
import com.cloudplay.messagesdk.a.j;
import com.cloudplay.messagesdk.entity.CidInfo;
import com.cloudplay.messagesdk.entity.ConfigType;
import com.cloudplay.messagesdk.entity.HMBinaryMessage;
import com.cloudplay.messagesdk.entity.HMMessage;
import com.cloudplay.messagesdk.entity.HMSysAbility;
import com.cloudplay.messagesdk.entity.HMTxtMessage;
import com.cloudplay.messagesdk.entity.HmSysNotify;
import com.cloudplay.messagesdk.entity.LinkBean;
import com.cloudplay.messagesdk.entity.PayInfo;
import com.cloudplay.messagesdk.listener.ConfigObserver;
import com.cloudplay.messagesdk.listener.MessageHandler;
import com.cloudplay.messagesdk.listener.SendListener;
import com.cloudplay.messagesdk.network.HttpResultListener;
import com.cloudplay.messagesdk.socket.OnWebSocketListener;
import com.cloudplay.messagesdk.socket.SocketType;
import com.cloudplay.messagesdk.socket.b.d;
import com.haima.hmcp.Constants;
import com.haima.hmcp.ConstantsInternal;
import com.haima.hmcp.business.TransferHelper;
import java.util.HashMap;
import java.util.Map;
import org.json.JSONException;
import org.json.JSONObject;

/* JADX INFO: loaded from: classes9.dex */
public final class MessageSDK {

    /* JADX INFO: renamed from: u, reason: collision with root package name */
    private static volatile MessageSDK f23656u;

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private String f23657a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private String f23658b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    private CidInfo f23659c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    private PayInfo f23660d;

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    private com.cloudplay.messagesdk.socket.a f23664h;

    /* JADX INFO: renamed from: i, reason: collision with root package name */
    private ConfigObserver f23665i;

    /* JADX INFO: renamed from: j, reason: collision with root package name */
    private MessageHandler f23666j;

    /* JADX INFO: renamed from: l, reason: collision with root package name */
    private boolean f23668l;

    /* JADX INFO: renamed from: n, reason: collision with root package name */
    private String f23670n;

    /* JADX INFO: renamed from: p, reason: collision with root package name */
    private boolean f23672p;

    /* JADX INFO: renamed from: q, reason: collision with root package name */
    private OnWebSocketListener f23673q;

    /* JADX INFO: renamed from: r, reason: collision with root package name */
    private String f23674r;

    /* JADX INFO: renamed from: s, reason: collision with root package name */
    private String f23675s;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    private boolean f23661e = false;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    private boolean f23662f = false;

    /* JADX INFO: renamed from: g, reason: collision with root package name */
    private boolean f23663g = false;

    /* JADX INFO: renamed from: k, reason: collision with root package name */
    private boolean f23667k = true;

    /* JADX INFO: renamed from: m, reason: collision with root package name */
    private boolean f23669m = true;

    /* JADX INFO: renamed from: o, reason: collision with root package name */
    private final Map<String, Object> f23671o = new HashMap();

    /* JADX INFO: renamed from: t, reason: collision with root package name */
    private final ConfigObserver f23676t = new c();

    class b implements HttpResultListener {
        b() {
        }

        @Override // com.cloudplay.messagesdk.network.HttpResultListener
        public void onError(String str) {
            e.a("MessageSDK", str);
            MessageSDK.this.f23662f = false;
        }

        @Override // com.cloudplay.messagesdk.network.HttpResultListener
        public void onResult(String str) {
            e.a("MessageSDK", "linkAddress:" + str);
            MessageSDK.this.f23662f = false;
            MessageSDK.this.f23658b = str + "&cli=m_master-2.4.0-cdfca6c7";
            MessageSDK.this.f23664h.a(MessageSDK.this.f23658b);
        }
    }

    class c implements ConfigObserver {
        c() {
        }

        @Override // com.cloudplay.messagesdk.listener.ConfigObserver
        public void notify(ConfigType configType) throws Throwable {
            MessageSDK.this.a(false);
            if (MessageSDK.this.f23665i != null) {
                MessageSDK.this.f23665i.notify(configType);
            }
        }
    }

    private MessageSDK() {
        if (this.f23664h == null) {
            this.f23664h = new com.cloudplay.messagesdk.socket.a();
        }
    }

    public static MessageSDK getInstance() {
        if (f23656u == null) {
            synchronized (MessageSDK.class) {
                if (f23656u == null) {
                    f23656u = new MessageSDK();
                    g.a().a("transId", j.a(f23656u.toString() + System.currentTimeMillis()));
                }
            }
        }
        return f23656u;
    }

    public String getConfigInfo() {
        String strB;
        e.a("MessageSDK", "");
        if (this.f23663g && this.f23667k) {
            strB = com.cloudplay.messagesdk.a.c.b(this.f23657a);
        } else {
            e.a("MessageSDK", "isInited:" + this.f23663g + ",mHasReadExternalStoragePermission:" + this.f23667k);
            strB = null;
        }
        g.a().c("4024", "isInited:" + this.f23663g + ",mHasReadExternalStoragePermission:" + this.f23667k + ",configInfo:" + strB);
        return strB;
    }

    public PayInfo getPayInfo() {
        e.a("MessageSDK", "");
        CidInfo cidInfo = this.f23659c;
        if (cidInfo != null) {
            this.f23660d = com.cloudplay.messagesdk.a.c.e(cidInfo.getCid());
        }
        g.a().c("4025", "isInited:" + this.f23663g + ",mHasReadExternalStoragePermission:" + this.f23667k + ",mPayInfo:" + this.f23660d);
        return this.f23660d;
    }

    public String getSDKVersion() {
        return "master-2.4.0-cdfca6c7";
    }

    public void init(Context context, String str) throws Throwable {
        CidInfo cidInfo;
        StringBuilder sb2 = new StringBuilder();
        sb2.append("init() version:");
        sb2.append(getSDKVersion());
        sb2.append(",isInited:");
        sb2.append(this.f23663g);
        sb2.append(",pkgName:");
        sb2.append(str);
        this.f23674r = j.a("vendor.cf.cid", "");
        String strA = j.a("vendor.cf.bid", "");
        String strA2 = j.a("vendor.cf.address", "");
        e.c("MessageSDK", "init() cfAddress:" + strA2);
        if (!TextUtils.isEmpty(strA2) && strA2.startsWith("https")) {
            com.cloudplay.messagesdk.a.b.f23687d = strA2;
        }
        this.f23675s = j.a("android.agent.instanceId", "");
        e.a("MessageSDK", "init mCid:" + this.f23674r + ",bId:" + strA + ",mInstanceId:" + this.f23675s);
        if (!TextUtils.isEmpty(this.f23674r)) {
            this.f23669m = com.cloudplay.messagesdk.a.c.c(this.f23674r);
            g.a().b(this.f23675s, this.f23674r);
        }
        if (!TextUtils.isEmpty(strA)) {
            g.a().a(Constants.WS_MSG_KEY_BID, strA);
        }
        if (context == null) {
            e.b("MessageSDK", "init context is null");
            HashMap map = new HashMap();
            map.put("errorMSG", "context is null");
            g.a().a("4002", map);
            return;
        }
        Context applicationContext = context.getApplicationContext();
        this.f23657a = str;
        com.cloudplay.messagesdk.network.b.a().init(applicationContext);
        if (this.f23663g) {
            e.a("MessageSDK", "init inited");
            return;
        }
        this.f23661e = "cloud".equals(com.cloudplay.messagesdk.a.c.b());
        e.a("MessageSDK", "isRunningCloud:" + this.f23661e);
        if (!this.f23661e) {
            e.a("MessageSDK", "isRunningCloud false");
            HashMap map2 = new HashMap();
            map2.put("errorMSG", "not run in HM cloud env");
            g.a().a("4002", map2);
            return;
        }
        this.f23663g = true;
        this.f23667k = j.a(applicationContext);
        e.a("MessageSDK", "mHasReadExternalStoragePermission:" + this.f23667k);
        g.a().a("mHasReadExternalStoragePermission:" + this.f23667k);
        this.f23664h.c(SocketType.LINK_WS_SERVER);
        a aVar = new a();
        this.f23673q = aVar;
        this.f23664h.a(aVar);
        if (!this.f23667k) {
            this.f23664h.c(SocketType.WS_SERVER);
            this.f23664h.a();
            return;
        }
        this.f23659c = com.cloudplay.messagesdk.a.c.a(this.f23657a);
        if (TextUtils.isEmpty(this.f23674r) && (cidInfo = this.f23659c) != null) {
            this.f23674r = cidInfo.getCid();
            if (TextUtils.isEmpty(this.f23675s)) {
                this.f23675s = this.f23659c.getServiceId();
            }
            e.a("MessageSDK", "mCid:" + this.f23674r + ",mInstanceId:" + this.f23675s);
            if (!TextUtils.isEmpty(this.f23674r)) {
                this.f23669m = com.cloudplay.messagesdk.a.c.c(this.f23674r);
                g.a().b(this.f23675s, this.f23674r);
            }
            e.a("MessageSDK", "mIsReportMSG:" + this.f23669m);
        }
        this.f23664h.a();
        this.f23660d = com.cloudplay.messagesdk.a.c.e(this.f23674r);
        j.a(this.f23657a, this.f23659c, this.f23676t);
        HashMap map3 = new HashMap();
        map3.put("pkgName", this.f23657a);
        g.a().a("4000", map3);
        a();
    }

    public boolean isRunningCloud() {
        e.a("MessageSDK", "isRunningCloud:" + this.f23661e);
        if (!this.f23661e) {
            this.f23661e = "cloud".equals(com.cloudplay.messagesdk.a.c.b());
        }
        e.a("MessageSDK", "isRunningCloud:" + this.f23661e);
        return this.f23661e;
    }

    public String sendMessage(byte[] bArr, SendListener sendListener) throws Throwable {
        e.a("MessageSDK", "isInited:" + this.f23663g);
        if (!b(true)) {
            j.a(false, "", sendListener);
            return "";
        }
        if (bArr == null || bArr.length == 0) {
            j.a("", true, false, "payload is empty");
            j.a(false, "", sendListener);
            return "";
        }
        if (!this.f23664h.e()) {
            a(false);
            j.a("", true, false, "WSServer Socket is not connected");
            j.a(false, "", sendListener);
            return "";
        }
        String str = "M" + System.currentTimeMillis();
        HMBinaryMessage hMBinaryMessage = new HMBinaryMessage();
        hMBinaryMessage.setMid(str);
        hMBinaryMessage.setPayload(bArr);
        com.cloudplay.messagesdk.socket.a aVar = this.f23664h;
        if (aVar != null) {
            aVar.b(hMBinaryMessage, sendListener);
            return str;
        }
        j.a("", true, false, "mWebSocketManager is null");
        j.a(false, "", sendListener);
        return "";
    }

    public void setConfigObserver(ConfigObserver configObserver) {
        this.f23665i = configObserver;
    }

    public void setDebug(boolean z10) {
        StringBuilder sb2 = new StringBuilder();
        sb2.append("debug:");
        sb2.append(z10);
        e.f23689a = z10;
        e.f23691c = z10;
        e.f23690b = z10;
        e.f23692d = z10;
        e.f23693e = z10;
    }

    public void setMessageHandler(MessageHandler messageHandler) {
        com.cloudplay.messagesdk.socket.a aVar;
        e.a("MessageSDK", "");
        this.f23666j = messageHandler;
        if (messageHandler == null || (aVar = this.f23664h) == null) {
            return;
        }
        aVar.a(messageHandler.getSchedulerMessageHandlerObserveOn());
    }

    public void stop() {
        e.a("MessageSDK", "isRunningCloud:" + this.f23661e + ",isInited:" + this.f23663g);
        if (this.f23663g) {
            this.f23668l = false;
            this.f23672p = false;
            this.f23663g = false;
            if (this.f23661e) {
                g.a().a("4003", new HashMap());
                j.a();
                com.cloudplay.messagesdk.socket.a aVar = this.f23664h;
                if (aVar != null) {
                    aVar.f();
                    this.f23673q = null;
                }
            }
        }
    }

    private void b() {
        if (this.f23662f) {
            e.a("MessageSDK", "isRegistering");
            return;
        }
        if (this.f23659c == null) {
            this.f23659c = com.cloudplay.messagesdk.a.c.a(this.f23657a);
        }
        CidInfo cidInfo = this.f23659c;
        if (cidInfo == null) {
            e.a("MessageSDK", "cidInfo can not be null, make sure get cidInfo correctly!");
        } else {
            this.f23662f = true;
            j.a(cidInfo, this.f23657a, 0, new b());
        }
    }

    class a implements OnWebSocketListener {
        a() {
        }

        @Override // com.cloudplay.messagesdk.socket.OnWebSocketListener
        public void onConnect(SocketType socketType) {
            HashMap map = new HashMap();
            map.put("channelType", Integer.valueOf(socketType.a()));
            g.a().a("4011", map);
            e.a("MessageSDK", "socketType:" + socketType + ",mIsFirstConnect:" + MessageSDK.this.f23668l);
            if (socketType == SocketType.WS_SERVER && !MessageSDK.this.f23668l) {
                MessageSDK.this.f23668l = true;
                g.a().a("4001", (Map<String, Object>) null);
            }
            MessageSDK.this.f23664h.a(socketType);
        }

        @Override // com.cloudplay.messagesdk.socket.OnWebSocketListener
        public void onDisConnect(SocketType socketType, int i10, String str) {
            d dVarC;
            HashMap map = new HashMap();
            map.put("channelType", Integer.valueOf(socketType.a()));
            map.put("errorCode", Integer.valueOf(i10));
            map.put("errorMSG", str);
            map.put(NotificationCompat.CATEGORY_EVENT, "onClose");
            if (i10 == 3) {
                if (socketType == SocketType.LINK) {
                    d dVarC2 = MessageSDK.this.f23664h.c();
                    if (dVarC2 != null) {
                        dVarC2.c();
                    }
                } else if (socketType == SocketType.WS_SERVER && (dVarC = MessageSDK.this.f23664h.c()) != null) {
                    dVarC.c();
                }
            } else if (MessageSDK.this.f23663g) {
                MessageSDK.this.f23664h.b(socketType);
            }
            g.a().a("4013", map);
            if (MessageSDK.this.f23663g && !MessageSDK.this.f23668l && socketType == SocketType.WS_SERVER) {
                HashMap map2 = new HashMap();
                map2.put("errorMSG", str);
                g.a().a("4002", map2);
            }
        }

        @Override // com.cloudplay.messagesdk.socket.OnWebSocketListener
        public void onMessage(SocketType socketType, byte[] bArr, boolean z10) {
            if (MessageSDK.this.f23666j != null) {
                MessageSDK.this.f23666j.onBinaryMessage(bArr);
            } else {
                e.a("MessageSDK", "mMessageHandler is null");
                g.a().c("4023", "mMessageHandler is null");
            }
        }

        @Override // com.cloudplay.messagesdk.socket.OnWebSocketListener
        public void onMessage(SocketType socketType, String str) {
            boolean z10 = str != null && str.contains(ConstantsInternal.MSG_TYPE_SYS);
            if (!(str != null && str.contains(ConstantsInternal.ACK) && str.contains("type") && str.contains("mid")) && !z10) {
                if (MessageSDK.this.f23666j != null) {
                    MessageSDK.this.f23666j.onTextMessage(str);
                    return;
                } else {
                    e.a("MessageSDK", "mMessageHandler is null");
                    g.a().c("4023", "mMessageHandler is null");
                    return;
                }
            }
            MessageSDK.this.a(socketType, str);
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void a(SocketType socketType, String str) {
        SocketType socketType2;
        e.a("MessageSDK", "message :" + str);
        if (TextUtils.isEmpty(str)) {
            return;
        }
        if (str.contains(ConstantsInternal.HM_SYS_CONFIG_NOTIFY)) {
            HmSysNotify hmSysNotify = (HmSysNotify) com.cloudplay.messagesdk.a.d.a(str, HmSysNotify.class);
            if (hmSysNotify != null) {
                String str2 = socketType.name() + "," + hmSysNotify.getSocketId();
                String hm_sys_config_notify = hmSysNotify.getHm_sys_config_notify();
                com.cloudplay.messagesdk.a.a.a(str2 + "," + hm_sys_config_notify, hmSysNotify, 60000L);
                String cli = hmSysNotify.getCli();
                this.f23670n = cli;
                if (TextUtils.isEmpty(cli)) {
                    if (this.f23667k && (socketType2 = SocketType.LINK_WS_SERVER) != this.f23664h.b()) {
                        this.f23664h.c(socketType2);
                    }
                    a(hm_sys_config_notify);
                    return;
                }
                return;
            }
            return;
        }
        if (str.contains(ConstantsInternal.MGS_SDK_ABILITY)) {
            HMSysAbility hMSysAbility = (HMSysAbility) com.cloudplay.messagesdk.a.d.a(str, HMSysAbility.class);
            if (1 == hMSysAbility.getHm_sys_config_channelType_ability()) {
                hMSysAbility.setHm_sys_config_channelType_ability(1L);
                String strA = com.cloudplay.messagesdk.a.d.a(hMSysAbility);
                if (this.f23664h.d() != null) {
                    this.f23664h.d().sendMessage(strA);
                    return;
                }
                return;
            }
            return;
        }
        if (str.contains(ConstantsInternal.MGS_SDK_CONFIG_CHANNEL_TYPE)) {
            try {
                HashMap map = new HashMap();
                map.put("payload", str);
                g.a().a("4006", map);
                int iOptInt = new JSONObject(str).optInt(ConstantsInternal.MGS_SDK_CONFIG_CHANNEL_TYPE, -1);
                if (iOptInt == -1 || this.f23664h == null) {
                    return;
                }
                this.f23664h.c(SocketType.a(iOptInt));
                a(ConstantsInternal.HM_SYS_CONFIG_NOTIFY_CONNECTED);
                return;
            } catch (JSONException e10) {
                e.a("MessageSDK", e10.getMessage());
                return;
            }
        }
        if (str.contains(ConstantsInternal.ACK) && str.contains("type") && str.contains("mid")) {
            HMTxtMessage hMTxtMessage = (HMTxtMessage) com.cloudplay.messagesdk.a.d.a(str, HMTxtMessage.class);
            int ack = hMTxtMessage.getAck();
            int type = hMTxtMessage.getType();
            if (ack == 0 && type == 1) {
                hMTxtMessage.setAck(1);
                String from = hMTxtMessage.getFrom();
                hMTxtMessage.setFrom(hMTxtMessage.getTo());
                hMTxtMessage.setTo(from);
                this.f23664h.b((HMMessage) hMTxtMessage, (SendListener) null);
                String payload = hMTxtMessage.getPayload();
                MessageHandler messageHandler = this.f23666j;
                if (messageHandler != null) {
                    messageHandler.onTextMessage(payload);
                } else {
                    e.a("MessageSDK", "mMessageHandler is null");
                    g.a().c("4023", "mMessageHandler is null");
                }
            }
        }
    }

    private boolean b(boolean z10) {
        e.a("MessageSDK", "isBinary:" + z10);
        if (!this.f23663g) {
            e.a("MessageSDK", "no init");
            j.a("", z10, false, "no init");
            return false;
        }
        if (this.f23661e) {
            return true;
        }
        e.a("MessageSDK", "isRunningCloud is false");
        j.a("", z10, false, "isRunningCloud is false");
        return false;
    }

    public String sendMessage(String str, SendListener sendListener) {
        e.a("MessageSDK", "");
        if (!b(false)) {
            j.a(false, "", sendListener);
            return "";
        }
        if (TextUtils.isEmpty(str)) {
            j.a("", false, false, "payload is empty");
            j.a(false, "", sendListener);
            return "";
        }
        CidInfo cidInfo = this.f23659c;
        String cid = cidInfo != null ? cidInfo.getCid() : null;
        String str2 = "M" + System.currentTimeMillis();
        HMTxtMessage hMTxtMessage = new HMTxtMessage();
        hMTxtMessage.setMid(str2);
        hMTxtMessage.setPayload(str);
        StringBuilder sb2 = new StringBuilder();
        sb2.append(Constants.TAG_TO_MESSAGE_SDK);
        sb2.append(cid == null ? "" : cid);
        hMTxtMessage.setFrom(sb2.toString());
        hMTxtMessage.setTo(cid);
        hMTxtMessage.setType(1);
        hMTxtMessage.setUid("");
        hMTxtMessage.setAck(0);
        d dVarD = this.f23664h.d();
        if (dVarD != null && dVarD.isConnected()) {
            this.f23664h.b((HMMessage) hMTxtMessage, sendListener);
            if (this.f23664h.b() == SocketType.WS_SERVER) {
                return str2;
            }
        } else {
            this.f23664h.a();
            if (this.f23664h.b() == SocketType.WS_SERVER) {
                j.a("", false, false, "WS_SERVER socket not connected");
                j.a(false, "", sendListener);
                return "";
            }
        }
        if (this.f23667k && this.f23659c == null) {
            e.a("MessageSDK", "cidInfo can not be null, make sure get cidInfo correctly!");
            j.a("", false, false, "link socket not connected");
            j.a(false, "", sendListener);
            return "";
        }
        if (!a(true)) {
            j.a(false, "", sendListener);
            j.a("", false, false, "link socket not connected");
            return "";
        }
        this.f23664h.a((HMMessage) hMTxtMessage, sendListener);
        return str2;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public boolean a(boolean z10) throws Throwable {
        e.a("MessageSDK", "isReport:" + z10);
        boolean z11 = (this.f23664h.b().a() & SocketType.LINK.a()) != 0;
        d dVarC = this.f23664h.c();
        if (z11 && TextUtils.isEmpty(this.f23658b)) {
            e.a("MessageSDK", "try to register again...");
            if (z10) {
                j.a("", false, false, "mLinkAddress is null");
            }
            this.f23664h.a();
            a();
            return false;
        }
        if (dVarC == null || dVarC.isConnected()) {
            return true;
        }
        if (z10) {
            j.a("", false, false, "socket not connected ");
        }
        this.f23664h.a();
        this.f23664h.a(this.f23658b);
        return false;
    }

    private void a() throws Throwable {
        CidInfo cidInfo = this.f23659c;
        if (cidInfo != null) {
            LinkBean linkBeanD = com.cloudplay.messagesdk.a.c.d(cidInfo.getCid());
            if (!TextUtils.isEmpty(linkBeanD.getSocketUrl()) && !TextUtils.isEmpty(linkBeanD.getbId()) && !TextUtils.isEmpty(linkBeanD.getSign())) {
                this.f23658b = String.format("%s/websocket?%s&cli=m_master-2.4.0-cdfca6c7", linkBeanD.getSocketUrl(), String.format("uid=%s&cid=%s%s&did=%s&appId=%s&packageName=%s&sign=%s", "", Constants.TAG_TO_MESSAGE_SDK, this.f23659c.getCid(), this.f23659c.getServiceId(), linkBeanD.getbId(), this.f23657a, linkBeanD.getSign()));
                HashMap map = new HashMap();
                map.put("linkType", ax.f7484a);
                g.a().a("4005", map);
                this.f23664h.a(this.f23658b);
                return;
            }
            b();
        }
    }

    private void a(String str) {
        e.a("MessageSDK", "status:" + str + ",mIsNotifyConnected:" + this.f23672p + ",isInited:" + this.f23663g);
        this.f23671o.put(TransferHelper.KEY_CLI, this.f23670n);
        if (ConstantsInternal.HM_SYS_CONFIG_NOTIFY_CONNECTED.equals(str) && !this.f23672p && this.f23663g) {
            this.f23672p = true;
            MessageHandler messageHandler = this.f23666j;
            if (messageHandler != null) {
                messageHandler.onReady();
            } else {
                e.a("MessageSDK", "mMessageHandler is null");
                g.a().c("4023", "mMessageHandler is null");
            }
            g.a().a("4021", this.f23671o);
        }
    }
}
