package com.aggmoread.sdk.z.c.a.a.d.a.d.w.j;

import android.os.Handler;
import android.os.Message;
import android.view.View;
import android.view.ViewGroup;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import com.aggmoread.sdk.z.c.a.a.d.a.d.k;
import com.aggmoread.sdk.z.c.a.a.d.a.d.p;
import com.aggmoread.sdk.z.c.a.a.d.a.d.w.c;
import com.aggmoread.sdk.z.c.a.a.d.b.e;
import com.aggmoread.sdk.z.c.a.a.d.b.f;
import com.aggmoread.sdk.z.c.a.a.d.b.j;
import com.aggmoread.sdk.z.c.a.a.e.q;
import com.kwad.sdk.api.KsAdSDK;
import com.kwad.sdk.api.KsLoadManager;
import com.kwad.sdk.api.KsScene;
import com.kwad.sdk.api.KsSplashScreenAd;
import java.util.ArrayList;
import java.util.Map;
import java.util.concurrent.atomic.AtomicBoolean;

/* JADX INFO: loaded from: classes7.dex */
public class a extends k implements KsLoadManager.SplashScreenAdListener, KsSplashScreenAd.SplashScreenAdInteractionListener {
    private String C;
    private AtomicBoolean D;
    private KsSplashScreenAd E;
    int F;

    /* JADX INFO: renamed from: com.aggmoread.sdk.z.c.a.a.d.a.d.w.j.a$a, reason: collision with other inner class name */
    class C0181a implements Handler.Callback {
        C0181a() {
        }

        @Override // android.os.Handler.Callback
        public boolean handleMessage(@NonNull Message message) {
            a.this.u();
            return false;
        }
    }

    class b implements Runnable {

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        final /* synthetic */ com.aggmoread.sdk.z.c.a.a.d.b.o.a f4906b;

        b(com.aggmoread.sdk.z.c.a.a.d.b.o.a aVar) {
            this.f4906b = aVar;
        }

        @Override // java.lang.Runnable
        public void run() {
            a.super.a(this.f4906b);
        }
    }

