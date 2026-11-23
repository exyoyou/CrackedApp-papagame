package com.aggmoread.sdk.z.a.g;

import android.graphics.Bitmap;
import android.text.TextUtils;
import com.papa91.common.BaseAppConfig;
import com.qq.e.comm.constants.Constants;
import java.util.ArrayList;
import java.util.List;
import org.json.JSONArray;
import org.json.JSONException;
import org.json.JSONObject;

/* JADX INFO: loaded from: classes7.dex */
public class c extends com.aggmoread.sdk.z.a.e {

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private com.aggmoread.sdk.z.a.h.c f3377b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public int f3378c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    public String f3379d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public List<a> f3380e;

    public static class a {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        private List<b> f3381a;

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        private List<C0072c> f3382b;

        /* JADX INFO: renamed from: c, reason: collision with root package name */
        private C0069a f3383c;

        /* JADX INFO: renamed from: com.aggmoread.sdk.z.a.g.c$a$a, reason: collision with other inner class name */
        public static class C0069a {

            /* JADX INFO: renamed from: a, reason: collision with root package name */
            public String f3384a;

            /* JADX INFO: renamed from: b, reason: collision with root package name */
            public C0070a f3385b;

            /* JADX INFO: renamed from: com.aggmoread.sdk.z.a.g.c$a$a$a, reason: collision with other inner class name */
            public static class C0070a {

                /* JADX INFO: renamed from: a, reason: collision with root package name */
                public String f3386a;

                /* JADX INFO: renamed from: b, reason: collision with root package name */
                public String f3387b;

                /* JADX INFO: renamed from: c, reason: collision with root package name */
                public String f3388c;

                public String a() {
                    throw null;
                }
            }
        }

        public static class b {

            /* JADX INFO: renamed from: a, reason: collision with root package name */
            public String f3389a;

            /* JADX INFO: renamed from: b, reason: collision with root package name */
            public String f3390b;

            /* JADX INFO: renamed from: c, reason: collision with root package name */
            public String f3391c;

            /* JADX INFO: renamed from: d, reason: collision with root package name */
            public String f3392d;

            /* JADX INFO: renamed from: e, reason: collision with root package name */
            public List<C0071a> f3393e;

            /* JADX INFO: renamed from: f, reason: collision with root package name */
            public String f3394f;

            /* JADX INFO: renamed from: g, reason: collision with root package name */
            public int f3395g;

            /* JADX INFO: renamed from: h, reason: collision with root package name */
            public int f3396h;

            /* JADX INFO: renamed from: i, reason: collision with root package name */
            public String f3397i;

            /* JADX INFO: renamed from: j, reason: collision with root package name */
            public List<String> f3398j;

            /* JADX INFO: renamed from: k, reason: collision with root package name */
            public List<String> f3399k;

            /* JADX INFO: renamed from: l, reason: collision with root package name */
            public List<String> f3400l;

            /* JADX INFO: renamed from: m, reason: collision with root package name */
            public List<String> f3401m;

            /* JADX INFO: renamed from: n, reason: collision with root package name */
            public List<String> f3402n;

            /* JADX INFO: renamed from: o, reason: collision with root package name */
            public List<String> f3403o;

            /* JADX INFO: renamed from: p, reason: collision with root package name */
            public List<String> f3404p;

            /* JADX INFO: renamed from: q, reason: collision with root package name */
            public List<String> f3405q;

            /* JADX INFO: renamed from: r, reason: collision with root package name */
            public List<String> f3406r;

            /* JADX INFO: renamed from: s, reason: collision with root package name */
            public List<String> f3407s;

            /* JADX INFO: renamed from: v, reason: collision with root package name */
            public com.aggmoread.sdk.z.a.g.a f3410v;

            /* JADX INFO: renamed from: t, reason: collision with root package name */
            public int f3408t = -1;

            /* JADX INFO: renamed from: u, reason: collision with root package name */
            public String f3409u = null;

            /* JADX INFO: renamed from: w, reason: collision with root package name */
            public Bitmap f3411w = null;

