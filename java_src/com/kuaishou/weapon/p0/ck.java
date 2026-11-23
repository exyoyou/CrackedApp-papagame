package com.kuaishou.weapon.p0;

import android.content.Context;
import android.provider.Settings;
import android.text.TextUtils;
import com.qq.e.comm.managers.setting.GlobalSetting;
import com.sigmob.sdk.base.mta.PointType;
import org.json.JSONObject;

/* JADX INFO: loaded from: classes3.dex */
public class ck {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private String f74622a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private String f74623b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    private String f74624c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    private String f74625d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    private String f74626e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    private String f74627f;

    /* JADX INFO: renamed from: g, reason: collision with root package name */
    private String f74628g;

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    private String f74629h;

    /* JADX INFO: renamed from: i, reason: collision with root package name */
    private String f74630i;

    /* JADX INFO: renamed from: j, reason: collision with root package name */
    private String f74631j;

    /* JADX INFO: renamed from: k, reason: collision with root package name */
    private String f74632k;

    /* JADX INFO: renamed from: l, reason: collision with root package name */
    private String f74633l;

    public ck(String str, String str2) {
        StringBuilder sb2 = new StringBuilder();
        sb2.append(System.currentTimeMillis());
        this.f74630i = sb2.toString();
        this.f74624c = str;
        this.f74628g = str2;
    }

    public static String m() {
        try {
            return !TextUtils.isEmpty(WeaponHI.skProductName) ? WeaponHI.skProductName : "UNKNOWN_PRODUCT";
        } catch (Exception unused) {
            return "UNKNOWN_PRODUCT";
        }
    }

    private JSONObject n() {
        try {
            JSONObject jSONObject = new JSONObject();
            jSONObject.put("1", this.f74622a);
            jSONObject.put("2", this.f74623b);
            jSONObject.put("3", this.f74624c);
            jSONObject.put("4", this.f74625d);
            jSONObject.put("5", this.f74626e);
            jSONObject.put("6", this.f74627f);
            jSONObject.put("7", this.f74628g);
            jSONObject.put(GlobalSetting.UNIFIED_INTERSTITIAL_HS_AD, this.f74629h);
            jSONObject.put("9", this.f74630i);
            jSONObject.put("11", this.f74631j);
            jSONObject.put("12", this.f74633l);
            jSONObject.put(PointType.SIGMOB_REPORT_TRACKING, "com.kuaishou.weapon");
            jSONObject.put("14", WeaponHI.sKSSdkver);
            return jSONObject;
        } catch (Throwable unused) {
            return null;
        }
    }

    public String a() {
        return this.f74622a;
    }

    public String b() {
        return this.f74623b;
    }

    public String c() {
        return this.f74624c;
    }

    public String d() {
        return this.f74625d;
    }

    public String e() {
        return this.f74626e;
    }

    public String f() {
        return this.f74627f;
    }

    public String g() {
        return this.f74628g;
    }

    public String h() {
        return this.f74629h;
    }

    public String i() {
        return this.f74630i;
    }

    public String j() {
        return this.f74631j;
    }

    public String k() {
        return this.f74632k;
    }

    public String l() {
        return this.f74633l;
    }

    public void a(String str) {
        this.f74622a = str;
    }

    public void b(String str) {
        this.f74623b = str;
    }

    public void c(String str) {
        this.f74624c = str;
    }

    public void d(String str) {
        this.f74625d = str;
    }

    public void e(String str) {
        this.f74626e = str;
    }

    public void f(String str) {
        this.f74627f = str;
    }

    public void g(String str) {
        this.f74628g = str;
    }

    public void h(String str) {
        this.f74629h = str;
    }

    public void i(String str) {
        this.f74630i = str;
    }

    public void j(String str) {
        this.f74631j = str;
    }

    public void k(String str) {
        this.f74632k = str;
    }

    public void l(String str) {
        this.f74633l = str;
    }

    public static String b(Context context) {
        try {
            String str = WeaponHI.sKDeviceId;
            if (!TextUtils.isEmpty(str)) {
                bg.f74513v = 1;
                return str;
            }
        } catch (Exception unused) {
        }
        try {
            h hVarA = h.a(context, "re_po_rt");
            boolean zE = hVarA.e("a1_p_s_p_s");
            boolean zE2 = hVarA.e("a1_p_s_p_s_c_b");
            if (zE || zE2) {
                String str2 = "ANDROID_" + Settings.Secure.getString(context.getContentResolver(), "android_id");
                if (!TextUtils.isEmpty(str2)) {
                    bg.f74513v = 3;
                    return str2;
                }
            }
        } catch (Exception unused2) {
        }
        bg.f74513v = 4;
        return "";
    }

    public JSONObject a(Context context) {
        try {
            a(b(context));
            b(m());
            d(bf.q(context));
            e(bf.r(context));
            f(bf.s(context));
            h("5.4.3");
            j(br.a(context));
            l(WeaponHI.sKSAppkey);
            return n();
        } catch (Throwable unused) {
            return null;
        }
    }
}
