package com.aggmoread.sdk.z.c.a.a.d.a.d.t.d.e;

import android.app.Activity;
import android.text.TextUtils;
import android.view.View;
import android.view.ViewGroup;
import android.widget.FrameLayout;
import com.aggmoread.sdk.z.c.a.a.d.a.d.c;
import com.aggmoread.sdk.z.c.a.a.d.b.f;
import com.aggmoread.sdk.z.c.a.a.e.e;
import com.aggmoread.sdk.z.c.a.a.e.p;
import com.bytedance.sdk.openadsdk.TTAdDislike;
import com.bytedance.sdk.openadsdk.TTNativeExpressAd;
import java.lang.ref.WeakReference;
import java.util.Map;
import java.util.concurrent.atomic.AtomicBoolean;

/* JADX INFO: loaded from: classes7.dex */
public class b extends c implements TTNativeExpressAd.ExpressAdInteractionListener {
    private InterfaceC0152b A;
    private AtomicBoolean B;
    private View.OnAttachStateChangeListener C;

    /* JADX INFO: renamed from: w, reason: collision with root package name */
    private String f4722w;

    /* JADX INFO: renamed from: x, reason: collision with root package name */
    private TTNativeExpressAd f4723x;

    /* JADX INFO: renamed from: y, reason: collision with root package name */
    private WeakReference<com.aggmoread.sdk.z.c.a.a.d.b.o.a> f4724y;

    /* JADX INFO: renamed from: z, reason: collision with root package name */
    private View f4725z;

    class a implements View.OnAttachStateChangeListener {

        /* JADX INFO: renamed from: com.aggmoread.sdk.z.c.a.a.d.a.d.t.d.e.b$a$a, reason: collision with other inner class name */
        class C0151a implements TTAdDislike.DislikeInteractionCallback {
            C0151a() {
            }

            @Override // com.bytedance.sdk.openadsdk.TTAdDislike.DislikeInteractionCallback
            public void onCancel() {
            }

            @Override // com.bytedance.sdk.openadsdk.TTAdDislike.DislikeInteractionCallback
            public void onSelected(int i10, String str, boolean z10) {
                b.this.A.d(b.this);
                com.aggmoread.sdk.z.c.a.a.d.b.o.a aVarA = b.this.a();
                if (aVarA != null) {
                    aVarA.removeAllViews();
                }
            }

            @Override // com.bytedance.sdk.openadsdk.TTAdDislike.DislikeInteractionCallback
            public void onShow() {
            }
        }

        a() {
        }

        @Override // android.view.View.OnAttachStateChangeListener
        public void onViewAttachedToWindow(View view) {
            Object parent = view.getParent();
            e.b(b.this.f4722w, "onViewAttachedToWindow  view " + view + ", viewParent " + parent);
            if (parent instanceof ViewGroup) {
                Activity activityA = p.a((View) parent);
                e.b(b.this.f4722w, " showActivity " + activityA);
                if (b.this.f4723x == null || activityA == null) {
                    return;
                }
                b.this.f4723x.setDislikeCallback(activityA, new C0151a());
                com.aggmoread.sdk.z.c.a.a.d.b.o.a aVarA = b.this.a();
                if (aVarA != null) {
                    aVarA.removeOnAttachStateChangeListener(b.this.C);
                }
            }
        }

        @Override // android.view.View.OnAttachStateChangeListener
        public void onViewDetachedFromWindow(View view) {
        }
    }

    /* JADX INFO: renamed from: com.aggmoread.sdk.z.c.a.a.d.a.d.t.d.e.b$b, reason: collision with other inner class name */
    public interface InterfaceC0152b {
        void a(b bVar);

        void a(b bVar, String str, int i10);

        void b(b bVar);

        void c(b bVar);

        void d(b bVar);
    }

    public b(TTNativeExpressAd tTNativeExpressAd, com.aggmoread.sdk.z.c.a.a.d.b.e eVar, f fVar, Map<String, Object> map, InterfaceC0152b interfaceC0152b) {
        super(eVar, fVar, map);
        this.f4722w = "AMEPTAGCSJ";
        this.B = new AtomicBoolean();
        this.A = interfaceC0152b;
        this.f4723x = tTNativeExpressAd;
        tTNativeExpressAd.setExpressInteractionListener(this);
        r();
    }

