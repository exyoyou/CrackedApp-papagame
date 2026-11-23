package com.sigmob.sdk.mraid2;

import android.content.Context;
import android.util.DisplayMetrics;
import android.view.View;
import android.webkit.ConsoleMessage;
import android.webkit.JavascriptInterface;
import android.webkit.JsPromptResult;
import android.webkit.JsResult;
import android.webkit.ValueCallback;
import android.webkit.WebChromeClient;
import android.webkit.WebView;
import androidx.core.app.NotificationCompat;
import com.byazt.bv.BaseConstants;
import com.czhj.sdk.common.ClientMetadata;
import com.czhj.sdk.common.ThreadPool.ThreadPoolFactory;
import com.czhj.sdk.common.json.JSONSerializer;
import com.czhj.sdk.common.network.Networking;
import com.czhj.sdk.common.utils.Dips;
import com.czhj.sdk.common.utils.ReflectionUtil;
import com.czhj.sdk.logger.SigmobLog;
import com.czhj.wire.Wire;
import com.haima.hmcp.beans.HmInputMappingContent;
import com.join.mgps.activity.NoticeTopAnimActivityDialog_;
import com.join.mgps.activity.QuarkPromptActivity_;
import com.sigmob.sdk.Sigmob;
import com.sigmob.sdk.base.common.BaseBroadcastReceiver;
import com.sigmob.sdk.base.common.ad;
import com.sigmob.sdk.base.common.ah;
import com.sigmob.sdk.base.models.BaseAdUnit;
import com.sigmob.sdk.base.models.IntentActions;
import com.sigmob.sdk.base.models.LoadAdRequest;
import com.sigmob.sdk.base.models.rtb.Ad;
import com.sigmob.sdk.base.models.rtb.AndroidMarket;
import com.sigmob.sdk.base.models.rtb.BidResponse;
import com.sigmob.sdk.base.models.rtb.MaterialMeta;
import com.sigmob.sdk.base.models.rtb.Template;
import com.sigmob.sdk.base.models.rtb.WXProgramRes;
import com.sigmob.sdk.base.mta.PointCategory;
import com.sigmob.sdk.base.mta.PointEntitySigmob;
import com.sigmob.sdk.base.mta.PointParamKey;
import io.netty.handler.codec.memcache.binary.BinaryMemcacheOpcodes;
import java.lang.ref.WeakReference;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.Iterator;
import java.util.LinkedList;
import java.util.List;
import java.util.Map;
import java.util.concurrent.CopyOnWriteArrayList;
import org.json.JSONArray;
import org.json.JSONException;
import org.json.JSONObject;

/* JADX INFO: loaded from: classes3.dex */
public class d implements j {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private static final String f81179a = "Mraid2Bridge";

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    private static p f81180e;

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    private static final HashMap<String, List<String>> f81181h = new HashMap<>();

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private final List<BaseAdUnit> f81182b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    private k f81183c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    private c f81184d;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    private f f81185f;

    /* JADX INFO: renamed from: g, reason: collision with root package name */
    private final List<BaseAdUnit> f81186g;

    /* JADX INFO: renamed from: i, reason: collision with root package name */
    private volatile boolean f81187i;

    /* JADX INFO: renamed from: j, reason: collision with root package name */
    private boolean f81188j;

    /* JADX INFO: renamed from: k, reason: collision with root package name */
    private String f81189k;

    /* JADX INFO: renamed from: com.sigmob.sdk.mraid2.d$2, reason: invalid class name */
    class AnonymousClass2 implements com.sigmob.sdk.base.network.f.a {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        final /* synthetic */ d f81191a;

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        final /* synthetic */ String f81192b;

        AnonymousClass2(final d val$mraidBridge, final String val$ev) {
            this.f81191a = val$mraidBridge;
            this.f81192b = val$ev;
        }

        @Override // com.sigmob.sdk.base.network.f.a
        public void a(int error, String message, String requestId, LoadAdRequest loadAdRequest) {
            com.sigmob.sdk.base.utils.k.f(d.f81179a, "onErrorResponse: error = " + error + ", message = " + message, new Object[0]);
            this.f81191a.a(this.f81192b, (BidResponse) null, error, message);
            ad.a(PointCategory.RESPOND, "0", loadAdRequest);
        }

        /* JADX INFO: Access modifiers changed from: private */
        public static /* synthetic */ void a(List list, BaseAdUnit baseAdUnit, Object obj) {
            if (obj instanceof PointEntitySigmob) {
                Map<String, String> options = ((PointEntitySigmob) obj).getOptions();
                options.put(PointParamKey.AD_COUNT, String.valueOf(list.size()));
                options.put("request_id", baseAdUnit.getRequestId());
            }
        }

        @Override // com.sigmob.sdk.base.network.f.a
        public void a(final List<BaseAdUnit> adUnitList, LoadAdRequest loadAdRequest) {
            if (com.sigmob.sdk.base.utils.e.a(adUnitList)) {
                return;
            }
            com.sigmob.sdk.base.utils.k.c(d.f81179a, "onSuccess: size = " + adUnitList.size(), new Object[0]);
            d.this.f81186g.addAll(adUnitList);
            this.f81191a.a(this.f81192b, d.this.a(adUnitList), 0, (String) null);
            final BaseAdUnit baseAdUnit = adUnitList.get(0);
            ad.a(PointCategory.RESPOND, "1", baseAdUnit, new ad.a() { // from class: com.sigmob.sdk.mraid2.e0
                @Override // com.sigmob.sdk.base.common.ad.a
                public final void onAddExtra(Object obj) {
                    d.AnonymousClass2.a(adUnitList, baseAdUnit, obj);
                }
            });
        }
    }

    static class a {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        private final WeakReference<d> f81194a;

        public a(d mraidBridge) {
            this.f81194a = new WeakReference<>(mraidBridge);
        }

        @JavascriptInterface
        public String addDclog(JSONObject jsonData) {
            com.sigmob.sdk.base.utils.k.c(d.f81179a, "addDclog: jsonData = " + jsonData, new Object[0]);
            try {
                if (jsonData == null) {
                    return d.a(400, "not params", (Object) null);
                }
                d dVarA = a();
                final JSONObject jSONObjectOptJSONObject = jsonData.optJSONObject("data");
                if (!com.sigmob.sdk.base.utils.w.b(jSONObjectOptJSONObject) || !jSONObjectOptJSONObject.has(PointParamKey._AC_TYPE)) {
                    return d.a(300, "_ac_type is empty", (Object) null);
                }
                String strOptString = jSONObjectOptJSONObject.optString(PointParamKey._AC_TYPE);
                String strOptString2 = jsonData.optString(PointParamKey.VID);
                if (jSONObjectOptJSONObject.optString(PointParamKey.CATEGORY).equals("start") && com.sigmob.sdk.base.utils.w.b(dVarA) && com.sigmob.sdk.base.utils.w.b(dVarA.f81185f)) {
                    dVarA.f81185f.d();
                }
                ad.a(strOptString, dVarA == null ? null : dVarA.b(strOptString2), dVarA == null ? null : dVarA.j(), new ad.a() { // from class: com.sigmob.sdk.mraid2.g0
                    @Override // com.sigmob.sdk.base.common.ad.a
                    public final void onAddExtra(Object obj) {
                        d.a.a(jSONObjectOptJSONObject, obj);
                    }
                });
                return d.a(200, "add dc log success", (Object) null);
            } catch (Throwable th) {
                return d.a(500, th.toString(), (Object) null);
            }
        }

        @JavascriptInterface
        public String func(String jsonData) {
            try {
                JSONObject jSONObject = new JSONObject(jsonData);
                String string = jSONObject.has(com.alipay.sdk.authjs.a.f7128m) ? jSONObject.getString(com.alipay.sdk.authjs.a.f7128m) : null;
                if (com.sigmob.sdk.base.utils.t.a((CharSequence) string)) {
                    return d.a(400, "func is empty.", (Object) null);
                }
                ReflectionUtil.MethodBuilder methodBuilder = new ReflectionUtil.MethodBuilder(this, string.replace(":", ""));
                methodBuilder.addParam(JSONObject.class, jSONObject);
                return (String) methodBuilder.execute();
            } catch (Throwable th) {
                return d.a(500, th.getMessage(), (Object) null);
            }
        }

