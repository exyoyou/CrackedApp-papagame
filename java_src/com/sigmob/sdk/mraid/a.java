package com.sigmob.sdk.mraid;

import android.util.Base64;
import android.webkit.JavascriptInterface;
import androidx.core.app.NotificationCompat;
import com.czhj.sdk.common.ClientMetadata;
import com.czhj.sdk.common.track.AdTracker;
import com.czhj.sdk.common.utils.ReflectionUtil;
import com.haima.hmcp.beans.HmInputMappingContent;
import com.join.mgps.activity.QuarkPromptActivity_;
import com.sigmob.sdk.base.common.ad;
import com.sigmob.sdk.base.common.ah;
import com.sigmob.sdk.base.models.BaseAdUnit;
import com.sigmob.sdk.base.models.ClickCommon;
import com.sigmob.sdk.base.models.LoadAdRequest;
import com.sigmob.sdk.base.mta.PointEntitySigmob;
import com.sigmob.sdk.base.mta.PointParamKey;
import com.sigmob.windad.WindAds;
import com.umeng.analytics.pro.bm;
import com.windmill.sdk.WMConstants;
import io.netty.handler.codec.memcache.binary.BinaryMemcacheOpcodes;
import java.lang.ref.WeakReference;
import java.util.HashMap;
import java.util.Iterator;
import org.json.JSONArray;
import org.json.JSONException;
import org.json.JSONObject;

/* JADX INFO: loaded from: classes3.dex */
public class a {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final String f80904a = "AppInfoJS";

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private final WeakReference<c> f80905b;

    public a(c mraidBridge) {
        this.f80905b = new WeakReference<>(mraidBridge);
    }

    @JavascriptInterface
    public String addMacro(JSONObject jsonData) {
        try {
            BaseAdUnit baseAdUnitB = b();
            String string = jsonData.has("key") ? jsonData.getString("key") : null;
            String string2 = jsonData.has(HmInputMappingContent.FIELD_VALUE) ? jsonData.getString(HmInputMappingContent.FIELD_VALUE) : null;
            if (!com.sigmob.sdk.base.utils.t.a((CharSequence) string) && !com.sigmob.sdk.base.utils.t.a((CharSequence) string2)) {
                baseAdUnitB.getMacroCommon().addMarcoKey(string, string2);
                return a(200, "addMacro success", (Object) null);
            }
            return a(300, "key or value is empty", (Object) null);
        } catch (Throwable th) {
            return a(500, "addMacro add fail " + th.getMessage(), (Object) null);
        }
    }

    @JavascriptInterface
    public String excuteRewardAdTrack(JSONObject jsonData) {
        try {
            BaseAdUnit baseAdUnitB = b();
            String string = jsonData.getString(NotificationCompat.CATEGORY_EVENT);
            if (com.sigmob.sdk.base.utils.t.a((CharSequence) string, (CharSequence) "click")) {
                com.sigmob.sdk.base.utils.d.a("AppInfoJS", baseAdUnitB);
            }
            int iB = com.sigmob.sdk.base.network.h.b(baseAdUnitB, string, true);
            if (iB == 0) {
                return a(200, "excuteRewardAdTrack success", (Object) null);
            }
            if (iB == -1) {
                return a(300, "event is empty", (Object) null);
            }
            if (iB == -2) {
                return a(300, string + " can't find in trackers", (Object) null);
            }
            return a(400, "unknown error: " + iB, (Object) null);
        } catch (Throwable th) {
            return a(500, "unknown error: " + th.getMessage(), (Object) null);
        }
    }

    @JavascriptInterface
    public String func(String jsonData) {
        try {
            JSONObject jSONObject = new JSONObject(jsonData);
            String string = jSONObject.has(com.alipay.sdk.authjs.a.f7128m) ? jSONObject.getString(com.alipay.sdk.authjs.a.f7128m) : null;
            if (com.sigmob.sdk.base.utils.t.a((CharSequence) string)) {
                return a(400, "func is empty", (Object) null);
            }
            ReflectionUtil.MethodBuilder methodBuilder = new ReflectionUtil.MethodBuilder(this, string.replace(":", ""));
            methodBuilder.addParam(JSONObject.class, jSONObject);
            return (String) methodBuilder.execute();
        } catch (Throwable th) {
            return a(500, th.getMessage(), (Object) null);
        }
    }

