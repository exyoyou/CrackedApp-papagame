package com.aggmoread.sdk.z.b.a;

import android.text.TextUtils;
import com.aggmoread.sdk.z.a.e;
import com.baidu.mobads.sdk.api.IAdInterListener;
import com.coremedia.iso.boxes.g0;
import com.qq.e.ads.nativ.NativeUnifiedADAppInfoImpl;
import java.util.ArrayList;
import java.util.List;
import org.json.JSONArray;
import org.json.JSONException;
import org.json.JSONObject;

/* JADX INFO: loaded from: classes7.dex */
public class a extends e {

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private com.aggmoread.sdk.z.b.b.a f4257b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public int f4258c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    public String f4259d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public C0106a f4260e;

    /* JADX INFO: renamed from: com.aggmoread.sdk.z.b.a.a$a, reason: collision with other inner class name */
    public static class C0106a {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        public List<C0107a> f4261a;

        /* JADX INFO: renamed from: com.aggmoread.sdk.z.b.a.a$a$a, reason: collision with other inner class name */
        public static class C0107a {

            /* JADX INFO: renamed from: a, reason: collision with root package name */
            public String f4262a;

            /* JADX INFO: renamed from: b, reason: collision with root package name */
            public String f4263b;

            /* JADX INFO: renamed from: c, reason: collision with root package name */
            public String f4264c;

            /* JADX INFO: renamed from: d, reason: collision with root package name */
            public String f4265d;

            /* JADX INFO: renamed from: e, reason: collision with root package name */
            public String f4266e;

            /* JADX INFO: renamed from: f, reason: collision with root package name */
            public List<C0108a> f4267f;

            /* JADX INFO: renamed from: g, reason: collision with root package name */
            public List<String> f4268g;

            /* JADX INFO: renamed from: h, reason: collision with root package name */
            public int f4269h;

            /* JADX INFO: renamed from: i, reason: collision with root package name */
            public String f4270i;

            /* JADX INFO: renamed from: j, reason: collision with root package name */
            public List<String> f4271j;

            /* JADX INFO: renamed from: k, reason: collision with root package name */
            public List<String> f4272k;

            /* JADX INFO: renamed from: l, reason: collision with root package name */
            public List<String> f4273l;

            /* JADX INFO: renamed from: m, reason: collision with root package name */
            public List<String> f4274m;

            /* JADX INFO: renamed from: n, reason: collision with root package name */
            public List<String> f4275n;

            /* JADX INFO: renamed from: o, reason: collision with root package name */
            public List<String> f4276o;

            /* JADX INFO: renamed from: p, reason: collision with root package name */
            public String f4277p;

            /* JADX INFO: renamed from: com.aggmoread.sdk.z.b.a.a$a$a$a, reason: collision with other inner class name */
            public static class C0108a {

                /* JADX INFO: renamed from: a, reason: collision with root package name */
                public int f4278a;

                /* JADX INFO: renamed from: b, reason: collision with root package name */
                public List<String> f4279b;
            }

            public String a() {
                if (TextUtils.isEmpty(this.f4265d)) {
                    return !TextUtils.isEmpty(this.f4266e) ? this.f4266e : "";
                }
                return this.f4265d;
            }

            public String b() {
                List<String> list = this.f4268g;
                if (list == null || list.size() <= 0) {
                    return null;
                }
                return this.f4268g.get(0);
            }

            public boolean c() {
                return this.f4269h == 2;
            }

            public List<String> a(int i10) {
                if (this.f4267f == null) {
                    return null;
                }
                for (int i11 = 0; i11 < this.f4267f.size(); i11++) {
                    C0108a c0108a = this.f4267f.get(i11);
                    if (i10 == c0108a.f4278a) {
                        return c0108a.f4279b;
                    }
                }
                return null;
            }
        }

        public C0107a a() {
            if (this.f4261a.size() > 0) {
                return this.f4261a.get(0);
            }
            return null;
        }
    }

    private static List<C0106a.C0107a.C0108a> a(JSONArray jSONArray) {
        ArrayList arrayList = new ArrayList();
        for (int i10 = 0; i10 < jSONArray.length(); i10++) {
            C0106a.C0107a.C0108a c0108a = new C0106a.C0107a.C0108a();
            JSONObject jSONObject = (JSONObject) jSONArray.get(i10);
            if (a(jSONObject, "type")) {
                c0108a.f4278a = jSONObject.getInt("type");
            }
            if (a(jSONObject, "urls")) {
                c0108a.f4279b = b(jSONObject.getJSONArray("urls"));
            }
            arrayList.add(c0108a);
        }
        return arrayList;
    }

