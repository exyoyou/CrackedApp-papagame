package com.cmic.gen.sdk.d;

import android.content.Context;
import android.text.TextUtils;
import com.cmic.gen.sdk.e.f;
import com.cmic.gen.sdk.e.m;
import com.cmic.gen.sdk.e.n;
import com.cmic.gen.sdk.e.o;
import java.util.HashMap;
import org.json.JSONObject;

/* JADX INFO: loaded from: classes9.dex */
public class a {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private static C0534a<String, String> f24443a = new C0534a<>();

    /* JADX INFO: renamed from: com.cmic.gen.sdk.d.a$a, reason: collision with other inner class name */
    private static class C0534a<K, V> extends HashMap<K, V> {
        private C0534a() {
        }

        public V a(Object obj, V v10) {
            return (!containsKey(obj) || get(obj) == null) ? v10 : get(obj);
        }
    }

    public static void a() {
        String strValueOf = String.valueOf(0);
        f24443a.put("authPageIn", strValueOf);
        f24443a.put("authPageOut", strValueOf);
        f24443a.put("authClickFailed", strValueOf);
        f24443a.put("authClickSuccess", strValueOf);
        f24443a.put("timeOnAuthPage", strValueOf);
        f24443a.put("authPrivacyState", strValueOf);
    }

    public static void a(String str) {
        try {
            String str2 = f24443a.get(str);
            f24443a.put(str, String.valueOf((!TextUtils.isEmpty(str2) ? Integer.parseInt(str2) : 0) + 1));
            f24443a.put(str + "Time", o.a());
        } catch (Exception e10) {
            e10.printStackTrace();
        }
    }

    public static void a(String str, String str2) {
        f24443a.put(str, str2);
    }

    public static void a(Context context, final com.cmic.gen.sdk.a aVar) {
        try {
            if (aVar.b().j()) {
                return;
            }
            com.cmic.gen.sdk.view.a aVar2 = new com.cmic.gen.sdk.view.a();
            String strValueOf = String.valueOf(0);
            aVar2.e(!f24443a.a("authPageIn", strValueOf).equals(strValueOf) ? f24443a.get("authPageIn") : null);
            aVar2.f(!f24443a.a("authPageOut", strValueOf).equals(strValueOf) ? f24443a.get("authPageOut") : null);
            aVar2.c(!f24443a.a("authClickSuccess", strValueOf).equals(strValueOf) ? f24443a.get("authClickSuccess") : null);
            aVar2.b(!f24443a.a("authClickFailed", strValueOf).equals(strValueOf) ? f24443a.get("authClickFailed") : null);
            aVar2.d(f24443a.a("timeOnAuthPage", strValueOf).equals(strValueOf) ? null : f24443a.get("timeOnAuthPage"));
            aVar2.a(f24443a.a("authPrivacyState", strValueOf));
            JSONObject jSONObjectA = aVar2.a();
            final c cVar = new c();
            cVar.b(aVar.b("appid", ""));
            cVar.r(aVar.b("traceId"));
            cVar.b(aVar.b("appid"));
            cVar.i(f.a(context));
            cVar.j(f.b(context));
            cVar.k(aVar.b("timeOut"));
            cVar.s(f24443a.a("authPageInTime", ""));
            cVar.t(f24443a.a("authPageOutTime", ""));
            cVar.u("eventTracking5");
            cVar.n(aVar.b("operatortype", ""));
            cVar.w(aVar.b("networktype", 0) + "");
            cVar.e(m.a());
            cVar.o(m.b());
            cVar.p(m.c());
            cVar.m(aVar.b("simCardNum"));
            cVar.a(jSONObjectA);
            cVar.c(aVar.b("imsiState", "0"));
            cVar.l((System.currentTimeMillis() - aVar.b("methodTimes", 0L)) + "");
            n.a(new n.a() { // from class: com.cmic.gen.sdk.d.a.1
                @Override // com.cmic.gen.sdk.e.n.a
                protected void a() {
                    new d().a(cVar.b(), aVar);
                }
            });
        } catch (Exception e10) {
            e10.printStackTrace();
        }
    }
}
