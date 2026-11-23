package com.byazt.xz;

import android.annotation.SuppressLint;
import android.content.Context;
import android.content.pm.ApplicationInfo;
import android.os.Build;
import android.telephony.TelephonyManager;
import android.text.TextUtils;
import android.util.DisplayMetrics;
import androidx.annotation.Nullable;
import com.byazt.bv.BaseConstants;
import com.byazt.mg.da;
import com.byazt.mg.i;
import com.byazt.mg.u;
import com.byazt.nr.m;
import com.byazt.uy.x;
import com.join.mgps.Util.o0;
import com.tencent.stat.DeviceInfo;
import com.umeng.analytics.pro.bm;
import java.util.Locale;
import java.util.Map;
import java.util.TimeZone;
import org.json.JSONException;
import org.json.JSONObject;
import org.webrtc.haima.HmRtcEnvironment;

/* JADX INFO: loaded from: classes9.dex */
@com.byazt.zqa.c(c = {0, 1, 1730, 13})
public final class tt {

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public static final String[] f22135c = {"version_code", "manifest_version_code", DeviceInfo.TAG_ANDROID_ID, "update_version_code"};
    public Context tt;
    public JSONObject ve = new JSONObject();

    public tt(Context context) {
        this.tt = context;
    }

    private void a(JSONObject jSONObject) {
        try {
            jSONObject.put(bm.Q, i.c(this.tt));
        } catch (JSONException e10) {
            m.c(e10);
        }
    }

    public static tt c(Context context) {
        tt ttVar = new tt(context);
        JSONObject jSONObjectC = ttVar.c();
        ttVar.c(jSONObjectC);
        ttVar.ve(jSONObjectC);
        ttVar.uj(jSONObjectC);
        ttVar.n(jSONObjectC);
        ttVar.a(jSONObjectC);
        ttVar.sp(jSONObjectC);
        ttVar.tt(jSONObjectC);
        return ttVar;
    }

    private void n(JSONObject jSONObject) {
        StringBuilder sb2 = new StringBuilder();
        try {
            if (com.byazt.mg.ve.ve()) {
                sb2.append("MIUI-");
            } else if (com.byazt.mg.ve.uj()) {
                sb2.append("FLYME-");
            } else {
                String strC = com.byazt.mg.ve.c();
                if (com.byazt.mg.ve.c(strC)) {
                    sb2.append("EMUI-");
                }
                if (!TextUtils.isEmpty(strC)) {
                    sb2.append(strC);
                    sb2.append("-");
                }
            }
            sb2.append(Build.VERSION.INCREMENTAL);
            if (sb2.length() > 0) {
                jSONObject.put("rom", sb2.toString());
            }
            jSONObject.put("rom_version", u.c());
        } catch (Throwable unused) {
        }
    }

    private void sp(JSONObject jSONObject) {
        try {
            TelephonyManager telephonyManager = (TelephonyManager) this.tt.getSystemService("phone");
            if (telephonyManager != null) {
                String networkOperatorName = telephonyManager.getNetworkOperatorName();
                if (!TextUtils.isEmpty(networkOperatorName)) {
                    jSONObject.put(bm.P, networkOperatorName);
                }
                String networkOperator = telephonyManager.getNetworkOperator();
                if (TextUtils.isEmpty(networkOperator)) {
                    return;
                }
                jSONObject.put("mcc_mnc", networkOperator);
            }
        } catch (Exception e10) {
            m.c(e10);
        }
    }

    private String tt() {
        try {
            StringBuilder sb2 = new StringBuilder();
            if (Build.SUPPORTED_ABIS.length > 0) {
                int i10 = 0;
                while (true) {
                    String[] strArr = Build.SUPPORTED_ABIS;
                    if (i10 >= strArr.length) {
                        break;
                    }
                    sb2.append(strArr[i10]);
                    if (i10 != strArr.length - 1) {
                        sb2.append(", ");
                    }
                    i10++;
                }
            } else {
                sb2 = new StringBuilder(Build.CPU_ABI);
            }
            return TextUtils.isEmpty(sb2.toString()) ? "unknown" : sb2.toString();
        } catch (Exception e10) {
            da.tt(e10);
            return "unknown";
        }
    }

