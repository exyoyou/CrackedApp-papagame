package com.join.mgps.activity.gamedetail;

import android.content.Context;
import android.graphics.Matrix;
import android.util.AttributeSet;
import android.view.Surface;
import android.view.View;
import android.widget.ImageView;
import android.widget.LinearLayout;
import android.widget.ProgressBar;
import android.widget.RelativeLayout;
import android.widget.SeekBar;
import android.widget.TextView;
import com.facebook.drawee.view.SimpleDraweeView;
import com.join.android.app.mgsim.wufun.R;
import com.papa.gsyvideoplayer.d;
import com.papa.gsyvideoplayer.utils.f;
import com.papa.gsyvideoplayer.video.StandardGSYVideoPlayer;
import moe.codeest.enviews.ENDownloadView;

/* JADX INFO: loaded from: classes4.dex */
public class FulllScreenVideoView extends StandardGSYVideoPlayer {
    public static boolean mute = false;
    private static boolean muteFullScrBak = true;
    public ImageView backButton;
    public LinearLayout batteryTimeLayout;
    public ImageView battery_level;
    public ProgressBar bottomProgressBar;
    public TextView clarity;
    public SimpleDraweeView cover;
    private int fixedHeight;
    private int fixedWidth;
    private int heightRatio;
    public ProgressBar loadingProgressBar;
    protected ImageView mAutoPlay;
    private Matrix matrix;
    public ImageView muteImageView;
    private boolean muteWhenPlay;
    protected boolean noneNetFinishActivity;
    public TextView retryTextView;
    public SimpleDraweeView thumbImageView;
    public ImageView tinyBackImageView;
    public TextView titleTextView;
    public String url;
    public TextView video_current_time;
    private int widthRatio;

    public FulllScreenVideoView(Context context) {
        super(context);
        this.noneNetFinishActivity = false;
        this.muteWhenPlay = false;
        this.url = "";
    }

    private void transformVideo(int videoWidth, int videoHeight) {
        if (getResizedHeight() == 0 || getResizedWidth() == 0) {
            return;
        }
        float f10 = videoWidth;
        float resizedWidth = getResizedWidth() / f10;
        float f11 = videoHeight;
        float resizedHeight = getResizedHeight() / f11;
        float fMin = videoWidth > videoHeight ? Math.min(resizedWidth, resizedHeight) : Math.max(resizedWidth, resizedHeight);
        Matrix matrix = this.matrix;
        if (matrix == null) {
            this.matrix = new Matrix();
        } else {
            matrix.reset();
        }
        this.matrix.preTranslate((getResizedWidth() - videoWidth) / 2, (getResizedHeight() - videoHeight) / 2);
        this.matrix.preScale(f10 / getResizedWidth(), f11 / getResizedHeight());
        this.matrix.postScale(fMin, fMin, getResizedWidth() / 2, getResizedHeight() / 2);
        com.papa.gsyvideoplayer.render.a aVar = this.mTextureView;
        if (aVar != null) {
            aVar.x(this.matrix);
        }
        postInvalidate();
    }

    @Override // com.papa.gsyvideoplayer.video.StandardGSYVideoPlayer, com.papa.gsyvideoplayer.video.base.GSYVideoControlView
    protected void changeUiToCompleteShow() {
        setViewShowState(this.mTopContainer, 0);
        setViewShowState(this.mBottomContainer, 4);
        setViewShowState(this.mStartButton, 4);
        setViewShowState(this.mLoadingProgressBar, 4);
        setViewShowState(this.mThumbImageViewLayout, 0);
        SimpleDraweeView simpleDraweeView = this.cover;
        if (simpleDraweeView != null) {
            simpleDraweeView.setVisibility(0);
        }
        setViewShowState(this.mBottomProgressBar, 4);
        setViewShowState(this.mLockScreen, (this.mIfCurrentIsFullscreen && this.mNeedLockFull) ? 0 : 8);
        View view = this.mLoadingProgressBar;
        if (view instanceof ENDownloadView) {
            ((ENDownloadView) view).m();
        }
        updateStartImage();
    }