            /* JADX INFO: renamed from: com.aggmoread.sdk.z.a.g.c$a$b$a, reason: collision with other inner class name */
            public static class C0071a {

                /* JADX INFO: renamed from: a, reason: collision with root package name */
                public int f3412a;

                /* JADX INFO: renamed from: b, reason: collision with root package name */
                public List<String> f3413b;

                public String toString() {
                    return "DeepLinkTrack{type=" + this.f3412a + ", urls=" + this.f3413b + '}';
                }
            }

            public String a() {
                return this.f3391c;
            }

            public List<String> b() {
                return this.f3401m;
            }

            public List<String> c() {
                return this.f3402n;
            }

            public List<String> d() {
                return this.f3403o;
            }

            public String e() {
                return this.f3390b;
            }

            public String f() {
                List<String> list = this.f3398j;
                return (list == null || list.size() <= 0) ? "" : this.f3398j.get(0);
            }

            public List<String> g() {
                return this.f3398j;
            }

            public int h() {
                return this.f3396h;
            }

            public String i() {
                if (TextUtils.isEmpty(this.f3390b)) {
                    return !TextUtils.isEmpty(this.f3394f) ? this.f3394f : "";
                }
                return this.f3390b;
            }

            public String j() {
                List<String> list = this.f3404p;
                return (list == null || list.size() <= 0) ? "" : this.f3404p.get(0);
            }

            public String k() {
                List<String> list = this.f3404p;
                if (list == null || list.size() <= 0) {
                    return null;
                }
                return this.f3404p.get(0);
            }

            public String l() {
                List<String> list = this.f3399k;
                return (list == null || list.size() <= 0) ? "" : this.f3399k.get(0);
            }

            public List<String> m() {
                return this.f3399k;
            }

            public List<String> n() {
                List<String> list = this.f3404p;
                return list == null ? new ArrayList() : list;
            }

            public String o() {
                return this.f3389a;
            }

            public int p() {
                return this.f3408t;
            }

            public String q() {
                return this.f3397i;
            }

            public List<String> r() {
                return this.f3406r;
            }

            public List<String> s() {
                return this.f3405q;
            }

            public boolean t() {
                return this.f3395g == 2;
            }

            public List<String> a(int i10) {
                if (this.f3393e == null) {
                    return null;
                }
                for (int i11 = 0; i11 < this.f3393e.size(); i11++) {
                    C0071a c0071a = this.f3393e.get(i11);
                    if (i10 == c0071a.f3412a) {
                        return c0071a.f3413b;
                    }
                }
                return null;
            }

            public void b(int i10) {
            }

            public void c(int i10) {
            }

            public void d(int i10) {
                this.f3396h = i10;
            }

            public void e(int i10) {
                this.f3395g = i10;
            }

            public void f(int i10) {
                this.f3408t = i10;
            }

            public void g(int i10) {
            }

            public void h(int i10) {
            }

            public void i(int i10) {
            }

            public void j(List<String> list) {
                this.f3406r = list;
            }

            public void k(List<String> list) {
                this.f3405q = list;
            }

            public void a(long j10) {
            }

            public void b(String str) {
                this.f3390b = str;
            }

            public void c(String str) {
                this.f3392d = str;
            }

            public void d(String str) {
                this.f3394f = str;
            }

            public void e(String str) {
            }

            public void f(String str) {
                this.f3389a = str;
            }

            public void g(String str) {
                this.f3397i = str;
            }

            public void h(List<String> list) {
                this.f3399k = list;
            }

            public void i(List<String> list) {
                this.f3404p = list;
            }

            public void a(com.aggmoread.sdk.z.a.g.a aVar) {
                this.f3410v = aVar;
            }

            public void b(List<String> list) {
                this.f3400l = list;
            }

            public void c(List<String> list) {
                this.f3401m = list;
            }

            public void d(List<String> list) {
                this.f3402n = list;
            }

            public void e(List<String> list) {
                this.f3403o = list;
            }

            public void f(List<String> list) {
                this.f3407s = list;
            }

            public void g(List<String> list) {
                this.f3398j = list;
            }

            public void a(String str) {
                this.f3391c = str;
            }

