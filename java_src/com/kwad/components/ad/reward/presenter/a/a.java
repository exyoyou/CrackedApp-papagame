package com.kwad.components.ad.reward.presenter.a;

import androidx.annotation.Nullable;
import com.kwad.components.ad.reward.k.q;
import com.kwad.components.ad.reward.presenter.f.g;
import com.kwad.components.core.video.m;
import com.kwad.components.core.webview.jshandler.ae;
import com.kwad.components.core.webview.jshandler.az;
import com.kwad.components.core.webview.tachikoma.TKRenderFailReason;
import com.kwad.components.core.webview.tachikoma.b.o;
import com.kwad.components.core.webview.tachikoma.b.p;
import com.kwad.components.core.webview.tachikoma.c.n;
import com.kwad.components.core.webview.tachikoma.c.u;
import com.kwad.components.core.webview.tachikoma.i;
import com.kwad.components.core.webview.tachikoma.j;
import com.kwad.sdk.R;
import com.kwad.sdk.commercial.model.WebCloseStatus;
import com.kwad.sdk.components.t;
import com.kwad.sdk.core.d.c;
import com.kwad.sdk.core.response.helper.b;
import com.kwad.sdk.core.response.helper.e;
import com.kwad.sdk.core.response.model.AdInfo;
import com.kwad.sdk.core.response.model.AdTemplate;
import com.kwad.sdk.utils.as;
import com.kwad.sdk.utils.bt;
import com.kwad.sdk.utils.cb;

/* JADX INFO: loaded from: classes2.dex */
public final class a extends g implements j {
    private i go;
    private AdInfo mAdInfo;

    /* JADX INFO: renamed from: ya, reason: collision with root package name */
    private long f75235ya;

    /* JADX INFO: renamed from: yb, reason: collision with root package name */
    private long f75236yb;

    /* JADX INFO: renamed from: yc, reason: collision with root package name */
    private boolean f75237yc;
    private boolean yd;
    private com.kwad.components.ad.reward.g.b ye = new com.kwad.components.ad.reward.g.b() { // from class: com.kwad.components.ad.reward.presenter.a.a.1
        @Override // com.kwad.components.ad.reward.g.b
        public final boolean interceptPlayCardResume() {
            return a.this.Ba != null && a.this.Ba.getVisibility() == 0;
        }
    };
    private final m kf = new m() { // from class: com.kwad.components.ad.reward.presenter.a.a.2
        @Override // com.kwad.components.core.video.m, com.kwad.components.core.video.i
        public final void onMediaPlayProgress(long j10, long j11) {
            super.onMediaPlayProgress(j10, j11);
            long jH = com.kwad.components.ad.reward.g.h(a.this.mAdInfo);
            if (j11 <= a.this.f75235ya || jH - j11 <= a.this.f75236yb || a.this.f75237yc) {
                return;
            }
            a.a(a.this, true);
            a.this.go.a(a.this.uj.getActivity(), a.this.uj.mAdResultData, a.this);
        }
    };

    private i jk() {
        return new i(-1L, getContext());
    }

    @Override // com.kwad.components.ad.reward.presenter.f.d, com.kwad.components.core.webview.tachikoma.j
    public final void a(az azVar) {
    }

    @Override // com.kwad.components.ad.reward.presenter.f.d, com.kwad.components.core.webview.tachikoma.j
    public final void aE() {
        c.d("TkRewardInteractPresenter", "onTkLoadSuccess: ");
        getContext();
        if (as.VM()) {
            this.Ba.setVisibility(0);
            com.kwad.components.ad.reward.d.a.S(this.uj.mContext);
            this.uj.sz.pause();
            this.yd = true;
        }
    }

    @Override // com.kwad.components.ad.reward.presenter.f.d, com.kwad.components.core.webview.tachikoma.j
    public final void aF() {
    }

    @Override // com.kwad.components.ad.reward.presenter.f.d, com.kwad.components.ad.reward.presenter.b, com.kwad.sdk.mvp.Presenter
    public final void ay() {
        super.ay();
        if (this.go == null) {
            this.go = jk();
        }
        AdInfo adInfoEO = e.eO(this.uj.mAdTemplate);
        this.mAdInfo = adInfoEO;
        this.f75235ya = ((long) com.kwad.sdk.core.response.helper.a.aP(adInfoEO)) * 1000;
        this.f75236yb = ((long) com.kwad.sdk.core.response.helper.a.aQ(this.mAdInfo)) * 1000;
        this.uj.sz.a(this.kf);
        this.uj.a(this.ye);
    }