    @Override // com.papa.gsyvideoplayer.video.StandardGSYVideoPlayer, com.papa.gsyvideoplayer.video.base.GSYVideoControlView
    protected void changeUiToError() {
        setViewShowState(this.mTopContainer, 4);
        setViewShowState(this.mBottomContainer, 4);
        setViewShowState(this.mStartButton, 4);
        setViewShowState(this.mLoadingProgressBar, 4);
        setViewShowState(this.mThumbImageViewLayout, 4);
        SimpleDraweeView simpleDraweeView = this.cover;
        if (simpleDraweeView != null) {
            simpleDraweeView.setVisibility(4);
        }
        setViewShowState(this.mBottomProgressBar, 4);
        setViewShowState(this.mLockScreen, (this.mIfCurrentIsFullscreen && this.mNeedLockFull) ? 0 : 8);
        View view = this.mLoadingProgressBar;
        if (view instanceof ENDownloadView) {
            ((ENDownloadView) view).m();
        }
        updateStartImage();
    }

    @Override // com.papa.gsyvideoplayer.video.StandardGSYVideoPlayer, com.papa.gsyvideoplayer.video.base.GSYVideoControlView
    protected void changeUiToNormal() {
        setViewShowState(this.mTopContainer, 0);
        setViewShowState(this.mBottomContainer, 4);
        setViewShowState(this.mStartButton, 4);
        setViewShowState(this.mLoadingProgressBar, 4);
        setViewShowState(this.mThumbImageViewLayout, 0);
        SimpleDraweeView simpleDraweeView = this.cover;
        if (simpleDraweeView != null) {
            simpleDraweeView.setVisibility(0);
        }
        setViewShowState(this.mBottomProgressBar, 4);
        setViewShowState(this.mLockScreen, (this.mIfCurrentIsFullscreen && this.mNeedLockFull) ? 0 : 8);
        updateStartImage();
        View view = this.mLoadingProgressBar;
        if (view instanceof ENDownloadView) {
            ((ENDownloadView) view).m();
        }
    }

    @Override // com.papa.gsyvideoplayer.video.StandardGSYVideoPlayer, com.papa.gsyvideoplayer.video.base.GSYVideoControlView
    protected void changeUiToPauseShow() {
        setViewShowState(this.mTopContainer, 0);
        setViewShowState(this.mBottomContainer, 4);
        setViewShowState(this.mStartButton, 0);
        setViewShowState(this.mLoadingProgressBar, 4);
        setViewShowState(this.mThumbImageViewLayout, 4);
        SimpleDraweeView simpleDraweeView = this.cover;
        if (simpleDraweeView != null) {
            simpleDraweeView.setVisibility(4);
        }
        setViewShowState(this.mBottomProgressBar, 4);
        setViewShowState(this.mLockScreen, (this.mIfCurrentIsFullscreen && this.mNeedLockFull) ? 0 : 8);
        View view = this.mLoadingProgressBar;
        if (view instanceof ENDownloadView) {
            ((ENDownloadView) view).m();
        }
        updateStartImage();
        updatePauseCover();
    }

    @Override // com.papa.gsyvideoplayer.video.StandardGSYVideoPlayer, com.papa.gsyvideoplayer.video.base.GSYVideoControlView
    protected void changeUiToPlayingBufferingShow() {
        setViewShowState(this.mTopContainer, 0);
        setViewShowState(this.mBottomContainer, 4);
        setViewShowState(this.mStartButton, 4);
        setViewShowState(this.mBottomContainer, 4);
        setViewShowState(this.mThumbImageViewLayout, 4);
        SimpleDraweeView simpleDraweeView = this.cover;
        if (simpleDraweeView != null) {
            simpleDraweeView.setVisibility(4);
        }
        setViewShowState(this.mBottomProgressBar, 4);
        setViewShowState(this.mLockScreen, 8);
        View view = this.mLoadingProgressBar;
        if ((view instanceof ENDownloadView) && ((ENDownloadView) view).getCurrentState() == 0) {
            ((ENDownloadView) this.mLoadingProgressBar).n();
        }
    }