    /* JADX WARN: Code duplicated, block: B:117:0x01b7  */
    /* JADX WARN: Failed to restore switch over string. Please report as a decompilation issue */
    @JavascriptInterface
    public String getAppInfo(JSONObject jsonData) {
        byte b10;
        Object androidId;
        int densityDpi;
        try {
            JSONObject jSONObject = new JSONObject();
            BaseAdUnit baseAdUnitB = b();
            if (jsonData != null && baseAdUnitB != null && jsonData.has("arguments")) {
                JSONArray jSONArray = jsonData.getJSONArray("arguments");
                for (int i10 = 0; i10 < jSONArray.length(); i10++) {
                    String string = jSONArray.getString(i10);
                    try {
                        switch (string.hashCode()) {
                            case -1776992973:
                                if (string.equals("ad_source_logo")) {
                                    b10 = BinaryMemcacheOpcodes.DELETEQ;
                                } else {
                                    b10 = -1;
                                }
                                break;
                            case -1590994477:
                                if (string.equals("display_orientation")) {
                                    b10 = 32;
                                } else {
                                    b10 = -1;
                                }
                                break;
                            case -1581153970:
                                if (string.equals("settlement_price_enc")) {
                                    b10 = BinaryMemcacheOpcodes.GAT;
                                } else {
                                    b10 = -1;
                                }
                                break;
                            case -1534836170:
                                if (string.equals("google_aid")) {
                                    b10 = 3;
                                } else {
                                    b10 = -1;
                                }
                                break;
                            case -1342627961:
                                if (string.equals("bid_price")) {
                                    b10 = 27;
                                } else {
                                    b10 = -1;
                                }
                                break;
                            case -1295727824:
                                if (string.equals("device_height")) {
                                    b10 = 10;
                                } else {
                                    b10 = -1;
                                }
                                break;
                            case -1152230954:
                                if (string.equals("ad_type")) {
                                    b10 = 16;
                                } else {
                                    b10 = -1;
                                }
                                break;
                            case -1093016302:
                                if (string.equals("client_pixel")) {
                                    b10 = 8;
                                } else {
                                    b10 = -1;
                                }
                                break;
                            case -918718184:
                                if (string.equals("forbiden_parse_landingpage")) {
                                    b10 = 31;
                                } else {
                                    b10 = -1;
                                }
                                break;
                            case -901870406:
                                if (string.equals("app_version")) {
                                    b10 = 5;
                                } else {
                                    b10 = -1;
                                }
                                break;
                            case -702722614:
                                if (string.equals("creative_type")) {
                                    b10 = 15;
                                } else {
                                    b10 = -1;
                                }
                                break;
                            case -582019427:
                                if (string.equals("device_width")) {
                                    b10 = 9;
                                } else {
                                    b10 = -1;
                                }
                                break;
                            case -568274923:
                                if (string.equals("screen_density")) {
                                    b10 = 11;
                                } else {
                                    b10 = -1;
                                }
                                break;
                            case -516987305:
                                if (string.equals("pkgname")) {
                                    b10 = 13;
                                } else {
                                    b10 = -1;
                                }
                                break;
                            case -376724013:
                                if (string.equals("sdk_version")) {
                                    b10 = 6;
                                } else {
                                    b10 = -1;
                                }
                                break;
                            case -205033663:
                                if (string.equals("is_override")) {
                                    b10 = BinaryMemcacheOpcodes.GATQ;
                                } else {
                                    b10 = -1;
                                }
                                break;
                            case -41411609:
                                if (string.equals("screenangle")) {
                                    b10 = 14;
                                } else {
                                    b10 = -1;
                                }
                                break;
                            case -19457365:
                                if (string.equals(bm.T)) {
                                    b10 = 12;
                                } else {
                                    b10 = -1;
                                }
                                break;
                            case 3556:
                                if (string.equals(bm.f84421x)) {
                                    b10 = 0;
                                } else {
                                    b10 = -1;
                                }
                                break;
                            case 116753:
                                if (string.equals(PointParamKey.VID)) {
                                    b10 = BinaryMemcacheOpcodes.QUITQ;
                                } else {
                                    b10 = -1;
                                }
                                break;
                            case 3062218:
                                if (string.equals(WMConstants.CRID)) {
                                    b10 = BinaryMemcacheOpcodes.FLUSHQ;
                                } else {
                                    b10 = -1;
                                }
                                break;
                            case 3236040:
                                if (string.equals("imei")) {
                                    b10 = 1;
                                } else {
                                    b10 = -1;
                                }
                                break;
                            case 37109963:
                                if (string.equals("request_id")) {
                                    b10 = BinaryMemcacheOpcodes.SETQ;
                                } else {
                                    b10 = -1;
                                }
                                break;
                            case 93029116:
                                if (string.equals("appid")) {
                                    b10 = BinaryMemcacheOpcodes.REPLACEQ;
                                } else {
                                    b10 = -1;
                                }
                                break;
                            case 549673881:
                                if (string.equals("camp_id")) {
                                    b10 = BinaryMemcacheOpcodes.APPENDQ;
                                } else {
                                    b10 = -1;
                                }
                                break;
                            case 672836989:
                                if (string.equals(bm.f84422y)) {
                                    b10 = 7;
                                } else {
                                    b10 = -1;
                                }
                                break;
                            case 722989291:
                                if (string.equals("android_id")) {
                                    b10 = 2;
                                } else {
                                    b10 = -1;
                                }
                                break;
                            case 1103406469:
                                if (string.equals("clienttype")) {
                                    b10 = 4;
                                } else {
                                    b10 = -1;
                                }
                                break;
                            case 1127917191:
                                if (string.equals("cust_id")) {
                                    b10 = 26;
                                } else {
                                    b10 = -1;
                                }
                                break;
                            case 1139668345:
                                if (string.equals("adslot_id")) {
                                    b10 = BinaryMemcacheOpcodes.DECREMENTQ;
                                } else {
                                    b10 = -1;
                                }
                                break;
                            case 1224358069:
                                if (string.equals(PointParamKey.PLACEMENT_ID)) {
                                    b10 = BinaryMemcacheOpcodes.ADDQ;
                                } else {
                                    b10 = -1;
                                }
                                break;
                            case 1437471655:
                                if (string.equals("expired_time")) {
                                    b10 = BinaryMemcacheOpcodes.SASL_AUTH;
                                } else {
                                    b10 = -1;
                                }
                                break;
                            case 1753008747:
                                if (string.equals("product_id")) {
                                    b10 = BinaryMemcacheOpcodes.TOUCH;
                                } else {
                                    b10 = -1;
                                }
                                break;
                            case 1765767291:
                                if (string.equals("ad_source_channel")) {
                                    b10 = BinaryMemcacheOpcodes.INCREMENTQ;
                                } else {
                                    b10 = -1;
                                }
                                break;
                            default:
                                b10 = -1;
                                break;
                        }
                        switch (b10) {
                            case 0:
                                jSONObject.put(string, 2);
                                break;
                            case 1:
                                androidId = "";
                                jSONObject.put(string, androidId);
                                break;
                            case 2:
                                androidId = com.sigmob.sdk.b.b().getAndroidId();
                                jSONObject.put(string, androidId);
                                break;
                            case 3:
                                androidId = ClientMetadata.getInstance().getAdvertisingId();
                                jSONObject.put(string, androidId);
                                break;
                            case 4:
                                androidId = ClientMetadata.getDeviceModel();
                                jSONObject.put(string, androidId);
                                break;
                            case 5:
                                androidId = ClientMetadata.getInstance().getAppVersion();
                                jSONObject.put(string, androidId);
                                break;
                            case 6:
                                androidId = com.sigmob.sdk.base.n.f79584k;
                                jSONObject.put(string, androidId);
                                break;
                            case 7:
                                androidId = ClientMetadata.getDeviceOsVersion();
                                jSONObject.put(string, androidId);
                                break;
                            case 8:
                                androidId = String.format("%sx%s", Integer.valueOf(ClientMetadata.getInstance().getDisplayMetrics().widthPixels), Integer.valueOf(ClientMetadata.getInstance().getDisplayMetrics().heightPixels));
                                jSONObject.put(string, androidId);
                                break;
                            case 9:
                                androidId = ClientMetadata.getInstance().getDeviceScreenWidthDip();
                                jSONObject.put(string, androidId);
                                break;
                            case 10:
                                androidId = ClientMetadata.getInstance().getDeviceScreenHeightDip();
                                jSONObject.put(string, androidId);
                                break;
                            case 11:
                                densityDpi = ClientMetadata.getInstance().getDensityDpi();
                                jSONObject.put(string, densityDpi);
                                break;
                            case 12:
                                densityDpi = ClientMetadata.getInstance().getActiveNetworkType();
                                jSONObject.put(string, densityDpi);
                                break;
                            case 13:
                                androidId = ClientMetadata.getInstance().getAppPackageName();
                                jSONObject.put(string, androidId);
                                break;
                            case 14:
                                densityDpi = Math.abs(ClientMetadata.getInstance().getOrientationInt().intValue() - 1) * 90;
                                jSONObject.put(string, densityDpi);
                                break;
                            case 15:
                                densityDpi = baseAdUnitB.getCreativeType();
                                jSONObject.put(string, densityDpi);
                                break;
                            case 16:
                                densityDpi = baseAdUnitB.getAd_type();
                                jSONObject.put(string, densityDpi);
                                break;
                            case 17:
                                androidId = baseAdUnitB.getRequestId();
                                jSONObject.put(string, androidId);
                                break;
                            case 18:
                            case 22:
                                androidId = baseAdUnitB.getAdslot_id();
                                jSONObject.put(string, androidId);
                                break;
                            case 19:
                                androidId = WindAds.sharedAds().getAppId();
                                jSONObject.put(string, androidId);
                                break;
                            case 20:
                                androidId = baseAdUnitB.getAd_source_logo();
                                jSONObject.put(string, androidId);
                                break;
                            case 21:
                                androidId = baseAdUnitB.getAd_source_channel();
                                jSONObject.put(string, androidId);
                                break;
                            case 23:
                                androidId = baseAdUnitB.getAd().vid;
                                jSONObject.put(string, androidId);
                                break;
                            case 24:
                                androidId = baseAdUnitB.getCrid();
                                jSONObject.put(string, androidId);
                                break;
                            case 25:
                                androidId = baseAdUnitB.getCamp_id();
                                jSONObject.put(string, androidId);
                                break;
                            case 26:
                                androidId = baseAdUnitB.getAd().cust_id;
                                jSONObject.put(string, androidId);
                                break;
                            case 27:
                                androidId = baseAdUnitB.getAd().bid_price;
                                jSONObject.put(string, androidId);
                                break;
                            case 28:
                                androidId = baseAdUnitB.getAd().product_id;
                                jSONObject.put(string, androidId);
                                break;
                            case 29:
                                androidId = baseAdUnitB.getAd().settlement_price_enc;
                                jSONObject.put(string, androidId);
                                break;
                            case 30:
                                androidId = baseAdUnitB.getAd().is_override;
                                jSONObject.put(string, androidId);
                                break;
                            case 31:
                                androidId = baseAdUnitB.getAd().forbiden_parse_landingpage;
                                jSONObject.put(string, androidId);
                                break;
                            case 32:
                                densityDpi = baseAdUnitB.getDisplay_orientation();
                                jSONObject.put(string, densityDpi);
                                break;
                            case 33:
                                androidId = baseAdUnitB.getAd().expired_time;
                                jSONObject.put(string, androidId);
                                break;
                        }
                    } catch (Throwable unused) {
                    }
                }
            }
            return a(200, "getAppInfo success ", jSONObject);
        } catch (Throwable th) {
            return a(500, "getAppInfo error: " + th.getMessage(), (Object) null);
        }
    }

