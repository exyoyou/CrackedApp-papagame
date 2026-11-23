package n;

import android.content.Context;
import com.alipay.security.mobile.module.commonutils.crypto.i;
import g0.c;
import java.util.Map;
import org.json.JSONObject;

/* JADX INFO: loaded from: classes7.dex */
public final class a {
    public static synchronized String a() {
        String strD = d();
        if (c0.a.b(strD)) {
            return null;
        }
        String[] strArrSplit = strD.split("`");
        if (strArrSplit != null && strArrSplit.length >= 2) {
            return strArrSplit[0];
        }
        return null;
    }

    public static synchronized String b(Context context) {
        String strA;
        strA = a();
        if (c0.a.b(strA)) {
            strA = e(context);
        }
        return strA;
    }

    public static synchronized void c(q.b bVar) {
        if (c0.a.b(bVar.f96399a)) {
            return;
        }
        if (bVar.f96399a.equals(a())) {
            return;
        }
        String str = bVar.f96399a + "`" + bVar.f96402d;
        if (str != null) {
            try {
                String strC = i.c(i.a(), str);
                JSONObject jSONObject = new JSONObject();
                jSONObject.put("device", strC);
                g0.a.b("deviceid_v2", jSONObject.toString());
            } catch (Exception unused) {
            }
        }
    }

    private static String d() {
        try {
            return i.f(i.a(), new JSONObject(g0.a.a("deviceid_v2")).getString("device"));
        } catch (Exception unused) {
            return null;
        }
    }

    /* JADX WARN: Unreachable blocks removed: 2, instructions: 2 */
    public static synchronized String e(Context context) {
        String str = "";
        try {
            String strA = c.a(context, "profiles", "deviceid", "");
            String strF = c0.a.b(strA) ? null : i.f(i.a(), strA);
            if (c0.a.b(strF)) {
                return null;
            }
            new b();
            Map<String, String> mapA = b.a(strF);
            if (mapA != null) {
                str = mapA.get("deviceId");
            }
        } catch (Throwable unused) {
        }
        return str;
    }
}
