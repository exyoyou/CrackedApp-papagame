package com.aggmoread.sdk.z.c.a.a.d.b;

import android.content.Context;
import android.view.View;
import android.view.ViewGroup;
import androidx.annotation.NonNull;
import com.aggmoread.sdk.z.c.a.a.e.r;
import com.haima.hmcp.Constants;
import com.windmill.sdk.WMConstants;
import java.io.UnsupportedEncodingException;
import java.lang.ref.WeakReference;
import java.util.Collections;
import java.util.HashMap;
import java.util.Map;
import java.util.UUID;

/* JADX INFO: loaded from: classes7.dex */
public class e implements com.aggmoread.sdk.z.c.a.a.c.h, Cloneable {
    private static Map<String, WeakReference<Object>> I = Collections.synchronizedMap(new HashMap());
    public int A;
    public r C;
    public r D;
    public r E;
    public r F;
    public r G;
    public r H;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public Object f4946b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public String f4947c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    public Context f4948d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public com.aggmoread.sdk.z.c.a.a.c.j f4949e;

    /* JADX INFO: renamed from: g, reason: collision with root package name */
    public com.aggmoread.sdk.z.c.a.a.c.g f4951g;

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    public com.aggmoread.sdk.z.c.a.a.c.g f4952h;

    /* JADX INFO: renamed from: i, reason: collision with root package name */
    public String f4953i;

    /* JADX INFO: renamed from: j, reason: collision with root package name */
    public ViewGroup f4954j;

    /* JADX INFO: renamed from: k, reason: collision with root package name */
    public View f4955k;

    /* JADX INFO: renamed from: l, reason: collision with root package name */
    public boolean f4956l;

    /* JADX INFO: renamed from: o, reason: collision with root package name */
    public int f4959o;

    /* JADX INFO: renamed from: r, reason: collision with root package name */
    public com.aggmoread.sdk.z.c.a.a.e.b f4962r;

    /* JADX INFO: renamed from: s, reason: collision with root package name */
    public com.aggmoread.sdk.z.c.a.a.c.u.b f4963s;

    /* JADX INFO: renamed from: t, reason: collision with root package name */
    public com.aggmoread.sdk.z.c.a.a.d.a.c f4964t;

    /* JADX INFO: renamed from: u, reason: collision with root package name */
    public com.aggmoread.sdk.z.c.a.a.a f4965u;

    /* JADX INFO: renamed from: z, reason: collision with root package name */
    public boolean f4970z;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    public String f4950f = "2";

    /* JADX INFO: renamed from: m, reason: collision with root package name */
    public int f4957m = 1;

    /* JADX INFO: renamed from: n, reason: collision with root package name */
    public int f4958n = 5000;

    /* JADX INFO: renamed from: p, reason: collision with root package name */
    public com.aggmoread.sdk.z.c.a.a.c.s.c f4960p = com.aggmoread.sdk.z.c.a.a.c.s.c.f4397f;

    /* JADX INFO: renamed from: q, reason: collision with root package name */
    public com.aggmoread.sdk.z.c.a.a.c.i f4961q = com.aggmoread.sdk.z.c.a.a.c.i.f4371c;

    /* JADX INFO: renamed from: v, reason: collision with root package name */
    public int f4966v = -1;

    /* JADX INFO: renamed from: w, reason: collision with root package name */
    public String f4967w = null;

    /* JADX INFO: renamed from: x, reason: collision with root package name */
    public String f4968x = null;

    /* JADX INFO: renamed from: y, reason: collision with root package name */
    public String f4969y = WMConstants.TIMER_STAGE_NONE;
    public int B = -1;

    class a implements com.aggmoread.sdk.z.c.a.a.e.b.c {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        final /* synthetic */ f f4971a;

        a(f fVar) {
            this.f4971a = fVar;
        }

        @Override // com.aggmoread.sdk.z.c.a.a.e.b.c
        public void a(com.aggmoread.sdk.z.c.a.a.e.b bVar) {
            byte[] bArrB = bVar.b();
            int iB = bArrB != null ? com.aggmoread.sdk.z.c.a.a.b.b(bArrB) : -1;
            int iB2 = this.f4971a.f5002b.b(f.c.f5026g);
            com.aggmoread.sdk.z.c.a.a.e.e.b("AMGTAG", String.format("version = %d, server version = %d", Integer.valueOf(iB), Integer.valueOf(iB2)));
            if (iB2 < 2 || iB == iB2) {
                return;
            }
            e.this.a(iB2);
        }
    }

