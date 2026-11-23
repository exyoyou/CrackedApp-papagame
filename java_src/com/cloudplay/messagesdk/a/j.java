package com.cloudplay.messagesdk.a;

import android.content.Context;
import android.os.Handler;
import android.os.Looper;
import android.text.TextUtils;
import android.util.Base64;
import com.cloudplay.messagesdk.MessageSDK;
import com.cloudplay.messagesdk.entity.Action;
import com.cloudplay.messagesdk.entity.CidInfo;
import com.cloudplay.messagesdk.entity.ConfigItem;
import com.cloudplay.messagesdk.entity.ConfigType;
import com.cloudplay.messagesdk.entity.FileObserverBean;
import com.cloudplay.messagesdk.entity.ObserverItem;
import com.cloudplay.messagesdk.entity.RegistRequest;
import com.cloudplay.messagesdk.entity.RegistRequestData;
import com.cloudplay.messagesdk.listener.ConfigObserver;
import com.cloudplay.messagesdk.listener.SendListener;
import com.cloudplay.messagesdk.network.HttpResultListener;
import com.cloudplay.messagesdk.socket.websocket.schedulers.MessageSchedulerType;
import com.haima.hmcp.Constants;
import com.haima.hmcp.countly.CountlyDbPolicy;
import com.haima.hmcp.widgets.BaseVideoView;
import com.join.mgps.dto.Constant;
import com.papa91.common.BaseAppConfig;
import java.security.MessageDigest;
import java.security.NoSuchAlgorithmException;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.HashMap;
import java.util.List;
import java.util.Map;
import org.json.JSONException;
import org.json.JSONObject;

/* JADX INFO: loaded from: classes9.dex */
public class j {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private static f f23712a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private static Handler f23713b = new Handler(Looper.getMainLooper());

    static class a implements HttpResultListener {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        final /* synthetic */ int f23714a;

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        final /* synthetic */ CidInfo f23715b;

        /* JADX INFO: renamed from: c, reason: collision with root package name */
        final /* synthetic */ String f23716c;

        /* JADX INFO: renamed from: d, reason: collision with root package name */
        final /* synthetic */ HttpResultListener f23717d;

        a(int i10, CidInfo cidInfo, String str, HttpResultListener httpResultListener) {
            this.f23714a = i10;
            this.f23715b = cidInfo;
            this.f23716c = str;
            this.f23717d = httpResultListener;
        }

        @Override // com.cloudplay.messagesdk.network.HttpResultListener
        public void onError(String str) {
            e.b("Util", "error:" + str);
            HashMap map = new HashMap();
            map.put("errorMSG", str);
            g.a().a("4020", map);
            int i10 = this.f23714a;
            if (i10 < 2) {
                j.a(this.f23715b, this.f23716c, i10 + 1, this.f23717d);
                return;
            }
            HttpResultListener httpResultListener = this.f23717d;
            if (httpResultListener != null) {
                httpResultListener.onError("超过重试次数." + str);
            }
        }

