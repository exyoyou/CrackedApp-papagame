package com.aggmoread.sdk.z.c.a.a.d.a.d.w.e;

import android.app.Activity;
import android.view.View;
import android.widget.FrameLayout;
import com.aggmoread.sdk.z.c.a.a.c.o.d;
import com.aggmoread.sdk.z.c.a.a.d.a.c;
import com.aggmoread.sdk.z.c.a.a.d.b.e;
import com.aggmoread.sdk.z.c.a.a.d.b.f;
import com.aggmoread.sdk.z.c.a.a.d.b.j;
import com.aggmoread.sdk.z.c.a.a.d.b.m;
import com.aggmoread.sdk.z.c.a.a.d.b.n;
import com.kwad.sdk.api.KsDrawAd;
import java.lang.ref.WeakReference;
import java.lang.reflect.InvocationHandler;
import java.lang.reflect.Method;
import java.lang.reflect.Proxy;
import java.util.Map;
import java.util.concurrent.atomic.AtomicBoolean;

/* JADX INFO: loaded from: classes7.dex */
public class b extends com.aggmoread.sdk.z.c.a.a.d.a.d.b {
    private View A;
    private AtomicBoolean B;

    /* JADX INFO: renamed from: x, reason: collision with root package name */
    private String f4853x;

    /* JADX INFO: renamed from: y, reason: collision with root package name */
    private KsDrawAd f4854y;

    /* JADX INFO: renamed from: z, reason: collision with root package name */
    private com.aggmoread.sdk.z.c.a.a.d.b.o.a f4855z;

    /* JADX INFO: renamed from: com.aggmoread.sdk.z.c.a.a.d.a.d.w.e.b$b, reason: collision with other inner class name */
    private class C0175b implements InvocationHandler {
        private C0175b() {
        }

        @Override // java.lang.reflect.InvocationHandler
        public Object invoke(Object obj, Method method, Object[] objArr) {
            String name = method.getName();
            if ("onAdClicked".equals(name)) {
                b.this.l();
                return null;
            }
            if ("onAdShow".equals(name)) {
                b.this.onAdShow();
                return null;
            }
            if ("onVideoPlayStart".equals(name)) {
                b.this.q();
                return null;
            }
            if ("onVideoPlayPause".equals(name)) {
                b.this.o();
                return null;
            }
            if ("onVideoPlayResume".equals(name)) {
                b.this.p();
                return null;
            }
            if ("onVideoPlayEnd".equals(name)) {
                b.this.m();
                return null;
            }
            if (!"onVideoPlayError".equals(name)) {
                return null;
            }
            b.this.n();
            return null;
        }
    }

    public b(KsDrawAd ksDrawAd, e eVar, f fVar, Map<String, Object> map) {
        super(eVar, fVar, map);
        this.f4853x = "AMDRAWTAGKS";
        this.B = new AtomicBoolean();
        this.f4854y = ksDrawAd;
        this.f4854y.setAdInteractionListener((KsDrawAd.AdInteractionListener) Proxy.newProxyInstance(b.class.getClassLoader(), new Class[]{KsDrawAd.AdInteractionListener.class}, new C0175b()));
        com.aggmoread.sdk.z.c.a.a.d.a.d.w.b.b(this.f4451t, com.aggmoread.sdk.z.c.a.a.d.a.d.w.b.a((Object) ksDrawAd), fVar);
    }

    private void k() {
    }

    @Override // com.aggmoread.sdk.z.c.a.a.d.a.a
    public com.aggmoread.sdk.z.c.a.a.d.b.o.a a() {
        com.aggmoread.sdk.z.c.a.a.e.e.b(this.f4853x, "ac " + this.f4855z);
        com.aggmoread.sdk.z.c.a.a.d.b.o.a aVar = this.f4855z;
        return aVar != null ? aVar : super.a();
    }

    @Override // com.aggmoread.sdk.z.c.a.a.d.a.d.b
    public void b(int i10) {
        super.b(i10);
        com.aggmoread.sdk.z.c.a.a.d.a.d.w.b.b(this.f4854y, i10);
    }

    @Override // com.aggmoread.sdk.z.c.a.a.c.o.a
    public void destroy() {
        if (this.f4854y != null) {
            this.f4854y = null;
            this.A = null;
            this.f4855z = null;
        }
    }

