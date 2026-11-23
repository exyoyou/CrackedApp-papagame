package com.beizi.ad.model;

import android.text.TextUtils;
import androidx.core.app.NotificationCompat;
import com.bytedance.sdk.openadsdk.mediation.MediationConstant;
import com.haima.hmcp.beans.HmInputMappingContent;
import com.join.mgps.activity.QuarkDownGameActivity_;
import com.kwad.components.offline.api.tk.model.report.TKDownloadReason;
import com.qq.e.comm.constants.Constants;
import com.sigmob.sdk.base.models.ClickCommon;
import com.umeng.analytics.pro.bm;
import com.windmill.sdk.WMConstants;
import java.io.ByteArrayOutputStream;
import java.io.IOException;
import java.io.InputStream;
import java.io.Serializable;
import java.util.ArrayList;
import java.util.List;
import org.json.JSONArray;
import org.json.JSONException;
import org.json.JSONObject;

/* JADX INFO: loaded from: classes6.dex */
public final class c {

    public static class a {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        private com.beizi.ad.model.i.f f9343a;

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        private String f9344b;

        /* JADX INFO: renamed from: c, reason: collision with root package name */
        private List<f> f9345c;

        public com.beizi.ad.model.i.f a() {
            return this.f9343a;
        }

        public String b() {
            return this.f9344b;
        }

        public List<f> c() {
            return this.f9345c;
        }

        public int d() {
            List<f> list = this.f9345c;
            if (list == null) {
                return 0;
            }
            return list.size();
        }

        public void a(com.beizi.ad.model.i.f fVar) {
            this.f9343a = fVar;
        }

        public void a(String str) {
            this.f9344b = str;
        }

        public void a(List<f> list) {
            this.f9345c = list;
        }
    }

    public static class b {
        private int A;

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        private String f9346a;

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        private String f9347b;

        /* JADX INFO: renamed from: c, reason: collision with root package name */
        private int f9348c;

        /* JADX INFO: renamed from: d, reason: collision with root package name */
        private String f9349d;

        /* JADX INFO: renamed from: e, reason: collision with root package name */
        private String f9350e;

        /* JADX INFO: renamed from: f, reason: collision with root package name */
        private String f9351f;

        /* JADX INFO: renamed from: g, reason: collision with root package name */
        private String f9352g;

        /* JADX INFO: renamed from: h, reason: collision with root package name */
        private String f9353h;

        /* JADX INFO: renamed from: i, reason: collision with root package name */
        private String f9354i;

        /* JADX INFO: renamed from: j, reason: collision with root package name */
        private boolean f9355j;

        /* JADX INFO: renamed from: k, reason: collision with root package name */
        private int f9356k;

        /* JADX INFO: renamed from: l, reason: collision with root package name */
        private C0229b f9357l;

        /* JADX INFO: renamed from: m, reason: collision with root package name */
        private C0230c f9358m;

        /* JADX INFO: renamed from: n, reason: collision with root package name */
        private List<h> f9359n;

        /* JADX INFO: renamed from: o, reason: collision with root package name */
        private String f9360o;

        /* JADX INFO: renamed from: p, reason: collision with root package name */
        private String f9361p;

        /* JADX INFO: renamed from: q, reason: collision with root package name */
        private String f9362q;

        /* JADX INFO: renamed from: r, reason: collision with root package name */
        private String f9363r;

        /* JADX INFO: renamed from: s, reason: collision with root package name */
        private String f9364s;

        /* JADX INFO: renamed from: t, reason: collision with root package name */
        private String f9365t;

        /* JADX INFO: renamed from: u, reason: collision with root package name */
        private String f9366u;

        /* JADX INFO: renamed from: v, reason: collision with root package name */
        private a f9367v;

        /* JADX INFO: renamed from: w, reason: collision with root package name */
        private String f9368w;

        /* JADX INFO: renamed from: x, reason: collision with root package name */
        private String f9369x;

        /* JADX INFO: renamed from: y, reason: collision with root package name */
        private String f9370y;

        /* JADX INFO: renamed from: z, reason: collision with root package name */
        private String f9371z;

        public static class a {

            /* JADX INFO: renamed from: a, reason: collision with root package name */
            private int f9372a;

            /* JADX INFO: renamed from: b, reason: collision with root package name */
            private int f9373b;

            /* JADX INFO: renamed from: c, reason: collision with root package name */
            private int f9374c;

            public int a() {
                return this.f9372a;
            }

            public int b() {
                return this.f9373b;
            }

            public int c() {
                return this.f9374c;
            }

            public void a(int i10) {
                this.f9372a = i10;
            }

            public void b(int i10) {
                this.f9373b = i10;
            }

            public void c(int i10) {
                this.f9374c = i10;
            }
        }

        /* JADX INFO: renamed from: com.beizi.ad.model.c$b$b, reason: collision with other inner class name */
        public static class C0229b implements Serializable {

            /* JADX INFO: renamed from: a, reason: collision with root package name */
            private List<String> f9375a;

            /* JADX INFO: renamed from: b, reason: collision with root package name */
            private List<String> f9376b;

            /* JADX INFO: renamed from: c, reason: collision with root package name */
            private List<String> f9377c;

            /* JADX INFO: renamed from: d, reason: collision with root package name */
            private List<String> f9378d;

            /* JADX INFO: renamed from: e, reason: collision with root package name */
            private List<String> f9379e;

            /* JADX INFO: renamed from: f, reason: collision with root package name */
            private List<String> f9380f;

            /* JADX INFO: renamed from: g, reason: collision with root package name */
            private List<String> f9381g;

            /* JADX INFO: renamed from: h, reason: collision with root package name */
            private List<String> f9382h;

            /* JADX INFO: renamed from: i, reason: collision with root package name */
            private List<String> f9383i;

            /* JADX INFO: renamed from: j, reason: collision with root package name */
            private List<String> f9384j;

            /* JADX INFO: renamed from: k, reason: collision with root package name */
            private List<String> f9385k;

            /* JADX INFO: renamed from: l, reason: collision with root package name */
            private List<String> f9386l;

            /* JADX INFO: renamed from: m, reason: collision with root package name */
            private List<String> f9387m;

            /* JADX INFO: renamed from: n, reason: collision with root package name */
            private List<String> f9388n;

            /* JADX INFO: renamed from: o, reason: collision with root package name */
            private List<String> f9389o;

            /* JADX INFO: renamed from: p, reason: collision with root package name */
            private List<String> f9390p;

            /* JADX INFO: renamed from: q, reason: collision with root package name */
            private List<String> f9391q;

            /* JADX INFO: renamed from: r, reason: collision with root package name */
            private List<String> f9392r;

            public List<String> a() {
                return this.f9375a;
            }

            public List<String> b() {
                return this.f9376b;
            }

            public List<String> c() {
                return this.f9377c;
            }

            public List<String> d() {
                return this.f9378d;
            }

            public void e(List<String> list) {
                this.f9379e = list;
            }

            public void f(List<String> list) {
                this.f9380f = list;
            }

            public void g(List<String> list) {
                this.f9381g = list;
            }

            public void h(List<String> list) {
                this.f9382h = list;
            }

            public void i(List<String> list) {
                this.f9383i = list;
            }

            public void j(List<String> list) {
                this.f9384j = list;
            }

            public void k(List<String> list) {
                this.f9385k = list;
            }

            public void l(List<String> list) {
                this.f9386l = list;
            }

            public void m(List<String> list) {
                this.f9387m = list;
            }

            public void n(List<String> list) {
                this.f9388n = list;
            }

            public void o(List<String> list) {
                this.f9389o = list;
            }

            public void p(List<String> list) {
                this.f9390p = list;
            }

            public void q(List<String> list) {
                this.f9391q = list;
            }

            public void r(List<String> list) {
                this.f9392r = list;
            }

            public void a(List<String> list) {
                this.f9375a = list;
            }

            public void b(List<String> list) {
                this.f9376b = list;
            }

            public void c(List<String> list) {
                this.f9377c = list;
            }

            public void d(List<String> list) {
                this.f9378d = list;
            }

            public List<String> e() {
                return this.f9386l;
            }

            public List<String> f() {
                return this.f9387m;
            }

            public List<String> g() {
                return this.f9388n;
            }

            public List<String> h() {
                return this.f9389o;
            }

            public List<String> i() {
                return this.f9390p;
            }

            public List<String> j() {
                return this.f9391q;
            }

            public List<String> k() {
                return this.f9392r;
            }
        }

        /* JADX INFO: renamed from: com.beizi.ad.model.c$b$c, reason: collision with other inner class name */
        public static class C0230c {

            /* JADX INFO: renamed from: a, reason: collision with root package name */
            private List<String> f9393a;

            /* JADX INFO: renamed from: b, reason: collision with root package name */
            private List<String> f9394b;

            /* JADX INFO: renamed from: c, reason: collision with root package name */
            private List<String> f9395c;

            /* JADX INFO: renamed from: d, reason: collision with root package name */
            private List<String> f9396d;

            /* JADX INFO: renamed from: e, reason: collision with root package name */
            private List<String> f9397e;

            /* JADX INFO: renamed from: f, reason: collision with root package name */
            private List<a> f9398f;

            /* JADX INFO: renamed from: com.beizi.ad.model.c$b$c$a */
            public static class a {

                /* JADX INFO: renamed from: a, reason: collision with root package name */
                private int f9399a;

                /* JADX INFO: renamed from: b, reason: collision with root package name */
                private List<String> f9400b;

                public void a(int i10) {
                    this.f9399a = i10;
                }

                public void a(List<String> list) {
                    this.f9400b = list;
                }
            }

            public void a(List<String> list) {
                this.f9393a = list;
            }

            public void b(List<String> list) {
                this.f9394b = list;
            }

            public void c(List<String> list) {
                this.f9395c = list;
            }

            public void d(List<String> list) {
                this.f9396d = list;
            }

            public void e(List<String> list) {
                this.f9397e = list;
            }

            public void f(List<a> list) {
                this.f9398f = list;
            }
        }

        public String a() {
            return this.f9346a;
        }

        public String b() {
            return this.f9347b;
        }

        public int c() {
            return this.f9348c;
        }

        public String d() {
            return this.f9349d;
        }

        public String e() {
            return this.f9350e;
        }

        public String f() {
            return this.f9352g;
        }

        public String g() {
            return this.f9353h;
        }

        public String h() {
            return this.f9354i;
        }

        public C0229b i() {
            return this.f9357l;
        }

        public List<h> j() {
            return this.f9359n;
        }

        public String k() {
            return this.f9360o;
        }

        public String l() {
            return this.f9361p;
        }

        public String m() {
            return this.f9362q;
        }

        public String n() {
            return this.f9363r;
        }

        public String o() {
            return this.f9364s;
        }

        public String p() {
            return this.f9365t;
        }

        public String q() {
            return this.f9366u;
        }

        public a r() {
            return this.f9367v;
        }

        public String s() {
            return this.f9368w;
        }

        public String t() {
            return this.f9369x;
        }

        public String u() {
            return this.f9370y;
        }

        public String v() {
            return this.f9371z;
        }

        public int w() {
            return this.A;
        }

        public void a(String str) {
            this.f9346a = str;
        }

        public void b(String str) {
            this.f9347b = str;
        }

        public void c(String str) {
            this.f9349d = str;
        }

        public void d(String str) {
            this.f9350e = str;
        }

        public void e(String str) {
            this.f9351f = str;
        }

        public void f(String str) {
            this.f9352g = str;
        }

        public void g(String str) {
            this.f9353h = str;
        }

        public void h(String str) {
            this.f9360o = str;
        }

        public void i(String str) {
            this.f9361p = str;
        }

        public void j(String str) {
            this.f9362q = str;
        }

        public void k(String str) {
            this.f9363r = str;
        }

        public void l(String str) {
            this.f9364s = str;
        }

        public void m(String str) {
            this.f9365t = str;
        }

        public void n(String str) {
            this.f9366u = str;
        }

        public void o(String str) {
            this.f9368w = str;
        }

        public void p(String str) {
            this.f9369x = str;
        }

        public void q(String str) {
            this.f9370y = str;
        }

        public void r(String str) {
            this.f9371z = str;
        }

        public void a(int i10) {
            this.f9348c = i10;
        }

        public void b(int i10) {
            this.f9356k = i10;
        }

        public void c(int i10) {
            this.A = i10;
        }

        public void a(boolean z10) {
            this.f9355j = z10;
        }

        public void a(C0229b c0229b) {
            this.f9357l = c0229b;
        }

        public void a(C0230c c0230c) {
            this.f9358m = c0230c;
        }

        public void a(List<h> list) {
            this.f9359n = list;
        }

        public void a(a aVar) {
            this.f9367v = aVar;
        }
    }

    /* JADX INFO: renamed from: com.beizi.ad.model.c$c, reason: collision with other inner class name */
    public static class C0231c {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        private String f9401a;

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        private String f9402b;

        /* JADX INFO: renamed from: c, reason: collision with root package name */
        private String f9403c;

        /* JADX INFO: renamed from: d, reason: collision with root package name */
        private String f9404d;

        public String a() {
            return this.f9401a;
        }

        public String b() {
            return this.f9402b;
        }

        public String c() {
            return this.f9403c;
        }

        public String d() {
            return this.f9404d;
        }

        public void a(String str) {
            this.f9401a = str;
        }

        public void b(String str) {
            this.f9402b = str;
        }

        public void c(String str) {
            this.f9403c = str;
        }

        public void d(String str) {
            this.f9404d = str;
        }
    }

    public static class d {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        private String f9405a;

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        private b f9406b;

        /* JADX INFO: renamed from: c, reason: collision with root package name */
        private C0231c f9407c;

        /* JADX INFO: renamed from: d, reason: collision with root package name */
        private List<a> f9408d;

        /* JADX INFO: renamed from: e, reason: collision with root package name */
        private List<Object> f9409e;

        /* JADX INFO: renamed from: f, reason: collision with root package name */
        private String f9410f;

        /* JADX INFO: renamed from: g, reason: collision with root package name */
        private String f9411g;

        /* JADX INFO: renamed from: h, reason: collision with root package name */
        private e f9412h;

        /* JADX INFO: renamed from: i, reason: collision with root package name */
        private com.beizi.ad.model.h f9413i;

        /* JADX INFO: renamed from: j, reason: collision with root package name */
        private String f9414j;

        /* JADX INFO: renamed from: k, reason: collision with root package name */
        private int f9415k;

        /* JADX INFO: renamed from: l, reason: collision with root package name */
        private com.beizi.ad.model.a.f f9416l;

        /* JADX INFO: renamed from: m, reason: collision with root package name */
        private String f9417m;

        /* JADX INFO: renamed from: n, reason: collision with root package name */
        private String f9418n;

        /* JADX INFO: renamed from: o, reason: collision with root package name */
        private String f9419o;

        /* JADX INFO: renamed from: p, reason: collision with root package name */
        private l f9420p;

        /* JADX INFO: renamed from: q, reason: collision with root package name */
        private m f9421q;

        /* JADX INFO: renamed from: r, reason: collision with root package name */
        private com.beizi.ad.model.j f9422r;

        /* JADX INFO: renamed from: s, reason: collision with root package name */
        private int f9423s;

        /* JADX INFO: renamed from: t, reason: collision with root package name */
        private boolean f9424t;

        /* JADX INFO: renamed from: u, reason: collision with root package name */
        private boolean f9425u;

        /* JADX INFO: renamed from: v, reason: collision with root package name */
        private o f9426v;

        /* JADX INFO: renamed from: w, reason: collision with root package name */
        private n f9427w;

        /* JADX INFO: renamed from: x, reason: collision with root package name */
        private List<com.beizi.ad.model.e> f9428x;

        public void a(String str) {
            this.f9405a = str;
        }

        public void b(String str) {
            this.f9411g = str;
        }

        public int c() {
            List<a> list = this.f9408d;
            if (list == null) {
                return 0;
            }
            return list.size();
        }

        public C0231c d() {
            return this.f9407c;
        }

        public List<a> e() {
            return this.f9408d;
        }

        public List<Object> f() {
            return this.f9409e;
        }

        public int g() {
            List<Object> list = this.f9409e;
            if (list == null) {
                return 0;
            }
            return list.size();
        }

        public String h() {
            return this.f9410f;
        }

        public e i() {
            return this.f9412h;
        }

        public com.beizi.ad.model.h j() {
            return this.f9413i;
        }

        public String k() {
            return this.f9414j;
        }

        public int l() {
            return this.f9415k;
        }

        public com.beizi.ad.model.a.f m() {
            return this.f9416l;
        }

        public String n() {
            return this.f9417m;
        }

        public String o() {
            return this.f9418n;
        }

        public String p() {
            return this.f9419o;
        }

        public l q() {
            return this.f9420p;
        }

        public m r() {
            return this.f9421q;
        }

        public com.beizi.ad.model.j s() {
            return this.f9422r;
        }

        public int t() {
            return this.f9423s;
        }

        public boolean u() {
            return this.f9424t;
        }

        public boolean v() {
            return this.f9425u;
        }

        public o w() {
            return this.f9426v;
        }

        public n x() {
            return this.f9427w;
        }

        public List<com.beizi.ad.model.e> y() {
            return this.f9428x;
        }

        public String a() {
            return this.f9411g;
        }

        public b b() {
            return this.f9406b;
        }

        public void c(String str) {
            this.f9410f = str;
        }

        public void d(String str) {
            this.f9414j = str;
        }

        public void e(String str) {
            this.f9417m = str;
        }

        public void f(String str) {
            this.f9418n = str;
        }

        public void g(String str) {
            this.f9419o = str;
        }

        public void a(b bVar) {
            this.f9406b = bVar;
        }

        public void b(int i10) {
            this.f9423s = i10;
        }

        public void a(C0231c c0231c) {
            this.f9407c = c0231c;
        }

        public void b(boolean z10) {
            this.f9425u = z10;
        }

        public void a(List<a> list) {
            this.f9408d = list;
        }

        public void b(List<com.beizi.ad.model.e> list) {
            this.f9428x = list;
        }

        public void a(e eVar) {
            this.f9412h = eVar;
        }

        public void a(com.beizi.ad.model.h hVar) {
            this.f9413i = hVar;
        }

        public void a(int i10) {
            this.f9415k = i10;
        }

        public void a(com.beizi.ad.model.a.f fVar) {
            this.f9416l = fVar;
        }

        public void a(l lVar) {
            this.f9420p = lVar;
        }

        public void a(m mVar) {
            this.f9421q = mVar;
        }

        public void a(com.beizi.ad.model.j jVar) {
            this.f9422r = jVar;
        }

        public void a(boolean z10) {
            this.f9424t = z10;
        }

        public void a(o oVar) {
            this.f9426v = oVar;
        }

        public void a(n nVar) {
            this.f9427w = nVar;
        }
    }

    public static class e {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        private boolean f9429a;

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        private double f9430b;

        /* JADX INFO: renamed from: c, reason: collision with root package name */
        private double f9431c;

        public boolean a() {
            return this.f9429a;
        }

        public double b() {
            return this.f9430b;
        }

        public double c() {
            return this.f9431c;
        }

        public void a(boolean z10) {
            this.f9429a = z10;
        }

        public void b(double d10) {
            this.f9431c = d10;
        }

        public void a(double d10) {
            this.f9430b = d10;
        }
    }

    public static class f {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        private String f9432a;

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        private String f9433b;

        public void a(String str) {
            this.f9432a = str;
        }

        public void b(String str) {
            this.f9433b = str;
        }

        public String a() {
            return this.f9433b;
        }
    }

    public static class g {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        private int f9434a = -1;

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        private int f9435b = -1;

        /* JADX INFO: renamed from: c, reason: collision with root package name */
        private int f9436c = -1;

        /* JADX INFO: renamed from: d, reason: collision with root package name */
        private int f9437d = -1;

        /* JADX INFO: renamed from: e, reason: collision with root package name */
        private String f9438e;

        /* JADX INFO: renamed from: f, reason: collision with root package name */
        private String f9439f;

        /* JADX INFO: renamed from: g, reason: collision with root package name */
        private String f9440g;

        public int a() {
            return this.f9434a;
        }

        public int b() {
            return this.f9435b;
        }

        public int c() {
            return this.f9436c;
        }

        public int d() {
            return this.f9437d;
        }

        public String e() {
            return this.f9438e;
        }

        public String f() {
            return this.f9439f;
        }

        public String g() {
            return this.f9440g;
        }

        public void a(int i10) {
            this.f9434a = i10;
        }

        public void b(int i10) {
            this.f9435b = i10;
        }

        public void c(int i10) {
            this.f9436c = i10;
        }

        public void d(int i10) {
            this.f9437d = i10;
        }

        public void a(String str) {
            this.f9438e = str;
        }

        public void b(String str) {
            this.f9439f = str;
        }

        public void c(String str) {
            this.f9440g = str;
        }
    }

    public static class h {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        private String f9441a;

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        private String f9442b;

        /* JADX INFO: renamed from: c, reason: collision with root package name */
        private String f9443c;

        /* JADX INFO: renamed from: d, reason: collision with root package name */
        private String f9444d;

        /* JADX INFO: renamed from: e, reason: collision with root package name */
        private String f9445e;

        /* JADX INFO: renamed from: f, reason: collision with root package name */
        private String f9446f;

        /* JADX INFO: renamed from: g, reason: collision with root package name */
        private String f9447g;

        /* JADX INFO: renamed from: h, reason: collision with root package name */
        private String f9448h;

        /* JADX INFO: renamed from: i, reason: collision with root package name */
        private String f9449i;

        /* JADX INFO: renamed from: j, reason: collision with root package name */
        private String f9450j;

        public String a() {
            return this.f9441a;
        }

        public String b() {
            return this.f9442b;
        }

        public void c(String str) {
            this.f9443c = str;
        }

        public void d(String str) {
            this.f9444d = str;
        }

        public void e(String str) {
            this.f9445e = str;
        }

        public void f(String str) {
            this.f9446f = str;
        }

        public void g(String str) {
            this.f9447g = str;
        }

        public void h(String str) {
            this.f9448h = str;
        }

        public void i(String str) {
            this.f9449i = str;
        }

        public void j(String str) {
            this.f9450j = str;
        }

        public void a(String str) {
            this.f9441a = str;
        }

        public void b(String str) {
            this.f9442b = str;
        }

        public String c() {
            return this.f9444d;
        }

        public String d() {
            return this.f9447g;
        }

        public String e() {
            return this.f9448h;
        }

        public String f() {
            return this.f9449i;
        }

        public String g() {
            return this.f9450j;
        }
    }

    public static class i {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        private int f9451a;

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        private String f9452b;

        /* JADX INFO: renamed from: c, reason: collision with root package name */
        private String f9453c;

        /* JADX INFO: renamed from: d, reason: collision with root package name */
        private long f9454d;

        /* JADX INFO: renamed from: e, reason: collision with root package name */
        private List<j> f9455e;

        public int a() {
            List<j> list = this.f9455e;
            if (list == null) {
                return 0;
            }
            return list.size();
        }

        public int b() {
            return this.f9451a;
        }

        public long c() {
            return this.f9454d;
        }

        public List<j> d() {
            return this.f9455e;
        }

