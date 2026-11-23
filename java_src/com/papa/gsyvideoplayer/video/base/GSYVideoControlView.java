package com.papa.gsyvideoplayer.video.base;

import android.app.Activity;
import android.content.Context;
import android.media.AudioManager;
import android.text.TextUtils;
import android.util.AttributeSet;
import android.view.GestureDetector;
import android.view.MotionEvent;
import android.view.View;
import android.view.ViewGroup;
import android.view.ViewParent;
import android.view.WindowManager;
import android.widget.ImageView;
import android.widget.ProgressBar;
import android.widget.RelativeLayout;
import android.widget.SeekBar;
import android.widget.TextView;
import androidx.annotation.AttrRes;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import com.facebook.common.util.f;
import com.haima.hmcp.volley.DefaultRetryPolicy;
import com.papa.gsyvideoplayer.R;
import java.io.File;
import java.util.Map;
import v7.g;

/* JADX INFO: loaded from: classes2.dex */
public abstract class GSYVideoControlView extends GSYVideoView implements View.OnClickListener, View.OnTouchListener, SeekBar.OnSeekBarChangeListener {
    Runnable dismissControlTask;
    protected GestureDetector gestureDetector;
    protected boolean isShowDragProgressTextOnSeekBar;
    protected ImageView mBackButton;
    protected ViewGroup mBottomContainer;
    protected ProgressBar mBottomProgressBar;
    protected boolean mBrightness;
    protected float mBrightnessData;
    protected boolean mChangePosition;
    protected boolean mChangeVolume;
    protected TextView mCurrentTimeTextView;
    protected int mDismissControlTime;
    protected int mDownPosition;
    protected float mDownX;
    protected float mDownY;
    protected int mEnlargeImageRes;
    protected boolean mFirstTouch;
    protected ImageView mFullscreenButton;
    protected v7.d mGSYVideoProgressListener;
    protected int mGestureDownVolume;
    protected boolean mHadSeekTouch;
    protected boolean mHideKey;
    protected boolean mIsTouchWiget;
    protected boolean mIsTouchWigetFull;
    protected View mLoadingProgressBar;
    protected g mLockClickListener;
    protected boolean mLockCurScreen;
    protected ImageView mLockScreen;
    protected float mMoveY;
    protected boolean mNeedLockFull;
    protected boolean mNeedShowWifiTip;
    protected boolean mPostDismiss;
    protected boolean mPostProgress;
    protected SeekBar mProgressBar;
    protected int mSeekEndOffset;
    protected float mSeekRatio;
    protected int mSeekTimePosition;
    protected boolean mSetUpLazy;
    protected boolean mShowVKey;
    protected int mShrinkImageRes;
    protected View mStartButton;
    protected int mThreshold;
    protected View mThumbImageView;
    protected RelativeLayout mThumbImageViewLayout;
    protected boolean mThumbPlay;
    protected TextView mTitleTextView;
    protected ViewGroup mTopContainer;
    protected TextView mTotalTimeTextView;
    protected boolean mTouchingProgressBar;
    Runnable progressTask;

    class a implements View.OnClickListener {
        a() {
        }

        @Override // android.view.View.OnClickListener
        public void onClick(View view) {
            GSYVideoControlView gSYVideoControlView = GSYVideoControlView.this;
            int i10 = gSYVideoControlView.mCurrentState;
            if (i10 == 6 || i10 == 7) {
                return;
            }
            gSYVideoControlView.lockTouchLogic();
            GSYVideoControlView gSYVideoControlView2 = GSYVideoControlView.this;
            g gVar = gSYVideoControlView2.mLockClickListener;
            if (gVar != null) {
                gVar.a(view, gSYVideoControlView2.mLockCurScreen);
            }
        }
    }

    class b extends GestureDetector.SimpleOnGestureListener {
        b() {
        }

        @Override // android.view.GestureDetector.SimpleOnGestureListener, android.view.GestureDetector.OnDoubleTapListener
        public boolean onDoubleTap(MotionEvent motionEvent) {
            GSYVideoControlView.this.touchDoubleUp();
            return super.onDoubleTap(motionEvent);
        }

        @Override // android.view.GestureDetector.SimpleOnGestureListener, android.view.GestureDetector.OnGestureListener
        public void onLongPress(MotionEvent motionEvent) {
            super.onLongPress(motionEvent);
            GSYVideoControlView.this.touchLongPress(motionEvent);
        }

        @Override // android.view.GestureDetector.SimpleOnGestureListener, android.view.GestureDetector.OnDoubleTapListener
        public boolean onSingleTapConfirmed(MotionEvent motionEvent) {
            GSYVideoControlView gSYVideoControlView = GSYVideoControlView.this;
            if (!gSYVideoControlView.mChangePosition && !gSYVideoControlView.mChangeVolume && !gSYVideoControlView.mBrightness) {
                gSYVideoControlView.onClickUiToggle();
            }
            return super.onSingleTapConfirmed(motionEvent);
        }
    }

    class c implements Runnable {

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        final /* synthetic */ int f77157b;

        c(int i10) {
            this.f77157b = i10;
        }

        @Override // java.lang.Runnable
        public void run() {
            GSYVideoControlView gSYVideoControlView = GSYVideoControlView.this;
            int i10 = gSYVideoControlView.mCurrentState;
            if (i10 == 0 || i10 == 1) {
                return;
            }
            int i11 = this.f77157b;
            if (i11 != 0) {
                gSYVideoControlView.setTextAndProgress(i11);
                GSYVideoControlView.this.mBufferPoint = this.f77157b;
                com.papa.gsyvideoplayer.utils.c.h("Net speed: " + GSYVideoControlView.this.getNetSpeedText() + " percent " + this.f77157b);
            }
            GSYVideoControlView gSYVideoControlView2 = GSYVideoControlView.this;
            SeekBar seekBar = gSYVideoControlView2.mProgressBar;
            if (seekBar != null && gSYVideoControlView2.mLooping && gSYVideoControlView2.mHadPlay && this.f77157b == 0 && seekBar.getProgress() >= GSYVideoControlView.this.mProgressBar.getMax() - 1) {
                GSYVideoControlView.this.loopSetProgressAndTime();
            }
        }
    }

