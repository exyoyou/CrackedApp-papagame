package com.aggmoread.sdk.z.c.a.a.d.b;

import android.text.TextUtils;
import com.aggmoread.sdk.client.AMConst;
import com.aggmoread.sdk.z.c.a.a.e.p;
import com.aggmoread.sdk.z.c.a.a.e.q;
import com.qq.e.comm.constants.Constants;
import java.util.HashMap;
import java.util.Map;

/* JADX INFO: loaded from: classes7.dex */
public class a {

    /* JADX INFO: renamed from: p, reason: collision with root package name */
    private static String f4908p = "AMHTAG";

    /* JADX INFO: renamed from: g, reason: collision with root package name */
    public HashMap<String, Object> f4909g = new HashMap<>();

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    public e f4910h;

    /* JADX INFO: renamed from: i, reason: collision with root package name */
    public f f4911i;

    /* JADX INFO: renamed from: j, reason: collision with root package name */
    protected com.aggmoread.sdk.z.c.a.a.d.a.c f4912j;

    /* JADX INFO: renamed from: k, reason: collision with root package name */
    protected String f4913k;

    /* JADX INFO: renamed from: l, reason: collision with root package name */
    protected com.aggmoread.sdk.z.c.a.a.e.v.g f4914l;

    /* JADX INFO: renamed from: m, reason: collision with root package name */
    protected int f4915m;

    /* JADX INFO: renamed from: n, reason: collision with root package name */
    protected String f4916n;

    /* JADX INFO: renamed from: o, reason: collision with root package name */
    protected int f4917o;

    /* JADX INFO: renamed from: com.aggmoread.sdk.z.c.a.a.d.b.a$a, reason: collision with other inner class name */
    class C0182a implements c<String> {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        final /* synthetic */ m f4918a;

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        final /* synthetic */ com.aggmoread.sdk.z.c.a.a.c.f f4919b;

        C0182a(m mVar, com.aggmoread.sdk.z.c.a.a.c.f fVar) {
            this.f4918a = mVar;
            this.f4919b = fVar;
        }

        @Override // com.aggmoread.sdk.z.c.a.a.d.b.a.c
        public void a(String str) {
            com.aggmoread.sdk.z.c.a.a.e.e.b("XXXXX", "title " + str);
            if (!TextUtils.isEmpty(str)) {
                if (p.m(a.this.f4911i)) {
                    this.f4918a.a(m.d.D, str);
                }
                p.a(a.this.f4909g, str);
            }
            this.f4918a.b();
            a.this.b(this.f4919b);
        }
    }

    class b implements Runnable {

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        final /* synthetic */ c f4921b;

        /* JADX INFO: renamed from: com.aggmoread.sdk.z.c.a.a.d.b.a$b$a, reason: collision with other inner class name */
        class RunnableC0183a implements Runnable {

            /* JADX INFO: renamed from: b, reason: collision with root package name */
            final /* synthetic */ String f4923b;

            RunnableC0183a(String str) {
                this.f4923b = str;
            }

            @Override // java.lang.Runnable
            public void run() {
                c cVar = b.this.f4921b;
                if (cVar != null) {
                    cVar.a(this.f4923b);
                }
            }
        }

        b(c cVar) {
            this.f4921b = cVar;
        }

        @Override // java.lang.Runnable
        public void run() {
            try {
                try {
                    Thread.sleep(500L);
                    q.a(new RunnableC0183a(a.this.j()));
                } catch (Exception e10) {
                    com.aggmoread.sdk.z.c.a.a.e.e.b("XXXXX", "title info err " + e10.getMessage());
                    q.a(new RunnableC0183a(null));
                }
            } catch (Throwable th) {
                q.a(new RunnableC0183a(null));
                throw th;
            }
        }
    }

    public interface c<T> {
        void a(T t10);
    }

    public a(e eVar, f fVar) {
        this.f4914l = com.aggmoread.sdk.z.c.a.a.e.v.g.f5298b;
        this.f4910h = eVar;
        this.f4911i = fVar;
        this.f4913k = eVar.f4967w;
        this.f4914l = com.aggmoread.sdk.z.c.a.a.e.v.g.f5297a.a(fVar.f());
        this.f4915m = fVar.g();
        if (fVar.f5003c != null) {
            this.f4917o = fVar.f();
            this.f4916n = fVar.f5003c.c(f.c.f5015a0);
        }
        n();
    }

    protected m a(e eVar, f fVar) {
        m mVar = new m(eVar, fVar);
        mVar.b(this.f4915m);
        mVar.a(this.f4917o, this.f4916n);
        return mVar;
    }

    protected void b(int i10) {
        com.aggmoread.sdk.z.c.a.a.e.e.a("bidding win " + i10);
        if (!p.l(this.f4911i) && i10 > 0) {
            c(i10);
        }
    }

    protected void c(int i10) {
    }

