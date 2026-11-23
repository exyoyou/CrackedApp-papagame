package com.aggmoread.sdk.z.c.a.a.d.a.d.t.d.d;

import android.app.Activity;
import android.text.TextUtils;
import android.view.View;
import android.view.ViewGroup;
import android.widget.FrameLayout;
import com.aggmoread.sdk.z.c.a.a.c.j;
import com.aggmoread.sdk.z.c.a.a.d.a.c;
import com.aggmoread.sdk.z.c.a.a.d.b.e;
import com.aggmoread.sdk.z.c.a.a.d.b.f;
import com.aggmoread.sdk.z.c.a.a.d.b.m;
import com.aggmoread.sdk.z.c.a.a.d.b.n;
import com.aggmoread.sdk.z.c.a.a.e.p;
import com.bytedance.sdk.openadsdk.TTAdDislike;
import com.bytedance.sdk.openadsdk.TTDrawFeedAd;
import com.bytedance.sdk.openadsdk.mediation.ad.MediationExpressRenderListener;
import java.lang.ref.WeakReference;
import java.util.Map;
import java.util.concurrent.atomic.AtomicBoolean;

/* JADX INFO: loaded from: classes7.dex */
public class a extends com.aggmoread.sdk.z.c.a.a.d.a.d.b implements MediationExpressRenderListener {
    private View.OnAttachStateChangeListener A;
    private View B;
    private AtomicBoolean C;
    private long D;

    /* JADX INFO: renamed from: x, reason: collision with root package name */
    private String f4710x;

    /* JADX INFO: renamed from: y, reason: collision with root package name */
    private TTDrawFeedAd f4711y;

    /* JADX INFO: renamed from: z, reason: collision with root package name */
    private com.aggmoread.sdk.z.c.a.a.d.b.o.a f4712z;

    /* JADX INFO: renamed from: com.aggmoread.sdk.z.c.a.a.d.a.d.t.d.d.a$a, reason: collision with other inner class name */
    class ViewOnAttachStateChangeListenerC0147a implements View.OnAttachStateChangeListener {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        final /* synthetic */ TTDrawFeedAd f4713a;

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        final /* synthetic */ e f4714b;

        /* JADX INFO: renamed from: c, reason: collision with root package name */
        final /* synthetic */ f f4715c;

        /* JADX INFO: renamed from: com.aggmoread.sdk.z.c.a.a.d.a.d.t.d.d.a$a$a, reason: collision with other inner class name */
        class C0148a implements TTAdDislike.DislikeInteractionCallback {
            C0148a() {
            }

            @Override // com.bytedance.sdk.openadsdk.TTAdDislike.DislikeInteractionCallback
            public void onCancel() {
            }

            @Override // com.bytedance.sdk.openadsdk.TTAdDislike.DislikeInteractionCallback
            public void onSelected(int i10, String str, boolean z10) {
                ViewOnAttachStateChangeListenerC0147a viewOnAttachStateChangeListenerC0147a = ViewOnAttachStateChangeListenerC0147a.this;
                a.this.a(viewOnAttachStateChangeListenerC0147a.f4714b, viewOnAttachStateChangeListenerC0147a.f4715c).a(m.d.f5176n, a.this.f4423g).a(4).b();
                if (((com.aggmoread.sdk.z.c.a.a.d.a.d.b) a.this).f4453v != null) {
                    ((com.aggmoread.sdk.z.c.a.a.d.a.d.b) a.this).f4453v.a();
                }
                com.aggmoread.sdk.z.c.a.a.d.b.o.a aVarA = a.this.a();
                if (aVarA != null) {
                    aVarA.removeAllViews();
                }
            }

            @Override // com.bytedance.sdk.openadsdk.TTAdDislike.DislikeInteractionCallback
            public void onShow() {
            }
        }

