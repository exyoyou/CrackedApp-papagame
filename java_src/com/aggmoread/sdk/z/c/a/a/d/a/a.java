package com.aggmoread.sdk.z.c.a.a.d.a;

import com.aggmoread.sdk.client.AMConst;
import com.aggmoread.sdk.z.c.a.a.c.g;
import com.aggmoread.sdk.z.c.a.a.d.b.e;
import com.aggmoread.sdk.z.c.a.a.d.b.f;
import com.aggmoread.sdk.z.c.a.a.d.b.j;
import com.aggmoread.sdk.z.c.a.a.d.b.m;
import java.lang.ref.WeakReference;
import java.util.Map;
import java.util.UUID;

/* JADX INFO: loaded from: classes7.dex */
public class a {

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    public g f4424h;

    /* JADX INFO: renamed from: i, reason: collision with root package name */
    public e f4425i;

    /* JADX INFO: renamed from: j, reason: collision with root package name */
    public f f4426j;

    /* JADX INFO: renamed from: r, reason: collision with root package name */
    protected String f4434r;

    /* JADX INFO: renamed from: k, reason: collision with root package name */
    public int f4427k = 0;

    /* JADX INFO: renamed from: l, reason: collision with root package name */
    public long f4428l = 0;

    /* JADX INFO: renamed from: m, reason: collision with root package name */
    public boolean f4429m = false;

    /* JADX INFO: renamed from: n, reason: collision with root package name */
    public boolean f4430n = true;

    /* JADX INFO: renamed from: p, reason: collision with root package name */
    public WeakReference<com.aggmoread.sdk.z.c.a.a.d.b.o.a> f4432p = null;

    /* JADX INFO: renamed from: q, reason: collision with root package name */
    protected int f4433q = 0;

    /* JADX INFO: renamed from: s, reason: collision with root package name */
    protected int f4435s = -1;

    /* JADX INFO: renamed from: g, reason: collision with root package name */
    public String f4423g = UUID.randomUUID().toString();

    /* JADX INFO: renamed from: o, reason: collision with root package name */
    public Object[] f4431o = com.aggmoread.sdk.z.c.a.a.b.b();

    public a(e eVar, f fVar) {
        this.f4425i = eVar;
        this.f4426j = fVar;
    }

    protected m a(e eVar, f fVar) {
        m mVar = new m(eVar, fVar);
        mVar.b(this.f4433q);
        mVar.a(this.f4435s, this.f4434r);
        return mVar;
    }

    public String toString() {
        Object[] objArr = new Object[6];
        objArr[0] = this.f4423g;
        e eVar = this.f4425i;
        objArr[1] = eVar == null ? "unknown" : eVar.f4953i;
        objArr[2] = Integer.valueOf(this.f4427k);
        objArr[3] = Long.valueOf(this.f4428l);
        objArr[4] = Boolean.valueOf(this.f4429m);
        objArr[5] = Boolean.valueOf(this.f4430n);
        return String.format("{id=%s, placementId=%s, clicks=%s, extime=%s, exposured=%s, showInvoke=%s}", objArr);
    }

    public com.aggmoread.sdk.z.c.a.a.d.b.o.a a() {
        return null;
    }

    public void a(j jVar) {
        a(this.f4425i, this.f4426j).a(8).a(jVar).a(m.d.f5176n, this.f4423g).b();
        this.f4424h.a(jVar);
    }

    protected void a(Map<String, Object> map) {
        if (map != null) {
            Object obj = map.get("ext.AD_BU");
            if (obj instanceof Integer) {
                this.f4433q = ((Integer) obj).intValue();
            }
            Object obj2 = map.get("ext.AD_AID");
            if (obj2 instanceof Integer) {
                this.f4435s = ((Integer) obj2).intValue();
            }
            Object obj3 = map.get(AMConst.ExtrasKey.AD_PLACEMENT_ID);
            if (obj3 instanceof String) {
                this.f4434r = obj3.toString();
            }
        }
        com.aggmoread.sdk.z.c.a.a.e.e.a("b =  " + this.f4433q + ", a = " + this.f4435s + ", s = " + this.f4434r);
    }
}
