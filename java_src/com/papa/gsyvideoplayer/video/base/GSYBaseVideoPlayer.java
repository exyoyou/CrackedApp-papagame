package com.papa.gsyvideoplayer.video.base;

import android.R;
import android.app.Activity;
import android.content.Context;
import android.content.res.Configuration;
import android.graphics.Bitmap;
import android.graphics.Point;
import android.os.Handler;
import android.transition.TransitionManager;
import android.util.AttributeSet;
import android.view.View;
import android.view.ViewGroup;
import android.widget.FrameLayout;
import android.widget.ImageView;
import android.widget.SeekBar;
import android.widget.TextView;
import com.papa.gsyvideoplayer.utils.m;
import com.papa.gsyvideoplayer.utils.n;

/* JADX INFO: loaded from: classes2.dex */
public abstract class GSYBaseVideoPlayer extends GSYVideoControlView {
    protected boolean isNeedAutoAdaptation;
    protected boolean mActionBar;
    protected boolean mAutoFullWithSize;
    protected View.OnClickListener mBackFromFullScreenListener;
    protected Runnable mCheckoutTask;
    protected boolean mFullAnimEnd;
    protected Handler mInnerHandler;
    private boolean mIsOnlyRotateLand;
    protected int[] mListItemRect;
    protected int[] mListItemSize;
    protected boolean mLockLand;
    protected n mOrientationUtils;
    protected boolean mRotateViewAuto;
    protected boolean mRotateWithSystem;
    protected boolean mShowFullAnimation;
    protected View mSmallClose;
    protected boolean mStatusBar;
    protected int mSystemUiVisibility;

    class a implements View.OnClickListener {
        a() {
        }

        @Override // android.view.View.OnClickListener
        public void onClick(View view) {
            GSYBaseVideoPlayer.this.hideSmallVideo();
            GSYBaseVideoPlayer.this.releaseVideos();
        }
    }

    class b implements Runnable {

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        final /* synthetic */ boolean f77135b;

        /* JADX INFO: renamed from: c, reason: collision with root package name */
        final /* synthetic */ boolean f77136c;

        /* JADX INFO: renamed from: d, reason: collision with root package name */
        final /* synthetic */ GSYBaseVideoPlayer f77137d;

        /* JADX INFO: renamed from: e, reason: collision with root package name */
        final /* synthetic */ FrameLayout f77138e;

        b(boolean z10, boolean z11, GSYBaseVideoPlayer gSYBaseVideoPlayer, FrameLayout frameLayout) {
            this.f77135b = z10;
            this.f77136c = z11;
            this.f77137d = gSYBaseVideoPlayer;
            this.f77138e = frameLayout;
        }

        @Override // java.lang.Runnable
        public void run() {
            n nVar;
            if (!this.f77135b && this.f77136c && (nVar = GSYBaseVideoPlayer.this.mOrientationUtils) != null && nVar.r() != 1) {
                GSYBaseVideoPlayer.this.mOrientationUtils.E();
            }
            this.f77137d.setVisibility(0);
            this.f77138e.setVisibility(0);
        }
    }

    class c implements Runnable {
        c() {
        }

        @Override // java.lang.Runnable
        public void run() {
            GSYBaseVideoPlayer.this.backToNormal();
        }
    }

    class d implements Runnable {

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        final /* synthetic */ View f77141b;

        /* JADX INFO: renamed from: c, reason: collision with root package name */
        final /* synthetic */ ViewGroup f77142c;

        /* JADX INFO: renamed from: d, reason: collision with root package name */
        final /* synthetic */ GSYVideoPlayer f77143d;

        d(View view, ViewGroup viewGroup, GSYVideoPlayer gSYVideoPlayer) {
            this.f77141b = view;
            this.f77142c = viewGroup;
            this.f77143d = gSYVideoPlayer;
        }

        @Override // java.lang.Runnable
        public void run() {
            GSYBaseVideoPlayer.this.resolveNormalVideoShow(this.f77141b, this.f77142c, this.f77143d);
        }
    }

    class e implements Runnable {
        e() {
        }

        @Override // java.lang.Runnable
        public void run() {
            int i10;
            int i11;
            GSYVideoPlayer fullWindowPlayer = GSYBaseVideoPlayer.this.getFullWindowPlayer();
            if (fullWindowPlayer == null || (i10 = fullWindowPlayer.mCurrentState) == (i11 = GSYBaseVideoPlayer.this.mCurrentState) || i10 != 3 || i11 == 1) {
                return;
            }
            fullWindowPlayer.setStateAndUi(i11);
        }
    }

    class f implements View.OnClickListener {
        f() {
        }

        @Override // android.view.View.OnClickListener
        public void onClick(View view) {
            GSYBaseVideoPlayer gSYBaseVideoPlayer = GSYBaseVideoPlayer.this;
            View.OnClickListener onClickListener = gSYBaseVideoPlayer.mBackFromFullScreenListener;
            if (onClickListener == null) {
                gSYBaseVideoPlayer.clearFullscreenLayout();
            } else {
                onClickListener.onClick(view);
            }
        }
    }

