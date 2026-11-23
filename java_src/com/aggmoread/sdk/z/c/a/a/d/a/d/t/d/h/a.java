package com.aggmoread.sdk.z.c.a.a.d.a.d.t.d.h;

import android.view.View;
import android.view.ViewGroup;
import com.aggmoread.sdk.z.c.a.a.c.i;
import com.aggmoread.sdk.z.c.a.a.d.a.d.k;
import com.aggmoread.sdk.z.c.a.a.d.a.d.n;
import com.aggmoread.sdk.z.c.a.a.d.b.e;
import com.aggmoread.sdk.z.c.a.a.d.b.f;
import com.aggmoread.sdk.z.c.a.a.d.b.j;
import com.aggmoread.sdk.z.c.a.a.e.q;
import com.aggmoread.sdk.z.c.a.a.e.t;
import com.bytedance.sdk.openadsdk.AdSlot;
import com.bytedance.sdk.openadsdk.CSJAdError;
import com.bytedance.sdk.openadsdk.CSJSplashAd;
import com.bytedance.sdk.openadsdk.TTAdNative;
import com.bytedance.sdk.openadsdk.TTAdSdk;
import java.lang.ref.WeakReference;
import java.util.ArrayList;
import java.util.concurrent.atomic.AtomicBoolean;

/* JADX INFO: loaded from: classes7.dex */
public class a extends k implements TTAdNative.CSJSplashAdListener {
    private CSJSplashAd C;
    private TTAdNative D;
    private AtomicBoolean E;
    private boolean F;

    /* JADX INFO: renamed from: com.aggmoread.sdk.z.c.a.a.d.a.d.t.d.h.a$a, reason: collision with other inner class name */
    class RunnableC0156a implements Runnable {

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        final /* synthetic */ com.aggmoread.sdk.z.c.a.a.d.b.o.a f4748b;

        RunnableC0156a(com.aggmoread.sdk.z.c.a.a.d.b.o.a aVar) {
            this.f4748b = aVar;
        }

        @Override // java.lang.Runnable
        public void run() {
            View viewC = a.this.c(this.f4748b);
            if (viewC == null) {
                a.super.a(this.f4748b);
            } else {
                a.this.a(this.f4748b, new View[]{viewC});
            }
        }
    }

    class b implements CSJSplashAd.SplashAdListener {

        /* JADX INFO: renamed from: com.aggmoread.sdk.z.c.a.a.d.a.d.t.d.h.a$b$a, reason: collision with other inner class name */
        class RunnableC0157a implements Runnable {
            RunnableC0157a() {
            }

            @Override // java.lang.Runnable
            public void run() {
                a.this.v();
            }
        }

        b() {
        }

        @Override // com.bytedance.sdk.openadsdk.CSJSplashAd.SplashAdListener
        public void onSplashAdClick(CSJSplashAd cSJSplashAd) {
            a.this.q();
            q.a(new RunnableC0157a(), 1000L);
        }

        @Override // com.bytedance.sdk.openadsdk.CSJSplashAd.SplashAdListener
        public void onSplashAdClose(CSJSplashAd cSJSplashAd, int i10) {
            a.this.v();
        }

        @Override // com.bytedance.sdk.openadsdk.CSJSplashAd.SplashAdListener
        public void onSplashAdShow(CSJSplashAd cSJSplashAd) {
            a.this.w();
            a.this.s();
        }
    }

    public a(e eVar, f fVar) {
        super(eVar, fVar);
        this.E = new AtomicBoolean();
        this.F = false;
    }