    class d implements Runnable {
        d() {
        }

        @Override // java.lang.Runnable
        public void run() {
            GSYVideoControlView gSYVideoControlView = GSYVideoControlView.this;
            int i10 = gSYVideoControlView.mCurrentState;
            if (i10 == 2 || i10 == 5) {
                gSYVideoControlView.setTextAndProgress(0);
            }
            GSYVideoControlView gSYVideoControlView2 = GSYVideoControlView.this;
            if (gSYVideoControlView2.mPostProgress) {
                gSYVideoControlView2.postDelayed(this, 1000L);
            }
        }
    }

    class e implements Runnable {
        e() {
        }

        @Override // java.lang.Runnable
        public void run() {
            GSYVideoControlView gSYVideoControlView = GSYVideoControlView.this;
            int i10 = gSYVideoControlView.mCurrentState;
            if (i10 == 0 || i10 == 7 || i10 == 6) {
                return;
            }
            if (gSYVideoControlView.getActivityContext() != null) {
                GSYVideoControlView.this.hideAllWidget();
                GSYVideoControlView gSYVideoControlView2 = GSYVideoControlView.this;
                gSYVideoControlView2.setViewShowState(gSYVideoControlView2.mLockScreen, 8);
                GSYVideoControlView gSYVideoControlView3 = GSYVideoControlView.this;
                if (gSYVideoControlView3.mHideKey && gSYVideoControlView3.mIfCurrentIsFullscreen && gSYVideoControlView3.mShowVKey) {
                    com.papa.gsyvideoplayer.utils.b.k(gSYVideoControlView3.mContext);
                }
            }
            GSYVideoControlView gSYVideoControlView4 = GSYVideoControlView.this;
            if (gSYVideoControlView4.mPostDismiss) {
                gSYVideoControlView4.postDelayed(this, gSYVideoControlView4.mDismissControlTime);
            }
        }
    }

    public GSYVideoControlView(@NonNull Context context) {
        super(context);
        this.mThreshold = 80;
        this.mShrinkImageRes = -1;
        this.mEnlargeImageRes = -1;
        this.mDismissControlTime = DefaultRetryPolicy.DEFAULT_TIMEOUT_MS;
        this.mBrightnessData = -1.0f;
        this.mSeekRatio = 1.0f;
        this.mTouchingProgressBar = false;
        this.mChangeVolume = false;
        this.mChangePosition = false;
        this.mShowVKey = false;
        this.mBrightness = false;
        this.mFirstTouch = false;
        this.mHideKey = true;
        this.mNeedShowWifiTip = true;
        this.mIsTouchWiget = true;
        this.mIsTouchWigetFull = true;
        this.mSetUpLazy = false;
        this.mHadSeekTouch = false;
        this.mPostProgress = false;
        this.mPostDismiss = false;
        this.isShowDragProgressTextOnSeekBar = false;
        this.gestureDetector = new GestureDetector(getContext().getApplicationContext(), new b());
        this.progressTask = new d();
        this.dismissControlTask = new e();
    }

    protected void cancelDismissControlViewTimer() {
        this.mPostDismiss = false;
        removeCallbacks(this.dismissControlTask);
    }

    protected void cancelProgressTimer() {
        this.mPostProgress = false;
        removeCallbacks(this.progressTask);
    }

    protected abstract void changeUiToCompleteShow();

    protected abstract void changeUiToError();

    protected abstract void changeUiToNormal();

    protected abstract void changeUiToPauseShow();

    protected abstract void changeUiToPlayingBufferingShow();

    protected abstract void changeUiToPlayingShow();

    protected abstract void changeUiToPreparingShow();

    public void clearThumbImageView() {
        RelativeLayout relativeLayout = this.mThumbImageViewLayout;
        if (relativeLayout != null) {
            relativeLayout.removeAllViews();
        }
    }

    protected void clickStartIcon() {
        if (TextUtils.isEmpty(this.mUrl)) {
            com.papa.gsyvideoplayer.utils.c.e("********" + getResources().getString(R.string.no_url));
            return;
        }
        int i10 = this.mCurrentState;
        if (i10 == 0 || i10 == 7) {
            if (isShowNetConfirm()) {
                showWifiDialog();
                return;
            } else {
                startButtonLogic();
                return;
            }
        }
        if (i10 == 2) {
            try {
                onVideoPause();
            } catch (Exception e10) {
                e10.printStackTrace();
            }
            setStateAndUi(5);
            if (this.mVideoAllCallBack == null || !isCurrentMediaListener()) {
                return;
            }
            if (this.mIfCurrentIsFullscreen) {
                com.papa.gsyvideoplayer.utils.c.h("onClickStopFullscreen");
                this.mVideoAllCallBack.onClickStopFullscreen(this.mOriginUrl, this.mTitle, this);
                return;
            } else {
                com.papa.gsyvideoplayer.utils.c.h("onClickStop");
                this.mVideoAllCallBack.onClickStop(this.mOriginUrl, this.mTitle, this);
                return;
            }
        }
        if (i10 != 5) {
            if (i10 == 6) {
                startButtonLogic();
                return;
            }
            return;
        }
        if (this.mVideoAllCallBack != null && isCurrentMediaListener()) {
            if (this.mIfCurrentIsFullscreen) {
                com.papa.gsyvideoplayer.utils.c.h("onClickResumeFullscreen");
                this.mVideoAllCallBack.onClickResumeFullscreen(this.mOriginUrl, this.mTitle, this);
            } else {
                com.papa.gsyvideoplayer.utils.c.h("onClickResume");
                this.mVideoAllCallBack.onClickResume(this.mOriginUrl, this.mTitle, this);
            }
        }
        if (!this.mHadPlay && !this.mStartAfterPrepared) {
            startAfterPrepared();
        }
        try {
            getGSYVideoManager().start();
        } catch (Exception e11) {
            e11.printStackTrace();
        }
        setStateAndUi(2);
    }

