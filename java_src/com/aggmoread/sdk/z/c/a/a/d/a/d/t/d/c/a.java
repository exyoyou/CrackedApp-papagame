package com.aggmoread.sdk.z.c.a.a.d.a.d.t.d.c;

import android.app.Activity;
import android.content.Context;
import android.view.View;
import android.view.ViewGroup;
import com.aggmoread.sdk.z.c.a.a.c.i;
import com.aggmoread.sdk.z.c.a.a.d.a.d.n;
import com.aggmoread.sdk.z.c.a.a.d.b.f;
import com.aggmoread.sdk.z.c.a.a.d.b.j;
import com.aggmoread.sdk.z.c.a.a.e.e;
import com.aggmoread.sdk.z.c.a.a.e.q;
import com.aggmoread.sdk.z.c.a.a.e.t;
import com.bytedance.sdk.openadsdk.AdSlot;
import com.bytedance.sdk.openadsdk.TTAdDislike;
import com.bytedance.sdk.openadsdk.TTAdNative;
import com.bytedance.sdk.openadsdk.TTAdSdk;
import com.bytedance.sdk.openadsdk.TTNativeExpressAd;
import java.lang.ref.WeakReference;
import java.util.List;

/* JADX INFO: loaded from: classes7.dex */
public class a extends com.aggmoread.sdk.z.c.a.a.d.a.d.a implements TTNativeExpressAd.ExpressAdInteractionListener {

    /* JADX INFO: renamed from: v, reason: collision with root package name */
    private TTNativeExpressAd f4705v;

    /* JADX INFO: renamed from: com.aggmoread.sdk.z.c.a.a.d.a.d.t.d.c.a$a, reason: collision with other inner class name */
    class C0146a implements TTAdNative.NativeExpressAdListener {
        C0146a() {
        }

        @Override // com.bytedance.sdk.openadsdk.TTAdNative.NativeExpressAdListener
        public void onError(int i10, String str) {
            a.this.a(i10, str);
        }

        @Override // com.bytedance.sdk.openadsdk.TTAdNative.NativeExpressAdListener
        public void onNativeExpressAdLoad(List<TTNativeExpressAd> list) {
            if (list == null || list.size() <= 0) {
                a.this.a(-1000, "未匹配到合适广告！");
                return;
            }
            a.this.f4705v = list.get(0);
            a.this.z();
        }
    }

    class b implements Runnable {
        b() {
        }

        @Override // java.lang.Runnable
        public void run() {
            a aVar = a.this;
            aVar.b((Activity) aVar.f4910h.f4948d);
        }
    }

    class c implements TTAdDislike.DislikeInteractionCallback {
        c() {
        }

        @Override // com.bytedance.sdk.openadsdk.TTAdDislike.DislikeInteractionCallback
        public void onCancel() {
        }

        @Override // com.bytedance.sdk.openadsdk.TTAdDislike.DislikeInteractionCallback
        public void onSelected(int i10, String str, boolean z10) {
            e.b("AMBTAGCSJ", "onAdClose");
            a.this.r();
            com.aggmoread.sdk.z.c.a.a.d.b.o.a aVar = (com.aggmoread.sdk.z.c.a.a.d.b.o.a) ((com.aggmoread.sdk.z.c.a.a.d.a.d.a) a.this).f4448u.get();
            if (aVar != null) {
                aVar.removeAllViews();
            }
        }

        @Override // com.bytedance.sdk.openadsdk.TTAdDislike.DislikeInteractionCallback
        public void onShow() {
        }
    }

    class d implements Runnable {
        d() {
        }

        @Override // java.lang.Runnable
        public void run() {
            a.this.a((View[]) null);
        }
    }

    public a(com.aggmoread.sdk.z.c.a.a.d.b.e eVar, f fVar) {
        super(eVar, fVar);
        this.f4447t = com.aggmoread.sdk.z.c.a.a.b.b();
    }

    private void A() {
        com.aggmoread.sdk.z.c.a.a.d.a.d.t.d.b.a(this.f4909g, this.f4705v);
    }

    private void y() {
        int iA;
        Activity activityA = n.a(this.f4910h.f4948d);
        if (activityA == null) {
            a(1001003005, "当前传入Activity为空");
            return;
        }
        int iA2 = 0;
        a(this.f4910h, this.f4911i).a(0).b();
        i iVar = this.f4910h.f4961q;
        if (iVar != null) {
            iA2 = iVar.b();
            iA = this.f4910h.f4961q.a();
        } else {
            iA = 0;
        }
        if (iA2 < 1 || iA < 1) {
            iA2 = t.a(320.0d);
            iA = t.a(150.0d);
        }
        TTAdSdk.getAdManager().createAdNative(activityA).loadBannerExpressAd(new AdSlot.Builder().setCodeId(this.f4911i.f5003c.c(f.c.f5015a0)).setImageAcceptedSize(iA2, iA).build(), new C0146a());
    }

    @Override // com.aggmoread.sdk.z.c.a.a.c.n.a
    public void destroy() {
        TTNativeExpressAd tTNativeExpressAd = this.f4705v;
        if (tTNativeExpressAd != null) {
            tTNativeExpressAd.destroy();
            this.f4705v = null;
        }
    }

