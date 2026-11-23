package o;

import android.content.Context;
import java.util.HashMap;
import java.util.Map;
import org.json.JSONObject;

/* JADX INFO: loaded from: classes7.dex */
public final class c {
    public static Map<String, String> a(Context context) {
        com.alipay.security.mobile.module.deviceinfo.c cVarA = com.alipay.security.mobile.module.deviceinfo.c.a();
        HashMap map = new HashMap();
        q.d dVarA = q.c.a(context);
        String strB = com.alipay.security.mobile.module.deviceinfo.c.b(context);
        String strE = com.alipay.security.mobile.module.deviceinfo.c.e(context);
        String strQ = com.alipay.security.mobile.module.deviceinfo.c.q(context);
        String strP = com.alipay.security.mobile.module.deviceinfo.c.p();
        String strU = com.alipay.security.mobile.module.deviceinfo.c.u(context);
        if (dVarA != null) {
            if (c0.a.b(strB)) {
                strB = c0.a.f(dVarA.f96403a);
            }
            if (c0.a.b(strE)) {
                strE = c0.a.f(dVarA.f96404b);
            }
            if (c0.a.b(strQ)) {
                strQ = c0.a.f(dVarA.f96405c);
            }
            if (c0.a.b(strP)) {
                strP = c0.a.f(dVarA.f96406d);
            }
            if (c0.a.b(strU)) {
                strU = c0.a.f(dVarA.f96407e);
            }
        }
        q.d dVar = new q.d(strB, strE, strQ, strP, strU);
        if (context != null) {
            try {
                JSONObject jSONObject = new JSONObject();
                jSONObject.put("imei", c0.a.f(dVar.f96403a));
                jSONObject.put("imsi", c0.a.f(dVar.f96404b));
                jSONObject.put("mac", c0.a.f(dVar.f96405c));
                jSONObject.put("bluetoothmac", c0.a.f(dVar.f96406d));
                jSONObject.put("gsi", c0.a.f(dVar.f96407e));
                String string = jSONObject.toString();
                r.c.d("device_feature_file_name", "device_feature_file_key", string);
                r.c.c(context, "device_feature_prefs_name", "device_feature_prefs_key", string);
            } catch (Exception e10) {
                c0.d.c(e10);
            }
        }
        map.put("AD1", strB);
        map.put("AD2", strE);
        map.put("AD3", com.alipay.security.mobile.module.deviceinfo.c.i(context));
        map.put("AD5", com.alipay.security.mobile.module.deviceinfo.c.k(context));
        map.put("AD6", com.alipay.security.mobile.module.deviceinfo.c.m(context));
        map.put("AD7", com.alipay.security.mobile.module.deviceinfo.c.o(context));
        map.put("AD8", strQ);
        map.put("AD9", com.alipay.security.mobile.module.deviceinfo.c.s(context));
        map.put("AD10", strU);
        map.put("AD11", com.alipay.security.mobile.module.deviceinfo.c.d());
        map.put("AD12", cVarA.f());
        map.put("AD13", com.alipay.security.mobile.module.deviceinfo.c.h());
        map.put("AD14", com.alipay.security.mobile.module.deviceinfo.c.j());
        map.put("AD15", com.alipay.security.mobile.module.deviceinfo.c.l());
        map.put("AD16", com.alipay.security.mobile.module.deviceinfo.c.n());
        map.put("AD17", "");
        map.put("AD18", strP);
        map.put("AD19", com.alipay.security.mobile.module.deviceinfo.c.w(context));
        map.put("AD20", com.alipay.security.mobile.module.deviceinfo.c.r());
        map.put("AD21", com.alipay.security.mobile.module.deviceinfo.c.g(context));
        map.put("AD22", "");
        map.put("AD23", com.alipay.security.mobile.module.deviceinfo.c.t());
        map.put("AL3", com.alipay.security.mobile.module.deviceinfo.c.y(context));
        return map;
    }
}
