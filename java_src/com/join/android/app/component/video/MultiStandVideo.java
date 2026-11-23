package com.join.android.app.component.video;

import android.content.Context;
import android.graphics.Point;
import android.text.TextUtils;
import android.util.AttributeSet;
import android.view.View;
import android.view.ViewGroup;
import android.view.animation.AccelerateInterpolator;
import android.view.animation.AlphaAnimation;
import android.view.animation.Animation;
import android.widget.ImageView;
import android.widget.RelativeLayout;
import android.widget.SeekBar;
import com.facebook.drawee.drawable.s;
import com.facebook.drawee.view.SimpleDraweeView;
import com.join.android.app.common.utils.l;
import com.join.android.app.mgsim.wufun.R;
import com.join.mgps.Util.g1;
import com.join.mgps.callbacks.y;
import com.papa.gsyvideoplayer.utils.n;
import com.papa.gsyvideoplayer.video.StandardGSYVideoPlayer;
import com.papa.gsyvideoplayer.video.base.GSYBaseVideoPlayer;
import com.papa.gsyvideoplayer.video.base.GSYVideoView;
import moe.codeest.enviews.ENPlayView;

/* JADX INFO: loaded from: classes5.dex */
public class MultiStandVideo extends StandardGSYVideoPlayer {

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    private static final String f35058h = "MultiStandVideo";

    /* JADX INFO: renamed from: i, reason: collision with root package name */
    public static boolean f35059i = true;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public SimpleDraweeView f35060b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public SimpleDraweeView f35061c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    String f35062d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    private String f35063e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    protected boolean f35064f;

    /* JADX INFO: renamed from: g, reason: collision with root package name */
    private boolean f35065g;

    class a implements Animation.AnimationListener {

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        final /* synthetic */ View f35066b;

        a(final View val$view) {
            this.f35066b = val$view;
        }

        @Override // android.view.animation.Animation.AnimationListener
        public void onAnimationEnd(Animation animation) {
            try {
                if (((GSYVideoView) MultiStandVideo.this).mCurrentState == 0 || ((GSYVideoView) MultiStandVideo.this).mCurrentState == 7 || ((GSYVideoView) MultiStandVideo.this).mCurrentState == 5 || ((GSYVideoView) MultiStandVideo.this).mCurrentState == 6) {
                    MultiStandVideo.this.n();
                } else {
                    this.f35066b.setVisibility(4);
                    this.f35066b.setAlpha(1.0f);
                }
            } catch (Exception e10) {
                e10.printStackTrace();
            }
        }

        @Override // android.view.animation.Animation.AnimationListener
        public void onAnimationRepeat(Animation animation) {
        }

        @Override // android.view.animation.Animation.AnimationListener
        public void onAnimationStart(Animation animation) {
        }
    }

    class b implements Animation.AnimationListener {

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        final /* synthetic */ View f35068b;

        b(final View val$view) {
            this.f35068b = val$view;
        }

        @Override // android.view.animation.Animation.AnimationListener
        public void onAnimationEnd(Animation animation) {
            try {
                this.f35068b.setVisibility(0);
            } catch (Exception e10) {
                e10.printStackTrace();
            }
        }

        @Override // android.view.animation.Animation.AnimationListener
        public void onAnimationRepeat(Animation animation) {
        }

        @Override // android.view.animation.Animation.AnimationListener
        public void onAnimationStart(Animation animation) {
        }
    }

    class c implements Runnable {
        c() {
        }

        @Override // java.lang.Runnable
        public void run() {
            MultiStandVideo.this.backToNormal();
        }
    }

    public MultiStandVideo(Context context, Boolean fullFlag) {
        super(context, fullFlag);
    }

    private void k(View view) {
        if (view == null) {
            return;
        }
        Animation animation = view.getAnimation();
        if (animation != null) {
            animation.setAnimationListener(null);
            view.setAlpha(1.0f);
            view.setVisibility(4);
            animation.cancel();
            return;
        }
        try {
            AlphaAnimation alphaAnimation = new AlphaAnimation(1.0f, 0.0f);
            alphaAnimation.setDuration(600L);
            alphaAnimation.setInterpolator(new AccelerateInterpolator());
            alphaAnimation.setAnimationListener(new a(view));
            view.startAnimation(alphaAnimation);
        } catch (Exception e10) {
            e10.printStackTrace();
        }
    }

    private void m() {
        if (this.mHadPlay) {
            if (isVerticalVideo() || this.f35065g) {
                com.papa.gsyvideoplayer.utils.f.l(4);
            } else {
                com.papa.gsyvideoplayer.utils.f.l(0);
            }
            changeTextureViewShowType();
            com.papa.gsyvideoplayer.render.a aVar = this.mTextureView;
            if (aVar != null) {
                aVar.o();
            }
        }
    }