    class b implements com.aggmoread.sdk.z.c.a.a.e.d.e {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        final /* synthetic */ int f4973a;

        b(int i10) {
            this.f4973a = i10;
        }

        @Override // com.aggmoread.sdk.z.c.a.a.e.d.e
        public void a(int i10, byte[] bArr, j jVar) {
            Map<Object, Object> mapG;
            Object obj;
            if (jVar != null || i10 != 200 || bArr == null || bArr.length <= 0 || (mapG = com.aggmoread.sdk.z.c.a.a.b.g(bArr)) == null) {
                return;
            }
            int iB = new com.aggmoread.sdk.z.c.a.a.e.f(mapG).b(c.f4980f);
            if (iB == -1000) {
                com.aggmoread.sdk.z.c.a.a.e.b bVar = e.this.f4962r;
                if (bVar != null) {
                    bVar.a((byte[]) null);
                    return;
                }
                return;
            }
            if (iB != 1 || (obj = mapG.get(c.f4981g)) == null) {
                return;
            }
            e.this.b(new com.aggmoread.sdk.z.c.a.a.e.f((Map) obj).c(c.f4982h), this.f4973a);
        }
    }

    public static final class c {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        public static final Object f4975a = new Object();

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        public static final Object f4976b = new Object();

        /* JADX INFO: renamed from: c, reason: collision with root package name */
        public static final Object f4977c = new Object();

        /* JADX INFO: renamed from: d, reason: collision with root package name */
        public static final Object f4978d = new Object();

        /* JADX INFO: renamed from: e, reason: collision with root package name */
        public static final Object f4979e = new Object();

        /* JADX INFO: renamed from: f, reason: collision with root package name */
        public static final Object f4980f = new Object();

        /* JADX INFO: renamed from: g, reason: collision with root package name */
        public static final Object f4981g = new Object();

        /* JADX INFO: renamed from: h, reason: collision with root package name */
        public static final Object f4982h = new Object();
    }

    public static final class d {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        public static final Object f4983a = new Object();

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        public static final Object f4984b = new Object();

        /* JADX INFO: renamed from: c, reason: collision with root package name */
        public static final Object f4985c = new Object();

        /* JADX INFO: renamed from: d, reason: collision with root package name */
        public static final Object f4986d = new Object();

        /* JADX INFO: renamed from: e, reason: collision with root package name */
        public static final Object f4987e = new Object();

        /* JADX INFO: renamed from: f, reason: collision with root package name */
        public static final Object f4988f = new Object();

        /* JADX INFO: renamed from: g, reason: collision with root package name */
        public static final Object f4989g = new Object();

        /* JADX INFO: renamed from: h, reason: collision with root package name */
        public static final Object f4990h = new Object();

        /* JADX INFO: renamed from: i, reason: collision with root package name */
        public static final Object f4991i = new Object();

        /* JADX INFO: renamed from: j, reason: collision with root package name */
        public static final Object f4992j = new Object();

        /* JADX INFO: renamed from: k, reason: collision with root package name */
        public static final Object f4993k = new Object();

        /* JADX INFO: renamed from: l, reason: collision with root package name */
        public static final Object f4994l = new Object();

        /* JADX INFO: renamed from: m, reason: collision with root package name */
        public static final Object f4995m = new Object();
    }

    /* JADX INFO: renamed from: com.aggmoread.sdk.z.c.a.a.d.b.e$e, reason: collision with other inner class name */
    public static final class C0185e {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        public static final Object f4996a = new Object();

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        public static final Object f4997b = new Object();

        /* JADX INFO: renamed from: c, reason: collision with root package name */
        public static final Object f4998c = new Object();

        /* JADX INFO: renamed from: d, reason: collision with root package name */
        public static final Object f4999d = new Object();

        /* JADX INFO: renamed from: e, reason: collision with root package name */
        public static final Object f5000e = new Object();
    }