    private void r() {
        com.aggmoread.sdk.z.c.a.a.d.a.d.t.d.b.a(this.f4461t, this.f4723x);
    }

    @Override // com.aggmoread.sdk.z.c.a.a.d.a.a
    public com.aggmoread.sdk.z.c.a.a.d.b.o.a a() {
        WeakReference<com.aggmoread.sdk.z.c.a.a.d.b.o.a> weakReference = this.f4724y;
        return weakReference != null ? weakReference.get() : super.a();
    }

    @Override // com.aggmoread.sdk.z.c.a.a.c.p.d
    public void destroy() {
        View.OnAttachStateChangeListener onAttachStateChangeListener;
        TTNativeExpressAd tTNativeExpressAd = this.f4723x;
        if (tTNativeExpressAd != null) {
            tTNativeExpressAd.destroy();
            this.f4723x = null;
        }
        com.aggmoread.sdk.z.c.a.a.d.b.o.a aVarA = a();
        if (aVarA == null || (onAttachStateChangeListener = this.C) == null) {
            return;
        }
        aVarA.removeOnAttachStateChangeListener(onAttachStateChangeListener);
    }

    @Override // com.aggmoread.sdk.z.c.a.a.d.a.d.c
    protected String getTitle() {
        if (TextUtils.isEmpty(null)) {
            return com.aggmoread.sdk.z.c.a.a.d.a.d.t.a.c().e(this.f4724y.get());
        }
        return null;
    }

    @Override // com.aggmoread.sdk.z.c.a.a.c.p.d
    public View getView() {
        if (this.f4725z == null) {
            this.f4725z = this.f4723x.getExpressAdView();
        }
        if (this.f4725z == null) {
            return null;
        }
        com.aggmoread.sdk.z.c.a.a.d.b.o.a aVarA = a();
        if (aVarA == null) {
            aVarA = new com.aggmoread.sdk.z.c.a.a.d.b.o.a(this.f4425i.f4948d);
            if (this.f4725z.getParent() != null) {
                ((ViewGroup) this.f4725z.getParent()).removeView(this.f4725z);
            }
            aVarA.addView(this.f4725z, new FrameLayout.LayoutParams(-1, -2));
            this.f4724y = new WeakReference<>(aVarA);
            a aVar = new a();
            this.C = aVar;
            aVarA.addOnAttachStateChangeListener(aVar);
        }
        return aVarA;
    }

    @Override // com.bytedance.sdk.openadsdk.TTNativeExpressAd.ExpressAdInteractionListener
    public void onAdClicked(View view, int i10) {
        this.A.c(this);
    }

    @Override // com.bytedance.sdk.openadsdk.TTNativeExpressAd.ExpressAdInteractionListener
    public void onAdShow(View view, int i10) {
        r();
        this.A.b(this);
    }

    @Override // com.bytedance.sdk.openadsdk.TTNativeExpressAd.ExpressAdInteractionListener
    public void onRenderFail(View view, String str, int i10) {
        this.A.a(this, str, i10);
    }

    @Override // com.bytedance.sdk.openadsdk.TTNativeExpressAd.ExpressAdInteractionListener
    public void onRenderSuccess(View view, float f10, float f11) {
        this.A.a(this);
    }

    public boolean q() {
        return this.B.compareAndSet(false, true);
    }

    @Override // com.aggmoread.sdk.z.c.a.a.c.p.d
    public void render() {
        TTNativeExpressAd tTNativeExpressAd = this.f4723x;
        if (tTNativeExpressAd != null) {
            tTNativeExpressAd.render();
        }
    }

    @Override // com.aggmoread.sdk.z.c.a.a.c.p.d
    public void renderActivity(Activity activity) {
        render();
    }

    @Override // com.aggmoread.sdk.z.c.a.a.d.a.d.c, com.aggmoread.sdk.z.c.a.a.c.a
    public void a(com.aggmoread.sdk.z.c.a.a.d.a.c cVar) {
    }
}
