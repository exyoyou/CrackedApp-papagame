package fc;

import android.text.TextUtils;
import com.haima.hmcp.ConstantsInternal;
import org.json.JSONException;
import org.json.JSONObject;

/* JADX INFO: loaded from: classes.dex */
public class c {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public int f91187a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public String f91188b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public b f91189c;

    public static class a {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        public boolean f91190a;
    }

    public static class b {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        public String f91191a;

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        public boolean f91192b;

        /* JADX INFO: renamed from: c, reason: collision with root package name */
        public a f91193c = new a();
    }

    public void a(JSONObject jSONObject) {
        this.f91187a = jSONObject.optInt("result");
        this.f91188b = jSONObject.optString(ConstantsInternal.KEY_ERROR_MSG);
        JSONObject jSONObjectOptJSONObject = jSONObject.optJSONObject("data");
        if (jSONObjectOptJSONObject == null) {
            String strOptString = jSONObject.optString("data");
            if (!TextUtils.isEmpty(strOptString)) {
                try {
                    jSONObjectOptJSONObject = new JSONObject(strOptString);
                } catch (JSONException unused) {
                }
            }
        }
        if (jSONObjectOptJSONObject != null) {
            b bVar = new b();
            this.f91189c = bVar;
            bVar.f91191a = jSONObjectOptJSONObject.optString("globalId");
            this.f91189c.f91192b = jSONObjectOptJSONObject.optBoolean("checkResult");
            a aVar = this.f91189c.f91193c;
            JSONObject jSONObjectOptJSONObject2 = jSONObjectOptJSONObject.optJSONObject("extMap");
            aVar.getClass();
            if (jSONObjectOptJSONObject2 != null) {
                aVar.f91190a = jSONObjectOptJSONObject2.optBoolean("uploadOriginOaid", false);
            }
        }
    }
}