    class g implements View.OnClickListener {
        g() {
        }

        @Override // android.view.View.OnClickListener
        public void onClick(View view) {
            GSYBaseVideoPlayer gSYBaseVideoPlayer = GSYBaseVideoPlayer.this;
            View.OnClickListener onClickListener = gSYBaseVideoPlayer.mBackFromFullScreenListener;
            if (onClickListener == null) {
                gSYBaseVideoPlayer.clearFullscreenLayout();
            } else {
                onClickListener.onClick(view);
            }
        }
    }

    class h implements Runnable {

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        final /* synthetic */ ViewGroup f77148b;

        /* JADX INFO: renamed from: c, reason: collision with root package name */
        final /* synthetic */ Context f77149c;

        /* JADX INFO: renamed from: d, reason: collision with root package name */
        final /* synthetic */ GSYBaseVideoPlayer f77150d;

        /* JADX INFO: renamed from: e, reason: collision with root package name */
        final /* synthetic */ FrameLayout f77151e;

        h(ViewGroup viewGroup, Context context, GSYBaseVideoPlayer gSYBaseVideoPlayer, FrameLayout frameLayout) {
            this.f77148b = viewGroup;
            this.f77149c = context;
            this.f77150d = gSYBaseVideoPlayer;
            this.f77151e = frameLayout;
        }

        @Override // java.lang.Runnable
        public void run() {
            TransitionManager.beginDelayedTransition(this.f77148b);
            GSYBaseVideoPlayer.this.resolveFullVideoShow(this.f77149c, this.f77150d, this.f77151e);
            GSYBaseVideoPlayer.this.mFullAnimEnd = true;
        }
    }

    class i implements Runnable {

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        final /* synthetic */ GSYBaseVideoPlayer f77153b;

        i(GSYBaseVideoPlayer gSYBaseVideoPlayer) {
            this.f77153b = gSYBaseVideoPlayer;
        }

        @Override // java.lang.Runnable
        public void run() {
            this.f77153b.getCurrentPlayer().autoAdaptation();
        }
    }

    public GSYBaseVideoPlayer(Context context, Boolean bool) {
        super(context, bool);
        this.mActionBar = false;
        this.mStatusBar = false;
        this.mShowFullAnimation = true;
        this.mRotateViewAuto = true;
        this.mRotateWithSystem = true;
        this.mLockLand = false;
        this.mAutoFullWithSize = false;
        this.isNeedAutoAdaptation = false;
        this.mFullAnimEnd = true;
        this.mIsOnlyRotateLand = false;
        this.mInnerHandler = new Handler();
        this.mCheckoutTask = new e();
    }

    private void a(GSYBaseVideoPlayer gSYBaseVideoPlayer) {
        if (gSYBaseVideoPlayer.mCurrentState == 5 && gSYBaseVideoPlayer.mTextureView != null && this.mShowPauseCover) {
            Bitmap bitmap = gSYBaseVideoPlayer.mFullPauseBitmap;
            if (bitmap != null && !bitmap.isRecycled() && this.mShowPauseCover) {
                this.mFullPauseBitmap = gSYBaseVideoPlayer.mFullPauseBitmap;
                return;
            }
            if (this.mShowPauseCover) {
                try {
                    initCover();
                } catch (Exception e10) {
                    e10.printStackTrace();
                    this.mFullPauseBitmap = null;
                }
            }
        }
    }

    private void b() {
        if (this.mCurrentState != 5 || this.mTextureView == null) {
            return;
        }
        Bitmap bitmap = this.mFullPauseBitmap;
        if ((bitmap == null || bitmap.isRecycled()) && this.mShowPauseCover) {
            try {
                initCover();
            } catch (Exception e10) {
                e10.printStackTrace();
                this.mFullPauseBitmap = null;
            }
        }
    }

    private void c(ViewGroup viewGroup, int i10) {
        View viewFindViewById = viewGroup.findViewById(i10);
        if (viewFindViewById == null || viewFindViewById.getParent() == null) {
            return;
        }
        viewGroup.removeView((ViewGroup) viewFindViewById.getParent());
    }

    private void d(Context context, boolean z10, boolean z11) {
        getLocationOnScreen(this.mListItemRect);
        if (context instanceof Activity) {
            int i10 = com.papa.gsyvideoplayer.utils.b.i(context);
            Activity activity = (Activity) context;
            int iC = com.papa.gsyvideoplayer.utils.b.c(activity);
            boolean z12 = (activity.getWindow().getAttributes().flags & 67108864) == 67108864;
            com.papa.gsyvideoplayer.utils.c.h("*************isTranslucent*************** " + z12);
            if (z10 && !z12) {
                int[] iArr = this.mListItemRect;
                iArr[1] = iArr[1] - i10;
            }
            if (z11) {
                int[] iArr2 = this.mListItemRect;
                iArr2[1] = iArr2[1] - iC;
            }
        }
        this.mListItemSize[0] = getWidth();
        this.mListItemSize[1] = getHeight();
    }

