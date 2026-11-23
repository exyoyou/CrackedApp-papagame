package com.aggmoread.sdk.z.c.a.a.d.a.d;

import android.content.Context;
import android.view.View;
import android.view.ViewGroup;
import android.view.ViewParent;
import android.widget.FrameLayout;
import android.widget.TextView;
import com.aggmoread.sdk.z.c.a.a.e.q;
import java.lang.ref.WeakReference;
import java.util.List;
import java.util.Map;
import java.util.concurrent.atomic.AtomicBoolean;

/* JADX INFO: loaded from: classes7.dex */
public abstract class k extends com.aggmoread.sdk.z.c.a.a.d.b.a implements com.aggmoread.sdk.z.c.a.a.c.t.a {
    private static String B = "AMSTAG";
    protected com.aggmoread.sdk.z.c.a.a.c.t.c A;

    /* JADX INFO: renamed from: q, reason: collision with root package name */
    private ViewGroup f4528q;

    /* JADX INFO: renamed from: r, reason: collision with root package name */
    private View f4529r;

    /* JADX INFO: renamed from: s, reason: collision with root package name */
    public Object[] f4530s;

    /* JADX INFO: renamed from: t, reason: collision with root package name */
    public WeakReference<com.aggmoread.sdk.z.c.a.a.d.b.o.a> f4531t;

    /* JADX INFO: renamed from: u, reason: collision with root package name */
    public boolean f4532u;

    /* JADX INFO: renamed from: v, reason: collision with root package name */
    protected boolean f4533v;

    /* JADX INFO: renamed from: w, reason: collision with root package name */
    protected boolean f4534w;

    /* JADX INFO: renamed from: x, reason: collision with root package name */
    private boolean f4535x;

    /* JADX INFO: renamed from: y, reason: collision with root package name */
    private AtomicBoolean f4536y;

    /* JADX INFO: renamed from: z, reason: collision with root package name */
    private AtomicBoolean f4537z;

    class a implements Runnable {

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        final /* synthetic */ List f4538b;

        a(List list) {
            this.f4538b = list;
        }

        @Override // java.lang.Runnable
        public void run() {
            ((com.aggmoread.sdk.z.c.a.a.c.t.b) k.this.f4910h.f4951g).onAdLoaded(this.f4538b);
        }
    }

    public k(com.aggmoread.sdk.z.c.a.a.d.b.e eVar, com.aggmoread.sdk.z.c.a.a.d.b.f fVar) {
        super(eVar, fVar);
        this.f4531t = null;
        this.f4532u = false;
        this.f4533v = true;
        this.f4534w = false;
        this.f4535x = false;
        this.f4536y = new AtomicBoolean();
        this.f4537z = new AtomicBoolean();
        this.f4530s = com.aggmoread.sdk.z.c.a.a.b.b();
    }

    private void e(List<com.aggmoread.sdk.z.c.a.a.c.t.a> list) {
        a(this.f4910h, this.f4911i).a(3).c(com.aggmoread.sdk.z.c.a.a.e.p.b(this.f4910h, this.f4911i, this.f4909g)).a(com.aggmoread.sdk.z.c.a.a.d.b.m.d.f5179q, com.aggmoread.sdk.z.c.a.a.e.p.a(this.f4910h, this.f4911i, this.f4909g)).b();
        if (this.f4537z.compareAndSet(false, true) && (this.f4910h.f4951g instanceof com.aggmoread.sdk.z.c.a.a.c.t.b)) {
            q.a(new a(list));
        }
    }

    protected ViewGroup a(com.aggmoread.sdk.z.c.a.a.d.b.o.a aVar, ViewGroup viewGroup, boolean z10) {
        com.aggmoread.sdk.z.c.a.a.e.e.b(B, "wac enter ");
        aVar.f5195e = true;
        com.aggmoread.sdk.z.c.a.a.d.b.n.a((View) aVar, this.f4530s);
        aVar.addOnAttachStateChangeListener(new com.aggmoread.sdk.z.c.a.a.d.b.o.c());
        aVar.setBackgroundColor(0);
        viewGroup.addView(aVar, -1, -1);
        com.aggmoread.sdk.z.c.a.a.d.b.o.d dVar = new com.aggmoread.sdk.z.c.a.a.d.b.o.d(viewGroup.getContext());
        dVar.setBackgroundColor(0);
        FrameLayout frameLayout = new FrameLayout(viewGroup.getContext());
        frameLayout.setBackgroundColor(0);
        dVar.addView(frameLayout, -1, -1);
        aVar.addView(dVar, -1, -1);
        if (z10) {
            dVar.a(this.f4528q);
            this.f4532u = true;
        }
        com.aggmoread.sdk.z.c.a.a.e.e.b(B, "wac exist ");
        return frameLayout;
    }

