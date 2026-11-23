package com.kwad.components.ad.reward.presenter.d.a;

import android.widget.FrameLayout;
import com.kwad.components.ad.reward.e.g;
import com.kwad.components.ad.reward.presenter.f;
import com.kwad.components.core.video.m;
import com.kwad.sdk.R;
import com.kwad.sdk.core.response.model.AdTemplate;

/* JADX INFO: loaded from: classes2.dex */
public final class a extends com.kwad.components.ad.reward.presenter.b implements com.kwad.components.ad.l.a.b {
    private FrameLayout fu;
    private m wO;
    private volatile long zV = 0;
    private volatile boolean zW = false;
    private m wP = new m() { // from class: com.kwad.components.ad.reward.presenter.d.a.a.1
        @Override // com.kwad.components.core.video.m, com.kwad.components.core.video.h
        public final void onLivePlayResume() {
            super.onLivePlayResume();
            a.this.zW = false;
        }

        @Override // com.kwad.components.core.video.m, com.kwad.components.core.video.i
        public final void onMediaPlayCompleted() {
            super.onMediaPlayCompleted();
            a.this.zW = true;
        }

        @Override // com.kwad.components.core.video.m, com.kwad.components.core.video.i
        public final void onMediaPlayProgress(long j10, long j11) {
            super.onMediaPlayProgress(j10, j11);
            a.this.zV = j11;
        }

        @Override // com.kwad.components.core.video.m, com.kwad.components.core.video.i
        public final void onMediaPlayStart() {
            super.onMediaPlayStart();
            a.this.zW = false;
        }
    };
    private m kf = new m() { // from class: com.kwad.components.ad.reward.presenter.d.a.a.2
        @Override // com.kwad.components.core.video.m, com.kwad.components.core.video.i
        public final void onMediaPlayProgress(long j10, long j11) {
            super.onMediaPlayProgress(j10, j11);
            a.this.zV = j11;
            a.this.zW = j10 - j11 < 800;
        }
    };
    private g mPlayEndPageListener = new com.kwad.components.ad.reward.e.a() { // from class: com.kwad.components.ad.reward.presenter.d.a.a.4
        @Override // com.kwad.components.ad.reward.e.g
        public final void dd() {
            if (a.this.uj.th || a.this.uj.sD == null) {
                return;
            }
            a.this.uj.sD.bc();
        }
    };
    private com.kwad.sdk.core.webview.d.a.a fl = new com.kwad.sdk.core.webview.d.a.a() { // from class: com.kwad.components.ad.reward.presenter.d.a.a.5
        @Override // com.kwad.sdk.core.webview.d.a.a
        public final void a(com.kwad.sdk.core.webview.d.b.a aVar) {
            a.this.uj.sy.dc();
        }
    };

    @Override // com.kwad.components.ad.reward.presenter.b, com.kwad.sdk.mvp.Presenter
    public final void ay() {
        super.ay();
        this.zV = 0L;
        this.zW = false;
        com.kwad.components.ad.reward.g gVar = this.uj;
        AdTemplate adTemplate = gVar.mAdTemplate;
        com.kwad.components.ad.l.a aVar = gVar.sD;
        this.wO = gVar.sz.ls() ? this.wP : this.kf;
        if (aVar != null) {
            this.uj.f75185tb = true;
            aVar.a(this);
            aVar.a(this.fl);
            aVar.a(this.fu, this.uj.mRootContainer, adTemplate);
            aVar.a(new com.kwad.components.ad.l.a.InterfaceC0805a() { // from class: com.kwad.components.ad.reward.presenter.d.a.a.3
                @Override // com.kwad.components.ad.l.a.InterfaceC0805a
                public final void T(boolean z10) {
                    a.this.uj.f75185tb = z10;
                }
            });
            aVar.setActivity(this.uj.getActivity());
            aVar.bj();
            this.uj.b(this.mPlayEndPageListener);
            this.uj.sz.a(this.wO);
        }
    }

    @Override // com.kwad.components.ad.l.a.b
    public final void jS() {
        f.t(this.uj);
    }

    @Override // com.kwad.sdk.mvp.Presenter
    public final void onCreate() {
        super.onCreate();
        this.fu = (FrameLayout) findViewById(R.id.ksad_landing_page_container);
    }

    @Override // com.kwad.sdk.mvp.Presenter
    public final void onUnbind() {
        super.onUnbind();
        this.uj.c(this.mPlayEndPageListener);
        this.uj.sz.b(this.wO);
    }
}