    private static Object a(String str) {
        WeakReference<Object> weakReference = I.get(str);
        Object objB = weakReference != null ? weakReference.get() : null;
        if (objB == null) {
            synchronized (I) {
                WeakReference<Object> weakReference2 = I.get(str);
                if (weakReference2 != null) {
                    objB = weakReference2.get();
                }
                if (objB == null) {
                    objB = com.aggmoread.sdk.z.c.a.a.b.b();
                    I.put(str, new WeakReference<>(objB));
                }
            }
        }
        return objB;
    }

    public static void i() {
        com.aggmoread.sdk.z.c.a.a.b.a(new Object[]{d.f4983a, d.f4984b, d.f4985c, d.f4986d, d.f4987e, d.f4988f, d.f4989g, d.f4990h, d.f4991i, d.f4992j, d.f4993k, d.f4995m});
        com.aggmoread.sdk.z.c.a.a.b.c(new Object[]{c.f4975a, c.f4976b, c.f4977c, c.f4978d, c.f4979e});
        com.aggmoread.sdk.z.c.a.a.b.d(new Object[]{new Object[]{c.f4980f, c.f4981g}, new Object[]{c.f4982h}});
        com.aggmoread.sdk.z.c.a.a.b.i(new Object[]{C0185e.f4996a, C0185e.f4997b, C0185e.f4999d, C0185e.f4998c});
        com.aggmoread.sdk.z.c.a.a.b.j(new Object[]{C0185e.f5000e});
    }

    public Object b() {
        try {
            return super.clone();
        } catch (Exception e10) {
            com.aggmoread.sdk.z.c.a.a.e.e.a("cloneTmp err " + e10);
            return null;
        }
    }

    public Map<Object, Object> c() {
        com.aggmoread.sdk.z.c.a.a.e.f fVar = new com.aggmoread.sdk.z.c.a.a.e.f(com.aggmoread.sdk.z.c.a.a.e.d.b(null));
        fVar.b(d.f4983a, this.f4947c);
        fVar.b(d.f4984b, this.f4953i);
        fVar.b(d.f4986d, this.f4949e.a());
        if (this.f4949e == com.aggmoread.sdk.z.c.a.a.c.j.SPLASH) {
            fVar.b(d.f4994l, com.aggmoread.sdk.z.c.a.a.e.c.Q() ? 1 : 0);
        }
        return fVar.f5230a;
    }

    @NonNull
    protected Object clone() {
        e eVar = (e) super.clone();
        eVar.f4947c = UUID.randomUUID().toString();
        return eVar;
    }

    public long d() {
        return com.aggmoread.sdk.z.c.a.a.e.h.a().a("LTCKt_" + this.f4953i, 0L);
    }

    public long e() {
        return com.aggmoread.sdk.z.c.a.a.e.h.a().a("LTCl_" + this.f4953i, 0L);
    }

    public int[] f() {
        String str;
        com.aggmoread.sdk.z.c.a.a.e.e.b("AMGTAG", "get savedpoint");
        String strA = com.aggmoread.sdk.z.c.a.a.e.h.a().a("sspp" + this.f4953i, (String) null);
        if (strA != null) {
            com.aggmoread.sdk.z.c.a.a.e.e.b("AMGTAG", "sspp is" + strA);
            String[] strArrSplit = strA.split(Constants.TIPS_SPECIAL_TAG);
            if (strArrSplit.length > 1) {
                try {
                    com.aggmoread.sdk.z.c.a.a.e.e.b("AMGTAG", "x = " + strArrSplit[0] + ",y=" + strArrSplit[1]);
                    return new int[]{Integer.parseInt(strArrSplit[0]), Integer.parseInt(strArrSplit[1])};
                } catch (Exception e10) {
                    e10.printStackTrace();
                }
            } else {
                str = "ss.length < 2";
            }
        } else {
            str = "saved point empty";
        }
        com.aggmoread.sdk.z.c.a.a.e.e.b("AMGTAG", str);
        return null;
    }

    public void g() {
        com.aggmoread.sdk.z.c.a.a.e.h.a().b("LTCKt_" + this.f4953i, System.currentTimeMillis());
        n.a(this.f4946b, System.currentTimeMillis());
    }

    public void h() {
        com.aggmoread.sdk.z.c.a.a.e.h.a().b("LTCl_" + this.f4953i, System.currentTimeMillis());
        n.b(this.f4946b, System.currentTimeMillis());
    }

