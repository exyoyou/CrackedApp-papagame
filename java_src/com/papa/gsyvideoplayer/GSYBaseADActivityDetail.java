package com.papa.gsyvideoplayer;

import android.content.res.Configuration;
import android.view.View;
import com.papa.gsyvideoplayer.utils.m;
import com.papa.gsyvideoplayer.utils.n;
import com.papa.gsyvideoplayer.video.GSYADVideoPlayer;
import com.papa.gsyvideoplayer.video.base.GSYBaseVideoPlayer;
import com.papa.gsyvideoplayer.video.base.GSYVideoPlayer;

/* JADX INFO: loaded from: classes2.dex */
public abstract class GSYBaseADActivityDetail<T extends GSYBaseVideoPlayer, R extends GSYADVideoPlayer> extends GSYBaseActivityDetail<T> {
    protected n mADOrientationUtils;

    class a implements View.OnClickListener {
        a() {
        }

        @Override // android.view.View.OnClickListener
        public void onClick(View view) {
            GSYBaseADActivityDetail.this.showADFull();
            GSYBaseADActivityDetail.this.clickForFullScreen();
        }
    }

    class b extends v7.b {
        b() {
        }

        /* JADX WARN: Type inference failed for: r1v18, types: [com.papa.gsyvideoplayer.video.base.GSYBaseVideoPlayer] */
        /* JADX WARN: Type inference failed for: r1v23, types: [com.papa.gsyvideoplayer.video.base.GSYBaseVideoPlayer] */
        /* JADX WARN: Type inference failed for: r1v9, types: [com.papa.gsyvideoplayer.video.base.GSYBaseVideoPlayer] */
        @Override // v7.b, v7.h
        public void onAutoComplete(String str, Object... objArr) {
            GSYBaseADActivityDetail.this.getGSYADVideoPlayer().getCurrentPlayer().release();
            GSYBaseADActivityDetail.this.getGSYADVideoPlayer().onVideoReset();
            GSYBaseADActivityDetail.this.getGSYADVideoPlayer().setVisibility(8);
            GSYBaseADActivityDetail.this.getGSYVideoPlayer().getCurrentPlayer().startAfterPrepared();
            if (GSYBaseADActivityDetail.this.getGSYADVideoPlayer().getCurrentPlayer().isIfCurrentIsFullscreen()) {
                GSYBaseADActivityDetail.this.getGSYADVideoPlayer().g();
                if (GSYBaseADActivityDetail.this.getGSYVideoPlayer().getCurrentPlayer().isIfCurrentIsFullscreen()) {
                    return;
                }
                GSYBaseADActivityDetail.this.showFull();
                GSYBaseADActivityDetail.this.getGSYVideoPlayer().setSaveBeforeFullSystemUiVisibility(GSYBaseADActivityDetail.this.getGSYADVideoPlayer().getSaveBeforeFullSystemUiVisibility());
            }
        }

        /* JADX WARN: Type inference failed for: r1v4, types: [com.papa.gsyvideoplayer.video.base.GSYBaseVideoPlayer] */
        /* JADX WARN: Type inference failed for: r1v8, types: [com.papa.gsyvideoplayer.video.base.GSYBaseVideoPlayer] */
        @Override // v7.b, v7.h
        public void onQuitFullscreen(String str, Object... objArr) {
            n nVar = GSYBaseADActivityDetail.this.mADOrientationUtils;
            if (nVar != null) {
                nVar.q();
            }
            if (GSYBaseADActivityDetail.this.getGSYVideoPlayer().getCurrentPlayer().isIfCurrentIsFullscreen()) {
                GSYBaseADActivityDetail.this.getGSYVideoPlayer().onBackFullscreen();
            }
        }

        @Override // v7.b, v7.h
        public void onStartPrepared(String str, Object... objArr) {
            super.onStartPrepared(str, objArr);
            GSYBaseADActivityDetail gSYBaseADActivityDetail = GSYBaseADActivityDetail.this;
            gSYBaseADActivityDetail.mADOrientationUtils.I(gSYBaseADActivityDetail.getDetailOrientationRotateAuto());
        }
    }

    @Override // com.papa.gsyvideoplayer.GSYBaseActivityDetail
    public void clickForFullScreen() {
    }

    public abstract com.papa.gsyvideoplayer.builder.a getGSYADVideoOptionBuilder();

    public abstract R getGSYADVideoPlayer();

    @Override // com.papa.gsyvideoplayer.GSYBaseActivityDetail
    public m getOrientationOption() {
        return null;
    }

    @Override // com.papa.gsyvideoplayer.GSYBaseActivityDetail
    public void initVideo() {
        super.initVideo();
        n nVar = new n(this, getGSYADVideoPlayer(), getOrientationOption());
        this.mADOrientationUtils = nVar;
        nVar.I(false);
        if (getGSYADVideoPlayer().getFullscreenButton() != null) {
            getGSYADVideoPlayer().getFullscreenButton().setOnClickListener(new a());
        }
    }

