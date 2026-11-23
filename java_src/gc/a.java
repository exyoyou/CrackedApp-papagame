package gc;

import android.text.TextUtils;
import kwai.a.e;
import org.json.JSONException;
import org.json.JSONObject;

/* JADX INFO: loaded from: classes.dex */
public class a implements Runnable {

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final /* synthetic */ String f91367b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final /* synthetic */ c f91368c;

    public a(kwai.c.a aVar, String str, c cVar) {
        this.f91367b = str;
        this.f91368c = cVar;
    }

    @Override // java.lang.Runnable
    public void run() {
        JSONObject jSONObject = new JSONObject();
        ec.c.f(jSONObject, "sdkVersion", -1.0d);
        ec.c.g(jSONObject, "version", "1.0.17");
        ec.c.g(jSONObject, "appId", e.c.INSTANCE.f93885a.f93874d);
        kc.a.c("HttpManager", "querySwitchMessage:" + jSONObject);
        new b().b(this.f91367b, jSONObject.toString(), new C1167a());
    }

    /* JADX INFO: renamed from: gc.a$a, reason: collision with other inner class name */
    public class C1167a implements c {
        public C1167a() {
        }

        @Override // gc.c
        public void a(String str) {
            if (TextUtils.isEmpty(str)) {
                a.this.f91368c.a(new fc.b(-9997, "jsonResult is null or empty"));
                return;
            }
            try {
                JSONObject jSONObject = new JSONObject(str);
                if (jSONObject.optInt("result") == 1) {
                    a.this.f91368c.a(jSONObject.optString("data"));
                }
            } catch (JSONException e10) {
                kc.a.c("HttpManager", "querySwitchMessage parse error:" + e10.getMessage());
                e10.printStackTrace();
                a.this.f91368c.a(new fc.b(-9998, e10.getMessage()));
            }
        }

        @Override // gc.c
        public void a(fc.b bVar) {
            kc.a.a("HttpManager", "querySwitchMessage error:" + bVar);
            a.this.f91368c.a(new fc.b(-9999, "querySwitchMessage error:" + bVar));
        }
    }
}