            public void a(List<C0071a> list) {
                this.f3393e = list;
            }
        }

        /* JADX INFO: renamed from: com.aggmoread.sdk.z.a.g.c$a$c, reason: collision with other inner class name */
        public static class C0072c {

            /* JADX INFO: renamed from: a, reason: collision with root package name */
            public int f3414a;

            /* JADX INFO: renamed from: b, reason: collision with root package name */
            public List<String> f3415b;

            /* JADX INFO: renamed from: c, reason: collision with root package name */
            public List<C0073a> f3416c;

            /* JADX INFO: renamed from: com.aggmoread.sdk.z.a.g.c$a$c$a, reason: collision with other inner class name */
            public static class C0073a {

                /* JADX INFO: renamed from: a, reason: collision with root package name */
                public double f3417a;

                /* JADX INFO: renamed from: b, reason: collision with root package name */
                public List<String> f3418b;

                public String toString() {
                    return "VideoPlayPercentage{Check_point=" + this.f3417a + ", urls=" + this.f3418b + '}';
                }
            }

            public List<C0073a> a() {
                return this.f3416c;
            }

            public String toString() {
                return "Track{type=" + this.f3414a + ", urls=" + this.f3415b + ", videoPlayPercentage=" + this.f3416c + '}';
            }

            public void a(int i10) {
                this.f3414a = i10;
            }

            public void a(List<String> list) {
                this.f3415b = list;
            }
        }

        public C0069a a() {
            return this.f3383c;
        }

        public b b() {
            List<b> list = this.f3381a;
            if (list == null || list.size() <= 0) {
                return null;
            }
            return this.f3381a.get(0);
        }

        public List<String> a(double d10) {
            List<C0072c.C0073a> listA;
            if (this.f3382b == null) {
                return null;
            }
            for (int i10 = 0; i10 < this.f3382b.size(); i10++) {
                C0072c c0072c = this.f3382b.get(i10);
                if (101016 == c0072c.f3414a && (listA = c0072c.a()) != null && !listA.isEmpty()) {
                    for (int i11 = 0; i11 < listA.size(); i11++) {
                        C0072c.C0073a c0073a = listA.get(i11);
                        if (c0073a.f3417a == d10) {
                            return c0073a.f3418b;
                        }
                    }
                }
            }
            return null;
        }

        public void b(List<C0072c> list) {
            this.f3382b = list;
        }

        public List<String> a(int i10) {
            if (this.f3382b == null) {
                return null;
            }
            for (int i11 = 0; i11 < this.f3382b.size(); i11++) {
                C0072c c0072c = this.f3382b.get(i11);
                if (i10 == c0072c.f3414a) {
                    return c0072c.f3415b;
                }
            }
            return null;
        }

        public void a(String str) {
        }

        public void a(List<b> list) {
            this.f3381a = list;
        }
    }

    private static List<a.b.C0071a> a(JSONArray jSONArray) {
        ArrayList arrayList = new ArrayList();
        for (int i10 = 0; i10 < jSONArray.length(); i10++) {
            a.b.C0071a c0071a = new a.b.C0071a();
            JSONObject jSONObject = (JSONObject) jSONArray.get(i10);
            if (jSONObject.has("type") && !jSONObject.isNull("type")) {
                c0071a.f3412a = jSONObject.getInt("type");
            }
            if (jSONObject.has("urls") && !jSONObject.isNull("urls")) {
                c0071a.f3413b = b(jSONObject.getJSONArray("urls"));
            }
            arrayList.add(c0071a);
        }
        return arrayList;
    }