        /* JADX WARN: Code duplicated, block: B:209:0x07a8  */
        /* JADX WARN: Code duplicated, block: B:217:0x07c8  */
        /* JADX WARN: Code duplicated, block: B:224:0x07e3  */
        /* JADX WARN: Code duplicated, block: B:243:0x0819 A[Catch: Exception -> 0x0825, TryCatch #12 {Exception -> 0x0825, blocks: (B:241:0x0813, B:243:0x0819, B:244:0x0820), top: B:387:0x0813 }] */
        /* JADX WARN: Code duplicated, block: B:271:0x0894 A[Catch: Exception -> 0x0898, TRY_LEAVE, TryCatch #23 {Exception -> 0x0898, blocks: (B:269:0x088a, B:271:0x0894), top: B:409:0x088a }] */
        /* JADX WARN: Code duplicated, block: B:275:0x08a6  */
        /* JADX WARN: Code duplicated, block: B:282:0x08c2  */
        /* JADX WARN: Code duplicated, block: B:289:0x08dc A[Catch: Exception -> 0x0983, TRY_ENTER, TRY_LEAVE, TryCatch #31 {Exception -> 0x0983, blocks: (B:283:0x08c4, B:289:0x08dc, B:294:0x08ef), top: B:425:0x08c4 }] */
        /* JADX WARN: Code duplicated, block: B:291:0x08e2 A[Catch: Exception -> 0x08d2, TRY_ENTER, TryCatch #27 {Exception -> 0x08d2, blocks: (B:285:0x08ca, B:291:0x08e2, B:293:0x08ec, B:296:0x08f5, B:298:0x08ff), top: B:417:0x08ca }] */
        /* JADX WARN: Code duplicated, block: B:296:0x08f5 A[Catch: Exception -> 0x08d2, TRY_ENTER, TryCatch #27 {Exception -> 0x08d2, blocks: (B:285:0x08ca, B:291:0x08e2, B:293:0x08ec, B:296:0x08f5, B:298:0x08ff), top: B:417:0x08ca }] */
        /* JADX WARN: Code duplicated, block: B:304:0x0914 A[Catch: Exception -> 0x0918, TRY_LEAVE, TryCatch #22 {Exception -> 0x0918, blocks: (B:302:0x090a, B:304:0x0914, B:310:0x0926, B:312:0x0930, B:315:0x0939, B:317:0x0943), top: B:407:0x090a }] */
        /* JADX WARN: Code duplicated, block: B:308:0x0920 A[Catch: Exception -> 0x097d, TRY_ENTER, TRY_LEAVE, TryCatch #29 {Exception -> 0x097d, blocks: (B:300:0x0904, B:308:0x0920, B:313:0x0933), top: B:421:0x0904 }] */
        /* JADX WARN: Code duplicated, block: B:310:0x0926 A[Catch: Exception -> 0x0918, TRY_ENTER, TryCatch #22 {Exception -> 0x0918, blocks: (B:302:0x090a, B:304:0x0914, B:310:0x0926, B:312:0x0930, B:315:0x0939, B:317:0x0943), top: B:407:0x090a }] */
        /* JADX WARN: Code duplicated, block: B:315:0x0939 A[Catch: Exception -> 0x0918, TRY_ENTER, TryCatch #22 {Exception -> 0x0918, blocks: (B:302:0x090a, B:304:0x0914, B:310:0x0926, B:312:0x0930, B:315:0x0939, B:317:0x0943), top: B:407:0x090a }] */
        /* JADX WARN: Code duplicated, block: B:323:0x0958 A[Catch: Exception -> 0x095c, TRY_LEAVE, TryCatch #9 {Exception -> 0x095c, blocks: (B:321:0x094e, B:323:0x0958), top: B:381:0x094e }] */
        /* JADX WARN: Code duplicated, block: B:330:0x0969 A[Catch: Exception -> 0x0977, TryCatch #3 {Exception -> 0x0977, blocks: (B:328:0x0963, B:330:0x0969, B:332:0x0973), top: B:369:0x0963 }] */
        /* JADX WARN: Code duplicated, block: B:367:0x07b0 A[EXC_TOP_SPLITTER, SYNTHETIC] */
        /* JADX WARN: Code duplicated, block: B:371:0x08ae A[EXC_TOP_SPLITTER, SYNTHETIC] */
        /* JADX WARN: Code duplicated, block: B:373:0x07ed A[EXC_TOP_SPLITTER, SYNTHETIC] */
        /* JADX WARN: Code duplicated, block: B:381:0x094e A[EXC_TOP_SPLITTER, SYNTHETIC] */
        /* JADX WARN: Code duplicated, block: B:393:0x0806 A[EXC_TOP_SPLITTER, SYNTHETIC] */
        /* JADX WARN: Code duplicated, block: B:407:0x090a A[EXC_TOP_SPLITTER, SYNTHETIC] */
        /* JADX WARN: Code duplicated, block: B:409:0x088a A[EXC_TOP_SPLITTER, SYNTHETIC] */
        /* JADX WARN: Code duplicated, block: B:411:0x07d0 A[EXC_TOP_SPLITTER, SYNTHETIC] */
        /* JADX WARN: Code duplicated, block: B:413:0x078e A[EXC_TOP_SPLITTER, SYNTHETIC] */
        /* JADX WARN: Code duplicated, block: B:417:0x08ca A[EXC_TOP_SPLITTER, SYNTHETIC] */
        public static i c(String str) throws JSONException {
            JSONException jSONException;
            String str2;
            ArrayList arrayList;
            String str3;
            String str4;
            String str5;
            String str6;
            String str7;
            String str8;
            String str9;
            String str10;
            String str11;
            String str12;
            String str13;
            String str14;
            JSONObject jSONObject;
            String str15;
            j jVar;
            String str16;
            String str17;
            Exception exc;
            Exception exc2;
            com.beizi.ad.model.a.f fVarK;
            l lVarM;
            q qVarP;
            com.beizi.ad.model.d dVarA;
            com.beizi.ad.model.j jVarO;
            m mVarN;
            l lVarM2;
            com.beizi.ad.model.h hVarL;
            JSONObject jSONObjectOptJSONObject;
            String str18;
            String str19;
            j jVar2;
            int i10;
            ArrayList arrayList2;
            String str20;
            ArrayList arrayList3;
            Exception exc3;
            n nVarR;
            o oVarQ;
            com.beizi.ad.model.j jVarO2;
            m mVarN2;
            l lVarM3;
            com.beizi.ad.model.a.f fVarK2;
            com.beizi.ad.model.h hVarL2;
            String str21;
            String str22 = "customData";
            String str23 = "secondPrice";
            String str24 = "endNotification";
            String str25 = "isLastLook";
            String str26 = "auctionType";
            String str27 = "effectRate";
            String str28 = "totalSecondPrice";
            String str29 = "raiseSortPrice";
            String str30 = "totalPrice";
            String str31 = "auctionStrategy";
            String str32 = "blackListInfo";
            String strB = com.beizi.ad.lance.a.a.b(com.beizi.ad.lance.a.m.a(), str);
            StringBuilder sb2 = new StringBuilder();
            String str33 = "unconventionalNative";
            sb2.append("decryptStr = ");
            sb2.append(strB);
            com.beizi.ad.lance.a.n.d("ServerResponse", sb2.toString());
            JSONObject jSONObject2 = new JSONObject(strB);
            i iVar = new i();
            try {
                iVar.a(jSONObject2.optString("errcode"));
                iVar.b(jSONObject2.optString("errmsg"));
                iVar.a(jSONObject2.optInt("status"));
                String str34 = "winPriceMax";
                String str35 = "winPriceMin";
                iVar.a(jSONObject2.optLong("ts"));
                JSONArray jSONArrayOptJSONArray = jSONObject2.optJSONArray("spaceInfo");
                ArrayList arrayList4 = new ArrayList();
                if (b(jSONArrayOptJSONArray)) {
                    int i11 = 0;
                    while (i11 < jSONArrayOptJSONArray.length()) {
                        try {
                            j jVar3 = new j();
                            i iVar2 = iVar;
                            try {
                                JSONObject jSONObjectOptJSONObject2 = jSONArrayOptJSONArray.optJSONObject(i11);
                                if (jSONObjectOptJSONObject2 != null) {
                                    jVar3.a(jSONObjectOptJSONObject2.optString("spaceID"));
                                    jVar3.a(com.beizi.ad.model.i.a.a(jSONObjectOptJSONObject2.optInt("adpType")));
                                    jVar3.a(jSONObjectOptJSONObject2.optInt("refreshInterval"));
                                    jVar3.a(jSONObjectOptJSONObject2.optBoolean("autoClose"));
                                    jVar3.b(jSONObjectOptJSONObject2.optInt("maxTime"));
                                    jVar3.c(jSONObjectOptJSONObject2.optInt("minTime"));
                                    jVar3.b(jSONObjectOptJSONObject2.optBoolean(com.sigmob.sdk.base.common.a.f78892z));
                                    jVar3.c(jSONObjectOptJSONObject2.optBoolean("autoPlay"));
                                    JSONArray jSONArrayOptJSONArray2 = jSONObjectOptJSONObject2.optJSONArray("adResponse");
                                    ArrayList arrayList5 = new ArrayList();
                                    ArrayList arrayList6 = arrayList4;
                                    String str36 = "lpOptimize";
                                    String str37 = str24;
                                    String str38 = str28;
                                    String str39 = str30;
                                    String str40 = str22;
                                    if (b(jSONArrayOptJSONArray2)) {
                                        int i12 = 0;
                                        while (i12 < jSONArrayOptJSONArray2.length()) {
                                            JSONObject jSONObjectOptJSONObject3 = jSONArrayOptJSONArray2.optJSONObject(i12);
                                            if (jSONObjectOptJSONObject3 != null) {
                                                d dVar = new d();
                                                dVar.a(jSONObjectOptJSONObject3.optString(QuarkDownGameActivity_.EXT_INFO_EXTRA));
                                                dVar.b(jSONObjectOptJSONObject3.optString(WMConstants.ADID));
                                                JSONArray jSONArrayOptJSONArray3 = jSONObjectOptJSONObject3.optJSONArray("contentInfo");
                                                ArrayList arrayList7 = new ArrayList();
                                                if (b(jSONArrayOptJSONArray3)) {
                                                    int i13 = 0;
                                                    while (i13 < jSONArrayOptJSONArray3.length()) {
                                                        JSONObject jSONObjectOptJSONObject4 = jSONArrayOptJSONArray3.optJSONObject(i13);
                                                        if (jSONObjectOptJSONObject4 != null) {
                                                            a aVar = new a();
                                                            aVar.a(jSONObjectOptJSONObject4.optString(ClickCommon.CLICK_SCENE_TEMPLATE));
                                                            aVar.a(com.beizi.ad.model.i.f.a(jSONObjectOptJSONObject4.optInt("renderType")));
                                                            JSONArray jSONArrayOptJSONArray4 = jSONObjectOptJSONObject4.optJSONArray("adcontentSlot");
                                                            if (b(jSONArrayOptJSONArray4)) {
                                                                ArrayList arrayList8 = new ArrayList();
                                                                int i14 = 0;
                                                                while (i14 < jSONArrayOptJSONArray4.length()) {
                                                                    JSONObject jSONObjectOptJSONObject5 = jSONArrayOptJSONArray4.optJSONObject(i14);
                                                                    if (jSONObjectOptJSONObject5 != null) {
                                                                        f fVar = new f();
                                                                        fVar.a(jSONObjectOptJSONObject5.optString(TKDownloadReason.KSAD_TK_MD5));
                                                                        fVar.b(jSONObjectOptJSONObject5.optString("content"));
                                                                        arrayList8.add(fVar);
                                                                    }
                                                                    i14++;
                                                                    jSONArrayOptJSONArray4 = jSONArrayOptJSONArray4;
                                                                    str36 = str36;
                                                                }
                                                                str21 = str36;
                                                                aVar.a(arrayList8);
                                                            } else {
                                                                str21 = str36;
                                                            }
                                                            arrayList7.add(aVar);
                                                        } else {
                                                            str21 = str36;
                                                            i12 = i12;
                                                            arrayList5 = arrayList5;
                                                        }
                                                        i13++;
                                                        jSONArrayOptJSONArray3 = jSONArrayOptJSONArray3;
                                                        jVar3 = jVar3;
                                                        i12 = i12;
                                                        arrayList5 = arrayList5;
                                                        str36 = str21;
                                                    }
                                                    str20 = str36;
                                                    jVar2 = jVar3;
                                                    i10 = i12;
                                                    arrayList3 = arrayList5;
                                                    dVar.a(arrayList7);
                                                } else {
                                                    str20 = str36;
                                                    jVar2 = jVar3;
                                                    i10 = i12;
                                                    arrayList3 = arrayList5;
                                                }
                                                JSONObject jSONObjectOptJSONObject6 = jSONObjectOptJSONObject3.optJSONObject("adLogo");
                                                if (jSONObjectOptJSONObject6 != null) {
                                                    C0231c c0231c = new C0231c();
                                                    c0231c.b(jSONObjectOptJSONObject6.optString("adLabel"));
                                                    c0231c.a(jSONObjectOptJSONObject6.optString("adLabelUrl"));
                                                    c0231c.d(jSONObjectOptJSONObject6.optString("sourceLabel"));
                                                    c0231c.c(jSONObjectOptJSONObject6.optString("sourceUrl"));
                                                    dVar.a(c0231c);
                                                }
                                                dVar.c(jSONObjectOptJSONObject3.optString("price"));
                                                if (jSONObjectOptJSONObject3.has(str23)) {
                                                    dVar.d(jSONObjectOptJSONObject3.optString(str23));
                                                }
                                                b bVar = new b();
                                                JSONObject jSONObjectOptJSONObject7 = jSONObjectOptJSONObject3.optJSONObject("interactInfo");
                                                if (jSONObjectOptJSONObject7 != null) {
                                                    JSONArray jSONArrayOptJSONArray5 = jSONObjectOptJSONObject7.optJSONArray("thirdpartInfo");
                                                    if (b(jSONArrayOptJSONArray5)) {
                                                        ArrayList arrayList9 = new ArrayList();
                                                        for (int i15 = 0; i15 < jSONArrayOptJSONArray5.length(); i15++) {
                                                            JSONObject jSONObjectOptJSONObject8 = jSONArrayOptJSONArray5.optJSONObject(i15);
                                                            if (jSONObjectOptJSONObject8 != null) {
                                                                h hVar = new h();
                                                                hVar.b(jSONObjectOptJSONObject8.optString(Constants.KEYS.EXPOSED_CLICK_URL_KEY));
                                                                hVar.a(jSONObjectOptJSONObject8.optString("viewUrl"));
                                                                hVar.c(jSONObjectOptJSONObject8.optString("convertUrl"));
                                                                hVar.g(jSONObjectOptJSONObject8.optString("onFinish"));
                                                                hVar.e(jSONObjectOptJSONObject8.optString("onPause"));
                                                                hVar.f(jSONObjectOptJSONObject8.optString("onRecover"));
                                                                hVar.d(jSONObjectOptJSONObject8.optString("onStart"));
                                                                hVar.h(jSONObjectOptJSONObject8.optString("percent25"));
                                                                hVar.i(jSONObjectOptJSONObject8.optString("percent50"));
                                                                hVar.j(jSONObjectOptJSONObject8.optString("percent75"));
                                                                arrayList9.add(hVar);
                                                            }
                                                        }
                                                        bVar.a(arrayList9);
                                                    }
                                                    bVar.c(jSONObjectOptJSONObject7.optString("apkName"));
                                                    bVar.f(jSONObjectOptJSONObject7.optString("appDesc"));
                                                    bVar.h(jSONObjectOptJSONObject7.optString("appVersion"));
                                                    bVar.i(jSONObjectOptJSONObject7.optString("appDeveloper"));
                                                    bVar.j(jSONObjectOptJSONObject7.optString("appPermissionsDesc"));
                                                    bVar.k(jSONObjectOptJSONObject7.optString("appPermissionsUrl"));
                                                    bVar.l(jSONObjectOptJSONObject7.optString("appPrivacyUrl"));
                                                    bVar.m(jSONObjectOptJSONObject7.optString("appIconURL"));
                                                    bVar.n(jSONObjectOptJSONObject7.optString("appintro"));
                                                    bVar.g(jSONObjectOptJSONObject7.optString("appDownloadURL"));
                                                    bVar.e(jSONObjectOptJSONObject7.optString("appStoreID"));
                                                    bVar.a(jSONObjectOptJSONObject7.optString("landingPageUrl"));
                                                    bVar.b(jSONObjectOptJSONObject7.optString("deeplinkUrl"));
                                                    bVar.a(jSONObjectOptJSONObject7.optInt("interactType"));
                                                    bVar.d(jSONObjectOptJSONObject7.optString("packageName"));
                                                    bVar.a(jSONObjectOptJSONObject7.optBoolean("useBuiltInBrow"));
                                                    bVar.b(jSONObjectOptJSONObject7.optInt("openExternal"));
                                                    JSONObject jSONObjectOptJSONObject9 = jSONObjectOptJSONObject7.optJSONObject("followTrackExt");
                                                    b.C0229b c0229b = new b.C0229b();
                                                    if (jSONObjectOptJSONObject9 != null) {
                                                        c0229b.a(a(jSONObjectOptJSONObject9.optJSONArray("open")));
                                                        c0229b.b(a(jSONObjectOptJSONObject9.optJSONArray("beginDownload")));
                                                        c0229b.c(a(jSONObjectOptJSONObject9.optJSONArray("download")));
                                                        c0229b.d(a(jSONObjectOptJSONObject9.optJSONArray("beginInstall")));
                                                        c0229b.e(a(jSONObjectOptJSONObject9.optJSONArray(com.sigmob.sdk.base.n.f79590q)));
                                                        c0229b.f(a(jSONObjectOptJSONObject9.optJSONArray("active")));
                                                        c0229b.g(a(jSONObjectOptJSONObject9.optJSONArray("close")));
                                                        c0229b.h(a(jSONObjectOptJSONObject9.optJSONArray("showSlide")));
                                                        c0229b.j(a(jSONObjectOptJSONObject9.optJSONArray("pageClose")));
                                                        c0229b.i(a(jSONObjectOptJSONObject9.optJSONArray("pageLoad")));
                                                        c0229b.k(a(jSONObjectOptJSONObject9.optJSONArray("pageAction")));
                                                        c0229b.l(a(jSONObjectOptJSONObject9.optJSONArray("deepLinkSuccess")));
                                                        c0229b.m(a(jSONObjectOptJSONObject9.optJSONArray("realDeepLinkSuccess")));
                                                        c0229b.n(a(jSONObjectOptJSONObject9.optJSONArray("deepLinkFail")));
                                                        c0229b.o(a(jSONObjectOptJSONObject9.optJSONArray("dpAppInstalled")));
                                                        c0229b.p(a(jSONObjectOptJSONObject9.optJSONArray("dpAppNotInstalled")));
                                                        bVar.a(c0229b);
                                                        c0229b.q(a(jSONObjectOptJSONObject9.optJSONArray("realDeepLinkFail")));
                                                        c0229b.r(a(jSONObjectOptJSONObject9.optJSONArray("miniProgramOpen")));
                                                    }
                                                    JSONObject jSONObjectOptJSONObject10 = jSONObjectOptJSONObject7.optJSONObject("videoTrackExt");
                                                    b.C0230c c0230c = new b.C0230c();
                                                    if (jSONObjectOptJSONObject10 != null) {
                                                        c0230c.a(a(jSONObjectOptJSONObject10.optJSONArray("start")));
                                                        c0230c.b(a(jSONObjectOptJSONObject10.optJSONArray(com.sigmob.sdk.base.common.a.f78876j)));
                                                        c0230c.c(a(jSONObjectOptJSONObject10.optJSONArray("continue")));
                                                        c0230c.d(a(jSONObjectOptJSONObject10.optJSONArray("exit")));
                                                        c0230c.e(a(jSONObjectOptJSONObject10.optJSONArray("complete")));
                                                        JSONArray jSONArrayOptJSONArray6 = jSONObjectOptJSONObject10.optJSONArray("showTrack");
                                                        ArrayList arrayList10 = new ArrayList();
                                                        if (b(jSONArrayOptJSONArray6)) {
                                                            int i16 = 0;
                                                            while (i16 < jSONArrayOptJSONArray6.length()) {
                                                                JSONObject jSONObjectOptJSONObject11 = jSONArrayOptJSONArray6.optJSONObject(i16);
                                                                if (jSONObjectOptJSONObject11 != null) {
                                                                    b.C0230c.a aVar2 = new b.C0230c.a();
                                                                    aVar2.a(jSONObjectOptJSONObject11.optInt(bm.aM));
                                                                    aVar2.a(a(jSONObjectOptJSONObject11.optJSONArray("url")));
                                                                    arrayList10.add(aVar2);
                                                                }
                                                                i16++;
                                                                str23 = str23;
                                                            }
                                                            str18 = str23;
                                                            c0230c.f(arrayList10);
                                                        } else {
                                                            str18 = str23;
                                                        }
                                                        bVar.a(c0230c);
                                                    } else {
                                                        str18 = str23;
                                                    }
                                                    try {
                                                        if (jSONObjectOptJSONObject7.has("ext")) {
                                                            JSONObject jSONObject3 = jSONObjectOptJSONObject7.getJSONObject("ext");
                                                            b.a aVar3 = new b.a();
                                                            if (jSONObject3 != null) {
                                                                if (jSONObject3.has("canJumpStore")) {
                                                                    aVar3.a(jSONObject3.optInt("canJumpStore"));
                                                                }
                                                                if (jSONObject3.has("isCloseConfirm")) {
                                                                    aVar3.b(jSONObject3.optInt("isCloseConfirm"));
                                                                }
                                                                if (jSONObject3.has("webDeepLink")) {
                                                                    aVar3.c(jSONObject3.optInt("webDeepLink"));
                                                                }
                                                                bVar.a(aVar3);
                                                            }
                                                        }
                                                    } catch (JSONException e10) {
                                                        e10.printStackTrace();
                                                    }
                                                    bVar.o(jSONObjectOptJSONObject7.optString("miniProgramId"));
                                                    bVar.p(jSONObjectOptJSONObject7.optString("miniProgramPath"));
                                                    bVar.q(jSONObjectOptJSONObject7.optString("miniProgramExt"));
                                                    bVar.r(jSONObjectOptJSONObject7.optString("wechat_canvas"));
                                                    bVar.c(jSONObjectOptJSONObject7.optInt("isMiniProgram"));
                                                    dVar.a(bVar);
                                                } else {
                                                    str18 = str23;
                                                }
                                                try {
                                                    if (jSONObjectOptJSONObject3.has("sensor")) {
                                                        try {
                                                            JSONObject jSONObjectOptJSONObject12 = jSONObjectOptJSONObject3.optJSONObject("sensor");
                                                            if (jSONObjectOptJSONObject12 != null) {
                                                                e eVar = new e();
                                                                if (jSONObjectOptJSONObject12.has("forceUnreal")) {
                                                                    eVar.a(jSONObjectOptJSONObject12.optBoolean("forceUnreal"));
                                                                }
                                                                if (jSONObjectOptJSONObject12.has("maxAcc")) {
                                                                    eVar.a(jSONObjectOptJSONObject12.optDouble("maxAcc"));
                                                                }
                                                                if (jSONObjectOptJSONObject12.has("angle")) {
                                                                    eVar.b(jSONObjectOptJSONObject12.optDouble("angle"));
                                                                }
                                                                dVar.a(eVar);
                                                            }
                                                        } catch (Exception e11) {
                                                            exc3 = e11;
                                                            str19 = str20;
                                                            exc3.printStackTrace();
                                                        }
                                                    }
                                                    if (jSONObjectOptJSONObject3.has("complianceSensor") && (hVarL2 = c.l(jSONObjectOptJSONObject3.optJSONObject("complianceSensor"))) != null) {
                                                        dVar.a(hVarL2);
                                                    }
                                                    if (jSONObjectOptJSONObject3.has("rewardedVideo") && (fVarK2 = c.k(jSONObjectOptJSONObject3.optJSONObject("rewardedVideo"))) != null) {
                                                        dVar.a(fVarK2);
                                                    }
                                                    if (jSONObjectOptJSONObject3.has("notification") && (lVarM3 = c.m(jSONObjectOptJSONObject3.optJSONObject("notification"))) != null) {
                                                        dVar.a(lVarM3);
                                                    }
                                                    if (jSONObjectOptJSONObject3.has("optimize") && (mVarN2 = c.n(jSONObjectOptJSONObject3.optJSONObject("optimize"))) != null) {
                                                        dVar.a(mVarN2);
                                                    }
                                                    str19 = str20;
                                                    try {
                                                        if (jSONObjectOptJSONObject3.has(str19) && (jVarO2 = c.o(jSONObjectOptJSONObject3.optJSONObject(str19))) != null) {
                                                            dVar.a(jVarO2);
                                                        }
                                                        if (jSONObjectOptJSONObject3.has("showType")) {
                                                            dVar.b(jSONObjectOptJSONObject3.optInt("showType"));
                                                        }
                                                        if (jSONObjectOptJSONObject3.has("shake") && (oVarQ = c.q(jSONObjectOptJSONObject3.optJSONObject("shake"))) != null) {
                                                            dVar.a(oVarQ);
                                                        }
                                                        if (jSONObjectOptJSONObject3.has("closePosition") && (nVarR = c.r(jSONObjectOptJSONObject3.optJSONObject("closePosition"))) != null) {
                                                            dVar.a(nVarR);
                                                        }
                                                        if (jSONObjectOptJSONObject3.has("chartlet")) {
                                                            JSONArray jSONArrayOptJSONArray7 = jSONObjectOptJSONObject3.optJSONArray("chartlet");
                                                            if (b(jSONArrayOptJSONArray7)) {
                                                                ArrayList arrayList11 = new ArrayList();
                                                                for (int i17 = 0; i17 < jSONArrayOptJSONArray7.length(); i17++) {
                                                                    com.beizi.ad.model.e eVarS = c.s(jSONArrayOptJSONArray7.optJSONObject(i17));
                                                                    if (eVarS != null) {
                                                                        arrayList11.add(eVarS);
                                                                    }
                                                                }
                                                                if (arrayList11.size() > 0) {
                                                                    dVar.b(arrayList11);
                                                                }
                                                            }
                                                        }
                                                    } catch (Exception e12) {
                                                        e = e12;
                                                        exc3 = e;
                                                        exc3.printStackTrace();
                                                    }
                                                } catch (Exception e13) {
                                                    e = e13;
                                                    str19 = str20;
                                                }
                                                if (jSONObjectOptJSONObject3.has("expireSec")) {
                                                    dVar.a(jSONObjectOptJSONObject3.optInt("expireSec"));
                                                }
                                                dVar.e(jSONObjectOptJSONObject3.optString("requestUUID"));
                                                dVar.f(jSONObjectOptJSONObject3.optString("orderId"));
                                                dVar.g(jSONObjectOptJSONObject3.optString("adxCrid"));
                                                arrayList2 = arrayList3;
                                                arrayList2.add(dVar);
                                            } else {
                                                jSONObjectOptJSONObject2 = jSONObjectOptJSONObject2;
                                                str18 = str23;
                                                str19 = str36;
                                                jVar2 = jVar3;
                                                i10 = i12;
                                                str31 = str31;
                                                arrayList2 = arrayList5;
                                            }
                                            i12 = i10 + 1;
                                            str36 = str19;
                                            arrayList5 = arrayList2;
                                            jSONArrayOptJSONArray2 = jSONArrayOptJSONArray2;
                                            str27 = str27;
                                            str29 = str29;
                                            jSONObjectOptJSONObject2 = jSONObjectOptJSONObject2;
                                            str31 = str31;
                                            str23 = str18;
                                            jVar3 = jVar2;
                                        }
                                        jSONObject = jSONObjectOptJSONObject2;
                                        str2 = str23;
                                        str15 = str36;
                                        jVar = jVar3;
                                        str16 = str27;
                                        str4 = str29;
                                        str17 = str31;
                                        jVar.a(arrayList5);
                                    } else {
                                        jSONObject = jSONObjectOptJSONObject2;
                                        str2 = str23;
                                        str15 = "lpOptimize";
                                        jVar = jVar3;
                                        str16 = str27;
                                        str4 = str29;
                                        str17 = str31;
                                    }
                                    JSONObject jSONObject4 = jSONObject;
                                    str5 = str17;
                                    try {
                                        if (!jSONObject4.has(str5) || (jSONObjectOptJSONObject = jSONObject4.optJSONObject(str5)) == null) {
                                            str5 = str5;
                                            str7 = str34;
                                            str8 = str35;
                                            str9 = str25;
                                            str11 = str40;
                                            str10 = str26;
                                            str27 = str16;
                                        } else {
                                            g gVar = new g();
                                            str4 = str4;
                                            try {
                                                if (jSONObjectOptJSONObject.has(str4)) {
                                                    try {
                                                        gVar.a(jSONObjectOptJSONObject.optInt(str4));
                                                        str27 = str16;
                                                        try {
                                                            if (jSONObjectOptJSONObject.has(str27)) {
                                                                try {
                                                                    gVar.b(jSONObjectOptJSONObject.optInt(str27));
                                                                    str10 = str26;
                                                                    try {
                                                                        if (jSONObjectOptJSONObject.has(str10)) {
                                                                            try {
                                                                                gVar.c(jSONObjectOptJSONObject.optInt(str10));
                                                                                str9 = str25;
                                                                                try {
                                                                                    if (jSONObjectOptJSONObject.has(str9)) {
                                                                                        try {
                                                                                            gVar.d(jSONObjectOptJSONObject.optInt(str9));
                                                                                            str8 = str35;
                                                                                            try {
                                                                                                str5 = str5;
                                                                                                if (jSONObjectOptJSONObject.has(str8)) {
                                                                                                    try {
                                                                                                        gVar.a(jSONObjectOptJSONObject.optString(str8));
                                                                                                    } catch (Exception e14) {
                                                                                                        exc = e14;
                                                                                                        str4 = str4;
                                                                                                        str7 = str34;
                                                                                                        str11 = str40;
                                                                                                        exc.printStackTrace();
                                                                                                        if (jSONObject4.has("rewardedVideo")) {
                                                                                                            try {
                                                                                                                fVarK = c.k(jSONObject4.optJSONObject("rewardedVideo"));
                                                                                                                if (fVarK != null) {
                                                                                                                    jVar.a(fVarK);
                                                                                                                }
                                                                                                                str13 = str39;
                                                                                                                try {
                                                                                                                    if (jSONObject4.has(str13)) {
                                                                                                                        try {
                                                                                                                            jVar.d(jSONObject4.optInt(str13));
                                                                                                                            str3 = str38;
                                                                                                                            try {
                                                                                                                                if (jSONObject4.has(str3)) {
                                                                                                                                    try {
                                                                                                                                        jVar.e(jSONObject4.optInt(str3));
                                                                                                                                        if (jSONObject4.has("complianceSensor")) {
                                                                                                                                            jVar.a(hVarL);
                                                                                                                                        }
                                                                                                                                        if (jSONObject4.has("notification")) {
                                                                                                                                            jVar.a(lVarM2);
                                                                                                                                        }
                                                                                                                                        str12 = str37;
                                                                                                                                        try {
                                                                                                                                            if (jSONObject4.has(str12)) {
                                                                                                                                                try {
                                                                                                                                                    lVarM = c.m(jSONObject4.optJSONObject(str12));
                                                                                                                                                    if (lVarM != null) {
                                                                                                                                                        jVar.b(lVarM);
                                                                                                                                                    }
                                                                                                                                                    if (jSONObject4.has("optimize")) {
                                                                                                                                                        jVar.a(mVarN);
                                                                                                                                                    }
                                                                                                                                                    if (jSONObject4.has(str15)) {
                                                                                                                                                        jVar.a(jVarO);
                                                                                                                                                    }
                                                                                                                                                    str6 = str33;
                                                                                                                                                    try {
                                                                                                                                                        if (jSONObject4.has(str6)) {
                                                                                                                                                            try {
                                                                                                                                                                qVarP = c.p(jSONObject4.optJSONObject(str6));
                                                                                                                                                                if (qVarP != null) {
                                                                                                                                                                    jVar.a(qVarP);
                                                                                                                                                                }
                                                                                                                                                            } catch (Exception e15) {
                                                                                                                                                                exc2 = e15;
                                                                                                                                                                str14 = str32;
                                                                                                                                                                exc2.printStackTrace();
                                                                                                                                                            }
                                                                                                                                                        }
                                                                                                                                                        str14 = str32;
                                                                                                                                                        try {
                                                                                                                                                            if (jSONObject4.has(str14)) {
                                                                                                                                                                jVar.a(dVarA);
                                                                                                                                                            }
                                                                                                                                                        } catch (Exception e16) {
                                                                                                                                                            e = e16;
                                                                                                                                                            exc2 = e;
                                                                                                                                                            exc2.printStackTrace();
                                                                                                                                                        }
                                                                                                                                                    } catch (Exception e17) {
                                                                                                                                                        e = e17;
                                                                                                                                                        str14 = str32;
                                                                                                                                                    }
                                                                                                                                                } catch (Exception e18) {
                                                                                                                                                    exc2 = e18;
                                                                                                                                                    str14 = str32;
                                                                                                                                                    str6 = str33;
                                                                                                                                                    exc2.printStackTrace();
                                                                                                                                                    arrayList = arrayList6;
                                                                                                                                                    arrayList.add(jVar);
                                                                                                                                                    str33 = str6;
                                                                                                                                                    str30 = str13;
                                                                                                                                                    str34 = str7;
                                                                                                                                                    str28 = str3;
                                                                                                                                                    str32 = str14;
                                                                                                                                                    str24 = str12;
                                                                                                                                                    str22 = str11;
                                                                                                                                                    str26 = str10;
                                                                                                                                                    str25 = str9;
                                                                                                                                                    str35 = str8;
                                                                                                                                                    iVar = iVar2;
                                                                                                                                                    str29 = str4;
                                                                                                                                                    str31 = str5;
                                                                                                                                                    i11++;
                                                                                                                                                    arrayList4 = arrayList;
                                                                                                                                                    jSONArrayOptJSONArray = jSONArrayOptJSONArray;
                                                                                                                                                    str23 = str2;
                                                                                                                                                }
                                                                                                                                            } else {
                                                                                                                                                if (jSONObject4.has("optimize")) {
                                                                                                                                                    jVar.a(mVarN);
                                                                                                                                                }
                                                                                                                                                if (jSONObject4.has(str15)) {
                                                                                                                                                    jVar.a(jVarO);
                                                                                                                                                }
                                                                                                                                                str6 = str33;
                                                                                                                                                if (jSONObject4.has(str6)) {
                                                                                                                                                    qVarP = c.p(jSONObject4.optJSONObject(str6));
                                                                                                                                                    if (qVarP != null) {
                                                                                                                                                        jVar.a(qVarP);
                                                                                                                                                    }
                                                                                                                                                }
                                                                                                                                                str14 = str32;
                                                                                                                                                if (jSONObject4.has(str14)) {
                                                                                                                                                    jVar.a(dVarA);
                                                                                                                                                }
                                                                                                                                            }
                                                                                                                                        } catch (Exception e19) {
                                                                                                                                            e = e19;
                                                                                                                                            str14 = str32;
                                                                                                                                            str6 = str33;
                                                                                                                                        }
                                                                                                                                    } catch (Exception e20) {
                                                                                                                                        exc2 = e20;
                                                                                                                                        str14 = str32;
                                                                                                                                        str6 = str33;
                                                                                                                                        str12 = str37;
                                                                                                                                        exc2.printStackTrace();
                                                                                                                                        arrayList = arrayList6;
                                                                                                                                        arrayList.add(jVar);
                                                                                                                                        str33 = str6;
                                                                                                                                        str30 = str13;
                                                                                                                                        str34 = str7;
                                                                                                                                        str28 = str3;
                                                                                                                                        str32 = str14;
                                                                                                                                        str24 = str12;
                                                                                                                                        str22 = str11;
                                                                                                                                        str26 = str10;
                                                                                                                                        str25 = str9;
                                                                                                                                        str35 = str8;
                                                                                                                                        iVar = iVar2;
                                                                                                                                        str29 = str4;
                                                                                                                                        str31 = str5;
                                                                                                                                        i11++;
                                                                                                                                        arrayList4 = arrayList;
                                                                                                                                        jSONArrayOptJSONArray = jSONArrayOptJSONArray;
                                                                                                                                        str23 = str2;
                                                                                                                                    }
                                                                                                                                } else {
                                                                                                                                    if (jSONObject4.has("complianceSensor")) {
                                                                                                                                        jVar.a(hVarL);
                                                                                                                                    }
                                                                                                                                    if (jSONObject4.has("notification")) {
                                                                                                                                        jVar.a(lVarM2);
                                                                                                                                    }
                                                                                                                                    str12 = str37;
                                                                                                                                    if (jSONObject4.has(str12)) {
                                                                                                                                        lVarM = c.m(jSONObject4.optJSONObject(str12));
                                                                                                                                        if (lVarM != null) {
                                                                                                                                            jVar.b(lVarM);
                                                                                                                                        }
                                                                                                                                        if (jSONObject4.has("optimize")) {
                                                                                                                                            jVar.a(mVarN);
                                                                                                                                        }
                                                                                                                                        if (jSONObject4.has(str15)) {
                                                                                                                                            jVar.a(jVarO);
                                                                                                                                        }
                                                                                                                                        str6 = str33;
                                                                                                                                        if (jSONObject4.has(str6)) {
                                                                                                                                            qVarP = c.p(jSONObject4.optJSONObject(str6));
                                                                                                                                            if (qVarP != null) {
                                                                                                                                                jVar.a(qVarP);
                                                                                                                                            }
                                                                                                                                        }
                                                                                                                                        str14 = str32;
                                                                                                                                        if (jSONObject4.has(str14)) {
                                                                                                                                            jVar.a(dVarA);
                                                                                                                                        }
                                                                                                                                    } else {
                                                                                                                                        if (jSONObject4.has("optimize")) {
                                                                                                                                            jVar.a(mVarN);
                                                                                                                                        }
                                                                                                                                        if (jSONObject4.has(str15)) {
                                                                                                                                            jVar.a(jVarO);
                                                                                                                                        }
                                                                                                                                        str6 = str33;
                                                                                                                                        if (jSONObject4.has(str6)) {
                                                                                                                                            qVarP = c.p(jSONObject4.optJSONObject(str6));
                                                                                                                                            if (qVarP != null) {
                                                                                                                                                jVar.a(qVarP);
                                                                                                                                            }
                                                                                                                                        }
                                                                                                                                        str14 = str32;
                                                                                                                                        if (jSONObject4.has(str14)) {
                                                                                                                                            jVar.a(dVarA);
                                                                                                                                        }
                                                                                                                                    }
                                                                                                                                }
                                                                                                                            } catch (Exception e21) {
                                                                                                                                e = e21;
                                                                                                                                str14 = str32;
                                                                                                                                str6 = str33;
                                                                                                                                str12 = str37;
                                                                                                                            }
                                                                                                                        } catch (Exception e22) {
                                                                                                                            exc2 = e22;
                                                                                                                            str14 = str32;
                                                                                                                            str6 = str33;
                                                                                                                            str12 = str37;
                                                                                                                            str3 = str38;
                                                                                                                            exc2.printStackTrace();
                                                                                                                            arrayList = arrayList6;
                                                                                                                            arrayList.add(jVar);
                                                                                                                            str33 = str6;
                                                                                                                            str30 = str13;
                                                                                                                            str34 = str7;
                                                                                                                            str28 = str3;
                                                                                                                            str32 = str14;
                                                                                                                            str24 = str12;
                                                                                                                            str22 = str11;
                                                                                                                            str26 = str10;
                                                                                                                            str25 = str9;
                                                                                                                            str35 = str8;
                                                                                                                            iVar = iVar2;
                                                                                                                            str29 = str4;
                                                                                                                            str31 = str5;
                                                                                                                            i11++;
                                                                                                                            arrayList4 = arrayList;
                                                                                                                            jSONArrayOptJSONArray = jSONArrayOptJSONArray;
                                                                                                                            str23 = str2;
                                                                                                                        }
                                                                                                                    } else {
                                                                                                                        str3 = str38;
                                                                                                                        if (jSONObject4.has(str3)) {
                                                                                                                            jVar.e(jSONObject4.optInt(str3));
                                                                                                                            if (jSONObject4.has("complianceSensor")) {
                                                                                                                                jVar.a(hVarL);
                                                                                                                            }
                                                                                                                            if (jSONObject4.has("notification")) {
                                                                                                                                jVar.a(lVarM2);
                                                                                                                            }
                                                                                                                            str12 = str37;
                                                                                                                            if (jSONObject4.has(str12)) {
                                                                                                                                lVarM = c.m(jSONObject4.optJSONObject(str12));
                                                                                                                                if (lVarM != null) {
                                                                                                                                    jVar.b(lVarM);
                                                                                                                                }
                                                                                                                                if (jSONObject4.has("optimize")) {
                                                                                                                                    jVar.a(mVarN);
                                                                                                                                }
                                                                                                                                if (jSONObject4.has(str15)) {
                                                                                                                                    jVar.a(jVarO);
                                                                                                                                }
                                                                                                                                str6 = str33;
                                                                                                                                if (jSONObject4.has(str6)) {
                                                                                                                                    qVarP = c.p(jSONObject4.optJSONObject(str6));
                                                                                                                                    if (qVarP != null) {
                                                                                                                                        jVar.a(qVarP);
                                                                                                                                    }
                                                                                                                                }
                                                                                                                                str14 = str32;
                                                                                                                                if (jSONObject4.has(str14)) {
                                                                                                                                    jVar.a(dVarA);
                                                                                                                                }
                                                                                                                            } else {
                                                                                                                                if (jSONObject4.has("optimize")) {
                                                                                                                                    jVar.a(mVarN);
                                                                                                                                }
                                                                                                                                if (jSONObject4.has(str15)) {
                                                                                                                                    jVar.a(jVarO);
                                                                                                                                }
                                                                                                                                str6 = str33;
                                                                                                                                if (jSONObject4.has(str6)) {
                                                                                                                                    qVarP = c.p(jSONObject4.optJSONObject(str6));
                                                                                                                                    if (qVarP != null) {
                                                                                                                                        jVar.a(qVarP);
                                                                                                                                    }
                                                                                                                                }
                                                                                                                                str14 = str32;
                                                                                                                                if (jSONObject4.has(str14)) {
                                                                                                                                    jVar.a(dVarA);
                                                                                                                                }
                                                                                                                            }
                                                                                                                        } else {
                                                                                                                            if (jSONObject4.has("complianceSensor")) {
                                                                                                                                jVar.a(hVarL);
                                                                                                                            }
                                                                                                                            if (jSONObject4.has("notification")) {
                                                                                                                                jVar.a(lVarM2);
                                                                                                                            }
                                                                                                                            str12 = str37;
                                                                                                                            if (jSONObject4.has(str12)) {
                                                                                                                                lVarM = c.m(jSONObject4.optJSONObject(str12));
                                                                                                                                if (lVarM != null) {
                                                                                                                                    jVar.b(lVarM);
                                                                                                                                }
                                                                                                                                if (jSONObject4.has("optimize")) {
                                                                                                                                    jVar.a(mVarN);
                                                                                                                                }
                                                                                                                                if (jSONObject4.has(str15)) {
                                                                                                                                    jVar.a(jVarO);
                                                                                                                                }
                                                                                                                                str6 = str33;
                                                                                                                                if (jSONObject4.has(str6)) {
                                                                                                                                    qVarP = c.p(jSONObject4.optJSONObject(str6));
                                                                                                                                    if (qVarP != null) {
                                                                                                                                        jVar.a(qVarP);
                                                                                                                                    }
                                                                                                                                }
                                                                                                                                str14 = str32;
                                                                                                                                if (jSONObject4.has(str14)) {
                                                                                                                                    jVar.a(dVarA);
                                                                                                                                }
                                                                                                                            } else {
                                                                                                                                if (jSONObject4.has("optimize")) {
                                                                                                                                    jVar.a(mVarN);
                                                                                                                                }
                                                                                                                                if (jSONObject4.has(str15)) {
                                                                                                                                    jVar.a(jVarO);
                                                                                                                                }
                                                                                                                                str6 = str33;
                                                                                                                                if (jSONObject4.has(str6)) {
                                                                                                                                    qVarP = c.p(jSONObject4.optJSONObject(str6));
                                                                                                                                    if (qVarP != null) {
                                                                                                                                        jVar.a(qVarP);
                                                                                                                                    }
                                                                                                                                }
                                                                                                                                str14 = str32;
                                                                                                                                if (jSONObject4.has(str14)) {
                                                                                                                                    jVar.a(dVarA);
                                                                                                                                }
                                                                                                                            }
                                                                                                                        }
                                                                                                                    }
                                                                                                                } catch (Exception e23) {
                                                                                                                    e = e23;
                                                                                                                    str14 = str32;
                                                                                                                    str6 = str33;
                                                                                                                    str12 = str37;
                                                                                                                    str3 = str38;
                                                                                                                }
                                                                                                            } catch (Exception e24) {
                                                                                                                exc2 = e24;
                                                                                                                str14 = str32;
                                                                                                                str6 = str33;
                                                                                                                str12 = str37;
                                                                                                                str3 = str38;
                                                                                                                str13 = str39;
                                                                                                                exc2.printStackTrace();
                                                                                                                arrayList = arrayList6;
                                                                                                                arrayList.add(jVar);
                                                                                                                str33 = str6;
                                                                                                                str30 = str13;
                                                                                                                str34 = str7;
                                                                                                                str28 = str3;
                                                                                                                str32 = str14;
                                                                                                                str24 = str12;
                                                                                                                str22 = str11;
                                                                                                                str26 = str10;
                                                                                                                str25 = str9;
                                                                                                                str35 = str8;
                                                                                                                iVar = iVar2;
                                                                                                                str29 = str4;
                                                                                                                str31 = str5;
                                                                                                                i11++;
                                                                                                                arrayList4 = arrayList;
                                                                                                                jSONArrayOptJSONArray = jSONArrayOptJSONArray;
                                                                                                                str23 = str2;
                                                                                                            }
                                                                                                        } else {
                                                                                                            str13 = str39;
                                                                                                            if (jSONObject4.has(str13)) {
                                                                                                                jVar.d(jSONObject4.optInt(str13));
                                                                                                                str3 = str38;
                                                                                                                if (jSONObject4.has(str3)) {
                                                                                                                    jVar.e(jSONObject4.optInt(str3));
                                                                                                                    if (jSONObject4.has("complianceSensor")) {
                                                                                                                        jVar.a(hVarL);
                                                                                                                    }
                                                                                                                    if (jSONObject4.has("notification")) {
                                                                                                                        jVar.a(lVarM2);
                                                                                                                    }
                                                                                                                    str12 = str37;
                                                                                                                    if (jSONObject4.has(str12)) {
                                                                                                                        lVarM = c.m(jSONObject4.optJSONObject(str12));
                                                                                                                        if (lVarM != null) {
                                                                                                                            jVar.b(lVarM);
                                                                                                                        }
                                                                                                                        if (jSONObject4.has("optimize")) {
                                                                                                                            jVar.a(mVarN);
                                                                                                                        }
                                                                                                                        if (jSONObject4.has(str15)) {
                                                                                                                            jVar.a(jVarO);
                                                                                                                        }
                                                                                                                        str6 = str33;
                                                                                                                        if (jSONObject4.has(str6)) {
                                                                                                                            qVarP = c.p(jSONObject4.optJSONObject(str6));
                                                                                                                            if (qVarP != null) {
                                                                                                                                jVar.a(qVarP);
                                                                                                                            }
                                                                                                                        }
                                                                                                                        str14 = str32;
                                                                                                                        if (jSONObject4.has(str14)) {
                                                                                                                            jVar.a(dVarA);
                                                                                                                        }
                                                                                                                    } else {
                                                                                                                        if (jSONObject4.has("optimize")) {
                                                                                                                            jVar.a(mVarN);
                                                                                                                        }
                                                                                                                        if (jSONObject4.has(str15)) {
                                                                                                                            jVar.a(jVarO);
                                                                                                                        }
                                                                                                                        str6 = str33;
                                                                                                                        if (jSONObject4.has(str6)) {
                                                                                                                            qVarP = c.p(jSONObject4.optJSONObject(str6));
                                                                                                                            if (qVarP != null) {
                                                                                                                                jVar.a(qVarP);
                                                                                                                            }
                                                                                                                        }
                                                                                                                        str14 = str32;
                                                                                                                        if (jSONObject4.has(str14)) {
                                                                                                                            jVar.a(dVarA);
                                                                                                                        }
                                                                                                                    }
                                                                                                                } else {
                                                                                                                    if (jSONObject4.has("complianceSensor")) {
                                                                                                                        jVar.a(hVarL);
                                                                                                                    }
                                                                                                                    if (jSONObject4.has("notification")) {
                                                                                                                        jVar.a(lVarM2);
                                                                                                                    }
                                                                                                                    str12 = str37;
                                                                                                                    if (jSONObject4.has(str12)) {
                                                                                                                        lVarM = c.m(jSONObject4.optJSONObject(str12));
                                                                                                                        if (lVarM != null) {
                                                                                                                            jVar.b(lVarM);
                                                                                                                        }
                                                                                                                        if (jSONObject4.has("optimize")) {
                                                                                                                            jVar.a(mVarN);
                                                                                                                        }
                                                                                                                        if (jSONObject4.has(str15)) {
                                                                                                                            jVar.a(jVarO);
                                                                                                                        }
                                                                                                                        str6 = str33;
                                                                                                                        if (jSONObject4.has(str6)) {
                                                                                                                            qVarP = c.p(jSONObject4.optJSONObject(str6));
                                                                                                                            if (qVarP != null) {
                                                                                                                                jVar.a(qVarP);
                                                                                                                            }
                                                                                                                        }
                                                                                                                        str14 = str32;
                                                                                                                        if (jSONObject4.has(str14)) {
                                                                                                                            jVar.a(dVarA);
                                                                                                                        }
                                                                                                                    } else {
                                                                                                                        if (jSONObject4.has("optimize")) {
                                                                                                                            jVar.a(mVarN);
                                                                                                                        }
                                                                                                                        if (jSONObject4.has(str15)) {
                                                                                                                            jVar.a(jVarO);
                                                                                                                        }
                                                                                                                        str6 = str33;
                                                                                                                        if (jSONObject4.has(str6)) {
                                                                                                                            qVarP = c.p(jSONObject4.optJSONObject(str6));
                                                                                                                            if (qVarP != null) {
                                                                                                                                jVar.a(qVarP);
                                                                                                                            }
                                                                                                                        }
                                                                                                                        str14 = str32;
                                                                                                                        if (jSONObject4.has(str14)) {
                                                                                                                            jVar.a(dVarA);
                                                                                                                        }
                                                                                                                    }
                                                                                                                }
                                                                                                            } else {
                                                                                                                str3 = str38;
                                                                                                                if (jSONObject4.has(str3)) {
                                                                                                                    jVar.e(jSONObject4.optInt(str3));
                                                                                                                    if (jSONObject4.has("complianceSensor")) {
                                                                                                                        jVar.a(hVarL);
                                                                                                                    }
                                                                                                                    if (jSONObject4.has("notification")) {
                                                                                                                        jVar.a(lVarM2);
                                                                                                                    }
                                                                                                                    str12 = str37;
                                                                                                                    if (jSONObject4.has(str12)) {
                                                                                                                        lVarM = c.m(jSONObject4.optJSONObject(str12));
                                                                                                                        if (lVarM != null) {
                                                                                                                            jVar.b(lVarM);
                                                                                                                        }
                                                                                                                        if (jSONObject4.has("optimize")) {
                                                                                                                            jVar.a(mVarN);
                                                                                                                        }
                                                                                                                        if (jSONObject4.has(str15)) {
                                                                                                                            jVar.a(jVarO);
                                                                                                                        }
                                                                                                                        str6 = str33;
                                                                                                                        if (jSONObject4.has(str6)) {
                                                                                                                            qVarP = c.p(jSONObject4.optJSONObject(str6));
                                                                                                                            if (qVarP != null) {
                                                                                                                                jVar.a(qVarP);
                                                                                                                            }
                                                                                                                        }
                                                                                                                        str14 = str32;
                                                                                                                        if (jSONObject4.has(str14)) {
                                                                                                                            jVar.a(dVarA);
                                                                                                                        }
                                                                                                                    } else {
                                                                                                                        if (jSONObject4.has("optimize")) {
                                                                                                                            jVar.a(mVarN);
                                                                                                                        }
                                                                                                                        if (jSONObject4.has(str15)) {
                                                                                                                            jVar.a(jVarO);
                                                                                                                        }
                                                                                                                        str6 = str33;
                                                                                                                        if (jSONObject4.has(str6)) {
                                                                                                                            qVarP = c.p(jSONObject4.optJSONObject(str6));
                                                                                                                            if (qVarP != null) {
                                                                                                                                jVar.a(qVarP);
                                                                                                                            }
                                                                                                                        }
                                                                                                                        str14 = str32;
                                                                                                                        if (jSONObject4.has(str14)) {
                                                                                                                            jVar.a(dVarA);
                                                                                                                        }
                                                                                                                    }
                                                                                                                } else {
                                                                                                                    if (jSONObject4.has("complianceSensor")) {
                                                                                                                        jVar.a(hVarL);
                                                                                                                    }
                                                                                                                    if (jSONObject4.has("notification")) {
                                                                                                                        jVar.a(lVarM2);
                                                                                                                    }
                                                                                                                    str12 = str37;
                                                                                                                    if (jSONObject4.has(str12)) {
                                                                                                                        lVarM = c.m(jSONObject4.optJSONObject(str12));
                                                                                                                        if (lVarM != null) {
                                                                                                                            jVar.b(lVarM);
                                                                                                                        }
                                                                                                                        if (jSONObject4.has("optimize")) {
                                                                                                                            jVar.a(mVarN);
                                                                                                                        }
                                                                                                                        if (jSONObject4.has(str15)) {
                                                                                                                            jVar.a(jVarO);
                                                                                                                        }
                                                                                                                        str6 = str33;
                                                                                                                        if (jSONObject4.has(str6)) {
                                                                                                                            qVarP = c.p(jSONObject4.optJSONObject(str6));
                                                                                                                            if (qVarP != null) {
                                                                                                                                jVar.a(qVarP);
                                                                                                                            }
                                                                                                                        }
                                                                                                                        str14 = str32;
                                                                                                                        if (jSONObject4.has(str14)) {
                                                                                                                            jVar.a(dVarA);
                                                                                                                        }
                                                                                                                    } else {
                                                                                                                        if (jSONObject4.has("optimize")) {
                                                                                                                            jVar.a(mVarN);
                                                                                                                        }
                                                                                                                        if (jSONObject4.has(str15)) {
                                                                                                                            jVar.a(jVarO);
                                                                                                                        }
                                                                                                                        str6 = str33;
                                                                                                                        if (jSONObject4.has(str6)) {
                                                                                                                            qVarP = c.p(jSONObject4.optJSONObject(str6));
                                                                                                                            if (qVarP != null) {
                                                                                                                                jVar.a(qVarP);
                                                                                                                            }
                                                                                                                        }
                                                                                                                        str14 = str32;
                                                                                                                        if (jSONObject4.has(str14)) {
                                                                                                                            jVar.a(dVarA);
                                                                                                                        }
                                                                                                                    }
                                                                                                                }
                                                                                                            }
                                                                                                        }
                                                                                                        arrayList = arrayList6;
                                                                                                        arrayList.add(jVar);
                                                                                                        str33 = str6;
                                                                                                        str30 = str13;
                                                                                                        str34 = str7;
                                                                                                        str28 = str3;
                                                                                                        str32 = str14;
                                                                                                        str24 = str12;
                                                                                                        str22 = str11;
                                                                                                        str26 = str10;
                                                                                                        str25 = str9;
                                                                                                        str35 = str8;
                                                                                                        iVar = iVar2;
                                                                                                        str29 = str4;
                                                                                                        str31 = str5;
                                                                                                        i11++;
                                                                                                        arrayList4 = arrayList;
                                                                                                        jSONArrayOptJSONArray = jSONArrayOptJSONArray;
                                                                                                        str23 = str2;
                                                                                                    }
                                                                                                }
                                                                                                str7 = str34;
                                                                                                try {
                                                                                                    str4 = str4;
                                                                                                    if (jSONObjectOptJSONObject.has(str7)) {
                                                                                                        try {
                                                                                                            gVar.b(jSONObjectOptJSONObject.optString(str7));
                                                                                                        } catch (Exception e25) {
                                                                                                            exc = e25;
                                                                                                            str11 = str40;
                                                                                                            exc.printStackTrace();
                                                                                                        }
                                                                                                    }
                                                                                                    str11 = str40;
                                                                                                    try {
                                                                                                        if (jSONObjectOptJSONObject.has(str11)) {
                                                                                                            gVar.c(jSONObjectOptJSONObject.optString(str11));
                                                                                                        }
                                                                                                        jVar.a(gVar);
                                                                                                    } catch (Exception e26) {
                                                                                                        e = e26;
                                                                                                        exc = e;
                                                                                                        exc.printStackTrace();
                                                                                                    }
                                                                                                } catch (Exception e27) {
                                                                                                    e = e27;
                                                                                                    str11 = str40;
                                                                                                    exc = e;
                                                                                                    exc.printStackTrace();
                                                                                                    if (jSONObject4.has("rewardedVideo")) {
                                                                                                        fVarK = c.k(jSONObject4.optJSONObject("rewardedVideo"));
                                                                                                        if (fVarK != null) {
                                                                                                            jVar.a(fVarK);
                                                                                                        }
                                                                                                        str13 = str39;
                                                                                                        if (jSONObject4.has(str13)) {
                                                                                                            jVar.d(jSONObject4.optInt(str13));
                                                                                                            str3 = str38;
                                                                                                            if (jSONObject4.has(str3)) {
                                                                                                                jVar.e(jSONObject4.optInt(str3));
                                                                                                                if (jSONObject4.has("complianceSensor")) {
                                                                                                                    jVar.a(hVarL);
                                                                                                                }
                                                                                                                if (jSONObject4.has("notification")) {
                                                                                                                    jVar.a(lVarM2);
                                                                                                                }
                                                                                                                str12 = str37;
                                                                                                                if (jSONObject4.has(str12)) {
                                                                                                                    lVarM = c.m(jSONObject4.optJSONObject(str12));
                                                                                                                    if (lVarM != null) {
                                                                                                                        jVar.b(lVarM);
                                                                                                                    }
                                                                                                                    if (jSONObject4.has("optimize")) {
                                                                                                                        jVar.a(mVarN);
                                                                                                                    }
                                                                                                                    if (jSONObject4.has(str15)) {
                                                                                                                        jVar.a(jVarO);
                                                                                                                    }
                                                                                                                    str6 = str33;
                                                                                                                    if (jSONObject4.has(str6)) {
                                                                                                                        qVarP = c.p(jSONObject4.optJSONObject(str6));
                                                                                                                        if (qVarP != null) {
                                                                                                                            jVar.a(qVarP);
                                                                                                                        }
                                                                                                                    }
                                                                                                                    str14 = str32;
                                                                                                                    if (jSONObject4.has(str14)) {
                                                                                                                        jVar.a(dVarA);
                                                                                                                    }
                                                                                                                } else {
                                                                                                                    if (jSONObject4.has("optimize")) {
                                                                                                                        jVar.a(mVarN);
                                                                                                                    }
                                                                                                                    if (jSONObject4.has(str15)) {
                                                                                                                        jVar.a(jVarO);
                                                                                                                    }
                                                                                                                    str6 = str33;
                                                                                                                    if (jSONObject4.has(str6)) {
                                                                                                                        qVarP = c.p(jSONObject4.optJSONObject(str6));
                                                                                                                        if (qVarP != null) {
                                                                                                                            jVar.a(qVarP);
                                                                                                                        }
                                                                                                                    }
                                                                                                                    str14 = str32;
                                                                                                                    if (jSONObject4.has(str14)) {
                                                                                                                        jVar.a(dVarA);
                                                                                                                    }
                                                                                                                }
                                                                                                            } else {
                                                                                                                if (jSONObject4.has("complianceSensor")) {
                                                                                                                    jVar.a(hVarL);
                                                                                                                }
                                                                                                                if (jSONObject4.has("notification")) {
                                                                                                                    jVar.a(lVarM2);
                                                                                                                }
                                                                                                                str12 = str37;
                                                                                                                if (jSONObject4.has(str12)) {
                                                                                                                    lVarM = c.m(jSONObject4.optJSONObject(str12));
                                                                                                                    if (lVarM != null) {
                                                                                                                        jVar.b(lVarM);
                                                                                                                    }
                                                                                                                    if (jSONObject4.has("optimize")) {
                                                                                                                        jVar.a(mVarN);
                                                                                                                    }
                                                                                                                    if (jSONObject4.has(str15)) {
                                                                                                                        jVar.a(jVarO);
                                                                                                                    }
                                                                                                                    str6 = str33;
                                                                                                                    if (jSONObject4.has(str6)) {
                                                                                                                        qVarP = c.p(jSONObject4.optJSONObject(str6));
                                                                                                                        if (qVarP != null) {
                                                                                                                            jVar.a(qVarP);
                                                                                                                        }
                                                                                                                    }
                                                                                                                    str14 = str32;
                                                                                                                    if (jSONObject4.has(str14)) {
                                                                                                                        jVar.a(dVarA);
                                                                                                                    }
                                                                                                                } else {
                                                                                                                    if (jSONObject4.has("optimize")) {
                                                                                                                        jVar.a(mVarN);
                                                                                                                    }
                                                                                                                    if (jSONObject4.has(str15)) {
                                                                                                                        jVar.a(jVarO);
                                                                                                                    }
                                                                                                                    str6 = str33;
                                                                                                                    if (jSONObject4.has(str6)) {
                                                                                                                        qVarP = c.p(jSONObject4.optJSONObject(str6));
                                                                                                                        if (qVarP != null) {
                                                                                                                            jVar.a(qVarP);
                                                                                                                        }
                                                                                                                    }
                                                                                                                    str14 = str32;
                                                                                                                    if (jSONObject4.has(str14)) {
                                                                                                                        jVar.a(dVarA);
                                                                                                                    }
                                                                                                                }
                                                                                                            }
                                                                                                        } else {
                                                                                                            str3 = str38;
                                                                                                            if (jSONObject4.has(str3)) {
                                                                                                                jVar.e(jSONObject4.optInt(str3));
                                                                                                                if (jSONObject4.has("complianceSensor")) {
                                                                                                                    jVar.a(hVarL);
                                                                                                                }
                                                                                                                if (jSONObject4.has("notification")) {
                                                                                                                    jVar.a(lVarM2);
                                                                                                                }
                                                                                                                str12 = str37;
                                                                                                                if (jSONObject4.has(str12)) {
                                                                                                                    lVarM = c.m(jSONObject4.optJSONObject(str12));
                                                                                                                    if (lVarM != null) {
                                                                                                                        jVar.b(lVarM);
                                                                                                                    }
                                                                                                                    if (jSONObject4.has("optimize")) {
                                                                                                                        jVar.a(mVarN);
                                                                                                                    }
                                                                                                                    if (jSONObject4.has(str15)) {
                                                                                                                        jVar.a(jVarO);
                                                                                                                    }
                                                                                                                    str6 = str33;
                                                                                                                    if (jSONObject4.has(str6)) {
                                                                                                                        qVarP = c.p(jSONObject4.optJSONObject(str6));
                                                                                                                        if (qVarP != null) {
                                                                                                                            jVar.a(qVarP);
                                                                                                                        }
                                                                                                                    }
                                                                                                                    str14 = str32;
                                                                                                                    if (jSONObject4.has(str14)) {
                                                                                                                        jVar.a(dVarA);
                                                                                                                    }
                                                                                                                } else {
                                                                                                                    if (jSONObject4.has("optimize")) {
                                                                                                                        jVar.a(mVarN);
                                                                                                                    }
                                                                                                                    if (jSONObject4.has(str15)) {
                                                                                                                        jVar.a(jVarO);
                                                                                                                    }
                                                                                                                    str6 = str33;
                                                                                                                    if (jSONObject4.has(str6)) {
                                                                                                                        qVarP = c.p(jSONObject4.optJSONObject(str6));
                                                                                                                        if (qVarP != null) {
                                                                                                                            jVar.a(qVarP);
                                                                                                                        }
                                                                                                                    }
                                                                                                                    str14 = str32;
                                                                                                                    if (jSONObject4.has(str14)) {
                                                                                                                        jVar.a(dVarA);
                                                                                                                    }
                                                                                                                }
                                                                                                            } else {
                                                                                                                if (jSONObject4.has("complianceSensor")) {
                                                                                                                    jVar.a(hVarL);
                                                                                                                }
                                                                                                                if (jSONObject4.has("notification")) {
                                                                                                                    jVar.a(lVarM2);
                                                                                                                }
                                                                                                                str12 = str37;
                                                                                                                if (jSONObject4.has(str12)) {
                                                                                                                    lVarM = c.m(jSONObject4.optJSONObject(str12));
                                                                                                                    if (lVarM != null) {
                                                                                                                        jVar.b(lVarM);
                                                                                                                    }
                                                                                                                    if (jSONObject4.has("optimize")) {
                                                                                                                        jVar.a(mVarN);
                                                                                                                    }
                                                                                                                    if (jSONObject4.has(str15)) {
                                                                                                                        jVar.a(jVarO);
                                                                                                                    }
                                                                                                                    str6 = str33;
                                                                                                                    if (jSONObject4.has(str6)) {
                                                                                                                        qVarP = c.p(jSONObject4.optJSONObject(str6));
                                                                                                                        if (qVarP != null) {
                                                                                                                            jVar.a(qVarP);
                                                                                                                        }
                                                                                                                    }
                                                                                                                    str14 = str32;
                                                                                                                    if (jSONObject4.has(str14)) {
                                                                                                                        jVar.a(dVarA);
                                                                                                                    }
                                                                                                                } else {
                                                                                                                    if (jSONObject4.has("optimize")) {
                                                                                                                        jVar.a(mVarN);
                                                                                                                    }
                                                                                                                    if (jSONObject4.has(str15)) {
                                                                                                                        jVar.a(jVarO);
                                                                                                                    }
                                                                                                                    str6 = str33;
                                                                                                                    if (jSONObject4.has(str6)) {
                                                                                                                        qVarP = c.p(jSONObject4.optJSONObject(str6));
                                                                                                                        if (qVarP != null) {
                                                                                                                            jVar.a(qVarP);
                                                                                                                        }
                                                                                                                    }
                                                                                                                    str14 = str32;
                                                                                                                    if (jSONObject4.has(str14)) {
                                                                                                                        jVar.a(dVarA);
                                                                                                                    }
                                                                                                                }
                                                                                                            }
                                                                                                        }
                                                                                                    } else {
                                                                                                        str13 = str39;
                                                                                                        if (jSONObject4.has(str13)) {
                                                                                                            jVar.d(jSONObject4.optInt(str13));
                                                                                                            str3 = str38;
                                                                                                            if (jSONObject4.has(str3)) {
                                                                                                                jVar.e(jSONObject4.optInt(str3));
                                                                                                                if (jSONObject4.has("complianceSensor")) {
                                                                                                                    jVar.a(hVarL);
                                                                                                                }
                                                                                                                if (jSONObject4.has("notification")) {
                                                                                                                    jVar.a(lVarM2);
                                                                                                                }
                                                                                                                str12 = str37;
                                                                                                                if (jSONObject4.has(str12)) {
                                                                                                                    lVarM = c.m(jSONObject4.optJSONObject(str12));
                                                                                                                    if (lVarM != null) {
                                                                                                                        jVar.b(lVarM);
                                                                                                                    }
                                                                                                                    if (jSONObject4.has("optimize")) {
                                                                                                                        jVar.a(mVarN);
                                                                                                                    }
                                                                                                                    if (jSONObject4.has(str15)) {
                                                                                                                        jVar.a(jVarO);
                                                                                                                    }
                                                                                                                    str6 = str33;
                                                                                                                    if (jSONObject4.has(str6)) {
                                                                                                                        qVarP = c.p(jSONObject4.optJSONObject(str6));
                                                                                                                        if (qVarP != null) {
                                                                                                                            jVar.a(qVarP);
                                                                                                                        }
                                                                                                                    }
                                                                                                                    str14 = str32;
                                                                                                                    if (jSONObject4.has(str14)) {
                                                                                                                        jVar.a(dVarA);
                                                                                                                    }
                                                                                                                } else {
                                                                                                                    if (jSONObject4.has("optimize")) {
                                                                                                                        jVar.a(mVarN);
                                                                                                                    }
                                                                                                                    if (jSONObject4.has(str15)) {
                                                                                                                        jVar.a(jVarO);
                                                                                                                    }
                                                                                                                    str6 = str33;
                                                                                                                    if (jSONObject4.has(str6)) {
                                                                                                                        qVarP = c.p(jSONObject4.optJSONObject(str6));
                                                                                                                        if (qVarP != null) {
                                                                                                                            jVar.a(qVarP);
                                                                                                                        }
                                                                                                                    }
                                                                                                                    str14 = str32;
                                                                                                                    if (jSONObject4.has(str14)) {
                                                                                                                        jVar.a(dVarA);
                                                                                                                    }
                                                                                                                }
                                                                                                            } else {
                                                                                                                if (jSONObject4.has("complianceSensor")) {
                                                                                                                    jVar.a(hVarL);
                                                                                                                }
                                                                                                                if (jSONObject4.has("notification")) {
                                                                                                                    jVar.a(lVarM2);
                                                                                                                }
                                                                                                                str12 = str37;
                                                                                                                if (jSONObject4.has(str12)) {
                                                                                                                    lVarM = c.m(jSONObject4.optJSONObject(str12));
                                                                                                                    if (lVarM != null) {
                                                                                                                        jVar.b(lVarM);
                                                                                                                    }
                                                                                                                    if (jSONObject4.has("optimize")) {
                                                                                                                        jVar.a(mVarN);
                                                                                                                    }
                                                                                                                    if (jSONObject4.has(str15)) {
                                                                                                                        jVar.a(jVarO);
                                                                                                                    }
                                                                                                                    str6 = str33;
                                                                                                                    if (jSONObject4.has(str6)) {
                                                                                                                        qVarP = c.p(jSONObject4.optJSONObject(str6));
                                                                                                                        if (qVarP != null) {
                                                                                                                            jVar.a(qVarP);
                                                                                                                        }
                                                                                                                    }
                                                                                                                    str14 = str32;
                                                                                                                    if (jSONObject4.has(str14)) {
                                                                                                                        jVar.a(dVarA);
                                                                                                                    }
                                                                                                                } else {
                                                                                                                    if (jSONObject4.has("optimize")) {
                                                                                                                        jVar.a(mVarN);
                                                                                                                    }
                                                                                                                    if (jSONObject4.has(str15)) {
                                                                                                                        jVar.a(jVarO);
                                                                                                                    }
                                                                                                                    str6 = str33;
                                                                                                                    if (jSONObject4.has(str6)) {
                                                                                                                        qVarP = c.p(jSONObject4.optJSONObject(str6));
                                                                                                                        if (qVarP != null) {
                                                                                                                            jVar.a(qVarP);
                                                                                                                        }
                                                                                                                    }
                                                                                                                    str14 = str32;
                                                                                                                    if (jSONObject4.has(str14)) {
                                                                                                                        jVar.a(dVarA);
                                                                                                                    }
                                                                                                                }
                                                                                                            }
                                                                                                        } else {
                                                                                                            str3 = str38;
                                                                                                            if (jSONObject4.has(str3)) {
                                                                                                                jVar.e(jSONObject4.optInt(str3));
                                                                                                                if (jSONObject4.has("complianceSensor")) {
                                                                                                                    jVar.a(hVarL);
                                                                                                                }
                                                                                                                if (jSONObject4.has("notification")) {
                                                                                                                    jVar.a(lVarM2);
                                                                                                                }
                                                                                                                str12 = str37;
                                                                                                                if (jSONObject4.has(str12)) {
                                                                                                                    lVarM = c.m(jSONObject4.optJSONObject(str12));
                                                                                                                    if (lVarM != null) {
                                                                                                                        jVar.b(lVarM);
                                                                                                                    }
                                                                                                                    if (jSONObject4.has("optimize")) {
                                                                                                                        jVar.a(mVarN);
                                                                                                                    }
                                                                                                                    if (jSONObject4.has(str15)) {
                                                                                                                        jVar.a(jVarO);
                                                                                                                    }
                                                                                                                    str6 = str33;
                                                                                                                    if (jSONObject4.has(str6)) {
                                                                                                                        qVarP = c.p(jSONObject4.optJSONObject(str6));
                                                                                                                        if (qVarP != null) {
                                                                                                                            jVar.a(qVarP);
                                                                                                                        }
                                                                                                                    }
                                                                                                                    str14 = str32;
                                                                                                                    if (jSONObject4.has(str14)) {
                                                                                                                        jVar.a(dVarA);
                                                                                                                    }
                                                                                                                } else {
                                                                                                                    if (jSONObject4.has("optimize")) {
                                                                                                                        jVar.a(mVarN);
                                                                                                                    }
                                                                                                                    if (jSONObject4.has(str15)) {
                                                                                                                        jVar.a(jVarO);
                                                                                                                    }
                                                                                                                    str6 = str33;
                                                                                                                    if (jSONObject4.has(str6)) {
                                                                                                                        qVarP = c.p(jSONObject4.optJSONObject(str6));
                                                                                                                        if (qVarP != null) {
                                                                                                                            jVar.a(qVarP);
                                                                                                                        }
                                                                                                                    }
                                                                                                                    str14 = str32;
                                                                                                                    if (jSONObject4.has(str14)) {
                                                                                                                        jVar.a(dVarA);
                                                                                                                    }
                                                                                                                }
                                                                                                            } else {
                                                                                                                if (jSONObject4.has("complianceSensor")) {
                                                                                                                    jVar.a(hVarL);
                                                                                                                }
                                                                                                                if (jSONObject4.has("notification")) {
                                                                                                                    jVar.a(lVarM2);
                                                                                                                }
                                                                                                                str12 = str37;
                                                                                                                if (jSONObject4.has(str12)) {
                                                                                                                    lVarM = c.m(jSONObject4.optJSONObject(str12));
                                                                                                                    if (lVarM != null) {
                                                                                                                        jVar.b(lVarM);
                                                                                                                    }
                                                                                                                    if (jSONObject4.has("optimize")) {
                                                                                                                        jVar.a(mVarN);
                                                                                                                    }
                                                                                                                    if (jSONObject4.has(str15)) {
                                                                                                                        jVar.a(jVarO);
                                                                                                                    }
                                                                                                                    str6 = str33;
                                                                                                                    if (jSONObject4.has(str6)) {
                                                                                                                        qVarP = c.p(jSONObject4.optJSONObject(str6));
                                                                                                                        if (qVarP != null) {
                                                                                                                            jVar.a(qVarP);
                                                                                                                        }
                                                                                                                    }
                                                                                                                    str14 = str32;
                                                                                                                    if (jSONObject4.has(str14)) {
                                                                                                                        jVar.a(dVarA);
                                                                                                                    }
                                                                                                                } else {
                                                                                                                    if (jSONObject4.has("optimize")) {
                                                                                                                        jVar.a(mVarN);
                                                                                                                    }
                                                                                                                    if (jSONObject4.has(str15)) {
                                                                                                                        jVar.a(jVarO);
                                                                                                                    }
                                                                                                                    str6 = str33;
                                                                                                                    if (jSONObject4.has(str6)) {
                                                                                                                        qVarP = c.p(jSONObject4.optJSONObject(str6));
                                                                                                                        if (qVarP != null) {
                                                                                                                            jVar.a(qVarP);
                                                                                                                        }
                                                                                                                    }
                                                                                                                    str14 = str32;
                                                                                                                    if (jSONObject4.has(str14)) {
                                                                                                                        jVar.a(dVarA);
                                                                                                                    }
                                                                                                                }
                                                                                                            }
                                                                                                        }
                                                                                                    }
                                                                                                    arrayList = arrayList6;
                                                                                                    arrayList.add(jVar);
                                                                                                    str33 = str6;
                                                                                                    str30 = str13;
                                                                                                    str34 = str7;
                                                                                                    str28 = str3;
                                                                                                    str32 = str14;
                                                                                                    str24 = str12;
                                                                                                    str22 = str11;
                                                                                                    str26 = str10;
                                                                                                    str25 = str9;
                                                                                                    str35 = str8;
                                                                                                    iVar = iVar2;
                                                                                                    str29 = str4;
                                                                                                    str31 = str5;
                                                                                                    i11++;
                                                                                                    arrayList4 = arrayList;
                                                                                                    jSONArrayOptJSONArray = jSONArrayOptJSONArray;
                                                                                                    str23 = str2;
                                                                                                }
                                                                                            } catch (Exception e28) {
                                                                                                e = e28;
                                                                                                str5 = str5;
                                                                                                str7 = str34;
                                                                                            }
                                                                                        } catch (Exception e29) {
                                                                                            exc = e29;
                                                                                            str5 = str5;
                                                                                            str4 = str4;
                                                                                            str7 = str34;
                                                                                            str8 = str35;
                                                                                            str11 = str40;
                                                                                            exc.printStackTrace();
                                                                                            if (jSONObject4.has("rewardedVideo")) {
                                                                                                fVarK = c.k(jSONObject4.optJSONObject("rewardedVideo"));
                                                                                                if (fVarK != null) {
                                                                                                    jVar.a(fVarK);
                                                                                                }
                                                                                                str13 = str39;
                                                                                                if (jSONObject4.has(str13)) {
                                                                                                    jVar.d(jSONObject4.optInt(str13));
                                                                                                    str3 = str38;
                                                                                                    if (jSONObject4.has(str3)) {
                                                                                                        jVar.e(jSONObject4.optInt(str3));
                                                                                                        if (jSONObject4.has("complianceSensor")) {
                                                                                                            jVar.a(hVarL);
                                                                                                        }
                                                                                                        if (jSONObject4.has("notification")) {
                                                                                                            jVar.a(lVarM2);
                                                                                                        }
                                                                                                        str12 = str37;
                                                                                                        if (jSONObject4.has(str12)) {
                                                                                                            lVarM = c.m(jSONObject4.optJSONObject(str12));
                                                                                                            if (lVarM != null) {
                                                                                                                jVar.b(lVarM);
                                                                                                            }
                                                                                                            if (jSONObject4.has("optimize")) {
                                                                                                                jVar.a(mVarN);
                                                                                                            }
                                                                                                            if (jSONObject4.has(str15)) {
                                                                                                                jVar.a(jVarO);
                                                                                                            }
                                                                                                            str6 = str33;
                                                                                                            if (jSONObject4.has(str6)) {
                                                                                                                qVarP = c.p(jSONObject4.optJSONObject(str6));
                                                                                                                if (qVarP != null) {
                                                                                                                    jVar.a(qVarP);
                                                                                                                }
                                                                                                            }
                                                                                                            str14 = str32;
                                                                                                            if (jSONObject4.has(str14)) {
                                                                                                                jVar.a(dVarA);
                                                                                                            }
                                                                                                        } else {
                                                                                                            if (jSONObject4.has("optimize")) {
                                                                                                                jVar.a(mVarN);
                                                                                                            }
                                                                                                            if (jSONObject4.has(str15)) {
                                                                                                                jVar.a(jVarO);
                                                                                                            }
                                                                                                            str6 = str33;
                                                                                                            if (jSONObject4.has(str6)) {
                                                                                                                qVarP = c.p(jSONObject4.optJSONObject(str6));
                                                                                                                if (qVarP != null) {
                                                                                                                    jVar.a(qVarP);
                                                                                                                }
                                                                                                            }
                                                                                                            str14 = str32;
                                                                                                            if (jSONObject4.has(str14)) {
                                                                                                                jVar.a(dVarA);
                                                                                                            }
                                                                                                        }
                                                                                                    } else {
                                                                                                        if (jSONObject4.has("complianceSensor")) {
                                                                                                            jVar.a(hVarL);
                                                                                                        }
                                                                                                        if (jSONObject4.has("notification")) {
                                                                                                            jVar.a(lVarM2);
                                                                                                        }
                                                                                                        str12 = str37;
                                                                                                        if (jSONObject4.has(str12)) {
                                                                                                            lVarM = c.m(jSONObject4.optJSONObject(str12));
                                                                                                            if (lVarM != null) {
                                                                                                                jVar.b(lVarM);
                                                                                                            }
                                                                                                            if (jSONObject4.has("optimize")) {
                                                                                                                jVar.a(mVarN);
                                                                                                            }
                                                                                                            if (jSONObject4.has(str15)) {
                                                                                                                jVar.a(jVarO);
                                                                                                            }
                                                                                                            str6 = str33;
                                                                                                            if (jSONObject4.has(str6)) {
                                                                                                                qVarP = c.p(jSONObject4.optJSONObject(str6));
                                                                                                                if (qVarP != null) {
                                                                                                                    jVar.a(qVarP);
                                                                                                                }
                                                                                                            }
                                                                                                            str14 = str32;
                                                                                                            if (jSONObject4.has(str14)) {
                                                                                                                jVar.a(dVarA);
                                                                                                            }
                                                                                                        } else {
                                                                                                            if (jSONObject4.has("optimize")) {
                                                                                                                jVar.a(mVarN);
                                                                                                            }
                                                                                                            if (jSONObject4.has(str15)) {
                                                                                                                jVar.a(jVarO);
                                                                                                            }
                                                                                                            str6 = str33;
                                                                                                            if (jSONObject4.has(str6)) {
                                                                                                                qVarP = c.p(jSONObject4.optJSONObject(str6));
                                                                                                                if (qVarP != null) {
                                                                                                                    jVar.a(qVarP);
                                                                                                                }
                                                                                                            }
                                                                                                            str14 = str32;
                                                                                                            if (jSONObject4.has(str14)) {
                                                                                                                jVar.a(dVarA);
                                                                                                            }
                                                                                                        }
                                                                                                    }
                                                                                                } else {
                                                                                                    str3 = str38;
                                                                                                    if (jSONObject4.has(str3)) {
                                                                                                        jVar.e(jSONObject4.optInt(str3));
                                                                                                        if (jSONObject4.has("complianceSensor")) {
                                                                                                            jVar.a(hVarL);
                                                                                                        }
                                                                                                        if (jSONObject4.has("notification")) {
                                                                                                            jVar.a(lVarM2);
                                                                                                        }
                                                                                                        str12 = str37;
                                                                                                        if (jSONObject4.has(str12)) {
                                                                                                            lVarM = c.m(jSONObject4.optJSONObject(str12));
                                                                                                            if (lVarM != null) {
                                                                                                                jVar.b(lVarM);
                                                                                                            }
                                                                                                            if (jSONObject4.has("optimize")) {
                                                                                                                jVar.a(mVarN);
                                                                                                            }
                                                                                                            if (jSONObject4.has(str15)) {
                                                                                                                jVar.a(jVarO);
                                                                                                            }
                                                                                                            str6 = str33;
                                                                                                            if (jSONObject4.has(str6)) {
                                                                                                                qVarP = c.p(jSONObject4.optJSONObject(str6));
                                                                                                                if (qVarP != null) {
                                                                                                                    jVar.a(qVarP);
                                                                                                                }
                                                                                                            }
                                                                                                            str14 = str32;
                                                                                                            if (jSONObject4.has(str14)) {
                                                                                                                jVar.a(dVarA);
                                                                                                            }
                                                                                                        } else {
                                                                                                            if (jSONObject4.has("optimize")) {
                                                                                                                jVar.a(mVarN);
                                                                                                            }
                                                                                                            if (jSONObject4.has(str15)) {
                                                                                                                jVar.a(jVarO);
                                                                                                            }
                                                                                                            str6 = str33;
                                                                                                            if (jSONObject4.has(str6)) {
                                                                                                                qVarP = c.p(jSONObject4.optJSONObject(str6));
                                                                                                                if (qVarP != null) {
                                                                                                                    jVar.a(qVarP);
                                                                                                                }
                                                                                                            }
                                                                                                            str14 = str32;
                                                                                                            if (jSONObject4.has(str14)) {
                                                                                                                jVar.a(dVarA);
                                                                                                            }
                                                                                                        }
                                                                                                    } else {
                                                                                                        if (jSONObject4.has("complianceSensor")) {
                                                                                                            jVar.a(hVarL);
                                                                                                        }
                                                                                                        if (jSONObject4.has("notification")) {
                                                                                                            jVar.a(lVarM2);
                                                                                                        }
                                                                                                        str12 = str37;
                                                                                                        if (jSONObject4.has(str12)) {
                                                                                                            lVarM = c.m(jSONObject4.optJSONObject(str12));
                                                                                                            if (lVarM != null) {
                                                                                                                jVar.b(lVarM);
                                                                                                            }
                                                                                                            if (jSONObject4.has("optimize")) {
                                                                                                                jVar.a(mVarN);
                                                                                                            }
                                                                                                            if (jSONObject4.has(str15)) {
                                                                                                                jVar.a(jVarO);
                                                                                                            }
                                                                                                            str6 = str33;
                                                                                                            if (jSONObject4.has(str6)) {
                                                                                                                qVarP = c.p(jSONObject4.optJSONObject(str6));
                                                                                                                if (qVarP != null) {
                                                                                                                    jVar.a(qVarP);
                                                                                                                }
                                                                                                            }
                                                                                                            str14 = str32;
                                                                                                            if (jSONObject4.has(str14)) {
                                                                                                                jVar.a(dVarA);
                                                                                                            }
                                                                                                        } else {
                                                                                                            if (jSONObject4.has("optimize")) {
                                                                                                                jVar.a(mVarN);
                                                                                                            }
                                                                                                            if (jSONObject4.has(str15)) {
                                                                                                                jVar.a(jVarO);
                                                                                                            }
                                                                                                            str6 = str33;
                                                                                                            if (jSONObject4.has(str6)) {
                                                                                                                qVarP = c.p(jSONObject4.optJSONObject(str6));
                                                                                                                if (qVarP != null) {
                                                                                                                    jVar.a(qVarP);
                                                                                                                }
                                                                                                            }
                                                                                                            str14 = str32;
                                                                                                            if (jSONObject4.has(str14)) {
                                                                                                                jVar.a(dVarA);
                                                                                                            }
                                                                                                        }
                                                                                                    }
                                                                                                }
                                                                                            } else {
                                                                                                str13 = str39;
                                                                                                if (jSONObject4.has(str13)) {
                                                                                                    jVar.d(jSONObject4.optInt(str13));
                                                                                                    str3 = str38;
                                                                                                    if (jSONObject4.has(str3)) {
                                                                                                        jVar.e(jSONObject4.optInt(str3));
                                                                                                        if (jSONObject4.has("complianceSensor")) {
                                                                                                            jVar.a(hVarL);
                                                                                                        }
                                                                                                        if (jSONObject4.has("notification")) {
                                                                                                            jVar.a(lVarM2);
                                                                                                        }
                                                                                                        str12 = str37;
                                                                                                        if (jSONObject4.has(str12)) {
                                                                                                            lVarM = c.m(jSONObject4.optJSONObject(str12));
                                                                                                            if (lVarM != null) {
                                                                                                                jVar.b(lVarM);
                                                                                                            }
                                                                                                            if (jSONObject4.has("optimize")) {
                                                                                                                jVar.a(mVarN);
                                                                                                            }
                                                                                                            if (jSONObject4.has(str15)) {
                                                                                                                jVar.a(jVarO);
                                                                                                            }
                                                                                                            str6 = str33;
                                                                                                            if (jSONObject4.has(str6)) {
                                                                                                                qVarP = c.p(jSONObject4.optJSONObject(str6));
                                                                                                                if (qVarP != null) {
                                                                                                                    jVar.a(qVarP);
                                                                                                                }
                                                                                                            }
                                                                                                            str14 = str32;
                                                                                                            if (jSONObject4.has(str14)) {
                                                                                                                jVar.a(dVarA);
                                                                                                            }
                                                                                                        } else {
                                                                                                            if (jSONObject4.has("optimize")) {
                                                                                                                jVar.a(mVarN);
                                                                                                            }
                                                                                                            if (jSONObject4.has(str15)) {
                                                                                                                jVar.a(jVarO);
                                                                                                            }
                                                                                                            str6 = str33;
                                                                                                            if (jSONObject4.has(str6)) {
                                                                                                                qVarP = c.p(jSONObject4.optJSONObject(str6));
                                                                                                                if (qVarP != null) {
                                                                                                                    jVar.a(qVarP);
                                                                                                                }
                                                                                                            }
                                                                                                            str14 = str32;
                                                                                                            if (jSONObject4.has(str14)) {
                                                                                                                jVar.a(dVarA);
                                                                                                            }
                                                                                                        }
                                                                                                    } else {
                                                                                                        if (jSONObject4.has("complianceSensor")) {
                                                                                                            jVar.a(hVarL);
                                                                                                        }
                                                                                                        if (jSONObject4.has("notification")) {
                                                                                                            jVar.a(lVarM2);
                                                                                                        }
                                                                                                        str12 = str37;
                                                                                                        if (jSONObject4.has(str12)) {
                                                                                                            lVarM = c.m(jSONObject4.optJSONObject(str12));
                                                                                                            if (lVarM != null) {
                                                                                                                jVar.b(lVarM);
                                                                                                            }
                                                                                                            if (jSONObject4.has("optimize")) {
                                                                                                                jVar.a(mVarN);
                                                                                                            }
                                                                                                            if (jSONObject4.has(str15)) {
                                                                                                                jVar.a(jVarO);
                                                                                                            }
                                                                                                            str6 = str33;
                                                                                                            if (jSONObject4.has(str6)) {
                                                                                                                qVarP = c.p(jSONObject4.optJSONObject(str6));
                                                                                                                if (qVarP != null) {
                                                                                                                    jVar.a(qVarP);
                                                                                                                }
                                                                                                            }
                                                                                                            str14 = str32;
                                                                                                            if (jSONObject4.has(str14)) {
                                                                                                                jVar.a(dVarA);
                                                                                                            }
                                                                                                        } else {
                                                                                                            if (jSONObject4.has("optimize")) {
                                                                                                                jVar.a(mVarN);
                                                                                                            }
                                                                                                            if (jSONObject4.has(str15)) {
                                                                                                                jVar.a(jVarO);
                                                                                                            }
                                                                                                            str6 = str33;
                                                                                                            if (jSONObject4.has(str6)) {
                                                                                                                qVarP = c.p(jSONObject4.optJSONObject(str6));
                                                                                                                if (qVarP != null) {
                                                                                                                    jVar.a(qVarP);
                                                                                                                }
                                                                                                            }
                                                                                                            str14 = str32;
                                                                                                            if (jSONObject4.has(str14)) {
                                                                                                                jVar.a(dVarA);
                                                                                                            }
                                                                                                        }
                                                                                                    }
                                                                                                } else {
                                                                                                    str3 = str38;
                                                                                                    if (jSONObject4.has(str3)) {
                                                                                                        jVar.e(jSONObject4.optInt(str3));
                                                                                                        if (jSONObject4.has("complianceSensor")) {
                                                                                                            jVar.a(hVarL);
                                                                                                        }
                                                                                                        if (jSONObject4.has("notification")) {
                                                                                                            jVar.a(lVarM2);
                                                                                                        }
                                                                                                        str12 = str37;
                                                                                                        if (jSONObject4.has(str12)) {
                                                                                                            lVarM = c.m(jSONObject4.optJSONObject(str12));
                                                                                                            if (lVarM != null) {
                                                                                                                jVar.b(lVarM);
                                                                                                            }
                                                                                                            if (jSONObject4.has("optimize")) {
                                                                                                                jVar.a(mVarN);
                                                                                                            }
                                                                                                            if (jSONObject4.has(str15)) {
                                                                                                                jVar.a(jVarO);
                                                                                                            }
                                                                                                            str6 = str33;
                                                                                                            if (jSONObject4.has(str6)) {
                                                                                                                qVarP = c.p(jSONObject4.optJSONObject(str6));
                                                                                                                if (qVarP != null) {
                                                                                                                    jVar.a(qVarP);
                                                                                                                }
                                                                                                            }
                                                                                                            str14 = str32;
                                                                                                            if (jSONObject4.has(str14)) {
                                                                                                                jVar.a(dVarA);
                                                                                                            }
                                                                                                        } else {
                                                                                                            if (jSONObject4.has("optimize")) {
                                                                                                                jVar.a(mVarN);
                                                                                                            }
                                                                                                            if (jSONObject4.has(str15)) {
                                                                                                                jVar.a(jVarO);
                                                                                                            }
                                                                                                            str6 = str33;
                                                                                                            if (jSONObject4.has(str6)) {
                                                                                                                qVarP = c.p(jSONObject4.optJSONObject(str6));
                                                                                                                if (qVarP != null) {
                                                                                                                    jVar.a(qVarP);
                                                                                                                }
                                                                                                            }
                                                                                                            str14 = str32;
                                                                                                            if (jSONObject4.has(str14)) {
                                                                                                                jVar.a(dVarA);
                                                                                                            }
                                                                                                        }
                                                                                                    } else {
                                                                                                        if (jSONObject4.has("complianceSensor")) {
                                                                                                            jVar.a(hVarL);
                                                                                                        }
                                                                                                        if (jSONObject4.has("notification")) {
                                                                                                            jVar.a(lVarM2);
                                                                                                        }
                                                                                                        str12 = str37;
                                                                                                        if (jSONObject4.has(str12)) {
                                                                                                            lVarM = c.m(jSONObject4.optJSONObject(str12));
                                                                                                            if (lVarM != null) {
                                                                                                                jVar.b(lVarM);
                                                                                                            }
                                                                                                            if (jSONObject4.has("optimize")) {
                                                                                                                jVar.a(mVarN);
                                                                                                            }
                                                                                                            if (jSONObject4.has(str15)) {
                                                                                                                jVar.a(jVarO);
                                                                                                            }
                                                                                                            str6 = str33;
                                                                                                            if (jSONObject4.has(str6)) {
                                                                                                                qVarP = c.p(jSONObject4.optJSONObject(str6));
                                                                                                                if (qVarP != null) {
                                                                                                                    jVar.a(qVarP);
                                                                                                                }
                                                                                                            }
                                                                                                            str14 = str32;
                                                                                                            if (jSONObject4.has(str14)) {
                                                                                                                jVar.a(dVarA);
                                                                                                            }
                                                                                                        } else {
                                                                                                            if (jSONObject4.has("optimize")) {
                                                                                                                jVar.a(mVarN);
                                                                                                            }
                                                                                                            if (jSONObject4.has(str15)) {
                                                                                                                jVar.a(jVarO);
                                                                                                            }
                                                                                                            str6 = str33;
                                                                                                            if (jSONObject4.has(str6)) {
                                                                                                                qVarP = c.p(jSONObject4.optJSONObject(str6));
                                                                                                                if (qVarP != null) {
                                                                                                                    jVar.a(qVarP);
                                                                                                                }
                                                                                                            }
                                                                                                            str14 = str32;
                                                                                                            if (jSONObject4.has(str14)) {
                                                                                                                jVar.a(dVarA);
                                                                                                            }
                                                                                                        }
                                                                                                    }
                                                                                                }
                                                                                            }
                                                                                            arrayList = arrayList6;
                                                                                            arrayList.add(jVar);
                                                                                            str33 = str6;
                                                                                            str30 = str13;
                                                                                            str34 = str7;
                                                                                            str28 = str3;
                                                                                            str32 = str14;
                                                                                            str24 = str12;
                                                                                            str22 = str11;
                                                                                            str26 = str10;
                                                                                            str25 = str9;
                                                                                            str35 = str8;
                                                                                            iVar = iVar2;
                                                                                            str29 = str4;
                                                                                            str31 = str5;
                                                                                            i11++;
                                                                                            arrayList4 = arrayList;
                                                                                            jSONArrayOptJSONArray = jSONArrayOptJSONArray;
                                                                                            str23 = str2;
                                                                                        }
                                                                                    } else {
                                                                                        str8 = str35;
                                                                                        str5 = str5;
                                                                                        if (jSONObjectOptJSONObject.has(str8)) {
                                                                                            gVar.a(jSONObjectOptJSONObject.optString(str8));
                                                                                        }
                                                                                        str7 = str34;
                                                                                        str4 = str4;
                                                                                        if (jSONObjectOptJSONObject.has(str7)) {
                                                                                            gVar.b(jSONObjectOptJSONObject.optString(str7));
                                                                                        }
                                                                                        str11 = str40;
                                                                                        if (jSONObjectOptJSONObject.has(str11)) {
                                                                                            gVar.c(jSONObjectOptJSONObject.optString(str11));
                                                                                        }
                                                                                        jVar.a(gVar);
                                                                                    }
                                                                                } catch (Exception e30) {
                                                                                    e = e30;
                                                                                    str5 = str5;
                                                                                    str7 = str34;
                                                                                    str8 = str35;
                                                                                }
                                                                            } catch (Exception e31) {
                                                                                exc = e31;
                                                                                str5 = str5;
                                                                                str4 = str4;
                                                                                str7 = str34;
                                                                                str8 = str35;
                                                                                str9 = str25;
                                                                                str11 = str40;
                                                                                exc.printStackTrace();
                                                                                if (jSONObject4.has("rewardedVideo")) {
                                                                                    fVarK = c.k(jSONObject4.optJSONObject("rewardedVideo"));
                                                                                    if (fVarK != null) {
                                                                                        jVar.a(fVarK);
                                                                                    }
                                                                                    str13 = str39;
                                                                                    if (jSONObject4.has(str13)) {
                                                                                        jVar.d(jSONObject4.optInt(str13));
                                                                                        str3 = str38;
                                                                                        if (jSONObject4.has(str3)) {
                                                                                            jVar.e(jSONObject4.optInt(str3));
                                                                                            if (jSONObject4.has("complianceSensor")) {
                                                                                                jVar.a(hVarL);
                                                                                            }
                                                                                            if (jSONObject4.has("notification")) {
                                                                                                jVar.a(lVarM2);
                                                                                            }
                                                                                            str12 = str37;
                                                                                            if (jSONObject4.has(str12)) {
                                                                                                lVarM = c.m(jSONObject4.optJSONObject(str12));
                                                                                                if (lVarM != null) {
                                                                                                    jVar.b(lVarM);
                                                                                                }
                                                                                                if (jSONObject4.has("optimize")) {
                                                                                                    jVar.a(mVarN);
                                                                                                }
                                                                                                if (jSONObject4.has(str15)) {
                                                                                                    jVar.a(jVarO);
                                                                                                }
                                                                                                str6 = str33;
                                                                                                if (jSONObject4.has(str6)) {
                                                                                                    qVarP = c.p(jSONObject4.optJSONObject(str6));
                                                                                                    if (qVarP != null) {
                                                                                                        jVar.a(qVarP);
                                                                                                    }
                                                                                                }
                                                                                                str14 = str32;
                                                                                                if (jSONObject4.has(str14)) {
                                                                                                    jVar.a(dVarA);
                                                                                                }
                                                                                            } else {
                                                                                                if (jSONObject4.has("optimize")) {
                                                                                                    jVar.a(mVarN);
                                                                                                }
                                                                                                if (jSONObject4.has(str15)) {
                                                                                                    jVar.a(jVarO);
                                                                                                }
                                                                                                str6 = str33;
                                                                                                if (jSONObject4.has(str6)) {
                                                                                                    qVarP = c.p(jSONObject4.optJSONObject(str6));
                                                                                                    if (qVarP != null) {
                                                                                                        jVar.a(qVarP);
                                                                                                    }
                                                                                                }
                                                                                                str14 = str32;
                                                                                                if (jSONObject4.has(str14)) {
                                                                                                    jVar.a(dVarA);
                                                                                                }
                                                                                            }
                                                                                        } else {
                                                                                            if (jSONObject4.has("complianceSensor")) {
                                                                                                jVar.a(hVarL);
                                                                                            }
                                                                                            if (jSONObject4.has("notification")) {
                                                                                                jVar.a(lVarM2);
                                                                                            }
                                                                                            str12 = str37;
                                                                                            if (jSONObject4.has(str12)) {
                                                                                                lVarM = c.m(jSONObject4.optJSONObject(str12));
                                                                                                if (lVarM != null) {
                                                                                                    jVar.b(lVarM);
                                                                                                }
                                                                                                if (jSONObject4.has("optimize")) {
                                                                                                    jVar.a(mVarN);
                                                                                                }
                                                                                                if (jSONObject4.has(str15)) {
                                                                                                    jVar.a(jVarO);
                                                                                                }
                                                                                                str6 = str33;
                                                                                                if (jSONObject4.has(str6)) {
                                                                                                    qVarP = c.p(jSONObject4.optJSONObject(str6));
                                                                                                    if (qVarP != null) {
                                                                                                        jVar.a(qVarP);
                                                                                                    }
                                                                                                }
                                                                                                str14 = str32;
                                                                                                if (jSONObject4.has(str14)) {
                                                                                                    jVar.a(dVarA);
                                                                                                }
                                                                                            } else {
                                                                                                if (jSONObject4.has("optimize")) {
                                                                                                    jVar.a(mVarN);
                                                                                                }
                                                                                                if (jSONObject4.has(str15)) {
                                                                                                    jVar.a(jVarO);
                                                                                                }
                                                                                                str6 = str33;
                                                                                                if (jSONObject4.has(str6)) {
                                                                                                    qVarP = c.p(jSONObject4.optJSONObject(str6));
                                                                                                    if (qVarP != null) {
                                                                                                        jVar.a(qVarP);
                                                                                                    }
                                                                                                }
                                                                                                str14 = str32;
                                                                                                if (jSONObject4.has(str14)) {
                                                                                                    jVar.a(dVarA);
                                                                                                }
                                                                                            }
                                                                                        }
                                                                                    } else {
                                                                                        str3 = str38;
                                                                                        if (jSONObject4.has(str3)) {
                                                                                            jVar.e(jSONObject4.optInt(str3));
                                                                                            if (jSONObject4.has("complianceSensor")) {
                                                                                                jVar.a(hVarL);
                                                                                            }
                                                                                            if (jSONObject4.has("notification")) {
                                                                                                jVar.a(lVarM2);
                                                                                            }
                                                                                            str12 = str37;
                                                                                            if (jSONObject4.has(str12)) {
                                                                                                lVarM = c.m(jSONObject4.optJSONObject(str12));
                                                                                                if (lVarM != null) {
                                                                                                    jVar.b(lVarM);
                                                                                                }
                                                                                                if (jSONObject4.has("optimize")) {
                                                                                                    jVar.a(mVarN);
                                                                                                }
                                                                                                if (jSONObject4.has(str15)) {
                                                                                                    jVar.a(jVarO);
                                                                                                }
                                                                                                str6 = str33;
                                                                                                if (jSONObject4.has(str6)) {
                                                                                                    qVarP = c.p(jSONObject4.optJSONObject(str6));
                                                                                                    if (qVarP != null) {
                                                                                                        jVar.a(qVarP);
                                                                                                    }
                                                                                                }
                                                                                                str14 = str32;
                                                                                                if (jSONObject4.has(str14)) {
                                                                                                    jVar.a(dVarA);
                                                                                                }
                                                                                            } else {
                                                                                                if (jSONObject4.has("optimize")) {
                                                                                                    jVar.a(mVarN);
                                                                                                }
                                                                                                if (jSONObject4.has(str15)) {
                                                                                                    jVar.a(jVarO);
                                                                                                }
                                                                                                str6 = str33;
                                                                                                if (jSONObject4.has(str6)) {
                                                                                                    qVarP = c.p(jSONObject4.optJSONObject(str6));
                                                                                                    if (qVarP != null) {
                                                                                                        jVar.a(qVarP);
                                                                                                    }
                                                                                                }
                                                                                                str14 = str32;
                                                                                                if (jSONObject4.has(str14)) {
                                                                                                    jVar.a(dVarA);
                                                                                                }
                                                                                            }
                                                                                        } else {
                                                                                            if (jSONObject4.has("complianceSensor")) {
                                                                                                jVar.a(hVarL);
                                                                                            }
                                                                                            if (jSONObject4.has("notification")) {
                                                                                                jVar.a(lVarM2);
                                                                                            }
                                                                                            str12 = str37;
                                                                                            if (jSONObject4.has(str12)) {
                                                                                                lVarM = c.m(jSONObject4.optJSONObject(str12));
                                                                                                if (lVarM != null) {
                                                                                                    jVar.b(lVarM);
                                                                                                }
                                                                                                if (jSONObject4.has("optimize")) {
                                                                                                    jVar.a(mVarN);
                                                                                                }
                                                                                                if (jSONObject4.has(str15)) {
                                                                                                    jVar.a(jVarO);
                                                                                                }
                                                                                                str6 = str33;
                                                                                                if (jSONObject4.has(str6)) {
                                                                                                    qVarP = c.p(jSONObject4.optJSONObject(str6));
                                                                                                    if (qVarP != null) {
                                                                                                        jVar.a(qVarP);
                                                                                                    }
                                                                                                }
                                                                                                str14 = str32;
                                                                                                if (jSONObject4.has(str14)) {
                                                                                                    jVar.a(dVarA);
                                                                                                }
                                                                                            } else {
                                                                                                if (jSONObject4.has("optimize")) {
                                                                                                    jVar.a(mVarN);
                                                                                                }
                                                                                                if (jSONObject4.has(str15)) {
                                                                                                    jVar.a(jVarO);
                                                                                                }
                                                                                                str6 = str33;
                                                                                                if (jSONObject4.has(str6)) {
                                                                                                    qVarP = c.p(jSONObject4.optJSONObject(str6));
                                                                                                    if (qVarP != null) {
                                                                                                        jVar.a(qVarP);
                                                                                                    }
                                                                                                }
                                                                                                str14 = str32;
                                                                                                if (jSONObject4.has(str14)) {
                                                                                                    jVar.a(dVarA);
                                                                                                }
                                                                                            }
                                                                                        }
                                                                                    }
                                                                                } else {
                                                                                    str13 = str39;
                                                                                    if (jSONObject4.has(str13)) {
                                                                                        jVar.d(jSONObject4.optInt(str13));
                                                                                        str3 = str38;
                                                                                        if (jSONObject4.has(str3)) {
                                                                                            jVar.e(jSONObject4.optInt(str3));
                                                                                            if (jSONObject4.has("complianceSensor")) {
                                                                                                jVar.a(hVarL);
                                                                                            }
                                                                                            if (jSONObject4.has("notification")) {
                                                                                                jVar.a(lVarM2);
                                                                                            }
                                                                                            str12 = str37;
                                                                                            if (jSONObject4.has(str12)) {
                                                                                                lVarM = c.m(jSONObject4.optJSONObject(str12));
                                                                                                if (lVarM != null) {
                                                                                                    jVar.b(lVarM);
                                                                                                }
                                                                                                if (jSONObject4.has("optimize")) {
                                                                                                    jVar.a(mVarN);
                                                                                                }
                                                                                                if (jSONObject4.has(str15)) {
                                                                                                    jVar.a(jVarO);
                                                                                                }
                                                                                                str6 = str33;
                                                                                                if (jSONObject4.has(str6)) {
                                                                                                    qVarP = c.p(jSONObject4.optJSONObject(str6));
                                                                                                    if (qVarP != null) {
                                                                                                        jVar.a(qVarP);
                                                                                                    }
                                                                                                }
                                                                                                str14 = str32;
                                                                                                if (jSONObject4.has(str14)) {
                                                                                                    jVar.a(dVarA);
                                                                                                }
                                                                                            } else {
                                                                                                if (jSONObject4.has("optimize")) {
                                                                                                    jVar.a(mVarN);
                                                                                                }
                                                                                                if (jSONObject4.has(str15)) {
                                                                                                    jVar.a(jVarO);
                                                                                                }
                                                                                                str6 = str33;
                                                                                                if (jSONObject4.has(str6)) {
                                                                                                    qVarP = c.p(jSONObject4.optJSONObject(str6));
                                                                                                    if (qVarP != null) {
                                                                                                        jVar.a(qVarP);
                                                                                                    }
                                                                                                }
                                                                                                str14 = str32;
                                                                                                if (jSONObject4.has(str14)) {
                                                                                                    jVar.a(dVarA);
                                                                                                }
                                                                                            }
                                                                                        } else {
                                                                                            if (jSONObject4.has("complianceSensor")) {
                                                                                                jVar.a(hVarL);
                                                                                            }
                                                                                            if (jSONObject4.has("notification")) {
                                                                                                jVar.a(lVarM2);
                                                                                            }
                                                                                            str12 = str37;
                                                                                            if (jSONObject4.has(str12)) {
                                                                                                lVarM = c.m(jSONObject4.optJSONObject(str12));
                                                                                                if (lVarM != null) {
                                                                                                    jVar.b(lVarM);
                                                                                                }
                                                                                                if (jSONObject4.has("optimize")) {
                                                                                                    jVar.a(mVarN);
                                                                                                }
                                                                                                if (jSONObject4.has(str15)) {
                                                                                                    jVar.a(jVarO);
                                                                                                }
                                                                                                str6 = str33;
                                                                                                if (jSONObject4.has(str6)) {
                                                                                                    qVarP = c.p(jSONObject4.optJSONObject(str6));
                                                                                                    if (qVarP != null) {
                                                                                                        jVar.a(qVarP);
                                                                                                    }
                                                                                                }
                                                                                                str14 = str32;
                                                                                                if (jSONObject4.has(str14)) {
                                                                                                    jVar.a(dVarA);
                                                                                                }
                                                                                            } else {
                                                                                                if (jSONObject4.has("optimize")) {
                                                                                                    jVar.a(mVarN);
                                                                                                }
                                                                                                if (jSONObject4.has(str15)) {
                                                                                                    jVar.a(jVarO);
                                                                                                }
                                                                                                str6 = str33;
                                                                                                if (jSONObject4.has(str6)) {
                                                                                                    qVarP = c.p(jSONObject4.optJSONObject(str6));
                                                                                                    if (qVarP != null) {
                                                                                                        jVar.a(qVarP);
                                                                                                    }
                                                                                                }
                                                                                                str14 = str32;
                                                                                                if (jSONObject4.has(str14)) {
                                                                                                    jVar.a(dVarA);
                                                                                                }
                                                                                            }
                                                                                        }
                                                                                    } else {
                                                                                        str3 = str38;
                                                                                        if (jSONObject4.has(str3)) {
                                                                                            jVar.e(jSONObject4.optInt(str3));
                                                                                            if (jSONObject4.has("complianceSensor")) {
                                                                                                jVar.a(hVarL);
                                                                                            }
                                                                                            if (jSONObject4.has("notification")) {
                                                                                                jVar.a(lVarM2);
                                                                                            }
                                                                                            str12 = str37;
                                                                                            if (jSONObject4.has(str12)) {
                                                                                                lVarM = c.m(jSONObject4.optJSONObject(str12));
                                                                                                if (lVarM != null) {
                                                                                                    jVar.b(lVarM);
                                                                                                }
                                                                                                if (jSONObject4.has("optimize")) {
                                                                                                    jVar.a(mVarN);
                                                                                                }
                                                                                                if (jSONObject4.has(str15)) {
                                                                                                    jVar.a(jVarO);
                                                                                                }
                                                                                                str6 = str33;
                                                                                                if (jSONObject4.has(str6)) {
                                                                                                    qVarP = c.p(jSONObject4.optJSONObject(str6));
                                                                                                    if (qVarP != null) {
                                                                                                        jVar.a(qVarP);
                                                                                                    }
                                                                                                }
                                                                                                str14 = str32;
                                                                                                if (jSONObject4.has(str14)) {
                                                                                                    jVar.a(dVarA);
                                                                                                }
                                                                                            } else {
                                                                                                if (jSONObject4.has("optimize")) {
                                                                                                    jVar.a(mVarN);
                                                                                                }
                                                                                                if (jSONObject4.has(str15)) {
                                                                                                    jVar.a(jVarO);
                                                                                                }
                                                                                                str6 = str33;
                                                                                                if (jSONObject4.has(str6)) {
                                                                                                    qVarP = c.p(jSONObject4.optJSONObject(str6));
                                                                                                    if (qVarP != null) {
                                                                                                        jVar.a(qVarP);
                                                                                                    }
                                                                                                }
                                                                                                str14 = str32;
                                                                                                if (jSONObject4.has(str14)) {
                                                                                                    jVar.a(dVarA);
                                                                                                }
                                                                                            }
                                                                                        } else {
                                                                                            if (jSONObject4.has("complianceSensor")) {
                                                                                                jVar.a(hVarL);
                                                                                            }
                                                                                            if (jSONObject4.has("notification")) {
                                                                                                jVar.a(lVarM2);
                                                                                            }
                                                                                            str12 = str37;
                                                                                            if (jSONObject4.has(str12)) {
                                                                                                lVarM = c.m(jSONObject4.optJSONObject(str12));
                                                                                                if (lVarM != null) {
                                                                                                    jVar.b(lVarM);
                                                                                                }
                                                                                                if (jSONObject4.has("optimize")) {
                                                                                                    jVar.a(mVarN);
                                                                                                }
                                                                                                if (jSONObject4.has(str15)) {
                                                                                                    jVar.a(jVarO);
                                                                                                }
                                                                                                str6 = str33;
                                                                                                if (jSONObject4.has(str6)) {
                                                                                                    qVarP = c.p(jSONObject4.optJSONObject(str6));
                                                                                                    if (qVarP != null) {
                                                                                                        jVar.a(qVarP);
                                                                                                    }
                                                                                                }
                                                                                                str14 = str32;
                                                                                                if (jSONObject4.has(str14)) {
                                                                                                    jVar.a(dVarA);
                                                                                                }
                                                                                            } else {
                                                                                                if (jSONObject4.has("optimize")) {
                                                                                                    jVar.a(mVarN);
                                                                                                }
                                                                                                if (jSONObject4.has(str15)) {
                                                                                                    jVar.a(jVarO);
                                                                                                }
                                                                                                str6 = str33;
                                                                                                if (jSONObject4.has(str6)) {
                                                                                                    qVarP = c.p(jSONObject4.optJSONObject(str6));
                                                                                                    if (qVarP != null) {
                                                                                                        jVar.a(qVarP);
                                                                                                    }
                                                                                                }
                                                                                                str14 = str32;
                                                                                                if (jSONObject4.has(str14)) {
                                                                                                    jVar.a(dVarA);
                                                                                                }
                                                                                            }
                                                                                        }
                                                                                    }
                                                                                }
                                                                                arrayList = arrayList6;
                                                                                arrayList.add(jVar);
                                                                                str33 = str6;
                                                                                str30 = str13;
                                                                                str34 = str7;
                                                                                str28 = str3;
                                                                                str32 = str14;
                                                                                str24 = str12;
                                                                                str22 = str11;
                                                                                str26 = str10;
                                                                                str25 = str9;
                                                                                str35 = str8;
                                                                                iVar = iVar2;
                                                                                str29 = str4;
                                                                                str31 = str5;
                                                                                i11++;
                                                                                arrayList4 = arrayList;
                                                                                jSONArrayOptJSONArray = jSONArrayOptJSONArray;
                                                                                str23 = str2;
                                                                            }
                                                                        } else {
                                                                            str9 = str25;
                                                                            if (jSONObjectOptJSONObject.has(str9)) {
                                                                                gVar.d(jSONObjectOptJSONObject.optInt(str9));
                                                                                str8 = str35;
                                                                                str5 = str5;
                                                                                if (jSONObjectOptJSONObject.has(str8)) {
                                                                                    gVar.a(jSONObjectOptJSONObject.optString(str8));
                                                                                }
                                                                                str7 = str34;
                                                                                str4 = str4;
                                                                                if (jSONObjectOptJSONObject.has(str7)) {
                                                                                    gVar.b(jSONObjectOptJSONObject.optString(str7));
                                                                                }
                                                                                str11 = str40;
                                                                                if (jSONObjectOptJSONObject.has(str11)) {
                                                                                    gVar.c(jSONObjectOptJSONObject.optString(str11));
                                                                                }
                                                                                jVar.a(gVar);
                                                                            } else {
                                                                                str8 = str35;
                                                                                str5 = str5;
                                                                                if (jSONObjectOptJSONObject.has(str8)) {
                                                                                    gVar.a(jSONObjectOptJSONObject.optString(str8));
                                                                                }
                                                                                str7 = str34;
                                                                                str4 = str4;
                                                                                if (jSONObjectOptJSONObject.has(str7)) {
                                                                                    gVar.b(jSONObjectOptJSONObject.optString(str7));
                                                                                }
                                                                                str11 = str40;
                                                                                if (jSONObjectOptJSONObject.has(str11)) {
                                                                                    gVar.c(jSONObjectOptJSONObject.optString(str11));
                                                                                }
                                                                                jVar.a(gVar);
                                                                            }
                                                                        }
                                                                    } catch (Exception e32) {
                                                                        e = e32;
                                                                        str5 = str5;
                                                                        str7 = str34;
                                                                        str8 = str35;
                                                                        str9 = str25;
                                                                    }
                                                                } catch (Exception e33) {
                                                                    exc = e33;
                                                                    str5 = str5;
                                                                    str4 = str4;
                                                                    str7 = str34;
                                                                    str8 = str35;
                                                                    str9 = str25;
                                                                    str11 = str40;
                                                                    str10 = str26;
                                                                    exc.printStackTrace();
                                                                    if (jSONObject4.has("rewardedVideo")) {
                                                                        fVarK = c.k(jSONObject4.optJSONObject("rewardedVideo"));
                                                                        if (fVarK != null) {
                                                                            jVar.a(fVarK);
                                                                        }
                                                                        str13 = str39;
                                                                        if (jSONObject4.has(str13)) {
                                                                            jVar.d(jSONObject4.optInt(str13));
                                                                            str3 = str38;
                                                                            if (jSONObject4.has(str3)) {
                                                                                jVar.e(jSONObject4.optInt(str3));
                                                                                if (jSONObject4.has("complianceSensor")) {
                                                                                    jVar.a(hVarL);
                                                                                }
                                                                                if (jSONObject4.has("notification")) {
                                                                                    jVar.a(lVarM2);
                                                                                }
                                                                                str12 = str37;
                                                                                if (jSONObject4.has(str12)) {
                                                                                    lVarM = c.m(jSONObject4.optJSONObject(str12));
                                                                                    if (lVarM != null) {
                                                                                        jVar.b(lVarM);
                                                                                    }
                                                                                    if (jSONObject4.has("optimize")) {
                                                                                        jVar.a(mVarN);
                                                                                    }
                                                                                    if (jSONObject4.has(str15)) {
                                                                                        jVar.a(jVarO);
                                                                                    }
                                                                                    str6 = str33;
                                                                                    if (jSONObject4.has(str6)) {
                                                                                        qVarP = c.p(jSONObject4.optJSONObject(str6));
                                                                                        if (qVarP != null) {
                                                                                            jVar.a(qVarP);
                                                                                        }
                                                                                    }
                                                                                    str14 = str32;
                                                                                    if (jSONObject4.has(str14)) {
                                                                                        jVar.a(dVarA);
                                                                                    }
                                                                                } else {
                                                                                    if (jSONObject4.has("optimize")) {
                                                                                        jVar.a(mVarN);
                                                                                    }
                                                                                    if (jSONObject4.has(str15)) {
                                                                                        jVar.a(jVarO);
                                                                                    }
                                                                                    str6 = str33;
                                                                                    if (jSONObject4.has(str6)) {
                                                                                        qVarP = c.p(jSONObject4.optJSONObject(str6));
                                                                                        if (qVarP != null) {
                                                                                            jVar.a(qVarP);
                                                                                        }
                                                                                    }
                                                                                    str14 = str32;
                                                                                    if (jSONObject4.has(str14)) {
                                                                                        jVar.a(dVarA);
                                                                                    }
                                                                                }
                                                                            } else {
                                                                                if (jSONObject4.has("complianceSensor")) {
                                                                                    jVar.a(hVarL);
                                                                                }
                                                                                if (jSONObject4.has("notification")) {
                                                                                    jVar.a(lVarM2);
                                                                                }
                                                                                str12 = str37;
                                                                                if (jSONObject4.has(str12)) {
                                                                                    lVarM = c.m(jSONObject4.optJSONObject(str12));
                                                                                    if (lVarM != null) {
                                                                                        jVar.b(lVarM);
                                                                                    }
                                                                                    if (jSONObject4.has("optimize")) {
                                                                                        jVar.a(mVarN);
                                                                                    }
                                                                                    if (jSONObject4.has(str15)) {
                                                                                        jVar.a(jVarO);
                                                                                    }
                                                                                    str6 = str33;
                                                                                    if (jSONObject4.has(str6)) {
                                                                                        qVarP = c.p(jSONObject4.optJSONObject(str6));
                                                                                        if (qVarP != null) {
                                                                                            jVar.a(qVarP);
                                                                                        }
                                                                                    }
                                                                                    str14 = str32;
                                                                                    if (jSONObject4.has(str14)) {
                                                                                        jVar.a(dVarA);
                                                                                    }
                                                                                } else {
                                                                                    if (jSONObject4.has("optimize")) {
                                                                                        jVar.a(mVarN);
                                                                                    }
                                                                                    if (jSONObject4.has(str15)) {
                                                                                        jVar.a(jVarO);
                                                                                    }
                                                                                    str6 = str33;
                                                                                    if (jSONObject4.has(str6)) {
                                                                                        qVarP = c.p(jSONObject4.optJSONObject(str6));
                                                                                        if (qVarP != null) {
                                                                                            jVar.a(qVarP);
                                                                                        }
                                                                                    }
                                                                                    str14 = str32;
                                                                                    if (jSONObject4.has(str14)) {
                                                                                        jVar.a(dVarA);
                                                                                    }
                                                                                }
                                                                            }
                                                                        } else {
                                                                            str3 = str38;
                                                                            if (jSONObject4.has(str3)) {
                                                                                jVar.e(jSONObject4.optInt(str3));
                                                                                if (jSONObject4.has("complianceSensor")) {
                                                                                    jVar.a(hVarL);
                                                                                }
                                                                                if (jSONObject4.has("notification")) {
                                                                                    jVar.a(lVarM2);
                                                                                }
                                                                                str12 = str37;
                                                                                if (jSONObject4.has(str12)) {
                                                                                    lVarM = c.m(jSONObject4.optJSONObject(str12));
                                                                                    if (lVarM != null) {
                                                                                        jVar.b(lVarM);
                                                                                    }
                                                                                    if (jSONObject4.has("optimize")) {
                                                                                        jVar.a(mVarN);
                                                                                    }
                                                                                    if (jSONObject4.has(str15)) {
                                                                                        jVar.a(jVarO);
                                                                                    }
                                                                                    str6 = str33;
                                                                                    if (jSONObject4.has(str6)) {
                                                                                        qVarP = c.p(jSONObject4.optJSONObject(str6));
                                                                                        if (qVarP != null) {
                                                                                            jVar.a(qVarP);
                                                                                        }
                                                                                    }
                                                                                    str14 = str32;
                                                                                    if (jSONObject4.has(str14)) {
                                                                                        jVar.a(dVarA);
                                                                                    }
                                                                                } else {
                                                                                    if (jSONObject4.has("optimize")) {
                                                                                        jVar.a(mVarN);
                                                                                    }
                                                                                    if (jSONObject4.has(str15)) {
                                                                                        jVar.a(jVarO);
                                                                                    }
                                                                                    str6 = str33;
                                                                                    if (jSONObject4.has(str6)) {
                                                                                        qVarP = c.p(jSONObject4.optJSONObject(str6));
                                                                                        if (qVarP != null) {
                                                                                            jVar.a(qVarP);
                                                                                        }
                                                                                    }
                                                                                    str14 = str32;
                                                                                    if (jSONObject4.has(str14)) {
                                                                                        jVar.a(dVarA);
                                                                                    }
                                                                                }
                                                                            } else {
                                                                                if (jSONObject4.has("complianceSensor")) {
                                                                                    jVar.a(hVarL);
                                                                                }
                                                                                if (jSONObject4.has("notification")) {
                                                                                    jVar.a(lVarM2);
                                                                                }
                                                                                str12 = str37;
                                                                                if (jSONObject4.has(str12)) {
                                                                                    lVarM = c.m(jSONObject4.optJSONObject(str12));
                                                                                    if (lVarM != null) {
                                                                                        jVar.b(lVarM);
                                                                                    }
                                                                                    if (jSONObject4.has("optimize")) {
                                                                                        jVar.a(mVarN);
                                                                                    }
                                                                                    if (jSONObject4.has(str15)) {
                                                                                        jVar.a(jVarO);
                                                                                    }
                                                                                    str6 = str33;
                                                                                    if (jSONObject4.has(str6)) {
                                                                                        qVarP = c.p(jSONObject4.optJSONObject(str6));
                                                                                        if (qVarP != null) {
                                                                                            jVar.a(qVarP);
                                                                                        }
                                                                                    }
                                                                                    str14 = str32;
                                                                                    if (jSONObject4.has(str14)) {
                                                                                        jVar.a(dVarA);
                                                                                    }
                                                                                } else {
                                                                                    if (jSONObject4.has("optimize")) {
                                                                                        jVar.a(mVarN);
                                                                                    }
                                                                                    if (jSONObject4.has(str15)) {
                                                                                        jVar.a(jVarO);
                                                                                    }
                                                                                    str6 = str33;
                                                                                    if (jSONObject4.has(str6)) {
                                                                                        qVarP = c.p(jSONObject4.optJSONObject(str6));
                                                                                        if (qVarP != null) {
                                                                                            jVar.a(qVarP);
                                                                                        }
                                                                                    }
                                                                                    str14 = str32;
                                                                                    if (jSONObject4.has(str14)) {
                                                                                        jVar.a(dVarA);
                                                                                    }
                                                                                }
                                                                            }
                                                                        }
                                                                    } else {
                                                                        str13 = str39;
                                                                        if (jSONObject4.has(str13)) {
                                                                            jVar.d(jSONObject4.optInt(str13));
                                                                            str3 = str38;
                                                                            if (jSONObject4.has(str3)) {
                                                                                jVar.e(jSONObject4.optInt(str3));
                                                                                if (jSONObject4.has("complianceSensor")) {
                                                                                    jVar.a(hVarL);
                                                                                }
                                                                                if (jSONObject4.has("notification")) {
                                                                                    jVar.a(lVarM2);
                                                                                }
                                                                                str12 = str37;
                                                                                if (jSONObject4.has(str12)) {
                                                                                    lVarM = c.m(jSONObject4.optJSONObject(str12));
                                                                                    if (lVarM != null) {
                                                                                        jVar.b(lVarM);
                                                                                    }
                                                                                    if (jSONObject4.has("optimize")) {
                                                                                        jVar.a(mVarN);
                                                                                    }
                                                                                    if (jSONObject4.has(str15)) {
                                                                                        jVar.a(jVarO);
                                                                                    }
                                                                                    str6 = str33;
                                                                                    if (jSONObject4.has(str6)) {
                                                                                        qVarP = c.p(jSONObject4.optJSONObject(str6));
                                                                                        if (qVarP != null) {
                                                                                            jVar.a(qVarP);
                                                                                        }
                                                                                    }
                                                                                    str14 = str32;
                                                                                    if (jSONObject4.has(str14)) {
                                                                                        jVar.a(dVarA);
                                                                                    }
                                                                                } else {
                                                                                    if (jSONObject4.has("optimize")) {
                                                                                        jVar.a(mVarN);
                                                                                    }
                                                                                    if (jSONObject4.has(str15)) {
                                                                                        jVar.a(jVarO);
                                                                                    }
                                                                                    str6 = str33;
                                                                                    if (jSONObject4.has(str6)) {
                                                                                        qVarP = c.p(jSONObject4.optJSONObject(str6));
                                                                                        if (qVarP != null) {
                                                                                            jVar.a(qVarP);
                                                                                        }
                                                                                    }
                                                                                    str14 = str32;
                                                                                    if (jSONObject4.has(str14)) {
                                                                                        jVar.a(dVarA);
                                                                                    }
                                                                                }
                                                                            } else {
                                                                                if (jSONObject4.has("complianceSensor")) {
                                                                                    jVar.a(hVarL);
                                                                                }
                                                                                if (jSONObject4.has("notification")) {
                                                                                    jVar.a(lVarM2);
                                                                                }
                                                                                str12 = str37;
                                                                                if (jSONObject4.has(str12)) {
                                                                                    lVarM = c.m(jSONObject4.optJSONObject(str12));
                                                                                    if (lVarM != null) {
                                                                                        jVar.b(lVarM);
                                                                                    }
                                                                                    if (jSONObject4.has("optimize")) {
                                                                                        jVar.a(mVarN);
                                                                                    }
                                                                                    if (jSONObject4.has(str15)) {
                                                                                        jVar.a(jVarO);
                                                                                    }
                                                                                    str6 = str33;
                                                                                    if (jSONObject4.has(str6)) {
                                                                                        qVarP = c.p(jSONObject4.optJSONObject(str6));
                                                                                        if (qVarP != null) {
                                                                                            jVar.a(qVarP);
                                                                                        }
                                                                                    }
                                                                                    str14 = str32;
                                                                                    if (jSONObject4.has(str14)) {
                                                                                        jVar.a(dVarA);
                                                                                    }
                                                                                } else {
                                                                                    if (jSONObject4.has("optimize")) {
                                                                                        jVar.a(mVarN);
                                                                                    }
                                                                                    if (jSONObject4.has(str15)) {
                                                                                        jVar.a(jVarO);
                                                                                    }
                                                                                    str6 = str33;
                                                                                    if (jSONObject4.has(str6)) {
                                                                                        qVarP = c.p(jSONObject4.optJSONObject(str6));
                                                                                        if (qVarP != null) {
                                                                                            jVar.a(qVarP);
                                                                                        }
                                                                                    }
                                                                                    str14 = str32;
                                                                                    if (jSONObject4.has(str14)) {
                                                                                        jVar.a(dVarA);
                                                                                    }
                                                                                }
                                                                            }
                                                                        } else {
                                                                            str3 = str38;
                                                                            if (jSONObject4.has(str3)) {
                                                                                jVar.e(jSONObject4.optInt(str3));
                                                                                if (jSONObject4.has("complianceSensor")) {
                                                                                    jVar.a(hVarL);
                                                                                }
                                                                                if (jSONObject4.has("notification")) {
                                                                                    jVar.a(lVarM2);
                                                                                }
                                                                                str12 = str37;
                                                                                if (jSONObject4.has(str12)) {
                                                                                    lVarM = c.m(jSONObject4.optJSONObject(str12));
                                                                                    if (lVarM != null) {
                                                                                        jVar.b(lVarM);
                                                                                    }
                                                                                    if (jSONObject4.has("optimize")) {
                                                                                        jVar.a(mVarN);
                                                                                    }
                                                                                    if (jSONObject4.has(str15)) {
                                                                                        jVar.a(jVarO);
                                                                                    }
                                                                                    str6 = str33;
                                                                                    if (jSONObject4.has(str6)) {
                                                                                        qVarP = c.p(jSONObject4.optJSONObject(str6));
                                                                                        if (qVarP != null) {
                                                                                            jVar.a(qVarP);
                                                                                        }
                                                                                    }
                                                                                    str14 = str32;
                                                                                    if (jSONObject4.has(str14)) {
                                                                                        jVar.a(dVarA);
                                                                                    }
                                                                                } else {
                                                                                    if (jSONObject4.has("optimize")) {
                                                                                        jVar.a(mVarN);
                                                                                    }
                                                                                    if (jSONObject4.has(str15)) {
                                                                                        jVar.a(jVarO);
                                                                                    }
                                                                                    str6 = str33;
                                                                                    if (jSONObject4.has(str6)) {
                                                                                        qVarP = c.p(jSONObject4.optJSONObject(str6));
                                                                                        if (qVarP != null) {
                                                                                            jVar.a(qVarP);
                                                                                        }
                                                                                    }
                                                                                    str14 = str32;
                                                                                    if (jSONObject4.has(str14)) {
                                                                                        jVar.a(dVarA);
                                                                                    }
                                                                                }
                                                                            } else {
                                                                                if (jSONObject4.has("complianceSensor")) {
                                                                                    jVar.a(hVarL);
                                                                                }
                                                                                if (jSONObject4.has("notification")) {
                                                                                    jVar.a(lVarM2);
                                                                                }
                                                                                str12 = str37;
                                                                                if (jSONObject4.has(str12)) {
                                                                                    lVarM = c.m(jSONObject4.optJSONObject(str12));
                                                                                    if (lVarM != null) {
                                                                                        jVar.b(lVarM);
                                                                                    }
                                                                                    if (jSONObject4.has("optimize")) {
                                                                                        jVar.a(mVarN);
                                                                                    }
                                                                                    if (jSONObject4.has(str15)) {
                                                                                        jVar.a(jVarO);
                                                                                    }
                                                                                    str6 = str33;
                                                                                    if (jSONObject4.has(str6)) {
                                                                                        qVarP = c.p(jSONObject4.optJSONObject(str6));
                                                                                        if (qVarP != null) {
                                                                                            jVar.a(qVarP);
                                                                                        }
                                                                                    }
                                                                                    str14 = str32;
                                                                                    if (jSONObject4.has(str14)) {
                                                                                        jVar.a(dVarA);
                                                                                    }
                                                                                } else {
                                                                                    if (jSONObject4.has("optimize")) {
                                                                                        jVar.a(mVarN);
                                                                                    }
                                                                                    if (jSONObject4.has(str15)) {
                                                                                        jVar.a(jVarO);
                                                                                    }
                                                                                    str6 = str33;
                                                                                    if (jSONObject4.has(str6)) {
                                                                                        qVarP = c.p(jSONObject4.optJSONObject(str6));
                                                                                        if (qVarP != null) {
                                                                                            jVar.a(qVarP);
                                                                                        }
                                                                                    }
                                                                                    str14 = str32;
                                                                                    if (jSONObject4.has(str14)) {
                                                                                        jVar.a(dVarA);
                                                                                    }
                                                                                }
                                                                            }
                                                                        }
                                                                    }
                                                                    arrayList = arrayList6;
                                                                    arrayList.add(jVar);
                                                                    str33 = str6;
                                                                    str30 = str13;
                                                                    str34 = str7;
                                                                    str28 = str3;
                                                                    str32 = str14;
                                                                    str24 = str12;
                                                                    str22 = str11;
                                                                    str26 = str10;
                                                                    str25 = str9;
                                                                    str35 = str8;
                                                                    iVar = iVar2;
                                                                    str29 = str4;
                                                                    str31 = str5;
                                                                    i11++;
                                                                    arrayList4 = arrayList;
                                                                    jSONArrayOptJSONArray = jSONArrayOptJSONArray;
                                                                    str23 = str2;
                                                                }
                                                            } else {
                                                                str10 = str26;
                                                                if (jSONObjectOptJSONObject.has(str10)) {
                                                                    gVar.c(jSONObjectOptJSONObject.optInt(str10));
                                                                    str9 = str25;
                                                                    if (jSONObjectOptJSONObject.has(str9)) {
                                                                        gVar.d(jSONObjectOptJSONObject.optInt(str9));
                                                                        str8 = str35;
                                                                        str5 = str5;
                                                                        if (jSONObjectOptJSONObject.has(str8)) {
                                                                            gVar.a(jSONObjectOptJSONObject.optString(str8));
                                                                        }
                                                                        str7 = str34;
                                                                        str4 = str4;
                                                                        if (jSONObjectOptJSONObject.has(str7)) {
                                                                            gVar.b(jSONObjectOptJSONObject.optString(str7));
                                                                        }
                                                                        str11 = str40;
                                                                        if (jSONObjectOptJSONObject.has(str11)) {
                                                                            gVar.c(jSONObjectOptJSONObject.optString(str11));
                                                                        }
                                                                        jVar.a(gVar);
                                                                    } else {
                                                                        str8 = str35;
                                                                        str5 = str5;
                                                                        if (jSONObjectOptJSONObject.has(str8)) {
                                                                            gVar.a(jSONObjectOptJSONObject.optString(str8));
                                                                        }
                                                                        str7 = str34;
                                                                        str4 = str4;
                                                                        if (jSONObjectOptJSONObject.has(str7)) {
                                                                            gVar.b(jSONObjectOptJSONObject.optString(str7));
                                                                        }
                                                                        str11 = str40;
                                                                        if (jSONObjectOptJSONObject.has(str11)) {
                                                                            gVar.c(jSONObjectOptJSONObject.optString(str11));
                                                                        }
                                                                        jVar.a(gVar);
                                                                    }
                                                                } else {
                                                                    str9 = str25;
                                                                    if (jSONObjectOptJSONObject.has(str9)) {
                                                                        gVar.d(jSONObjectOptJSONObject.optInt(str9));
                                                                        str8 = str35;
                                                                        str5 = str5;
                                                                        if (jSONObjectOptJSONObject.has(str8)) {
                                                                            gVar.a(jSONObjectOptJSONObject.optString(str8));
                                                                        }
                                                                        str7 = str34;
                                                                        str4 = str4;
                                                                        if (jSONObjectOptJSONObject.has(str7)) {
                                                                            gVar.b(jSONObjectOptJSONObject.optString(str7));
                                                                        }
                                                                        str11 = str40;
                                                                        if (jSONObjectOptJSONObject.has(str11)) {
                                                                            gVar.c(jSONObjectOptJSONObject.optString(str11));
                                                                        }
                                                                        jVar.a(gVar);
                                                                    } else {
                                                                        str8 = str35;
                                                                        str5 = str5;
                                                                        if (jSONObjectOptJSONObject.has(str8)) {
                                                                            gVar.a(jSONObjectOptJSONObject.optString(str8));
                                                                        }
                                                                        str7 = str34;
                                                                        str4 = str4;
                                                                        if (jSONObjectOptJSONObject.has(str7)) {
                                                                            gVar.b(jSONObjectOptJSONObject.optString(str7));
                                                                        }
                                                                        str11 = str40;
                                                                        if (jSONObjectOptJSONObject.has(str11)) {
                                                                            gVar.c(jSONObjectOptJSONObject.optString(str11));
                                                                        }
                                                                        jVar.a(gVar);
                                                                    }
                                                                }
                                                            }
                                                        } catch (Exception e34) {
                                                            e = e34;
                                                            str5 = str5;
                                                            str4 = str4;
                                                            str7 = str34;
                                                            str8 = str35;
                                                            str9 = str25;
                                                            str11 = str40;
                                                            str10 = str26;
                                                        }
                                                    } catch (Exception e35) {
                                                        exc = e35;
                                                        str5 = str5;
                                                        str4 = str4;
                                                        str7 = str34;
                                                        str8 = str35;
                                                        str9 = str25;
                                                        str11 = str40;
                                                        str10 = str26;
                                                        str27 = str16;
                                                        exc.printStackTrace();
                                                        if (jSONObject4.has("rewardedVideo")) {
                                                            fVarK = c.k(jSONObject4.optJSONObject("rewardedVideo"));
                                                            if (fVarK != null) {
                                                                jVar.a(fVarK);
                                                            }
                                                            str13 = str39;
                                                            if (jSONObject4.has(str13)) {
                                                                jVar.d(jSONObject4.optInt(str13));
                                                                str3 = str38;
                                                                if (jSONObject4.has(str3)) {
                                                                    jVar.e(jSONObject4.optInt(str3));
                                                                    if (jSONObject4.has("complianceSensor")) {
                                                                        jVar.a(hVarL);
                                                                    }
                                                                    if (jSONObject4.has("notification")) {
                                                                        jVar.a(lVarM2);
                                                                    }
                                                                    str12 = str37;
                                                                    if (jSONObject4.has(str12)) {
                                                                        lVarM = c.m(jSONObject4.optJSONObject(str12));
                                                                        if (lVarM != null) {
                                                                            jVar.b(lVarM);
                                                                        }
                                                                        if (jSONObject4.has("optimize")) {
                                                                            jVar.a(mVarN);
                                                                        }
                                                                        if (jSONObject4.has(str15)) {
                                                                            jVar.a(jVarO);
                                                                        }
                                                                        str6 = str33;
                                                                        if (jSONObject4.has(str6)) {
                                                                            qVarP = c.p(jSONObject4.optJSONObject(str6));
                                                                            if (qVarP != null) {
                                                                                jVar.a(qVarP);
                                                                            }
                                                                        }
                                                                        str14 = str32;
                                                                        if (jSONObject4.has(str14)) {
                                                                            jVar.a(dVarA);
                                                                        }
                                                                    } else {
                                                                        if (jSONObject4.has("optimize")) {
                                                                            jVar.a(mVarN);
                                                                        }
                                                                        if (jSONObject4.has(str15)) {
                                                                            jVar.a(jVarO);
                                                                        }
                                                                        str6 = str33;
                                                                        if (jSONObject4.has(str6)) {
                                                                            qVarP = c.p(jSONObject4.optJSONObject(str6));
                                                                            if (qVarP != null) {
                                                                                jVar.a(qVarP);
                                                                            }
                                                                        }
                                                                        str14 = str32;
                                                                        if (jSONObject4.has(str14)) {
                                                                            jVar.a(dVarA);
                                                                        }
                                                                    }
                                                                } else {
                                                                    if (jSONObject4.has("complianceSensor")) {
                                                                        jVar.a(hVarL);
                                                                    }
                                                                    if (jSONObject4.has("notification")) {
                                                                        jVar.a(lVarM2);
                                                                    }
                                                                    str12 = str37;
                                                                    if (jSONObject4.has(str12)) {
                                                                        lVarM = c.m(jSONObject4.optJSONObject(str12));
                                                                        if (lVarM != null) {
                                                                            jVar.b(lVarM);
                                                                        }
                                                                        if (jSONObject4.has("optimize")) {
                                                                            jVar.a(mVarN);
                                                                        }
                                                                        if (jSONObject4.has(str15)) {
                                                                            jVar.a(jVarO);
                                                                        }
                                                                        str6 = str33;
                                                                        if (jSONObject4.has(str6)) {
                                                                            qVarP = c.p(jSONObject4.optJSONObject(str6));
                                                                            if (qVarP != null) {
                                                                                jVar.a(qVarP);
                                                                            }
                                                                        }
                                                                        str14 = str32;
                                                                        if (jSONObject4.has(str14)) {
                                                                            jVar.a(dVarA);
                                                                        }
                                                                    } else {
                                                                        if (jSONObject4.has("optimize")) {
                                                                            jVar.a(mVarN);
                                                                        }
                                                                        if (jSONObject4.has(str15)) {
                                                                            jVar.a(jVarO);
                                                                        }
                                                                        str6 = str33;
                                                                        if (jSONObject4.has(str6)) {
                                                                            qVarP = c.p(jSONObject4.optJSONObject(str6));
                                                                            if (qVarP != null) {
                                                                                jVar.a(qVarP);
                                                                            }
                                                                        }
                                                                        str14 = str32;
                                                                        if (jSONObject4.has(str14)) {
                                                                            jVar.a(dVarA);
                                                                        }
                                                                    }
                                                                }
                                                            } else {
                                                                str3 = str38;
                                                                if (jSONObject4.has(str3)) {
                                                                    jVar.e(jSONObject4.optInt(str3));
                                                                    if (jSONObject4.has("complianceSensor")) {
                                                                        jVar.a(hVarL);
                                                                    }
                                                                    if (jSONObject4.has("notification")) {
                                                                        jVar.a(lVarM2);
                                                                    }
                                                                    str12 = str37;
                                                                    if (jSONObject4.has(str12)) {
                                                                        lVarM = c.m(jSONObject4.optJSONObject(str12));
                                                                        if (lVarM != null) {
                                                                            jVar.b(lVarM);
                                                                        }
                                                                        if (jSONObject4.has("optimize")) {
                                                                            jVar.a(mVarN);
                                                                        }
                                                                        if (jSONObject4.has(str15)) {
                                                                            jVar.a(jVarO);
                                                                        }
                                                                        str6 = str33;
                                                                        if (jSONObject4.has(str6)) {
                                                                            qVarP = c.p(jSONObject4.optJSONObject(str6));
                                                                            if (qVarP != null) {
                                                                                jVar.a(qVarP);
                                                                            }
                                                                        }
                                                                        str14 = str32;
                                                                        if (jSONObject4.has(str14)) {
                                                                            jVar.a(dVarA);
                                                                        }
                                                                    } else {
                                                                        if (jSONObject4.has("optimize")) {
                                                                            jVar.a(mVarN);
                                                                        }
                                                                        if (jSONObject4.has(str15)) {
                                                                            jVar.a(jVarO);
                                                                        }
                                                                        str6 = str33;
                                                                        if (jSONObject4.has(str6)) {
                                                                            qVarP = c.p(jSONObject4.optJSONObject(str6));
                                                                            if (qVarP != null) {
                                                                                jVar.a(qVarP);
                                                                            }
                                                                        }
                                                                        str14 = str32;
                                                                        if (jSONObject4.has(str14)) {
                                                                            jVar.a(dVarA);
                                                                        }
                                                                    }
                                                                } else {
                                                                    if (jSONObject4.has("complianceSensor")) {
                                                                        jVar.a(hVarL);
                                                                    }
                                                                    if (jSONObject4.has("notification")) {
                                                                        jVar.a(lVarM2);
                                                                    }
                                                                    str12 = str37;
                                                                    if (jSONObject4.has(str12)) {
                                                                        lVarM = c.m(jSONObject4.optJSONObject(str12));
                                                                        if (lVarM != null) {
                                                                            jVar.b(lVarM);
                                                                        }
                                                                        if (jSONObject4.has("optimize")) {
                                                                            jVar.a(mVarN);
                                                                        }
                                                                        if (jSONObject4.has(str15)) {
                                                                            jVar.a(jVarO);
                                                                        }
                                                                        str6 = str33;
                                                                        if (jSONObject4.has(str6)) {
                                                                            qVarP = c.p(jSONObject4.optJSONObject(str6));
                                                                            if (qVarP != null) {
                                                                                jVar.a(qVarP);
                                                                            }
                                                                        }
                                                                        str14 = str32;
                                                                        if (jSONObject4.has(str14)) {
                                                                            jVar.a(dVarA);
                                                                        }
                                                                    } else {
                                                                        if (jSONObject4.has("optimize")) {
                                                                            jVar.a(mVarN);
                                                                        }
                                                                        if (jSONObject4.has(str15)) {
                                                                            jVar.a(jVarO);
                                                                        }
                                                                        str6 = str33;
                                                                        if (jSONObject4.has(str6)) {
                                                                            qVarP = c.p(jSONObject4.optJSONObject(str6));
                                                                            if (qVarP != null) {
                                                                                jVar.a(qVarP);
                                                                            }
                                                                        }
                                                                        str14 = str32;
                                                                        if (jSONObject4.has(str14)) {
                                                                            jVar.a(dVarA);
                                                                        }
                                                                    }
                                                                }
                                                            }
                                                        } else {
                                                            str13 = str39;
                                                            if (jSONObject4.has(str13)) {
                                                                jVar.d(jSONObject4.optInt(str13));
                                                                str3 = str38;
                                                                if (jSONObject4.has(str3)) {
                                                                    jVar.e(jSONObject4.optInt(str3));
                                                                    if (jSONObject4.has("complianceSensor")) {
                                                                        jVar.a(hVarL);
                                                                    }
                                                                    if (jSONObject4.has("notification")) {
                                                                        jVar.a(lVarM2);
                                                                    }
                                                                    str12 = str37;
                                                                    if (jSONObject4.has(str12)) {
                                                                        lVarM = c.m(jSONObject4.optJSONObject(str12));
                                                                        if (lVarM != null) {
                                                                            jVar.b(lVarM);
                                                                        }
                                                                        if (jSONObject4.has("optimize")) {
                                                                            jVar.a(mVarN);
                                                                        }
                                                                        if (jSONObject4.has(str15)) {
                                                                            jVar.a(jVarO);
                                                                        }
                                                                        str6 = str33;
                                                                        if (jSONObject4.has(str6)) {
                                                                            qVarP = c.p(jSONObject4.optJSONObject(str6));
                                                                            if (qVarP != null) {
                                                                                jVar.a(qVarP);
                                                                            }
                                                                        }
                                                                        str14 = str32;
                                                                        if (jSONObject4.has(str14)) {
                                                                            jVar.a(dVarA);
                                                                        }
                                                                    } else {
                                                                        if (jSONObject4.has("optimize")) {
                                                                            jVar.a(mVarN);
                                                                        }
                                                                        if (jSONObject4.has(str15)) {
                                                                            jVar.a(jVarO);
                                                                        }
                                                                        str6 = str33;
                                                                        if (jSONObject4.has(str6)) {
                                                                            qVarP = c.p(jSONObject4.optJSONObject(str6));
                                                                            if (qVarP != null) {
                                                                                jVar.a(qVarP);
                                                                            }
                                                                        }
                                                                        str14 = str32;
                                                                        if (jSONObject4.has(str14)) {
                                                                            jVar.a(dVarA);
                                                                        }
                                                                    }
                                                                } else {
                                                                    if (jSONObject4.has("complianceSensor")) {
                                                                        jVar.a(hVarL);
                                                                    }
                                                                    if (jSONObject4.has("notification")) {
                                                                        jVar.a(lVarM2);
                                                                    }
                                                                    str12 = str37;
                                                                    if (jSONObject4.has(str12)) {
                                                                        lVarM = c.m(jSONObject4.optJSONObject(str12));
                                                                        if (lVarM != null) {
                                                                            jVar.b(lVarM);
                                                                        }
                                                                        if (jSONObject4.has("optimize")) {
                                                                            jVar.a(mVarN);
                                                                        }
                                                                        if (jSONObject4.has(str15)) {
                                                                            jVar.a(jVarO);
                                                                        }
                                                                        str6 = str33;
                                                                        if (jSONObject4.has(str6)) {
                                                                            qVarP = c.p(jSONObject4.optJSONObject(str6));
                                                                            if (qVarP != null) {
                                                                                jVar.a(qVarP);
                                                                            }
                                                                        }
                                                                        str14 = str32;
                                                                        if (jSONObject4.has(str14)) {
                                                                            jVar.a(dVarA);
                                                                        }
                                                                    } else {
                                                                        if (jSONObject4.has("optimize")) {
                                                                            jVar.a(mVarN);
                                                                        }
                                                                        if (jSONObject4.has(str15)) {
                                                                            jVar.a(jVarO);
                                                                        }
                                                                        str6 = str33;
                                                                        if (jSONObject4.has(str6)) {
                                                                            qVarP = c.p(jSONObject4.optJSONObject(str6));
                                                                            if (qVarP != null) {
                                                                                jVar.a(qVarP);
                                                                            }
                                                                        }
                                                                        str14 = str32;
                                                                        if (jSONObject4.has(str14)) {
                                                                            jVar.a(dVarA);
                                                                        }
                                                                    }
                                                                }
                                                            } else {
                                                                str3 = str38;
                                                                if (jSONObject4.has(str3)) {
                                                                    jVar.e(jSONObject4.optInt(str3));
                                                                    if (jSONObject4.has("complianceSensor")) {
                                                                        jVar.a(hVarL);
                                                                    }
                                                                    if (jSONObject4.has("notification")) {
                                                                        jVar.a(lVarM2);
                                                                    }
                                                                    str12 = str37;
                                                                    if (jSONObject4.has(str12)) {
                                                                        lVarM = c.m(jSONObject4.optJSONObject(str12));
                                                                        if (lVarM != null) {
                                                                            jVar.b(lVarM);
                                                                        }
                                                                        if (jSONObject4.has("optimize")) {
                                                                            jVar.a(mVarN);
                                                                        }
                                                                        if (jSONObject4.has(str15)) {
                                                                            jVar.a(jVarO);
                                                                        }
                                                                        str6 = str33;
                                                                        if (jSONObject4.has(str6)) {
                                                                            qVarP = c.p(jSONObject4.optJSONObject(str6));
                                                                            if (qVarP != null) {
                                                                                jVar.a(qVarP);
                                                                            }
                                                                        }
                                                                        str14 = str32;
                                                                        if (jSONObject4.has(str14)) {
                                                                            jVar.a(dVarA);
                                                                        }
                                                                    } else {
                                                                        if (jSONObject4.has("optimize")) {
                                                                            jVar.a(mVarN);
                                                                        }
                                                                        if (jSONObject4.has(str15)) {
                                                                            jVar.a(jVarO);
                                                                        }
                                                                        str6 = str33;
                                                                        if (jSONObject4.has(str6)) {
                                                                            qVarP = c.p(jSONObject4.optJSONObject(str6));
                                                                            if (qVarP != null) {
                                                                                jVar.a(qVarP);
                                                                            }
                                                                        }
                                                                        str14 = str32;
                                                                        if (jSONObject4.has(str14)) {
                                                                            jVar.a(dVarA);
                                                                        }
                                                                    }
                                                                } else {
                                                                    if (jSONObject4.has("complianceSensor")) {
                                                                        jVar.a(hVarL);
                                                                    }
                                                                    if (jSONObject4.has("notification")) {
                                                                        jVar.a(lVarM2);
                                                                    }
                                                                    str12 = str37;
                                                                    if (jSONObject4.has(str12)) {
                                                                        lVarM = c.m(jSONObject4.optJSONObject(str12));
                                                                        if (lVarM != null) {
                                                                            jVar.b(lVarM);
                                                                        }
                                                                        if (jSONObject4.has("optimize")) {
                                                                            jVar.a(mVarN);
                                                                        }
                                                                        if (jSONObject4.has(str15)) {
                                                                            jVar.a(jVarO);
                                                                        }
                                                                        str6 = str33;
                                                                        if (jSONObject4.has(str6)) {
                                                                            qVarP = c.p(jSONObject4.optJSONObject(str6));
                                                                            if (qVarP != null) {
                                                                                jVar.a(qVarP);
                                                                            }
                                                                        }
                                                                        str14 = str32;
                                                                        if (jSONObject4.has(str14)) {
                                                                            jVar.a(dVarA);
                                                                        }
                                                                    } else {
                                                                        if (jSONObject4.has("optimize")) {
                                                                            jVar.a(mVarN);
                                                                        }
                                                                        if (jSONObject4.has(str15)) {
                                                                            jVar.a(jVarO);
                                                                        }
                                                                        str6 = str33;
                                                                        if (jSONObject4.has(str6)) {
                                                                            qVarP = c.p(jSONObject4.optJSONObject(str6));
                                                                            if (qVarP != null) {
                                                                                jVar.a(qVarP);
                                                                            }
                                                                        }
                                                                        str14 = str32;
                                                                        if (jSONObject4.has(str14)) {
                                                                            jVar.a(dVarA);
                                                                        }
                                                                    }
                                                                }
                                                            }
                                                        }
                                                        arrayList = arrayList6;
                                                        arrayList.add(jVar);
                                                        str33 = str6;
                                                        str30 = str13;
                                                        str34 = str7;
                                                        str28 = str3;
                                                        str32 = str14;
                                                        str24 = str12;
                                                        str22 = str11;
                                                        str26 = str10;
                                                        str25 = str9;
                                                        str35 = str8;
                                                        iVar = iVar2;
                                                        str29 = str4;
                                                        str31 = str5;
                                                        i11++;
                                                        arrayList4 = arrayList;
                                                        jSONArrayOptJSONArray = jSONArrayOptJSONArray;
                                                        str23 = str2;
                                                    }
                                                } else {
                                                    str27 = str16;
                                                    if (jSONObjectOptJSONObject.has(str27)) {
                                                        gVar.b(jSONObjectOptJSONObject.optInt(str27));
                                                        str10 = str26;
                                                        if (jSONObjectOptJSONObject.has(str10)) {
                                                            gVar.c(jSONObjectOptJSONObject.optInt(str10));
                                                            str9 = str25;
                                                            if (jSONObjectOptJSONObject.has(str9)) {
                                                                gVar.d(jSONObjectOptJSONObject.optInt(str9));
                                                                str8 = str35;
                                                                str5 = str5;
                                                                if (jSONObjectOptJSONObject.has(str8)) {
                                                                    gVar.a(jSONObjectOptJSONObject.optString(str8));
                                                                }
                                                                str7 = str34;
                                                                str4 = str4;
                                                                if (jSONObjectOptJSONObject.has(str7)) {
                                                                    gVar.b(jSONObjectOptJSONObject.optString(str7));
                                                                }
                                                                str11 = str40;
                                                                if (jSONObjectOptJSONObject.has(str11)) {
                                                                    gVar.c(jSONObjectOptJSONObject.optString(str11));
                                                                }
                                                                jVar.a(gVar);
                                                            } else {
                                                                str8 = str35;
                                                                str5 = str5;
                                                                if (jSONObjectOptJSONObject.has(str8)) {
                                                                    gVar.a(jSONObjectOptJSONObject.optString(str8));
                                                                }
                                                                str7 = str34;
                                                                str4 = str4;
                                                                if (jSONObjectOptJSONObject.has(str7)) {
                                                                    gVar.b(jSONObjectOptJSONObject.optString(str7));
                                                                }
                                                                str11 = str40;
                                                                if (jSONObjectOptJSONObject.has(str11)) {
                                                                    gVar.c(jSONObjectOptJSONObject.optString(str11));
                                                                }
                                                                jVar.a(gVar);
                                                            }
                                                        } else {
                                                            str9 = str25;
                                                            if (jSONObjectOptJSONObject.has(str9)) {
                                                                gVar.d(jSONObjectOptJSONObject.optInt(str9));
                                                                str8 = str35;
                                                                str5 = str5;
                                                                if (jSONObjectOptJSONObject.has(str8)) {
                                                                    gVar.a(jSONObjectOptJSONObject.optString(str8));
                                                                }
                                                                str7 = str34;
                                                                str4 = str4;
                                                                if (jSONObjectOptJSONObject.has(str7)) {
                                                                    gVar.b(jSONObjectOptJSONObject.optString(str7));
                                                                }
                                                                str11 = str40;
                                                                if (jSONObjectOptJSONObject.has(str11)) {
                                                                    gVar.c(jSONObjectOptJSONObject.optString(str11));
                                                                }
                                                                jVar.a(gVar);
                                                            } else {
                                                                str8 = str35;
                                                                str5 = str5;
                                                                if (jSONObjectOptJSONObject.has(str8)) {
                                                                    gVar.a(jSONObjectOptJSONObject.optString(str8));
                                                                }
                                                                str7 = str34;
                                                                str4 = str4;
                                                                if (jSONObjectOptJSONObject.has(str7)) {
                                                                    gVar.b(jSONObjectOptJSONObject.optString(str7));
                                                                }
                                                                str11 = str40;
                                                                if (jSONObjectOptJSONObject.has(str11)) {
                                                                    gVar.c(jSONObjectOptJSONObject.optString(str11));
                                                                }
                                                                jVar.a(gVar);
                                                            }
                                                        }
                                                    } else {
                                                        str10 = str26;
                                                        if (jSONObjectOptJSONObject.has(str10)) {
                                                            gVar.c(jSONObjectOptJSONObject.optInt(str10));
                                                            str9 = str25;
                                                            if (jSONObjectOptJSONObject.has(str9)) {
                                                                gVar.d(jSONObjectOptJSONObject.optInt(str9));
                                                                str8 = str35;
                                                                str5 = str5;
                                                                if (jSONObjectOptJSONObject.has(str8)) {
                                                                    gVar.a(jSONObjectOptJSONObject.optString(str8));
                                                                }
                                                                str7 = str34;
                                                                str4 = str4;
                                                                if (jSONObjectOptJSONObject.has(str7)) {
                                                                    gVar.b(jSONObjectOptJSONObject.optString(str7));
                                                                }
                                                                str11 = str40;
                                                                if (jSONObjectOptJSONObject.has(str11)) {
                                                                    gVar.c(jSONObjectOptJSONObject.optString(str11));
                                                                }
                                                                jVar.a(gVar);
                                                            } else {
                                                                str8 = str35;
                                                                str5 = str5;
                                                                if (jSONObjectOptJSONObject.has(str8)) {
                                                                    gVar.a(jSONObjectOptJSONObject.optString(str8));
                                                                }
                                                                str7 = str34;
                                                                str4 = str4;
                                                                if (jSONObjectOptJSONObject.has(str7)) {
                                                                    gVar.b(jSONObjectOptJSONObject.optString(str7));
                                                                }
                                                                str11 = str40;
                                                                if (jSONObjectOptJSONObject.has(str11)) {
                                                                    gVar.c(jSONObjectOptJSONObject.optString(str11));
                                                                }
                                                                jVar.a(gVar);
                                                            }
                                                        } else {
                                                            str9 = str25;
                                                            if (jSONObjectOptJSONObject.has(str9)) {
                                                                gVar.d(jSONObjectOptJSONObject.optInt(str9));
                                                                str8 = str35;
                                                                str5 = str5;
                                                                if (jSONObjectOptJSONObject.has(str8)) {
                                                                    gVar.a(jSONObjectOptJSONObject.optString(str8));
                                                                }
                                                                str7 = str34;
                                                                str4 = str4;
                                                                if (jSONObjectOptJSONObject.has(str7)) {
                                                                    gVar.b(jSONObjectOptJSONObject.optString(str7));
                                                                }
                                                                str11 = str40;
                                                                if (jSONObjectOptJSONObject.has(str11)) {
                                                                    gVar.c(jSONObjectOptJSONObject.optString(str11));
                                                                }
                                                                jVar.a(gVar);
                                                            } else {
                                                                str8 = str35;
                                                                str5 = str5;
                                                                if (jSONObjectOptJSONObject.has(str8)) {
                                                                    gVar.a(jSONObjectOptJSONObject.optString(str8));
                                                                }
                                                                str7 = str34;
                                                                str4 = str4;
                                                                if (jSONObjectOptJSONObject.has(str7)) {
                                                                    gVar.b(jSONObjectOptJSONObject.optString(str7));
                                                                }
                                                                str11 = str40;
                                                                if (jSONObjectOptJSONObject.has(str11)) {
                                                                    gVar.c(jSONObjectOptJSONObject.optString(str11));
                                                                }
                                                                jVar.a(gVar);
                                                            }
                                                        }
                                                    }
                                                }
                                            } catch (Exception e36) {
                                                e = e36;
                                                str4 = str4;
                                                str7 = str34;
                                                str8 = str35;
                                                str9 = str25;
                                                str11 = str40;
                                                str10 = str26;
                                                str27 = str16;
                                                exc = e;
                                                exc.printStackTrace();
                                                if (jSONObject4.has("rewardedVideo")) {
                                                    fVarK = c.k(jSONObject4.optJSONObject("rewardedVideo"));
                                                    if (fVarK != null) {
                                                        jVar.a(fVarK);
                                                    }
                                                    str13 = str39;
                                                    if (jSONObject4.has(str13)) {
                                                        jVar.d(jSONObject4.optInt(str13));
                                                        str3 = str38;
                                                        if (jSONObject4.has(str3)) {
                                                            jVar.e(jSONObject4.optInt(str3));
                                                            if (jSONObject4.has("complianceSensor")) {
                                                                jVar.a(hVarL);
                                                            }
                                                            if (jSONObject4.has("notification")) {
                                                                jVar.a(lVarM2);
                                                            }
                                                            str12 = str37;
                                                            if (jSONObject4.has(str12)) {
                                                                lVarM = c.m(jSONObject4.optJSONObject(str12));
                                                                if (lVarM != null) {
                                                                    jVar.b(lVarM);
                                                                }
                                                                if (jSONObject4.has("optimize")) {
                                                                    jVar.a(mVarN);
                                                                }
                                                                if (jSONObject4.has(str15)) {
                                                                    jVar.a(jVarO);
                                                                }
                                                                str6 = str33;
                                                                if (jSONObject4.has(str6)) {
                                                                    qVarP = c.p(jSONObject4.optJSONObject(str6));
                                                                    if (qVarP != null) {
                                                                        jVar.a(qVarP);
                                                                    }
                                                                }
                                                                str14 = str32;
                                                                if (jSONObject4.has(str14)) {
                                                                    jVar.a(dVarA);
                                                                }
                                                            } else {
                                                                if (jSONObject4.has("optimize")) {
                                                                    jVar.a(mVarN);
                                                                }
                                                                if (jSONObject4.has(str15)) {
                                                                    jVar.a(jVarO);
                                                                }
                                                                str6 = str33;
                                                                if (jSONObject4.has(str6)) {
                                                                    qVarP = c.p(jSONObject4.optJSONObject(str6));
                                                                    if (qVarP != null) {
                                                                        jVar.a(qVarP);
                                                                    }
                                                                }
                                                                str14 = str32;
                                                                if (jSONObject4.has(str14)) {
                                                                    jVar.a(dVarA);
                                                                }
                                                            }
                                                        } else {
                                                            if (jSONObject4.has("complianceSensor")) {
                                                                jVar.a(hVarL);
                                                            }
                                                            if (jSONObject4.has("notification")) {
                                                                jVar.a(lVarM2);
                                                            }
                                                            str12 = str37;
                                                            if (jSONObject4.has(str12)) {
                                                                lVarM = c.m(jSONObject4.optJSONObject(str12));
                                                                if (lVarM != null) {
                                                                    jVar.b(lVarM);
                                                                }
                                                                if (jSONObject4.has("optimize")) {
                                                                    jVar.a(mVarN);
                                                                }
                                                                if (jSONObject4.has(str15)) {
                                                                    jVar.a(jVarO);
                                                                }
                                                                str6 = str33;
                                                                if (jSONObject4.has(str6)) {
                                                                    qVarP = c.p(jSONObject4.optJSONObject(str6));
                                                                    if (qVarP != null) {
                                                                        jVar.a(qVarP);
                                                                    }
                                                                }
                                                                str14 = str32;
                                                                if (jSONObject4.has(str14)) {
                                                                    jVar.a(dVarA);
                                                                }
                                                            } else {
                                                                if (jSONObject4.has("optimize")) {
                                                                    jVar.a(mVarN);
                                                                }
                                                                if (jSONObject4.has(str15)) {
                                                                    jVar.a(jVarO);
                                                                }
                                                                str6 = str33;
                                                                if (jSONObject4.has(str6)) {
                                                                    qVarP = c.p(jSONObject4.optJSONObject(str6));
                                                                    if (qVarP != null) {
                                                                        jVar.a(qVarP);
                                                                    }
                                                                }
                                                                str14 = str32;
                                                                if (jSONObject4.has(str14)) {
                                                                    jVar.a(dVarA);
                                                                }
                                                            }
                                                        }
                                                    } else {
                                                        str3 = str38;
                                                        if (jSONObject4.has(str3)) {
                                                            jVar.e(jSONObject4.optInt(str3));
                                                            if (jSONObject4.has("complianceSensor")) {
                                                                jVar.a(hVarL);
                                                            }
                                                            if (jSONObject4.has("notification")) {
                                                                jVar.a(lVarM2);
                                                            }
                                                            str12 = str37;
                                                            if (jSONObject4.has(str12)) {
                                                                lVarM = c.m(jSONObject4.optJSONObject(str12));
                                                                if (lVarM != null) {
                                                                    jVar.b(lVarM);
                                                                }
                                                                if (jSONObject4.has("optimize")) {
                                                                    jVar.a(mVarN);
                                                                }
                                                                if (jSONObject4.has(str15)) {
                                                                    jVar.a(jVarO);
                                                                }
                                                                str6 = str33;
                                                                if (jSONObject4.has(str6)) {
                                                                    qVarP = c.p(jSONObject4.optJSONObject(str6));
                                                                    if (qVarP != null) {
                                                                        jVar.a(qVarP);
                                                                    }
                                                                }
                                                                str14 = str32;
                                                                if (jSONObject4.has(str14)) {
                                                                    jVar.a(dVarA);
                                                                }
                                                            } else {
                                                                if (jSONObject4.has("optimize")) {
                                                                    jVar.a(mVarN);
                                                                }
                                                                if (jSONObject4.has(str15)) {
                                                                    jVar.a(jVarO);
                                                                }
                                                                str6 = str33;
                                                                if (jSONObject4.has(str6)) {
                                                                    qVarP = c.p(jSONObject4.optJSONObject(str6));
                                                                    if (qVarP != null) {
                                                                        jVar.a(qVarP);
                                                                    }
                                                                }
                                                                str14 = str32;
                                                                if (jSONObject4.has(str14)) {
                                                                    jVar.a(dVarA);
                                                                }
                                                            }
                                                        } else {
                                                            if (jSONObject4.has("complianceSensor")) {
                                                                jVar.a(hVarL);
                                                            }
                                                            if (jSONObject4.has("notification")) {
                                                                jVar.a(lVarM2);
                                                            }
                                                            str12 = str37;
                                                            if (jSONObject4.has(str12)) {
                                                                lVarM = c.m(jSONObject4.optJSONObject(str12));
                                                                if (lVarM != null) {
                                                                    jVar.b(lVarM);
                                                                }
                                                                if (jSONObject4.has("optimize")) {
                                                                    jVar.a(mVarN);
                                                                }
                                                                if (jSONObject4.has(str15)) {
                                                                    jVar.a(jVarO);
                                                                }
                                                                str6 = str33;
                                                                if (jSONObject4.has(str6)) {
                                                                    qVarP = c.p(jSONObject4.optJSONObject(str6));
                                                                    if (qVarP != null) {
                                                                        jVar.a(qVarP);
                                                                    }
                                                                }
                                                                str14 = str32;
                                                                if (jSONObject4.has(str14)) {
                                                                    jVar.a(dVarA);
                                                                }
                                                            } else {
                                                                if (jSONObject4.has("optimize")) {
                                                                    jVar.a(mVarN);
                                                                }
                                                                if (jSONObject4.has(str15)) {
                                                                    jVar.a(jVarO);
                                                                }
                                                                str6 = str33;
                                                                if (jSONObject4.has(str6)) {
                                                                    qVarP = c.p(jSONObject4.optJSONObject(str6));
                                                                    if (qVarP != null) {
                                                                        jVar.a(qVarP);
                                                                    }
                                                                }
                                                                str14 = str32;
                                                                if (jSONObject4.has(str14)) {
                                                                    jVar.a(dVarA);
                                                                }
                                                            }
                                                        }
                                                    }
                                                } else {
                                                    str13 = str39;
                                                    if (jSONObject4.has(str13)) {
                                                        jVar.d(jSONObject4.optInt(str13));
                                                        str3 = str38;
                                                        if (jSONObject4.has(str3)) {
                                                            jVar.e(jSONObject4.optInt(str3));
                                                            if (jSONObject4.has("complianceSensor")) {
                                                                jVar.a(hVarL);
                                                            }
                                                            if (jSONObject4.has("notification")) {
                                                                jVar.a(lVarM2);
                                                            }
                                                            str12 = str37;
                                                            if (jSONObject4.has(str12)) {
                                                                lVarM = c.m(jSONObject4.optJSONObject(str12));
                                                                if (lVarM != null) {
                                                                    jVar.b(lVarM);
                                                                }
                                                                if (jSONObject4.has("optimize")) {
                                                                    jVar.a(mVarN);
                                                                }
                                                                if (jSONObject4.has(str15)) {
                                                                    jVar.a(jVarO);
                                                                }
                                                                str6 = str33;
                                                                if (jSONObject4.has(str6)) {
                                                                    qVarP = c.p(jSONObject4.optJSONObject(str6));
                                                                    if (qVarP != null) {
                                                                        jVar.a(qVarP);
                                                                    }
                                                                }
                                                                str14 = str32;
                                                                if (jSONObject4.has(str14)) {
                                                                    jVar.a(dVarA);
                                                                }
                                                            } else {
                                                                if (jSONObject4.has("optimize")) {
                                                                    jVar.a(mVarN);
                                                                }
                                                                if (jSONObject4.has(str15)) {
                                                                    jVar.a(jVarO);
                                                                }
                                                                str6 = str33;
                                                                if (jSONObject4.has(str6)) {
                                                                    qVarP = c.p(jSONObject4.optJSONObject(str6));
                                                                    if (qVarP != null) {
                                                                        jVar.a(qVarP);
                                                                    }
                                                                }
                                                                str14 = str32;
                                                                if (jSONObject4.has(str14)) {
                                                                    jVar.a(dVarA);
                                                                }
                                                            }
                                                        } else {
                                                            if (jSONObject4.has("complianceSensor")) {
                                                                jVar.a(hVarL);
                                                            }
                                                            if (jSONObject4.has("notification")) {
                                                                jVar.a(lVarM2);
                                                            }
                                                            str12 = str37;
                                                            if (jSONObject4.has(str12)) {
                                                                lVarM = c.m(jSONObject4.optJSONObject(str12));
                                                                if (lVarM != null) {
                                                                    jVar.b(lVarM);
                                                                }
                                                                if (jSONObject4.has("optimize")) {
                                                                    jVar.a(mVarN);
                                                                }
                                                                if (jSONObject4.has(str15)) {
                                                                    jVar.a(jVarO);
                                                                }
                                                                str6 = str33;
                                                                if (jSONObject4.has(str6)) {
                                                                    qVarP = c.p(jSONObject4.optJSONObject(str6));
                                                                    if (qVarP != null) {
                                                                        jVar.a(qVarP);
                                                                    }
                                                                }
                                                                str14 = str32;
                                                                if (jSONObject4.has(str14)) {
                                                                    jVar.a(dVarA);
                                                                }
                                                            } else {
                                                                if (jSONObject4.has("optimize")) {
                                                                    jVar.a(mVarN);
                                                                }
                                                                if (jSONObject4.has(str15)) {
                                                                    jVar.a(jVarO);
                                                                }
                                                                str6 = str33;
                                                                if (jSONObject4.has(str6)) {
                                                                    qVarP = c.p(jSONObject4.optJSONObject(str6));
                                                                    if (qVarP != null) {
                                                                        jVar.a(qVarP);
                                                                    }
                                                                }
                                                                str14 = str32;
                                                                if (jSONObject4.has(str14)) {
                                                                    jVar.a(dVarA);
                                                                }
                                                            }
                                                        }
                                                    } else {
                                                        str3 = str38;
                                                        if (jSONObject4.has(str3)) {
                                                            jVar.e(jSONObject4.optInt(str3));
                                                            if (jSONObject4.has("complianceSensor")) {
                                                                jVar.a(hVarL);
                                                            }
                                                            if (jSONObject4.has("notification")) {
                                                                jVar.a(lVarM2);
                                                            }
                                                            str12 = str37;
                                                            if (jSONObject4.has(str12)) {
                                                                lVarM = c.m(jSONObject4.optJSONObject(str12));
                                                                if (lVarM != null) {
                                                                    jVar.b(lVarM);
                                                                }
                                                                if (jSONObject4.has("optimize")) {
                                                                    jVar.a(mVarN);
                                                                }
                                                                if (jSONObject4.has(str15)) {
                                                                    jVar.a(jVarO);
                                                                }
                                                                str6 = str33;
                                                                if (jSONObject4.has(str6)) {
                                                                    qVarP = c.p(jSONObject4.optJSONObject(str6));
                                                                    if (qVarP != null) {
                                                                        jVar.a(qVarP);
                                                                    }
                                                                }
                                                                str14 = str32;
                                                                if (jSONObject4.has(str14)) {
                                                                    jVar.a(dVarA);
                                                                }
                                                            } else {
                                                                if (jSONObject4.has("optimize")) {
                                                                    jVar.a(mVarN);
                                                                }
                                                                if (jSONObject4.has(str15)) {
                                                                    jVar.a(jVarO);
                                                                }
                                                                str6 = str33;
                                                                if (jSONObject4.has(str6)) {
                                                                    qVarP = c.p(jSONObject4.optJSONObject(str6));
                                                                    if (qVarP != null) {
                                                                        jVar.a(qVarP);
                                                                    }
                                                                }
                                                                str14 = str32;
                                                                if (jSONObject4.has(str14)) {
                                                                    jVar.a(dVarA);
                                                                }
                                                            }
                                                        } else {
                                                            if (jSONObject4.has("complianceSensor")) {
                                                                jVar.a(hVarL);
                                                            }
                                                            if (jSONObject4.has("notification")) {
                                                                jVar.a(lVarM2);
                                                            }
                                                            str12 = str37;
                                                            if (jSONObject4.has(str12)) {
                                                                lVarM = c.m(jSONObject4.optJSONObject(str12));
                                                                if (lVarM != null) {
                                                                    jVar.b(lVarM);
                                                                }
                                                                if (jSONObject4.has("optimize")) {
                                                                    jVar.a(mVarN);
                                                                }
                                                                if (jSONObject4.has(str15)) {
                                                                    jVar.a(jVarO);
                                                                }
                                                                str6 = str33;
                                                                if (jSONObject4.has(str6)) {
                                                                    qVarP = c.p(jSONObject4.optJSONObject(str6));
                                                                    if (qVarP != null) {
                                                                        jVar.a(qVarP);
                                                                    }
                                                                }
                                                                str14 = str32;
                                                                if (jSONObject4.has(str14)) {
                                                                    jVar.a(dVarA);
                                                                }
                                                            } else {
                                                                if (jSONObject4.has("optimize")) {
                                                                    jVar.a(mVarN);
                                                                }
                                                                if (jSONObject4.has(str15)) {
                                                                    jVar.a(jVarO);
                                                                }
                                                                str6 = str33;
                                                                if (jSONObject4.has(str6)) {
                                                                    qVarP = c.p(jSONObject4.optJSONObject(str6));
                                                                    if (qVarP != null) {
                                                                        jVar.a(qVarP);
                                                                    }
                                                                }
                                                                str14 = str32;
                                                                if (jSONObject4.has(str14)) {
                                                                    jVar.a(dVarA);
                                                                }
                                                            }
                                                        }
                                                    }
                                                }
                                                arrayList = arrayList6;
                                                arrayList.add(jVar);
                                                str33 = str6;
                                                str30 = str13;
                                                str34 = str7;
                                                str28 = str3;
                                                str32 = str14;
                                                str24 = str12;
                                                str22 = str11;
                                                str26 = str10;
                                                str25 = str9;
                                                str35 = str8;
                                                iVar = iVar2;
                                                str29 = str4;
                                                str31 = str5;
                                                i11++;
                                                arrayList4 = arrayList;
                                                jSONArrayOptJSONArray = jSONArrayOptJSONArray;
                                                str23 = str2;
                                            }
                                        }
                                    } catch (Exception e37) {
                                        e = e37;
                                    }
                                    try {
                                        if (jSONObject4.has("rewardedVideo")) {
                                            fVarK = c.k(jSONObject4.optJSONObject("rewardedVideo"));
                                            if (fVarK != null) {
                                                jVar.a(fVarK);
                                            }
                                            str13 = str39;
                                            if (jSONObject4.has(str13)) {
                                                jVar.d(jSONObject4.optInt(str13));
                                                str3 = str38;
                                                if (jSONObject4.has(str3)) {
                                                    jVar.e(jSONObject4.optInt(str3));
                                                    if (jSONObject4.has("complianceSensor") && (hVarL = c.l(jSONObject4.optJSONObject("complianceSensor"))) != null) {
                                                        jVar.a(hVarL);
                                                    }
                                                    if (jSONObject4.has("notification") && (lVarM2 = c.m(jSONObject4.optJSONObject("notification"))) != null) {
                                                        jVar.a(lVarM2);
                                                    }
                                                    str12 = str37;
                                                    if (jSONObject4.has(str12)) {
                                                        lVarM = c.m(jSONObject4.optJSONObject(str12));
                                                        if (lVarM != null) {
                                                            jVar.b(lVarM);
                                                        }
                                                        if (jSONObject4.has("optimize") && (mVarN = c.n(jSONObject4.optJSONObject("optimize"))) != null) {
                                                            jVar.a(mVarN);
                                                        }
                                                        if (jSONObject4.has(str15) && (jVarO = c.o(jSONObject4.optJSONObject(str15))) != null) {
                                                            jVar.a(jVarO);
                                                        }
                                                        str6 = str33;
                                                        if (jSONObject4.has(str6)) {
                                                            qVarP = c.p(jSONObject4.optJSONObject(str6));
                                                            if (qVarP != null) {
                                                                jVar.a(qVarP);
                                                            }
                                                        }
                                                        str14 = str32;
                                                        if (jSONObject4.has(str14) && (dVarA = c.a(jSONObject4.optJSONObject(str14))) != null) {
                                                            jVar.a(dVarA);
                                                        }
                                                    } else {
                                                        if (jSONObject4.has("optimize")) {
                                                            jVar.a(mVarN);
                                                        }
                                                        if (jSONObject4.has(str15)) {
                                                            jVar.a(jVarO);
                                                        }
                                                        str6 = str33;
                                                        if (jSONObject4.has(str6)) {
                                                            qVarP = c.p(jSONObject4.optJSONObject(str6));
                                                            if (qVarP != null) {
                                                                jVar.a(qVarP);
                                                            }
                                                        }
                                                        str14 = str32;
                                                        if (jSONObject4.has(str14)) {
                                                            jVar.a(dVarA);
                                                        }
                                                    }
                                                } else {
                                                    if (jSONObject4.has("complianceSensor")) {
                                                        jVar.a(hVarL);
                                                    }
                                                    if (jSONObject4.has("notification")) {
                                                        jVar.a(lVarM2);
                                                    }
                                                    str12 = str37;
                                                    if (jSONObject4.has(str12)) {
                                                        lVarM = c.m(jSONObject4.optJSONObject(str12));
                                                        if (lVarM != null) {
                                                            jVar.b(lVarM);
                                                        }
                                                        if (jSONObject4.has("optimize")) {
                                                            jVar.a(mVarN);
                                                        }
                                                        if (jSONObject4.has(str15)) {
                                                            jVar.a(jVarO);
                                                        }
                                                        str6 = str33;
                                                        if (jSONObject4.has(str6)) {
                                                            qVarP = c.p(jSONObject4.optJSONObject(str6));
                                                            if (qVarP != null) {
                                                                jVar.a(qVarP);
                                                            }
                                                        }
                                                        str14 = str32;
                                                        if (jSONObject4.has(str14)) {
                                                            jVar.a(dVarA);
                                                        }
                                                    } else {
                                                        if (jSONObject4.has("optimize")) {
                                                            jVar.a(mVarN);
                                                        }
                                                        if (jSONObject4.has(str15)) {
                                                            jVar.a(jVarO);
                                                        }
                                                        str6 = str33;
                                                        if (jSONObject4.has(str6)) {
                                                            qVarP = c.p(jSONObject4.optJSONObject(str6));
                                                            if (qVarP != null) {
                                                                jVar.a(qVarP);
                                                            }
                                                        }
                                                        str14 = str32;
                                                        if (jSONObject4.has(str14)) {
                                                            jVar.a(dVarA);
                                                        }
                                                    }
                                                }
                                            } else {
                                                str3 = str38;
                                                if (jSONObject4.has(str3)) {
                                                    jVar.e(jSONObject4.optInt(str3));
                                                    if (jSONObject4.has("complianceSensor")) {
                                                        jVar.a(hVarL);
                                                    }
                                                    if (jSONObject4.has("notification")) {
                                                        jVar.a(lVarM2);
                                                    }
                                                    str12 = str37;
                                                    if (jSONObject4.has(str12)) {
                                                        lVarM = c.m(jSONObject4.optJSONObject(str12));
                                                        if (lVarM != null) {
                                                            jVar.b(lVarM);
                                                        }
                                                        if (jSONObject4.has("optimize")) {
                                                            jVar.a(mVarN);
                                                        }
                                                        if (jSONObject4.has(str15)) {
                                                            jVar.a(jVarO);
                                                        }
                                                        str6 = str33;
                                                        if (jSONObject4.has(str6)) {
                                                            qVarP = c.p(jSONObject4.optJSONObject(str6));
                                                            if (qVarP != null) {
                                                                jVar.a(qVarP);
                                                            }
                                                        }
                                                        str14 = str32;
                                                        if (jSONObject4.has(str14)) {
                                                            jVar.a(dVarA);
                                                        }
                                                    } else {
                                                        if (jSONObject4.has("optimize")) {
                                                            jVar.a(mVarN);
                                                        }
                                                        if (jSONObject4.has(str15)) {
                                                            jVar.a(jVarO);
                                                        }
                                                        str6 = str33;
                                                        if (jSONObject4.has(str6)) {
                                                            qVarP = c.p(jSONObject4.optJSONObject(str6));
                                                            if (qVarP != null) {
                                                                jVar.a(qVarP);
                                                            }
                                                        }
                                                        str14 = str32;
                                                        if (jSONObject4.has(str14)) {
                                                            jVar.a(dVarA);
                                                        }
                                                    }
                                                } else {
                                                    if (jSONObject4.has("complianceSensor")) {
                                                        jVar.a(hVarL);
                                                    }
                                                    if (jSONObject4.has("notification")) {
                                                        jVar.a(lVarM2);
                                                    }
                                                    str12 = str37;
                                                    if (jSONObject4.has(str12)) {
                                                        lVarM = c.m(jSONObject4.optJSONObject(str12));
                                                        if (lVarM != null) {
                                                            jVar.b(lVarM);
                                                        }
                                                        if (jSONObject4.has("optimize")) {
                                                            jVar.a(mVarN);
                                                        }
                                                        if (jSONObject4.has(str15)) {
                                                            jVar.a(jVarO);
                                                        }
                                                        str6 = str33;
                                                        if (jSONObject4.has(str6)) {
                                                            qVarP = c.p(jSONObject4.optJSONObject(str6));
                                                            if (qVarP != null) {
                                                                jVar.a(qVarP);
                                                            }
                                                        }
                                                        str14 = str32;
                                                        if (jSONObject4.has(str14)) {
                                                            jVar.a(dVarA);
                                                        }
                                                    } else {
                                                        if (jSONObject4.has("optimize")) {
                                                            jVar.a(mVarN);
                                                        }
                                                        if (jSONObject4.has(str15)) {
                                                            jVar.a(jVarO);
                                                        }
                                                        str6 = str33;
                                                        if (jSONObject4.has(str6)) {
                                                            qVarP = c.p(jSONObject4.optJSONObject(str6));
                                                            if (qVarP != null) {
                                                                jVar.a(qVarP);
                                                            }
                                                        }
                                                        str14 = str32;
                                                        if (jSONObject4.has(str14)) {
                                                            jVar.a(dVarA);
                                                        }
                                                    }
                                                }
                                            }
                                        } else {
                                            str13 = str39;
                                            if (jSONObject4.has(str13)) {
                                                jVar.d(jSONObject4.optInt(str13));
                                                str3 = str38;
                                                if (jSONObject4.has(str3)) {
                                                    jVar.e(jSONObject4.optInt(str3));
                                                    if (jSONObject4.has("complianceSensor")) {
                                                        jVar.a(hVarL);
                                                    }
                                                    if (jSONObject4.has("notification")) {
                                                        jVar.a(lVarM2);
                                                    }
                                                    str12 = str37;
                                                    if (jSONObject4.has(str12)) {
                                                        lVarM = c.m(jSONObject4.optJSONObject(str12));
                                                        if (lVarM != null) {
                                                            jVar.b(lVarM);
                                                        }
                                                        if (jSONObject4.has("optimize")) {
                                                            jVar.a(mVarN);
                                                        }
                                                        if (jSONObject4.has(str15)) {
                                                            jVar.a(jVarO);
                                                        }
                                                        str6 = str33;
                                                        if (jSONObject4.has(str6)) {
                                                            qVarP = c.p(jSONObject4.optJSONObject(str6));
                                                            if (qVarP != null) {
                                                                jVar.a(qVarP);
                                                            }
                                                        }
                                                        str14 = str32;
                                                        if (jSONObject4.has(str14)) {
                                                            jVar.a(dVarA);
                                                        }
                                                    } else {
                                                        if (jSONObject4.has("optimize")) {
                                                            jVar.a(mVarN);
                                                        }
                                                        if (jSONObject4.has(str15)) {
                                                            jVar.a(jVarO);
                                                        }
                                                        str6 = str33;
                                                        if (jSONObject4.has(str6)) {
                                                            qVarP = c.p(jSONObject4.optJSONObject(str6));
                                                            if (qVarP != null) {
                                                                jVar.a(qVarP);
                                                            }
                                                        }
                                                        str14 = str32;
                                                        if (jSONObject4.has(str14)) {
                                                            jVar.a(dVarA);
                                                        }
                                                    }
                                                } else {
                                                    if (jSONObject4.has("complianceSensor")) {
                                                        jVar.a(hVarL);
                                                    }
                                                    if (jSONObject4.has("notification")) {
                                                        jVar.a(lVarM2);
                                                    }
                                                    str12 = str37;
                                                    if (jSONObject4.has(str12)) {
                                                        lVarM = c.m(jSONObject4.optJSONObject(str12));
                                                        if (lVarM != null) {
                                                            jVar.b(lVarM);
                                                        }
                                                        if (jSONObject4.has("optimize")) {
                                                            jVar.a(mVarN);
                                                        }
                                                        if (jSONObject4.has(str15)) {
                                                            jVar.a(jVarO);
                                                        }
                                                        str6 = str33;
                                                        if (jSONObject4.has(str6)) {
                                                            qVarP = c.p(jSONObject4.optJSONObject(str6));
                                                            if (qVarP != null) {
                                                                jVar.a(qVarP);
                                                            }
                                                        }
                                                        str14 = str32;
                                                        if (jSONObject4.has(str14)) {
                                                            jVar.a(dVarA);
                                                        }
                                                    } else {
                                                        if (jSONObject4.has("optimize")) {
                                                            jVar.a(mVarN);
                                                        }
                                                        if (jSONObject4.has(str15)) {
                                                            jVar.a(jVarO);
                                                        }
                                                        str6 = str33;
                                                        if (jSONObject4.has(str6)) {
                                                            qVarP = c.p(jSONObject4.optJSONObject(str6));
                                                            if (qVarP != null) {
                                                                jVar.a(qVarP);
                                                            }
                                                        }
                                                        str14 = str32;
                                                        if (jSONObject4.has(str14)) {
                                                            jVar.a(dVarA);
                                                        }
                                                    }
                                                }
                                            } else {
                                                str3 = str38;
                                                if (jSONObject4.has(str3)) {
                                                    jVar.e(jSONObject4.optInt(str3));
                                                    if (jSONObject4.has("complianceSensor")) {
                                                        jVar.a(hVarL);
                                                    }
                                                    if (jSONObject4.has("notification")) {
                                                        jVar.a(lVarM2);
                                                    }
                                                    str12 = str37;
                                                    if (jSONObject4.has(str12)) {
                                                        lVarM = c.m(jSONObject4.optJSONObject(str12));
                                                        if (lVarM != null) {
                                                            jVar.b(lVarM);
                                                        }
                                                        if (jSONObject4.has("optimize")) {
                                                            jVar.a(mVarN);
                                                        }
                                                        if (jSONObject4.has(str15)) {
                                                            jVar.a(jVarO);
                                                        }
                                                        str6 = str33;
                                                        if (jSONObject4.has(str6)) {
                                                            qVarP = c.p(jSONObject4.optJSONObject(str6));
                                                            if (qVarP != null) {
                                                                jVar.a(qVarP);
                                                            }
                                                        }
                                                        str14 = str32;
                                                        if (jSONObject4.has(str14)) {
                                                            jVar.a(dVarA);
                                                        }
                                                    } else {
                                                        if (jSONObject4.has("optimize")) {
                                                            jVar.a(mVarN);
                                                        }
                                                        if (jSONObject4.has(str15)) {
                                                            jVar.a(jVarO);
                                                        }
                                                        str6 = str33;
                                                        if (jSONObject4.has(str6)) {
                                                            qVarP = c.p(jSONObject4.optJSONObject(str6));
                                                            if (qVarP != null) {
                                                                jVar.a(qVarP);
                                                            }
                                                        }
                                                        str14 = str32;
                                                        if (jSONObject4.has(str14)) {
                                                            jVar.a(dVarA);
                                                        }
                                                    }
                                                } else {
                                                    if (jSONObject4.has("complianceSensor")) {
                                                        jVar.a(hVarL);
                                                    }
                                                    if (jSONObject4.has("notification")) {
                                                        jVar.a(lVarM2);
                                                    }
                                                    str12 = str37;
                                                    if (jSONObject4.has(str12)) {
                                                        lVarM = c.m(jSONObject4.optJSONObject(str12));
                                                        if (lVarM != null) {
                                                            jVar.b(lVarM);
                                                        }
                                                        if (jSONObject4.has("optimize")) {
                                                            jVar.a(mVarN);
                                                        }
                                                        if (jSONObject4.has(str15)) {
                                                            jVar.a(jVarO);
                                                        }
                                                        str6 = str33;
                                                        if (jSONObject4.has(str6)) {
                                                            qVarP = c.p(jSONObject4.optJSONObject(str6));
                                                            if (qVarP != null) {
                                                                jVar.a(qVarP);
                                                            }
                                                        }
                                                        str14 = str32;
                                                        if (jSONObject4.has(str14)) {
                                                            jVar.a(dVarA);
                                                        }
                                                    } else {
                                                        if (jSONObject4.has("optimize")) {
                                                            jVar.a(mVarN);
                                                        }
                                                        if (jSONObject4.has(str15)) {
                                                            jVar.a(jVarO);
                                                        }
                                                        str6 = str33;
                                                        if (jSONObject4.has(str6)) {
                                                            qVarP = c.p(jSONObject4.optJSONObject(str6));
                                                            if (qVarP != null) {
                                                                jVar.a(qVarP);
                                                            }
                                                        }
                                                        str14 = str32;
                                                        if (jSONObject4.has(str14)) {
                                                            jVar.a(dVarA);
                                                        }
                                                    }
                                                }
                                            }
                                        }
                                    } catch (Exception e38) {
                                        e = e38;
                                        str14 = str32;
                                        str6 = str33;
                                        str12 = str37;
                                        str3 = str38;
                                        str13 = str39;
                                    }
                                    arrayList = arrayList6;
                                    arrayList.add(jVar);
                                } else {
                                    str2 = str23;
                                    arrayList = arrayList4;
                                    str3 = str28;
                                    str4 = str29;
                                    str5 = str31;
                                    str6 = str33;
                                    str7 = str34;
                                    str8 = str35;
                                    str9 = str25;
                                    str10 = str26;
                                    str11 = str22;
                                    str12 = str24;
                                    str13 = str30;
                                    str14 = str32;
                                }
                                str33 = str6;
                                str30 = str13;
                                str34 = str7;
                                str28 = str3;
                                str32 = str14;
                                str24 = str12;
                                str22 = str11;
                                str26 = str10;
                                str25 = str9;
                                str35 = str8;
                                iVar = iVar2;
                                str29 = str4;
                                str31 = str5;
                                i11++;
                                arrayList4 = arrayList;
                                jSONArrayOptJSONArray = jSONArrayOptJSONArray;
                                str23 = str2;
                            } catch (JSONException e39) {
                                jSONException = e39;
                                iVar = iVar2;
                                com.beizi.ad.lance.a.n.c("ServerResponse", "JSONException e = " + jSONException.getMessage());
                                return iVar;
                            }
                        } catch (JSONException e40) {
                            e = e40;
                            jSONException = e;
                            com.beizi.ad.lance.a.n.c("ServerResponse", "JSONException e = " + jSONException.getMessage());
                            return iVar;
                        }
                    }
                    iVar.a(arrayList4);
                }
            } catch (JSONException e41) {
                e = e41;
            }
            return iVar;
        }