        ViewOnAttachStateChangeListenerC0147a(TTDrawFeedAd tTDrawFeedAd, e eVar, f fVar) {
            this.f4713a = tTDrawFeedAd;
            this.f4714b = eVar;
            this.f4715c = fVar;
        }

        @Override // android.view.View.OnAttachStateChangeListener
        public void onViewAttachedToWindow(View view) {
            TTDrawFeedAd tTDrawFeedAd;
            Object parent = view.getParent();
            com.aggmoread.sdk.z.c.a.a.e.e.b(a.this.f4710x, "onViewAttachedToWindow  view " + view + ", viewParent " + parent);
            if (parent instanceof ViewGroup) {
                Activity activityA = p.a((View) parent);
                com.aggmoread.sdk.z.c.a.a.e.e.b(a.this.f4710x, " showActivity " + activityA);
                if (activityA == null || (tTDrawFeedAd = this.f4713a) == null) {
                    return;
                }
                tTDrawFeedAd.setDislikeCallback(activityA, new C0148a());
                a.this.f4712z.removeOnAttachStateChangeListener(a.this.A);
            }
        }

        @Override // android.view.View.OnAttachStateChangeListener
        public void onViewDetachedFromWindow(View view) {
        }
    }

    public a(TTDrawFeedAd tTDrawFeedAd, e eVar, f fVar, Map<String, Object> map) {
        super(eVar, fVar, map);
        this.f4710x = "AMDRAWTAGCSJ";
        this.C = new AtomicBoolean();
        this.f4711y = tTDrawFeedAd;
        tTDrawFeedAd.setExpressRenderListener(this);
        a(tTDrawFeedAd, eVar, fVar);
        k();
    }

    private void k() {
        com.aggmoread.sdk.z.c.a.a.d.a.d.t.d.b.a(this.f4451t, this.f4711y);
    }

    @Override // com.aggmoread.sdk.z.c.a.a.c.o.a
    public void destroy() {
        View.OnAttachStateChangeListener onAttachStateChangeListener;
        TTDrawFeedAd tTDrawFeedAd = this.f4711y;
        if (tTDrawFeedAd != null) {
            tTDrawFeedAd.destroy();
            this.f4711y = null;
        }
        com.aggmoread.sdk.z.c.a.a.d.b.o.a aVarA = a();
        if (aVarA == null || (onAttachStateChangeListener = this.A) == null) {
            return;
        }
        aVarA.removeOnAttachStateChangeListener(onAttachStateChangeListener);
    }

    @Override // com.aggmoread.sdk.z.c.a.a.d.a.d.b
    protected String getTitle() {
        if (TextUtils.isEmpty(null)) {
            return com.aggmoread.sdk.z.c.a.a.d.a.d.t.a.c().e(a());
        }
        return null;
    }

    @Override // com.aggmoread.sdk.z.c.a.a.c.o.a
    public View getView() {
        com.aggmoread.sdk.z.c.a.a.e.e.b(this.f4710x, "gv ");
        return a();
    }

    public boolean j() {
        return this.C.compareAndSet(false, true);
    }

    @Override // com.bytedance.sdk.openadsdk.mediation.ad.MediationExpressRenderListener
    public void onAdClick() {
        com.aggmoread.sdk.z.c.a.a.c.o.b bVar;
        m mVarA = a(this.f4425i, this.f4426j);
        boolean zA = mVarA.a(m.d.f5176n, this.f4423g).a(this.f4426j, a(), this.D, this.f4431o);
        mVarA.b();
        n.a((Object) this.f4431o, false, true);
        if (!zA || (bVar = this.f4453v) == null) {
            return;
        }
        bVar.onAdClicked();
    }