    @Override // com.aggmoread.sdk.z.c.a.a.d.b.a
    protected String j() {
        return com.aggmoread.sdk.z.c.a.a.d.a.d.t.a.c().d(this.f4448u.get());
    }

    @Override // com.aggmoread.sdk.z.c.a.a.d.b.a
    public void l() {
        boolean zC = com.aggmoread.sdk.z.c.a.a.d.a.d.t.d.b.c(this.f4910h.f4948d, this.f4911i.f5003c.c(f.c.f5023e0), this.f4911i.f5003c.c(f.c.f5021d0));
        e.b("AMBTAGCSJ", "isInit " + zC);
        if (zC) {
            y();
        } else {
            b(new j(1001003005, "csj: MSDK未初始化，请稍后重试!"));
        }
    }

    @Override // com.bytedance.sdk.openadsdk.TTNativeExpressAd.ExpressAdInteractionListener
    public void onAdClicked(View view, int i10) {
        e.b("AMBTAGCSJ", "onAdClicked");
        q();
    }

    @Override // com.bytedance.sdk.openadsdk.TTNativeExpressAd.ExpressAdInteractionListener
    public void onAdShow(View view, int i10) {
        e.b("AMBTAGCSJ", "onAdShow");
        q.a(new d(), 500L);
        if (this.f4705v != null) {
            A();
        }
        x();
        t();
    }

    @Override // com.bytedance.sdk.openadsdk.TTNativeExpressAd.ExpressAdInteractionListener
    public void onRenderFail(View view, String str, int i10) {
        e.b("AMBTAGCSJ", "onRewardedAdShowFail");
        a(i10, str);
    }

    @Override // com.bytedance.sdk.openadsdk.TTNativeExpressAd.ExpressAdInteractionListener
    public void onRenderSuccess(View view, float f10, float f11) {
    }

    public void z() {
        e.b("AMBTAGCSJ", "onBannerLoadedInner ");
        A();
        v();
    }

    public void a(int i10, String str) {
        b(new j(i10, str));
    }

    @Override // com.aggmoread.sdk.z.c.a.a.c.n.a
    public void b() {
        e.b("AMBTAGCSJ", "show() ");
        a(this.f4910h.f4954j);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void b(Activity activity) {
        e.b("AMBTAGCSJ", "showInner ");
        if (this.f4444q && this.f4705v != null && this.f4446s.compareAndSet(false, true)) {
            this.f4705v.setExpressInteractionListener(this);
            if (activity != null) {
                this.f4705v.setDislikeCallback(activity, new c());
            }
            com.aggmoread.sdk.z.c.a.a.d.b.o.a aVar = this.f4448u.get();
            View expressAdView = this.f4705v.getExpressAdView();
            if (aVar == null || expressAdView == null) {
                return;
            }
            aVar.removeAllViews();
            aVar.addView(expressAdView);
            this.f4705v.render();
        }
    }

    @Override // com.aggmoread.sdk.z.c.a.a.c.n.a
    public void a(ViewGroup viewGroup) {
        e.b("AMBTAGCSJ", "showInContainer ");
        com.aggmoread.sdk.z.c.a.a.d.b.o.a aVar = new com.aggmoread.sdk.z.c.a.a.d.b.o.a(this.f4910h.f4948d);
        this.f4448u = new WeakReference<>(aVar);
        aVar.addOnAttachStateChangeListener(new com.aggmoread.sdk.z.c.a.a.d.b.o.c());
        if (viewGroup != null) {
            ViewGroup viewGroup2 = (ViewGroup) aVar.getParent();
            if (viewGroup2 != null) {
                viewGroup2.removeView(aVar);
            }
            viewGroup.addView(aVar, new ViewGroup.LayoutParams(-1, -2));
        }
        try {
            Context context = this.f4910h.f4948d;
            if (context instanceof Activity) {
                ((Activity) context).getWindow().getDecorView().post(new b());
            }
        } catch (Exception e10) {
            e.b("AMBTAGCSJ", "show #3 " + e10.getMessage());
            b((Activity) null);
        }
    }

    @Override // com.aggmoread.sdk.z.c.a.a.d.a.d.a
    protected void a(View[] viewArr) {
        com.aggmoread.sdk.z.c.a.a.d.b.e eVar = this.f4910h;
        com.aggmoread.sdk.z.c.a.a.d.b.n.a(eVar.f4946b, this.f4447t, eVar.f4949e, Integer.valueOf(this.f4911i.f()));
        com.aggmoread.sdk.z.c.a.a.d.b.n.b(this.f4910h.f4946b, this.f4911i.e(), this.f4911i.b());
        byte[] bArrB = this.f4910h.f4962r.b();
        if (bArrB != null) {
            com.aggmoread.sdk.z.c.a.a.d.b.n.a(this.f4910h.f4946b, bArrB);
        }
        com.aggmoread.sdk.z.c.a.a.d.b.n.a((Object) this.f4447t, true, true);
        com.aggmoread.sdk.z.c.a.a.d.b.n.a(this.f4447t, this.f4911i);
        com.aggmoread.sdk.z.c.a.a.d.b.n.a(this.f4447t, 2);
    }
}
