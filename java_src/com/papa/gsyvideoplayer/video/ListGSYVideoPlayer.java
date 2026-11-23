package com.papa.gsyvideoplayer.video;

import android.content.Context;
import android.text.TextUtils;
import android.util.AttributeSet;
import android.view.View;
import android.view.ViewGroup;
import com.papa.gsyvideoplayer.model.b;
import com.papa.gsyvideoplayer.video.base.GSYBaseVideoPlayer;
import com.papa.gsyvideoplayer.video.base.GSYVideoPlayer;
import java.io.File;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.List;
import java.util.Map;
import moe.codeest.enviews.ENDownloadView;

/* JADX INFO: loaded from: classes2.dex */
public class ListGSYVideoPlayer extends StandardGSYVideoPlayer {

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    protected List<b> f77130b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    protected int f77131c;

    public ListGSYVideoPlayer(Context context, Boolean bool) {
        super(context, bool);
        this.f77130b = new ArrayList();
    }

    @Override // com.papa.gsyvideoplayer.video.StandardGSYVideoPlayer, com.papa.gsyvideoplayer.video.base.GSYVideoControlView
    protected void changeUiToNormal() {
        super.changeUiToNormal();
        if (!this.mHadPlay || this.f77131c >= this.f77130b.size()) {
            return;
        }
        setViewShowState(this.mThumbImageViewLayout, 8);
        setViewShowState(this.mTopContainer, 4);
        setViewShowState(this.mBottomContainer, 4);
        setViewShowState(this.mStartButton, 8);
        setViewShowState(this.mLoadingProgressBar, 0);
        setViewShowState(this.mBottomProgressBar, 4);
        setViewShowState(this.mLockScreen, 8);
        View view = this.mLoadingProgressBar;
        if (view instanceof ENDownloadView) {
            ((ENDownloadView) view).n();
        }
    }

    @Override // com.papa.gsyvideoplayer.video.StandardGSYVideoPlayer, com.papa.gsyvideoplayer.video.base.GSYBaseVideoPlayer
    protected void cloneParams(GSYBaseVideoPlayer gSYBaseVideoPlayer, GSYBaseVideoPlayer gSYBaseVideoPlayer2) {
        super.cloneParams(gSYBaseVideoPlayer, gSYBaseVideoPlayer2);
        ListGSYVideoPlayer listGSYVideoPlayer = (ListGSYVideoPlayer) gSYBaseVideoPlayer;
        ListGSYVideoPlayer listGSYVideoPlayer2 = (ListGSYVideoPlayer) gSYBaseVideoPlayer2;
        listGSYVideoPlayer2.f77131c = listGSYVideoPlayer.f77131c;
        listGSYVideoPlayer2.f77130b = listGSYVideoPlayer.f77130b;
    }

    public boolean f() {
        if (this.f77131c >= this.f77130b.size() - 1) {
            return false;
        }
        int i10 = this.f77131c + 1;
        this.f77131c = i10;
        b bVar = this.f77130b.get(i10);
        this.mSaveChangeViewTIme = 0L;
        j(this.f77130b, this.mCache, this.f77131c, null, this.mMapHeadData, false);
        if (!TextUtils.isEmpty(bVar.a())) {
            this.mTitleTextView.setText(bVar.a());
        }
        startPlayLogic();
        return true;
    }

    public boolean g(List<b> list, boolean z10, int i10) {
        return i(list, z10, i10, null, new HashMap());
    }

    public boolean h(List<b> list, boolean z10, int i10, File file) {
        return i(list, z10, i10, file, new HashMap());
    }

    public boolean i(List<b> list, boolean z10, int i10, File file, Map<String, String> map) {
        return j(list, z10, i10, file, map, true);
    }

    protected boolean j(List<b> list, boolean z10, int i10, File file, Map<String, String> map, boolean z11) {
        this.f77130b = list;
        this.f77131c = i10;
        this.mMapHeadData = map;
        b bVar = list.get(i10);
        boolean up = setUp(bVar.b(), z10, file, bVar.a(), z11);
        if (!TextUtils.isEmpty(bVar.a())) {
            this.mTitleTextView.setText(bVar.a());
        }
        return up;
    }

    @Override // com.papa.gsyvideoplayer.video.base.GSYVideoControlView, com.papa.gsyvideoplayer.video.base.GSYVideoView, v7.a
    public void onAutoCompletion() {
        if (f()) {
            return;
        }
        super.onAutoCompletion();
    }

    @Override // com.papa.gsyvideoplayer.video.base.GSYVideoView, v7.a
    public void onCompletion() {
        releaseNetWorkState();
        if (this.f77131c < this.f77130b.size()) {
            return;
        }
        super.onCompletion();
    }

    @Override // com.papa.gsyvideoplayer.video.base.GSYBaseVideoPlayer, com.papa.gsyvideoplayer.video.base.GSYVideoControlView, com.papa.gsyvideoplayer.video.base.GSYVideoView, v7.a
    public void onPrepared() {
        super.onPrepared();
    }

    @Override // com.papa.gsyvideoplayer.video.base.GSYVideoControlView, com.papa.gsyvideoplayer.video.base.GSYVideoView
    protected void prepareVideo() {
        super.prepareVideo();
        if (!this.mHadPlay || this.f77131c >= this.f77130b.size()) {
            return;
        }
        setViewShowState(this.mLoadingProgressBar, 0);
        View view = this.mLoadingProgressBar;
        if (view instanceof ENDownloadView) {
            ((ENDownloadView) view).n();
        }
    }

    @Override // com.papa.gsyvideoplayer.video.base.GSYBaseVideoPlayer
    protected void resolveNormalVideoShow(View view, ViewGroup viewGroup, GSYVideoPlayer gSYVideoPlayer) {
        if (gSYVideoPlayer != null) {
            b bVar = this.f77130b.get(this.f77131c);
            if (!TextUtils.isEmpty(bVar.a())) {
                this.mTitleTextView.setText(bVar.a());
            }
        }
        super.resolveNormalVideoShow(view, viewGroup, gSYVideoPlayer);
    }

    @Override // com.papa.gsyvideoplayer.video.StandardGSYVideoPlayer, com.papa.gsyvideoplayer.video.base.GSYBaseVideoPlayer
    public GSYBaseVideoPlayer startWindowFullscreen(Context context, boolean z10, boolean z11) {
        GSYBaseVideoPlayer gSYBaseVideoPlayerStartWindowFullscreen = super.startWindowFullscreen(context, z10, z11);
        if (gSYBaseVideoPlayerStartWindowFullscreen != null) {
            ListGSYVideoPlayer listGSYVideoPlayer = (ListGSYVideoPlayer) gSYBaseVideoPlayerStartWindowFullscreen;
            b bVar = this.f77130b.get(this.f77131c);
            if (!TextUtils.isEmpty(bVar.a())) {
                listGSYVideoPlayer.mTitleTextView.setText(bVar.a());
            }
        }
        return gSYBaseVideoPlayerStartWindowFullscreen;
    }

    public ListGSYVideoPlayer(Context context) {
        super(context);
        this.f77130b = new ArrayList();
    }

    public ListGSYVideoPlayer(Context context, AttributeSet attributeSet) {
        super(context, attributeSet);
        this.f77130b = new ArrayList();
    }
}