    @Override // com.papa.gsyvideoplayer.video.StandardGSYVideoPlayer, com.papa.gsyvideoplayer.video.base.GSYVideoControlView
    protected void changeUiToPlayingShow() {
        setViewShowState(this.mTopContainer, 0);
        setViewShowState(this.mBottomContainer, 4);
        setViewShowState(this.mStartButton, 4);
        setViewShowState(this.mLoadingProgressBar, 4);
        setViewShowState(this.mThumbImageViewLayout, 4);
        SimpleDraweeView simpleDraweeView = this.cover;
        if (simpleDraweeView != null) {
            simpleDraweeView.setVisibility(4);
        }
        setViewShowState(this.mBottomProgressBar, 4);
        setViewShowState(this.mLockScreen, (this.mIfCurrentIsFullscreen && this.mNeedLockFull) ? 0 : 8);
        View view = this.mLoadingProgressBar;
        if (view instanceof ENDownloadView) {
            ((ENDownloadView) view).m();
        }
        updateStartImage();
    }

    @Override // com.papa.gsyvideoplayer.video.StandardGSYVideoPlayer, com.papa.gsyvideoplayer.video.base.GSYVideoControlView
    protected void changeUiToPreparingShow() {
        setViewShowState(this.mTopContainer, 0);
        setViewShowState(this.mBottomContainer, 4);
        setViewShowState(this.mStartButton, 4);
        setViewShowState(this.mBottomContainer, 4);
        setViewShowState(this.mThumbImageViewLayout, 0);
        SimpleDraweeView simpleDraweeView = this.cover;
        if (simpleDraweeView != null) {
            simpleDraweeView.setVisibility(0);
        }
        setViewShowState(this.mBottomProgressBar, 4);
        setViewShowState(this.mLockScreen, 8);
        View view = this.mLoadingProgressBar;
        if ((view instanceof ENDownloadView) && ((ENDownloadView) view).getCurrentState() == 0) {
            ((ENDownloadView) this.mLoadingProgressBar).n();
        }
    }

    public void clickPlay() {
        View view = this.mStartButton;
        if (view != null) {
            view.performClick();
        }
    }

    @Override // com.papa.gsyvideoplayer.video.StandardGSYVideoPlayer, com.papa.gsyvideoplayer.video.base.GSYVideoView
    public int getLayoutId() {
        return R.layout.standard_video_view_detail;
    }

    public int getResizedHeight() {
        int i10 = this.fixedHeight;
        return i10 == 0 ? getHeight() : i10;
    }

    public int getResizedWidth() {
        int i10 = this.fixedWidth;
        return i10 == 0 ? getWidth() : i10;
    }

    @Override // com.papa.gsyvideoplayer.video.StandardGSYVideoPlayer, com.papa.gsyvideoplayer.video.base.GSYVideoControlView
    protected void hideAllWidget() {
        setViewShowState(this.mBottomContainer, 4);
        setViewShowState(this.mTopContainer, 4);
        setViewShowState(this.mBottomContainer, 4);
        setViewShowState(this.mStartButton, 4);
    }

    @Override // com.papa.gsyvideoplayer.video.StandardGSYVideoPlayer, com.papa.gsyvideoplayer.video.base.GSYBaseVideoPlayer, com.papa.gsyvideoplayer.video.base.GSYVideoControlView, com.papa.gsyvideoplayer.video.base.GSYVideoView
    public void init(final Context context) {
        int i10;
        super.init(context);
        findViewById(R.id.back).setVisibility(4);
        this.thumbImageView = (SimpleDraweeView) findViewById(R.id.thumbImageView);
        RelativeLayout relativeLayout = this.mThumbImageViewLayout;
        if (relativeLayout != null && ((i10 = this.mCurrentState) == -1 || i10 == 0 || i10 == 7)) {
            relativeLayout.setVisibility(0);
        }
        getFullscreenButton().setOnClickListener(new View.OnClickListener() { // from class: com.join.mgps.activity.gamedetail.FulllScreenVideoView.1
            @Override // android.view.View.OnClickListener
            public void onClick(View v10) {
                FulllScreenVideoView.this.startWindowFullscreen(context, false, true);
            }
        });
        setLooping(true);
        initCustomView();
        f.l(4);
    }