    private void o(View view) {
        if (view == null) {
            return;
        }
        try {
            Animation animation = view.getAnimation();
            if (animation != null) {
                animation.setAnimationListener(null);
                view.clearAnimation();
            }
            AlphaAnimation alphaAnimation = new AlphaAnimation(0.0f, 1.0f);
            alphaAnimation.setDuration(600L);
            alphaAnimation.setInterpolator(new AccelerateInterpolator());
            alphaAnimation.setAnimationListener(new b(view));
            view.startAnimation(alphaAnimation);
        } catch (Exception e10) {
            e10.printStackTrace();
        }
    }

    @Override // com.papa.gsyvideoplayer.video.base.GSYVideoPlayer, com.papa.gsyvideoplayer.video.base.GSYVideoView
    protected boolean backFromFull(Context context) {
        return getGSYVideoManager() != null && getGSYVideoManager().c0(context);
    }

    @Override // com.papa.gsyvideoplayer.video.StandardGSYVideoPlayer, com.papa.gsyvideoplayer.video.base.GSYVideoControlView
    protected void changeUiToCompleteShow() {
        if (!this.mIfCurrentIsFullscreen) {
            setViewShowState(this.mTopContainer, 4);
        }
        setViewShowState(this.mStartButton, 4);
        setViewShowState(this.mBottomProgressBar, 4);
        setViewShowState(this.mBottomContainer, 4);
        setViewShowState(this.mLoadingProgressBar, 4);
        n();
    }

    @Override // com.papa.gsyvideoplayer.video.StandardGSYVideoPlayer, com.papa.gsyvideoplayer.video.base.GSYVideoControlView
    protected void changeUiToError() {
        if (this.mIfCurrentIsFullscreen) {
            setViewShowState(this.mTopContainer, 0);
        }
    }

    @Override // com.papa.gsyvideoplayer.video.StandardGSYVideoPlayer, com.papa.gsyvideoplayer.video.base.GSYVideoControlView
    protected void changeUiToNormal() {
        this.f35064f = false;
        setViewShowState(this.mStartButton, 4);
        setViewShowState(this.mBottomProgressBar, 4);
        setViewShowState(this.mBottomContainer, 4);
        setViewShowState(this.mLoadingProgressBar, 4);
        if (!this.mIfCurrentIsFullscreen) {
            setViewShowState(this.mTopContainer, 4);
        }
        n();
    }

    @Override // com.papa.gsyvideoplayer.video.StandardGSYVideoPlayer
    protected void changeUiToPauseClear() {
        super.changeUiToPauseClear();
        setViewShowState(this.mBottomProgressBar, 4);
    }

    @Override // com.papa.gsyvideoplayer.video.StandardGSYVideoPlayer, com.papa.gsyvideoplayer.video.base.GSYVideoControlView
    protected void changeUiToPauseShow() {
        if (!this.mIfCurrentIsFullscreen) {
            setViewShowState(this.mTopContainer, 4);
        }
        setViewShowState(this.mStartButton, 4);
        setViewShowState(this.mBottomProgressBar, 4);
        setViewShowState(this.mBottomContainer, 4);
        setViewShowState(this.mLoadingProgressBar, 4);
        setViewShowState(this.mStartButton, 4);
        n();
    }

    @Override // com.papa.gsyvideoplayer.video.StandardGSYVideoPlayer
    protected void changeUiToPlayingBufferingClear() {
        super.changeUiToPlayingBufferingClear();
        if (this.mIfCurrentIsFullscreen) {
            setViewShowState(this.mBottomProgressBar, 0);
        } else {
            setViewShowState(this.mBottomProgressBar, 4);
        }
    }

    @Override // com.papa.gsyvideoplayer.video.StandardGSYVideoPlayer, com.papa.gsyvideoplayer.video.base.GSYVideoControlView
    protected void changeUiToPlayingBufferingShow() {
        if (!this.mIfCurrentIsFullscreen) {
            setViewShowState(this.mTopContainer, 4);
        }
        setViewShowState(this.mStartButton, 4);
        setViewShowState(this.mBottomProgressBar, 4);
        setViewShowState(this.mBottomContainer, 4);
        setViewShowState(this.mLoadingProgressBar, 4);
    }

    @Override // com.papa.gsyvideoplayer.video.StandardGSYVideoPlayer
    protected void changeUiToPlayingClear() {
        super.changeUiToPlayingClear();
        if (this.mIfCurrentIsFullscreen) {
            setViewShowState(this.mBottomProgressBar, 0);
        } else {
            setViewShowState(this.mBottomProgressBar, 4);
        }
    }