        public void a(int i10) {
            this.f9451a = i10;
        }

        public void b(String str) {
            this.f9453c = str;
        }

        private static boolean b(JSONArray jSONArray) {
            return jSONArray != null && jSONArray.length() > 0;
        }

        public void a(String str) {
            this.f9452b = str;
        }

        public void a(long j10) {
            this.f9454d = j10;
        }

        public void a(List<j> list) {
            this.f9455e = list;
        }

        public static String a(InputStream inputStream) throws IOException {
            ByteArrayOutputStream byteArrayOutputStream = new ByteArrayOutputStream();
            byte[] bArr = new byte[1024];
            while (true) {
                int i10 = inputStream.read(bArr);
                if (i10 != -1) {
                    byteArrayOutputStream.write(bArr, 0, i10);
                } else {
                    return byteArrayOutputStream.toString("UTF-8");
                }
            }
        }

        private static ArrayList<String> a(JSONArray jSONArray) throws JSONException {
            ArrayList<String> arrayList = new ArrayList<>();
            if (b(jSONArray)) {
                for (int i10 = 0; i10 < jSONArray.length(); i10++) {
                    arrayList.add(jSONArray.getString(i10));
                }
            }
            return arrayList;
        }
    }

    public static class j {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        private String f9456a;

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        private com.beizi.ad.model.i.a f9457b;

