package com.aggmoread.sdk.z.c.a.a.d.a.d.q.h;

import android.app.Activity;
import com.aggmoread.sdk.z.a.h.c;
import com.aggmoread.sdk.z.a.s.d;
import com.aggmoread.sdk.z.c.a.a.c.u.b;
import com.aggmoread.sdk.z.c.a.a.d.a.d.j;
import com.aggmoread.sdk.z.c.a.a.d.b.e;
import com.aggmoread.sdk.z.c.a.a.d.b.f;
import com.aggmoread.sdk.z.c.a.a.d.b.n;
import java.util.Map;
import java.util.concurrent.atomic.AtomicBoolean;

/* JADX INFO: loaded from: classes7.dex */
public class a extends j implements d {

    /* JADX INFO: renamed from: v, reason: collision with root package name */
    private c f4569v;

    /* JADX INFO: renamed from: w, reason: collision with root package name */
    private com.aggmoread.sdk.z.a.a f4570w;

    /* JADX INFO: renamed from: x, reason: collision with root package name */
    private AtomicBoolean f4571x;

    public a(e eVar, f fVar) {
        super(eVar, fVar);
        this.f4571x = new AtomicBoolean();
    }

    @Override // com.aggmoread.sdk.z.a.s.d
    public void a() {
        com.aggmoread.sdk.z.c.a.a.e.e.b("AMRTAGAPI", "onADClose");
        r();
    }

    @Override // com.aggmoread.sdk.z.c.a.a.d.a.d.j
    public void b(Activity activity) {
        com.aggmoread.sdk.z.c.a.a.e.e.b("AMRTAGAPI", "showInner ac");
        if (this.f4521t && this.f4570w != null && this.f4571x.compareAndSet(false, true)) {
            this.f4570w.a(activity, null);
        }
    }

    @Override // com.aggmoread.sdk.z.a.s.d
    public void d() {
        com.aggmoread.sdk.z.c.a.a.e.e.b("AMRTAGAPI", "onADExpose");
        s();
    }

    @Override // com.aggmoread.sdk.z.c.a.a.d.b.a
    protected String j() {
        com.aggmoread.sdk.z.a.a aVar = this.f4570w;
        if (aVar == null) {
            return null;
        }
        return aVar.c();
    }

    @Override // com.aggmoread.sdk.z.c.a.a.d.b.a
    public void l() {
        com.aggmoread.sdk.z.a.t.e eVarA;
        boolean zD;
        com.aggmoread.sdk.z.c.a.a.e.e.b("AMRTAGAPI", "handle");
        b bVar = this.f4910h.f4963s;
        com.aggmoread.sdk.z.c.a.a.d.a.d.q.c.c().a(this.f4910h.f4948d);
        if (bVar != null) {
            zD = bVar.d();
            eVarA = new com.aggmoread.sdk.z.a.t.e.b().a(zD).a();
        } else {
            eVarA = null;
            zD = true;
        }
        com.aggmoread.sdk.z.c.a.a.e.e.b("AMRTAGAPI", "mute = " + zD);
        this.f4521t = false;
        try {
            this.f4569v = com.aggmoread.sdk.z.c.a.a.d.a.d.q.c.c().a(this.f4910h, this.f4911i).a(true).a(this.f4911i.f5003c.c(f.c.f5015a0)).a(eVarA).e();
            a(this.f4910h, this.f4911i).a(0).b();
            this.f4569v.a((d) this);
        } catch (Exception e10) {
            e10.printStackTrace();
            b(new com.aggmoread.sdk.z.c.a.a.d.b.j(1001002008, "广告请求失败!"));
        }
    }

    @Override // com.aggmoread.sdk.z.a.s.d
    public void onAdClicked() {
        com.aggmoread.sdk.z.c.a.a.e.e.b("AMRTAGAPI", "onADClick");
        q();
    }

    @Override // com.aggmoread.sdk.z.a.s.d
    public void onAdShow() {
        com.aggmoread.sdk.z.c.a.a.e.e.b("AMRTAGAPI", "onADShow");
        e eVar = this.f4910h;
        n.a(eVar.f4946b, this.f4520s, eVar.f4949e, Integer.valueOf(this.f4911i.f()));
        n.b(this.f4910h.f4946b, this.f4911i.e(), this.f4911i.b());
        if (this.f4910h.f() != null) {
            e eVar2 = this.f4910h;
            n.a(eVar2.f4946b, eVar2.f());
        }
        byte[] bArrB = this.f4910h.f4962r.b();
        if (bArrB != null) {
            n.a(this.f4910h.f4946b, bArrB);
        }
        n.a((Object) this.f4520s, true, true);
        n.a(this.f4520s, this.f4911i);
        t();
    }

    @Override // com.aggmoread.sdk.z.a.s.d
    public void onReward(Map<String, Object> map) {
        com.aggmoread.sdk.z.c.a.a.e.e.b("AMRTAGAPI", "reward onReward map");
        n.a(this.f4520s, 1);
        if (map != null) {
            this.f4519r.putAll(map);
        }
        b(this.f4519r);
    }

    @Override // com.aggmoread.sdk.z.a.s.d
    public void onVideoCached() {
        com.aggmoread.sdk.z.c.a.a.e.e.b("AMRTAGAPI", "onVideoCached");
        u();
    }

    @Override // com.aggmoread.sdk.z.a.s.d
    public void onVideoCompleted() {
        com.aggmoread.sdk.z.c.a.a.e.e.b("AMRTAGAPI", "onVideoComplete");
        n.a(this.f4520s, 2);
        a((Map<String, Object>) null);
    }

    @Override // com.aggmoread.sdk.z.c.a.a.d.a.d.j
    public void v() {
        com.aggmoread.sdk.z.c.a.a.e.e.b("AMRTAGAPI", "showInner ");
        if (this.f4521t && this.f4570w != null && this.f4571x.compareAndSet(false, true)) {
            this.f4570w.b();
        }
    }

    @Override // com.aggmoread.sdk.z.a.s.d
    public void a(com.aggmoread.sdk.z.a.a aVar) {
        com.aggmoread.sdk.z.c.a.a.e.e.b("AMRTAGAPI", "onADLoad");
        this.f4570w = aVar;
        int iD = aVar.d();
        if (com.aggmoread.sdk.z.c.a.a.d.a.d.q.b.a(this.f4911i, iD)) {
            a(iD, 0);
            return;
        }
        b(iD);
        com.aggmoread.sdk.z.c.a.a.d.a.d.q.b.b(this.f4909g, iD, this.f4911i);
        d(1);
    }

    @Override // com.aggmoread.sdk.z.a.i.h
    public void a(com.aggmoread.sdk.z.a.g.f fVar) {
        com.aggmoread.sdk.z.c.a.a.e.e.b("AMRTAGAPI", "onError " + fVar.a() + ", " + fVar.b());
        b(new com.aggmoread.sdk.z.c.a.a.d.b.j(fVar.a(), fVar.b()));
    }

    @Override // com.aggmoread.sdk.z.c.a.a.d.a.d.j, com.aggmoread.sdk.z.c.a.a.c.a
    public void a(com.aggmoread.sdk.z.c.a.a.d.a.c cVar) {
        this.f4912j = cVar;
    }
}
