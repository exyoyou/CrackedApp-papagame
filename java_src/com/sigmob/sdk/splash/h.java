package com.sigmob.sdk.splash;

import android.content.Context;
import android.media.MediaPlayer;
import android.view.ViewGroup;
import android.widget.RelativeLayout;
import com.czhj.sdk.logger.SigmobLog;
import com.sigmob.sdk.base.common.BaseBroadcastReceiver;
import com.sigmob.sdk.base.models.BaseAdUnit;
import com.sigmob.sdk.base.models.IntentActions;

/* JADX INFO: loaded from: classes3.dex */
class h extends b {

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private final com.sigmob.sdk.base.views.b f81709b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    private final BaseAdUnit f81710c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    private boolean f81711d;

    public h(Context context, BaseAdUnit adUnit) {
        super(context);
        ViewGroup.LayoutParams layoutParams = new RelativeLayout.LayoutParams(-1, -1);
        com.sigmob.sdk.base.views.b bVar = new com.sigmob.sdk.base.views.b(context);
        this.f81709b = bVar;
        setBackgroundColor(-16777216);
        this.f81710c = adUnit;
        addView(bVar, layoutParams);
    }

    @Override // com.sigmob.sdk.splash.b
    public void a() {
        super.setVisibility(0);
        SigmobLog.i("video showAd");
        this.f81709b.setVisibility(0);
        this.f81709b.d();
    }

    @Override // com.sigmob.sdk.splash.b
    public void b() {
        this.f81709b.a();
    }

    @Override // com.sigmob.sdk.splash.b
    public void c() {
        this.f81709b.b();
    }

    @Override // android.view.View
    public void setVisibility(int visibility) {
        if (visibility == 8) {
            try {
                if (this.f81709b != null) {
                    SigmobLog.i("video GONE");
                    this.f81709b.c();
                    removeAllViews();
                }
            } catch (Throwable th) {
                SigmobLog.e("set splash ad video content error: " + th.getMessage());
            }
        }
        super.setVisibility(visibility);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void a(b.a aVar, MediaPlayer mediaPlayer) {
        this.f81680a = mediaPlayer.getDuration() / 1000;
        mediaPlayer.setVolume(0.0f, 0.0f);
        mediaPlayer.start();
        if (this.f81711d || this.f81710c == null) {
            return;
        }
        this.f81711d = true;
        SigmobLog.i("video onPrepared");
        if (com.sigmob.sdk.base.utils.w.b(aVar)) {
            aVar.onAdWillShow();
        }
        BaseBroadcastReceiver.a(getContext(), this.f81710c.getUuid(), IntentActions.ACTION_INTERSTITIAL_SHOW);
    }

    @Override // com.sigmob.sdk.splash.b
    public boolean a(BaseAdUnit adUnit, final b.a listener) {
        String str;
        if (adUnit == null) {
            str = "adUnit is null.";
        } else {
            String splashFilePath = adUnit.getSplashFilePath();
            if (splashFilePath != null) {
                this.f81709b.a(0, 0);
                this.f81709b.setOnPreparedListener(new MediaPlayer.OnPreparedListener() { // from class: com.sigmob.sdk.splash.t
                    @Override // android.media.MediaPlayer.OnPreparedListener
                    public final void onPrepared(MediaPlayer mediaPlayer) {
                        this.f81761b.a(listener, mediaPlayer);
                    }
                });
                this.f81709b.setVideoPath(splashFilePath);
                return true;
            }
            str = "filePath is null.";
        }
        SigmobLog.e(str);
        return false;
    }
}