    private ViewGroup getViewGroup() {
        return (ViewGroup) com.papa.gsyvideoplayer.utils.b.o(getContext()).findViewById(R.id.content);
    }

    protected void autoAdaptation() {
        Context context = getContext();
        if (isVerticalVideo()) {
            int[] iArr = new int[2];
            getLocationOnScreen(iArr);
            if (iArr[1] == 0) {
                setPadding(0, com.papa.gsyvideoplayer.utils.b.i(context), 0, 0);
                com.papa.gsyvideoplayer.utils.c.h("竖屏，系统未将布局下移");
            } else {
                com.papa.gsyvideoplayer.utils.c.h("竖屏，系统将布局下移；y:" + iArr[1]);
            }
        }
    }

    protected void backToNormal() {
        ViewGroup viewGroup = getViewGroup();
        View viewFindViewById = viewGroup.findViewById(getFullId());
        if (viewFindViewById == null) {
            resolveNormalVideoShow(null, viewGroup, null);
            return;
        }
        GSYVideoPlayer gSYVideoPlayer = (GSYVideoPlayer) viewFindViewById;
        a(gSYVideoPlayer);
        if (!this.mShowFullAnimation) {
            resolveNormalVideoShow(viewFindViewById, viewGroup, gSYVideoPlayer);
            return;
        }
        TransitionManager.beginDelayedTransition(viewGroup);
        FrameLayout.LayoutParams layoutParams = (FrameLayout.LayoutParams) gSYVideoPlayer.getLayoutParams();
        int[] iArr = this.mListItemRect;
        layoutParams.setMargins(iArr[0], iArr[1], 0, 0);
        int[] iArr2 = this.mListItemSize;
        layoutParams.width = iArr2[0];
        layoutParams.height = iArr2[1];
        layoutParams.gravity = 0;
        gSYVideoPlayer.setLayoutParams(layoutParams);
        this.mInnerHandler.postDelayed(new d(viewFindViewById, viewGroup, gSYVideoPlayer), 400L);
    }

    protected void checkAutoFullSizeWhenFull() {
        n nVar;
        if (this.mIfCurrentIsFullscreen) {
            boolean zIsVerticalFullByVideoSize = isVerticalFullByVideoSize();
            com.papa.gsyvideoplayer.utils.c.h("GSYVideoBase onPrepared isVerticalFullByVideoSize " + zIsVerticalFullByVideoSize);
            if (!zIsVerticalFullByVideoSize || (nVar = this.mOrientationUtils) == null) {
                return;
            }
            nVar.q();
            checkAutoFullWithSizeAndAdaptation(this);
        }
    }

    protected void checkAutoFullWithSizeAndAdaptation(GSYBaseVideoPlayer gSYBaseVideoPlayer) {
        if (gSYBaseVideoPlayer != null && this.isNeedAutoAdaptation && isAutoFullWithSize() && isVerticalVideo() && isFullHideStatusBar()) {
            this.mInnerHandler.postDelayed(new i(gSYBaseVideoPlayer), 100L);
        }
    }

    protected void checkoutState() {
        removeCallbacks(this.mCheckoutTask);
        this.mInnerHandler.postDelayed(this.mCheckoutTask, 500L);
    }

    protected void clearFullscreenLayout() {
        int iQ;
        if (this.mFullAnimEnd) {
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
            View viewFindViewById = getViewGroup().findViewById(getFullId());
            if (viewFindViewById != null) {
                ((GSYVideoPlayer) viewFindViewById).mIfCurrentIsFullscreen = false;
            }
            this.mInnerHandler.postDelayed(new c(), iQ);
        }
    }