    @JavascriptInterface
    public String hello(JSONObject jsonData) {
        try {
            return jsonData.toString();
        } catch (Throwable unused) {
            return null;
        }
    }

    @JavascriptInterface
    public String javascriptAddDcLog(final JSONObject jsonData) {
        try {
            if (jsonData == null) {
                return a(400, "not params", (Object) null);
            }
            if (!jsonData.has(PointParamKey._AC_TYPE)) {
                return a(300, "_ac_type is empty", (Object) null);
            }
            String string = jsonData.getString(PointParamKey._AC_TYPE);
            final BaseAdUnit baseAdUnitB = b();
            ad.a(string, baseAdUnitB, (LoadAdRequest) null, new ad.a() { // from class: com.sigmob.sdk.mraid.b0
                @Override // com.sigmob.sdk.base.common.ad.a
                public final void onAddExtra(Object obj) {
                    a.a(jsonData, baseAdUnitB, obj);
                }
            });
            return a(200, "add dc log success", (Object) null);
        } catch (Throwable th) {
            return a(500, th.toString(), (Object) null);
        }
    }

    @JavascriptInterface
    public String mraidJsLoaded() {
        d dVar;
        c cVarA = a();
        if (cVarA != null && (dVar = cVarA.f80941d) != null) {
            dVar.b();
        }
        return null;
    }

