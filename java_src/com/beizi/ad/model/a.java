package com.beizi.ad.model;

import com.haima.hmcp.countly.CountlyDbPolicy;
import java.util.ArrayList;
import java.util.List;
import org.json.JSONArray;
import org.json.JSONException;
import org.json.JSONObject;

/* JADX INFO: loaded from: classes6.dex */
public final class a {

    /* JADX INFO: renamed from: com.beizi.ad.model.a$a, reason: collision with other inner class name */
    public static class C0226a {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        private String f9229a;

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        private String f9230b;

        /* JADX INFO: renamed from: c, reason: collision with root package name */
        private String f9231c;

        /* JADX INFO: renamed from: d, reason: collision with root package name */
        private long f9232d;

        /* JADX INFO: renamed from: e, reason: collision with root package name */
        private String f9233e;

        /* JADX INFO: renamed from: f, reason: collision with root package name */
        private int f9234f;

        /* JADX INFO: renamed from: g, reason: collision with root package name */
        private List<String> f9235g;

        /* JADX INFO: renamed from: h, reason: collision with root package name */
        private int f9236h;

        /* JADX INFO: renamed from: i, reason: collision with root package name */
        private String f9237i;

        /* JADX INFO: renamed from: j, reason: collision with root package name */
        private String f9238j;

        /* JADX INFO: renamed from: com.beizi.ad.model.a$a$a, reason: collision with other inner class name */
        public static final class C0227a {

            /* JADX INFO: renamed from: a, reason: collision with root package name */
            private String f9239a;

            /* JADX INFO: renamed from: b, reason: collision with root package name */
            private String f9240b;

            /* JADX INFO: renamed from: c, reason: collision with root package name */
            private String f9241c;

            /* JADX INFO: renamed from: d, reason: collision with root package name */
            private long f9242d;

            /* JADX INFO: renamed from: e, reason: collision with root package name */
            private String f9243e;

            /* JADX INFO: renamed from: f, reason: collision with root package name */
            private int f9244f;

            /* JADX INFO: renamed from: g, reason: collision with root package name */
            private List<String> f9245g;

            /* JADX INFO: renamed from: h, reason: collision with root package name */
            private int f9246h;

            /* JADX INFO: renamed from: i, reason: collision with root package name */
            private String f9247i;

            /* JADX INFO: renamed from: j, reason: collision with root package name */
            private String f9248j;

            public C0227a a(String str) {
                this.f9239a = str;
                return this;
            }

            public C0227a b(String str) {
                this.f9241c = str;
                return this;
            }

            public C0227a c(String str) {
                this.f9247i = str;
                return this;
            }

            public C0227a d(String str) {
                this.f9248j = str;
                return this;
            }

            public C0227a a(int i10) {
                this.f9244f = i10;
                return this;
            }

            public C0227a b(int i10) {
                this.f9246h = i10;
                return this;
            }

            public C0227a a(List<String> list) {
                this.f9245g = list;
                return this;
            }

            public C0226a a() {
                C0226a c0226a = new C0226a();
                c0226a.f9232d = this.f9242d;
                c0226a.f9231c = this.f9241c;
                c0226a.f9233e = this.f9243e;
                c0226a.f9230b = this.f9240b;
                c0226a.f9229a = this.f9239a;
                c0226a.f9234f = this.f9244f;
                c0226a.f9235g = this.f9245g;
                c0226a.f9236h = this.f9246h;
                c0226a.f9237i = this.f9247i;
                c0226a.f9238j = this.f9248j;
                return c0226a;
            }
        }

        private C0226a() {
        }

        public JSONObject a() {
            JSONObject jSONObject = new JSONObject();
            try {
                jSONObject.put("spaceID", this.f9229a);
                jSONObject.put("spaceParam", this.f9230b);
                jSONObject.put("requestUUID", this.f9231c);
                jSONObject.put("channelReserveTs", this.f9232d);
                jSONObject.put("sdkExtInfo", this.f9233e);
                jSONObject.put("isCache", this.f9234f);
                List<String> list = this.f9235g;
                if (list != null && list.size() > 0) {
                    JSONArray jSONArray = new JSONArray();
                    for (int i10 = 0; i10 < this.f9235g.size(); i10++) {
                        jSONArray.put(this.f9235g.get(i10));
                    }
                    jSONObject.put("orderList", jSONArray);
                }
                jSONObject.put("interactionType", this.f9236h);
                jSONObject.put("modelVersion", this.f9237i);
                jSONObject.put("blackListVersion", this.f9238j);
                return jSONObject;
            } catch (JSONException e10) {
                e10.printStackTrace();
                return null;
            }
        }
    }

    public static class b {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        private String f9249a;

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        private i.h f9250b;

        /* JADX INFO: renamed from: c, reason: collision with root package name */
        private i.g f9251c;

        /* JADX INFO: renamed from: d, reason: collision with root package name */
        private long f9252d;

        /* JADX INFO: renamed from: e, reason: collision with root package name */
        private String f9253e;

        /* JADX INFO: renamed from: f, reason: collision with root package name */
        private String f9254f;

        /* JADX INFO: renamed from: g, reason: collision with root package name */
        private String f9255g;

        /* JADX INFO: renamed from: h, reason: collision with root package name */
        private long f9256h;

        /* JADX INFO: renamed from: i, reason: collision with root package name */
        private long f9257i;

