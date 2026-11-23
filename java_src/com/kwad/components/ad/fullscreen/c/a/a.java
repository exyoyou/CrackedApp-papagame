package com.kwad.components.ad.fullscreen.c.a;

import android.os.Message;
import android.view.View;
import android.view.ViewGroup;
import android.widget.TextView;
import com.kwad.components.core.video.m;
import com.kwad.sdk.R;
import com.kwad.sdk.core.response.model.AdInfo;
import com.kwad.sdk.utils.cc;

/* JADX INFO: loaded from: classes2.dex */
public final class a extends com.kwad.components.ad.reward.presenter.b implements cc.a {

    /* JADX INFO: renamed from: ca, reason: collision with root package name */
    private cc f75139ca;
    private m kf = new m() { // from class: com.kwad.components.ad.fullscreen.c.a.a.1
        @Override // com.kwad.components.core.video.m, com.kwad.components.core.video.h
        public final void onLivePlayEnd() {
            super.onLivePlayEnd();
            if (a.this.kx) {
                return;
            }
            a.this.f75139ca.sendEmptyMessageDelayed(1, 500L);
        }

        @Override // com.kwad.components.core.video.m, com.kwad.components.core.video.i
        public final void onMediaPlayProgress(long j10, long j11) {
            if (!a.this.uj.sz.ls()) {
                a.this.a(j10, j11);
                a.this.ky = j11;
            } else if (j11 > 800) {
                a.this.ky = j11;
                if (a.this.ky > j10) {
                    a.this.kv.setVisibility(8);
                    ViewGroup.MarginLayoutParams marginLayoutParams = (ViewGroup.MarginLayoutParams) a.this.kw.getLayoutParams();
                    marginLayoutParams.leftMargin = com.kwad.sdk.c.a.a.a(a.this.getContext(), 0.0f);
                    a.this.kw.setLayoutParams(marginLayoutParams);
                }
                a.this.a(j10, j11);
                a.a(a.this, true);
            }
        }
    };
    private TextView kv;
    private View kw;
    private boolean kx;
    private long ky;
    private AdInfo mAdInfo;

    private void R(int i10) {
        this.kv.setText(String.valueOf(i10));
    }

    private void ds() {
        AdInfo adInfoEO = com.kwad.sdk.core.response.helper.e.eO(this.uj.mAdTemplate);
        this.mAdInfo = adInfoEO;
        this.kv.setText(String.valueOf(com.kwad.sdk.core.response.helper.a.N(adInfoEO)));
        this.kv.setVisibility(0);
        this.uj.sz.a(this.kf);
    }

    @Override // com.kwad.components.ad.reward.presenter.b, com.kwad.sdk.mvp.Presenter
    public final void ay() {
        super.ay();
        this.f75139ca = new cc(this);
        ds();
        if (this.uj.sz.ls()) {
            R(30);
        }
    }

    @Override // com.kwad.sdk.mvp.Presenter
    public final void onCreate() {
        super.onCreate();
        this.kv = (TextView) findViewById(R.id.ksad_video_count_down);
        this.kw = findViewById(R.id.ksad_video_sound_switch);
    }

    @Override // com.kwad.sdk.mvp.Presenter
    public final void onUnbind() {
        super.onUnbind();
        this.uj.sz.b(this.kf);
        this.kx = false;
        this.f75139ca.removeCallbacksAndMessages(null);
    }

    static /* synthetic */ boolean a(a aVar, boolean z10) {
        aVar.kx = true;
        return true;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void a(long j10, long j11) {
        int i10 = (int) (((j10 - j11) / 1000.0f) + 0.5f);
        if (i10 <= 0) {
            i10 = 1;
        }
        R(i10);
    }

    @Override // com.kwad.sdk.utils.cc.a
    public final void a(Message message) {
        if (message.what == 1) {
            if (!this.uj.hh() && !this.uj.hg()) {
                long j10 = this.ky + 500;
                this.ky = j10;
                if (j10 > 30000) {
                    this.kv.setVisibility(8);
                    ViewGroup.MarginLayoutParams marginLayoutParams = (ViewGroup.MarginLayoutParams) this.kw.getLayoutParams();
                    marginLayoutParams.leftMargin = com.kwad.sdk.c.a.a.a(getContext(), 0.0f);
                    this.kw.setLayoutParams(marginLayoutParams);
                    return;
                }
                a(30000L, j10);
                this.f75139ca.sendEmptyMessageDelayed(1, 500L);
                return;
            }
            this.f75139ca.sendEmptyMessageDelayed(1, 500L);
        }
    }
}
