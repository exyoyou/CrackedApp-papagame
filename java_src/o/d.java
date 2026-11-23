package o;

import android.content.Context;
import java.util.HashMap;
import java.util.Map;

/* JADX INFO: loaded from: classes7.dex */
public final class d {
    public static synchronized Map<String, String> a(Context context) {
        HashMap map;
        com.alipay.security.mobile.module.deviceinfo.e.a();
        map = new HashMap();
        map.put("AE1", com.alipay.security.mobile.module.deviceinfo.e.d());
        StringBuilder sb2 = new StringBuilder();
        sb2.append(com.alipay.security.mobile.module.deviceinfo.e.f() ? "1" : "0");
        map.put("AE2", sb2.toString());
        StringBuilder sb3 = new StringBuilder();
        sb3.append(com.alipay.security.mobile.module.deviceinfo.e.c(context) ? "1" : "0");
        map.put("AE3", sb3.toString());
        map.put("AE4", com.alipay.security.mobile.module.deviceinfo.e.g());
        map.put("AE5", com.alipay.security.mobile.module.deviceinfo.e.h());
        map.put("AE6", com.alipay.security.mobile.module.deviceinfo.e.i());
        map.put("AE7", com.alipay.security.mobile.module.deviceinfo.e.j());
        map.put("AE8", com.alipay.security.mobile.module.deviceinfo.e.k());
        map.put("AE9", com.alipay.security.mobile.module.deviceinfo.e.l());
        map.put("AE10", com.alipay.security.mobile.module.deviceinfo.e.m());
        map.put("AE11", com.alipay.security.mobile.module.deviceinfo.e.n());
        map.put("AE12", com.alipay.security.mobile.module.deviceinfo.e.o());
        map.put("AE13", com.alipay.security.mobile.module.deviceinfo.e.p());
        map.put("AE14", com.alipay.security.mobile.module.deviceinfo.e.q());
        map.put("AE15", com.alipay.security.mobile.module.deviceinfo.e.r());
        return map;
    }
}