    @Override // com.bytedance.sdk.openadsdk.mediation.ad.MediationExpressRenderListener
    public void onAdShow() {
        com.aggmoread.sdk.z.c.a.a.e.e.b(this.f4710x, "onAdShow ");
        k();
        if (j()) {
            this.D = System.currentTimeMillis();
            com.aggmoread.sdk.z.c.a.a.d.b.o.a aVarA = a();
            n.a((View) aVarA, this.f4431o);
            n.a(this.f4425i.f4946b, this.f4431o, j.INFORMATION_FLOW, aVarA, new View[0], new WeakReference(aVarA), null);
            n.b(this.f4425i.f4946b, this.f4426j.e(), this.f4426j.b());
            byte[] bArrB = this.f4425i.f4962r.b();
            if (bArrB != null) {
                n.a(this.f4425i.f4946b, bArrB);
            }
            n.a((Object) this.f4431o, true, true);
            n.a(this.f4431o, this.f4426j);
            d();
        }
    }

    @Override // com.bytedance.sdk.openadsdk.mediation.ad.MediationExpressRenderListener
    public void onRenderFail(View view, String str, int i10) {
        com.aggmoread.sdk.z.c.a.a.e.e.b(this.f4710x, "onRenderFail ");
        com.aggmoread.sdk.z.c.a.a.c.o.b bVar = this.f4453v;
        if (bVar != null) {
            bVar.onRenderFail();
        }
    }

    @Override // com.bytedance.sdk.openadsdk.TTNativeAd.ExpressRenderListener
    public void onRenderSuccess(View view, float f10, float f11, boolean z10) {
        com.aggmoread.sdk.z.c.a.a.e.e.b(this.f4710x, "onRenderSuccess ");
        com.aggmoread.sdk.z.c.a.a.c.o.b bVar = this.f4453v;
        if (bVar != null) {
            bVar.onRenderSuccess();
        }
        if (this.B == null) {
            this.B = this.f4711y.getAdView();
        }
        View view2 = this.B;
        if (view2 == null) {
            return;
        }
        if (view2.getParent() != null) {
            ((ViewGroup) this.B.getParent()).removeView(this.B);
        }
        com.aggmoread.sdk.z.c.a.a.d.b.o.a aVarA = a();
        if (aVarA != null) {
            FrameLayout.LayoutParams layoutParams = new FrameLayout.LayoutParams(-1, -2);
            layoutParams.gravity = 17;
            aVarA.addView(this.B, layoutParams);
        }
    }

    @Override // com.aggmoread.sdk.z.c.a.a.c.o.a
    public void render() {
        com.aggmoread.sdk.z.c.a.a.e.e.b(this.f4710x, "re ");
        TTDrawFeedAd tTDrawFeedAd = this.f4711y;
        if (tTDrawFeedAd != null) {
            tTDrawFeedAd.render();
        }
    }

    @Override // com.aggmoread.sdk.z.c.a.a.c.o.a
    public void renderActivity(Activity activity) {
        render();
    }

    @Override // com.aggmoread.sdk.z.c.a.a.d.a.a
    public com.aggmoread.sdk.z.c.a.a.d.b.o.a a() {
        com.aggmoread.sdk.z.c.a.a.d.b.o.a aVar = this.f4712z;
        return aVar != null ? aVar : super.a();
    }

    @Override // com.aggmoread.sdk.z.c.a.a.c.a
    public void a(c cVar) {
    }

    private void a(TTDrawFeedAd tTDrawFeedAd, e eVar, f fVar) {
        com.aggmoread.sdk.z.c.a.a.d.b.o.a aVar = new com.aggmoread.sdk.z.c.a.a.d.b.o.a(eVar.f4948d.getApplicationContext());
        this.f4712z = aVar;
        ViewOnAttachStateChangeListenerC0147a viewOnAttachStateChangeListenerC0147a = new ViewOnAttachStateChangeListenerC0147a(tTDrawFeedAd, eVar, fVar);
        this.A = viewOnAttachStateChangeListenerC0147a;
        aVar.addOnAttachStateChangeListener(viewOnAttachStateChangeListenerC0147a);
    }
}