    protected abstract void dismissBrightnessDialog();

    protected abstract void dismissProgressDialog();

    protected abstract void dismissVolumeDialog();

    public ImageView getBackButton() {
        return this.mBackButton;
    }

    public int getDismissControlTime() {
        return this.mDismissControlTime;
    }

    public int getEnlargeImageRes() {
        int i10 = this.mEnlargeImageRes;
        return i10 == -1 ? R.drawable.video_enlarge : i10;
    }

    public ImageView getFullscreenButton() {
        return this.mFullscreenButton;
    }

    public float getSeekRatio() {
        return this.mSeekRatio;
    }

    public int getShrinkImageRes() {
        int i10 = this.mShrinkImageRes;
        return i10 == -1 ? R.drawable.video_shrink : i10;
    }

    public View getStartButton() {
        return this.mStartButton;
    }

    public View getThumbImageView() {
        return this.mThumbImageView;
    }

    public RelativeLayout getThumbImageViewLayout() {
        return this.mThumbImageViewLayout;
    }

    public TextView getTitleTextView() {
        return this.mTitleTextView;
    }

    protected abstract void hideAllWidget();

    @Override // com.papa.gsyvideoplayer.video.base.GSYVideoView
    protected void init(Context context) {
        RelativeLayout relativeLayout;
        super.init(context);
        this.mStartButton = findViewById(R.id.start);
        this.mTitleTextView = (TextView) findViewById(R.id.title);
        this.mBackButton = (ImageView) findViewById(R.id.back);
        this.mFullscreenButton = (ImageView) findViewById(R.id.fullscreen);
        this.mProgressBar = (SeekBar) findViewById(R.id.progress);
        this.mCurrentTimeTextView = (TextView) findViewById(R.id.current);
        this.mTotalTimeTextView = (TextView) findViewById(R.id.total);
        this.mBottomContainer = (ViewGroup) findViewById(R.id.layout_bottom);
        this.mTopContainer = (ViewGroup) findViewById(R.id.layout_top);
        this.mBottomProgressBar = (ProgressBar) findViewById(R.id.bottom_progressbar);
        this.mThumbImageViewLayout = (RelativeLayout) findViewById(R.id.thumb);
        this.mLockScreen = (ImageView) findViewById(R.id.lock_screen);
        this.mLoadingProgressBar = findViewById(R.id.loading);
        if (isInEditMode()) {
            return;
        }
        View view = this.mStartButton;
        if (view != null) {
            view.setOnClickListener(this);
        }
        ImageView imageView = this.mFullscreenButton;
        if (imageView != null) {
            imageView.setOnClickListener(this);
            this.mFullscreenButton.setOnTouchListener(this);
        }
        SeekBar seekBar = this.mProgressBar;
        if (seekBar != null) {
            seekBar.setOnSeekBarChangeListener(this);
        }
        ViewGroup viewGroup = this.mBottomContainer;
        if (viewGroup != null) {
            viewGroup.setOnClickListener(this);
        }
        ViewGroup viewGroup2 = this.mTextureViewContainer;
        if (viewGroup2 != null) {
            viewGroup2.setOnClickListener(this);
            this.mTextureViewContainer.setOnTouchListener(this);
        }
        SeekBar seekBar2 = this.mProgressBar;
        if (seekBar2 != null) {
            seekBar2.setOnTouchListener(this);
        }
        RelativeLayout relativeLayout2 = this.mThumbImageViewLayout;
        if (relativeLayout2 != null) {
            relativeLayout2.setVisibility(8);
            this.mThumbImageViewLayout.setOnClickListener(this);
        }
        if (this.mThumbImageView != null && !this.mIfCurrentIsFullscreen && (relativeLayout = this.mThumbImageViewLayout) != null) {
            relativeLayout.removeAllViews();
            resolveThumbImage(this.mThumbImageView);
        }
        ImageView imageView2 = this.mBackButton;
        if (imageView2 != null) {
            imageView2.setOnClickListener(this);
        }
        ImageView imageView3 = this.mLockScreen;
        if (imageView3 != null) {
            imageView3.setVisibility(8);
            this.mLockScreen.setOnClickListener(new a());
        }
        if (getActivityContext() != null) {
            this.mSeekEndOffset = com.papa.gsyvideoplayer.utils.b.b(getActivityContext(), 50.0f);
        }
    }

    public void initUIState() {
        setStateAndUi(0);
    }

    public boolean isHideKey() {
        return this.mHideKey;
    }

    public boolean isNeedLockFull() {
        return this.mNeedLockFull;
    }

    public boolean isNeedShowWifiTip() {
        return this.mNeedShowWifiTip;
    }

    public boolean isShowDragProgressTextOnSeekBar() {
        return this.isShowDragProgressTextOnSeekBar;
    }

    protected boolean isShowNetConfirm() {
        return (this.mOriginUrl.startsWith("file") || this.mOriginUrl.startsWith(f.f26954h) || com.papa.gsyvideoplayer.utils.b.m(getContext()) || !this.mNeedShowWifiTip || getGSYVideoManager().b(this.mContext.getApplicationContext(), this.mCachePath, this.mOriginUrl)) ? false : true;
    }

    public boolean isTouchWiget() {
        return this.mIsTouchWiget;
    }

    public boolean isTouchWigetFull() {
        return this.mIsTouchWigetFull;
    }

    protected void lockTouchLogic() {
        if (this.mLockCurScreen) {
            this.mLockScreen.setImageResource(R.drawable.unlock);
            this.mLockCurScreen = false;
        } else {
            this.mLockScreen.setImageResource(R.drawable.lock);
            this.mLockCurScreen = true;
            hideAllWidget();
        }
    }

