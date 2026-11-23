package com.aggmoread.sdk.z.c.a.a.d.a.d.q.e;

import android.text.TextUtils;
import android.view.View;
import android.view.ViewGroup;
import com.aggmoread.sdk.z.a.f.b;
import com.aggmoread.sdk.z.c.a.a.d.b.e;
import com.aggmoread.sdk.z.c.a.a.d.b.f;
import com.aggmoread.sdk.z.c.a.a.d.b.j;
import com.aggmoread.sdk.z.c.a.a.d.b.k;
import com.aggmoread.sdk.z.c.a.a.d.b.o.c;
import java.lang.ref.WeakReference;
import java.util.List;

/* JADX INFO: loaded from: classes7.dex */
public class a extends com.aggmoread.sdk.z.c.a.a.d.a.d.a implements com.aggmoread.sdk.z.a.f.a {

    /* JADX INFO: renamed from: v, reason: collision with root package name */
    private b f4551v;

    public a(e eVar, f fVar) {
        super(eVar, fVar);
    }

    private void y() {
        View viewA;
        if (this.f4444q && this.f4551v != null && this.f4446s.compareAndSet(false, true)) {
            com.aggmoread.sdk.z.c.a.a.d.b.o.a aVar = this.f4448u.get();
            if (aVar == null || (viewA = this.f4551v.a()) == null) {
                b(new j(1001002008, "广告展示失败!"));
                return;
            }
            if (viewA.getParent() != null) {
                ((ViewGroup) viewA.getParent()).removeView(viewA);
            }
            aVar.addView(viewA);
        }
    }

    @Override // com.aggmoread.sdk.z.c.a.a.c.n.a
    public void a(ViewGroup viewGroup) {
        com.aggmoread.sdk.z.c.a.a.d.b.o.a aVar = new com.aggmoread.sdk.z.c.a.a.d.b.o.a(this.f4910h.f4948d);
        this.f4448u = new WeakReference<>(aVar);
        aVar.addOnAttachStateChangeListener(new c());
        if (viewGroup != null) {
            ViewGroup viewGroup2 = (ViewGroup) aVar.getParent();
            if (viewGroup2 != null) {
                viewGroup2.removeView(aVar);
            }
            viewGroup.addView(aVar, new ViewGroup.LayoutParams(-1, -2));
        }
        y();
    }

    @Override // com.aggmoread.sdk.z.c.a.a.c.n.a
    public void b() {
        a(this.f4910h.f4954j);
    }

    @Override // com.aggmoread.sdk.z.a.f.a
    public void c(b bVar) {
    }

    @Override // com.aggmoread.sdk.z.a.f.a
    public void d(b bVar) {
        r();
    }

    @Override // com.aggmoread.sdk.z.c.a.a.c.n.a
    public void destroy() {
        b bVar = this.f4551v;
        if (bVar != null) {
            bVar.g();
            this.f4551v = null;
        }
    }

    @Override // com.aggmoread.sdk.z.c.a.a.d.b.a
    protected String j() {
        b bVar = this.f4551v;
        return bVar != null ? bVar.c() : super.j();
    }

    @Override // com.aggmoread.sdk.z.c.a.a.d.b.a
    public void l() {
        try {
            com.aggmoread.sdk.z.c.a.a.d.a.d.q.c.c().a(k.f5147q);
            String strC = this.f4911i.f5003c.c(f.c.f5015a0);
            if (!TextUtils.isEmpty(strC) && strC.contains("ban_")) {
                strC = strC.replace("ban_", "").trim();
            }
            com.aggmoread.sdk.z.c.a.a.e.e.b("AGBANNERHTAG", "slot id " + strC);
            com.aggmoread.sdk.z.c.a.a.d.a.d.q.c.c().a(this.f4910h, this.f4911i).a(strC).e().a((com.aggmoread.sdk.z.a.f.a) this);
            a(this.f4910h, this.f4911i).a(0).b();
        } catch (Exception e10) {
            e10.printStackTrace();
        }
    }

    @Override // com.aggmoread.sdk.z.a.f.a
    public void onAdLoaded(List<b> list) {
        if (list == null || list.size() <= 0) {
            b(new j(-1000, "广告无填充!"));
            return;
        }
        b bVar = list.get(0);
        this.f4551v = bVar;
        int iB = bVar.b();
        if (com.aggmoread.sdk.z.c.a.a.d.a.d.q.b.a(this.f4911i, iB)) {
            a(iB, 0);
            return;
        }
        b(iB);
        com.aggmoread.sdk.z.c.a.a.d.a.d.q.b.b(this.f4909g, iB, this.f4911i);
        v();
    }

    @Override // com.aggmoread.sdk.z.a.f.a
    public void a(b bVar) {
        x();
        a(new View[0]);
        t();
    }

    @Override // com.aggmoread.sdk.z.a.f.a
    public void b(b bVar) {
        q();
    }

    @Override // com.aggmoread.sdk.z.a.f.a
    public void a(b bVar, com.aggmoread.sdk.z.a.g.f fVar) {
        b(new j(fVar.a(), fVar.b()));
    }

    @Override // com.aggmoread.sdk.z.a.i.h
    public void a(com.aggmoread.sdk.z.a.g.f fVar) {
        b(new j(fVar.a(), fVar.b()));
    }
}