    protected abstract void a(View view);

    @Override // com.aggmoread.sdk.z.c.a.a.c.t.a
    public final void b() {
        ViewGroup viewGroup = this.f4910h.f4954j;
        if (viewGroup != null) {
            a(viewGroup);
        }
    }

    protected abstract void b(ViewGroup viewGroup);

    @Override // com.aggmoread.sdk.z.c.a.a.d.b.a
    protected void c(int i10) {
    }

    @Override // com.aggmoread.sdk.z.c.a.a.c.t.a
    public void destroy() {
    }

    protected void f(List<com.aggmoread.sdk.z.c.a.a.c.t.a> list) {
        com.aggmoread.sdk.z.c.a.a.e.e.b(B, "onAdLoaded");
        this.f4914l.a();
        this.f4535x = true;
        com.aggmoread.sdk.z.c.a.a.e.e.b(B, "import extras false");
        e(list);
    }

    @Override // com.aggmoread.sdk.z.c.a.a.c.a
    public String getID() {
        return this.f4910h.f4947c;
    }

    @Override // com.aggmoread.sdk.z.c.a.a.c.a
    public Map<String, Object> h() {
        return com.aggmoread.sdk.z.c.a.a.e.p.a(this.f4909g);
    }

    @Override // com.aggmoread.sdk.z.c.a.a.d.b.a
    public final void l() {
        com.aggmoread.sdk.z.c.a.a.e.e.b(B, "handle");
        com.aggmoread.sdk.z.c.a.a.d.b.e eVar = this.f4910h;
        a(eVar, eVar.f4948d);
        a((View) this.f4528q);
    }

    protected void q() {
        com.aggmoread.sdk.z.c.a.a.c.t.c cVar;
        com.aggmoread.sdk.z.c.a.a.e.e.b(B, "onAdClicked");
        this.f4534w = false;
        com.aggmoread.sdk.z.c.a.a.d.b.m mVarA = a(this.f4910h, this.f4911i);
        com.aggmoread.sdk.z.c.a.a.d.b.f fVar = this.f4911i;
        WeakReference<com.aggmoread.sdk.z.c.a.a.d.b.o.a> weakReference = this.f4531t;
        boolean zA = mVarA.a(fVar, weakReference == null ? null : weakReference.get(), 0L, this.f4530s);
        mVarA.b();
        if (!zA || (cVar = this.A) == null) {
            return;
        }
        cVar.onAdClicked();
    }

    protected void r() {
        com.aggmoread.sdk.z.c.a.a.e.e.b(B, "onAdClosed");
        if (this.f4534w) {
            t();
        }
        a(this.f4910h, this.f4911i).a(4).b();
        com.aggmoread.sdk.z.c.a.a.c.t.c cVar = this.A;
        if (cVar != null) {
            cVar.a();
        }
    }

    protected void s() {
        com.aggmoread.sdk.z.c.a.a.e.e.b(B, "onAdExposure");
        a((com.aggmoread.sdk.z.c.a.a.c.f) this.A);
    }

    protected void t() {
        com.aggmoread.sdk.z.c.a.a.c.t.c cVar = this.A;
        if (cVar != null) {
            cVar.e();
        }
    }

    @Override // com.aggmoread.sdk.z.c.a.a.c.a
    public void a(int i10) {
        if (com.aggmoread.sdk.z.c.a.a.e.p.k(this.f4911i)) {
            c(i10);
        }
    }

    @Override // com.aggmoread.sdk.z.c.a.a.d.b.a
    protected void b(int i10, int i11, String str) {
    }

    @Override // com.aggmoread.sdk.z.c.a.a.c.a
    public void a(int i10, int i11, String str) {
        if (com.aggmoread.sdk.z.c.a.a.e.p.k(this.f4911i)) {
            b(i10, i11, str);
        }
    }

    @Override // com.aggmoread.sdk.z.c.a.a.d.b.a
    protected void b(com.aggmoread.sdk.z.c.a.a.d.b.j jVar) {
        com.aggmoread.sdk.z.c.a.a.c.g gVar;
        com.aggmoread.sdk.z.c.a.a.e.e.a(B, "onAdError %s", jVar);
        this.f4914l.a();
        a(this.f4910h, this.f4911i).a(8).a(jVar).b();
        if (this.f4535x) {
            gVar = this.A;
            if (gVar == null) {
                return;
            }
        } else if (this.f4911i.l()) {
            return;
        } else {
            gVar = this.f4910h.f4951g;
        }
        gVar.a(jVar);
    }