        @JavascriptInterface
        public String getDeviceInfo() {
            try {
                com.sigmob.sdk.base.utils.k.c(d.f81179a, "getDeviceInfo", new Object[0]);
                JSONObject jSONObject = new JSONObject();
                jSONObject.put("clientType", ClientMetadata.getDeviceModel());
                jSONObject.put("osVersion", ClientMetadata.getDeviceOsVersion());
                jSONObject.put("appVersion", ClientMetadata.getInstance().getAppVersion());
                jSONObject.put("width", ClientMetadata.getInstance().getDisplayMetrics().widthPixels);
                jSONObject.put("height", ClientMetadata.getInstance().getDisplayMetrics().heightPixels);
                jSONObject.put("screenDensity", ClientMetadata.getInstance().getDensityDpi());
                jSONObject.put("networkType", ClientMetadata.getInstance().getActiveNetworkType());
                jSONObject.put("pkgName", ClientMetadata.getInstance().getAppPackageName());
                jSONObject.put("userAgent", Networking.getUserAgent());
                jSONObject.put("uid", ClientMetadata.getUid());
                jSONObject.put("udid", ClientMetadata.getInstance().getUDID());
                JSONObject jSONObject2 = new JSONObject();
                jSONObject2.put("imei", "");
                jSONObject2.put("androidId", com.sigmob.sdk.b.b().getAndroidId());
                jSONObject2.put("googleId", ClientMetadata.getInstance().getAdvertisingId());
                jSONObject2.put("oaid", ClientMetadata.getInstance().getOAID());
                jSONObject.put("android", jSONObject2);
                return jSONObject.toString();
            } catch (Throwable th) {
                com.sigmob.sdk.base.utils.k.f(d.f81179a, "getDeviceInfo: error = " + th, new Object[0]);
                return null;
            }
        }

        @JavascriptInterface
        public String getUniqueId() {
            d dVarA = a();
            if (dVarA == null) {
                return null;
            }
            return dVarA.a().getUniqueId();
        }

        /* JADX WARN: Code duplicated, block: B:30:0x0087  */
        /* JADX WARN: Failed to restore switch over string. Please report as a decompilation issue */
        @JavascriptInterface
        public String handleMacro(JSONObject jsonData) {
            byte b10 = 0;
            com.sigmob.sdk.base.utils.k.c(d.f81179a, "handleMacro: jsonData = " + jsonData, new Object[0]);
            if (jsonData == null) {
                return null;
            }
            try {
                String strOptString = jsonData.optString(NotificationCompat.CATEGORY_EVENT);
                JSONObject jSONObjectOptJSONObject = jsonData.optJSONObject(QuarkPromptActivity_.ARGS_EXTRA);
                if (jSONObjectOptJSONObject == null) {
                    return null;
                }
                String strOptString2 = jSONObjectOptJSONObject.optString("key");
                String strOptString3 = jSONObjectOptJSONObject.optString(HmInputMappingContent.FIELD_VALUE);
                String strOptString4 = jSONObjectOptJSONObject.optString(PointParamKey.VID);
                d dVarA = a();
                BaseAdUnit baseAdUnitB = dVarA == null ? null : dVarA.b(strOptString4);
                switch (strOptString.hashCode()) {
                    case -1253019733:
                        if (!strOptString.equals("addMacro")) {
                            b10 = -1;
                        } else {
                            b10 = 1;
                        }
                        break;
                    case -759131257:
                        if (!strOptString.equals("addAllMacros")) {
                            b10 = -1;
                        }
                        break;
                    case -750002817:
                        if (!strOptString.equals("clearMacro")) {
                            b10 = -1;
                        } else {
                            b10 = 4;
                        }
                        break;
                    case -310745688:
                        if (!strOptString.equals("removeMacro")) {
                            b10 = -1;
                        } else {
                            b10 = 3;
                        }
                        break;
                    case 1959477782:
                        if (!strOptString.equals("getMacro")) {
                            b10 = -1;
                        } else {
                            b10 = 2;
                        }
                        break;
                    default:
                        b10 = -1;
                        break;
                }
                if (b10 == 0) {
                    JSONObject jSONObjectOptJSONObject2 = jSONObjectOptJSONObject.optJSONObject("maps");
                    if (jSONObjectOptJSONObject2 == null) {
                        return null;
                    }
                    Iterator<String> itKeys = jSONObjectOptJSONObject2.keys();
                    while (itKeys.hasNext()) {
                        String next = itKeys.next();
                        (baseAdUnitB == null ? Sigmob.getInstance().getMacroCommon() : baseAdUnitB.getMacroCommon()).addMarcoKey(next, jSONObjectOptJSONObject2.optString(next));
                    }
                } else if (b10 != 1) {
                    if (b10 == 2) {
                        if (com.sigmob.sdk.base.utils.t.a((CharSequence) strOptString2)) {
                            return null;
                        }
                        return baseAdUnitB == null ? Sigmob.getInstance().getMacroCommon().getMarcoKey(strOptString2) : baseAdUnitB.getMacroCommon().getMarcoKey(strOptString2);
                    }
                    if (b10 == 3) {
                        if (com.sigmob.sdk.base.utils.t.a((CharSequence) strOptString2)) {
                            return null;
                        }
                        (baseAdUnitB == null ? Sigmob.getInstance().getMacroCommon() : baseAdUnitB.getMacroCommon()).removeMarcoKey(strOptString2);
                    } else if (b10 == 4) {
                        (baseAdUnitB == null ? Sigmob.getInstance().getMacroCommon() : baseAdUnitB.getMacroCommon()).clearMacro();
                    }
                } else {
                    if (com.sigmob.sdk.base.utils.t.a((CharSequence) strOptString2)) {
                        return null;
                    }
                    (baseAdUnitB == null ? Sigmob.getInstance().getMacroCommon() : baseAdUnitB.getMacroCommon()).addMarcoKey(strOptString2, strOptString3);
                }
                return null;
            } catch (Exception e10) {
                e10.printStackTrace();
            }
        }

        @JavascriptInterface
        public void postMessage(final String data) {
            final d dVarA;
            com.sigmob.sdk.base.utils.k.c(d.f81179a, "postMessage: data = " + data, new Object[0]);
            if (com.sigmob.sdk.base.utils.t.a((CharSequence) data) || (dVarA = a()) == null || dVarA.f81184d == null) {
                return;
            }
            dVarA.f81184d.post(new Runnable() { // from class: com.sigmob.sdk.mraid2.f0
                @Override // java.lang.Runnable
                public final void run() {
                    d dVar = dVarA;
                    dVar.a(dVar, data);
                }
            });
        }

        /* JADX WARN: Code duplicated, block: B:37:0x00b3  */
        /* JADX WARN: Failed to restore switch over string. Please report as a decompilation issue */
        @JavascriptInterface
        public String storage(String json) {
            byte b10 = 0;
            com.sigmob.sdk.base.utils.k.c(d.f81179a, "storage: json = " + json, new Object[0]);
            if (com.sigmob.sdk.base.utils.t.a((CharSequence) json)) {
                return null;
            }
            try {
                JSONObject jSONObject = new JSONObject(json);
                String strOptString = jSONObject.optString(NotificationCompat.CATEGORY_EVENT);
                JSONObject jSONObjectOptJSONObject = jSONObject.optJSONObject(QuarkPromptActivity_.ARGS_EXTRA);
                if (jSONObjectOptJSONObject == null) {
                    return null;
                }
                int iOptInt = jSONObjectOptJSONObject.optInt("type");
                String strOptString2 = jSONObjectOptJSONObject.optString("key");
                String strOptString3 = jSONObjectOptJSONObject.optString(HmInputMappingContent.FIELD_VALUE);
                if (iOptInt == 1 || iOptInt == 2) {
                    d dVarA = a();
                    if (d.f81180e == null && com.sigmob.sdk.base.utils.w.b(dVarA)) {
                        p unused = d.f81180e = new p(dVarA.f81184d.getContext());
                    }
                    switch (strOptString.hashCode()) {
                        case -1106363674:
                            if (!strOptString.equals("length")) {
                                b10 = -1;
                            } else {
                                b10 = 4;
                            }
                            break;
                        case -625809843:
                            if (!strOptString.equals("addEventListener")) {
                                b10 = -1;
                            } else {
                                b10 = 5;
                            }
                            break;
                        case -75439223:
                            if (!strOptString.equals("getItem")) {
                                b10 = -1;
                            } else {
                                b10 = 1;
                            }
                            break;
                        case 94746189:
                            if (!strOptString.equals("clear")) {
                                b10 = -1;
                            } else {
                                b10 = 3;
                            }
                            break;
                        case 1098253751:
                            if (!strOptString.equals("removeItem")) {
                                b10 = -1;
                            } else {
                                b10 = 2;
                            }
                            break;
                        case 1984670357:
                            if (!strOptString.equals("setItem")) {
                                b10 = -1;
                            }
                            break;
                        default:
                            b10 = -1;
                            break;
                    }
                    if (b10 == 0) {
                        d.f81180e.a(iOptInt, strOptString2, strOptString3);
                    } else {
                        if (b10 == 1) {
                            return d.f81180e.a(iOptInt, strOptString2);
                        }
                        if (b10 == 2) {
                            d.f81180e.b(iOptInt, strOptString2);
                        } else if (b10 == 3) {
                            d.f81180e.a(iOptInt);
                        } else {
                            if (b10 == 4) {
                                return String.valueOf(d.f81180e.b(iOptInt));
                            }
                            if (b10 == 5) {
                                d.f81180e.a(iOptInt, strOptString2, new p.a() { // from class: com.sigmob.sdk.mraid2.h0
                                    @Override // com.sigmob.sdk.mraid2.p.a
                                    public final void valueChange(JSONObject jSONObject2) {
                                        this.f81220a.a(jSONObject2);
                                    }
                                });
                            }
                        }
                    }
                }
                return null;
            } catch (Exception e10) {
                e10.printStackTrace();
            }
        }