    protected void cloneParams(GSYBaseVideoPlayer gSYBaseVideoPlayer, GSYBaseVideoPlayer gSYBaseVideoPlayer2) {
        gSYBaseVideoPlayer2.mHadPlay = gSYBaseVideoPlayer.mHadPlay;
        gSYBaseVideoPlayer2.mPlayTag = gSYBaseVideoPlayer.mPlayTag;
        gSYBaseVideoPlayer2.mPlayPosition = gSYBaseVideoPlayer.mPlayPosition;
        gSYBaseVideoPlayer2.mEffectFilter = gSYBaseVideoPlayer.mEffectFilter;
        gSYBaseVideoPlayer2.mFullPauseBitmap = gSYBaseVideoPlayer.mFullPauseBitmap;
        gSYBaseVideoPlayer2.mNeedShowWifiTip = gSYBaseVideoPlayer.mNeedShowWifiTip;
        gSYBaseVideoPlayer2.mShrinkImageRes = gSYBaseVideoPlayer.mShrinkImageRes;
        gSYBaseVideoPlayer2.mEnlargeImageRes = gSYBaseVideoPlayer.mEnlargeImageRes;
        gSYBaseVideoPlayer2.mRotate = gSYBaseVideoPlayer.mRotate;
        gSYBaseVideoPlayer2.mShowPauseCover = gSYBaseVideoPlayer.mShowPauseCover;
        gSYBaseVideoPlayer2.mDismissControlTime = gSYBaseVideoPlayer.mDismissControlTime;
        gSYBaseVideoPlayer2.mSeekRatio = gSYBaseVideoPlayer.mSeekRatio;
        gSYBaseVideoPlayer2.mNetChanged = gSYBaseVideoPlayer.mNetChanged;
        gSYBaseVideoPlayer2.mNetSate = gSYBaseVideoPlayer.mNetSate;
        gSYBaseVideoPlayer2.mRotateWithSystem = gSYBaseVideoPlayer.mRotateWithSystem;
        gSYBaseVideoPlayer2.mBackUpPlayingBufferState = gSYBaseVideoPlayer.mBackUpPlayingBufferState;
        gSYBaseVideoPlayer2.mRenderer = gSYBaseVideoPlayer.mRenderer;
        gSYBaseVideoPlayer2.mMode = gSYBaseVideoPlayer.mMode;
        gSYBaseVideoPlayer2.mBackFromFullScreenListener = gSYBaseVideoPlayer.mBackFromFullScreenListener;
        gSYBaseVideoPlayer2.mGSYVideoProgressListener = gSYBaseVideoPlayer.mGSYVideoProgressListener;
        gSYBaseVideoPlayer2.mHadPrepared = gSYBaseVideoPlayer.mHadPrepared;
        gSYBaseVideoPlayer2.mStartAfterPrepared = gSYBaseVideoPlayer.mStartAfterPrepared;
        gSYBaseVideoPlayer2.mPauseBeforePrepared = gSYBaseVideoPlayer.mPauseBeforePrepared;
        gSYBaseVideoPlayer2.mReleaseWhenLossAudio = gSYBaseVideoPlayer.mReleaseWhenLossAudio;
        gSYBaseVideoPlayer2.mVideoAllCallBack = gSYBaseVideoPlayer.mVideoAllCallBack;
        gSYBaseVideoPlayer2.mActionBar = gSYBaseVideoPlayer.mActionBar;
        gSYBaseVideoPlayer2.mStatusBar = gSYBaseVideoPlayer.mStatusBar;
        gSYBaseVideoPlayer2.mAutoFullWithSize = gSYBaseVideoPlayer.mAutoFullWithSize;
        gSYBaseVideoPlayer2.mOverrideExtension = gSYBaseVideoPlayer.mOverrideExtension;
        if (gSYBaseVideoPlayer.mSetUpLazy) {
            gSYBaseVideoPlayer2.setUpLazy(gSYBaseVideoPlayer.mOriginUrl, gSYBaseVideoPlayer.mCache, gSYBaseVideoPlayer.mCachePath, gSYBaseVideoPlayer.mMapHeadData, gSYBaseVideoPlayer.mTitle);
            gSYBaseVideoPlayer2.mUrl = gSYBaseVideoPlayer.mUrl;
        } else {
            gSYBaseVideoPlayer2.setUp(gSYBaseVideoPlayer.mOriginUrl, gSYBaseVideoPlayer.mCache, gSYBaseVideoPlayer.mCachePath, gSYBaseVideoPlayer.mMapHeadData, gSYBaseVideoPlayer.mTitle);
        }
        gSYBaseVideoPlayer2.setLooping(gSYBaseVideoPlayer.isLooping());
        gSYBaseVideoPlayer2.setIsTouchWigetFull(gSYBaseVideoPlayer.mIsTouchWigetFull);
        gSYBaseVideoPlayer2.setSpeed(gSYBaseVideoPlayer.getSpeed(), gSYBaseVideoPlayer.mSoundTouch);
        gSYBaseVideoPlayer2.setStateAndUi(gSYBaseVideoPlayer.mCurrentState);
    }

    public GSYBaseVideoPlayer getCurrentPlayer() {
        if (getFullWindowPlayer() != null) {
            return getFullWindowPlayer();
        }
        return getSmallWindowPlayer() != null ? getSmallWindowPlayer() : this;
    }

    protected abstract int getFullId();

    public GSYVideoPlayer getFullWindowPlayer() {
        View viewFindViewById = ((ViewGroup) com.papa.gsyvideoplayer.utils.b.o(getContext()).findViewById(R.id.content)).findViewById(getFullId());
        if (viewFindViewById != null) {
            return (GSYVideoPlayer) viewFindViewById;
        }
        return null;
    }

    public m getOrientationOption() {
        return null;
    }

    public int getSaveBeforeFullSystemUiVisibility() {
        return this.mSystemUiVisibility;
    }

    protected abstract int getSmallId();

    public GSYVideoPlayer getSmallWindowPlayer() {
        View viewFindViewById = ((ViewGroup) com.papa.gsyvideoplayer.utils.b.o(getContext()).findViewById(R.id.content)).findViewById(getSmallId());
        if (viewFindViewById != null) {
            return (GSYVideoPlayer) viewFindViewById;
        }
        return null;
    }