        /* JADX INFO: renamed from: c, reason: collision with root package name */
        private int f9458c;

        /* JADX INFO: renamed from: d, reason: collision with root package name */
        private boolean f9459d;

        /* JADX INFO: renamed from: e, reason: collision with root package name */
        private int f9460e;

        /* JADX INFO: renamed from: f, reason: collision with root package name */
        private int f9461f;

        /* JADX INFO: renamed from: g, reason: collision with root package name */
        private boolean f9462g;

        /* JADX INFO: renamed from: h, reason: collision with root package name */
        private boolean f9463h;

        /* JADX INFO: renamed from: i, reason: collision with root package name */
        private List<d> f9464i;

        /* JADX INFO: renamed from: j, reason: collision with root package name */
        private g f9465j;

        /* JADX INFO: renamed from: k, reason: collision with root package name */
        private com.beizi.ad.model.a.f f9466k;

        /* JADX INFO: renamed from: l, reason: collision with root package name */
        private int f9467l;

        /* JADX INFO: renamed from: m, reason: collision with root package name */
        private int f9468m;

        /* JADX INFO: renamed from: n, reason: collision with root package name */
        private com.beizi.ad.model.h f9469n;

        /* JADX INFO: renamed from: o, reason: collision with root package name */
        private l f9470o;