        /* JADX INFO: renamed from: j, reason: collision with root package name */
        private g.a f9258j;

        /* JADX INFO: renamed from: k, reason: collision with root package name */
        private g.c f9259k;

        /* JADX INFO: renamed from: l, reason: collision with root package name */
        private ArrayList<C0226a> f9260l;

        /* JADX INFO: renamed from: m, reason: collision with root package name */
        private boolean f9261m;

        /* JADX INFO: renamed from: com.beizi.ad.model.a$b$a, reason: collision with other inner class name */
        public static final class C0228a {

            /* JADX INFO: renamed from: a, reason: collision with root package name */
            private String f9262a;

            /* JADX INFO: renamed from: b, reason: collision with root package name */
            private i.h f9263b;

            /* JADX INFO: renamed from: c, reason: collision with root package name */
            private i.g f9264c;

            /* JADX INFO: renamed from: d, reason: collision with root package name */
            private long f9265d;

            /* JADX INFO: renamed from: e, reason: collision with root package name */
            private String f9266e;

            /* JADX INFO: renamed from: f, reason: collision with root package name */
            private String f9267f;

            /* JADX INFO: renamed from: g, reason: collision with root package name */
            private String f9268g;

            /* JADX INFO: renamed from: h, reason: collision with root package name */
            private long f9269h;

            /* JADX INFO: renamed from: i, reason: collision with root package name */
            private long f9270i;

            /* JADX INFO: renamed from: j, reason: collision with root package name */
            private g.a f9271j;

            /* JADX INFO: renamed from: k, reason: collision with root package name */
            private g.c f9272k;

            /* JADX INFO: renamed from: l, reason: collision with root package name */
            private ArrayList<C0226a> f9273l = new ArrayList<>();

            /* JADX INFO: renamed from: m, reason: collision with root package name */
            private boolean f9274m;

            public C0228a a(String str) {
                this.f9262a = str;
                return this;
            }

            public C0228a b(String str) {
                this.f9266e = str;
                return this;
            }

            public C0228a c(String str) {
                this.f9267f = str;
                return this;
            }

            public C0228a d(String str) {
                this.f9268g = str;
                return this;
            }

            public C0228a a(i.h hVar) {
                this.f9263b = hVar;
                return this;
            }

            public C0228a b(long j10) {
                this.f9269h = j10;
                return this;
            }

            public C0228a c(long j10) {
                this.f9270i = j10;
                return this;
            }

            public C0228a a(i.g gVar) {
                this.f9264c = gVar;
                return this;
            }

            public C0228a a(long j10) {
                this.f9265d = j10;
                return this;
            }

            public C0228a a(g.a aVar) {
                this.f9271j = aVar;
                return this;
            }

            public C0228a a(g.c cVar) {
                this.f9272k = cVar;
                return this;
            }

            public C0228a a(boolean z10) {
                this.f9274m = z10;
                return this;
            }

            public b a() {
                b bVar = new b();
                bVar.f9253e = this.f9266e;
                bVar.f9258j = this.f9271j;
                bVar.f9251c = this.f9264c;
                bVar.f9256h = this.f9269h;
                bVar.f9250b = this.f9263b;
                bVar.f9252d = this.f9265d;
                bVar.f9255g = this.f9268g;
                bVar.f9257i = this.f9270i;
                bVar.f9259k = this.f9272k;
                bVar.f9260l = this.f9273l;
                bVar.f9254f = this.f9267f;
                bVar.f9249a = this.f9262a;
                bVar.f9261m = this.f9274m;
                return bVar;
            }

            public void a(C0226a c0226a) {
                this.f9273l.add(c0226a);
            }
        }

        public String toString() {
            return a();
        }

        private b() {
        }

        private String a() {
            JSONObject jSONObject = new JSONObject();
            try {
                jSONObject.put("version", this.f9249a);
                if (this.f9261m) {
                    jSONObject.put("srcType", this.f9250b.a());
                    jSONObject.put("reqType", this.f9251c.a());
                } else {
                    jSONObject.put("srcType", this.f9250b);
                    jSONObject.put("reqType", this.f9251c);
                }
                jSONObject.put(CountlyDbPolicy.FIELD_COUNTLY_TIME_STAMP, this.f9252d);
                jSONObject.put("appid", this.f9253e);
                jSONObject.put("appVersion", this.f9254f);
                jSONObject.put("apkName", this.f9255g);
                jSONObject.put("appInstallTime", this.f9256h);
                jSONObject.put("appUpdateTime", this.f9257i);
                g.a aVar = this.f9258j;
                if (aVar != null) {
                    jSONObject.put("devInfo", aVar.a());
                }
                g.c cVar = this.f9259k;
                if (cVar != null) {
                    jSONObject.put("envInfo", cVar.a());
                }
                ArrayList<C0226a> arrayList = this.f9260l;
                if (arrayList != null && arrayList.size() > 0) {
                    JSONArray jSONArray = new JSONArray();
                    for (int i10 = 0; i10 < this.f9260l.size(); i10++) {
                        jSONArray.put(this.f9260l.get(i10).a());
                    }
                    jSONObject.put("adReqInfo", jSONArray);
                }
                return jSONObject.toString();
            } catch (JSONException e10) {
                e10.printStackTrace();
                return null;
            }
        }
    }
}