    public void hideSmallVideo() {
        ViewGroup viewGroup = getViewGroup();
        GSYVideoPlayer gSYVideoPlayer = (GSYVideoPlayer) viewGroup.findViewById(getSmallId());
        c(viewGroup, getSmallId());
        this.mCurrentState = getGSYVideoManager().j();
        if (gSYVideoPlayer != null) {
            cloneParams(gSYVideoPlayer, this);
        }
        getGSYVideoManager().x(getGSYVideoManager().m());
        getGSYVideoManager().z(null);
        setStateAndUi(this.mCurrentState);
        addTextureView();
        this.mSaveChangeViewTIme = System.currentTimeMillis();
        if (this.mVideoAllCallBack != null) {
            com.papa.gsyvideoplayer.utils.c.h("onQuitSmallWidget");
            this.mVideoAllCallBack.onQuitSmallWidget(this.mOriginUrl, this.mTitle, this);
        }
    }

    @Override // com.papa.gsyvideoplayer.video.base.GSYVideoControlView, com.papa.gsyvideoplayer.video.base.GSYVideoView
    protected void init(Context context) {
        super.init(context);
        this.mSmallClose = findViewById(com.papa.gsyvideoplayer.R.id.small_close);
    }

    public boolean isAutoFullWithSize() {
        return this.mAutoFullWithSize;
    }

    public boolean isFullHideActionBar() {
        return this.mActionBar;
    }

    public boolean isFullHideStatusBar() {
        return this.mStatusBar;
    }

    public boolean isLockLand() {
        return this.mLockLand;
    }

    protected boolean isLockLandByAutoFullSize() {
        boolean z10 = this.mLockLand;
        if (isAutoFullWithSize()) {
            return true;
        }
        return z10;
    }

    public boolean isNeedAutoAdaptation() {
        return this.isNeedAutoAdaptation;
    }

    public boolean isOnlyRotateLand() {
        return this.mIsOnlyRotateLand;
    }

    public boolean isRotateViewAuto() {
        if (this.mAutoFullWithSize) {
            return false;
        }
        return this.mRotateViewAuto;
    }

    public boolean isRotateWithSystem() {
        return this.mRotateWithSystem;
    }

    public boolean isShowFullAnimation() {
        return this.mShowFullAnimation;
    }

    public boolean isVerticalFullByVideoSize() {
        return isVerticalVideo() && isAutoFullWithSize();
    }

    protected boolean isVerticalVideo() {
        int currentVideoHeight = getCurrentVideoHeight();
        int currentVideoWidth = getCurrentVideoWidth();
        com.papa.gsyvideoplayer.utils.c.h("GSYVideoBase isVerticalVideo  videoHeight " + currentVideoHeight + " videoWidth " + currentVideoWidth);
        StringBuilder sb2 = new StringBuilder();
        sb2.append("GSYVideoBase isVerticalVideo  mRotate ");
        sb2.append(this.mRotate);
        com.papa.gsyvideoplayer.utils.c.h(sb2.toString());
        if (currentVideoHeight <= 0 || currentVideoWidth <= 0) {
            return false;
        }
        int i10 = this.mRotate;
        if (i10 == 90 || i10 == 270) {
            if (currentVideoWidth <= currentVideoHeight) {
                return false;
            }
        } else if (currentVideoHeight <= currentVideoWidth) {
            return false;
        }
        return true;
    }

    @Override // com.papa.gsyvideoplayer.video.base.GSYVideoControlView
    protected void lockTouchLogic() {
        super.lockTouchLogic();
        if (this.mLockCurScreen) {
            n nVar = this.mOrientationUtils;
            if (nVar != null) {
                nVar.I(false);
                return;
            }
            return;
        }
        n nVar2 = this.mOrientationUtils;
        if (nVar2 != null) {
            nVar2.I(isRotateViewAuto());
        }
    }

    @Override // v7.a
    public void onBackFullscreen() {
        clearFullscreenLayout();
    }

    public void onConfigurationChanged(Activity activity, Configuration configuration, n nVar) {
        onConfigurationChanged(activity, configuration, nVar, true, true);
    }

    @Override // com.papa.gsyvideoplayer.video.base.GSYVideoView, v7.a
    public void onInfo(int i10, int i11) {
        super.onInfo(i10, i11);
        if (i10 == getGSYVideoManager().n()) {
            checkAutoFullSizeWhenFull();
        }
    }

    @Override // com.papa.gsyvideoplayer.video.base.GSYVideoControlView, com.papa.gsyvideoplayer.video.base.GSYVideoView, v7.a
    public void onPrepared() {
        super.onPrepared();
        checkAutoFullSizeWhenFull();
    }

