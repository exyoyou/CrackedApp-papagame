package com.papa.gsyvideoplayer;

import android.content.res.Configuration;
import android.os.Bundle;
import android.view.View;
import androidx.appcompat.app.AppCompatActivity;
import com.papa.gsyvideoplayer.utils.m;
import com.papa.gsyvideoplayer.utils.n;
import com.papa.gsyvideoplayer.video.base.GSYBaseVideoPlayer;
import v7.h;

/* JADX INFO: loaded from: classes2.dex */
public abstract class GSYBaseActivityDetail<T extends GSYBaseVideoPlayer> extends AppCompatActivity implements h {
    protected boolean isPause;
    protected boolean isPlay;
    protected n orientationUtils;

    class a implements View.OnClickListener {
        a() {
        }

        @Override // android.view.View.OnClickListener
        public void onClick(View view) {
            GSYBaseActivityDetail.this.showFull();
            GSYBaseActivityDetail.this.clickForFullScreen();
        }
    }

    public abstract void clickForFullScreen();

    public abstract boolean getDetailOrientationRotateAuto();

    public abstract com.papa.gsyvideoplayer.builder.a getGSYVideoOptionBuilder();

    public abstract T getGSYVideoPlayer();

    public m getOrientationOption() {
        return null;
    }

    public boolean hideActionBarWhenFull() {
        return true;
    }

    public boolean hideStatusBarWhenFull() {
        return true;
    }

    public void initVideo() {
        n nVar = new n(this, getGSYVideoPlayer(), getOrientationOption());
        this.orientationUtils = nVar;
        nVar.I(false);
        if (getGSYVideoPlayer().getFullscreenButton() != null) {
            getGSYVideoPlayer().getFullscreenButton().setOnClickListener(new a());
        }
    }

    public void initVideoBuilderMode() {
        initVideo();
        getGSYVideoOptionBuilder().T(this).b(getGSYVideoPlayer());
    }

    public boolean isAutoFullWithSize() {
        return false;
    }

    @Override // v7.h
    public void onAutoComplete(String str, Object... objArr) {
    }

    @Override // androidx.activity.ComponentActivity, android.app.Activity
    public void onBackPressed() {
        n nVar = this.orientationUtils;
        if (nVar != null) {
            nVar.q();
        }
        if (d.c0(this)) {
            return;
        }
        super.onBackPressed();
    }

    @Override // v7.h
    public void onClickBlank(String str, Object... objArr) {
    }

    @Override // v7.h
    public void onClickBlankFullscreen(String str, Object... objArr) {
    }

    @Override // v7.h
    public void onClickResume(String str, Object... objArr) {
    }

    @Override // v7.h
    public void onClickResumeFullscreen(String str, Object... objArr) {
    }

    @Override // v7.h
    public void onClickSeekbar(String str, Object... objArr) {
    }

    @Override // v7.h
    public void onClickSeekbarFullscreen(String str, Object... objArr) {
    }

    @Override // v7.h
    public void onClickStartError(String str, Object... objArr) {
    }

    @Override // v7.h
    public void onClickStartIcon(String str, Object... objArr) {
    }

    @Override // v7.h
    public void onClickStartThumb(String str, Object... objArr) {
    }

    @Override // v7.h
    public void onClickStop(String str, Object... objArr) {
    }

    @Override // v7.h
    public void onClickStopFullscreen(String str, Object... objArr) {
    }

    @Override // androidx.appcompat.app.AppCompatActivity, androidx.activity.ComponentActivity, android.app.Activity, android.content.ComponentCallbacks
    public void onConfigurationChanged(Configuration configuration) {
        super.onConfigurationChanged(configuration);
        if (!this.isPlay || this.isPause) {
            return;
        }
        getGSYVideoPlayer().onConfigurationChanged(this, configuration, this.orientationUtils, hideActionBarWhenFull(), hideStatusBarWhenFull());
    }

    @Override // androidx.fragment.app.FragmentActivity, androidx.activity.ComponentActivity, androidx.core.app.ComponentActivity, android.app.Activity
    protected void onCreate(Bundle bundle) {
        super.onCreate(bundle);
    }

    @Override // androidx.appcompat.app.AppCompatActivity, androidx.fragment.app.FragmentActivity, android.app.Activity
    protected void onDestroy() {
        super.onDestroy();
        if (this.isPlay) {
            getGSYVideoPlayer().getCurrentPlayer().release();
        }
        n nVar = this.orientationUtils;
        if (nVar != null) {
            nVar.D();
        }
    }

    public void onEnterFullscreen(String str, Object... objArr) {
    }

    @Override // v7.h
    public void onEnterSmallWidget(String str, Object... objArr) {
    }

    @Override // androidx.fragment.app.FragmentActivity, android.app.Activity
    protected void onPause() {
        super.onPause();
        getGSYVideoPlayer().getCurrentPlayer().onVideoPause();
        n nVar = this.orientationUtils;
        if (nVar != null) {
            nVar.K(true);
        }
        this.isPause = true;
    }

    @Override // v7.h
    public void onPlayError(String str, Object... objArr) {
    }

    public void onPrepared(String str, Object... objArr) {
        n nVar = this.orientationUtils;
        if (nVar == null) {
            throw new NullPointerException("initVideo() or initVideoBuilderMode() first");
        }
        nVar.I(getDetailOrientationRotateAuto() && !isAutoFullWithSize());
        this.isPlay = true;
    }

    @Override // v7.h
    public void onQuitFullscreen(String str, Object... objArr) {
        n nVar = this.orientationUtils;
        if (nVar != null) {
            nVar.q();
        }
    }

    @Override // v7.h
    public void onQuitSmallWidget(String str, Object... objArr) {
    }

    @Override // androidx.fragment.app.FragmentActivity, android.app.Activity
    protected void onResume() {
        super.onResume();
        getGSYVideoPlayer().getCurrentPlayer().onVideoResume();
        n nVar = this.orientationUtils;
        if (nVar != null) {
            nVar.K(false);
        }
        this.isPause = false;
    }

    public void onStartPrepared(String str, Object... objArr) {
    }

    @Override // v7.h
    public void onTouchScreenSeekLight(String str, Object... objArr) {
    }

    @Override // v7.h
    public void onTouchScreenSeekPosition(String str, Object... objArr) {
    }

    @Override // v7.h
    public void onTouchScreenSeekVolume(String str, Object... objArr) {
    }

    public void showFull() {
        if (this.orientationUtils.r() != 1) {
            this.orientationUtils.E();
        }
        getGSYVideoPlayer().startWindowFullscreen(this, hideActionBarWhenFull(), hideStatusBarWhenFull());
    }
}
