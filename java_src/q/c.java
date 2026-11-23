package q;

import android.content.Context;
import org.json.JSONObject;

/* JADX INFO: loaded from: classes7.dex */
public final class c {
    public static d a(Context context) {
        if (context == null) {
            return null;
        }
        String strA = r.c.a(context, "device_feature_prefs_name", "device_feature_prefs_key");
        if (c0.a.b(strA)) {
            strA = r.c.b("device_feature_file_name", "device_feature_file_key");
        }
        if (c0.a.b(strA)) {
            return null;
        }
        try {
            JSONObject jSONObject = new JSONObject(strA);
            d dVar = new d();
            dVar.f96403a = jSONObject.getString("imei");
            dVar.f96404b = jSONObject.getString("imsi");
            dVar.f96405c = jSONObject.getString("mac");
            dVar.f96406d = jSONObject.getString("bluetoothmac");
            dVar.f96407e = jSONObject.getString("gsi");
            return dVar;
        } catch (Exception e10) {
            c0.d.c(e10);
            return null;
        }
    }
}