    @Override // com.papa.gsyvideoplayer.video.StandardGSYVideoPlayer, com.papa.gsyvideoplayer.video.base.GSYVideoControlView
    protected void changeUiToPlayingShow() {
        k(this.mThumbImageViewLayout);
        if (!this.mIfCurrentIsFullscreen) {
            setViewShowState(this.mTopContainer, 4);
        }
        setMute(f35059i);
        if (this.mIfCurrentIsFullscreen) {
            if (this.f35064f) {
                return;
            }
            setViewShowState(this.mBottomContainer, 4);
            setViewShowState(this.mStartButton, 4);
            return;
        }
        setViewShowState(this.mStartButton, 4);
        setViewShowState(this.mBottomProgressBar, 4);
        setViewShowState(this.mBottomContainer, 4);
        setViewShowState(this.mLoadingProgressBar, 4);
    }

    @Override // com.papa.gsyvideoplayer.video.StandardGSYVideoPlayer
    protected void changeUiToPrepareingClear() {
        super.changeUiToPrepareingClear();
    }

    @Override // com.papa.gsyvideoplayer.video.StandardGSYVideoPlayer, com.papa.gsyvideoplayer.video.base.GSYVideoControlView
    protected void changeUiToPreparingShow() {
        if (!this.mIfCurrentIsFullscreen) {
            setViewShowState(this.mTopContainer, 4);
        }
        setViewShowState(this.mBottomContainer, 4);
        setViewShowState(this.mStartButton, 4);
        setViewShowState(this.mBottomProgressBar, 4);
        setViewShowState(this.mLoadingProgressBar, 4);
    }

    @Override // com.papa.gsyvideoplayer.video.base.GSYBaseVideoPlayer
    protected void clearFullscreenLayout() {
        int iQ;
        if (this.mFullAnimEnd) {
            setMute(false);
            RelativeLayout.LayoutParams layoutParams = (RelativeLayout.LayoutParams) this.mStartButton.getLayoutParams();
            layoutParams.height = getResources().getDimensionPixelOffset(R.dimen.wdp60);
            layoutParams.width = getResources().getDimensionPixelOffset(R.dimen.wdp60);
            this.mStartButton.setLayoutParams(layoutParams);
            this.mIfCurrentIsFullscreen = false;
            n nVar = this.mOrientationUtils;
            if (nVar != null) {
                iQ = nVar.q();
                this.mOrientationUtils.I(false);
                n nVar2 = this.mOrientationUtils;
                if (nVar2 != null) {
                    nVar2.D();
                    this.mOrientationUtils = null;
                }
            } else {
                iQ = 0;
            }
            if (!this.mShowFullAnimation) {
                iQ = 0;
            }
            View viewFindViewById = ((ViewGroup) com.papa.gsyvideoplayer.utils.b.o(getContext()).findViewById(android.R.id.content)).findViewById(getFullId());
            if (viewFindViewById != null) {
                ((MultiStandVideo) viewFindViewById).mIfCurrentIsFullscreen = false;
            }
            if (iQ == 0) {
                backToNormal();
            } else {
                postDelayed(new c(), iQ);
            }
        }
    }

    @Override // com.papa.gsyvideoplayer.video.base.GSYVideoPlayer, com.papa.gsyvideoplayer.video.base.GSYBaseVideoPlayer
    protected int getFullId() {
        return R.id.custom_full_id;
    }

    public String getKey() {
        if (this.mPlayPosition == -22) {
            com.papa.gsyvideoplayer.utils.c.e(getClass().getSimpleName() + " used getKey() ******* PlayPosition never set. ********");
        }
        if (TextUtils.isEmpty(this.mPlayTag)) {
            com.papa.gsyvideoplayer.utils.c.e(getClass().getSimpleName() + " used getKey() ******* PlayTag never set. ********");
        }
        return f35058h + this.mPlayPosition + this.mPlayTag;
    }

    @Override // com.papa.gsyvideoplayer.video.StandardGSYVideoPlayer, com.papa.gsyvideoplayer.video.base.GSYVideoView
    public int getLayoutId() {
        return R.layout.video_layout_multi_wufun;
    }

    public String getName() {
        return this.f35063e;
    }

    public String getOriginUrl() {
        return this.mOriginUrl;
    }

    @Override // com.papa.gsyvideoplayer.video.base.GSYVideoPlayer, com.papa.gsyvideoplayer.video.base.GSYBaseVideoPlayer
    protected int getSmallId() {
        return R.id.custom_small_id;
    }