    private View a(ViewGroup viewGroup, String str, String str2) {
        View viewA;
        if (viewGroup == null) {
            return null;
        }
        int childCount = viewGroup.getChildCount();
        for (int i10 = 0; i10 < childCount; i10++) {
            View childAt = viewGroup.getChildAt(i10);
            if (str.equals(childAt.getClass().getName())) {
                com.aggmoread.sdk.z.c.a.a.e.e.b("AMSTAGCSJ", "ff ");
                return childAt;
            }
            if (com.aggmoread.sdk.z.c.a.a.d.a.d.t.a.a(childAt, str2)) {
                return childAt;
            }
            if ((childAt instanceof ViewGroup) && (viewA = a((ViewGroup) childAt, str, str2)) != null) {
                return viewA;
            }
        }
        return null;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public View c(ViewGroup viewGroup) {
        if (viewGroup == null) {
            return null;
        }
        try {
            View viewA = a(viewGroup, "com.bytedance.sdk.openadsdk.widget.TTCountdownView", "tt_splash_skip_btn");
            if (viewA == null) {
                int identifier = this.f4910h.f4948d.getResources().getIdentifier("tt_splash_skip_btn", "id", this.f4910h.f4948d.getPackageName());
                viewA = viewGroup.findViewById(identifier);
                com.aggmoread.sdk.z.c.a.a.e.e.b("AMSTAGCSJ", "tmp view = " + viewA + ", idd = " + identifier);
            }
            com.aggmoread.sdk.z.c.a.a.e.e.b("AMSTAGCSJ", "tmp view = " + viewA);
            return viewA;
        } catch (Exception e10) {
            e10.printStackTrace();
            com.aggmoread.sdk.z.c.a.a.e.e.b("AMSTAGCSJ", "err  = " + e10);
            return null;
        }
    }

    private void u() {
        int iB;
        int iA;
        if (n.a(this.f4910h.f4948d) == null) {
            b(new j(1001003005, "当前传入Activity为空"));
            return;
        }
        boolean zC = com.aggmoread.sdk.z.c.a.a.d.a.d.t.d.b.c(this.f4910h.f4948d, this.f4911i.f5003c.c(f.c.f5023e0), null);
        com.aggmoread.sdk.z.c.a.a.e.e.b("AMSTAGCSJ", "isInit " + zC);
        if (!zC) {
            b(new j(1001003005, "csj: MSDK未初始化，请稍后重试!"));
            return;
        }
        this.D = TTAdSdk.getAdManager().createAdNative(this.f4910h.f4948d);
        i iVar = this.f4910h.f4961q;
        if (iVar != null) {
            iB = iVar.b();
            iA = this.f4910h.f4961q.a();
        } else {
            iB = 0;
            iA = 0;
        }
        if (iB <= 0) {
            iB = t.b(this.f4910h.f4948d);
        }
        if (iA <= 0) {
            iA = t.a(this.f4910h.f4948d);
        }
        com.aggmoread.sdk.z.c.a.a.e.e.b("AMSTAGCSJ", "width " + iB + ",height " + iA);
        AdSlot adSlotBuild = new AdSlot.Builder().setCodeId(this.f4911i.f5003c.c(f.c.f5015a0)).setSupportDeepLink(true).setImageAcceptedSize(iB, iA).build();
        a(this.f4910h, this.f4911i).a(0).b();
        this.D.loadSplashAd(adSlotBuild, this, this.f4910h.f4958n);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void v() {
        r();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void w() {
        com.aggmoread.sdk.z.c.a.a.d.a.d.t.d.b.a(this.f4909g, this.C);
    }

    @Override // com.aggmoread.sdk.z.c.a.a.d.a.d.k
    public void b(ViewGroup viewGroup) {
        if (viewGroup == null || this.C == null || !this.E.compareAndSet(false, true)) {
            return;
        }
        a(viewGroup, this.C);
    }

    @Override // com.aggmoread.sdk.z.c.a.a.d.b.a
    protected String j() {
        WeakReference<com.aggmoread.sdk.z.c.a.a.d.b.o.a> weakReference = this.f4531t;
        if (weakReference == null || weakReference.get() == null) {
            return null;
        }
        return com.aggmoread.sdk.z.c.a.a.d.a.d.t.a.c().f(this.f4531t.get());
    }

    @Override // com.bytedance.sdk.openadsdk.TTAdNative.CSJSplashAdListener
    public void onSplashLoadFail(CSJAdError cSJAdError) {
        b(new j(cSJAdError.getCode(), cSJAdError.getMsg()));
    }

    @Override // com.bytedance.sdk.openadsdk.TTAdNative.CSJSplashAdListener
    public void onSplashLoadSuccess(CSJSplashAd cSJSplashAd) {
        this.F = true;
    }

    @Override // com.bytedance.sdk.openadsdk.TTAdNative.CSJSplashAdListener
    public void onSplashRenderFail(CSJSplashAd cSJSplashAd, CSJAdError cSJAdError) {
        if (this.F) {
            b(new j(cSJAdError.getCode(), cSJAdError.getMsg()));
        }
    }

    @Override // com.bytedance.sdk.openadsdk.TTAdNative.CSJSplashAdListener
    public void onSplashRenderSuccess(CSJSplashAd cSJSplashAd) {
        this.C = cSJSplashAd;
        w();
        ArrayList arrayList = new ArrayList();
        arrayList.add(this);
        f(arrayList);
    }

    @Override // com.aggmoread.sdk.z.c.a.a.d.a.d.k
    public void a(View view) {
        this.f4533v = false;
        com.aggmoread.sdk.z.c.a.a.d.a.d.t.d.b.c(this.f4910h.f4948d, this.f4911i.f5003c.c(f.c.f5023e0), null);
        u();
    }

    private void a(ViewGroup viewGroup, CSJSplashAd cSJSplashAd) {
        cSJSplashAd.setSplashAdListener(new b());
        View splashView = cSJSplashAd.getSplashView();
        viewGroup.removeAllViews();
        if (splashView.getParent() != null) {
            ((ViewGroup) splashView.getParent()).removeView(splashView);
        }
        viewGroup.addView(splashView);
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // com.aggmoread.sdk.z.c.a.a.d.a.d.k
    public void a(com.aggmoread.sdk.z.c.a.a.d.b.o.a aVar) {
        q.a(new RunnableC0156a(aVar), 100L);
    }
}