    @JavascriptInterface
    public void postMessage(final String data) {
        com.sigmob.sdk.base.utils.k.c("AppInfoJS", "postMessage: raw = " + data, new Object[0]);
        final c cVarA = a();
        if (cVarA == null) {
            return;
        }
        cVarA.f80942e.post(new Runnable() { // from class: com.sigmob.sdk.mraid.a0
            @Override // java.lang.Runnable
            public final void run() {
                this.f80906b.a(data, cVarA);
            }
        });
    }

    @JavascriptInterface
    public String tracking(JSONObject jsonData) {
        try {
            BaseAdUnit baseAdUnitB = b();
            String strOptString = jsonData.optString(NotificationCompat.CATEGORY_EVENT);
            JSONArray jSONArrayOptJSONArray = jsonData.optJSONArray("urls");
            if (jSONArrayOptJSONArray != null && jSONArrayOptJSONArray.length() > 0) {
                for (int i10 = 0; i10 < jSONArrayOptJSONArray.length(); i10++) {
                    ah ahVar = new ah(jSONArrayOptJSONArray.optString(i10), strOptString, baseAdUnitB.getRequestId());
                    ahVar.setRetryNum(Integer.valueOf(baseAdUnitB.getTrackingRetryNum()));
                    ahVar.setSource("js");
                    com.sigmob.sdk.base.network.h.a((AdTracker) ahVar, baseAdUnitB, false);
                }
                return a(200, "tracking success.", (Object) null);
            }
            return a(300, "urls is empty.", (Object) null);
        } catch (Throwable th) {
            return a(500, "unknown error: " + th.getMessage(), (Object) null);
        }
    }