    protected void loopSetProgressAndTime() {
        SeekBar seekBar = this.mProgressBar;
        if (seekBar == null || this.mTotalTimeTextView == null || this.mCurrentTimeTextView == null) {
            return;
        }
        seekBar.setProgress(0);
        this.mProgressBar.setSecondaryProgress(0);
        this.mCurrentTimeTextView.setText(com.papa.gsyvideoplayer.utils.b.r(0));
        ProgressBar progressBar = this.mBottomProgressBar;
        if (progressBar != null) {
            progressBar.setProgress(0);
        }
    }

    @Override // com.papa.gsyvideoplayer.video.base.GSYVideoView, v7.a
    public void onAutoCompletion() {
        super.onAutoCompletion();
        if (this.mLockCurScreen) {
            lockTouchLogic();
            this.mLockScreen.setVisibility(8);
        }
    }

    protected void onBrightnessSlide(float f10) {
        float f11 = ((Activity) this.mContext).getWindow().getAttributes().screenBrightness;
        this.mBrightnessData = f11;
        if (f11 <= 0.0f) {
            this.mBrightnessData = 0.5f;
        } else if (f11 < 0.01f) {
            this.mBrightnessData = 0.01f;
        }
        WindowManager.LayoutParams attributes = ((Activity) this.mContext).getWindow().getAttributes();
        float f12 = this.mBrightnessData + f10;
        attributes.screenBrightness = f12;
        if (f12 > 1.0f) {
            attributes.screenBrightness = 1.0f;
        } else if (f12 < 0.01f) {
            attributes.screenBrightness = 0.01f;
        }
        showBrightnessDialog(attributes.screenBrightness);
        ((Activity) this.mContext).getWindow().setAttributes(attributes);
    }

    @Override // v7.a
    public void onBufferingUpdate(int i10) {
        post(new c(i10));
    }

    public void onClick(View view) {
        int id2 = view.getId();
        if (this.mHideKey && this.mIfCurrentIsFullscreen) {
            com.papa.gsyvideoplayer.utils.b.k(this.mContext);
        }
        if (id2 == R.id.start) {
            clickStartIcon();
            return;
        }
        int i10 = R.id.surface_container;
        if (id2 == i10 && this.mCurrentState == 7) {
            if (this.mVideoAllCallBack != null) {
                com.papa.gsyvideoplayer.utils.c.h("onClickStartError");
                this.mVideoAllCallBack.onClickStartError(this.mOriginUrl, this.mTitle, this);
            }
            prepareVideo();
            return;
        }
        if (id2 != R.id.thumb) {
            if (id2 == i10) {
                if (this.mVideoAllCallBack != null && isCurrentMediaListener()) {
                    if (this.mIfCurrentIsFullscreen) {
                        com.papa.gsyvideoplayer.utils.c.h("onClickBlankFullscreen");
                        this.mVideoAllCallBack.onClickBlankFullscreen(this.mOriginUrl, this.mTitle, this);
                    } else {
                        com.papa.gsyvideoplayer.utils.c.h("onClickBlank");
                        this.mVideoAllCallBack.onClickBlank(this.mOriginUrl, this.mTitle, this);
                    }
                }
                startDismissControlViewTimer();
                return;
            }
            return;
        }
        if (this.mThumbPlay) {
            if (TextUtils.isEmpty(this.mUrl)) {
                com.papa.gsyvideoplayer.utils.c.e("********" + getResources().getString(R.string.no_url));
                return;
            }
            int i11 = this.mCurrentState;
            if (i11 != 0) {
                if (i11 == 6) {
                    onClickUiToggle();
                }
            } else if (isShowNetConfirm()) {
                showWifiDialog();
            } else {
                startPlayLogic();
            }
        }
    }

    protected abstract void onClickUiToggle();

    @Override // android.view.ViewGroup, android.view.View
    protected void onDetachedFromWindow() {
        super.onDetachedFromWindow();
        com.papa.gsyvideoplayer.utils.c.h(hashCode() + "------------------------------ dismiss onDetachedFromWindow");
        cancelProgressTimer();
        cancelDismissControlViewTimer();
    }

    @Override // com.papa.gsyvideoplayer.video.base.GSYVideoView, v7.a
    public void onError(int i10, int i11) {
        super.onError(i10, i11);
        if (this.mLockCurScreen) {
            lockTouchLogic();
            this.mLockScreen.setVisibility(8);
        }
    }

    @Override // com.papa.gsyvideoplayer.video.base.GSYVideoView, v7.a
    public void onPrepared() {
        setTextAndProgress(0, true);
        super.onPrepared();
        if (this.mCurrentState != 1) {
            return;
        }
        startProgressTimer();
        com.papa.gsyvideoplayer.utils.c.h(hashCode() + "------------------------------ surface_container onPrepared");
    }

    @Override // android.widget.SeekBar.OnSeekBarChangeListener
    public void onProgressChanged(SeekBar seekBar, int i10, boolean z10) {
        showDragProgressTextOnSeekBar(z10, i10);
    }

    public void onStartTrackingTouch(SeekBar seekBar) {
        this.mHadSeekTouch = true;
    }

    public void onStopTrackingTouch(SeekBar seekBar) {
        if (this.mVideoAllCallBack != null && isCurrentMediaListener()) {
            if (isIfCurrentIsFullscreen()) {
                com.papa.gsyvideoplayer.utils.c.h("onClickSeekbarFullscreen");
                this.mVideoAllCallBack.onClickSeekbarFullscreen(this.mOriginUrl, this.mTitle, this);
            } else {
                com.papa.gsyvideoplayer.utils.c.h("onClickSeekbar");
                this.mVideoAllCallBack.onClickSeekbar(this.mOriginUrl, this.mTitle, this);
            }
        }
        if (getGSYVideoManager() != null && this.mHadPlay) {
            try {
                getGSYVideoManager().seekTo((seekBar.getProgress() * getDuration()) / 100);
            } catch (Exception e10) {
                com.papa.gsyvideoplayer.utils.c.j(e10.toString());
            }
        }
        this.mHadSeekTouch = false;
    }