    /* JADX WARN: Type inference fix 'apply assigned field type' failed
    java.lang.UnsupportedOperationException: ArgType.getObject(), call class: class jadx.core.dex.instructions.args.ArgType$UnknownArg
    	at jadx.core.dex.instructions.args.ArgType.getObject(ArgType.java:596)
    	at jadx.core.dex.attributes.nodes.ClassTypeVarsAttr.getTypeVarsMapFor(ClassTypeVarsAttr.java:35)
    	at jadx.core.dex.nodes.utils.TypeUtils.replaceClassGenerics(TypeUtils.java:177)
    	at jadx.core.dex.visitors.typeinference.FixTypesVisitor.insertExplicitUseCast(FixTypesVisitor.java:397)
    	at jadx.core.dex.visitors.typeinference.FixTypesVisitor.tryFieldTypeWithNewCasts(FixTypesVisitor.java:359)
    	at jadx.core.dex.visitors.typeinference.FixTypesVisitor.applyFieldType(FixTypesVisitor.java:309)
    	at jadx.core.dex.visitors.typeinference.FixTypesVisitor.visit(FixTypesVisitor.java:94)
     */
    protected void resolveFullVideoShow(Context context, GSYBaseVideoPlayer gSYBaseVideoPlayer, FrameLayout frameLayout) {
        n nVar;
        FrameLayout.LayoutParams layoutParams = (FrameLayout.LayoutParams) gSYBaseVideoPlayer.getLayoutParams();
        layoutParams.setMargins(0, 0, 0, 0);
        layoutParams.height = -1;
        layoutParams.width = -1;
        layoutParams.gravity = 17;
        gSYBaseVideoPlayer.setLayoutParams(layoutParams);
        gSYBaseVideoPlayer.setIfCurrentIsFullscreen(true);
        n nVar2 = new n((Activity) context, gSYBaseVideoPlayer, getOrientationOption());
        this.mOrientationUtils = nVar2;
        nVar2.I(isRotateViewAuto());
        this.mOrientationUtils.O(this.mRotateWithSystem);
        this.mOrientationUtils.L(this.mIsOnlyRotateLand);
        gSYBaseVideoPlayer.mOrientationUtils = this.mOrientationUtils;
        boolean zIsVerticalFullByVideoSize = isVerticalFullByVideoSize();
        boolean zIsLockLandByAutoFullSize = isLockLandByAutoFullSize();
        if (isShowFullAnimation()) {
            this.mInnerHandler.postDelayed(new b(zIsVerticalFullByVideoSize, zIsLockLandByAutoFullSize, gSYBaseVideoPlayer, frameLayout), 300L);
        } else {
            if (!zIsVerticalFullByVideoSize && zIsLockLandByAutoFullSize && (nVar = this.mOrientationUtils) != null) {
                nVar.E();
            }
            gSYBaseVideoPlayer.setVisibility(0);
            frameLayout.setVisibility(0);
        }
        if (this.mVideoAllCallBack != null) {
            com.papa.gsyvideoplayer.utils.c.e("onEnterFullscreen");
            this.mVideoAllCallBack.onEnterFullscreen(this.mOriginUrl, this.mTitle, gSYBaseVideoPlayer);
        }
        this.mIfCurrentIsFullscreen = true;
        checkoutState();
        checkAutoFullWithSizeAndAdaptation(gSYBaseVideoPlayer);
    }

    protected void resolveNormalVideoShow(View view, ViewGroup viewGroup, GSYVideoPlayer gSYVideoPlayer) {
        if (view != null && view.getParent() != null) {
            viewGroup.removeView((ViewGroup) view.getParent());
        }
        this.mCurrentState = getGSYVideoManager().j();
        if (gSYVideoPlayer != null) {
            cloneParams(gSYVideoPlayer, this);
        }
        int i10 = this.mCurrentState;
        if (i10 != 0 || i10 != 6) {
            createNetWorkState();
        }
        getGSYVideoManager().x(getGSYVideoManager().m());
        getGSYVideoManager().z(null);
        setStateAndUi(this.mCurrentState);
        addTextureView();
        this.mSaveChangeViewTIme = System.currentTimeMillis();
        if (this.mVideoAllCallBack != null) {
            com.papa.gsyvideoplayer.utils.c.e("onQuitFullscreen");
            this.mVideoAllCallBack.onQuitFullscreen(this.mOriginUrl, this.mTitle, this);
        }
        this.mIfCurrentIsFullscreen = false;
        if (this.mHideKey) {
            com.papa.gsyvideoplayer.utils.b.p(this.mContext, this.mSystemUiVisibility);
        }
        com.papa.gsyvideoplayer.utils.b.q(this.mContext, this.mActionBar, this.mStatusBar);
        if (getFullscreenButton() != null) {
            getFullscreenButton().setImageResource(getEnlargeImageRes());
        }
    }

    public void setAutoFullWithSize(boolean z10) {
        this.mAutoFullWithSize = z10;
    }

    public void setBackFromFullScreenListener(View.OnClickListener onClickListener) {
        this.mBackFromFullScreenListener = onClickListener;
    }

    public void setFullHideActionBar(boolean z10) {
        this.mActionBar = z10;
    }

    public void setFullHideStatusBar(boolean z10) {
        this.mStatusBar = z10;
    }

    public void setLockLand(boolean z10) {
        this.mLockLand = z10;
    }

    public void setNeedAutoAdaptation(boolean z10) {
        this.isNeedAutoAdaptation = z10;
    }

    public void setOnlyRotateLand(boolean z10) {
        this.mIsOnlyRotateLand = z10;
        n nVar = this.mOrientationUtils;
        if (nVar != null) {
            nVar.L(z10);
        }
    }