        @JavascriptInterface
        public String tracking(JSONObject jsonData) {
            boolean zOptBoolean;
            boolean zOptBoolean2;
            int iOptInt;
            String strOptString;
            boolean zOptBoolean3;
            com.sigmob.sdk.base.utils.k.c(d.f81179a, "tracking: jsonData = " + jsonData, new Object[0]);
            try {
                if (jsonData == null) {
                    return d.a(400, "not params", (Object) null);
                }
                String strOptString2 = jsonData.optString(NotificationCompat.CATEGORY_EVENT);
                JSONArray jSONArrayOptJSONArray = jsonData.optJSONArray("urls");
                JSONObject jSONObjectOptJSONObject = jsonData.optJSONObject("data");
                if (jSONObjectOptJSONObject == null) {
                    strOptString = "";
                    zOptBoolean = false;
                    zOptBoolean2 = false;
                    iOptInt = 0;
                    zOptBoolean3 = false;
                } else {
                    zOptBoolean = jSONObjectOptJSONObject.optBoolean("inQueue");
                    zOptBoolean2 = jSONObjectOptJSONObject.optBoolean("statistic");
                    iOptInt = jSONObjectOptJSONObject.optInt("retry");
                    strOptString = jSONObjectOptJSONObject.optString(PointParamKey.VID);
                    zOptBoolean3 = jSONObjectOptJSONObject.optBoolean("repeat");
                }
                d dVarA = a();
                Context context = dVarA == null ? null : dVarA.f81184d.getContext();
                BaseAdUnit baseAdUnitB = dVarA == null ? null : dVarA.b(strOptString);
                if (com.sigmob.sdk.base.utils.t.a((CharSequence) strOptString2, (CharSequence) "click")) {
                    if (context == null || baseAdUnitB == null) {
                        com.sigmob.sdk.base.utils.k.c(d.f81179a, "tracking: value is null.", new Object[0]);
                    } else {
                        String requestId = baseAdUnitB.getRequestId();
                        int iOptInt2 = jSONObjectOptJSONObject == null ? 0 : jSONObjectOptJSONObject.optInt("clickLoseRate");
                        int iOptInt3 = com.sigmob.sdk.base.utils.d.f79716b;
                        if (jSONObjectOptJSONObject != null) {
                            iOptInt3 = jSONObjectOptJSONObject.optInt("clickCbState", iOptInt3);
                        }
                        com.sigmob.sdk.base.utils.d.a(requestId, Integer.valueOf(iOptInt2), Integer.valueOf(iOptInt3));
                        com.sigmob.sdk.base.utils.k.c(d.f81179a, "tracking: clickCbState = " + iOptInt3, new Object[0]);
                        boolean z10 = true;
                        if (jSONObjectOptJSONObject != null && !jSONObjectOptJSONObject.optBoolean("normalClick", true)) {
                            z10 = false;
                        }
                        if (z10) {
                            BaseBroadcastReceiver.a(context, baseAdUnitB.getUuid(), IntentActions.ACTION_INTERSTITIAL_CLICK);
                        }
                    }
                }
                if (jSONArrayOptJSONArray != null && jSONArrayOptJSONArray.length() != 0) {
                    for (int i10 = 0; i10 < jSONArrayOptJSONArray.length(); i10++) {
                        ah ahVar = new ah(jSONArrayOptJSONArray.optString(i10), strOptString2, baseAdUnitB == null ? "" : baseAdUnitB.getRequestId());
                        ahVar.setRetryNum(Integer.valueOf(iOptInt));
                        ahVar.setSource("js");
                        com.sigmob.sdk.base.network.h.a(ahVar, baseAdUnitB, zOptBoolean3, zOptBoolean, zOptBoolean2, null);
                    }
                    return d.a(200, "tracking success", (Object) null);
                }
                List<ah> adTracker = baseAdUnitB == null ? null : baseAdUnitB.getAdTracker(strOptString2);
                if (com.sigmob.sdk.base.utils.e.b(adTracker)) {
                    for (ah ahVar2 : adTracker) {
                        ahVar2.setRetryNum(Integer.valueOf(iOptInt));
                        ahVar2.setSource("js");
                        com.sigmob.sdk.base.network.h.a(ahVar2, baseAdUnitB, zOptBoolean3, zOptBoolean, zOptBoolean2, null);
                    }
                }
                return d.a(300, "urls is empty", (Object) null);
            } catch (Throwable th) {
                return d.a(500, "unknown error: " + th.getMessage(), (Object) null);
            }
        }

        public d a() {
            return this.f81194a.get();
        }

        /* JADX INFO: Access modifiers changed from: private */
        public /* synthetic */ void a(final JSONObject jSONObject) {
            c cVarA;
            final d dVarA = a();
            if (dVarA == null || (cVarA = dVarA.a()) == null) {
                return;
            }
            cVarA.post(new Runnable() { // from class: com.sigmob.sdk.mraid2.i0
                @Override // java.lang.Runnable
                public final void run() {
                    dVarA.b(jSONObject);
                }
            });
        }

        /* JADX INFO: Access modifiers changed from: private */
        public static /* synthetic */ void a(JSONObject jSONObject, Object obj) {
            HashMap map = new HashMap();
            Iterator<String> itKeys = jSONObject.keys();
            while (itKeys.hasNext()) {
                String next = itKeys.next();
                if (!next.equalsIgnoreCase(PointParamKey._AC_TYPE)) {
                    map.put(next, jSONObject.optString(next));
                }
            }
            if (obj instanceof PointEntitySigmob) {
                PointEntitySigmob pointEntitySigmob = (PointEntitySigmob) obj;
                if (com.sigmob.sdk.base.utils.e.b(map)) {
                    pointEntitySigmob.getOptions().putAll(map);
                }
            }
        }
    }

    d(final List<BaseAdUnit> adUnitList) {
        LinkedList linkedList = new LinkedList();
        this.f81186g = linkedList;
        this.f81188j = false;
        this.f81182b = adUnitList;
        linkedList.addAll(adUnitList);
        ThreadPoolFactory.getFixIOExecutor().submit(new Runnable() { // from class: com.sigmob.sdk.mraid2.c0
            @Override // java.lang.Runnable
            public final void run() {
                this.f81177b.b(adUnitList);
            }
        });
    }

    /* JADX INFO: Access modifiers changed from: private */
    public LoadAdRequest j() {
        if (com.sigmob.sdk.base.utils.e.a(this.f81182b)) {
            return null;
        }
        return this.f81182b.get(0).getAdRequest();
    }

    private void k() {
        k kVar = this.f81183c;
        if (kVar == null) {
            return;
        }
        kVar.b();
    }

    private void l() {
        k kVar = this.f81183c;
        if (kVar == null) {
            return;
        }
        kVar.c();
    }

    private void m() {
        k kVar = this.f81183c;
        if (kVar == null) {
            return;
        }
        kVar.d();
    }

