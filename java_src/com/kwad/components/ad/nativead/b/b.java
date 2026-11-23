package com.kwad.components.ad.nativead.b;

import android.text.TextUtils;
import android.widget.ImageView;
import com.kwad.components.core.video.l;
import com.kwad.components.core.video.m;
import com.kwad.sdk.R;
import com.kwad.sdk.core.imageloader.KSImageLoader;

/* JADX INFO: loaded from: classes2.dex */
public final class b extends com.kwad.components.ad.nativead.a.a {

    /* JADX INFO: renamed from: ea, reason: collision with root package name */
    private ImageView f75164ea;

    /* JADX INFO: renamed from: eb, reason: collision with root package name */
    private com.kwad.sdk.core.response.model.b f75165eb;

    /* JADX INFO: renamed from: ec, reason: collision with root package name */
    private Runnable f75166ec = new Runnable() { // from class: com.kwad.components.ad.nativead.b.b.2
        @Override // java.lang.Runnable
        public final void run() {
            com.kwad.sdk.c.a.a.d(b.this.f75164ea, b.this.f75165eb.getWidth(), b.this.f75165eb.getHeight());
            b.this.f75164ea.setImageDrawable(null);
            KSImageLoader.loadImage(b.this.f75164ea, b.this.f75165eb.getUrl(), b.this.pW.mAdTemplate);
        }
    };

    @Override // com.kwad.components.ad.nativead.a.a, com.kwad.sdk.mvp.Presenter
    public final void ay() {
        super.ay();
        com.kwad.sdk.core.response.model.b bVarBA = com.kwad.sdk.core.response.helper.a.bA(com.kwad.sdk.core.response.helper.e.eO(this.pW.mAdTemplate));
        this.f75165eb = bVarBA;
        if (TextUtils.isEmpty(bVarBA.getUrl())) {
            return;
        }
        getRootView().post(this.f75166ec);
        this.f75164ea.setVisibility(0);
        m mVar = new m() { // from class: com.kwad.components.ad.nativead.b.b.1
            @Override // com.kwad.components.core.video.m, com.kwad.components.core.video.i
            public final void onMediaPlaying() {
                super.onMediaPlaying();
                if (b.this.f75164ea.getVisibility() == 0) {
                    b.this.f75164ea.setVisibility(8);
                }
            }
        };
        this.mVideoPlayStateListener = mVar;
        this.pW.pX.b((l) mVar);
    }

    @Override // com.kwad.sdk.mvp.Presenter
    public final void onCreate() {
        super.onCreate();
        this.f75164ea = (ImageView) findViewById(R.id.ksad_video_first_frame);
    }

    @Override // com.kwad.components.ad.nativead.a.a, com.kwad.sdk.mvp.Presenter
    public final void onUnbind() {
        super.onUnbind();
        getRootView().removeCallbacks(this.f75166ec);
    }
}