    public static a b(JSONObject jSONObject) throws JSONException {
        a aVar = new a();
        if (a(jSONObject, "code")) {
            aVar.f4258c = jSONObject.getInt("code");
        }
        if (a(jSONObject, "msg")) {
            aVar.f4259d = jSONObject.getString("msg");
        }
        if (a(jSONObject, com.sigmob.sdk.base.db.a.f79315a)) {
            C0106a c0106a = new C0106a();
            JSONObject jSONObject2 = jSONObject.getJSONObject(com.sigmob.sdk.base.db.a.f79315a);
            if (a(jSONObject2, "slotCode")) {
                jSONObject2.getString("slotCode");
            }
            if (a(jSONObject2, g0.f24873q) && jSONObject2.getJSONArray(g0.f24873q).length() > 0) {
                JSONArray jSONArray = jSONObject2.getJSONArray(g0.f24873q);
                ArrayList arrayList = new ArrayList();
                for (int i10 = 0; i10 < jSONArray.length(); i10++) {
                    C0106a.C0107a c0107a = new C0106a.C0107a();
                    JSONObject jSONObject3 = (JSONObject) jSONArray.get(i10);
                    if (a(jSONObject3, "title")) {
                        c0107a.f4262a = jSONObject3.getString("title");
                    }
                    if (a(jSONObject3, "desc")) {
                        c0107a.f4263b = jSONObject3.getString("desc");
                    }
                    if (a(jSONObject3, "icon")) {
                        c0107a.f4264c = jSONObject3.getString("icon");
                    }
                    if (a(jSONObject3, "click_url")) {
                        c0107a.f4265d = jSONObject3.getString("click_url");
                    }
                    if (a(jSONObject3, "deepLink")) {
                        c0107a.f4266e = jSONObject3.getString("deepLink");
                        if (a(jSONObject3, "arrDeepLinkTrackUrl")) {
                            c0107a.f4267f = a(jSONObject3.getJSONArray("arrDeepLinkTrackUrl"));
                        }
                    }
                    if (a(jSONObject3, "imgs")) {
                        c0107a.f4268g = b(jSONObject3.getJSONArray("imgs"));
                    }
                    if (a(jSONObject3, "creative_type")) {
                        jSONObject3.getInt("creative_type");
                    }
                    if (a(jSONObject3, "interaction_type")) {
                        c0107a.f4269h = jSONObject3.getInt("interaction_type");
                    }
                    if (a(jSONObject3, "package_name")) {
                        c0107a.f4270i = jSONObject3.getString("package_name");
                    }
                    if (a(jSONObject3, NativeUnifiedADAppInfoImpl.Keys.PACKAGE_SIZE)) {
                        jSONObject3.getInt(NativeUnifiedADAppInfoImpl.Keys.PACKAGE_SIZE);
                    }
                    if (a(jSONObject3, "show_track_url")) {
                        c0107a.f4273l = b(jSONObject3.getJSONArray("show_track_url"));
                    }
                    if (a(jSONObject3, "click_track_url")) {
                        c0107a.f4274m = b(jSONObject3.getJSONArray("click_track_url"));
                    }
                    if (a(jSONObject3, "download_track_url")) {
                        c0107a.f4275n = b(jSONObject3.getJSONArray("download_track_url"));
                    }
                    if (a(jSONObject3, "install_track_url")) {
                        c0107a.f4276o = b(jSONObject3.getJSONArray("install_track_url"));
                    }
                    if (a(jSONObject3, IAdInterListener.AdReqParam.WIDTH)) {
                        jSONObject3.getInt(IAdInterListener.AdReqParam.WIDTH);
                    }
                    if (a(jSONObject3, "tanUrl")) {
                        c0107a.f4277p = jSONObject3.getString("tanUrl");
                    }
                    if (a(jSONObject3, "ci")) {
                        jSONObject3.getString("ci");
                    }
                    arrayList.add(c0107a);
                }
                c0106a.f4261a = arrayList;
                aVar.f4260e = c0106a;
            }
        }
        return aVar;
    }

    public com.aggmoread.sdk.z.b.b.a e() {
        return this.f4257b;
    }

    public boolean f() {
        List<C0106a.C0107a> list;
        C0106a c0106a = this.f4260e;
        return (c0106a == null || (list = c0106a.f4261a) == null || list.size() <= 0) ? false : true;
    }

    public boolean g() {
        return this.f4258c == 0;
    }

    private static List<String> b(JSONArray jSONArray) {
        ArrayList arrayList = new ArrayList();
        for (int i10 = 0; i10 < jSONArray.length(); i10++) {
            arrayList.add(jSONArray.getString(i10));
        }
        return arrayList;
    }

    public void a(com.aggmoread.sdk.z.b.b.a aVar) {
        this.f4257b = aVar;
    }

    public static boolean a(JSONObject jSONObject, String str) {
        return !jSONObject.isNull(str) && jSONObject.has(str);
    }
}
