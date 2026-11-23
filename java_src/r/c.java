package r;

import android.content.Context;
import com.alipay.security.mobile.module.commonutils.crypto.i;
import java.util.HashMap;
import org.json.JSONObject;

/* JADX INFO: loaded from: classes7.dex */
public final class c {
    public static String a(Context context, String str, String str2) {
        if (context == null || c0.a.b(str) || c0.a.b(str2)) {
            return null;
        }
        try {
            String strA = g0.c.a(context, str, str2, "");
            if (c0.a.b(strA)) {
                return null;
            }
            return i.f(i.a(), strA);
        } catch (Exception unused) {
            return null;
        }
    }

    public static String b(String str, String str2) {
        if (!c0.a.b(str) && !c0.a.b(str2)) {
            try {
                String strA = g0.a.a(str);
                if (c0.a.b(strA)) {
                    return null;
                }
                String string = new JSONObject(strA).getString(str2);
                if (c0.a.b(string)) {
                    return null;
                }
                return i.f(i.a(), string);
            } catch (Exception unused) {
            }
        }
        return null;
    }

    public static void c(Context context, String str, String str2, String str3) {
        if (c0.a.b(str) || c0.a.b(str2) || context == null || c0.a.b(str3)) {
            return;
        }
        try {
            String strC = i.c(i.a(), str3);
            HashMap map = new HashMap();
            map.put(str2, strC);
            g0.c.b(context, str, map);
        } catch (Exception unused) {
        }
    }

    public static void d(String str, String str2, String str3) {
        if (c0.a.b(str) || c0.a.b(str2) || c0.a.b(str3)) {
            return;
        }
        try {
            String strC = i.c(i.a(), str3);
            JSONObject jSONObject = new JSONObject();
            jSONObject.put(str2, strC);
            g0.a.b(str, jSONObject.toString());
        } catch (Exception unused) {
        }
    }
}