    private void uj(JSONObject jSONObject) {
        try {
            String language = this.tt.getResources().getConfiguration().locale.getLanguage();
            if (!TextUtils.isEmpty(language)) {
                jSONObject.put("language", language);
            }
            String country = Locale.getDefault().getCountry();
            if (!TextUtils.isEmpty(country)) {
                jSONObject.put("region", country);
            }
            int rawOffset = TimeZone.getDefault().getRawOffset() / BaseConstants.Time.HOUR;
            if (rawOffset < -12) {
                rawOffset = -12;
            }
            if (rawOffset > 12) {
                rawOffset = 12;
            }
            jSONObject.put(bm.M, rawOffset);
        } catch (Exception unused) {
        }
    }

    private String ve() {
        String str = Build.VERSION.RELEASE;
        if (str.contains(o0.f49827a)) {
            return str;
        }
        return str + ".0";
    }

    private void ve(JSONObject jSONObject) {
        String str;
        try {
            DisplayMetrics displayMetrics = this.tt.getResources().getDisplayMetrics();
            int i10 = displayMetrics.densityDpi;
            if (i10 == 120) {
                str = "ldpi";
            } else if (i10 != 240) {
                str = i10 != 320 ? "mdpi" : "xhdpi";
            } else {
                str = "hdpi";
            }
            jSONObject.put("density_dpi", i10);
            jSONObject.put("display_density", str);
            jSONObject.put(bm.f84423z, displayMetrics.heightPixels + "x" + displayMetrics.widthPixels);
        } catch (Exception unused) {
        }
    }

    @SuppressLint({"MissingPermission"})
    private void c(JSONObject jSONObject) {
        int i10;
        try {
            ApplicationInfo applicationInfo = this.tt.getPackageManager().getPackageInfo(this.tt.getPackageName(), 0).applicationInfo;
            if (applicationInfo != null && (i10 = applicationInfo.labelRes) > 0) {
                jSONObject.put(bm.f84416s, this.tt.getString(i10));
            }
            jSONObject.put("sdk_version", 138);
            jSONObject.put("sdk_version_name", "0.0.1-alpha.18-cloud");
            jSONObject.put(bm.f84421x, "Android");
            jSONObject.put(bm.f84422y, ve());
            jSONObject.put("os_api", Build.VERSION.SDK_INT);
            jSONObject.put("device_model", Build.MODEL);
            jSONObject.put(bm.F, Build.BRAND);
            jSONObject.put(bm.H, Build.MANUFACTURER);
            jSONObject.put("cpu_abi", tt());
        } catch (Exception unused) {
        }
    }

    private void tt(JSONObject jSONObject) {
        Map<String, Object> mapTt;
        Object obj;
        com.byazt.rx.c cVarC = x.c();
        if (cVarC == null || jSONObject == null || (mapTt = cVarC.tt()) == null) {
            return;
        }
        try {
            JSONObject jSONObject2 = new JSONObject();
            for (String str : mapTt.keySet()) {
                if (!TextUtils.isEmpty(str) && (obj = mapTt.get(str)) != null) {
                    jSONObject2.put(str, obj);
                }
            }
            jSONObject.put("custom", jSONObject2);
        } catch (Exception e10) {
            da.tt(e10);
        }
    }

    public JSONObject tt(String str) {
        try {
            if (!TextUtils.isEmpty(str)) {
                this.ve.put(HmRtcEnvironment.kUserId, str);
            }
        } catch (JSONException e10) {
            m.c(e10);
        }
        return this.ve;
    }

    public JSONObject c(@Nullable Map<String, Object> map) {
        try {
            if (map == null) {
                return this.ve;
            }
            for (Map.Entry<String, Object> entry : map.entrySet()) {
                if (!this.ve.has(entry.getKey())) {
                    this.ve.put(entry.getKey(), entry.getValue());
                }
            }
            for (String str : f22135c) {
                if (map.containsKey(str)) {
                    try {
                        this.ve.put(str, Integer.parseInt((String) map.get(str)));
                    } catch (Exception unused) {
                        this.ve.put(str, map.get(str));
                    }
                }
            }
            if (map.containsKey("version_code") && !map.containsKey("manifest_version_code")) {
                this.ve.put("manifest_version_code", Integer.parseInt((String) map.get("version_code")));
            }
            if (map.containsKey("iid")) {
                this.ve.put("udid", map.get("iid"));
                this.ve.remove("iid");
            }
            return this.ve;
        } catch (Throwable unused2) {
        }
    }

    public JSONObject c(String str) {
        try {
            this.ve.put("device_id", str);
        } catch (JSONException e10) {
            m.c(e10);
        }
        return this.ve;
    }

    public JSONObject c() {
        return this.ve;
    }
}
