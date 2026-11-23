package com.umeng.analytics.pro;

import android.content.Context;
import android.os.Build;
import android.text.TextUtils;
import com.umeng.commonsdk.debug.UMRTLog;
import com.umeng.commonsdk.statistics.common.DeviceConfig;
import com.umeng.commonsdk.utils.UMUtils;
import org.json.JSONArray;
import org.json.JSONException;
import org.json.JSONObject;

/* JADX INFO: loaded from: classes9.dex */
public class an {
    public static JSONObject a(Context context, String str) {
        JSONObject jSONObject = null;
        try {
            am amVar = new am();
            String uMId = UMUtils.getUMId(context);
            if (TextUtils.isEmpty(uMId)) {
                return null;
            }
            amVar.a(uMId);
            String appkey = UMUtils.getAppkey(context);
            if (TextUtils.isEmpty(appkey)) {
                return null;
            }
            amVar.b(appkey);
            amVar.c(UMUtils.getAppVersionName(context));
            amVar.d("9.6.7");
            amVar.e(UMUtils.getChannel(context));
            amVar.f(Build.VERSION.SDK_INT + "");
            amVar.g(Build.BRAND);
            amVar.h(Build.MODEL);
            String[] localeInfo = DeviceConfig.getLocaleInfo(context);
            amVar.i(localeInfo[1]);
            amVar.j(localeInfo[0]);
            int[] resolutionArray = DeviceConfig.getResolutionArray(context);
            amVar.b(Integer.valueOf(resolutionArray[1]));
            amVar.a(Integer.valueOf(resolutionArray[0]));
            amVar.k(ar.a(context, "install_datetime", ""));
            try {
                JSONObject jSONObject2 = new JSONObject();
                try {
                    jSONObject2.put(am.f84263a, amVar.a());
                    jSONObject2.put(am.f84265c, amVar.c());
                    jSONObject2.put(am.f84264b, amVar.b());
                    jSONObject2.put(am.f84266d, amVar.d());
                    jSONObject2.put(am.f84267e, amVar.e());
                    jSONObject2.put(am.f84268f, amVar.f());
                    jSONObject2.put(am.f84269g, amVar.g());
                    jSONObject2.put(am.f84270h, amVar.h());
                    jSONObject2.put(am.f84273k, amVar.k());
                    jSONObject2.put(am.f84272j, amVar.j());
                    jSONObject2.put(am.f84274l, amVar.l());
                    jSONObject2.put(am.f84271i, amVar.i());
                    jSONObject2.put(am.f84275m, amVar.m());
                    jSONObject2.put(bm.al, UMUtils.getZid(context));
                    jSONObject2.put("platform", "android");
                    jSONObject2.put("optional", new JSONObject(ar.a()));
                    String[] strArrSplit = str.split("@");
                    if (strArrSplit.length == 4) {
                        try {
                            long j10 = Long.parseLong(strArrSplit[0]);
                            String str2 = strArrSplit[1];
                            jSONObject2.put("s1", j10);
                            jSONObject2.put("s2", str2);
                        } catch (Throwable unused) {
                        }
                    }
                    try {
                        String str3 = Build.BRAND;
                        String strA = as.a(str3);
                        String strB = as.b(str3);
                        if (TextUtils.isEmpty(strA) || TextUtils.isEmpty(strB)) {
                            jSONObject2.put(am.f84276n, "Android");
                            jSONObject2.put(am.f84277o, Build.VERSION.RELEASE);
                        } else {
                            jSONObject2.put(am.f84276n, strA);
                            jSONObject2.put(am.f84277o, strB);
                        }
                    } catch (Throwable unused2) {
                    }
                    return jSONObject2;
                } catch (JSONException e10) {
                    e = e10;
                    jSONObject = jSONObject2;
                    UMRTLog.e(UMRTLog.RTLOG_TAG, "[getCloudConfigParam] error " + e.getMessage());
                    return jSONObject;
                } catch (Throwable th) {
                    th = th;
                    jSONObject = jSONObject2;
                }
            } catch (JSONException e11) {
                e = e11;
            }
        } catch (Throwable th2) {
            th = th2;
        }
        UMRTLog.e(UMRTLog.RTLOG_TAG, "[getCloudConfigParam] error " + th.getMessage());
        return jSONObject;
    }

    public static JSONObject a(Context context, int i10, JSONArray jSONArray, String str) {
        JSONObject jSONObject = null;
        try {
            JSONObject jSONObject2 = new JSONObject();
            try {
                String zid = UMUtils.getZid(context);
                if (TextUtils.isEmpty(zid)) {
                    return jSONObject2;
                }
                jSONObject2.put("atoken", zid);
                String deviceToken = UMUtils.getDeviceToken(context);
                if (!TextUtils.isEmpty(deviceToken)) {
                    jSONObject2.put("device_token", deviceToken);
                }
                jSONObject2.put(com.baidu.mobads.sdk.internal.bn.f7597i, Build.MODEL);
                jSONObject2.put(bm.f84421x, "android");
                jSONObject2.put(bm.f84422y, Build.VERSION.RELEASE);
                jSONObject2.put(com.umeng.ccg.a.f84988o, str);
                jSONObject2.put("sdk", jSONArray);
                jSONObject2.put("e", i10);
                return jSONObject2;
            } catch (Throwable unused) {
                jSONObject = jSONObject2;
                return jSONObject;
            }
        } catch (Throwable unused2) {
        }
    }
}