    public void setRotateViewAuto(boolean z10) {
        this.mRotateViewAuto = z10;
        n nVar = this.mOrientationUtils;
        if (nVar != null) {
            nVar.I(z10);
        }
    }

    public void setRotateWithSystem(boolean z10) {
        this.mRotateWithSystem = z10;
        n nVar = this.mOrientationUtils;
        if (nVar != null) {
            nVar.O(z10);
        }
    }

    public void setSaveBeforeFullSystemUiVisibility(int i10) {
        this.mSystemUiVisibility = i10;
    }

    public void setShowFullAnimation(boolean z10) {
        this.mShowFullAnimation = z10;
    }

    @Override // com.papa.gsyvideoplayer.video.base.GSYTextureRenderView
    protected void setSmallVideoTextureView() {
        SeekBar seekBar = this.mProgressBar;
        if (seekBar != null) {
            seekBar.setOnTouchListener(null);
            this.mProgressBar.setVisibility(4);
        }
        ImageView imageView = this.mFullscreenButton;
        if (imageView != null) {
            imageView.setOnTouchListener(null);
            this.mFullscreenButton.setVisibility(4);
        }
        TextView textView = this.mCurrentTimeTextView;
        if (textView != null) {
            textView.setVisibility(4);
        }
        ViewGroup viewGroup = this.mTextureViewContainer;
        if (viewGroup != null) {
            viewGroup.setOnClickListener(null);
        }
        View view = this.mSmallClose;
        if (view != null) {
            view.setVisibility(0);
            this.mSmallClose.setOnClickListener(new a());
        }
    }

    public GSYBaseVideoPlayer showSmallVideo(Point point, boolean z10, boolean z11) {
        ViewGroup viewGroup = getViewGroup();
        c(viewGroup, getSmallId());
        if (this.mTextureViewContainer.getChildCount() > 0) {
            this.mTextureViewContainer.removeAllViews();
        }
        try {
            GSYBaseVideoPlayer gSYBaseVideoPlayer = (GSYBaseVideoPlayer) getClass().getConstructor(Context.class).newInstance(getActivityContext());
            gSYBaseVideoPlayer.setId(getSmallId());
            ViewGroup.LayoutParams layoutParams = new FrameLayout.LayoutParams(-1, -1);
            FrameLayout frameLayout = new FrameLayout(this.mContext);
            FrameLayout.LayoutParams layoutParams2 = new FrameLayout.LayoutParams(point.x, point.y);
            int iH = com.papa.gsyvideoplayer.utils.b.h(this.mContext) - point.x;
            int iG = com.papa.gsyvideoplayer.utils.b.g(this.mContext) - point.y;
            if (z10) {
                iG -= com.papa.gsyvideoplayer.utils.b.c((Activity) this.mContext);
            }
            if (z11) {
                iG -= com.papa.gsyvideoplayer.utils.b.i(this.mContext);
            }
            layoutParams2.setMargins(iH, iG, 0, 0);
            frameLayout.addView(gSYBaseVideoPlayer, layoutParams2);
            viewGroup.addView(frameLayout, layoutParams);
            cloneParams(this, gSYBaseVideoPlayer);
            gSYBaseVideoPlayer.setIsTouchWiget(false);
            gSYBaseVideoPlayer.addTextureView();
            gSYBaseVideoPlayer.onClickUiToggle();
            gSYBaseVideoPlayer.setVideoAllCallBack(this.mVideoAllCallBack);
            gSYBaseVideoPlayer.setSmallVideoTextureView(new x7.a(gSYBaseVideoPlayer, iH, iG));
            getGSYVideoManager().z(this);
            getGSYVideoManager().x(gSYBaseVideoPlayer);
            if (this.mVideoAllCallBack != null) {
                com.papa.gsyvideoplayer.utils.c.e("onEnterSmallWidget");
                this.mVideoAllCallBack.onEnterSmallWidget(this.mOriginUrl, this.mTitle, gSYBaseVideoPlayer);
            }
            return gSYBaseVideoPlayer;
        } catch (Exception e10) {
            e10.printStackTrace();
            return null;
        }
    }