    public c a() {
        return this.f80905b.get();
    }

    public BaseAdUnit b() {
        c cVarA = a();
        if (cVarA == null) {
            return null;
        }
        return cVarA.f80940c;
    }

    public static String a(int code, String message, Object data) {
        try {
            JSONObject jSONObject = new JSONObject();
            jSONObject.put("code", code);
            if (!com.sigmob.sdk.base.utils.t.a((CharSequence) message)) {
                jSONObject.put("message", message);
            }
            if (data != null) {
                jSONObject.put("data", data);
            }
            return jSONObject.toString();
        } catch (Throwable th) {
            return th.getMessage();
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void a(String str, c cVar) {
        try {
            JSONObject jSONObject = new JSONObject(str);
            cVar.a(jSONObject.optString(NotificationCompat.CATEGORY_EVENT), jSONObject.optString("subEvent"), jSONObject.optJSONObject(QuarkPromptActivity_.ARGS_EXTRA));
        } catch (Exception e10) {
            com.sigmob.sdk.base.utils.k.f("AppInfoJS", "postMessage: error = " + e10.getMessage(), new Object[0]);
        }
        cVar.e(str);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static /* synthetic */ void a(JSONObject jSONObject, BaseAdUnit baseAdUnit, Object obj) {
        HashMap map = new HashMap();
        Iterator<String> itKeys = jSONObject.keys();
        while (itKeys.hasNext()) {
            String next = itKeys.next();
            if (next.equalsIgnoreCase("ext")) {
                try {
                    try {
                        JSONObject jSONObject2 = new JSONObject(jSONObject.optString(next));
                        Iterator<String> itKeys2 = jSONObject2.keys();
                        while (itKeys2.hasNext()) {
                            String next2 = itKeys2.next();
                            map.put(next2, jSONObject2.optString(next2));
                        }
                    } catch (Exception unused) {
                        map.put("ext", Base64.encodeToString(jSONObject.getString("ext").getBytes(), 2));
                    }
                } catch (JSONException e10) {
                    e10.printStackTrace();
                }
            } else if (!next.equalsIgnoreCase(PointParamKey._AC_TYPE)) {
                try {
                    map.put(next, jSONObject.getString(next));
                } catch (Throwable unused2) {
                }
            }
        }
        map.put("source", "js");
        if (obj instanceof PointEntitySigmob) {
            PointEntitySigmob pointEntitySigmob = (PointEntitySigmob) obj;
            String str = (String) map.get("sub_category");
            if (com.sigmob.sdk.base.utils.w.b(baseAdUnit) && com.sigmob.sdk.base.utils.t.a(str, "click")) {
                ClickCommon clickCommon = baseAdUnit.getClickCommon();
                if (com.sigmob.sdk.base.utils.w.b(clickCommon)) {
                    map.put(ClickCommon.CLICK_LOSE_RATE, String.valueOf(clickCommon.click_lose_rate));
                    map.put(ClickCommon.CLICK_CB_STATE, String.valueOf(clickCommon.click_cb_state));
                }
            }
            pointEntitySigmob.setOptions(map);
        }
    }
}
