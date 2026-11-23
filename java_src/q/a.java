package q;

import android.content.Context;
import com.czhj.sdk.common.Constants;
import com.umeng.umcrash.UMCrash;
import org.json.JSONException;
import org.json.JSONObject;

/* JADX INFO: loaded from: classes7.dex */
public final class a {
    public static synchronized b a() {
        String strB = r.c.b("wxcasxx_v3", "wxcasxx");
        if (c0.a.b(strB)) {
            return null;
        }
        try {
            JSONObject jSONObject = new JSONObject(strB);
            return new b(jSONObject.optString("apdid"), jSONObject.optString("deviceInfoHash"), jSONObject.optString(Constants.TOKEN), jSONObject.optString(UMCrash.SP_KEY_TIMESTAMP));
        } catch (Exception e10) {
            c0.d.c(e10);
            return null;
        }
    }

    public static synchronized b b(Context context) {
        String strE = e(context);
        if (c0.a.b(strE)) {
            strE = r.c.b("wxcasxx_v3", "wxcasxx");
        }
        if (c0.a.b(strE)) {
            return null;
        }
        try {
            JSONObject jSONObject = new JSONObject(strE);
            return new b(jSONObject.optString("apdid"), jSONObject.optString("deviceInfoHash"), jSONObject.optString(Constants.TOKEN), jSONObject.optString(UMCrash.SP_KEY_TIMESTAMP));
        } catch (Exception e10) {
            c0.d.c(e10);
            return null;
        }
    }

    public static synchronized void c(Context context, b bVar) {
        try {
            JSONObject jSONObject = new JSONObject();
            jSONObject.put("apdid", bVar.f96399a);
            jSONObject.put("deviceInfoHash", bVar.f96400b);
            jSONObject.put(Constants.TOKEN, bVar.f96401c);
            jSONObject.put(UMCrash.SP_KEY_TIMESTAMP, bVar.f96402d);
            String string = jSONObject.toString();
            r.c.c(context, "vkeyid_profiles_v3", "deviceid", string);
            r.c.d("wxcasxx_v3", "wxcasxx", string);
        } catch (JSONException e10) {
            c0.d.c(e10);
        }
    }

    public static synchronized b d(Context context) {
        String strE = e(context);
        if (c0.a.b(strE)) {
            return null;
        }
        try {
            JSONObject jSONObject = new JSONObject(strE);
            return new b(jSONObject.optString("apdid"), jSONObject.optString("deviceInfoHash"), jSONObject.optString(Constants.TOKEN), jSONObject.optString(UMCrash.SP_KEY_TIMESTAMP));
        } catch (Exception e10) {
            c0.d.c(e10);
            return null;
        }
    }

    private static String e(Context context) {
        return r.c.a(context, "vkeyid_profiles_v3", "deviceid");
    }
}
