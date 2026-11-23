package com.aggmoread.sdk.z.a.g;

import android.content.Context;
import android.text.TextUtils;
import com.baidu.mobads.sdk.internal.bn;
import com.join.mgps.activity.BuildQRCodeActivity_;
import com.join.mgps.activity.FullShareWebActivity_;
import com.umeng.analytics.pro.aw;
import java.util.Iterator;
import java.util.List;
import org.json.JSONArray;
import org.json.JSONException;
import org.json.JSONObject;

/* JADX INFO: loaded from: classes7.dex */
public class e {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private String f3433a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private String f3434b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    private String f3435c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    private String f3436d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    private String f3437e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    private String f3438f;

    /* JADX INFO: renamed from: g, reason: collision with root package name */
    private int f3439g;

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    private String f3440h;

    /* JADX INFO: renamed from: i, reason: collision with root package name */
    private int f3441i;

    /* JADX INFO: renamed from: j, reason: collision with root package name */
    private String f3442j;

    /* JADX INFO: renamed from: k, reason: collision with root package name */
    private int f3443k;

    /* JADX INFO: renamed from: l, reason: collision with root package name */
    private String f3444l;

    /* JADX INFO: renamed from: m, reason: collision with root package name */
    private String f3445m;

    /* JADX INFO: renamed from: n, reason: collision with root package name */
    private String f3446n;

    /* JADX INFO: renamed from: o, reason: collision with root package name */
    private b f3447o = com.aggmoread.sdk.z.a.h.a.d().b();

    public static String b(Context context) {
        int i10 = context.getResources().getConfiguration().orientation;
        if (i10 == 2) {
            return "L";
        }
        return i10 == 1 ? "P" : "U";
    }

    public JSONObject a(Context context) {
        this.f3433a = this.f3447o.k();
        this.f3438f = this.f3447o.l();
        this.f3434b = this.f3447o.o();
        this.f3435c = this.f3447o.a();
        this.f3445m = this.f3447o.y();
        this.f3440h = this.f3447o.u();
        int i10 = 2;
        this.f3441i = this.f3447o.G() ? 2 : 1;
        this.f3442j = this.f3447o.C();
        this.f3439g = 1;
        if (!b(context).equals("L")) {
            i10 = b(context).equals("P") ? 1 : 0;
        }
        this.f3443k = i10;
        this.f3444l = this.f3447o.e();
        this.f3436d = this.f3447o.r();
        this.f3437e = this.f3447o.E();
        this.f3446n = this.f3447o.t();
        JSONObject jSONObject = new JSONObject();
        try {
            String str = a(this.f3433a) ? this.f3435c : this.f3433a;
            jSONObject.put("imei", str);
            if (!TextUtils.isEmpty(str)) {
                jSONObject.put("imeiMd5", com.aggmoread.sdk.z.a.j.g.a(str.toLowerCase()));
            }
            jSONObject.put("mac", this.f3434b);
            jSONObject.put("androidId", this.f3435c);
            if (!TextUtils.isEmpty(this.f3435c)) {
                jSONObject.put("androidIdMd5", com.aggmoread.sdk.z.a.j.g.a(this.f3435c.toLowerCase()));
            }
            jSONObject.put("oaid", a(this.f3446n) ? com.aggmoread.sdk.z.a.i.e.f3503t : this.f3446n);
            jSONObject.put(bn.f7597i, this.f3436d);
            jSONObject.put("vendor", this.f3437e);
            jSONObject.put("screenWidth", this.f3447o.F());
            jSONObject.put("screenHeight", this.f3447o.i());
            jSONObject.put("osType", this.f3439g);
            jSONObject.put("osVersion", this.f3440h);
            jSONObject.put("deviceType", this.f3441i);
            jSONObject.put(aw.f84323d, this.f3442j);
            jSONObject.put("ppi", this.f3447o.w());
            jSONObject.put(FullShareWebActivity_.SCREEN_ORIENTATION_EXTRA, this.f3443k);
            jSONObject.put("serialNo", a(this.f3445m, "unknown") ? this.f3435c : this.f3445m);
            jSONObject.put(bn.f7598j, this.f3444l);
            jSONObject.put("imsi", this.f3438f);
            jSONObject.put("updateMark", this.f3447o.D());
            jSONObject.put("bootMark", this.f3447o.d());
            jSONObject.put("systemBootTimeMilliSec", this.f3447o.A());
            jSONObject.put("deviceNameMd5", com.aggmoread.sdk.z.a.j.g.a(this.f3436d));
            jSONObject.put("physicalMemoryKBytes", this.f3447o.p());
            jSONObject.put("hardDiskSizeKBytes", this.f3447o.h());
            jSONObject.put("systemUpdateTimeNanoSec", this.f3447o.B());
            jSONObject.put("boardModel", this.f3447o.c());
            jSONObject.put("apiLevel", this.f3447o.v());
            jSONObject.put("density", this.f3447o.g());
            jSONObject.put("hmsCore", this.f3447o.j());
            jSONObject.put("romVersion", this.f3447o.x());
            jSONObject.put("appstoreVersion", this.f3447o.b());
            jSONObject.put("browserVersion", this.f3447o.f());
            jSONObject.put("miuiVersion", this.f3447o.q());
            jSONObject.put(BuildQRCodeActivity_.SSID_EXTRA, this.f3447o.z());
            List<String> listM = this.f3447o.m();
            JSONArray jSONArray = new JSONArray();
            if (listM != null) {
                Iterator<String> it2 = listM.iterator();
                while (it2.hasNext()) {
                    jSONArray.put(it2.next());
                }
            }
            jSONObject.put("installedApps", jSONArray);
        } catch (JSONException e10) {
            e10.printStackTrace();
        }
        return jSONObject;
    }

    public String toString() {
        return "JuHeApiDevice{imei='" + this.f3433a + "', mac='" + this.f3434b + "', androidId='" + this.f3435c + "', model='" + this.f3436d + "', vendor='" + this.f3437e + "', osType=" + this.f3439g + ", osVersion='" + this.f3440h + "', deviceType=" + this.f3441i + ", ua='" + this.f3442j + "', screenOrientation=" + this.f3443k + ", brand='" + this.f3444l + "', serialNo='" + this.f3445m + "'}";
    }

    private boolean a(String str) {
        return str == null || str.isEmpty();
    }

    private boolean a(String str, String str2) {
        return str == null || str.isEmpty() || str.equals("unknown");
    }
}