    void initCustomView() {
        this.muteImageView = (ImageView) findViewById(R.id.mute);
        this.mAutoPlay = (ImageView) findViewById(R.id.autoPlay);
        this.muteImageView.setOnClickListener(this);
        this.mAutoPlay.setOnClickListener(this);
        setMuteView(mute);
        this.mAutoPlay.setSelected(true);
    }

    @Override // com.papa.gsyvideoplayer.video.base.GSYVideoControlView, com.papa.gsyvideoplayer.video.base.GSYVideoView, v7.a
    public void onAutoCompletion() {
        super.onAutoCompletion();
    }

    @Override // com.papa.gsyvideoplayer.video.base.GSYVideoView, v7.a
    public void onCompletion() {
        super.onCompletion();
    }

    @Override // android.widget.FrameLayout, android.view.View
    protected void onMeasure(int widthMeasureSpec, int heightMeasureSpec) {
        super.onMeasure(widthMeasureSpec, heightMeasureSpec);
        this.fixedWidth = View.MeasureSpec.getSize(widthMeasureSpec);
        this.fixedHeight = View.MeasureSpec.getSize(heightMeasureSpec);
    }

    @Override // com.papa.gsyvideoplayer.video.base.GSYBaseVideoPlayer, com.papa.gsyvideoplayer.video.base.GSYVideoControlView, com.papa.gsyvideoplayer.video.base.GSYVideoView, v7.a
    public void onPrepared() {
        super.onPrepared();
        if (!this.muteWhenPlay) {
            setMute(mute);
        } else {
            setMute(true);
            this.muteWhenPlay = false;
        }
    }

    @Override // android.view.View
    protected void onSizeChanged(int w10, int h10, int oldw, int oldh) {
        super.onSizeChanged(w10, h10, oldw, oldh);
    }

    @Override // com.papa.gsyvideoplayer.video.base.GSYVideoControlView, android.widget.SeekBar.OnSeekBarChangeListener
    public void onStopTrackingTouch(SeekBar seekBar) {
        super.onStopTrackingTouch(seekBar);
        startDismissControlViewTimer();
    }

    @Override // com.papa.gsyvideoplayer.video.base.GSYTextureRenderView, w7.c
    public void onSurfaceAvailable(Surface surface) {
        RelativeLayout relativeLayout;
        super.onSurfaceAvailable(surface);
        if (f.e() == 0 || (relativeLayout = this.mThumbImageViewLayout) == null || relativeLayout.getVisibility() != 0) {
            return;
        }
        this.mThumbImageViewLayout.setVisibility(4);
    }

    @Override // com.papa.gsyvideoplayer.video.base.GSYTextureRenderView, w7.c
    public void onSurfaceUpdated(Surface surface) {
        super.onSurfaceUpdated(surface);
        RelativeLayout relativeLayout = this.mThumbImageViewLayout;
        if (relativeLayout == null || relativeLayout.getVisibility() != 0) {
            return;
        }
        this.mThumbImageViewLayout.setVisibility(4);
    }

    public void setCover(SimpleDraweeView cover) {
        this.cover = cover;
    }

    public void setMute(boolean mute2) {
        setMuteOnly(mute2);
        mute = mute2;
    }

    public void setMuteOnly(boolean mute2) {
        try {
            d.e0().W(mute2);
            setMuteView(mute2);
        } catch (Exception e10) {
            e10.printStackTrace();
        }
    }

    public void setMuteView(boolean mute2) {
        if (mute2) {
            this.muteImageView.setImageResource(R.drawable.mute_on);
        } else {
            this.muteImageView.setImageResource(R.drawable.mute_off);
        }
    }

    @Override // com.papa.gsyvideoplayer.video.base.GSYVideoControlView
    protected void setViewShowState(View view, int visibility) {
        if (view != this.mThumbImageViewLayout || visibility == 0) {
            super.setViewShowState(view, visibility);
        }
    }

    public FulllScreenVideoView(Context context, AttributeSet attrs) {
        super(context, attrs);
        this.noneNetFinishActivity = false;
        this.muteWhenPlay = false;
        this.url = "";
    }
}
