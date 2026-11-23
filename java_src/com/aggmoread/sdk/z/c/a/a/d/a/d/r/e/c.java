package com.aggmoread.sdk.z.c.a.a.d.a.d.r.e;

import android.app.Activity;
import android.content.Context;
import android.view.View;
import android.view.ViewGroup;
import android.view.ViewParent;
import android.view.ViewTreeObserver;
import android.widget.FrameLayout;
import com.aggmoread.sdk.z.c.a.a.c.j;
import com.aggmoread.sdk.z.c.a.a.d.b.f;
import com.aggmoread.sdk.z.c.a.a.d.b.n;
import com.baidu.mobads.sdk.api.ExpressResponse;
import com.baidu.mobads.sdk.api.IAdInterListener;
import java.lang.ref.WeakReference;
import java.util.Map;
import java.util.concurrent.atomic.AtomicBoolean;

/* JADX INFO: loaded from: classes7.dex */
public class c extends com.aggmoread.sdk.z.c.a.a.d.a.d.c {
    private AtomicBoolean A;
    private AtomicBoolean B;

    /* JADX INFO: renamed from: w, reason: collision with root package name */
    private String f4598w;

    /* JADX INFO: renamed from: x, reason: collision with root package name */
    private ExpressResponse f4599x;

    /* JADX INFO: renamed from: y, reason: collision with root package name */
    private com.aggmoread.sdk.z.c.a.a.d.b.o.a f4600y;

    /* JADX INFO: renamed from: z, reason: collision with root package name */
    private View f4601z;

    class a implements ExpressResponse.ExpressInteractionListener {
        a() {
        }

        @Override // com.baidu.mobads.sdk.api.ExpressResponse.ExpressInteractionListener
        public void onAdClick() {
            com.aggmoread.sdk.z.c.a.a.e.e.b(c.this.f4598w, IAdInterListener.AdCommandType.AD_CLICK);
            c.this.s();
        }

        @Override // com.baidu.mobads.sdk.api.ExpressResponse.ExpressInteractionListener
        public void onAdExposed() {
            com.aggmoread.sdk.z.c.a.a.e.e.b(c.this.f4598w, "onAdExposed");
            c.this.onAdShow();
        }

        @Override // com.baidu.mobads.sdk.api.ExpressResponse.ExpressInteractionListener
        public void onAdRenderFail(View view, String str, int i10) {
            com.aggmoread.sdk.z.c.a.a.e.e.b(c.this.f4598w, "onAdRenderFail " + str + ", code " + i10);
            c.this.t();
        }

        @Override // com.baidu.mobads.sdk.api.ExpressResponse.ExpressInteractionListener
        public void onAdRenderSuccess(View view, float f10, float f11) {
            com.aggmoread.sdk.z.c.a.a.e.e.b(c.this.f4598w, "onAdRenderSuccess");
            c.this.u();
        }

        @Override // com.baidu.mobads.sdk.api.ExpressResponse.ExpressInteractionListener
        public void onAdUnionClick() {
            com.aggmoread.sdk.z.c.a.a.e.e.b(c.this.f4598w, "onAdUnionClick");
        }
    }

    class b implements com.aggmoread.sdk.z.c.a.a.d.a.d.r.c.g {
        b() {
        }

        @Override // com.aggmoread.sdk.z.c.a.a.d.a.d.r.c.g
        public void a() {
            com.aggmoread.sdk.z.c.a.a.e.e.b(c.this.f4598w, "onDislikeWindowShow");
            c.this.x();
        }

        @Override // com.aggmoread.sdk.z.c.a.a.d.a.d.r.c.g
        public void b() {
            com.aggmoread.sdk.z.c.a.a.e.e.b(c.this.f4598w, "onDislikeWindowClose");
            c.this.w();
        }

        @Override // com.aggmoread.sdk.z.c.a.a.d.a.d.r.c.g
        public void c() {
            com.aggmoread.sdk.z.c.a.a.e.e.b(c.this.f4598w, "onDislikeItemClick");
            c.this.v();
        }
    }

    /* JADX INFO: renamed from: com.aggmoread.sdk.z.c.a.a.d.a.d.r.e.c$c, reason: collision with other inner class name */
    class ViewTreeObserverOnGlobalLayoutListenerC0132c implements ViewTreeObserver.OnGlobalLayoutListener {
        ViewTreeObserverOnGlobalLayoutListenerC0132c() {
        }

        @Override // android.view.ViewTreeObserver.OnGlobalLayoutListener
        public void onGlobalLayout() {
            ViewParent parent = c.this.f4600y.getParent();
            if (parent instanceof ViewGroup) {
                Context context = ((ViewGroup) parent).getContext();
                com.aggmoread.sdk.z.c.a.a.e.e.b(c.this.f4598w, "getView onGlobalLayout " + context);
                if ((context instanceof Activity) && c.this.B.compareAndSet(false, true)) {
                    com.aggmoread.sdk.z.c.a.a.e.e.b(c.this.f4598w, "getView bindInteractionActivity ");
                    c.this.f4599x.bindInteractionActivity((Activity) context);
                    c.this.f4600y.getViewTreeObserver().removeOnGlobalLayoutListener(this);
                }
            }
        }
    }