    @Override // android.view.View.OnTouchListener
    public boolean onTouch(View view, MotionEvent motionEvent) {
        int id2 = view.getId();
        float x10 = motionEvent.getX();
        float y10 = motionEvent.getY();
        if (this.mIfCurrentIsFullscreen && this.mLockCurScreen && this.mNeedLockFull) {
            onClickUiToggle();
            startDismissControlViewTimer();
            return true;
        }
        if (id2 == R.id.fullscreen) {
            return false;
        }
        if (id2 == R.id.surface_container) {
            int action = motionEvent.getAction();
            if (action == 0) {
                touchSurfaceDown(x10, y10);
            } else if (action == 1) {
                startDismissControlViewTimer();
                touchSurfaceUp();
                com.papa.gsyvideoplayer.utils.c.h(hashCode() + "------------------------------ surface_container ACTION_UP");
                startProgressTimer();
                if (this.mHideKey && this.mShowVKey) {
                    return true;
                }
            } else if (action == 2) {
                float f10 = x10 - this.mDownX;
                float f11 = y10 - this.mDownY;
                float fAbs = Math.abs(f10);
                float fAbs2 = Math.abs(f11);
                boolean z10 = this.mIfCurrentIsFullscreen;
                if (((z10 && this.mIsTouchWigetFull) || (this.mIsTouchWiget && !z10)) && !this.mChangePosition && !this.mChangeVolume && !this.mBrightness) {
                    touchSurfaceMoveFullLogic(fAbs, fAbs2);
                }
                touchSurfaceMove(f10, f11, y10);
            }
            this.gestureDetector.onTouchEvent(motionEvent);
        } else if (id2 == R.id.progress) {
            int action2 = motionEvent.getAction();
            if (action2 == 0) {
                cancelDismissControlViewTimer();
            } else if (action2 == 1) {
                startDismissControlViewTimer();
                com.papa.gsyvideoplayer.utils.c.h(hashCode() + "------------------------------ progress ACTION_UP");
                startProgressTimer();
                for (ViewParent parent = getParent(); parent != null; parent = parent.getParent()) {
                    parent.requestDisallowInterceptTouchEvent(false);
                }
                this.mBrightnessData = -1.0f;
            } else if (action2 == 2) {
            }
            cancelProgressTimer();
            for (ViewParent parent2 = getParent(); parent2 != null; parent2 = parent2.getParent()) {
                parent2.requestDisallowInterceptTouchEvent(true);
            }
        }
        return false;
    }

    @Override // com.papa.gsyvideoplayer.video.base.GSYVideoView
    protected void prepareVideo() {
        if (this.mSetUpLazy) {
            super.setUp(this.mOriginUrl, this.mCache, this.mCachePath, this.mMapHeadData, this.mTitle);
        }
        super.prepareVideo();
    }

    protected void resetProgressAndTime() {
        SeekBar seekBar = this.mProgressBar;
        if (seekBar == null || this.mTotalTimeTextView == null || this.mCurrentTimeTextView == null) {
            return;
        }
        seekBar.setProgress(0);
        this.mProgressBar.setSecondaryProgress(0);
        this.mCurrentTimeTextView.setText(com.papa.gsyvideoplayer.utils.b.r(0));
        this.mTotalTimeTextView.setText(com.papa.gsyvideoplayer.utils.b.r(0));
        ProgressBar progressBar = this.mBottomProgressBar;
        if (progressBar != null) {
            progressBar.setProgress(0);
            this.mBottomProgressBar.setSecondaryProgress(0);
        }
    }

    protected void resolveThumbImage(View view) {
        RelativeLayout relativeLayout = this.mThumbImageViewLayout;
        if (relativeLayout != null) {
            relativeLayout.removeAllViews();
            ViewGroup.LayoutParams layoutParams = view.getLayoutParams();
            layoutParams.height = -1;
            layoutParams.width = -1;
            this.mThumbImageViewLayout.addView(view, layoutParams);
        }
    }

    protected void resolveUIState(int i10) {
        if (i10 == 0) {
            changeUiToNormal();
            cancelDismissControlViewTimer();
            return;
        }
        if (i10 == 1) {
            changeUiToPreparingShow();
            startDismissControlViewTimer();
            return;
        }
        if (i10 == 2) {
            changeUiToPlayingShow();
            startDismissControlViewTimer();
            return;
        }
        if (i10 == 3) {
            changeUiToPlayingBufferingShow();
            return;
        }
        if (i10 == 5) {
            changeUiToPauseShow();
            cancelDismissControlViewTimer();
        } else if (i10 == 6) {
            changeUiToCompleteShow();
            cancelDismissControlViewTimer();
        } else {
            if (i10 != 7) {
                return;
            }
            changeUiToError();
        }
    }

    public void setDismissControlTime(int i10) {
        this.mDismissControlTime = i10;
    }

    public void setEnlargeImageRes(int i10) {
        this.mEnlargeImageRes = i10;
    }

    public void setGSYVideoProgressListener(v7.d dVar) {
        this.mGSYVideoProgressListener = dVar;
    }

    public void setHideKey(boolean z10) {
        this.mHideKey = z10;
    }

    public void setIsTouchWiget(boolean z10) {
        this.mIsTouchWiget = z10;
    }

    public void setIsTouchWigetFull(boolean z10) {
        this.mIsTouchWigetFull = z10;
    }

    public void setLockClickListener(g gVar) {
        this.mLockClickListener = gVar;
    }

    public void setNeedLockFull(boolean z10) {
        this.mNeedLockFull = z10;
    }