    @Override // com.papa.gsyvideoplayer.GSYBaseActivityDetail
    public void initVideoBuilderMode() {
        super.initVideoBuilderMode();
        getGSYADVideoOptionBuilder().T(new b()).a(getGSYADVideoPlayer());
    }

    protected boolean isADStarted() {
        return (getGSYADVideoPlayer().getCurrentPlayer().getCurrentState() < 0 || getGSYADVideoPlayer().getCurrentPlayer().getCurrentState() == 0 || getGSYADVideoPlayer().getCurrentPlayer().getCurrentState() == 6) ? false : true;
    }

    public abstract boolean isNeedAdOnStart();

    @Override // com.papa.gsyvideoplayer.GSYBaseActivityDetail, androidx.activity.ComponentActivity, android.app.Activity
    public void onBackPressed() {
        n nVar = this.mADOrientationUtils;
        if (nVar != null) {
            nVar.q();
        }
        if (com.papa.gsyvideoplayer.b.c0(this)) {
            return;
        }
        super.onBackPressed();
    }

    @Override // com.papa.gsyvideoplayer.GSYBaseActivityDetail, androidx.appcompat.app.AppCompatActivity, androidx.activity.ComponentActivity, android.app.Activity, android.content.ComponentCallbacks
    public void onConfigurationChanged(Configuration configuration) {
        boolean z10 = this.isPlay;
        if (!this.isPause && getGSYADVideoPlayer().getVisibility() == 0 && isADStarted()) {
            this.isPlay = false;
            getGSYADVideoPlayer().getCurrentPlayer().onConfigurationChanged(this, configuration, this.mADOrientationUtils, hideActionBarWhenFull(), hideStatusBarWhenFull());
        }
        super.onConfigurationChanged(configuration);
        this.isPlay = z10;
    }

    @Override // com.papa.gsyvideoplayer.GSYBaseActivityDetail, androidx.appcompat.app.AppCompatActivity, androidx.fragment.app.FragmentActivity, android.app.Activity
    protected void onDestroy() {
        super.onDestroy();
        com.papa.gsyvideoplayer.b.i0();
        n nVar = this.mADOrientationUtils;
        if (nVar != null) {
            nVar.D();
        }
    }

    @Override // com.papa.gsyvideoplayer.GSYBaseActivityDetail, v7.h
    public void onEnterFullscreen(String str, Object... objArr) {
        super.onEnterFullscreen(str, objArr);
        ((GSYVideoPlayer) objArr[1]).getBackButton().setVisibility(8);
    }

    @Override // com.papa.gsyvideoplayer.GSYBaseActivityDetail, androidx.fragment.app.FragmentActivity, android.app.Activity
    protected void onPause() {
        super.onPause();
        com.papa.gsyvideoplayer.b.f0();
    }

    @Override // com.papa.gsyvideoplayer.GSYBaseActivityDetail, v7.h
    public void onPrepared(String str, Object... objArr) {
        super.onPrepared(str, objArr);
        if (isNeedAdOnStart()) {
            startAdPlay();
        }
    }

    @Override // com.papa.gsyvideoplayer.GSYBaseActivityDetail, androidx.fragment.app.FragmentActivity, android.app.Activity
    protected void onResume() {
        super.onResume();
        com.papa.gsyvideoplayer.b.g0();
    }

    @Override // com.papa.gsyvideoplayer.GSYBaseActivityDetail, v7.h
    public void onStartPrepared(String str, Object... objArr) {
        super.onStartPrepared(str, objArr);
    }

    public void showADFull() {
        if (this.mADOrientationUtils.r() != 1) {
            this.mADOrientationUtils.E();
        }
        getGSYADVideoPlayer().startWindowFullscreen(this, hideActionBarWhenFull(), hideStatusBarWhenFull());
    }

    @Override // com.papa.gsyvideoplayer.GSYBaseActivityDetail
    public void showFull() {
        if (this.orientationUtils.r() != 1) {
            this.orientationUtils.E();
        }
        getGSYVideoPlayer().startWindowFullscreen(this, hideActionBarWhenFull(), hideStatusBarWhenFull());
    }

    public void startAdPlay() {
        getGSYADVideoPlayer().setVisibility(0);
        getGSYADVideoPlayer().startPlayLogic();
        if (getGSYVideoPlayer().getCurrentPlayer().isIfCurrentIsFullscreen()) {
            showADFull();
            getGSYADVideoPlayer().setSaveBeforeFullSystemUiVisibility(getGSYVideoPlayer().getSaveBeforeFullSystemUiVisibility());
        }
    }
}