    public String getUrl() {
        return this.mUrl;
    }

    @Override // com.papa.gsyvideoplayer.video.StandardGSYVideoPlayer, com.papa.gsyvideoplayer.video.base.GSYVideoControlView
    protected void hideAllWidget() {
        super.hideAllWidget();
        if (this.mIfCurrentIsFullscreen) {
            setViewShowState(this.mBottomProgressBar, 0);
        } else {
            setViewShowState(this.mBottomProgressBar, 4);
        }
    }

    @Override // com.papa.gsyvideoplayer.video.StandardGSYVideoPlayer, com.papa.gsyvideoplayer.video.base.GSYBaseVideoPlayer, com.papa.gsyvideoplayer.video.base.GSYVideoControlView, com.papa.gsyvideoplayer.video.base.GSYVideoView
    protected void init(Context context) {
        int i10;
        super.init(context);
        this.f35060b = (SimpleDraweeView) findViewById(R.id.thumbImageView);
        this.mThumbImageViewLayout = (RelativeLayout) findViewById(R.id.thumb);
        this.f35061c = (SimpleDraweeView) findViewById(R.id.sdv_image_bluer);
        SimpleDraweeView simpleDraweeView = this.f35060b;
        if (simpleDraweeView != null) {
            simpleDraweeView.setOnClickListener(this);
        }
        RelativeLayout relativeLayout = this.mThumbImageViewLayout;
        if (relativeLayout != null && ((i10 = this.mCurrentState) == -1 || i10 == 0 || i10 == 7)) {
            Animation animation = relativeLayout.getAnimation();
            if (animation != null) {
                animation.cancel();
            }
            this.mThumbImageViewLayout.setVisibility(0);
            this.mThumbImageViewLayout.setAlpha(1.0f);
        }
        setThumbPlay(false);
        setShowPauseCover(true);
        setNeedShowWifiTip(false);
        setBottomProgressBarDrawable(null);
        this.onAudioFocusChangeListener = null;
        com.papa.gsyvideoplayer.utils.f.l(0);
    }

    public void l(String url) {
        this.f35062d = url;
        SimpleDraweeView simpleDraweeView = this.f35060b;
        if (simpleDraweeView != null) {
            l.i(simpleDraweeView, url, s.c.f27292i);
            n();
        }
        SimpleDraweeView simpleDraweeView2 = this.f35061c;
        if (simpleDraweeView2 != null) {
            l.M(simpleDraweeView2, this.f35062d, 6, 15);
        }
    }

    public void n() {
        setViewShowState(this.mThumbImageViewLayout, 0);
        this.mThumbImageViewLayout.setAlpha(1.0f);
    }

    @Override // com.papa.gsyvideoplayer.video.base.GSYVideoControlView, android.view.View.OnClickListener
    public void onClick(View v10) {
        super.onClick(v10);
        if (v10.getId() == R.id.thumbImageView) {
            v7.h hVar = this.mVideoAllCallBack;
            if (hVar instanceof y) {
                ((y) hVar).onClickCover();
            }
        }
    }

    @Override // com.papa.gsyvideoplayer.video.base.GSYBaseVideoPlayer, com.papa.gsyvideoplayer.video.base.GSYVideoView, v7.a
    public void onInfo(int what, int extra) {
        super.onInfo(what, extra);
        if (what == getGSYVideoManager().n()) {
            m();
        }
    }

    @Override // com.papa.gsyvideoplayer.video.base.GSYBaseVideoPlayer, com.papa.gsyvideoplayer.video.base.GSYVideoControlView, com.papa.gsyvideoplayer.video.base.GSYVideoView, v7.a
    public void onPrepared() {
        com.join.android.app.component.video.b gSYVideoManager;
        super.onPrepared();
        if (!this.mIfCurrentIsFullscreen || (gSYVideoManager = getGSYVideoManager()) == null) {
            return;
        }
        gSYVideoManager.W(false);
    }

    @Override // com.papa.gsyvideoplayer.video.base.GSYVideoControlView, android.widget.SeekBar.OnSeekBarChangeListener
    public void onStartTrackingTouch(SeekBar seekBar) {
        this.f35064f = true;
        super.onStartTrackingTouch(seekBar);
    }

    @Override // com.papa.gsyvideoplayer.video.base.GSYVideoPlayer, com.papa.gsyvideoplayer.video.base.GSYVideoView
    protected void releaseVideos() {
        com.join.android.app.component.video.b gSYVideoManager = getGSYVideoManager();
        if (gSYVideoManager != null) {
            if (gSYVideoManager.w() != null) {
                gSYVideoManager.w().onCompletion();
            }
            gSYVideoManager.y();
        }
    }