    public void setNeedShowWifiTip(boolean z10) {
        this.mNeedShowWifiTip = z10;
    }

    protected void setProgressAndTime(int i10, int i11, int i12, int i13, boolean z10) {
        v7.d dVar = this.mGSYVideoProgressListener;
        if (dVar != null && this.mCurrentState == 2) {
            dVar.a(i10, i11, i12, i13);
        }
        SeekBar seekBar = this.mProgressBar;
        if (seekBar == null || this.mTotalTimeTextView == null || this.mCurrentTimeTextView == null || this.mHadSeekTouch) {
            return;
        }
        if (!this.mTouchingProgressBar && (i10 != 0 || z10)) {
            seekBar.setProgress(i10);
        }
        if (getGSYVideoManager().f() > 0) {
            i11 = getGSYVideoManager().f();
        }
        if (i11 > 94) {
            i11 = 100;
        }
        setSecondaryProgress(i11);
        this.mTotalTimeTextView.setText(com.papa.gsyvideoplayer.utils.b.r(i13));
        if (i12 > 0) {
            this.mCurrentTimeTextView.setText(com.papa.gsyvideoplayer.utils.b.r(i12));
        }
        ProgressBar progressBar = this.mBottomProgressBar;
        if (progressBar != null) {
            if (i10 != 0 || z10) {
                progressBar.setProgress(i10);
            }
            setSecondaryProgress(i11);
        }
    }

    protected void setSecondaryProgress(int i10) {
        if (this.mProgressBar != null && i10 != 0 && !getGSYVideoManager().A()) {
            this.mProgressBar.setSecondaryProgress(i10);
        }
        if (this.mBottomProgressBar == null || i10 == 0 || getGSYVideoManager().A()) {
            return;
        }
        this.mBottomProgressBar.setSecondaryProgress(i10);
    }

    public void setSeekRatio(float f10) {
        if (f10 < 0.0f) {
            return;
        }
        this.mSeekRatio = f10;
    }

    public void setShowDragProgressTextOnSeekBar(boolean z10) {
        this.isShowDragProgressTextOnSeekBar = z10;
    }

    public void setShrinkImageRes(int i10) {
        this.mShrinkImageRes = i10;
    }

    @Override // com.papa.gsyvideoplayer.video.base.GSYTextureRenderView
    protected void setSmallVideoTextureView(View.OnTouchListener onTouchListener) {
        super.setSmallVideoTextureView(onTouchListener);
        RelativeLayout relativeLayout = this.mThumbImageViewLayout;
        if (relativeLayout != null) {
            relativeLayout.setOnTouchListener(onTouchListener);
        }
    }

    @Override // com.papa.gsyvideoplayer.video.base.GSYVideoView
    protected void setStateAndUi(int i10) {
        TextView textView;
        this.mCurrentState = i10;
        if ((i10 == 0 && isCurrentMediaListener()) || i10 == 6 || i10 == 7) {
            this.mHadPrepared = false;
        }
        int i11 = this.mCurrentState;
        if (i11 == 0) {
            if (isCurrentMediaListener()) {
                com.papa.gsyvideoplayer.utils.c.h(hashCode() + "------------------------------ dismiss CURRENT_STATE_NORMAL");
                cancelProgressTimer();
                getGSYVideoManager().y();
                releasePauseCover();
                this.mBufferPoint = 0;
                this.mSaveChangeViewTIme = 0L;
                AudioManager audioManager = this.mAudioManager;
                if (audioManager != null) {
                    audioManager.abandonAudioFocus(this.onAudioFocusChangeListener);
                }
            }
            releaseNetWorkState();
        } else if (i11 == 1) {
            resetProgressAndTime();
        } else if (i11 != 2) {
            if (i11 == 5) {
                com.papa.gsyvideoplayer.utils.c.h(hashCode() + "------------------------------ CURRENT_STATE_PAUSE");
                startProgressTimer();
            } else if (i11 == 6) {
                com.papa.gsyvideoplayer.utils.c.h(hashCode() + "------------------------------ dismiss CURRENT_STATE_AUTO_COMPLETE");
                cancelProgressTimer();
                SeekBar seekBar = this.mProgressBar;
                if (seekBar != null) {
                    seekBar.setProgress(100);
                }
                TextView textView2 = this.mCurrentTimeTextView;
                if (textView2 != null && (textView = this.mTotalTimeTextView) != null) {
                    textView2.setText(textView.getText());
                }
                ProgressBar progressBar = this.mBottomProgressBar;
                if (progressBar != null) {
                    progressBar.setProgress(100);
                }
            } else if (i11 == 7 && isCurrentMediaListener()) {
                getGSYVideoManager().y();
            }
        } else if (isCurrentMediaListener()) {
            com.papa.gsyvideoplayer.utils.c.h(hashCode() + "------------------------------ CURRENT_STATE_PLAYING");
            startProgressTimer();
        }
        resolveUIState(i10);
    }

    protected void setTextAndProgress(int i10) {
        setTextAndProgress(i10, false);
    }

    public void setThumbImageView(View view) {
        if (this.mThumbImageViewLayout != null) {
            this.mThumbImageView = view;
            resolveThumbImage(view);
        }
    }

    public void setThumbPlay(boolean z10) {
        this.mThumbPlay = z10;
    }

    @Override // com.papa.gsyvideoplayer.video.base.GSYVideoView
    public boolean setUp(String str, boolean z10, String str2) {
        return setUp(str, z10, null, str2);
    }

    public boolean setUpLazy(String str, boolean z10, File file, Map<String, String> map, String str2) {
        this.mOriginUrl = str;
        this.mCache = z10;
        this.mCachePath = file;
        this.mSetUpLazy = true;
        this.mTitle = str2;
        this.mMapHeadData = map;
        if (isCurrentMediaListener() && System.currentTimeMillis() - this.mSaveChangeViewTIme < 2000) {
            return false;
        }
        this.mUrl = "waiting";
        this.mCurrentState = 0;
        return true;
    }