        @Override // com.cloudplay.messagesdk.network.HttpResultListener
        public void onResult(String str) {
            if (str == null) {
                e.b("Util", "response null");
                int i10 = this.f23714a;
                if (i10 < 2) {
                    j.a(this.f23715b, this.f23716c, i10 + 1, this.f23717d);
                    return;
                }
                HttpResultListener httpResultListener = this.f23717d;
                if (httpResultListener != null) {
                    httpResultListener.onError("超过重试次数. result is null");
                    return;
                }
                return;
            }
            HashMap map = new HashMap();
            try {
                map.put("data", Base64.encodeToString(str.getBytes(), 2));
                JSONObject jSONObject = new JSONObject(str);
                if (jSONObject.optInt("code", -1) == 0) {
                    g.a().a("4008", map);
                    JSONObject jSONObject2 = new JSONObject(jSONObject.optString("data"));
                    String strOptString = jSONObject2.optString(Constant.MD5);
                    JSONObject jSONObject3 = new JSONObject(jSONObject2.optString("msgServInfo"));
                    String str2 = String.format("ws://%s:%s/websocket?%s", jSONObject3.optString("serverIp"), jSONObject3.optString(BaseAppConfig.KEY_SERVER_PORT), String.format("uid=%s&cid=%s%s&did=%s&appId=%s&packageName=%s&sign=%s", "", Constants.TAG_TO_MESSAGE_SDK, this.f23715b.getCid(), this.f23715b.getServiceId(), jSONObject3.optString(Constants.WS_MSG_KEY_BID), this.f23716c, strOptString));
                    HashMap map2 = new HashMap();
                    map2.put("linkType", "net");
                    g.a().a("4005", map2);
                    HttpResultListener httpResultListener2 = this.f23717d;
                    if (httpResultListener2 != null) {
                        httpResultListener2.onResult(str2);
                    }
                } else {
                    g.a().a("4009", map);
                    int i11 = this.f23714a;
                    if (i11 < 2) {
                        j.a(this.f23715b, this.f23716c, i11 + 1, this.f23717d);
                    } else {
                        HttpResultListener httpResultListener3 = this.f23717d;
                        if (httpResultListener3 != null) {
                            httpResultListener3.onError("超过重试次数." + jSONObject.optString("msg"));
                        }
                    }
                }
            } catch (Exception e10) {
                e.a("Util", e10);
                map.put("errorMSG", e10.getMessage());
                g.a().a("4009", map);
                HttpResultListener httpResultListener4 = this.f23717d;
                if (httpResultListener4 != null) {
                    httpResultListener4.onError(e10.getMessage());
                }
            }
        }
    }

    public static void a(CidInfo cidInfo, String str, int i10, HttpResultListener httpResultListener) {
        try {
            HashMap map = new HashMap();
            map.put("pkgName", str);
            g.a().a("4007", map);
            RegistRequest registRequest = new RegistRequest();
            RegistRequestData registRequestData = new RegistRequestData();
            registRequestData.setCid(cidInfo.getCid());
            registRequestData.setServiceId(cidInfo.getServiceId());
            registRequestData.setPackageName(str);
            registRequestData.setMtoken(cidInfo.getMtoken());
            Action action = new Action();
            action.setActId(106);
            registRequest.setAction(action);
            registRequest.setData(registRequestData);
            com.cloudplay.messagesdk.network.b.a().postJson(b.f23686c, new JSONObject(d.a(registRequest)), new a(i10, cidInfo, str, httpResultListener));
        } catch (JSONException e10) {
            e.a("Util", e10);
            if (httpResultListener != null) {
                httpResultListener.onError(e10.getMessage());
            }
        }
    }

    public static String a(String str, String str2) {
        try {
            String str3 = (String) Class.forName("android.os.SystemProperties").getDeclaredMethod("get", String.class).invoke(null, str);
            return !TextUtils.isEmpty(str3) ? str3 : str2;
        } catch (Exception e10) {
            e.a("Util", e10);
        }
    }