    public void a() {
        this.f4946b = a(this.f4953i);
        this.C = r.a(this.f4953i, r.c.f5279d);
        this.D = r.a(this.f4953i, r.c.f5280e);
        this.E = r.a(this.f4953i, r.c.f5281f);
        this.F = r.a(this.f4953i, r.c.f5282g);
    }

    public void b(String str, int i10) {
        if (str == null) {
            return;
        }
        try {
            String[] strArrSplit = str.split("\\#");
            if (strArrSplit.length < 2) {
                return;
            }
            String[] strArrSplit2 = strArrSplit[0].split("\\,");
            if (strArrSplit2.length < 2) {
                return;
            }
            int i11 = Integer.parseInt(strArrSplit2[0]);
            int i12 = Integer.parseInt(strArrSplit2[1]);
            int i13 = i11 * i12;
            int i14 = i13 + 1;
            if (strArrSplit.length < i14) {
                return;
            }
            int[] iArr = new int[i13 + 3];
            iArr[0] = i10;
            iArr[1] = i11;
            iArr[2] = i12;
            for (int i15 = 1; i15 < i14; i15++) {
                String[] strArrSplit3 = strArrSplit[i15].split("\\,");
                if (strArrSplit3.length < 3) {
                    return;
                }
                iArr[i15 + 2] = Integer.parseInt(strArrSplit3[2]);
            }
            byte[] bArrA = com.aggmoread.sdk.z.c.a.a.b.a(iArr);
            if (bArrA != null) {
                this.f4962r.a(bArrA);
            }
        } catch (Exception e10) {
            com.aggmoread.sdk.z.c.a.a.e.e.a("err " + e10);
        }
    }

    public void a(int i10) {
        Map<Object, Object> mapA = com.aggmoread.sdk.z.c.a.a.e.d.a((Map<Object, Object>) null);
        new com.aggmoread.sdk.z.c.a.a.e.f(mapA).b(c.f4978d, this.f4953i);
        try {
            byte[] bytes = com.aggmoread.sdk.z.c.a.a.b.b(mapA).getBytes("UTF-8");
            HashMap map = new HashMap();
            map.put("Content-type", "application/json");
            map.put("tt", "1");
            com.aggmoread.sdk.z.c.a.a.e.d.a(k.d(), bytes, map, new b(i10));
        } catch (UnsupportedEncodingException unused) {
        }
    }

    public void a(f fVar) {
        this.G = r.a(this.f4953i, r.c.f5283h);
        this.H = r.a(this.f4953i, r.c.f5284i);
        com.aggmoread.sdk.z.c.a.a.e.b bVarA = com.aggmoread.sdk.z.c.a.a.e.b.a(String.format("%s_%s", this.f4953i, com.aggmoread.sdk.z.c.a.a.e.c.y()));
        this.f4962r = bVarA;
        if (bVarA == null) {
            return;
        }
        bVarA.a(new a(fVar));
    }

    public void a(j jVar, f fVar) {
        a(jVar, null, fVar, true);
    }

    public void a(j jVar, f fVar, boolean z10) {
        a(jVar, null, fVar, z10);
    }

    public void a(j jVar, Map<Object, Object> map, f fVar, boolean z10) {
        try {
            new m(this, fVar).a(8).a(jVar).a(map).b();
        } catch (Throwable unused) {
        }
        if (z10) {
            this.f4951g.a(jVar);
        }
    }

    public void a(int[] iArr) {
        String str = "sspp" + this.f4953i;
        if (iArr == null) {
            com.aggmoread.sdk.z.c.a.a.e.e.b("AMGTAG", "clear saved point");
            com.aggmoread.sdk.z.c.a.a.e.h.a().a(str);
            return;
        }
        com.aggmoread.sdk.z.c.a.a.e.e.b("AMGTAG", "set saved pint k=" + str + "  v= " + iArr[0] + "," + iArr[1]);
        com.aggmoread.sdk.z.c.a.a.e.h.a().b(str, String.format("%d|%d", Integer.valueOf(iArr[0]), Integer.valueOf(iArr[1])));
    }

    public boolean a(String str, int i10) {
        com.aggmoread.sdk.z.c.a.a.a aVar = this.f4965u;
        if (aVar == null || !aVar.a(str)) {
            return false;
        }
        int iA = this.f4965u.a(str, -1);
        com.aggmoread.sdk.z.c.a.a.e.e.b("xxx", "e " + iA + ",v " + i10);
        return iA == i10;
    }
}