    @Override // com.aggmoread.sdk.z.c.a.a.d.a.d.b
    protected String getTitle() {
        return com.aggmoread.sdk.z.c.a.a.d.a.d.w.b.a().a(this.f4854y);
    }

    @Override // com.aggmoread.sdk.z.c.a.a.c.o.a
    public View getView() {
        com.aggmoread.sdk.z.c.a.a.e.e.b(this.f4853x, "getView");
        if (this.A == null) {
            this.A = this.f4854y.getDrawView(this.f4425i.f4948d.getApplicationContext());
        }
        if (this.A == null) {
            return null;
        }
        if (this.f4855z == null) {
            this.f4855z = new com.aggmoread.sdk.z.c.a.a.d.b.o.a(this.f4425i.f4948d.getApplicationContext());
        }
        com.aggmoread.sdk.z.c.a.a.e.e.b(this.f4853x, "getView " + this.f4855z);
        return this.f4855z;
    }

    public boolean j() {
        return this.B.compareAndSet(false, true);
    }

    public void l() {
        com.aggmoread.sdk.z.c.a.a.c.o.b bVar;
        m mVarA = a(this.f4425i, this.f4426j);
        boolean zA = mVarA.a(m.d.f5176n, this.f4423g).a(this.f4426j, a(), this.f4428l, this.f4431o);
        mVarA.b();
        n.a((Object) this.f4431o, false, true);
        if (!zA || (bVar = this.f4453v) == null) {
            return;
        }
        bVar.onAdClicked();
    }

    public void m() {
        d dVar = this.f4452u;
        if (dVar != null) {
            dVar.onVideoComplete();
        }
    }

    public void n() {
        d dVar = this.f4452u;
        if (dVar != null) {
            dVar.a(new j(-1000, "ks:视频素材播放失败！"));
        }
    }

    public void o() {
        d dVar = this.f4452u;
        if (dVar != null) {
            dVar.onVideoPause();
        }
    }

    public void onAdShow() {
        this.f4428l = System.currentTimeMillis();
        n.a((Object) this.f4431o, true, true);
        if (j()) {
            d();
        }
    }

    public void p() {
        d dVar = this.f4452u;
        if (dVar != null) {
            dVar.onVideoStart();
        }
    }

    public void q() {
        d dVar = this.f4452u;
        if (dVar != null) {
            dVar.onVideoStart();
        }
    }

    @Override // com.aggmoread.sdk.z.c.a.a.c.o.a
    public void render() {
        com.aggmoread.sdk.z.c.a.a.e.e.b(this.f4853x, "render");
        View view = this.A;
        if (view == null || this.f4854y == null) {
            com.aggmoread.sdk.z.c.a.a.e.e.b(this.f4853x, "render failed");
            return;
        }
        if (view.getParent() != null || this.f4855z == null) {
            return;
        }
        com.aggmoread.sdk.z.c.a.a.e.e.b(this.f4853x, "render enter ");
        k();
        View[] viewArr = new View[0];
        if (this.f4855z != null) {
            FrameLayout.LayoutParams layoutParams = new FrameLayout.LayoutParams(-1, -2);
            layoutParams.gravity = 17;
            this.f4855z.addView(this.A, layoutParams);
            com.aggmoread.sdk.z.c.a.a.c.o.b bVar = this.f4453v;
            if (bVar != null) {
                bVar.onRenderSuccess();
            }
        }
        n.a((View) this.f4855z, this.f4431o);
        n.a(this.f4425i.f4946b, this.f4431o, com.aggmoread.sdk.z.c.a.a.c.j.INFORMATION_FLOW, this.f4855z, viewArr, new WeakReference(this.f4855z), null, Integer.valueOf(this.f4426j.f()));
        n.b(this.f4425i.f4946b, this.f4426j.e(), this.f4426j.b());
        byte[] bArrB = this.f4425i.f4962r.b();
        if (bArrB != null) {
            n.a(this.f4425i.f4946b, bArrB);
        }
        n.a(this.f4431o, this.f4426j);
    }

    @Override // com.aggmoread.sdk.z.c.a.a.c.o.a
    public void renderActivity(Activity activity) {
        render();
    }

    @Override // com.aggmoread.sdk.z.c.a.a.c.a
    public void a(c cVar) {
    }

    @Override // com.aggmoread.sdk.z.c.a.a.d.a.d.b
    public void b(int i10, int i11, String str) {
        com.aggmoread.sdk.z.c.a.a.d.a.d.w.b.a(this.f4854y, i11);
    }
}
