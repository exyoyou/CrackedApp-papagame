package com.join.mgps.cloud;

import android.content.Context;
import com.cloudplay.messagesdk.MessageSDK;
import com.cloudplay.messagesdk.entity.ConfigType;
import com.cloudplay.messagesdk.entity.PayInfo;
import com.cloudplay.messagesdk.listener.ConfigObserver;
import com.cloudplay.messagesdk.listener.MessageHandler;
import com.cloudplay.messagesdk.listener.SendListener;
import com.cloudplay.messagesdk.socket.websocket.schedulers.MessageSchedulerType;
import com.join.android.app.common.utils.JsonMapper;
import com.join.mgps.cloud.bean.HMMessage;
import java.util.Arrays;
import kotlin.collections.ArraysKt___ArraysKt;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;
import kotlin.jvm.internal.SourceDebugExtension;
import kotlinx.coroutines.flow.j;
import kotlinx.coroutines.flow.v;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;
import org.json.JSONObject;

/* JADX INFO: loaded from: classes3.dex */
public final class c {

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    @NotNull
    public static final a f64188e = new a(null);

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    @NotNull
    private final Context f64189a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    @NotNull
    private j<String> f64190b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    @NotNull
    private j<PayInfo> f64191c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    private final String f64192d;

    @SourceDebugExtension({"SMAP\nHMMessageManager.kt\nKotlin\n*S Kotlin\n*F\n+ 1 HMMessageManager.kt\ncom/join/mgps/cloud/HMMessageManager$Companion\n+ 2 JsonUtil.kt\ncom/join/mgps/cloud/util/JsonUtilKt\n*L\n1#1,177:1\n10#2:178\n10#2:179\n10#2:180\n10#2:181\n10#2:182\n10#2:183\n10#2:184\n*S KotlinDebug\n*F\n+ 1 HMMessageManager.kt\ncom/join/mgps/cloud/HMMessageManager$Companion\n*L\n36#1:178\n40#1:179\n44#1:180\n48#1:181\n52#1:182\n56#1:183\n60#1:184\n*E\n"})
    public static final class a {
        public /* synthetic */ a(DefaultConstructorMarker defaultConstructorMarker) {
            this();
        }

        /* JADX WARN: Failed to restore switch over string. Please report as a decompilation issue */
        @Nullable
        public final HMMessage a(@Nullable String str) {
            String strOptString;
            HMMessage hMMessage;
            if (str == null || str.length() == 0) {
                return null;
            }
            try {
                JSONObject jSONObject = new JSONObject(str);
                if (!jSONObject.has("action") || (strOptString = jSONObject.optString("action", "")) == null) {
                    return null;
                }
                switch (strOptString.hashCode()) {
                    case -1354792126:
                        if (!strOptString.equals("config")) {
                            return null;
                        }
                        hMMessage = (HMMessage) JsonMapper.getInstance().fromJson(str, HMMessage.Config.class);
                        break;
                        break;
                    case -562449035:
                        if (!strOptString.equals(HMMessage.ACTION_DOWNLOAD_CLOUD_ARCHIVE)) {
                            return null;
                        }
                        hMMessage = (HMMessage) JsonMapper.getInstance().fromJson(str, HMMessage.DownloadCloudArchive.class);
                        break;
                        break;
                    case -266803431:
                        if (!strOptString.equals(HMMessage.ACTION_USER_INFO)) {
                            return null;
                        }
                        hMMessage = (HMMessage) JsonMapper.getInstance().fromJson(str, HMMessage.UserInfo.class);
                        break;
                        break;
                    case 109757538:
                        if (!strOptString.equals("start")) {
                            return null;
                        }
                        hMMessage = (HMMessage) JsonMapper.getInstance().fromJson(str, HMMessage.Start.class);
                        break;
                        break;
                    case 831507188:
                        if (!strOptString.equals(HMMessage.ACTION_TEST_CONFIG)) {
                            return null;
                        }
                        hMMessage = (HMMessage) JsonMapper.getInstance().fromJson(str, HMMessage.ConfigTest.class);
                        break;
                        break;
                    case 951351530:
                        if (!strOptString.equals("connect")) {
                            return null;
                        }
                        hMMessage = (HMMessage) JsonMapper.getInstance().fromJson(str, HMMessage.Connect.class);
                        break;
                        break;
                    case 1318161774:
                        if (!strOptString.equals(HMMessage.ACTION_UPLOAD_CLOUD_ARCHIVE)) {
                            return null;
                        }
                        hMMessage = (HMMessage) JsonMapper.getInstance().fromJson(str, HMMessage.UploadCloudArchive.class);
                        break;
                        break;
                    default:
                        return null;
                }
                return hMMessage;
            } catch (Throwable th) {
                th.printStackTrace();
                return null;
            }
        }

