package com.kuaishou.weapon.p0;

import android.content.Context;
import android.os.Build;
import android.text.TextUtils;
import com.join.mgps.Util.o0;
import com.kuaishou.weapon.p0.jni.Engine;
import com.qq.e.comm.managers.setting.GlobalSetting;
import com.sigmob.sdk.base.mta.PointType;
import java.net.InetAddress;
import java.net.UnknownHostException;
import org.json.JSONException;
import org.json.JSONObject;

/* JADX INFO: loaded from: classes3.dex */
public class cm {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private Context f74636a;

    public cm(Context context) {
        this.f74636a = context;
    }

    public String a(String str) {
        JSONObject jSONObjectA;
        JSONObject jSONObjectA2;
        try {
            ck ckVar = new ck(str, ci.f74602j);
            String strA = dj.a(cs.f74654a);
            String strB = b(strA);
            if (TextUtils.isEmpty(strB) || (jSONObjectA = ckVar.a(this.f74636a)) == null) {
                return null;
            }
            String str2 = cs.f74661h + "?" + ct.a(this.f74636a);
            if (cs.a() && cs.f74654a.contains("api")) {
                str2 = "/api" + str2;
            }
            JSONObject jSONObject = new JSONObject();
            jSONObject.put("ip", strB);
            jSONObject.put(u.c.f97430f, strA);
            jSONObject.put("path", str2);
            String str3 = WeaponHI.cookieData;
            if (!TextUtils.isEmpty(str3) && str3.length() > 10) {
                jSONObject.put("cookie", str3);
            }
            jSONObject.put("head", jSONObjectA);
            StringBuilder sb2 = new StringBuilder();
            sb2.append("sdk=" + Build.VERSION.SDK_INT);
            jSONObject.put("parame", sb2.toString());
            if (str.equals(ci.f74601i) && (jSONObjectA2 = a()) != null) {
                jSONObject.put("sjd", jSONObjectA2);
            }
            return jSONObject.toString();
        } catch (Throwable unused) {
            return null;
        }
    }

    public String b(String str) {
        try {
            if (TextUtils.isEmpty(str)) {
                return null;
            }
            String hostAddress = InetAddress.getByName(dj.a(str)).getHostAddress();
            try {
                return (TextUtils.isEmpty(hostAddress) || !hostAddress.contains(o0.f49827a)) ? "" : hostAddress;
            } catch (UnknownHostException unused) {
                return hostAddress;
            }
        } catch (UnknownHostException unused2) {
            return "";
        }
    }

    private JSONObject a() throws JSONException {
        try {
            System.currentTimeMillis();
            JSONObject jSONObject = new JSONObject();
            h hVarA = h.a(this.f74636a, "re_po_rt");
            hVarA.e("a1_p_s_p_s");
            hVarA.e("a1_p_s_p_s_c_b");
            aj ajVar = new aj(this.f74636a);
            jSONObject.put("0", ajVar.d());
            jSONObject.put("1", ajVar.a());
            jSONObject.put("2", ajVar.c());
            jSONObject.put("3", ajVar.f());
            jSONObject.put("24", ajVar.e());
            int i10 = 1;
            jSONObject.put("35", ab.b() ? 1 : 0);
            jSONObject.put("36", ab.a(this.f74636a) ? 1 : 0);
            JSONObject jSONObjectA = ai.a(this.f74636a);
            if (jSONObjectA != null) {
                jSONObject.put("4", jSONObjectA);
            }
            hVarA.b(dd.f74719ac, 0);
            ac acVar = new ac();
            jSONObject.put("7", acVar.a() ? 1 : 0);
            boolean zA = acVar.a(this.f74636a);
            jSONObject.put(GlobalSetting.UNIFIED_INTERSTITIAL_HS_AD, zA ? 1 : 0);
            if (zA) {
                jSONObject.put("61", acVar.b(this.f74636a));
            }
            jSONObject.put("10", acVar.e(this.f74636a));
            jSONObject.put("11", acVar.c(this.f74636a));
            ae aeVar = new ae();
            jSONObject.put("26", aeVar.a("cpuinfo") ? 1 : 0);
            jSONObject.put("27", aeVar.a("meminfo") ? 1 : 0);
            ao aoVar = new ao();
            jSONObject.put("65", aoVar.d() ? 1 : 0);
            boolean zB = aoVar.b();
            jSONObject.put("66", zB ? 1 : 0);
            if (zB) {
                jSONObject.put("67", aoVar.a() ? 1 : 0);
            }
            jSONObject.put("68", aoVar.f() ? 1 : 0);
            jSONObject.put("69", aoVar.e());
            jSONObject.put(PointType.ANTI_SPAM, aoVar.c() ? 1 : 0);
            jSONObject.put(PointType.ANTI_SPAM_TOUCH, aoVar.g() ? 1 : 0);
            jSONObject.put("99", new af().a());
            JSONObject jSONObject2 = new JSONObject();
            jSONObject2.put("03007", bt.a(this.f74636a));
            jSONObject2.put("03014", bf.g(this.f74636a));
            jSONObject2.put("03020", bt.b(this.f74636a));
            jSONObject2.put("03030", be.d(this.f74636a));
            jSONObject.put("51", jSONObject2);
            jSONObject.put(PointType.WIND_ACTIVE, new an().d());
            if (!ab.b(this.f74636a)) {
                i10 = 0;
            }
            jSONObject.put("60", i10);
            try {
                jSONObject.put("11028", WeaponHI.sKSSdkver);
                jSONObject.put("11301", bf.c(com.kwad.sdk.e.b.QY().QX()));
                jSONObject.put("11302", bf.c(com.kwad.sdk.e.b.QY().getSdkVersion()));
                jSONObject.put("11303", bf.c(com.kwad.sdk.e.b.QY().getAppId()));
                jSONObject.put("11002", Engine.soVersion);
            } catch (Throwable unused) {
            }
            return jSONObject;
        } catch (Throwable unused2) {
            return null;
        }
    }
}