    public a(e eVar, f fVar) {
        super(eVar, fVar);
        this.C = "AMSTAGKS";
        this.D = new AtomicBoolean();
        this.F = -1;
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* JADX WARN: Code duplicated, block: B:11:0x0091 A[PHI: r0
      0x0091: PHI (r0v11 com.aggmoread.sdk.z.c.a.a.d.a.d.w.c) = (r0v10 com.aggmoread.sdk.z.c.a.a.d.a.d.w.c), (r0v21 com.aggmoread.sdk.z.c.a.a.d.a.d.w.c) binds: [B:10:0x008f, B:5:0x006a] A[DONT_GENERATE, DONT_INLINE]] */
    /* JADX WARN: Code duplicated, block: B:12:0x0093 A[PHI: r0
      0x0093: PHI (r0v19 com.aggmoread.sdk.z.c.a.a.d.a.d.w.c) = (r0v10 com.aggmoread.sdk.z.c.a.a.d.a.d.w.c), (r0v21 com.aggmoread.sdk.z.c.a.a.d.a.d.w.c) binds: [B:10:0x008f, B:5:0x006a] A[DONT_GENERATE, DONT_INLINE]] */
    public void u() {
        c cVarA;
        boolean z10;
        String strC = this.f4911i.f5003c.c(f.c.f5015a0);
        String strTrim = strC.replace("L", "").trim();
        long j10 = Long.parseLong(strTrim);
        com.aggmoread.sdk.z.c.a.a.e.e.b(this.C, "slotId = " + strC + ",slotIdStr = " + strTrim + ",_slotId = " + j10);
        if (this.f4910h.B != -1) {
            com.aggmoread.sdk.z.c.a.a.e.e.b(this.C, "ar shakeable = " + this.f4910h.B);
            cVarA = c.a();
            if (this.f4910h.B == 0) {
                z10 = true;
            } else {
                z10 = false;
            }
            cVarA.b(z10);
        } else if (p.f4547b != -1) {
            com.aggmoread.sdk.z.c.a.a.e.e.b(this.C, "global shakeable = " + p.f4547b);
            cVarA = c.a();
            if (p.f4547b == 0) {
                z10 = true;
            } else {
                z10 = false;
            }
            cVarA.b(z10);
        }
        KsAdSDK.getLoadManager().loadSplashScreenAd(c.a().a(new KsScene.Builder(j10)).build(), this);
        a(this.f4910h, this.f4911i).a(0).b();
    }

    private void v() {
    }

    private void w() {
        r();
    }

    @Override // com.aggmoread.sdk.z.c.a.a.d.a.d.k
    public void a(View view) {
        com.aggmoread.sdk.z.c.a.a.e.e.b(this.C, "handle");
        this.f4533v = false;
        if (!com.aggmoread.sdk.z.c.a.a.d.a.d.w.b.a(this.f4910h.f4948d, this.f4911i.f5003c.a(f.c.f5023e0, ""))) {
            b(new j(1001002008, "广告加载失败！"));
            return;
        }
        com.aggmoread.sdk.z.c.a.a.e.e.b(this.C, "s = " + view + ",f = " + this.f4910h.f4958n);
        com.aggmoread.sdk.z.c.a.a.d.a.d.w.b.a(this.f4911i, this.f4914l, new C0181a());
    }

    @Override // com.aggmoread.sdk.z.c.a.a.d.a.d.k, com.aggmoread.sdk.z.c.a.a.d.b.a
    public void b(int i10, int i11, String str) {
        com.aggmoread.sdk.z.c.a.a.d.a.d.w.b.a(this.E, i11);
    }

    @Override // com.aggmoread.sdk.z.c.a.a.d.a.d.k, com.aggmoread.sdk.z.c.a.a.d.b.a
    public void c(int i10) {
        super.c(i10);
        com.aggmoread.sdk.z.c.a.a.d.a.d.w.b.b(this.E, this.F);
    }

    @Override // com.aggmoread.sdk.z.c.a.a.d.a.d.k, com.aggmoread.sdk.z.c.a.a.c.a
    public Map<String, Object> h() {
        return this.f4909g;
    }

    @Override // com.aggmoread.sdk.z.c.a.a.d.b.a
    protected String j() {
        return com.aggmoread.sdk.z.c.a.a.d.a.d.w.b.a().a(this.E);
    }

    @Override // com.kwad.sdk.api.KsSplashScreenAd.SplashScreenAdInteractionListener
    public void onAdClicked() {
        com.aggmoread.sdk.z.c.a.a.e.e.b(this.C, "onAdClicked");
        q();
    }

    @Override // com.kwad.sdk.api.KsSplashScreenAd.SplashScreenAdInteractionListener
    public void onAdShowEnd() {
        com.aggmoread.sdk.z.c.a.a.e.e.b(this.C, "onAdShowEnd");
        w();
    }

    @Override // com.kwad.sdk.api.KsSplashScreenAd.SplashScreenAdInteractionListener
    public void onAdShowError(int i10, String str) {
        com.aggmoread.sdk.z.c.a.a.e.e.b(this.C, "onAdShowError");
        b(new j(i10, str));
    }

    @Override // com.kwad.sdk.api.KsSplashScreenAd.SplashScreenAdInteractionListener
    public void onAdShowStart() {
        com.aggmoread.sdk.z.c.a.a.e.e.b(this.C, "onAdShowStart");
        s();
    }

    @Override // com.kwad.sdk.api.KsSplashScreenAd.SplashScreenAdInteractionListener
    public void onDownloadTipsDialogCancel() {
        com.aggmoread.sdk.z.c.a.a.e.e.b(this.C, "onDownloadTipsDialogCancel");
    }

    @Override // com.kwad.sdk.api.KsSplashScreenAd.SplashScreenAdInteractionListener
    public void onDownloadTipsDialogDismiss() {
        com.aggmoread.sdk.z.c.a.a.e.e.b(this.C, "onDownloadTipsDialogDismiss");
    }

    @Override // com.kwad.sdk.api.KsSplashScreenAd.SplashScreenAdInteractionListener
    public void onDownloadTipsDialogShow() {
        com.aggmoread.sdk.z.c.a.a.e.e.b(this.C, "onDownloadTipsDialogShow");
    }

    @Override // com.kwad.sdk.api.KsLoadManager.SplashScreenAdListener
    public void onError(int i10, String str) {
        com.aggmoread.sdk.z.c.a.a.e.e.b(this.C, "onError i " + i10 + ", s = " + str);
        new Exception("splash err ").printStackTrace();
        b(new j(i10, str));
    }

    @Override // com.kwad.sdk.api.KsLoadManager.SplashScreenAdListener
    public void onRequestResult(int i10) {
        com.aggmoread.sdk.z.c.a.a.e.e.b(this.C, "onRequestResult " + i10);
    }

    @Override // com.kwad.sdk.api.KsSplashScreenAd.SplashScreenAdInteractionListener
    public void onSkippedAd() {
        com.aggmoread.sdk.z.c.a.a.e.e.b(this.C, "onSkippedAd");
        w();
    }

    @Override // com.kwad.sdk.api.KsLoadManager.SplashScreenAdListener
    public void onSplashScreenAdLoad(@Nullable KsSplashScreenAd ksSplashScreenAd) {
        com.aggmoread.sdk.z.c.a.a.e.e.b(this.C, "onSplashScreenAdLoad " + ksSplashScreenAd);
        if (ksSplashScreenAd == null) {
            b(new j(1001004001, "广告无填充"));
            return;
        }
        int iA = com.aggmoread.sdk.z.c.a.a.d.a.d.w.b.a((Object) ksSplashScreenAd);
        if (com.aggmoread.sdk.z.c.a.a.d.a.d.w.b.a(this.f4911i, iA)) {
            a(iA, 0);
            return;
        }
        b(iA);
        this.E = ksSplashScreenAd;
        this.F = iA;
        com.aggmoread.sdk.z.c.a.a.d.a.d.w.b.b(this.f4909g, iA, this.f4911i);
        ArrayList arrayList = new ArrayList();
        arrayList.add(this);
        f(arrayList);
    }

    @Override // com.aggmoread.sdk.z.c.a.a.d.a.d.k
    public void b(ViewGroup viewGroup) {
        com.aggmoread.sdk.z.c.a.a.e.e.b(this.C, "showAd");
        if (this.D.compareAndSet(false, true)) {
            v();
            if (viewGroup == null || this.E == null) {
                return;
            }
            com.aggmoread.sdk.z.c.a.a.e.e.b(this.C, "showAd show");
            View view = this.E.getView(viewGroup.getContext(), this);
            if (view != null) {
                viewGroup.addView(view, new ViewGroup.LayoutParams(-1, -1));
            }
        }
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // com.aggmoread.sdk.z.c.a.a.d.a.d.k
    public void a(com.aggmoread.sdk.z.c.a.a.d.b.o.a aVar) {
        q.a(new b(aVar), 500L);
    }
}