    public c(ExpressResponse expressResponse, com.aggmoread.sdk.z.c.a.a.d.b.e eVar, f fVar, Map<String, Object> map) {
        super(eVar, fVar, map);
        this.f4598w = "AMEPTAGBD";
        this.A = new AtomicBoolean();
        this.B = new AtomicBoolean();
        this.f4599x = expressResponse;
        q();
        com.aggmoread.sdk.z.c.a.a.d.a.d.r.a.b(this.f4461t, com.aggmoread.sdk.z.c.a.a.d.a.d.r.a.a((Object) expressResponse), fVar);
        this.f4601z = expressResponse.getExpressAdView();
        this.f4600y = new com.aggmoread.sdk.z.c.a.a.d.b.o.a(eVar.f4948d);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void onAdShow() {
        this.f4428l = System.currentTimeMillis();
        n.a((Object) this.f4431o, true, true);
        if (r()) {
            k();
        }
    }

    private void q() {
        this.f4599x.setInteractionListener(new a());
        this.f4599x.setAdDislikeListener(com.aggmoread.sdk.z.c.a.a.d.a.d.r.c.a().a(new b()));
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void s() {
        i();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void t() {
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void u() {
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void v() {
        j();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void w() {
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void x() {
    }

    @Override // com.aggmoread.sdk.z.c.a.a.d.a.a
    public com.aggmoread.sdk.z.c.a.a.d.b.o.a a() {
        com.aggmoread.sdk.z.c.a.a.e.e.b(this.f4598w, "ac " + this.f4600y);
        com.aggmoread.sdk.z.c.a.a.d.b.o.a aVar = this.f4600y;
        return aVar != null ? aVar : super.a();
    }

    @Override // com.aggmoread.sdk.z.c.a.a.d.a.d.c
    public void b(int i10) {
        super.b(i10);
        com.aggmoread.sdk.z.c.a.a.d.a.d.r.a.a(this.f4599x, i10);
    }

    @Override // com.aggmoread.sdk.z.c.a.a.c.p.d
    public void destroy() {
        if (this.f4599x != null) {
            this.f4599x = null;
            this.f4601z = null;
            this.f4600y = null;
        }
    }

    @Override // com.aggmoread.sdk.z.c.a.a.d.a.d.c
    protected String getTitle() {
        return com.aggmoread.sdk.z.c.a.a.d.a.d.r.a.a().a(this.f4599x);
    }

    @Override // com.aggmoread.sdk.z.c.a.a.c.p.d
    public View getView() {
        com.aggmoread.sdk.z.c.a.a.e.e.b(this.f4598w, "getView");
        if (this.f4601z == null) {
            this.f4601z = this.f4599x.getExpressAdView();
        }
        if (this.f4601z == null) {
            return null;
        }
        if (this.f4600y == null) {
            this.f4600y = new com.aggmoread.sdk.z.c.a.a.d.b.o.a(this.f4425i.f4948d);
        }
        com.aggmoread.sdk.z.c.a.a.e.e.b(this.f4598w, "getView " + this.f4600y);
        if (!this.B.get()) {
            this.f4600y.getViewTreeObserver().addOnGlobalLayoutListener(new ViewTreeObserverOnGlobalLayoutListenerC0132c());
        }
        return this.f4600y;
    }

    public boolean r() {
        return this.A.compareAndSet(false, true);
    }

    @Override // com.aggmoread.sdk.z.c.a.a.c.p.d
    public void render() {
        ExpressResponse expressResponse;
        com.aggmoread.sdk.z.c.a.a.e.e.b(this.f4598w, "render");
        if (this.f4601z == null || (expressResponse = this.f4599x) == null) {
            com.aggmoread.sdk.z.c.a.a.e.e.b(this.f4598w, "render failed");
            return;
        }
        expressResponse.render();
        if (this.f4601z.getParent() != null || this.f4600y == null) {
            return;
        }
        com.aggmoread.sdk.z.c.a.a.e.e.b(this.f4598w, "render enter ");
        View[] viewArr = new View[0];
        com.aggmoread.sdk.z.c.a.a.d.b.o.a aVar = this.f4600y;
        if (aVar != null) {
            aVar.addView(this.f4601z, new FrameLayout.LayoutParams(-1, -2));
        }
        n.a((View) this.f4600y, this.f4431o);
        n.a(this.f4425i.f4946b, this.f4431o, j.INFORMATION_FLOW, this.f4600y, viewArr, new WeakReference(this.f4600y), null);
        n.b(this.f4425i.f4946b, this.f4426j.e(), this.f4426j.b());
        byte[] bArrB = this.f4425i.f4962r.b();
        if (bArrB != null) {
            n.a(this.f4425i.f4946b, bArrB);
        }
        n.a(this.f4431o, this.f4426j);
    }

    @Override // com.aggmoread.sdk.z.c.a.a.c.p.d
    public void renderActivity(Activity activity) {
        render();
    }

    @Override // com.aggmoread.sdk.z.c.a.a.d.a.d.c
    public void b(int i10, int i11, String str) {
        com.aggmoread.sdk.z.c.a.a.d.a.d.r.a.a(this.f4599x, "203");
    }

    @Override // com.aggmoread.sdk.z.c.a.a.d.a.d.c, com.aggmoread.sdk.z.c.a.a.c.a
    public void a(com.aggmoread.sdk.z.c.a.a.d.a.c cVar) {
    }
}