    public GSYBaseVideoPlayer startWindowFullscreen(Context context, boolean z10, boolean z11) {
        boolean z12;
        this.mSystemUiVisibility = ((Activity) context).getWindow().getDecorView().getSystemUiVisibility();
        com.papa.gsyvideoplayer.utils.b.l(context, z10, z11);
        if (this.mHideKey) {
            com.papa.gsyvideoplayer.utils.b.k(context);
        }
        this.mActionBar = z10;
        this.mStatusBar = z11;
        this.mListItemRect = new int[2];
        this.mListItemSize = new int[2];
        ViewGroup viewGroup = getViewGroup();
        c(viewGroup, getFullId());
        b();
        if (this.mTextureViewContainer.getChildCount() > 0) {
            this.mTextureViewContainer.removeAllViews();
        }
        d(context, z11, z10);
        cancelProgressTimer();
        try {
            getClass().getConstructor(Context.class, Boolean.class);
            z12 = true;
        } catch (Exception unused) {
            z12 = false;
        }
        try {
            GSYBaseVideoPlayer gSYBaseVideoPlayer = !z12 ? (GSYBaseVideoPlayer) getClass().getConstructor(Context.class).newInstance(this.mContext) : (GSYBaseVideoPlayer) getClass().getConstructor(Context.class, Boolean.class).newInstance(this.mContext, Boolean.TRUE);
            gSYBaseVideoPlayer.setId(getFullId());
            gSYBaseVideoPlayer.setIfCurrentIsFullscreen(true);
            gSYBaseVideoPlayer.setVideoAllCallBack(this.mVideoAllCallBack);
            cloneParams(this, gSYBaseVideoPlayer);
            if (gSYBaseVideoPlayer.getFullscreenButton() != null) {
                gSYBaseVideoPlayer.getFullscreenButton().setImageResource(getShrinkImageRes());
                gSYBaseVideoPlayer.getFullscreenButton().setOnClickListener(new f());
            }
            if (gSYBaseVideoPlayer.getBackButton() != null) {
                gSYBaseVideoPlayer.getBackButton().setVisibility(0);
                gSYBaseVideoPlayer.getBackButton().setOnClickListener(new g());
            }
            ViewGroup.LayoutParams layoutParams = new FrameLayout.LayoutParams(-1, -1);
            FrameLayout frameLayout = new FrameLayout(context);
            frameLayout.setBackgroundColor(-16777216);
            if (this.mShowFullAnimation) {
                this.mFullAnimEnd = false;
                FrameLayout.LayoutParams layoutParams2 = new FrameLayout.LayoutParams(getWidth(), getHeight());
                int[] iArr = this.mListItemRect;
                layoutParams2.setMargins(iArr[0], iArr[1], 0, 0);
                frameLayout.addView(gSYBaseVideoPlayer, layoutParams2);
                viewGroup.addView(frameLayout, layoutParams);
                this.mInnerHandler.postDelayed(new h(viewGroup, context, gSYBaseVideoPlayer, frameLayout), 300L);
            } else {
                frameLayout.addView(gSYBaseVideoPlayer, new FrameLayout.LayoutParams(getWidth(), getHeight()));
                viewGroup.addView(frameLayout, layoutParams);
                gSYBaseVideoPlayer.setVisibility(4);
                frameLayout.setVisibility(4);
                resolveFullVideoShow(context, gSYBaseVideoPlayer, frameLayout);
            }
            gSYBaseVideoPlayer.addTextureView();
            gSYBaseVideoPlayer.startProgressTimer();
            getGSYVideoManager().z(this);
            getGSYVideoManager().x(gSYBaseVideoPlayer);
            checkoutState();
            return gSYBaseVideoPlayer;
        } catch (Exception e10) {
            e10.printStackTrace();
            return null;
        }
    }

    public void onConfigurationChanged(Activity activity, Configuration configuration, n nVar, boolean z10, boolean z11) {
        super.onConfigurationChanged(configuration);
        if (configuration.orientation == 2) {
            if (isIfCurrentIsFullscreen()) {
                return;
            }
            startWindowFullscreen(activity, z10, z11);
        } else {
            if (isIfCurrentIsFullscreen() && !isVerticalFullByVideoSize()) {
                backFromFull(activity);
            }
            if (nVar != null) {
                nVar.I(true);
            }
        }
    }

    public GSYBaseVideoPlayer(Context context) {
        super(context);
        this.mActionBar = false;
        this.mStatusBar = false;
        this.mShowFullAnimation = true;
        this.mRotateViewAuto = true;
        this.mRotateWithSystem = true;
        this.mLockLand = false;
        this.mAutoFullWithSize = false;
        this.isNeedAutoAdaptation = false;
        this.mFullAnimEnd = true;
        this.mIsOnlyRotateLand = false;
        this.mInnerHandler = new Handler();
        this.mCheckoutTask = new e();
    }

    public GSYBaseVideoPlayer(Context context, AttributeSet attributeSet) {
        super(context, attributeSet);
        this.mActionBar = false;
        this.mStatusBar = false;
        this.mShowFullAnimation = true;
        this.mRotateViewAuto = true;
        this.mRotateWithSystem = true;
        this.mLockLand = false;
        this.mAutoFullWithSize = false;
        this.isNeedAutoAdaptation = false;
        this.mFullAnimEnd = true;
        this.mIsOnlyRotateLand = false;
        this.mInnerHandler = new Handler();
        this.mCheckoutTask = new e();
    }

    public GSYBaseVideoPlayer(Context context, AttributeSet attributeSet, int i10) {
        super(context, attributeSet, i10);
        this.mActionBar = false;
        this.mStatusBar = false;
        this.mShowFullAnimation = true;
        this.mRotateViewAuto = true;
        this.mRotateWithSystem = true;
        this.mLockLand = false;
        this.mAutoFullWithSize = false;
        this.isNeedAutoAdaptation = false;
        this.mFullAnimEnd = true;
        this.mIsOnlyRotateLand = false;
        this.mInnerHandler = new Handler();
        this.mCheckoutTask = new e();
    }
}
