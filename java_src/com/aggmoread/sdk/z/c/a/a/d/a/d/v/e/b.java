package com.aggmoread.sdk.z.c.a.a.d.a.d.v.e;

import android.content.Context;
import android.view.View;
import android.view.ViewGroup;
import com.aggmoread.sdk.z.c.a.a.d.a.d.g;
import com.aggmoread.sdk.z.c.a.a.d.a.d.v.d;
import com.aggmoread.sdk.z.c.a.a.d.b.e;
import com.aggmoread.sdk.z.c.a.a.d.b.f;
import com.aggmoread.sdk.z.c.a.a.d.b.o.c;
import com.qq.e.ads.banner2.UnifiedBannerView;
import com.qq.e.comm.util.AdError;
import java.lang.ref.WeakReference;

/* JADX INFO: loaded from: classes7.dex */
public class b extends com.aggmoread.sdk.z.c.a.a.d.a.d.a {

    /* JADX INFO: renamed from: v, reason: collision with root package name */
    private UnifiedBannerView f4791v;

    class a implements com.aggmoread.sdk.z.c.a.a.d.a.d.v.e.a.InterfaceC0165a {
        a() {
        }

        @Override // com.aggmoread.sdk.z.c.a.a.d.a.d.v.e.a.InterfaceC0165a
        public void a() {
            b.this.C();
        }

        @Override // com.aggmoread.sdk.z.c.a.a.d.a.d.v.e.a.InterfaceC0165a
        public void b() {
            b.this.z();
        }

        @Override // com.aggmoread.sdk.z.c.a.a.d.a.d.v.e.a.InterfaceC0165a
        public void onADClicked() {
            b.this.y();
        }

        @Override // com.aggmoread.sdk.z.c.a.a.d.a.d.v.e.a.InterfaceC0165a
        public void onADCloseOverlay() {
            b.this.A();
        }

        @Override // com.aggmoread.sdk.z.c.a.a.d.a.d.v.e.a.InterfaceC0165a
        public void onADExposure() {
            b.this.B();
        }

        @Override // com.aggmoread.sdk.z.c.a.a.d.a.d.v.e.a.InterfaceC0165a
        public void onADLeftApplication() {
            b.this.E();
        }

        @Override // com.aggmoread.sdk.z.c.a.a.d.a.d.v.e.a.InterfaceC0165a
        public void onADOpenOverlay() {
            b.this.D();
        }

        @Override // com.aggmoread.sdk.z.c.a.a.d.a.d.v.e.a.InterfaceC0165a
        public void onNoAD(AdError adError) {
            b.this.a(adError);
        }
    }

    public b(e eVar, f fVar) {
        super(eVar, fVar);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void A() {
        s();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void B() {
        a(new View[0]);
        t();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void C() {
        if (o()) {
            int iA = com.aggmoread.sdk.z.c.a.a.d.a.d.v.b.a(this.f4791v);
            if (com.aggmoread.sdk.z.c.a.a.d.a.d.v.b.a(this.f4911i, iA)) {
                a(iA, 0);
                return;
            }
            b(iA);
        }
        com.aggmoread.sdk.z.c.a.a.d.a.d.v.b.a(this.f4909g, this.f4791v, this.f4911i);
        v();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void D() {
        w();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void E() {
        u();
    }

    private void F() {
        UnifiedBannerView unifiedBannerView;
        if (this.f4444q && (unifiedBannerView = this.f4791v) != null && unifiedBannerView.getParent() == null && this.f4446s.compareAndSet(false, true)) {
            com.aggmoread.sdk.z.c.a.a.d.a.d.v.a.a(this.f4791v, k());
            com.aggmoread.sdk.z.c.a.a.d.b.o.a aVar = this.f4448u.get();
            if (aVar != null) {
                aVar.addView(this.f4791v);
            }
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void y() {
        q();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void z() {
        r();
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
        F();
    }

    @Override // com.aggmoread.sdk.z.c.a.a.c.n.a
    public void b() {
        a(this.f4910h.f4954j);
    }

    @Override // com.aggmoread.sdk.z.c.a.a.d.b.a
    public void c(int i10) {
        d.a(this.f4791v, i10);
    }

    @Override // com.aggmoread.sdk.z.c.a.a.c.n.a
    public void destroy() {
        UnifiedBannerView unifiedBannerView = this.f4791v;
        if (unifiedBannerView != null) {
            unifiedBannerView.destroy();
            this.f4791v = null;
        }
    }

    @Override // com.aggmoread.sdk.z.c.a.a.d.b.a
    protected String j() {
        return com.aggmoread.sdk.z.c.a.a.d.a.d.v.b.c().a(this.f4910h);
    }

    @Override // com.aggmoread.sdk.z.c.a.a.d.b.a
    public void l() {
        Context context = this.f4910h.f4948d;
        com.aggmoread.sdk.z.c.a.a.e.f fVar = this.f4911i.f5003c;
        Object obj = f.c.f5023e0;
        com.aggmoread.sdk.z.c.a.a.d.a.d.v.b.a(context, fVar.a(obj, ""));
        Context contextA = g.a(this.f4910h, this.f4911i, this.f4914l);
        com.aggmoread.sdk.z.c.a.a.d.a.d.v.b.a(this.f4911i, this.f4914l);
        com.aggmoread.sdk.z.c.a.a.d.a.d.v.b.c().a(this.f4911i, this.f4910h);
        UnifiedBannerView unifiedBannerView = (UnifiedBannerView) d.a(contextA, this.f4911i.f5003c.c(obj), this.f4911i.f5003c.c(f.c.f5015a0), d.e.BANNER, this.f4913k, new com.aggmoread.sdk.z.c.a.a.d.a.d.v.e.a(new a()).a(), new Object[0]);
        this.f4791v = unifiedBannerView;
        this.f4444q = false;
        e eVar = this.f4910h;
        if (eVar.f4956l) {
            unifiedBannerView.setRefresh(0);
        } else {
            unifiedBannerView.setRefresh(eVar.f4959o);
        }
        a(this.f4910h, this.f4911i).a(0).b();
        this.f4791v.loadAD();
    }

    @Override // com.aggmoread.sdk.z.c.a.a.d.a.d.a, com.aggmoread.sdk.z.c.a.a.c.a
    public void a(com.aggmoread.sdk.z.c.a.a.d.a.c cVar) {
        this.f4912j = cVar;
    }

    @Override // com.aggmoread.sdk.z.c.a.a.d.b.a
    public void b(int i10, int i11, String str) {
        d.a(this.f4791v, i11, i10, str);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void a(AdError adError) {
        b(com.aggmoread.sdk.z.c.a.a.d.a.d.v.b.a(adError));
    }
}