    protected void setViewShowState(View view, int i10) {
        if (view != null) {
            view.setVisibility(i10);
        }
    }

    protected abstract void showBrightnessDialog(float f10);

    protected void showDragProgressTextOnSeekBar(boolean z10, int i10) {
        if (z10 && this.isShowDragProgressTextOnSeekBar) {
            int duration = getDuration();
            TextView textView = this.mCurrentTimeTextView;
            if (textView != null) {
                textView.setText(com.papa.gsyvideoplayer.utils.b.r((i10 * duration) / 100));
            }
        }
    }

    protected abstract void showProgressDialog(float f10, String str, int i10, String str2, int i11);

    protected abstract void showVolumeDialog(float f10, int i10);

    protected abstract void showWifiDialog();

    protected void startDismissControlViewTimer() {
        cancelDismissControlViewTimer();
        this.mPostDismiss = true;
        postDelayed(this.dismissControlTask, this.mDismissControlTime);
    }

    /* JADX INFO: Access modifiers changed from: protected */
    public void startProgressTimer() {
        cancelProgressTimer();
        this.mPostProgress = true;
        postDelayed(this.progressTask, 300L);
    }

    protected void touchDoubleUp() {
        if (this.mHadPlay) {
            clickStartIcon();
        }
    }

    protected void touchLongPress(MotionEvent motionEvent) {
    }

    protected void touchSurfaceDown(float f10, float f11) {
        this.mTouchingProgressBar = true;
        this.mDownX = f10;
        this.mDownY = f11;
        this.mMoveY = 0.0f;
        this.mChangeVolume = false;
        this.mChangePosition = false;
        this.mShowVKey = false;
        this.mBrightness = false;
        this.mFirstTouch = true;
    }

    protected void touchSurfaceMove(float f10, float f11, float f12) {
        int i10;
        int i11;
        if (getActivityContext() != null) {
            i10 = com.papa.gsyvideoplayer.utils.b.f((Activity) getActivityContext()) ? this.mScreenHeight : this.mScreenWidth;
            i11 = com.papa.gsyvideoplayer.utils.b.f((Activity) getActivityContext()) ? this.mScreenWidth : this.mScreenHeight;
        } else {
            i10 = 0;
            i11 = 0;
        }
        if (this.mChangePosition) {
            int duration = getDuration();
            int i12 = (int) (this.mDownPosition + (((duration * f10) / i10) / this.mSeekRatio));
            this.mSeekTimePosition = i12;
            if (i12 > duration) {
                this.mSeekTimePosition = duration;
            }
            showProgressDialog(f10, com.papa.gsyvideoplayer.utils.b.r(this.mSeekTimePosition), this.mSeekTimePosition, com.papa.gsyvideoplayer.utils.b.r(duration), duration);
            return;
        }
        if (this.mChangeVolume) {
            float f13 = -f11;
            int streamMaxVolume = this.mAudioManager.getStreamMaxVolume(3);
            float f14 = i11;
            this.mAudioManager.setStreamVolume(3, this.mGestureDownVolume + ((int) (((streamMaxVolume * f13) * 3.0f) / f14)), 0);
            showVolumeDialog(-f13, (int) (((this.mGestureDownVolume * 100) / streamMaxVolume) + (((3.0f * f13) * 100.0f) / f14)));
            return;
        }
        if (!this.mBrightness || Math.abs(f11) <= this.mThreshold) {
            return;
        }
        onBrightnessSlide((-f11) / i11);
        this.mDownY = f12;
    }

    protected void touchSurfaceMoveFullLogic(float f10, float f11) {
        int i10;
        if (getActivityContext() != null) {
            i10 = com.papa.gsyvideoplayer.utils.b.f((Activity) getActivityContext()) ? this.mScreenHeight : this.mScreenWidth;
        } else {
            i10 = 0;
        }
        int i11 = this.mThreshold;
        if (f10 > i11 || f11 > i11) {
            cancelProgressTimer();
            if (f10 >= this.mThreshold) {
                if (Math.abs(com.papa.gsyvideoplayer.utils.b.h(getContext()) - this.mDownX) <= this.mSeekEndOffset) {
                    this.mShowVKey = true;
                    return;
                } else {
                    this.mChangePosition = true;
                    this.mDownPosition = getCurrentPositionWhenPlaying();
                    return;
                }
            }
            boolean z10 = Math.abs(((float) com.papa.gsyvideoplayer.utils.b.g(getContext())) - this.mDownY) > ((float) this.mSeekEndOffset);
            if (this.mFirstTouch) {
                this.mBrightness = this.mDownX < ((float) i10) * 0.5f && z10;
                this.mFirstTouch = false;
            }
            if (!this.mBrightness) {
                this.mChangeVolume = z10;
                this.mGestureDownVolume = this.mAudioManager.getStreamVolume(3);
            }
            this.mShowVKey = !z10;
        }
    }

