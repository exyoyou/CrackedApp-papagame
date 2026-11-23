package com.kwad.components.ad.nativead.a;

import android.view.View;
import com.kwad.components.core.video.l;
import com.kwad.sdk.mvp.Presenter;
import com.kwad.sdk.service.ServiceProvider;

/* JADX INFO: loaded from: classes2.dex */
public class a extends Presenter {
    public l mVideoPlayStateListener;
    public b pW;

    protected static void a(View view, String str) {
        if (view == null) {
            ServiceProvider.reportSdkCaughtException(new RuntimeException(" findViewById failed " + str));
        }
    }

    @Override // com.kwad.sdk.mvp.Presenter
    public void ay() {
        super.ay();
        this.pW = (b) SB();
    }

    @Override // com.kwad.sdk.mvp.Presenter
    public void onUnbind() {
        super.onUnbind();
        this.pW.pX.a(this.mVideoPlayStateListener);
    }
}
