package com.umeng.analytics.pro;

import android.content.Context;
import com.umeng.commonsdk.framework.UMEnvelopeBuild;
import com.umeng.commonsdk.service.UMGlobalContext;
import org.json.JSONArray;
import org.json.JSONException;
import org.json.JSONObject;

/* JADX INFO: loaded from: classes9.dex */
public class t {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private static final int f84893a = 0;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private static final int f84894b = 1;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    private static final int f84895c = 2;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    private static final int f84896d = 3;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    private final long f84897e;

    private static class a {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        public static final t f84898a = new t();

        private a() {
        }
    }

    public static t a() {
        return a.f84898a;
    }

    private JSONArray c() {
        JSONArray jSONArray = new JSONArray();
        try {
            long jCurrentTimeMillis = System.currentTimeMillis();
            JSONObject jSONObject = new JSONObject();
            jSONObject.put("id", aa.a().d(UMGlobalContext.getAppContext(null)));
            jSONObject.put(f.f84665p, jCurrentTimeMillis);
            jSONArray.put(jSONObject);
        } catch (JSONException unused) {
        }
        return jSONArray;
    }

    public void b(JSONObject jSONObject, Context context) {
        int iA = a(context);
        if (iA == 1) {
            if (jSONObject.has(f.L)) {
                jSONObject.remove(f.L);
            }
            if (jSONObject.has(f.f84663n)) {
                try {
                    JSONArray jSONArray = jSONObject.getJSONArray(f.f84663n);
                    int length = jSONArray.length();
                    for (int i10 = 0; i10 < length; i10++) {
                        JSONObject jSONObject2 = jSONArray.getJSONObject(i10);
                        if (jSONObject2.has(f.aA)) {
                            jSONObject2.remove(f.aA);
                        }
                        if (jSONObject2.has(f.aB)) {
                            jSONObject2.remove(f.aB);
                        }
                    }
                } catch (JSONException unused) {
                }
            }
            k.a(context).a(false, true);
            return;
        }
        if (iA == 2) {
            if (jSONObject.has(f.L)) {
                jSONObject.remove(f.L);
            }
            if (jSONObject.has(f.f84663n)) {
                jSONObject.remove(f.f84663n);
            }
            try {
                jSONObject.put(f.f84663n, c());
            } catch (Exception unused2) {
            }
            k.a(context).a(false, true);
            return;
        }
        if (iA == 3) {
            if (jSONObject.has(f.L)) {
                jSONObject.remove(f.L);
            }
            jSONObject.remove(f.f84663n);
            k.a(context).a(false, true);
        }
    }

    private t() {
        this.f84897e = 60000L;
    }

    public int a(Context context) {
        return Integer.valueOf(UMEnvelopeBuild.imprintProperty(context, "defcon", String.valueOf(0))).intValue();
    }

    private void a(JSONObject jSONObject, boolean z10) {
        if (!z10 && jSONObject.has(f.f84663n)) {
            jSONObject.remove(f.f84663n);
        }
        if (jSONObject.has(f.L)) {
            jSONObject.remove(f.L);
        }
        if (jSONObject.has("error")) {
            jSONObject.remove("error");
        }
        if (jSONObject.has("ekv")) {
            jSONObject.remove("ekv");
        }
        if (jSONObject.has(f.Z)) {
            jSONObject.remove(f.Z);
        }
        if (jSONObject.has(f.L)) {
            jSONObject.remove(f.L);
        }
        if (jSONObject.has("userlevel")) {
            jSONObject.remove("userlevel");
        }
    }

    public void a(JSONObject jSONObject, Context context) {
        int iA = a(context);
        if (iA == 1) {
            a(jSONObject, true);
            k.a(context).b(false, true);
        } else {
            if (iA == 2) {
                jSONObject.remove(f.f84663n);
                try {
                    jSONObject.put(f.f84663n, b());
                } catch (Exception unused) {
                }
                a(jSONObject, true);
                k.a(context).b(false, true);
                return;
            }
            if (iA == 3) {
                a(jSONObject, false);
                k.a(context).b(false, true);
            }
        }
    }

    private JSONArray b() {
        JSONArray jSONArray = new JSONArray();
        try {
            long jCurrentTimeMillis = System.currentTimeMillis();
            JSONObject jSONObject = new JSONObject();
            jSONObject.put("id", aa.a().a(UMGlobalContext.getAppContext(null)));
            jSONObject.put(f.f84665p, jCurrentTimeMillis);
            jSONObject.put(f.f84666q, jCurrentTimeMillis + 60000);
            jSONObject.put("duration", 60000L);
            jSONArray.put(jSONObject);
        } catch (JSONException unused) {
        }
        return jSONArray;
    }
}