        private a() {
        }
    }

    @SourceDebugExtension({"SMAP\nHMMessageManager.kt\nKotlin\n*S Kotlin\n*F\n+ 1 HMMessageManager.kt\ncom/join/mgps/cloud/HMMessageManager$init$messageHandler$1\n+ 2 JsonUtil.kt\ncom/join/mgps/cloud/util/JsonUtilKt\n*L\n1#1,177:1\n10#2:178\n10#2:179\n10#2:180\n10#2:181\n10#2:182\n10#2:183\n*S KotlinDebug\n*F\n+ 1 HMMessageManager.kt\ncom/join/mgps/cloud/HMMessageManager$init$messageHandler$1\n*L\n95#1:178\n101#1:179\n105#1:180\n109#1:181\n113#1:182\n118#1:183\n*E\n"})
    public static final class b implements MessageHandler {
        b() {
        }

        @Override // com.cloudplay.messagesdk.listener.MessageHandler
        public /* synthetic */ MessageSchedulerType getSchedulerMessageHandlerObserveOn() {
            return w2.a.a(this);
        }

        @Override // com.cloudplay.messagesdk.listener.MessageHandler
        public void onBinaryMessage(byte[] bArr) {
        }

        @Override // com.cloudplay.messagesdk.listener.MessageHandler
        public /* synthetic */ void onReady() {
            w2.a.b(this);
        }

        /* JADX WARN: Failed to restore switch over string. Please report as a decompilation issue */
        @Override // com.cloudplay.messagesdk.listener.MessageHandler
        public void onTextMessage(String str) {
            HMMessage.Config config;
            c.this.h("onTextMessage: " + str);
            if (str == null || str.length() == 0) {
                return;
            }
            try {
                JSONObject jSONObject = new JSONObject(str);
                if (jSONObject.has("action")) {
                    String strOptString = jSONObject.optString("action", "");
                    Object objValueOf = null;
                    if (strOptString != null) {
                        switch (strOptString.hashCode()) {
                            case -1354792126:
                                if (strOptString.equals("config") && (config = (HMMessage.Config) JsonMapper.getInstance().fromJson(str, HMMessage.Config.class)) != null) {
                                    objValueOf = Boolean.valueOf(c.this.d().d(n6.b.b(config.getConfig())));
                                }
                                break;
                            case -562449035:
                                if (strOptString.equals(HMMessage.ACTION_DOWNLOAD_CLOUD_ARCHIVE)) {
                                    objValueOf = JsonMapper.getInstance().fromJson(str, (Class<Object>) HMMessage.DownloadCloudArchive.class);
                                }
                                break;
                            case -266803431:
                                if (strOptString.equals(HMMessage.ACTION_USER_INFO)) {
                                    c.this.h("parse ACTION_USER_INFO");
                                    objValueOf = JsonMapper.getInstance().fromJson(str, (Class<Object>) HMMessage.UserInfo.class);
                                }
                                break;
                            case 109757538:
                                if (strOptString.equals("start")) {
                                    objValueOf = JsonMapper.getInstance().fromJson(str, (Class<Object>) HMMessage.Start.class);
                                }
                                break;
                            case 951351530:
                                if (strOptString.equals("connect")) {
                                    objValueOf = JsonMapper.getInstance().fromJson(str, (Class<Object>) HMMessage.Connect.class);
                                }
                                break;
                            case 1318161774:
                                if (strOptString.equals(HMMessage.ACTION_UPLOAD_CLOUD_ARCHIVE)) {
                                    objValueOf = JsonMapper.getInstance().fromJson(str, (Class<Object>) HMMessage.UploadCloudArchive.class);
                                }
                                break;
                        }
                    }
                    if (objValueOf == null) {
                        return;
                    }
                    c.this.h("post: " + n6.b.b(objValueOf));
                    org.greenrobot.eventbus.c.f().q(objValueOf);
                }
            } catch (Throwable th) {
                th.printStackTrace();
            }
        }
    }