    private void n() {
        k kVar = this.f81183c;
        if (kVar == null) {
            return;
        }
        kVar.a();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void o() {
        try {
            if (com.sigmob.sdk.base.utils.w.b(this.f81185f)) {
                this.f81185f.c();
            }
            b(true);
            e();
            a(this.f81184d.getAdSize());
            f();
            a(100);
            a(a(this.f81182b), this.f81189k);
        } catch (Throwable th) {
            com.sigmob.sdk.base.utils.k.f(f81179a, "handleJsLoad: error = " + th.getMessage(), new Object[0]);
        }
    }

    public BaseAdUnit b(String vid) {
        if (!com.sigmob.sdk.base.utils.t.a((CharSequence) vid) && !com.sigmob.sdk.base.utils.e.a(this.f81186g)) {
            for (int i10 = 0; i10 < this.f81186g.size(); i10++) {
                BaseAdUnit baseAdUnit = this.f81182b.get(i10);
                if (vid.equals(baseAdUnit.getAd().vid)) {
                    return baseAdUnit;
                }
            }
        }
        return null;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public BidResponse a(List<BaseAdUnit> adUnitList) {
        Template templateBuild;
        List<MaterialMeta> list;
        ArrayList arrayList = new ArrayList();
        for (int i10 = 0; i10 < adUnitList.size(); i10++) {
            Ad ad2 = adUnitList.get(i10).getAd();
            ArrayList arrayList2 = new ArrayList();
            if (ad2 != null && (list = ad2.materials) != null && !list.isEmpty()) {
                MaterialMeta.Builder builderNewBuilder = ad2.materials.get(0).newBuilder();
                if (com.sigmob.sdk.base.utils.w.b(builderNewBuilder.main_template) && builderNewBuilder.main_template.type.intValue() == 2) {
                    Template templateBuild2 = builderNewBuilder.main_template.newBuilder().context(null).build();
                    templateBuild2.templateId = builderNewBuilder.main_template.templateId;
                    builderNewBuilder.main_template(templateBuild2);
                }
                if (com.sigmob.sdk.base.utils.w.b(builderNewBuilder.sub_template) && builderNewBuilder.sub_template.type.intValue() == 2) {
                    Template templateBuild3 = builderNewBuilder.sub_template.newBuilder().context(null).build();
                    templateBuild3.templateId = builderNewBuilder.sub_template.templateId;
                    builderNewBuilder.sub_template(templateBuild3);
                }
                arrayList2.add(builderNewBuilder.html_snippet(null).build());
                arrayList.add(ad2.newBuilder().materials(arrayList2).build());
            }
        }
        BidResponse.Builder builder = new BidResponse.Builder();
        BaseAdUnit baseAdUnit = adUnitList.get(0);
        if (com.sigmob.sdk.base.utils.w.b(baseAdUnit)) {
            if (com.sigmob.sdk.base.utils.w.b(baseAdUnit.scene)) {
                if (baseAdUnit.scene.type.intValue() == 2) {
                    templateBuild = baseAdUnit.scene.newBuilder().context(null).build();
                    templateBuild.templateId = baseAdUnit.scene.templateId;
                } else {
                    templateBuild = baseAdUnit.scene.newBuilder().build();
                }
                builder.scene(templateBuild);
            }
            if (com.sigmob.sdk.base.utils.w.b(baseAdUnit.slotAdSetting)) {
                builder.slot_ad_setting(baseAdUnit.slotAdSetting.newBuilder().build());
            }
            if (com.sigmob.sdk.base.utils.w.b(baseAdUnit.bidding_response)) {
                builder.bidding_response(baseAdUnit.bidding_response.newBuilder().build());
            }
            builder.request_id(baseAdUnit.getRequestId());
            builder.uid(baseAdUnit.uid);
            builder.expiration_time(Integer.valueOf(baseAdUnit.expiration_time));
        }
        return builder.ads(arrayList).build();
    }

    private void i() {
        this.f81187i = true;
        this.f81184d.post(new Runnable() { // from class: com.sigmob.sdk.mraid2.d0
            @Override // java.lang.Runnable
            public final void run() {
                this.f81195b.o();
            }
        });
    }

    private void j(JSONObject args) {
        if (args == null) {
            return;
        }
        String strOptString = args.optString("uniqId");
        String strOptString2 = args.optString(NotificationCompat.CATEGORY_EVENT);
        if (com.sigmob.sdk.base.utils.t.a((CharSequence) strOptString) || com.sigmob.sdk.base.utils.t.a((CharSequence) strOptString2)) {
            return;
        }
        List<String> list = f81181h.get(strOptString + "~" + strOptString2);
        if (list == null) {
            return;
        }
        for (String str : new CopyOnWriteArrayList(list)) {
            if (str.equals(strOptString)) {
                list.remove(str);
            }
        }
    }

    private void k(JSONObject args) {
        HashMap<String, c> mraidWebViews;
        d mraidBridge;
        if (args == null) {
            return;
        }
        String uniqueId = a().getUniqueId();
        String strOptString = args.optString(NotificationCompat.CATEGORY_EVENT);
        if (com.sigmob.sdk.base.utils.t.a((CharSequence) uniqueId) || com.sigmob.sdk.base.utils.t.a((CharSequence) strOptString)) {
            return;
        }
        List<String> list = f81181h.get(uniqueId + "~" + strOptString);
        if (list == null || list.isEmpty() || (mraidWebViews = c.getMraidWebViews()) == null) {
            return;
        }
        Iterator<String> it2 = list.iterator();
        while (it2.hasNext()) {
            c cVar = mraidWebViews.get(it2.next());
            if (cVar != null && (mraidBridge = cVar.getMraidBridge()) != null) {
                mraidBridge.a(uniqueId, strOptString, args);
            }
        }
    }

    private void l(JSONObject args) {
        if (args == null) {
            return;
        }
        String strOptString = args.optString("uniqId");
        String strOptString2 = args.optString(NotificationCompat.CATEGORY_EVENT);
        if (com.sigmob.sdk.base.utils.t.a((CharSequence) strOptString) || com.sigmob.sdk.base.utils.t.a((CharSequence) strOptString2)) {
            return;
        }
        HashMap<String, List<String>> map = f81181h;
        List<String> arrayList = map.get(strOptString2);
        if (arrayList == null) {
            arrayList = new ArrayList<>();
            map.put(strOptString + "~" + strOptString2, arrayList);
        }
        arrayList.add(this.f81184d.getUniqueId());
    }

    public List<BaseAdUnit> c() {
        return this.f81186g;
    }

    void d() {
        a("mraidbridge.fireReadyEvent();");
    }

    void e() {
        JSONObject jSONObject = new JSONObject();
        try {
            JSONObject jSONObject2 = new JSONObject();
            jSONObject2.put("orientation", ClientMetadata.getInstance().getOrientationInt());
            jSONObject2.put(PointCategory.LOCKED, true);
            jSONObject.put("orientation", jSONObject2);
        } catch (JSONException e10) {
            e10.printStackTrace();
        }
        a("mraidbridge.fireChangeEvent(" + jSONObject + ");");
    }

    void f() {
        JSONObject jSONObject = new JSONObject();
        try {
            jSONObject.put("sdkVersion", com.sigmob.sdk.base.n.f79584k);
        } catch (JSONException e10) {
            e10.printStackTrace();
        }
        a("mraidbridge.fireChangeEvent(" + jSONObject + ")");
    }

    public void g() {
        if (com.sigmob.sdk.base.utils.w.b(f81180e)) {
            f81180e = null;
        }
        if (com.sigmob.sdk.base.utils.w.b(this.f81184d)) {
            this.f81184d = null;
        }
        this.f81183c = null;
        this.f81185f = null;
    }

    private void b(d bridge, String data, String subEvent, JSONObject args) {
        if (com.sigmob.sdk.base.utils.w.b(this.f81183c)) {
            this.f81183c.b(subEvent, args);
        }
        bridge.d(data);
    }

    private void c(d bridge, String data, String subEvent, JSONObject args) {
        if (com.sigmob.sdk.base.utils.w.b(this.f81183c)) {
            this.f81183c.c(subEvent, args);
        }
        bridge.d(data);
    }

    private void d(d mraidBridge, String data, JSONObject args) {
        if (com.sigmob.sdk.base.utils.w.b(this.f81183c)) {
            this.f81183c.b(args);
        }
        mraidBridge.d(data);
    }

    private void e(d bridge, String data, JSONObject json) {
        if (com.sigmob.sdk.base.utils.w.b(this.f81183c)) {
            this.f81183c.g(json);
        }
        bridge.d(data);
    }

    private void f(d bridge, String data, JSONObject args) {
        if (com.sigmob.sdk.base.utils.w.b(args)) {
            this.f81184d.setVisibility(args.optBoolean("visible") ? 0 : 4);
        }
        bridge.d(data);
    }

    private void g(d bridge, String data, JSONObject json) {
        if (com.sigmob.sdk.base.utils.w.b(this.f81183c)) {
            this.f81183c.f(json);
        }
        bridge.d(data);
    }

    private void h(JSONObject args) {
        k kVar = this.f81183c;
        if (kVar == null) {
            return;
        }
        kVar.a(args);
    }

    private void i(JSONObject args) {
        if (com.sigmob.sdk.base.utils.w.b(this.f81185f) && com.sigmob.sdk.base.utils.w.b(args)) {
            this.f81185f.a(args.optInt("red"), args.optInt("green"), args.optInt("blue"), args.optInt("alpha"));
        }
    }

    public c a() {
        return this.f81184d;
    }

    private void b(d bridge, String data, JSONObject args) {
        if (bridge == null) {
            return;
        }
        JSONObject jSONObjectOptJSONObject = args == null ? null : args.optJSONObject("data");
        String strOptString = jSONObjectOptJSONObject == null ? null : jSONObjectOptJSONObject.optString(PointParamKey.VID);
        BaseAdUnit baseAdUnitB = com.sigmob.sdk.base.utils.t.a((CharSequence) strOptString) ? null : bridge.b(strOptString);
        if (com.sigmob.sdk.base.utils.w.b(this.f81183c)) {
            this.f81183c.a(baseAdUnitB, args);
        }
        bridge.d(data);
    }

    private void c(d mraidBridge, String data, JSONObject args) {
        if (com.sigmob.sdk.base.utils.w.b(this.f81183c)) {
            this.f81183c.d(args);
        }
        mraidBridge.d(data);
    }

    void d(String cmd) {
        a("mraidbridge.nativeCallComplete(" + JSONObject.quote(cmd) + ")");
    }

    void e(String key) {
        JSONObject jSONObject = new JSONObject();
        try {
            JSONObject jSONObject2 = new JSONObject();
            jSONObject2.put(NotificationCompat.CATEGORY_EVENT, "fire_" + key);
            jSONObject.put("notify", jSONObject2);
        } catch (JSONException e10) {
            e10.printStackTrace();
        }
        a("mraidbridge.fireChangeEvent(" + jSONObject + ");");
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public void f(String key) {
        JSONObject jSONObject = new JSONObject();
        try {
            JSONObject jSONObject2 = new JSONObject();
            jSONObject2.put(NotificationCompat.CATEGORY_EVENT, key);
            jSONObject.put("notify", jSONObject2);
        } catch (JSONException e10) {
            e10.printStackTrace();
        }
        a("mraidbridge.fireChangeEvent(" + jSONObject + ");");
    }

    void g(String key) {
        JSONObject jSONObject = new JSONObject();
        try {
            JSONObject jSONObject2 = new JSONObject();
            jSONObject2.put(NotificationCompat.CATEGORY_EVENT, key);
            jSONObject.put("notify", jSONObject2);
        } catch (JSONException e10) {
            e10.printStackTrace();
        }
        a("mraidbridge.fireChangeEvent(" + jSONObject + ");");
    }

    public static String a(int code, String message, Object data) {
        try {
            JSONObject jSONObject = new JSONObject();
            jSONObject.put("code", code);
            if (com.sigmob.sdk.base.utils.t.b(message)) {
                jSONObject.put("message", message);
            }
            if (com.sigmob.sdk.base.utils.w.b(data)) {
                jSONObject.put("data", data);
            }
            return jSONObject.toString();
        } catch (Throwable th) {
            return th.getMessage();
        }
    }

    private void b(d bridge, JSONObject args) {
        BaseAdUnit baseAdUnitB = null;
        String strOptString = args == null ? null : args.optString(PointParamKey.VID);
        if (!com.sigmob.sdk.base.utils.t.a((CharSequence) strOptString)) {
            JSONObject jSONObjectOptJSONObject = args.optJSONObject("data");
            if (jSONObjectOptJSONObject == null) {
                jSONObjectOptJSONObject = new JSONObject();
            }
            try {
                jSONObjectOptJSONObject.put(PointParamKey.VID, strOptString);
            } catch (Exception e10) {
                com.sigmob.sdk.base.utils.k.f(f81179a, "handleFeedbackByVid: error = " + e10.getMessage(), new Object[0]);
            }
            baseAdUnitB = bridge.b(strOptString);
        }
        if (com.sigmob.sdk.base.utils.w.b(this.f81185f)) {
            this.f81185f.a(baseAdUnitB);
        }
    }

    private void c(d mraidBridge, JSONObject args) {
        String strOptString = args == null ? null : args.optString(NotificationCompat.CATEGORY_EVENT);
        JSONObject jSONObjectOptJSONObject = args != null ? args.optJSONObject("data") : null;
        HashMap map = new HashMap();
        if (com.sigmob.sdk.base.utils.w.b(jSONObjectOptJSONObject)) {
            Iterator<String> itKeys = jSONObjectOptJSONObject.keys();
            while (itKeys.hasNext()) {
                String next = itKeys.next();
                map.put(next, jSONObjectOptJSONObject.optString(next));
            }
        }
        if (com.sigmob.sdk.base.utils.w.b(this.f81182b.get(0))) {
            LoadAdRequest adRequest = this.f81182b.get(0).getAdRequest();
            adRequest.setOptions(map);
            adRequest.setLastCampid(com.sigmob.sdk.base.common.h.g().o());
            adRequest.setLastCrid(com.sigmob.sdk.base.common.h.g().n());
            com.sigmob.sdk.base.network.f.a(adRequest, new AnonymousClass2(mraidBridge, strOptString));
        }
    }

    private void d(JSONObject args) {
        String strOptString = args == null ? null : args.optString(PointParamKey.VID);
        if (com.sigmob.sdk.base.utils.w.b(this.f81183c)) {
            this.f81183c.a(strOptString);
        }
    }

    private void e(JSONObject args) {
        v scrollTouchListener;
        c cVar = this.f81184d;
        if (cVar == null || (scrollTouchListener = cVar.getScrollTouchListener()) == null) {
            return;
        }
        scrollTouchListener.a(this.f81184d, args);
    }

    private void f(JSONObject args) {
        v scrollTouchListener;
        c cVar = this.f81184d;
        if (cVar == null || (scrollTouchListener = cVar.getScrollTouchListener()) == null) {
            return;
        }
        scrollTouchListener.b(args);
    }

    private void g(JSONObject args) {
        v scrollTouchListener;
        c cVar = this.f81184d;
        if (cVar == null || (scrollTouchListener = cVar.getScrollTouchListener()) == null) {
            return;
        }
        scrollTouchListener.a(args);
    }

    void a(int exposedPercentage) {
        a("mraidbridge.fireChangeEvent({\"exposure\":" + exposedPercentage + "});");
    }

    public void b(String uniqueId, int state) {
        JSONObject jSONObject = new JSONObject();
        try {
            JSONObject jSONObject2 = new JSONObject();
            jSONObject2.put("uniqueId", uniqueId);
            jSONObject2.put(NoticeTopAnimActivityDialog_.STATE_EXTRA, state);
            jSONObject.put("vdLoadStateChanged", jSONObject2);
        } catch (JSONException e10) {
            e10.printStackTrace();
        }
        a("mraidbridge.fireChangeEvent(" + jSONObject + ");");
    }

    public void c(String uniqueId) {
        JSONObject jSONObject = new JSONObject();
        try {
            JSONObject jSONObject2 = new JSONObject();
            jSONObject2.put("uniqueId", uniqueId);
            jSONObject.put("wvFinished", jSONObject2);
        } catch (JSONException e10) {
            e10.printStackTrace();
        }
        a("mraidbridge.fireChangeEvent(" + jSONObject + ");");
    }

    void a(int type, int index) {
        JSONObject jSONObject = new JSONObject();
        try {
            jSONObject.put("type", type);
            jSONObject.put("index", index);
        } catch (JSONException e10) {
            e10.printStackTrace();
        }
        a("mraidbridge.notifyPageChangeEvent(" + jSONObject + ");");
    }

    void b(String event, String message) {
        JSONObject jSONObject = new JSONObject();
        try {
            JSONObject jSONObject2 = new JSONObject();
            jSONObject2.put(NotificationCompat.CATEGORY_EVENT, event);
            if (com.sigmob.sdk.base.utils.t.b(message)) {
                jSONObject2.put("message", message);
            }
            jSONObject.put("notify", jSONObject2);
        } catch (JSONException e10) {
            e10.printStackTrace();
        }
        a("mraidbridge.fireChangeEvent(" + jSONObject + ");");
    }

    public void c(String uniqueId, int position) {
        JSONObject jSONObject = new JSONObject();
        try {
            JSONObject jSONObject2 = new JSONObject();
            jSONObject2.put("uniqueId", uniqueId);
            jSONObject2.put("currentTime", position / 1000.0f);
            jSONObject.put("vdPlayToEnd", jSONObject2);
        } catch (JSONException e10) {
            e10.printStackTrace();
        }
        a("mraidbridge.fireChangeEvent(" + jSONObject + ");");
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void b(List list) {
        this.f81189k = JSONSerializer.Serialize(a((List<BaseAdUnit>) list), "bidResponse", true, true);
    }

    private void c(JSONObject args) {
        k kVar = this.f81183c;
        if (kVar == null) {
            return;
        }
        kVar.e(args);
    }

    void a(int top, int left, int bottom, int right) {
        a("mraidbridge.setSafeAreaInsets(" + (top + "," + left + "," + bottom + "," + right) + ")");
    }

    public void a(com.sigmob.sdk.base.common.g adSize) {
        int iPixelsToIntDips;
        int iPixelsToIntDips2;
        Context context = this.f81184d.getContext();
        DisplayMetrics displayMetrics = context.getResources().getDisplayMetrics();
        JSONObject jSONObject = new JSONObject();
        try {
            JSONObject jSONObject2 = new JSONObject();
            if (adSize == null) {
                iPixelsToIntDips2 = Dips.pixelsToIntDips(displayMetrics.widthPixels, context);
                iPixelsToIntDips = Dips.pixelsToIntDips(displayMetrics.heightPixels, context);
            } else {
                int iPixelsToIntDips3 = Dips.pixelsToIntDips(adSize.a(), context);
                iPixelsToIntDips = Dips.pixelsToIntDips(adSize.b(), context);
                iPixelsToIntDips2 = iPixelsToIntDips3;
            }
            jSONObject2.put("width", iPixelsToIntDips2);
            jSONObject2.put("height", iPixelsToIntDips);
            jSONObject.put("screenSize", jSONObject2);
        } catch (JSONException e10) {
            e10.printStackTrace();
        }
        a("mraidbridge.fireChangeEvent(" + jSONObject + ");");
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public void b(JSONObject jsonObject) {
        a("mraidbridge.onStorageChanged(" + jsonObject.toString() + ");");
    }

    void a(BidResponse bidResponse, String bidResponseContent) {
        if (com.sigmob.sdk.base.utils.t.a((CharSequence) bidResponseContent)) {
            bidResponseContent = JSONSerializer.Serialize(bidResponse, "bidResponse", true, true);
        }
        a("mraidbridge.fireChangeEvent(" + bidResponseContent + ");");
    }

    void b(boolean isViewable) {
        JSONObject jSONObject = new JSONObject();
        try {
            jSONObject.put("viewable", isViewable);
        } catch (JSONException e10) {
            e10.printStackTrace();
        }
        a("mraidbridge.fireChangeEvent(" + jSONObject + ")");
    }

    public void a(c mraidWebView) {
        this.f81184d = mraidWebView;
        mraidWebView.setScrollContainer(false);
        this.f81184d.setVerticalScrollBarEnabled(false);
        this.f81184d.setHorizontalScrollBarEnabled(false);
        this.f81184d.setBackgroundColor(0);
        this.f81184d.setWebChromeClient(new WebChromeClient() { // from class: com.sigmob.sdk.mraid2.d.1
            @Override // android.webkit.WebChromeClient
            public boolean onConsoleMessage(ConsoleMessage consoleMessage) {
                return d.this.f81185f == null ? super.onConsoleMessage(consoleMessage) : d.this.f81185f.a(consoleMessage);
            }

            @Override // android.webkit.WebChromeClient
            public boolean onJsAlert(WebView view, String url, String message, JsResult result) {
                return super.onJsAlert(view, url, message, result);
            }

            @Override // android.webkit.WebChromeClient
            public boolean onJsPrompt(WebView view, String url, String message, String defaultValue, JsPromptResult result) {
                return super.onJsPrompt(view, url, message, defaultValue, result);
            }

            @Override // android.webkit.WebChromeClient
            public void onProgressChanged(WebView view, int newProgress) {
                super.onProgressChanged(view, newProgress);
                if (d.this.f81187i || d.this.f81188j || newProgress <= 70) {
                    return;
                }
                d.this.f81188j = true;
                d.this.a(g.INJECTION_JAVASCRIPT, (ValueCallback) null);
            }

            @Override // android.webkit.WebChromeClient
            public void onShowCustomView(final View view, final WebChromeClient.CustomViewCallback callback) {
                super.onShowCustomView(view, callback);
            }
        });
    }

    public boolean b() {
        return this.f81187i;
    }

    /* JADX WARN: Code duplicated, block: B:96:0x01a6  */
    /* JADX WARN: Failed to restore switch over string. Please report as a decompilation issue */
    public void a(d mraidBridge, String data) {
        byte b10;
        try {
            com.sigmob.sdk.base.utils.k.c(f81179a, "handlePostMessage: data = " + data, new Object[0]);
            JSONObject jSONObject = new JSONObject(data);
            String strOptString = jSONObject.optString(NotificationCompat.CATEGORY_EVENT);
            String strOptString2 = jSONObject.optString("subEvent");
            JSONObject jSONObjectOptJSONObject = jSONObject.optJSONObject(QuarkPromptActivity_.ARGS_EXTRA);
            com.sigmob.sdk.base.utils.k.b(f81179a, "handlePostMessage: event = " + strOptString, new Object[0]);
            switch (strOptString.hashCode()) {
                case -1976311883:
                    if (!strOptString.equals("feedbackByVid")) {
                        b10 = -1;
                    } else {
                        b10 = 5;
                    }
                    break;
                case -1795707688:
                    if (!strOptString.equals("blurEffect")) {
                        b10 = -1;
                    } else {
                        b10 = 26;
                    }
                    break;
                case -1608145821:
                    if (!strOptString.equals("touchStart")) {
                        b10 = -1;
                    } else {
                        b10 = BinaryMemcacheOpcodes.DELETEQ;
                    }
                    break;
                case -1347417095:
                    if (!strOptString.equals("useScrollView")) {
                        b10 = -1;
                    } else {
                        b10 = 14;
                    }
                    break;
                case -1219368489:
                    if (!strOptString.equals("dispatch_after")) {
                        b10 = -1;
                    } else {
                        b10 = 3;
                    }
                    break;
                case -1068318794:
                    if (!strOptString.equals("motion")) {
                        b10 = -1;
                    } else {
                        b10 = BinaryMemcacheOpcodes.QUITQ;
                    }
                    break;
                case -934326481:
                    if (!strOptString.equals("reward")) {
                        b10 = -1;
                    } else {
                        b10 = 10;
                    }
                    break;
                case -840442113:
                    if (!strOptString.equals("unload")) {
                        b10 = -1;
                    } else {
                        b10 = 9;
                    }
                    break;
                case -819563236:
                    if (!strOptString.equals("touchEnd")) {
                        b10 = -1;
                    } else {
                        b10 = BinaryMemcacheOpcodes.DECREMENTQ;
                    }
                    break;
                case -723150523:
                    if (!strOptString.equals("mraidJsLoaded")) {
                        b10 = -1;
                    } else {
                        b10 = 0;
                    }
                    break;
                case -720854149:
                    if (!strOptString.equals("motionView")) {
                        b10 = -1;
                    } else {
                        b10 = BinaryMemcacheOpcodes.FLUSHQ;
                    }
                    break;
                case -309701417:
                    if (!strOptString.equals("curPlayAd")) {
                        b10 = -1;
                    } else {
                        b10 = 11;
                    }
                    break;
                case -235365105:
                    if (!strOptString.equals("publish")) {
                        b10 = -1;
                    } else {
                        b10 = BinaryMemcacheOpcodes.GAT;
                    }
                    break;
                case 3417674:
                    if (!strOptString.equals("open")) {
                        b10 = -1;
                    } else {
                        b10 = 7;
                    }
                    break;
                case 40710404:
                    if (!strOptString.equals("addSubview")) {
                        b10 = -1;
                    } else {
                        b10 = 12;
                    }
                    break;
                case 94756344:
                    if (!strOptString.equals("close")) {
                        b10 = -1;
                    } else {
                        b10 = 8;
                    }
                    break;
                case 108386723:
                    if (!strOptString.equals("ready")) {
                        b10 = -1;
                    } else {
                        b10 = 1;
                    }
                    break;
                case 110364485:
                    if (!strOptString.equals("timer")) {
                        b10 = -1;
                    } else {
                        b10 = 16;
                    }
                    break;
                case 112408642:
                    if (!strOptString.equals("vpaid")) {
                        b10 = -1;
                    } else {
                        b10 = BinaryMemcacheOpcodes.SETQ;
                    }
                    break;
                case 363583408:
                    if (!strOptString.equals("touchMove")) {
                        b10 = -1;
                    } else {
                        b10 = BinaryMemcacheOpcodes.INCREMENTQ;
                    }
                    break;
                case 466743410:
                    if (!strOptString.equals("visible")) {
                        b10 = -1;
                    } else {
                        b10 = 2;
                    }
                    break;
                case 514841930:
                    if (!strOptString.equals("subscribe")) {
                        b10 = -1;
                    } else {
                        b10 = 27;
                    }
                    break;
                case 583281361:
                    if (!strOptString.equals("unsubscribe")) {
                        b10 = -1;
                    } else {
                        b10 = BinaryMemcacheOpcodes.TOUCH;
                    }
                    break;
                case 692531200:
                    if (!strOptString.equals("mraidLoadAd")) {
                        b10 = -1;
                    } else {
                        b10 = 4;
                    }
                    break;
                case 1118509956:
                    if (!strOptString.equals("animation")) {
                        b10 = -1;
                    } else {
                        b10 = BinaryMemcacheOpcodes.REPLACEQ;
                    }
                    break;
                case 1182268276:
                    if (!strOptString.equals("belowSubview")) {
                        b10 = -1;
                    } else {
                        b10 = 13;
                    }
                    break;
                case 1223471129:
                    if (!strOptString.equals("webView")) {
                        b10 = -1;
                    } else {
                        b10 = BinaryMemcacheOpcodes.ADDQ;
                    }
                    break;
                case 1287124693:
                    if (!strOptString.equals("backgroundColor")) {
                        b10 = -1;
                    } else {
                        b10 = BinaryMemcacheOpcodes.APPENDQ;
                    }
                    break;
                case 1519687696:
                    if (!strOptString.equals("openByVid")) {
                        b10 = -1;
                    } else {
                        b10 = 6;
                    }
                    break;
                case 1614272768:
                    if (!strOptString.equals("useCustomClose")) {
                        b10 = -1;
                    } else {
                        b10 = 15;
                    }
                    break;
                default:
                    b10 = -1;
                    break;
            }
            switch (b10) {
                case 0:
                    i();
                    return;
                case 1:
                    m();
                    return;
                case 2:
                    f(mraidBridge, data, jSONObjectOptJSONObject);
                    return;
                case 3:
                    a(mraidBridge, jSONObjectOptJSONObject);
                    return;
                case 4:
                    c(mraidBridge, jSONObjectOptJSONObject);
                    return;
                case 5:
                    b(mraidBridge, jSONObjectOptJSONObject);
                    return;
                case 6:
                    a(mraidBridge, data, jSONObjectOptJSONObject, strOptString);
                    return;
                case 7:
                    b(mraidBridge, data, jSONObjectOptJSONObject);
                    return;
                case 8:
                    n();
                    return;
                case 9:
                    k();
                    return;
                case 10:
                    l();
                    return;
                case 11:
                    d(jSONObjectOptJSONObject);
                    return;
                case 12:
                    d(mraidBridge, data, jSONObjectOptJSONObject);
                    return;
                case 13:
                    a(mraidBridge, data, jSONObjectOptJSONObject);
                    return;
                case 14:
                    c(mraidBridge, data, jSONObjectOptJSONObject);
                    return;
                case 15:
                    c(jSONObjectOptJSONObject);
                    return;
                case 16:
                    b(mraidBridge, data, strOptString2, jSONObjectOptJSONObject);
                    return;
                case 17:
                    a(mraidBridge, data, strOptString2, jSONObjectOptJSONObject);
                    return;
                case 18:
                    c(mraidBridge, data, strOptString2, jSONObjectOptJSONObject);
                    return;
                case 19:
                    h(jSONObjectOptJSONObject);
                    return;
                case 20:
                    g(jSONObjectOptJSONObject);
                    return;
                case 21:
                    f(jSONObjectOptJSONObject);
                    return;
                case 22:
                    e(jSONObjectOptJSONObject);
                    return;
                case 23:
                    g(mraidBridge, data, jSONObject);
                    return;
                case 24:
                    e(mraidBridge, data, jSONObject);
                    return;
                case 25:
                    i(jSONObjectOptJSONObject);
                    return;
                case 26:
                    a(mraidBridge, data, strOptString2);
                    return;
                case 27:
                    l(jSONObjectOptJSONObject);
                    break;
                case 28:
                    j(jSONObjectOptJSONObject);
                    break;
                case 29:
                    k(jSONObjectOptJSONObject);
                    break;
                default:
                    return;
            }
            mraidBridge.d(data);
        } catch (Exception e10) {
            com.sigmob.sdk.base.utils.k.f(f81179a, "handlePostMessage: error = " + e10.getMessage(), new Object[0]);
            e10.printStackTrace();
        }
    }

    private void a(d bridge, String data, String subEvent) {
        if (com.sigmob.sdk.base.utils.w.b(this.f81185f)) {
            subEvent.hashCode();
            if (subEvent.equals("init")) {
                this.f81185f.a();
            } else if (subEvent.equals("destroy")) {
                this.f81185f.b();
            }
        }
        if (com.sigmob.sdk.base.utils.w.b(bridge)) {
            bridge.d(data);
        }
    }

    private void a(d bridge, String data, String subEvent, JSONObject args) {
        if (com.sigmob.sdk.base.utils.w.b(this.f81183c)) {
            this.f81183c.a(subEvent, args);
        }
        bridge.d(data);
    }

    private void a(d bridge, String data, JSONObject args) {
        if (com.sigmob.sdk.base.utils.w.b(this.f81183c)) {
            this.f81183c.c(args);
        }
        bridge.d(data);
    }

    /* JADX WARN: Code duplicated, block: B:42:0x010b  */
    /* JADX WARN: Type inference fix 'apply assigned field type' failed
    java.lang.UnsupportedOperationException: ArgType.getObject(), call class: class jadx.core.dex.instructions.args.ArgType$UnknownArg
    	at jadx.core.dex.instructions.args.ArgType.getObject(ArgType.java:596)
    	at jadx.core.dex.attributes.nodes.ClassTypeVarsAttr.getTypeVarsMapFor(ClassTypeVarsAttr.java:35)
    	at jadx.core.dex.nodes.utils.TypeUtils.replaceClassGenerics(TypeUtils.java:177)
    	at jadx.core.dex.visitors.typeinference.FixTypesVisitor.insertExplicitUseCast(FixTypesVisitor.java:397)
    	at jadx.core.dex.visitors.typeinference.FixTypesVisitor.tryFieldTypeWithNewCasts(FixTypesVisitor.java:359)
    	at jadx.core.dex.visitors.typeinference.FixTypesVisitor.applyFieldType(FixTypesVisitor.java:309)
    	at jadx.core.dex.visitors.typeinference.FixTypesVisitor.visit(FixTypesVisitor.java:94)
     */
    private void a(d bridge, String cmd, JSONObject args, String event) throws JSONException {
        JSONObject jSONObject;
        String str;
        String strOptString = args == null ? null : args.optString(PointParamKey.VID);
        if (com.sigmob.sdk.base.utils.t.b(strOptString)) {
            JSONObject jSONObjectOptJSONObject = args.optJSONObject("data");
            if (jSONObjectOptJSONObject == null) {
                jSONObjectOptJSONObject = new JSONObject();
            }
            jSONObjectOptJSONObject.put(PointParamKey.VID, strOptString);
            BaseAdUnit baseAdUnitB = bridge.b(strOptString);
            String deeplinkUrl = baseAdUnitB.getDeeplinkUrl();
            String landing_page = baseAdUnitB.getLanding_page();
            AndroidMarket androidMarket = baseAdUnitB.getAndroidMarket();
            WXProgramRes wXProgramRes = baseAdUnitB.getWXProgramRes();
            JSONObject jSONObject2 = new JSONObject();
            boolean z10 = com.sigmob.sdk.base.utils.w.b(androidMarket) && com.sigmob.sdk.base.utils.t.b(androidMarket.market_url);
            int interactionType = z10 ? 3 : baseAdUnitB.getInteractionType();
            if (z10) {
                jSONObject = new JSONObject();
                jSONObject.put("market_url", androidMarket.market_url);
                jSONObject.put("type", Wire.get(androidMarket.type, 0));
                String str2 = androidMarket.app_package_name;
                if (com.sigmob.sdk.base.utils.t.b(str2)) {
                    jSONObject.put("app_package_name", str2);
                }
                String str3 = androidMarket.appstore_package_name;
                if (com.sigmob.sdk.base.utils.t.b(str3)) {
                    jSONObject.put("appstore_package_name", str3);
                }
                str = BaseConstants.SCHEME_MARKET;
            } else {
                if (interactionType == 7 && com.sigmob.sdk.base.utils.w.b(wXProgramRes)) {
                    jSONObject = new JSONObject();
                    jSONObject.put("wx_app_id", wXProgramRes.wx_app_id);
                    jSONObject.put("wx_app_username", wXProgramRes.wx_app_username);
                    jSONObject.put("wx_app_path", wXProgramRes.wx_app_path);
                    jSONObject.put("wx_business_type", wXProgramRes.wx_business_type);
                    jSONObject.put("wx_ext_msg", wXProgramRes.wx_ext_msg);
                    str = "program";
                } else if (!com.sigmob.sdk.base.utils.t.b(deeplinkUrl) || interactionType == 2) {
                    jSONObject2.put("url", landing_page);
                } else {
                    jSONObject2.put("url", deeplinkUrl);
                }
                jSONObjectOptJSONObject.put("default_url", landing_page);
                jSONObjectOptJSONObject.put("in_app", !baseAdUnitB.isSkipSigmobBrowser());
                jSONObjectOptJSONObject.put("interaction_type", interactionType);
                jSONObjectOptJSONObject.put("parse_302", !baseAdUnitB.getAd().forbiden_parse_landingpage.booleanValue());
                jSONObject2.put(NotificationCompat.CATEGORY_EVENT, event);
                jSONObject2.put("data", jSONObjectOptJSONObject);
                if (com.sigmob.sdk.base.utils.w.b(this.f81183c)) {
                    this.f81183c.a(baseAdUnitB, jSONObject2);
                }
            }
            jSONObjectOptJSONObject.put(str, jSONObject);
            jSONObjectOptJSONObject.put("default_url", landing_page);
            jSONObjectOptJSONObject.put("in_app", !baseAdUnitB.isSkipSigmobBrowser());
            jSONObjectOptJSONObject.put("interaction_type", interactionType);
            jSONObjectOptJSONObject.put("parse_302", !baseAdUnitB.getAd().forbiden_parse_landingpage.booleanValue());
            jSONObject2.put(NotificationCompat.CATEGORY_EVENT, event);
            jSONObject2.put("data", jSONObjectOptJSONObject);
            if (com.sigmob.sdk.base.utils.w.b(this.f81183c)) {
                this.f81183c.a(baseAdUnitB, jSONObject2);
            }
        }
        bridge.d(cmd);
    }

    private void a(final d bridge, JSONObject args) {
        if (args == null) {
            return;
        }
        int iOptInt = args.optInt("delay");
        final String strOptString = args.optString(NotificationCompat.CATEGORY_EVENT);
        if (iOptInt < 0 || !com.sigmob.sdk.base.utils.t.b(strOptString)) {
            return;
        }
        bridge.a().postDelayed(new Runnable() { // from class: com.sigmob.sdk.mraid2.b0
            @Override // java.lang.Runnable
            public final void run() {
                this.f81145b.f(strOptString);
            }
        }, iOptInt);
    }

    public void a(f controllerListener) {
        this.f81185f = controllerListener;
    }

    void a(k listener) {
        this.f81183c = listener;
    }

    void a(String javascript) {
        if (!this.f81187i) {
            SigmobLog.w("MRAID JS Not Load attached: " + javascript);
            return;
        }
        if (this.f81184d == null) {
            SigmobLog.e("Attempted to inject Javascript into MRAID WebView while was not attached: " + javascript);
            return;
        }
        SigmobLog.d("Injecting Javascript into MRAID WebView: " + javascript);
        this.f81184d.b(javascript, (ValueCallback) null);
    }

    public void a(String uniqueId, int state) {
        JSONObject jSONObject = new JSONObject();
        try {
            JSONObject jSONObject2 = new JSONObject();
            jSONObject2.put("uniqueId", uniqueId);
            jSONObject2.put(NoticeTopAnimActivityDialog_.STATE_EXTRA, state);
            jSONObject.put("vdPlayStateChanged", jSONObject2);
        } catch (JSONException e10) {
            e10.printStackTrace();
        }
        a("mraidbridge.fireChangeEvent(" + jSONObject + ");");
    }

    public void a(String uniqueId, int position, int duration) {
        JSONObject jSONObject = new JSONObject();
        try {
            JSONObject jSONObject2 = new JSONObject();
            jSONObject2.put("uniqueId", uniqueId);
            jSONObject2.put("currentTime", position / 1000.0f);
            jSONObject2.put("duration", duration / 1000.0f);
            jSONObject.put("vdPlayCurrentTime", jSONObject2);
        } catch (JSONException e10) {
            e10.printStackTrace();
        }
        a("mraidbridge.fireChangeEvent(" + jSONObject + ");");
    }

    void a(String uniqueId, int duration, int width, int height) {
        JSONObject jSONObject = new JSONObject();
        try {
            JSONObject jSONObject2 = new JSONObject();
            jSONObject2.put("uniqueId", uniqueId);
            jSONObject2.put("duration", duration / 1000.0f);
            jSONObject2.put("width", width);
            jSONObject2.put("height", height);
            jSONObject.put("vdReadyToPlay", jSONObject2);
        } catch (JSONException e10) {
            e10.printStackTrace();
        }
        a("mraidbridge.fireChangeEvent(" + jSONObject + ");");
    }

    public void a(String uniqueId, int code, String message) {
        JSONObject jSONObject = new JSONObject();
        try {
            JSONObject jSONObject2 = new JSONObject();
            jSONObject2.put("code", code);
            jSONObject2.put("message", message);
            JSONObject jSONObject3 = new JSONObject();
            jSONObject3.put("uniqueId", uniqueId);
            jSONObject3.put("error", jSONObject2);
            jSONObject.put("wvError", jSONObject3);
        } catch (JSONException e10) {
            e10.printStackTrace();
        }
        a("mraidbridge.fireChangeEvent(" + jSONObject + ");");
    }

    void a(String javascript, ValueCallback callback) {
        if (this.f81184d == null) {
            SigmobLog.e("Attempted to inject Javascript into MRAID WebView while was not attached: " + javascript);
            return;
        }
        SigmobLog.d("Injecting Javascript into MRAID WebView: " + javascript);
        this.f81184d.b(javascript, callback);
    }

    void a(String event, BidResponse bidResponse, int code, String message) {
        JSONObject jSONObject;
        JSONObject jSONObject2 = new JSONObject();
        try {
            if (bidResponse == null) {
                jSONObject = new JSONObject();
                jSONObject.put("data", (Object) null);
            } else {
                jSONObject = new JSONObject(JSONSerializer.Serialize(bidResponse, "data", true, true));
            }
            jSONObject.put("code", code);
            jSONObject.put("message", message);
            JSONObject jSONObject3 = new JSONObject();
            jSONObject3.put(NotificationCompat.CATEGORY_EVENT, event);
            jSONObject3.put("message", jSONObject);
            jSONObject2.put("notify", jSONObject3);
        } catch (JSONException e10) {
            e10.printStackTrace();
        }
        a("mraidbridge.fireChangeEvent(" + jSONObject2 + ");");
    }

    public void a(String uniqueId, String error) {
        JSONObject jSONObject = new JSONObject();
        try {
            JSONObject jSONObject2 = new JSONObject();
            jSONObject2.put("uniqueId", uniqueId);
            jSONObject2.put("error", error);
            jSONObject.put("vdPlayError", jSONObject2);
        } catch (JSONException e10) {
            e10.printStackTrace();
        }
        a("mraidbridge.fireChangeEvent(" + jSONObject + ");");
    }

    @Override // com.sigmob.sdk.mraid2.j
    public void a(String uniqueId, String type, String event, HashMap<String, Object> args) {
        JSONObject jSONObject = new JSONObject();
        try {
            JSONObject jSONObject2 = new JSONObject();
            jSONObject2.put(NotificationCompat.CATEGORY_EVENT, event);
            jSONObject2.put("uniqueId", uniqueId);
            if (com.sigmob.sdk.base.utils.w.b(args)) {
                jSONObject2.put(QuarkPromptActivity_.ARGS_EXTRA, new JSONObject(args));
            }
            jSONObject.put("onChangeFired", jSONObject2);
        } catch (JSONException e10) {
            e10.printStackTrace();
        }
        a("mraidbridge.fireChangeEvent(" + jSONObject + ");");
    }

    void a(String uniqid, String event, JSONObject data) {
        JSONObject jSONObject = new JSONObject();
        Object objOpt = data.opt("data");
        try {
            JSONObject jSONObject2 = new JSONObject();
            jSONObject2.put(NotificationCompat.CATEGORY_EVENT, uniqid + "~" + event);
            if (com.sigmob.sdk.base.utils.w.b(objOpt)) {
                jSONObject2.put("data", objOpt);
            }
            jSONObject.put("onChangeEvent", jSONObject2);
        } catch (JSONException e10) {
            e10.printStackTrace();
        }
        a("mraidbridge.fireChangeEvent(" + jSONObject + ");");
    }

    public void a(String event, HashMap<String, Object> args) {
        JSONObject jSONObject = new JSONObject();
        try {
            JSONObject jSONObject2 = new JSONObject();
            jSONObject2.put(NotificationCompat.CATEGORY_EVENT, event);
            if (com.sigmob.sdk.base.utils.w.b(args)) {
                jSONObject2.put(QuarkPromptActivity_.ARGS_EXTRA, new JSONObject(args));
            }
            jSONObject.put("onChangeEvent", jSONObject2);
        } catch (JSONException e10) {
            e10.printStackTrace();
        }
        a("mraidbridge.fireChangeEvent(" + jSONObject + ");");
    }

    private void a(String key, Map extras) {
        JSONObject jSONObject = new JSONObject();
        try {
            JSONObject jSONObject2 = new JSONObject();
            jSONObject2.put(NotificationCompat.CATEGORY_EVENT, key);
            jSONObject.put("notify", jSONObject2);
        } catch (JSONException e10) {
            e10.printStackTrace();
        }
        a("mraidbridge.fireChangeEvent(" + jSONObject + ");");
    }

    void a(JSONObject jsonObject) {
        JSONObject jSONObject = new JSONObject();
        try {
            jSONObject.put("bindData", jsonObject);
        } catch (JSONException e10) {
            e10.printStackTrace();
        }
        a("mraidbridge.fireChangeEvent(" + jSONObject + ");");
    }

    void a(boolean status) {
        a("mraidbridge.setIsScreenRecording(" + status + ")");
    }
}