    protected void i() {
        try {
            Map<Object, Object> mapA = n.a(this.f4910h);
            if (mapA != null) {
                Object obj = mapA.get(Constants.KEYS.EXPOSED_CLICK_URL_KEY);
                Object obj2 = mapA.get("image");
                Object obj3 = mapA.get("mediaId");
                Object obj4 = mapA.get("examineId");
                com.aggmoread.sdk.z.c.a.a.e.e.b(f4908p, "clickUrl = " + obj + ",\t image = " + obj2 + ",\t mediaId = " + obj3);
                this.f4909g.put("ext.MATERIAL_ID", obj3);
                this.f4909g.put("ext.EXAMINE_ID", obj4);
                this.f4909g.put(AMConst.ExtrasKey.EXTRA_IMG_URL, obj2);
                this.f4909g.put(AMConst.ExtrasKey.EXTRA_CLICK_URL, obj);
            }
        } catch (Exception e10) {
            com.aggmoread.sdk.z.c.a.a.e.e.b(f4908p, "err " + e10.getMessage());
        }
    }

    protected String j() {
        return null;
    }

    protected com.aggmoread.sdk.z.c.a.a.d.a.c k() {
        com.aggmoread.sdk.z.c.a.a.d.a.c cVar = this.f4912j;
        return cVar != null ? cVar : this.f4910h.f4964t;
    }

    protected void l() {
        a(new j(1001003005, "不支持的广告类型,请检查广告ID和接口是否一致: adType=" + this.f4910h.f4949e.a() + " adSource=" + this.f4911i.f()));
    }

    protected boolean m() {
        return false;
    }

    protected void n() {
        this.f4911i.f5003c.c(f.c.f5015a0);
        this.f4911i.f();
        int iB = this.f4911i.f5003c.b(f.c.f5019c0);
        this.f4909g.put(AMConst.ExtrasKey.AD_PLACEMENT_ID, this.f4916n);
        this.f4909g.put("EXTRA_KEY_network_name_text", p.e(this.f4911i));
        this.f4909g.put(AMConst.ExtrasKey.AD_PRIORITY, Integer.valueOf(iB));
        this.f4909g.put(AMConst.ExtrasKey.AD_ID, this.f4910h.f4947c);
        this.f4909g.put("ext.AD_BU", Integer.valueOf(this.f4915m));
        this.f4909g.put("ext.AD_AID", Integer.valueOf(this.f4917o));
    }

    protected boolean o() {
        f fVar = this.f4911i;
        if (fVar == null || this.f4910h == null) {
            return true;
        }
        boolean z10 = (!fVar.d() || TextUtils.isEmpty(this.f4910h.f4967w) || TextUtils.isEmpty(this.f4910h.f4968x)) ? false : true;
        com.aggmoread.sdk.z.c.a.a.e.e.a("s2s " + z10);
        return !z10;
    }

    public void p() {
        if (p.c(this.f4911i)) {
            f fVar = this.f4911i;
            if (fVar != null) {
                fVar.a(false);
            }
            l();
            return;
        }
        b(new j(1001003005, "当前版本暂不支持. s =" + this.f4911i.f() + ", version: " + p.j(this.f4911i)));
    }

    protected void a(int i10, int i11) {
        com.aggmoread.sdk.z.c.a.a.e.e.a("bidding floor " + i10 + ", notice price " + i11);
        b(1, i11, null);
        j jVar = new j(1001006004, "广告无填充!");
        a(this.f4910h, this.f4911i).a(8).a(jVar).c(p.b(this.f4910h, this.f4911i, i10)).a(m.d.f5179q, p.a(this.f4910h, this.f4911i, i10)).b();
        if (this.f4911i.l()) {
            return;
        }
        this.f4910h.f4951g.a(jVar);
    }

    protected void b(int i10, int i11, String str) {
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void b(com.aggmoread.sdk.z.c.a.a.c.f fVar) {
        if (!p.b(this.f4911i) || fVar == null) {
            return;
        }
        fVar.onAdExposed();
    }

    protected void a(com.aggmoread.sdk.z.c.a.a.c.f fVar) {
        a((Map<Object, Object>) null, fVar);
    }

    private void a(c<String> cVar) {
        q.b(new b(cVar));
    }

    protected void b(j jVar) {
    }

    public void a(j jVar) {
        this.f4910h.a(jVar, this.f4911i, true);
        this.f4914l.a();
    }

    protected void a(Map<Object, Object> map, com.aggmoread.sdk.z.c.a.a.c.f fVar) {
        String strA = p.a(this.f4910h, this.f4911i, this.f4909g);
        m mVarA = a(this.f4910h, this.f4911i).a(6);
        mVarA.c(p.b(this.f4910h, this.f4911i, this.f4909g));
        mVarA.a(m.d.f5179q, strA);
        mVarA.a(map);
        if (p.f()) {
            a(new C0182a(mVarA, fVar));
        } else {
            mVarA.b();
            b(fVar);
        }
    }
}