        /* JADX INFO: renamed from: p, reason: collision with root package name */
        private l f9471p;

        /* JADX INFO: renamed from: q, reason: collision with root package name */
        private m f9472q;

        /* JADX INFO: renamed from: r, reason: collision with root package name */
        private com.beizi.ad.model.j f9473r;

        /* JADX INFO: renamed from: s, reason: collision with root package name */
        private q f9474s;

        /* JADX INFO: renamed from: t, reason: collision with root package name */
        private com.beizi.ad.model.d f9475t;

        public void a(String str) {
            this.f9456a = str;
        }

        public int b() {
            return this.f9458c;
        }

        public boolean c() {
            return this.f9459d;
        }

        public int d() {
            return this.f9460e;
        }

        public int e() {
            return this.f9461f;
        }

        public boolean f() {
            return this.f9462g;
        }

        public boolean g() {
            return this.f9463h;
        }

        public List<d> h() {
            return this.f9464i;
        }

        public int i() {
            List<d> list = this.f9464i;
            if (list == null) {
                return 0;
            }
            return list.size();
        }

        public g j() {
            return this.f9465j;
        }

        public com.beizi.ad.model.a.f k() {
            return this.f9466k;
        }

        public int l() {
            return this.f9467l;
        }

        public int m() {
            return this.f9468m;
        }