    protected void a(long j10) {
        com.aggmoread.sdk.z.c.a.a.e.e.a(B, "onAdTick %s", Long.valueOf(j10));
        View view = this.f4529r;
        if (view instanceof TextView) {
            ((TextView) view).setText(String.format(" 跳过 %d", Integer.valueOf((int) (j10 / 1000))));
        }
        com.aggmoread.sdk.z.c.a.a.c.t.c cVar = this.A;
        if (cVar != null) {
            cVar.onAdTick(j10);
        }
        if (j10 <= 600) {
            this.f4534w = false;
        }
    }

    @Override // com.aggmoread.sdk.z.c.a.a.c.t.a
    public void a(ViewGroup viewGroup) {
        com.aggmoread.sdk.z.c.a.a.e.e.b(B, "show");
        try {
            if (this.f4536y.compareAndSet(false, true)) {
                com.aggmoread.sdk.z.c.a.a.d.b.o.a aVar = new com.aggmoread.sdk.z.c.a.a.d.b.o.a(this.f4910h.f4948d);
                ViewGroup viewGroupA = a(aVar, viewGroup, this.f4533v);
                a(aVar);
                b(viewGroupA);
                this.f4531t = new WeakReference<>(aVar);
            }
        } catch (Exception e10) {
            com.aggmoread.sdk.z.c.a.a.e.e.b(B, "err " + e10);
            b(new com.aggmoread.sdk.z.c.a.a.d.b.j(1001002008, "广告展示失败! ErrMsg :" + e10.getMessage(), e10));
        }
    }

    @Override // com.aggmoread.sdk.z.c.a.a.c.t.a
    public void a(com.aggmoread.sdk.z.c.a.a.c.t.c cVar) {
        this.A = cVar;
    }

    @Override // com.aggmoread.sdk.z.c.a.a.c.a
    public void a(com.aggmoread.sdk.z.c.a.a.d.a.c cVar) {
        this.f4912j = cVar;
    }

    private void a(com.aggmoread.sdk.z.c.a.a.d.b.e eVar, Context context) {
        View view;
        com.aggmoread.sdk.z.c.a.a.e.e.b(B, "cs enter");
        if (this.f4528q == null) {
            this.f4528q = new FrameLayout(context);
        }
        if (eVar != null && (view = eVar.f4955k) != null) {
            com.aggmoread.sdk.z.c.a.a.e.e.b(B, "cs 1");
            ViewParent parent = view.getParent();
            if (parent != null) {
                ((ViewGroup) parent).removeView(view);
            }
            this.f4529r = view;
            this.f4528q.addView(view);
        }
        if (this.f4529r == null) {
            com.aggmoread.sdk.z.c.a.a.e.e.b(B, "cs 2");
            com.aggmoread.sdk.z.c.a.a.d.b.o.e eVar2 = new com.aggmoread.sdk.z.c.a.a.d.b.o.e(context);
            this.f4529r = eVar2;
            this.f4528q.addView(eVar2);
        }
    }

    protected void a(com.aggmoread.sdk.z.c.a.a.d.b.o.a aVar) {
        com.aggmoread.sdk.z.c.a.a.e.e.b(B, "rs enter");
        ViewGroup viewGroup = this.f4528q;
        a(aVar, (viewGroup == null || !this.f4532u) ? new View[0] : new View[]{viewGroup});
    }

    protected void a(com.aggmoread.sdk.z.c.a.a.d.b.o.a aVar, View[] viewArr) {
        com.aggmoread.sdk.z.c.a.a.e.e.b(B, "rs enter");
        com.aggmoread.sdk.z.c.a.a.e.e.b(B, "sk  " + this.f4528q + ", h " + this.f4532u);
        com.aggmoread.sdk.z.c.a.a.d.b.n.a(this.f4910h.f4946b, this.f4530s, com.aggmoread.sdk.z.c.a.a.c.j.SPLASH, aVar, viewArr);
        com.aggmoread.sdk.z.c.a.a.d.b.n.a((Object) this.f4530s, true, true);
        com.aggmoread.sdk.z.c.a.a.d.b.n.b(this.f4910h.f4946b, this.f4911i.e(), this.f4911i.b());
        int[] iArrF = this.f4910h.f();
        if (iArrF != null) {
            com.aggmoread.sdk.z.c.a.a.d.b.n.a(this.f4910h.f4946b, iArrF);
        } else {
            com.aggmoread.sdk.z.c.a.a.e.e.b("AMSTAG", "save null");
        }
        byte[] bArrB = this.f4910h.f4962r.b();
        com.aggmoread.sdk.z.c.a.a.e.e.b(B, "rs edata = " + bArrB);
        if (bArrB != null) {
            com.aggmoread.sdk.z.c.a.a.d.b.n.a(this.f4910h.f4946b, bArrB);
        }
        com.aggmoread.sdk.z.c.a.a.d.b.n.a(this.f4530s, this.f4911i);
        com.aggmoread.sdk.z.c.a.a.e.e.b(B, "rs exist");
    }
}