    @Override // com.kwad.components.ad.reward.presenter.f.d, com.kwad.components.core.webview.tachikoma.j
    public final void g(AdTemplate adTemplate) {
    }

    @Override // com.kwad.components.core.webview.tachikoma.j
    public final String getTKReaderScene() {
        return "tk_reward_interact_card";
    }

    @Override // com.kwad.components.core.webview.tachikoma.j
    public final String getTkTemplateId() {
        return b.et(this.uj.mAdTemplate);
    }

    @Override // com.kwad.components.ad.reward.presenter.f.d, com.kwad.components.core.webview.tachikoma.j
    public final com.kwad.sdk.widget.g getTouchCoordsView() {
        return this.uj.mRootContainer;
    }

    @Override // com.kwad.components.ad.reward.presenter.f.g
    public final int jj() {
        return R.id.ksad_js_interact;
    }

    @Override // com.kwad.components.ad.reward.presenter.f.d, com.kwad.sdk.mvp.Presenter
    public final void onUnbind() {
        super.onUnbind();
        this.uj.sz.b(this.kf);
        this.uj.b(this.ye);
        this.go.kV();
        this.go = null;
        this.Ba.setVisibility(8);
        this.f75237yc = false;
        this.yd = false;
    }

    @Override // com.kwad.components.ad.reward.presenter.f.d, com.kwad.components.core.webview.tachikoma.j
    public final void a(o oVar) {
    }

    @Override // com.kwad.components.ad.reward.presenter.f.d, com.kwad.components.core.webview.tachikoma.j
    public final void a(p pVar) {
    }

    @Override // com.kwad.components.ad.reward.presenter.f.d, com.kwad.components.core.webview.tachikoma.j
    public final void a(n nVar) {
    }

    @Override // com.kwad.components.ad.reward.presenter.f.d, com.kwad.components.core.webview.tachikoma.j
    public final void a(u uVar) {
    }

    @Override // com.kwad.components.ad.reward.presenter.f.d, com.kwad.components.core.webview.tachikoma.j
    public final void a(@Nullable com.kwad.sdk.core.webview.d.b.a aVar) {
    }

    static /* synthetic */ boolean a(a aVar, boolean z10) {
        aVar.f75237yc = true;
        return true;
    }

    @Override // com.kwad.components.ad.reward.presenter.f.d, com.kwad.components.core.webview.tachikoma.j
    public final void a(TKRenderFailReason tKRenderFailReason) {
        c.d("TkRewardInteractPresenter", "onTkLoadFailed: ");
        this.Ba.setVisibility(8);
    }

    @Override // com.kwad.components.ad.reward.presenter.f.d, com.kwad.components.core.webview.tachikoma.j
    public final void a(t tVar, com.kwad.sdk.core.webview.b bVar) {
        com.kwad.components.ad.reward.g gVar = this.uj;
        tVar.c(new q(bVar, gVar.mApkDownloadHelper, gVar, -1L, new com.kwad.sdk.core.webview.d.a.a() { // from class: com.kwad.components.ad.reward.presenter.a.a.3
            @Override // com.kwad.sdk.core.webview.d.a.a
            public final void a(@Nullable com.kwad.sdk.core.webview.d.b.a aVar) {
                if (a.this.uj.sy != null) {
                    a.this.uj.sy.dc();
                }
            }
        }, null));
    }

    @Override // com.kwad.components.core.webview.tachikoma.j
    public final void a(ae.a aVar) {
        float fBB = com.kwad.sdk.c.a.a.bB(getContext());
        aVar.width = (int) ((bt.getScreenWidth(getContext()) / fBB) + 0.5f);
        aVar.height = (int) ((bt.getScreenHeight(getContext()) / fBB) + 0.5f);
    }

    @Override // com.kwad.components.ad.reward.presenter.f.d, com.kwad.components.core.webview.tachikoma.j
    public final void a(WebCloseStatus webCloseStatus) {
        com.kwad.components.ad.reward.g gVar = this.uj;
        boolean z10 = webCloseStatus != null && webCloseStatus.interactSuccess;
        gVar.sR = z10;
        if (z10) {
            gVar.sz.lp();
        }
        if (this.yd && cb.r(this.Ba, 30)) {
            this.uj.sz.resume();
        }
        this.Ba.setVisibility(8);
    }
}