        public com.beizi.ad.model.h n() {
            return this.f9469n;
        }

        public l o() {
            return this.f9470o;
        }

        public l p() {
            return this.f9471p;
        }

        public m q() {
            return this.f9472q;
        }

        public com.beizi.ad.model.j r() {
            return this.f9473r;
        }

        public q s() {
            return this.f9474s;
        }

        public com.beizi.ad.model.d t() {
            return this.f9475t;
        }

        public com.beizi.ad.model.i.a a() {
            return this.f9457b;
        }

        public void b(int i10) {
            this.f9460e = i10;
        }

        public void c(int i10) {
            this.f9461f = i10;
        }

        public void d(int i10) {
            this.f9467l = i10;
        }

        public void e(int i10) {
            this.f9468m = i10;
        }

        public void a(com.beizi.ad.model.i.a aVar) {
            this.f9457b = aVar;
        }

        public void b(boolean z10) {
            this.f9462g = z10;
        }

        public void c(boolean z10) {
            this.f9463h = z10;
        }

        public void a(int i10) {
            this.f9458c = i10;
        }

        public void b(l lVar) {
            this.f9471p = lVar;
        }

        public void a(boolean z10) {
            this.f9459d = z10;
        }

        public void a(List<d> list) {
            this.f9464i = list;
        }

