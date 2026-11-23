package com.efs.sdk.base.core.config.a;

import android.text.TextUtils;
import android.util.Base64;
import androidx.annotation.NonNull;
import com.efs.sdk.base.core.controller.ControllerCenter;
import com.haima.hmcp.Constants;
import java.util.HashMap;
import java.util.Map;
import org.json.JSONArray;
import org.json.JSONException;

/* JADX INFO: loaded from: classes9.dex */
public final class b {

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    String f26303b;

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public int f26302a = -1;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    String f26304c = "https://";

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    String f26305d = "errnewlog.umeng.com";

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    long f26306e = 480;

    /* JADX INFO: renamed from: i, reason: collision with root package name */
    private Boolean f26310i = null;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    public Map<String, Double> f26307f = new HashMap();

    /* JADX INFO: renamed from: g, reason: collision with root package name */
    public Map<String, String> f26308g = new HashMap();

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    public Map<String, Object> f26309h = new HashMap();

    private b() {
    }

    final void a(String str) {
        if (TextUtils.isEmpty(str)) {
            return;
        }
        try {
            this.f26303b = str;
            String str2 = new String(com.efs.sdk.base.core.util.b.a.a(Base64.decode(str.getBytes(), 11), ControllerCenter.getGlobalEnvStruct().getSecret().getBytes()));
            String[] strArrSplit = str2.split(Constants.TIPS_SPECIAL_TAG);
            if (strArrSplit.length <= 1) {
                return;
            }
            String str3 = strArrSplit[1];
            try {
                JSONArray jSONArray = new JSONArray(str2.substring(strArrSplit[0].length() + strArrSplit[1].length() + 2));
                this.f26309h.put("rate", Integer.valueOf(Integer.parseInt(str3)));
                this.f26309h.put("stra", jSONArray);
            } catch (JSONException e10) {
                throw new RuntimeException(e10);
            }
        } catch (Throwable th) {
            th.printStackTrace();
        }
    }

    static b a() {
        b bVar = new b();
        if (ControllerCenter.getGlobalEnvStruct().isIntl()) {
            bVar.f26305d = "errnewlogos.umeng.com";
        } else {
            bVar.f26305d = "errnewlog.umeng.com";
        }
        return bVar;
    }

    final void a(@NonNull Map<String, String> map) {
        double d10;
        if (map.containsKey("gate_way")) {
            String str = map.get("gate_way");
            if (!TextUtils.isEmpty(str)) {
                this.f26305d = str;
            }
        }
        if (map.containsKey("gate_way_https")) {
            String str2 = map.get("gate_way_https");
            if (!TextUtils.isEmpty(str2)) {
                this.f26304c = Boolean.parseBoolean(str2) ? "https://" : "http://";
            }
        }
        try {
            if (map.containsKey("updateInteval")) {
                String str3 = map.get("updateInteval");
                if (!TextUtils.isEmpty(str3)) {
                    this.f26306e = Long.parseLong(str3);
                }
            }
        } catch (Throwable th) {
            th.printStackTrace();
        }
        HashMap map2 = new HashMap();
        for (Map.Entry<String, String> entry : map.entrySet()) {
            String key = entry.getKey();
            if (key.startsWith("data_sampling_rate_") || key.startsWith("file_sampling_rate_")) {
                String strReplace = key.replace("data_sampling_rate_", "").replace("file_sampling_rate_", "");
                try {
                    d10 = Double.parseDouble(entry.getValue());
                } catch (Throwable unused) {
                    d10 = 100.0d;
                }
                map2.put(strReplace, Double.valueOf(d10));
            }
        }
        this.f26307f = map2;
        this.f26308g = map;
    }
}
