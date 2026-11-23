package o;

import android.content.Context;
import com.kuaishou.weapon.p0.bo;
import java.util.HashMap;
import java.util.Map;

/* JADX INFO: loaded from: classes7.dex */
public final class a {
    public static synchronized Map<String, String> a(Context context) {
        HashMap map;
        String strA;
        map = new HashMap();
        map.put("AA1", context.getPackageName());
        map.put("AA2", b(context));
        map.put("AA3", "security-sdk-token");
        map.put("AA4", "3.0.2.20151027");
        a0.a aVarE = q.e.e(context);
        String str = aVarE.f36d;
        String str2 = aVarE.f35c;
        if (c0.a.b(str) || c0.a.b(str2)) {
            strA = "";
        } else {
            com.alipay.security.mobile.module.deviceinfo.c.a();
            strA = r.a.a(com.alipay.security.mobile.module.deviceinfo.c.A(context), str2, str);
        }
        map.put("AA5", strA);
        return map;
    }

    private static String b(Context context) {
        try {
            return context.getPackageManager().getPackageInfo(context.getPackageName(), 16).versionName;
        } catch (Exception unused) {
            return bo.f74528e;
        }
    }
}