    public void setEndGame() {
        this.f35065g = true;
        com.papa.gsyvideoplayer.utils.f.l(4);
    }

    public void setMute(boolean mute) {
        setMuteOnly(mute);
    }

    public void setMuteOnly(boolean mute) {
        try {
            g1.d("setMuteOnly ", mute + "");
            com.join.android.app.component.video.b gSYVideoManager = getGSYVideoManager();
            if (getGSYVideoManager() != null) {
                gSYVideoManager.W(mute);
            }
        } catch (Exception e10) {
            e10.printStackTrace();
        }
    }

    public void setName(String name) {
        this.f35063e = name;
    }

    @Override // com.papa.gsyvideoplayer.video.base.GSYBaseVideoPlayer
    public GSYBaseVideoPlayer showSmallVideo(Point size, boolean actionBar, boolean statusBar) {
        MultiStandVideo multiStandVideo = (MultiStandVideo) super.showSmallVideo(size, actionBar, statusBar);
        multiStandVideo.mStartButton.setVisibility(8);
        multiStandVideo.mStartButton = null;
        return multiStandVideo;
    }

    @Override // com.papa.gsyvideoplayer.video.base.GSYVideoView
    public void startAfterPrepared() {
        super.startAfterPrepared();
        setViewShowState(this.mBottomContainer, 4);
        setViewShowState(this.mStartButton, 4);
        setViewShowState(this.mBottomProgressBar, 4);
    }

    @Override // com.papa.gsyvideoplayer.video.StandardGSYVideoPlayer, com.papa.gsyvideoplayer.video.base.GSYVideoView
    public void startPlayLogic() {
        super.startPlayLogic();
    }

    @Override // com.papa.gsyvideoplayer.video.StandardGSYVideoPlayer, com.papa.gsyvideoplayer.video.base.GSYBaseVideoPlayer
    public GSYBaseVideoPlayer startWindowFullscreen(Context context, boolean actionBar, boolean statusBar) {
        GSYBaseVideoPlayer gSYBaseVideoPlayerStartWindowFullscreen = super.startWindowFullscreen(context, actionBar, statusBar);
        MultiStandVideo multiStandVideo = (MultiStandVideo) gSYBaseVideoPlayerStartWindowFullscreen;
        multiStandVideo.l(this.f35062d);
        if (this.mCurrentState != 2) {
            gSYBaseVideoPlayerStartWindowFullscreen.startPlayLogic();
        }
        com.join.android.app.component.video.b gSYVideoManager = getGSYVideoManager();
        if (gSYVideoManager != null) {
            gSYVideoManager.W(false);
        }
        return multiStandVideo;
    }

    @Override // com.papa.gsyvideoplayer.video.base.GSYVideoControlView
    protected void touchSurfaceMoveFullLogic(float absDeltaX, float absDeltaY) {
        super.touchSurfaceMoveFullLogic(absDeltaX, absDeltaY);
        this.mChangePosition = false;
    }

    @Override // com.papa.gsyvideoplayer.video.StandardGSYVideoPlayer
    protected void updateStartImage() {
        View view = this.mStartButton;
        if (view instanceof ENPlayView) {
            ENPlayView eNPlayView = (ENPlayView) view;
            eNPlayView.setDuration(500);
            int i10 = this.mCurrentState;
            if (i10 == 2) {
                eNPlayView.d();
                return;
            } else if (i10 == 7) {
                eNPlayView.c();
                return;
            } else {
                eNPlayView.c();
                return;
            }
        }
        if (view instanceof ImageView) {
            ImageView imageView = (ImageView) view;
            int i11 = this.mCurrentState;
            if (i11 == 2) {
                imageView.setImageResource(R.drawable.video_pause_normal_video);
            } else if (i11 == 7) {
                imageView.setImageResource(R.drawable.video_click_error_selector);
            } else {
                imageView.setImageResource(R.drawable.video_play_normal_video);
            }
        }
    }

    public MultiStandVideo(Context context) {
        super(context);
    }

    @Override // com.papa.gsyvideoplayer.video.base.GSYVideoPlayer, com.papa.gsyvideoplayer.video.base.GSYVideoView
    public com.join.android.app.component.video.b getGSYVideoManager() {
        com.join.android.app.component.video.b bVarD0 = com.join.android.app.component.video.b.d0(getKey(), this.mPlayTag, this.mPlayPosition);
        bVarD0.Q(getContext().getApplicationContext());
        return bVarD0;
    }

    public MultiStandVideo(Context context, AttributeSet attrs) {
        super(context, attrs);
    }
}