    protected void touchSurfaceUp() {
        int i10;
        if (this.mChangePosition) {
            int duration = getDuration();
            int i11 = this.mSeekTimePosition * 100;
            if (duration == 0) {
                duration = 1;
            }
            int i12 = i11 / duration;
            ProgressBar progressBar = this.mBottomProgressBar;
            if (progressBar != null) {
                progressBar.setProgress(i12);
            }
        }
        this.mTouchingProgressBar = false;
        dismissProgressDialog();
        dismissVolumeDialog();
        dismissBrightnessDialog();
        if (!this.mChangePosition || getGSYVideoManager() == null || ((i10 = this.mCurrentState) != 2 && i10 != 5)) {
            if (this.mBrightness) {
                if (this.mVideoAllCallBack == null || !isCurrentMediaListener()) {
                    return;
                }
                com.papa.gsyvideoplayer.utils.c.h("onTouchScreenSeekLight");
                this.mVideoAllCallBack.onTouchScreenSeekLight(this.mOriginUrl, this.mTitle, this);
                return;
            }
            if (this.mChangeVolume && this.mVideoAllCallBack != null && isCurrentMediaListener()) {
                com.papa.gsyvideoplayer.utils.c.h("onTouchScreenSeekVolume");
                this.mVideoAllCallBack.onTouchScreenSeekVolume(this.mOriginUrl, this.mTitle, this);
                return;
            }
            return;
        }
        try {
            getGSYVideoManager().seekTo(this.mSeekTimePosition);
        } catch (Exception e10) {
            e10.printStackTrace();
        }
        int duration2 = getDuration();
        int i13 = this.mSeekTimePosition * 100;
        if (duration2 == 0) {
            duration2 = 1;
        }
        int i14 = i13 / duration2;
        SeekBar seekBar = this.mProgressBar;
        if (seekBar != null) {
            seekBar.setProgress(i14);
        }
        if (this.mVideoAllCallBack == null || !isCurrentMediaListener()) {
            return;
        }
        com.papa.gsyvideoplayer.utils.c.h("onTouchScreenSeekPosition");
        this.mVideoAllCallBack.onTouchScreenSeekPosition(this.mOriginUrl, this.mTitle, this);
    }

    protected void setTextAndProgress(int i10, boolean z10) {
        int currentPositionWhenPlaying = getCurrentPositionWhenPlaying();
        int duration = getDuration();
        setProgressAndTime((currentPositionWhenPlaying * 100) / (duration == 0 ? 1 : duration), i10, currentPositionWhenPlaying, duration, z10);
    }

    @Override // com.papa.gsyvideoplayer.video.base.GSYVideoView
    public boolean setUp(String str, boolean z10, File file, String str2) {
        TextView textView;
        if (!super.setUp(str, z10, file, str2)) {
            return false;
        }
        if (str2 != null && (textView = this.mTitleTextView) != null) {
            textView.setText(str2);
        }
        if (this.mIfCurrentIsFullscreen) {
            ImageView imageView = this.mFullscreenButton;
            if (imageView == null) {
                return true;
            }
            imageView.setImageResource(getShrinkImageRes());
            return true;
        }
        ImageView imageView2 = this.mFullscreenButton;
        if (imageView2 == null) {
            return true;
        }
        imageView2.setImageResource(getEnlargeImageRes());
        return true;
    }

    public GSYVideoControlView(@NonNull Context context, @Nullable AttributeSet attributeSet) {
        super(context, attributeSet);
        this.mThreshold = 80;
        this.mShrinkImageRes = -1;
        this.mEnlargeImageRes = -1;
        this.mDismissControlTime = DefaultRetryPolicy.DEFAULT_TIMEOUT_MS;
        this.mBrightnessData = -1.0f;
        this.mSeekRatio = 1.0f;
        this.mTouchingProgressBar = false;
        this.mChangeVolume = false;
        this.mChangePosition = false;
        this.mShowVKey = false;
        this.mBrightness = false;
        this.mFirstTouch = false;
        this.mHideKey = true;
        this.mNeedShowWifiTip = true;
        this.mIsTouchWiget = true;
        this.mIsTouchWigetFull = true;
        this.mSetUpLazy = false;
        this.mHadSeekTouch = false;
        this.mPostProgress = false;
        this.mPostDismiss = false;
        this.isShowDragProgressTextOnSeekBar = false;
        this.gestureDetector = new GestureDetector(getContext().getApplicationContext(), new b());
        this.progressTask = new d();
        this.dismissControlTask = new e();
    }

    public GSYVideoControlView(@NonNull Context context, @Nullable AttributeSet attributeSet, @AttrRes int i10) {
        super(context, attributeSet, i10);
        this.mThreshold = 80;
        this.mShrinkImageRes = -1;
        this.mEnlargeImageRes = -1;
        this.mDismissControlTime = DefaultRetryPolicy.DEFAULT_TIMEOUT_MS;
        this.mBrightnessData = -1.0f;
        this.mSeekRatio = 1.0f;
        this.mTouchingProgressBar = false;
        this.mChangeVolume = false;
        this.mChangePosition = false;
        this.mShowVKey = false;
        this.mBrightness = false;
        this.mFirstTouch = false;
        this.mHideKey = true;
        this.mNeedShowWifiTip = true;
        this.mIsTouchWiget = true;
        this.mIsTouchWigetFull = true;
        this.mSetUpLazy = false;
        this.mHadSeekTouch = false;
        this.mPostProgress = false;
        this.mPostDismiss = false;
        this.isShowDragProgressTextOnSeekBar = false;
        this.gestureDetector = new GestureDetector(getContext().getApplicationContext(), new b());
        this.progressTask = new d();
        this.dismissControlTask = new e();
    }

    public GSYVideoControlView(Context context, Boolean bool) {
        super(context, bool);
        this.mThreshold = 80;
        this.mShrinkImageRes = -1;
        this.mEnlargeImageRes = -1;
        this.mDismissControlTime = DefaultRetryPolicy.DEFAULT_TIMEOUT_MS;
        this.mBrightnessData = -1.0f;
        this.mSeekRatio = 1.0f;
        this.mTouchingProgressBar = false;
        this.mChangeVolume = false;
        this.mChangePosition = false;
        this.mShowVKey = false;
        this.mBrightness = false;
        this.mFirstTouch = false;
        this.mHideKey = true;
        this.mNeedShowWifiTip = true;
        this.mIsTouchWiget = true;
        this.mIsTouchWigetFull = true;
        this.mSetUpLazy = false;
        this.mHadSeekTouch = false;
        this.mPostProgress = false;
        this.mPostDismiss = false;
        this.isShowDragProgressTextOnSeekBar = false;
        this.gestureDetector = new GestureDetector(getContext().getApplicationContext(), new b());
        this.progressTask = new d();
        this.dismissControlTask = new e();
    }
}