    public c(@NotNull Context context) throws Throwable {
        Intrinsics.checkNotNullParameter(context, "context");
        this.f64189a = context;
        this.f64190b = v.a(null);
        this.f64191c = v.a(null);
        this.f64192d = c.class.getSimpleName();
        MessageSDK.getInstance().setDebug(true);
        f();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final void g(c cVar, ConfigType configType) {
        if (configType == ConfigType.CONFIG_INFO) {
            String configInfo = MessageSDK.getInstance().getConfigInfo();
            cVar.f64190b.d(configInfo);
            cVar.i("configInfo: " + configInfo);
            return;
        }
        if (configType == ConfigType.PAY_INFO) {
            PayInfo payInfo = MessageSDK.getInstance().getPayInfo();
            cVar.f64191c.d(payInfo);
            cVar.i("payInfo: " + payInfo);
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public final void h(String... strArr) {
    }

    public static /* synthetic */ void l(c cVar, HMMessage hMMessage, boolean z10, int i10, Object obj) {
        if ((i10 & 2) != 0) {
            z10 = false;
        }
        cVar.j(hMMessage, z10);
    }

    public static /* synthetic */ void m(c cVar, String str, boolean z10, int i10, Object obj) {
        if ((i10 & 2) != 0) {
            z10 = false;
        }
        cVar.k(str, z10);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final void n(boolean z10, String str) {
        org.greenrobot.eventbus.c cVarF = org.greenrobot.eventbus.c.f();
        if (str == null) {
            str = "";
        }
        cVarF.q(new HMMessage.SendMessageResult(z10, str));
    }

    @NotNull
    public final j<String> d() {
        return this.f64190b;
    }

    @NotNull
    public final j<PayInfo> e() {
        return this.f64191c;
    }

    public final void f() throws Throwable {
        MessageSDK.getInstance().init(this.f64189a, this.f64189a.getPackageName());
        MessageSDK.getInstance().setMessageHandler(new b());
        MessageSDK.getInstance().setConfigObserver(new ConfigObserver() { // from class: com.join.mgps.cloud.b
            @Override // com.cloudplay.messagesdk.listener.ConfigObserver
            public final void notify(ConfigType configType) {
                c.g(this.f64187a, configType);
            }
        });
        this.f64190b.d(MessageSDK.getInstance().getConfigInfo());
        this.f64191c.d(MessageSDK.getInstance().getPayInfo());
        i("message info: " + MessageSDK.getInstance().getConfigInfo() + "  " + MessageSDK.getInstance().getPayInfo() + ' ');
    }

    @NotNull
    public final Context getContext() {
        return this.f64189a;
    }

    public final void i(@NotNull String... message) {
        Intrinsics.checkNotNullParameter(message, "message");
        m(this, n6.b.b(new HMMessage.Log(ArraysKt___ArraysKt.joinToString$default(message, " ", (CharSequence) null, (CharSequence) null, 0, (CharSequence) null, (Function1) null, 62, (Object) null))), false, 2, null);
        h((String[]) Arrays.copyOf(message, message.length));
    }

    public final void j(@NotNull HMMessage message, boolean z10) {
        Intrinsics.checkNotNullParameter(message, "message");
        k(n6.b.b(message), z10);
    }

    public final void k(@NotNull String message, boolean z10) {
        Intrinsics.checkNotNullParameter(message, "message");
        MessageSDK.getInstance().sendMessage(message, new SendListener() { // from class: com.join.mgps.cloud.a
            @Override // com.cloudplay.messagesdk.listener.SendListener
            public /* synthetic */ MessageSchedulerType getSchedulerObserveOn() {
                return w2.b.a(this);
            }

            @Override // com.cloudplay.messagesdk.listener.SendListener
            public final void onResult(boolean z11, String str) {
                c.n(z11, str);
            }
        });
    }

    public final void o(@NotNull j<String> jVar) {
        Intrinsics.checkNotNullParameter(jVar, "<set-?>");
        this.f64190b = jVar;
    }

    public final void p(@NotNull j<PayInfo> jVar) {
        Intrinsics.checkNotNullParameter(jVar, "<set-?>");
        this.f64191c = jVar;
    }

    public final void q() {
        MessageSDK.getInstance().stop();
    }
}