    public static c b(JSONObject jSONObject) throws JSONException {
        JSONArray jSONArray;
        JSONArray jSONArray2;
        if (jSONObject == null) {
            return null;
        }
        c cVar = new c();
        ArrayList arrayList = new ArrayList();
        if (!jSONObject.isNull("errorCode") && jSONObject.has("errorCode")) {
            String string = jSONObject.getString("errorCode");
            if (!TextUtils.isEmpty(string)) {
                cVar.b(Integer.parseInt(string));
            }
        }
        if (!jSONObject.isNull("msg") && jSONObject.has("msg")) {
            String string2 = jSONObject.getString("msg");
            if (!TextUtils.isEmpty(string2)) {
                cVar.a(string2);
            }
        }
        if (jSONObject.has(com.sigmob.sdk.base.db.a.f79315a) && !jSONObject.isNull(com.sigmob.sdk.base.db.a.f79315a) && jSONObject.getJSONArray(com.sigmob.sdk.base.db.a.f79315a).length() > 0) {
            JSONArray jSONArray3 = jSONObject.getJSONArray(com.sigmob.sdk.base.db.a.f79315a);
            int i10 = 0;
            while (i10 < jSONArray3.length()) {
                JSONObject jSONObject2 = (JSONObject) jSONArray3.get(i10);
                a aVar = new a();
                if (!jSONObject.isNull("slotId") && jSONObject2.has("slotId")) {
                    aVar.a(jSONObject2.getString("slotId"));
                }
                if (!jSONObject2.has("metaGroup") || jSONObject2.isNull("metaGroup") || jSONObject2.getJSONArray("metaGroup").length() <= 0) {
                    jSONArray = jSONArray3;
                } else {
                    ArrayList arrayList2 = new ArrayList();
                    int i11 = 0;
                    for (JSONArray jSONArray4 = jSONObject2.getJSONArray("metaGroup"); i11 < jSONArray4.length(); jSONArray4 = jSONArray4) {
                        JSONObject jSONObject3 = (JSONObject) jSONArray4.get(i11);
                        a.b bVar = new a.b();
                        com.aggmoread.sdk.z.a.g.a aVar2 = new com.aggmoread.sdk.z.a.g.a();
                        if (jSONObject3.has("price") && !jSONObject3.isNull("price")) {
                            bVar.f(jSONObject3.getInt("price"));
                        }
                        if (jSONObject3.has("descs") && !jSONObject3.isNull("descs")) {
                            bVar.g(b(jSONObject3.getJSONArray("descs")));
                        }
                        if (jSONObject3.has("imageUrl") && !jSONObject3.isNull("imageUrl")) {
                            bVar.i(b(jSONObject3.getJSONArray("imageUrl")));
                        }
                        if (jSONObject3.has("iconUrls") && !jSONObject3.isNull("iconUrls")) {
                            bVar.h(b(jSONObject3.getJSONArray("iconUrls")));
                        }
                        if (jSONObject3.has(Constants.KEYS.EXPOSED_CLICK_URL_KEY) && !jSONObject3.isNull(Constants.KEYS.EXPOSED_CLICK_URL_KEY)) {
                            bVar.b(jSONObject3.getString(Constants.KEYS.EXPOSED_CLICK_URL_KEY));
                        }
                        if (jSONObject3.has("interactionType") && !jSONObject3.isNull("interactionType")) {
                            bVar.e(jSONObject3.getInt("interactionType"));
                        }
                        if (jSONObject3.has("downType") && !jSONObject3.isNull("downType")) {
                            bVar.d(jSONObject3.getInt("downType"));
                        }
                        if (jSONObject3.has("tanUrl") && !jSONObject3.isNull("tanUrl")) {
                            bVar.f3409u = jSONObject3.getString("tanUrl");
                        }
                        if (jSONObject3.has("packageName") && !jSONObject3.isNull("packageName")) {
                            bVar.f(jSONObject3.getString("packageName"));
                            jSONObject3.getString("packageName");
                        }
                        if (jSONObject3.has("appSize") && !jSONObject3.isNull("appSize")) {
                            bVar.b(jSONObject3.getInt("appSize"));
                            aVar2.f3342b = jSONObject3.getInt("appSize");
                        }
                        if (jSONObject3.has("apkVer") && !jSONObject3.isNull("apkVer")) {
                            aVar2.f3343c = jSONObject3.getString("apkVer");
                        }
                        if (jSONObject3.has(BaseAppConfig.KEY_START_VERCODE) && !jSONObject3.isNull(BaseAppConfig.KEY_START_VERCODE)) {
                            aVar2.f3344d = jSONObject3.getInt(BaseAppConfig.KEY_START_VERCODE);
                        }
                        if (jSONObject3.has("brandName") && !jSONObject3.isNull("brandName")) {
                            aVar2.f3341a = jSONObject3.getString("brandName");
                        }
                        if (jSONObject3.has("appName") && !jSONObject3.isNull("appName")) {
                            aVar2.f3341a = jSONObject3.getString("appName");
                        }
                        if (jSONObject3.has("appDeveloper") && !jSONObject3.isNull("appDeveloper")) {
                            aVar2.f3345e = jSONObject3.getString("appDeveloper");
                        }
                        if (jSONObject3.has("appPrivacyPolicy") && !jSONObject3.isNull("appPrivacyPolicy")) {
                            aVar2.f3348h = jSONObject3.getString("appPrivacyPolicy");
                        }
                        String str = "appPermissionsUrl";
                        if (jSONObject3.has("appPermissionsUrl") && !jSONObject3.isNull("appPermissionsUrl")) {
                            aVar2.f3347g = jSONObject3.getString("appPermissionsUrl");
                        }
                        if (jSONObject3.has("appPermission") && !jSONObject3.isNull("appPermission") && (jSONArray2 = jSONObject3.getJSONArray("appPermission")) != null) {
                            ArrayList arrayList3 = new ArrayList();
                            int i12 = 0;
                            for (jSONArray2 = jSONObject3.getJSONArray("appPermission"); i12 < jSONArray2.length(); jSONArray2 = jSONArray2) {
                                JSONObject jSONObject4 = jSONArray2.getJSONObject(i12);
                                if (jSONObject4.has(str) && !jSONObject4.isNull(str)) {
                                    com.aggmoread.sdk.z.a.g.a.C0068a c0068a = new com.aggmoread.sdk.z.a.g.a.C0068a();
                                    c0068a.f3349a = jSONObject4.getString("title");
                                    c0068a.f3350b = jSONObject4.getString(com.xinzhu.overmind.client.hook.proxies.context.providers.b.f89370k);
                                    arrayList3.add(c0068a);
                                }
                                i12++;
                                str = str;
                            }
                            aVar2.f3346f = arrayList3;
                        }
                        bVar.a(aVar2);
                        if (jSONObject3.has("downloadLink") && !jSONObject3.isNull("downloadLink")) {
                            bVar.d(jSONObject3.getString("downloadLink"));
                        }
                        if (jSONObject3.has("winNoticeUrls") && !jSONObject3.isNull("winNoticeUrls")) {
                            bVar.k(b(jSONObject3.getJSONArray("winNoticeUrls")));
                        }
                        if (jSONObject3.has("winCNoticeUrls") && !jSONObject3.isNull("winCNoticeUrls")) {
                            bVar.j(b(jSONObject3.getJSONArray("winCNoticeUrls")));
                        }
                        if (jSONObject3.has("arrDownloadTrackUrl") && !jSONObject3.isNull("arrDownloadTrackUrl")) {
                            bVar.b(b(jSONObject3.getJSONArray("arrDownloadTrackUrl")));
                        }
                        if (jSONObject3.has("arrDownloadedTrakUrl") && !jSONObject3.isNull("arrDownloadedTrakUrl")) {
                            bVar.c(b(jSONObject3.getJSONArray("arrDownloadedTrakUrl")));
                        }
                        if (jSONObject3.has("arrIntallTrackUrl") && !jSONObject3.isNull("arrIntallTrackUrl")) {
                            bVar.d(b(jSONObject3.getJSONArray("arrIntallTrackUrl")));
                        }
                        if (jSONObject3.has("arrIntalledTrackUrl") && !jSONObject3.isNull("arrIntalledTrackUrl")) {
                            bVar.e(b(jSONObject3.getJSONArray("arrIntalledTrackUrl")));
                        }
                        if (jSONObject3.has("arrSkipTrackUrl") && !jSONObject3.isNull("arrSkipTrackUrl")) {
                            bVar.f(b(jSONObject3.getJSONArray("arrSkipTrackUrl")));
                        }
                        if (jSONObject3.has("adTitle") && !jSONObject3.isNull("adTitle")) {
                            bVar.a(jSONObject3.getString("adTitle"));
                        }
                        if (jSONObject3.has("deepLink") && !jSONObject3.isNull("deepLink")) {
                            bVar.c(jSONObject3.getString("deepLink"));
                            if (jSONObject3.has("arrDeepLinkTrackUrl") && !jSONObject3.isNull("arrDeepLinkTrackUrl")) {
                                bVar.a(a(jSONObject3.getJSONArray("arrDeepLinkTrackUrl")));
                            }
                        }
                        if (jSONObject3.has("creativeType") && !jSONObject3.isNull("creativeType")) {
                            bVar.c(jSONObject3.getInt("creativeType"));
                        }
                        if (jSONObject3.has("videoUrl") && !jSONObject3.isNull("videoUrl")) {
                            bVar.g(jSONObject3.getString("videoUrl"));
                            if (TextUtils.isEmpty(bVar.j())) {
                                bVar.f3411w = com.aggmoread.sdk.z.a.m.b.a(bVar.q());
                            }
                        }
                        if (jSONObject3.has("videoDuration") && !jSONObject3.isNull("videoDuration")) {
                            bVar.g(jSONObject3.getInt("videoDuration"));
                        }
                        if (jSONObject3.has("videoSize") && !jSONObject3.isNull("videoSize")) {
                            bVar.a(jSONObject3.getLong("videoSize"));
                        }
                        if (jSONObject3.has("videoWidth") && !jSONObject3.isNull("videoWidth")) {
                            bVar.i(jSONObject3.getInt("videoWidth"));
                        }
                        if (jSONObject3.has("videoHeight") && !jSONObject3.isNull("videoHeight")) {
                            bVar.h(jSONObject3.getInt("videoHeight"));
                        }
                        if (jSONObject3.has("end_card_html") && !jSONObject3.isNull("end_card_html")) {
                            bVar.e(jSONObject3.getString("end_card_html"));
                        }
                        arrayList2.add(bVar);
                        i11++;
                        jSONArray3 = jSONArray3;
                    }
                    jSONArray = jSONArray3;
                    aVar.a(arrayList2);
                }
                if (jSONObject2.has("tracks") && !jSONObject.isNull("tracks")) {
                    JSONArray jSONArray5 = jSONObject2.getJSONArray("tracks");
                    ArrayList arrayList4 = new ArrayList();
                    for (int i13 = 0; i13 < jSONArray5.length(); i13++) {
                        JSONObject jSONObject5 = jSONArray5.getJSONObject(i13);
                        a.C0072c c0072c = new a.C0072c();
                        if (jSONObject5.has("type") && !jSONObject5.isNull("type")) {
                            c0072c.a(jSONObject5.getInt("type"));
                        }
                        if (jSONObject5.has("urls") && !jSONObject5.isNull("urls")) {
                            c0072c.a(b(jSONObject5.getJSONArray("urls")));
                        }
                    }
                    aVar.b(arrayList4);
                }
                arrayList.add(aVar);
                i10++;
                jSONArray3 = jSONArray;
            }
        }
        cVar.a(arrayList);
        return cVar;
    }

    public com.aggmoread.sdk.z.a.h.c e() {
        return this.f3377b;
    }

    public boolean f() {
        List<a> list = this.f3380e;
        return list != null && list.size() > 0;
    }

    public boolean g() {
        return this.f3378c == 0;
    }

    private static List<String> b(JSONArray jSONArray) {
        ArrayList arrayList = new ArrayList();
        for (int i10 = 0; i10 < jSONArray.length(); i10++) {
            arrayList.add(jSONArray.getString(i10));
        }
        return arrayList;
    }

    public void a(com.aggmoread.sdk.z.a.h.c cVar) {
        this.f3377b = cVar;
    }

    public void a(String str) {
        this.f3379d = str;
    }

    public void b(int i10) {
        this.f3378c = i10;
    }

    public void a(List<a> list) {
        this.f3380e = list;
    }
}