    public static void a(String str, CidInfo cidInfo, final ConfigObserver configObserver) {
        ArrayList arrayList = new ArrayList();
        FileObserverBean fileObserverBean = new FileObserverBean();
        ArrayList arrayList2 = new ArrayList();
        ObserverItem observerItem = new ObserverItem();
        observerItem.setConfigType(ConfigType.CONFIG_INFO);
        observerItem.setConfigFile(str + ".info");
        arrayList2.add(observerItem);
        fileObserverBean.setPath(b.f23684a);
        fileObserverBean.setMask(8);
        fileObserverBean.setFilters(arrayList2);
        arrayList.add(fileObserverBean);
        if (cidInfo != null) {
            FileObserverBean fileObserverBean2 = new FileObserverBean();
            ArrayList arrayList3 = new ArrayList();
            ObserverItem observerItem2 = new ObserverItem();
            observerItem2.setConfigType(ConfigType.PAY_INFO);
            observerItem2.setConfigFile(cidInfo.getCid() + "-AuthInfo.info");
            arrayList3.add(observerItem2);
            fileObserverBean2.setPath(b.f23685b);
            fileObserverBean2.setMask(8);
            fileObserverBean2.setFilters(arrayList3);
            arrayList.add(fileObserverBean2);
        }
        a(arrayList, new ConfigObserver() { // from class: com.cloudplay.messagesdk.a.l
            @Override // com.cloudplay.messagesdk.listener.ConfigObserver
            public final void notify(ConfigType configType) {
                j.a(configObserver, configType);
            }
        });
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static /* synthetic */ void a(ConfigObserver configObserver, ConfigType configType) {
        HashMap map = new HashMap();
        ConfigItem configItem = new ConfigItem();
        if (ConfigType.CONFIG_INFO == configType) {
            configItem.setConfigName(BaseVideoView.CONFIG_INFO);
            configItem.setData(MessageSDK.getInstance().getConfigInfo());
        } else if (configType == ConfigType.PAY_INFO) {
            configItem.setConfigName("payInfo");
            configItem.setData(d.a(MessageSDK.getInstance().getPayInfo()));
        }
        map.put("type", configItem.getConfigName());
        map.put("data", configItem.getData());
        g.a().a("4004", map);
        if (configObserver != null) {
            configObserver.notify(configType);
        }
    }

    public static void a(String str, boolean z10, boolean z11, String str2) {
        HashMap map = new HashMap();
        map.put("isBinary", Boolean.valueOf(z10));
        map.put("mid", str);
        map.put("errorMSG", str2);
        map.put("success", Boolean.valueOf(z11));
        g.a().a("4016", map);
    }

    public static void a(List<FileObserverBean> list, ConfigObserver configObserver) {
        if (list == null || f23712a != null) {
            return;
        }
        e.a("Util", Arrays.toString(list.toArray()));
        f fVar = new f(list, configObserver);
        f23712a = fVar;
        fVar.a();
    }

    public static void a() {
        f fVar = f23712a;
        if (fVar != null) {
            fVar.b();
            f23712a = null;
        }
    }

    public static void a(Map<String, Object> map) {
        if (map != null) {
            map.put(CountlyDbPolicy.FIELD_COUNTLY_TIME_STAMP, Long.valueOf(System.currentTimeMillis()));
        }
    }

    public static boolean a(Context context) {
        e.a("Util", "");
        return context != null && context.checkCallingOrSelfPermission(com.kuaishou.weapon.p0.g.f74785i) == 0;
    }

    public static final String a(String str) {
        try {
            MessageDigest messageDigest = MessageDigest.getInstance("MD5");
            messageDigest.update(str.getBytes());
            byte[] bArrDigest = messageDigest.digest();
            StringBuilder sb2 = new StringBuilder();
            for (byte b10 : bArrDigest) {
                String hexString = Integer.toHexString(b10 & 255);
                while (hexString.length() < 2) {
                    hexString = "0" + hexString;
                }
                sb2.append(hexString);
            }
            return sb2.toString();
        } catch (NoSuchAlgorithmException e10) {
            e.a("Util", e10);
            return str;
        }
    }

    public static void a(final boolean z10, final String str, final SendListener sendListener) {
        e.a("Util", "callbackMsgSendResult() " + Thread.currentThread().getName());
        if (sendListener != null) {
            if (sendListener.getSchedulerObserveOn() == MessageSchedulerType.SUB_THREAD) {
                sendListener.onResult(z10, str);
                return;
            } else {
                f23713b.post(new Runnable() { // from class: com.cloudplay.messagesdk.a.m
                    @Override // java.lang.Runnable
                    public final void run() {
                        j.a(sendListener, z10, str);
                    }
                });
                return;
            }
        }
        e.a("Util", "callbackMsgSendResult() listener is null");
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static /* synthetic */ void a(SendListener sendListener, boolean z10, String str) {
        e.a("Util", "callbackMsgSendResult() Handler#post()->run() " + Thread.currentThread().getName());
        sendListener.onResult(z10, str);
    }
}