        public void a(g gVar) {
            this.f9465j = gVar;
        }

        public void a(com.beizi.ad.model.a.f fVar) {
            this.f9466k = fVar;
        }

        public void a(com.beizi.ad.model.h hVar) {
            this.f9469n = hVar;
        }

        public void a(l lVar) {
            this.f9470o = lVar;
        }

        public void a(m mVar) {
            this.f9472q = mVar;
        }

        public void a(com.beizi.ad.model.j jVar) {
            this.f9473r = jVar;
        }

        public void a(q qVar) {
            this.f9474s = qVar;
        }

        public void a(com.beizi.ad.model.d dVar) {
            this.f9475t = dVar;
        }
    }

    private static com.beizi.ad.model.a.g a(JSONObject jSONObject, String str) {
        JSONObject jSONObject2;
        if (jSONObject == null || TextUtils.isEmpty(str)) {
            return null;
        }
        try {
            if (!jSONObject.has(str) || (jSONObject2 = jSONObject.getJSONObject(str)) == null) {
                return null;
            }
            com.beizi.ad.model.a.g gVar = new com.beizi.ad.model.a.g();
            if (jSONObject2.has("normal")) {
                gVar.a(jSONObject2.optString("normal"));
            }
            if (jSONObject2.has("select")) {
                gVar.b(jSONObject2.optString("select"));
            }
            if (jSONObject2.has("finals")) {
                gVar.c(jSONObject2.optString("finals"));
            }
            return gVar;
        } catch (Exception e10) {
            e10.printStackTrace();
            return null;
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* JADX WARN: Code duplicated, block: B:17:0x00b8  */
    public static com.beizi.ad.model.a.f k(JSONObject jSONObject) {
        JSONObject jSONObject2;
        JSONObject jSONObject3;
        JSONObject jSONObject4;
        JSONObject jSONObject5;
        if (jSONObject == null) {
            return null;
        }
        try {
            com.beizi.ad.model.a.f fVar = new com.beizi.ad.model.a.f();
            fVar.a(jSONObject.optInt("optimizeType"));
            fVar.b(jSONObject.optInt("optimizeTime"));
            fVar.c(jSONObject.optInt("showTime"));
            fVar.d(jSONObject.optInt("awardTime"));
            fVar.e(jSONObject.optInt(MediationConstant.KEY_REWARD_TYPE));
            fVar.f(jSONObject.optInt("minTime"));
            if (jSONObject.has("closeModule")) {
                try {
                    JSONObject jSONObject6 = jSONObject.getJSONObject("closeModule");
                    if (jSONObject6 != null) {
                        com.beizi.ad.model.a.b bVar = new com.beizi.ad.model.a.b();
                        bVar.a(jSONObject6.optInt("isHiddenClose"));
                        bVar.b(jSONObject6.optInt("showTime"));
                        com.beizi.ad.model.a.g gVarA = a(jSONObject6, "detail");
                        if (gVarA != null) {
                            bVar.a(gVarA);
                        }
                        com.beizi.ad.model.a.g gVarA2 = a(jSONObject6, "closeTitle");
                        if (gVarA2 != null) {
                            bVar.b(gVarA2);
                        }
                        bVar.c(jSONObject6.optInt("eventProbity"));
                        bVar.d(jSONObject6.optInt(NotificationCompat.CATEGORY_EVENT));
                        bVar.e(jSONObject6.optInt("forbidClose"));
                        bVar.f(jSONObject6.optInt("isJumpEndCard"));
                        fVar.a(bVar);
                    }
                } catch (JSONException unused) {
                    return null;
                }
            }
            if (jSONObject.has("cardCloseModule") && (jSONObject5 = jSONObject.getJSONObject("cardCloseModule")) != null) {
                com.beizi.ad.model.a.b bVar2 = new com.beizi.ad.model.a.b();
                bVar2.a(jSONObject5.optInt("isHiddenClose"));
                bVar2.b(jSONObject5.optInt("showTime"));
                com.beizi.ad.model.a.g gVarA3 = a(jSONObject5, "detail");
                if (gVarA3 != null) {
                    bVar2.a(gVarA3);
                }
                com.beizi.ad.model.a.g gVarA4 = a(jSONObject5, "closeTitle");
                if (gVarA4 != null) {
                    bVar2.b(gVarA4);
                }
                bVar2.c(jSONObject5.optInt("eventProbity"));
                bVar2.d(jSONObject5.optInt(NotificationCompat.CATEGORY_EVENT));
                fVar.b(bVar2);
            }
            if (jSONObject.has("privilegeModule") && (jSONObject4 = jSONObject.getJSONObject("privilegeModule")) != null) {
                com.beizi.ad.model.a.d dVar = new com.beizi.ad.model.a.d();
                dVar.a(jSONObject4.optInt("adType"));
                dVar.b(jSONObject4.optInt("optimizeType"));
                com.beizi.ad.model.a.g gVarA5 = a(jSONObject4, "title");
                if (gVarA5 != null) {
                    dVar.a(gVarA5);
                }
                com.beizi.ad.model.a.g gVarA6 = a(jSONObject4, "sub");
                if (gVarA6 != null) {
                    dVar.b(gVarA6);
                }
                com.beizi.ad.model.a.g gVarA7 = a(jSONObject4, "detail");
                if (gVarA7 != null) {
                    dVar.c(gVarA7);
                }
                com.beizi.ad.model.a.g gVarA8 = a(jSONObject4, "awardTitle");
                if (gVarA8 != null) {
                    dVar.e(gVarA8);
                }
                com.beizi.ad.model.a.g gVarA9 = a(jSONObject4, "clickTitle");
                if (gVarA9 != null) {
                    dVar.d(gVarA9);
                }
                com.beizi.ad.model.a.g gVarA10 = a(jSONObject4, "closeTitle");
                if (gVarA10 != null) {
                    dVar.f(gVarA10);
                }
                dVar.c(jSONObject4.optInt("awardTime"));
                dVar.d(jSONObject4.optInt("showTime"));
                dVar.e(jSONObject4.optInt("autoCloseTime"));
                dVar.f(jSONObject4.optInt("isHiddenClose"));
                dVar.g(jSONObject4.optInt("eventProbity"));
                dVar.h(jSONObject4.optInt(NotificationCompat.CATEGORY_EVENT));
                dVar.i(jSONObject4.optInt("awardClickCount"));
                fVar.a(dVar);
            }
            if (jSONObject.has("detainmentModule") && (jSONObject3 = jSONObject.getJSONObject("detainmentModule")) != null) {
                com.beizi.ad.model.a.c cVar = new com.beizi.ad.model.a.c();
                com.beizi.ad.model.a.g gVarA11 = a(jSONObject3, "title");
                if (gVarA11 != null) {
                    cVar.a(gVarA11);
                }
                com.beizi.ad.model.a.g gVarA12 = a(jSONObject3, "detail");
                if (gVarA12 != null) {
                    cVar.b(gVarA12);
                }
                com.beizi.ad.model.a.g gVarA13 = a(jSONObject3, "clickTitle");
                if (gVarA13 != null) {
                    cVar.c(gVarA13);
                }
                com.beizi.ad.model.a.g gVarA14 = a(jSONObject3, "closeTitle");
                if (gVarA14 != null) {
                    cVar.d(gVarA14);
                }
                cVar.a(jSONObject3.optInt("eventProbity"));
                cVar.b(jSONObject3.optInt(NotificationCompat.CATEGORY_EVENT));
                fVar.a(cVar);
            }
            if (jSONObject.has("cardModule") && (jSONObject2 = jSONObject.getJSONObject("cardModule")) != null) {
                com.beizi.ad.model.a.a aVar = new com.beizi.ad.model.a.a();
                aVar.a(jSONObject2.optInt("cardType"));
                fVar.a(aVar);
            }
            if (jSONObject.has("loopClick")) {
                fVar.g(jSONObject.optInt("loopClick"));
            }
            if (jSONObject.has("scrollInterval")) {
                fVar.h(jSONObject.optInt("scrollInterval"));
            }
            if (jSONObject.has("rewardedUrl")) {
                fVar.a(jSONObject.optString("rewardedUrl"));
            }
            return fVar;
        } catch (JSONException unused2) {
            return null;
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static com.beizi.ad.model.h l(JSONObject jSONObject) {
        if (jSONObject == null) {
            return null;
        }
        try {
            com.beizi.ad.model.h hVar = new com.beizi.ad.model.h();
            if (jSONObject.has("maxAcc")) {
                hVar.a(jSONObject.optDouble("maxAcc"));
            }
            if (jSONObject.has("angle")) {
                hVar.b(jSONObject.optDouble("angle"));
            }
            if (jSONObject.has("duration")) {
                hVar.c(jSONObject.optDouble("duration"));
            }
            if (jSONObject.has(HmInputMappingContent.FIELD_DIRECTION)) {
                hVar.a(jSONObject.optString(HmInputMappingContent.FIELD_DIRECTION));
            }
            return hVar;
        } catch (Exception e10) {
            e10.printStackTrace();
            return null;
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static l m(JSONObject jSONObject) {
        n nVarR;
        if (jSONObject == null) {
            return null;
        }
        try {
            l lVar = new l();
            lVar.a(jSONObject.optInt("showTime"));
            lVar.b(jSONObject.optInt("duration"));
            lVar.c(jSONObject.optInt("slide"));
            lVar.d(jSONObject.optInt("animation"));
            lVar.a(jSONObject.optString("image"));
            lVar.b(jSONObject.optString("title"));
            lVar.c(jSONObject.optString("desc"));
            lVar.d(jSONObject.optString(ClickCommon.CLICK_AREA_BTN));
            lVar.e(jSONObject.optInt("btnClick"));
            lVar.f(jSONObject.optInt("autoTime"));
            lVar.g(jSONObject.optInt("layer"));
            if (jSONObject.has("position") && (nVarR = r(jSONObject.optJSONObject("position"))) != null) {
                lVar.a(nVarR);
            }
            return lVar;
        } catch (Exception e10) {
            e10.printStackTrace();
            return null;
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static m n(JSONObject jSONObject) {
        if (jSONObject == null) {
            return null;
        }
        try {
            m mVar = new m();
            mVar.a(jSONObject.optInt("autoTime"));
            mVar.b(jSONObject.optInt("multiDirection"));
            mVar.c(jSONObject.optInt("isOpenSensor"));
            mVar.d(jSONObject.optInt("isShowShakeView"));
            return mVar;
        } catch (Exception e10) {
            e10.printStackTrace();
            return null;
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static com.beizi.ad.model.j o(JSONObject jSONObject) {
        if (jSONObject == null) {
            return null;
        }
        try {
            com.beizi.ad.model.j jVar = new com.beizi.ad.model.j();
            jVar.a(jSONObject.optInt("random"));
            jVar.a(jSONObject.optString("url"));
            jVar.b(jSONObject.optInt("showMask"));
            jVar.c(jSONObject.optInt("autoOpen"));
            jVar.d(jSONObject.optInt("autoOpenType"));
            jVar.e(jSONObject.optInt("repeatOpen"));
            jVar.f(jSONObject.optInt("repeatOpenCount"));
            jVar.g(jSONObject.optInt("againOpen"));
            jVar.h(jSONObject.optInt("againOpenTime"));
            return jVar;
        } catch (Exception e10) {
            e10.printStackTrace();
            return null;
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static q p(JSONObject jSONObject) {
        if (jSONObject == null) {
            return null;
        }
        try {
            q qVar = new q();
            qVar.a(jSONObject.optInt("interval"));
            qVar.b(jSONObject.optInt("closeType"));
            qVar.c(jSONObject.optInt("privilegeClick"));
            qVar.d(jSONObject.optInt("isScrollClick"));
            return qVar;
        } catch (Exception e10) {
            e10.printStackTrace();
            return null;
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static o q(JSONObject jSONObject) {
        if (jSONObject == null) {
            return null;
        }
        try {
            o oVar = new o();
            oVar.a(jSONObject.optInt("isShow"));
            oVar.a(jSONObject.optDouble("normalStart"));
            oVar.b(jSONObject.optDouble("normalEnd"));
            oVar.b(jSONObject.optInt("normalCount"));
            oVar.c(jSONObject.optInt("normalAngle"));
            oVar.d(jSONObject.optInt("isClickRemove"));
            oVar.e(jSONObject.optInt("isClickCool"));
            oVar.c(jSONObject.optDouble("coolStart"));
            oVar.d(jSONObject.optDouble("coolEnd"));
            oVar.f(jSONObject.optInt("coolCount"));
            oVar.g(jSONObject.optInt("coolAngle"));
            return oVar;
        } catch (Exception e10) {
            e10.printStackTrace();
            return null;
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static n r(JSONObject jSONObject) {
        if (jSONObject == null) {
            return null;
        }
        try {
            n nVar = new n();
            if (jSONObject.has("centerX")) {
                nVar.a(jSONObject.optString("centerX"));
            }
            if (jSONObject.has("centerY")) {
                nVar.b(jSONObject.optString("centerY"));
            }
            if (jSONObject.has("top")) {
                nVar.c(jSONObject.optString("top"));
            }
            if (jSONObject.has("width")) {
                nVar.d(jSONObject.optString("width"));
            }
            if (jSONObject.has("height")) {
                nVar.e(jSONObject.optString("height"));
            }
            return nVar;
        } catch (Exception e10) {
            e10.printStackTrace();
            return null;
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static com.beizi.ad.model.e s(JSONObject jSONObject) {
        n nVarR;
        if (jSONObject == null) {
            return null;
        }
        try {
            com.beizi.ad.model.e eVar = new com.beizi.ad.model.e();
            eVar.a(jSONObject.optString("bgColor"));
            eVar.b(jSONObject.optString("imageUrl"));
            if (jSONObject.has("position") && (nVarR = r(jSONObject.optJSONObject("position"))) != null) {
                eVar.a(nVarR);
            }
            return eVar;
        } catch (Exception e10) {
            e10.printStackTrace();
            return null;
        }
    }

    public static com.beizi.ad.model.d a(JSONObject jSONObject) {
        try {
            com.beizi.ad.model.d dVar = new com.beizi.ad.model.d();
            if (jSONObject.has("list")) {
                dVar.a(a(jSONObject.optJSONArray("list")));
            }
            if (jSONObject.has("version")) {
                dVar.a(jSONObject.optString("version"));
            }
            return dVar;
        } catch (Exception e10) {
            e10.printStackTrace();
            return null;
        }
    }

    private static ArrayList<String> a(JSONArray jSONArray) {
        try {
            ArrayList<String> arrayList = new ArrayList<>();
            if (jSONArray != null && jSONArray.length() > 0) {
                for (int i10 = 0; i10 < jSONArray.length(); i10++) {
                    arrayList.add(jSONArray.getString(i10));
                }
            }
            return arrayList;
        } catch (Exception e10) {
            e10.printStackTrace();
            return null;
        }
    }
}
