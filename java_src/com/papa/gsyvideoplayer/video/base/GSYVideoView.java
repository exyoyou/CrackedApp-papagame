package com.papa.gsyvideoplayer.video.base;

import android.app.Activity;
import android.content.Context;
import android.graphics.Bitmap;
import android.graphics.Canvas;
import android.graphics.Paint;
import android.graphics.Rect;
import android.graphics.RectF;
import android.media.AudioManager;
import android.os.Handler;
import android.os.Looper;
import android.util.AttributeSet;
import android.view.InflateException;
import android.view.Surface;
import android.view.View;
import android.view.ViewGroup;
import androidx.annotation.AttrRes;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import com.papa.gsyvideoplayer.R;
import com.papa.gsyvideoplayer.utils.NetInfoModule;
import java.io.File;
import java.util.HashMap;
import java.util.Map;
import v7.h;

/* JADX INFO: loaded from: classes2.dex */
public abstract class GSYVideoView extends GSYTextureRenderView implements v7.a {
    public static final int CHANGE_DELAY_TIME = 2000;
    public static final int CURRENT_STATE_AUTO_COMPLETE = 6;
    public static final int CURRENT_STATE_ERROR = 7;
    public static final int CURRENT_STATE_NORMAL = 0;
    public static final int CURRENT_STATE_PAUSE = 5;
    public static final int CURRENT_STATE_PLAYING = 2;
    public static final int CURRENT_STATE_PLAYING_BUFFERING_START = 3;
    public static final int CURRENT_STATE_PREPAREING = 1;
    protected AudioManager mAudioManager;
    protected int mBackUpPlayingBufferState;
    protected int mBufferPoint;
    protected boolean mCache;
    protected File mCachePath;
    protected Context mContext;
    protected long mCurrentPosition;
    protected int mCurrentState;
    protected boolean mHadPlay;
    protected boolean mHadPrepared;
    protected boolean mIfCurrentIsFullscreen;
    protected boolean mLooping;
    protected Map<String, String> mMapHeadData;
    protected boolean mNetChanged;
    protected NetInfoModule mNetInfoModule;
    protected String mNetSate;
    protected String mOriginUrl;
    protected String mOverrideExtension;
    protected boolean mPauseBeforePrepared;
    protected int mPlayPosition;
    protected String mPlayTag;
    protected boolean mReleaseWhenLossAudio;
    protected long mSaveChangeViewTIme;
    protected int mScreenHeight;
    protected int mScreenWidth;
    protected long mSeekOnStart;
    protected boolean mShowPauseCover;
    protected boolean mSoundTouch;
    protected float mSpeed;
    protected boolean mStartAfterPrepared;
    protected String mTitle;
    protected String mUrl;
    protected h mVideoAllCallBack;
    protected AudioManager.OnAudioFocusChangeListener onAudioFocusChangeListener;

    class a implements AudioManager.OnAudioFocusChangeListener {
        a() {
        }

        @Override // android.media.AudioManager.OnAudioFocusChangeListener
        public void onAudioFocusChange(int i10) {
            if (i10 == -3) {
                GSYVideoView.this.onLossTransientCanDuck();
                return;
            }
            if (i10 == -2) {
                GSYVideoView.this.onLossTransientAudio();
            } else if (i10 == -1) {
                GSYVideoView.this.onLossAudio();
            } else {
                if (i10 != 1) {
                    return;
                }
                GSYVideoView.this.onGankAudio();
            }
        }
    }

    class b implements Runnable {
        b() {
        }

        @Override // java.lang.Runnable
        public void run() {
            GSYVideoView gSYVideoView = GSYVideoView.this;
            if (gSYVideoView.mReleaseWhenLossAudio) {
                gSYVideoView.releaseVideos();
            } else {
                gSYVideoView.onVideoPause();
            }
        }
    }

    class c implements Runnable {

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        final /* synthetic */ long f77163b;

        c(long j10) {
            this.f77163b = j10;
        }

        @Override // java.lang.Runnable
        public void run() {
            GSYVideoView.this.setSeekOnStart(this.f77163b);
            GSYVideoView.this.startPlayLogic();
        }
    }

    class d implements NetInfoModule.b {
        d() {
        }

        @Override // com.papa.gsyvideoplayer.utils.NetInfoModule.b
        public void a(String str) {
            if (!GSYVideoView.this.mNetSate.equals(str)) {
                com.papa.gsyvideoplayer.utils.c.e("******* change network state ******* " + str);
                GSYVideoView.this.mNetChanged = true;
            }
            GSYVideoView.this.mNetSate = str;
        }
    }

    public GSYVideoView(@NonNull Context context) {
        super(context);
        this.mCurrentState = -1;
        this.mPlayPosition = -22;
        this.mBackUpPlayingBufferState = -1;
        this.mSeekOnStart = -1L;
        this.mSaveChangeViewTIme = 0L;
        this.mSpeed = 1.0f;
        this.mCache = false;
        this.mIfCurrentIsFullscreen = false;
        this.mLooping = false;
        this.mHadPlay = false;
        this.mNetChanged = false;
        this.mSoundTouch = false;
        this.mShowPauseCover = false;
        this.mPauseBeforePrepared = false;
        this.mStartAfterPrepared = true;
        this.mHadPrepared = false;
        this.mReleaseWhenLossAudio = true;
        this.mPlayTag = "";
        this.mNetSate = "NORMAL";
        this.mMapHeadData = new HashMap();
        this.onAudioFocusChangeListener = new a();
        init(context);
    }

    protected abstract boolean backFromFull(Context context);

    public void clearCurrentCache() {
        if (!getGSYVideoManager().A() || !this.mCache) {
            if (this.mUrl.contains("127.0.0.1")) {
                getGSYVideoManager().e(getContext(), this.mCachePath, this.mOriginUrl);
            }
        } else {
            com.papa.gsyvideoplayer.utils.c.e("Play Error " + this.mUrl);
            this.mUrl = this.mOriginUrl;
            getGSYVideoManager().e(this.mContext, this.mCachePath, this.mOriginUrl);
        }
    }

    protected void createNetWorkState() {
        if (this.mNetInfoModule == null) {
            NetInfoModule netInfoModule = new NetInfoModule(this.mContext.getApplicationContext(), new d());
            this.mNetInfoModule = netInfoModule;
            this.mNetSate = netInfoModule.b();
        }
    }

    protected void deleteCacheFileWhenError() {
        clearCurrentCache();
        com.papa.gsyvideoplayer.utils.c.e("Link Or mCache Error, Please Try Again " + this.mOriginUrl);
        if (this.mCache) {
            com.papa.gsyvideoplayer.utils.c.e("mCache Link " + this.mUrl);
        }
        this.mUrl = this.mOriginUrl;
    }

    protected Context getActivityContext() {
        return com.papa.gsyvideoplayer.utils.b.d(getContext());
    }

    public int getBuffterPoint() {
        return this.mBufferPoint;
    }

    public int getCurrentPositionWhenPlaying() {
        int i10 = this.mCurrentState;
        int currentPosition = 0;
        if (i10 == 2 || i10 == 5) {
            try {
                currentPosition = (int) getGSYVideoManager().getCurrentPosition();
            } catch (Exception e10) {
                e10.printStackTrace();
                return 0;
            }
        }
        if (currentPosition == 0) {
            long j10 = this.mCurrentPosition;
            if (j10 > 0) {
                return (int) j10;
            }
        }
        return currentPosition;
    }

    public int getCurrentState() {
        return this.mCurrentState;
    }

    @Override // com.papa.gsyvideoplayer.utils.j.a
    public int getCurrentVideoHeight() {
        if (getGSYVideoManager() != null) {
            return getGSYVideoManager().getVideoHeight();
        }
        return 0;
    }

    @Override // com.papa.gsyvideoplayer.utils.j.a
    public int getCurrentVideoWidth() {
        if (getGSYVideoManager() != null) {
            return getGSYVideoManager().getVideoWidth();
        }
        return 0;
    }

    public int getDuration() {
        try {
            return (int) getGSYVideoManager().getDuration();
        } catch (Exception e10) {
            e10.printStackTrace();
            return 0;
        }
    }

    public abstract com.papa.gsyvideoplayer.video.base.a getGSYVideoManager();

    public abstract int getLayoutId();

    public Map<String, String> getMapHeadData() {
        return this.mMapHeadData;
    }

    public long getNetSpeed() {
        return getGSYVideoManager().d();
    }

    public String getNetSpeedText() {
        return com.papa.gsyvideoplayer.utils.b.j(getNetSpeed());
    }

    public String getOverrideExtension() {
        return this.mOverrideExtension;
    }

    public int getPlayPosition() {
        return this.mPlayPosition;
    }

    public String getPlayTag() {
        return this.mPlayTag;
    }

    public long getSeekOnStart() {
        return this.mSeekOnStart;
    }

    public float getSpeed() {
        return this.mSpeed;
    }

    @Override // com.papa.gsyvideoplayer.utils.j.a
    public int getVideoSarDen() {
        if (getGSYVideoManager() != null) {
            return getGSYVideoManager().getVideoSarDen();
        }
        return 0;
    }

    @Override // com.papa.gsyvideoplayer.utils.j.a
    public int getVideoSarNum() {
        if (getGSYVideoManager() != null) {
            return getGSYVideoManager().getVideoSarNum();
        }
        return 0;
    }

    protected void init(Context context) {
        if (getActivityContext() != null) {
            this.mContext = getActivityContext();
        } else {
            this.mContext = context;
        }
        initInflate(this.mContext);
        this.mTextureViewContainer = (ViewGroup) findViewById(R.id.surface_container);
        if (isInEditMode()) {
            return;
        }
        this.mScreenWidth = this.mContext.getResources().getDisplayMetrics().widthPixels;
        this.mScreenHeight = this.mContext.getResources().getDisplayMetrics().heightPixels;
        this.mAudioManager = (AudioManager) this.mContext.getApplicationContext().getSystemService("audio");
    }

    protected void initInflate(Context context) {
        try {
            View.inflate(context, getLayoutId(), this);
        } catch (InflateException e10) {
            if (!e10.toString().contains("GSYImageCover")) {
                e10.printStackTrace();
            } else {
                com.papa.gsyvideoplayer.utils.c.e("********************\n*****   注意   *************************\n*该版本需要清除布局文件中的GSYImageCover\n****  Attention  ***\n*Please remove GSYImageCover from Layout in this Version\n********************\n");
                e10.printStackTrace();
                throw new InflateException("该版本需要清除布局文件中的GSYImageCover，please remove GSYImageCover from your layout");
            }
        }
    }

    protected boolean isCurrentMediaListener() {
        return getGSYVideoManager().w() != null && getGSYVideoManager().w() == this;
    }

    public boolean isIfCurrentIsFullscreen() {
        return this.mIfCurrentIsFullscreen;
    }

    public boolean isInPlayingState() {
        int i10 = this.mCurrentState;
        return (i10 < 0 || i10 == 0 || i10 == 6 || i10 == 7) ? false : true;
    }

    public boolean isLooping() {
        return this.mLooping;
    }

    public boolean isReleaseWhenLossAudio() {
        return this.mReleaseWhenLossAudio;
    }

    public boolean isShowPauseCover() {
        return this.mShowPauseCover;
    }

    public boolean isStartAfterPrepared() {
        return this.mStartAfterPrepared;
    }

    protected void listenerNetWorkState() {
        NetInfoModule netInfoModule = this.mNetInfoModule;
        if (netInfoModule != null) {
            netInfoModule.g();
        }
    }

    protected void netWorkErrorLogic() {
        long currentPositionWhenPlaying = getCurrentPositionWhenPlaying();
        com.papa.gsyvideoplayer.utils.c.e("******* Net State Changed. renew player to connect *******" + currentPositionWhenPlaying);
        getGSYVideoManager().y();
        postDelayed(new c(currentPositionWhenPlaying), 500L);
    }

    public void onAutoCompletion() {
        setStateAndUi(6);
        this.mSaveChangeViewTIme = 0L;
        this.mCurrentPosition = 0L;
        if (this.mTextureViewContainer.getChildCount() > 0) {
            this.mTextureViewContainer.removeAllViews();
        }
        if (!this.mIfCurrentIsFullscreen) {
            getGSYVideoManager().z(null);
        }
        this.mAudioManager.abandonAudioFocus(this.onAudioFocusChangeListener);
        Context context = this.mContext;
        if (context instanceof Activity) {
            try {
                ((Activity) context).getWindow().clearFlags(128);
            } catch (Exception e10) {
                e10.printStackTrace();
            }
        }
        releaseNetWorkState();
        if (this.mVideoAllCallBack == null || !isCurrentMediaListener()) {
            return;
        }
        com.papa.gsyvideoplayer.utils.c.h("onAutoComplete");
        this.mVideoAllCallBack.onAutoComplete(this.mOriginUrl, this.mTitle, this);
    }

    public void onCompletion() {
        setStateAndUi(0);
        this.mSaveChangeViewTIme = 0L;
        this.mCurrentPosition = 0L;
        if (this.mTextureViewContainer.getChildCount() > 0) {
            this.mTextureViewContainer.removeAllViews();
        }
        if (!this.mIfCurrentIsFullscreen) {
            getGSYVideoManager().x(null);
            getGSYVideoManager().z(null);
        }
        getGSYVideoManager().o(0);
        getGSYVideoManager().r(0);
        this.mAudioManager.abandonAudioFocus(this.onAudioFocusChangeListener);
        Context context = this.mContext;
        if (context instanceof Activity) {
            try {
                ((Activity) context).getWindow().clearFlags(128);
            } catch (Exception e10) {
                e10.printStackTrace();
            }
        }
        releaseNetWorkState();
    }

    public void onError(int i10, int i11) {
        if (this.mNetChanged) {
            this.mNetChanged = false;
            netWorkErrorLogic();
            h hVar = this.mVideoAllCallBack;
            if (hVar != null) {
                hVar.onPlayError(this.mOriginUrl, this.mTitle, this);
                return;
            }
            return;
        }
        if (i10 == 38 || i10 == -38) {
            return;
        }
        setStateAndUi(7);
        deleteCacheFileWhenError();
        h hVar2 = this.mVideoAllCallBack;
        if (hVar2 != null) {
            hVar2.onPlayError(this.mOriginUrl, this.mTitle, this);
        }
    }

    protected void onGankAudio() {
    }

    public void onInfo(int i10, int i11) {
        int i12;
        if (i10 == 701) {
            int i13 = this.mCurrentState;
            this.mBackUpPlayingBufferState = i13;
            if (!this.mHadPlay || i13 == 1 || i13 <= 0) {
                return;
            }
            setStateAndUi(3);
            return;
        }
        if (i10 == 702) {
            int i14 = this.mBackUpPlayingBufferState;
            if (i14 != -1) {
                if (i14 == 3) {
                    this.mBackUpPlayingBufferState = 2;
                }
                if (this.mHadPlay && (i12 = this.mCurrentState) != 1 && i12 > 0) {
                    setStateAndUi(this.mBackUpPlayingBufferState);
                }
                this.mBackUpPlayingBufferState = -1;
                return;
            }
            return;
        }
        if (i10 == getGSYVideoManager().n()) {
            this.mRotate = i11;
            com.papa.gsyvideoplayer.utils.c.h("Video Rotate Info " + i11);
            com.papa.gsyvideoplayer.render.a aVar = this.mTextureView;
            if (aVar != null) {
                aVar.w(this.mRotate);
            }
        }
    }

    protected void onLossAudio() {
        new Handler(Looper.getMainLooper()).post(new b());
    }

    protected void onLossTransientAudio() {
        try {
            onVideoPause();
        } catch (Exception e10) {
            e10.printStackTrace();
        }
    }

    protected void onLossTransientCanDuck() {
    }

    public void onPrepared() {
        if (this.mCurrentState != 1) {
            return;
        }
        this.mHadPrepared = true;
        if (this.mVideoAllCallBack != null && isCurrentMediaListener()) {
            com.papa.gsyvideoplayer.utils.c.h("onPrepared");
            this.mVideoAllCallBack.onPrepared(this.mOriginUrl, this.mTitle, this);
        }
        if (this.mStartAfterPrepared) {
            startAfterPrepared();
        } else {
            setStateAndUi(5);
            onVideoPause();
        }
    }

    @Override // v7.a
    public void onSeekComplete() {
        com.papa.gsyvideoplayer.utils.c.h("onSeekComplete");
    }

    @Override // v7.a
    public void onVideoPause() {
        if (this.mCurrentState == 1) {
            this.mPauseBeforePrepared = true;
        }
        try {
            if (getGSYVideoManager() == null || !getGSYVideoManager().isPlaying()) {
                return;
            }
            setStateAndUi(5);
            this.mCurrentPosition = getGSYVideoManager().getCurrentPosition();
            if (getGSYVideoManager() != null) {
                getGSYVideoManager().pause();
            }
        } catch (Exception e10) {
            e10.printStackTrace();
        }
    }

    public void onVideoReset() {
        setStateAndUi(0);
    }

    public void onVideoResume() {
        onVideoResume(true);
    }

    @Override // v7.a
    public void onVideoSizeChanged() {
        com.papa.gsyvideoplayer.render.a aVar;
        int currentVideoWidth = getGSYVideoManager().getCurrentVideoWidth();
        int currentVideoHeight = getGSYVideoManager().getCurrentVideoHeight();
        if (currentVideoWidth == 0 || currentVideoHeight == 0 || (aVar = this.mTextureView) == null) {
            return;
        }
        aVar.o();
    }

    protected void prepareVideo() {
        startPrepare();
    }

    public void release() {
        this.mSaveChangeViewTIme = 0L;
        if (!isCurrentMediaListener() || System.currentTimeMillis() - this.mSaveChangeViewTIme <= 2000) {
            return;
        }
        releaseVideos();
    }

    protected void releaseNetWorkState() {
        NetInfoModule netInfoModule = this.mNetInfoModule;
        if (netInfoModule != null) {
            netInfoModule.f();
            this.mNetInfoModule = null;
        }
    }

    @Override // com.papa.gsyvideoplayer.video.base.GSYTextureRenderView
    protected void releasePauseCover() {
        Bitmap bitmap;
        try {
            if (this.mCurrentState == 5 || (bitmap = this.mFullPauseBitmap) == null || bitmap.isRecycled() || !this.mShowPauseCover) {
                return;
            }
            this.mFullPauseBitmap.recycle();
            this.mFullPauseBitmap = null;
        } catch (Exception e10) {
            e10.printStackTrace();
        }
    }

    @Override // com.papa.gsyvideoplayer.video.base.GSYTextureRenderView
    protected void releaseSurface(Surface surface) {
        getGSYVideoManager().t(surface);
    }

    protected abstract void releaseVideos();

    public void seekTo(long j10) {
        try {
            if (getGSYVideoManager() == null || j10 <= 0) {
                return;
            }
            getGSYVideoManager().seekTo(j10);
        } catch (Exception e10) {
            e10.printStackTrace();
        }
    }

    @Override // com.papa.gsyvideoplayer.video.base.GSYTextureRenderView
    protected void setDisplay(Surface surface) {
        getGSYVideoManager().q(surface);
    }

    public void setIfCurrentIsFullscreen(boolean z10) {
        this.mIfCurrentIsFullscreen = z10;
    }

    public void setLooping(boolean z10) {
        this.mLooping = z10;
    }

    public void setMapHeadData(Map<String, String> map) {
        if (map != null) {
            this.mMapHeadData = map;
        }
    }

    public void setOverrideExtension(String str) {
        this.mOverrideExtension = str;
    }

    public void setPlayPosition(int i10) {
        this.mPlayPosition = i10;
    }

    public void setPlayTag(String str) {
        this.mPlayTag = str;
    }

    public void setReleaseWhenLossAudio(boolean z10) {
        this.mReleaseWhenLossAudio = z10;
    }

    public void setSeekOnStart(long j10) {
        this.mSeekOnStart = j10;
    }

    public void setShowPauseCover(boolean z10) {
        this.mShowPauseCover = z10;
    }

    public void setSpeed(float f10) {
        setSpeed(f10, false);
    }

    public void setSpeedPlaying(float f10, boolean z10) {
        setSpeed(f10, z10);
        getGSYVideoManager().c(f10, z10);
    }

    public void setStartAfterPrepared(boolean z10) {
        this.mStartAfterPrepared = z10;
    }

    protected abstract void setStateAndUi(int i10);

    public boolean setUp(String str, boolean z10, String str2) {
        return setUp(str, z10, null, str2);
    }

    public void setVideoAllCallBack(h hVar) {
        this.mVideoAllCallBack = hVar;
    }

    @Override // com.papa.gsyvideoplayer.video.base.GSYTextureRenderView
    protected void showPauseCover() {
        Bitmap bitmap;
        Surface surface;
        if (this.mCurrentState == 5 && (bitmap = this.mFullPauseBitmap) != null && !bitmap.isRecycled() && this.mShowPauseCover && (surface = this.mSurface) != null && surface.isValid() && getGSYVideoManager().g()) {
            try {
                RectF rectF = new RectF(0.0f, 0.0f, this.mTextureView.h(), this.mTextureView.c());
                Canvas canvasLockCanvas = this.mSurface.lockCanvas(new Rect(0, 0, this.mTextureView.h(), this.mTextureView.c()));
                if (canvasLockCanvas != null) {
                    canvasLockCanvas.drawBitmap(this.mFullPauseBitmap, (Rect) null, rectF, (Paint) null);
                    this.mSurface.unlockCanvasAndPost(canvasLockCanvas);
                }
            } catch (Exception e10) {
                e10.printStackTrace();
            }
        }
    }

    public void startAfterPrepared() {
        if (!this.mHadPrepared) {
            prepareVideo();
        }
        try {
            if (getGSYVideoManager() != null) {
                getGSYVideoManager().start();
            }
            setStateAndUi(2);
            if (getGSYVideoManager() != null && this.mSeekOnStart > 0) {
                getGSYVideoManager().seekTo(this.mSeekOnStart);
                this.mSeekOnStart = 0L;
            }
        } catch (Exception e10) {
            e10.printStackTrace();
        }
        addTextureView();
        createNetWorkState();
        listenerNetWorkState();
        this.mHadPlay = true;
        com.papa.gsyvideoplayer.render.a aVar = this.mTextureView;
        if (aVar != null) {
            aVar.m();
        }
        if (this.mPauseBeforePrepared) {
            onVideoPause();
            this.mPauseBeforePrepared = false;
        }
    }

    protected void startButtonLogic() {
        int i10;
        h hVar = this.mVideoAllCallBack;
        if (hVar != null && ((i10 = this.mCurrentState) == 0 || i10 == 6)) {
            com.papa.gsyvideoplayer.utils.c.h("onClickStartIcon");
            this.mVideoAllCallBack.onClickStartIcon(this.mOriginUrl, this.mTitle, this);
        } else if (hVar != null) {
            com.papa.gsyvideoplayer.utils.c.h("onClickStartError");
            this.mVideoAllCallBack.onClickStartError(this.mOriginUrl, this.mTitle, this);
        }
        prepareVideo();
    }

    public abstract void startPlayLogic();

    protected void startPrepare() {
        if (getGSYVideoManager().w() != null) {
            getGSYVideoManager().w().onCompletion();
        }
        if (this.mVideoAllCallBack != null) {
            com.papa.gsyvideoplayer.utils.c.h("onStartPrepared");
            this.mVideoAllCallBack.onStartPrepared(this.mOriginUrl, this.mTitle, this);
        }
        getGSYVideoManager().x(this);
        getGSYVideoManager().i(this.mPlayTag);
        getGSYVideoManager().v(this.mPlayPosition);
        this.mAudioManager.requestAudioFocus(this.onAudioFocusChangeListener, 3, 2);
        try {
            Context context = this.mContext;
            if (context instanceof Activity) {
                ((Activity) context).getWindow().addFlags(128);
            }
        } catch (Exception e10) {
            e10.printStackTrace();
        }
        this.mBackUpPlayingBufferState = -1;
        com.papa.gsyvideoplayer.video.base.a gSYVideoManager = getGSYVideoManager();
        String str = this.mUrl;
        Map<String, String> map = this.mMapHeadData;
        if (map == null) {
            map = new HashMap<>();
        }
        gSYVideoManager.k(str, map, this.mLooping, this.mSpeed, this.mCache, this.mCachePath, this.mOverrideExtension);
        setStateAndUi(1);
    }

    protected void unListenerNetWorkState() {
        NetInfoModule netInfoModule = this.mNetInfoModule;
        if (netInfoModule != null) {
            netInfoModule.f();
        }
    }

    protected void updatePauseCover() {
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

    @Override // v7.a
    public void onVideoResume(boolean z10) {
        this.mPauseBeforePrepared = false;
        StringBuilder sb2 = new StringBuilder();
        sb2.append("onVideoResume: ");
        sb2.append(this.mCurrentState);
        int i10 = this.mCurrentState;
        if (i10 == 5 || i10 == 7 || i10 == 0) {
            try {
                if (this.mCurrentPosition < 0 || getGSYVideoManager() == null) {
                    return;
                }
                if (z10) {
                    getGSYVideoManager().seekTo(this.mCurrentPosition);
                }
                getGSYVideoManager().start();
                setStateAndUi(2);
                AudioManager audioManager = this.mAudioManager;
                if (audioManager != null && !this.mReleaseWhenLossAudio) {
                    audioManager.requestAudioFocus(this.onAudioFocusChangeListener, 3, 2);
                }
                this.mCurrentPosition = 0L;
            } catch (Exception e10) {
                e10.printStackTrace();
            }
        }
    }

    public void setSpeed(float f10, boolean z10) {
        this.mSpeed = f10;
        this.mSoundTouch = z10;
        if (getGSYVideoManager() != null) {
            getGSYVideoManager().a(f10, z10);
        }
    }

    public boolean setUp(String str, boolean z10, File file, Map<String, String> map, String str2) {
        if (!setUp(str, z10, file, str2)) {
            return false;
        }
        Map<String, String> map2 = this.mMapHeadData;
        if (map2 != null) {
            map2.clear();
        } else {
            this.mMapHeadData = new HashMap();
        }
        if (map == null) {
            return true;
        }
        this.mMapHeadData.putAll(map);
        return true;
    }

    public boolean setUp(String str, boolean z10, File file, String str2) {
        return setUp(str, z10, file, str2, true);
    }

    protected boolean setUp(String str, boolean z10, File file, String str2, boolean z11) {
        this.mCache = z10;
        this.mCachePath = file;
        this.mOriginUrl = str;
        if (isCurrentMediaListener() && System.currentTimeMillis() - this.mSaveChangeViewTIme < 2000) {
            return false;
        }
        this.mCurrentState = 0;
        this.mUrl = str;
        this.mTitle = str2;
        if (!z11) {
            return true;
        }
        setStateAndUi(0);
        return true;
    }

    public GSYVideoView(@NonNull Context context, @Nullable AttributeSet attributeSet) {
        super(context, attributeSet);
        this.mCurrentState = -1;
        this.mPlayPosition = -22;
        this.mBackUpPlayingBufferState = -1;
        this.mSeekOnStart = -1L;
        this.mSaveChangeViewTIme = 0L;
        this.mSpeed = 1.0f;
        this.mCache = false;
        this.mIfCurrentIsFullscreen = false;
        this.mLooping = false;
        this.mHadPlay = false;
        this.mNetChanged = false;
        this.mSoundTouch = false;
        this.mShowPauseCover = false;
        this.mPauseBeforePrepared = false;
        this.mStartAfterPrepared = true;
        this.mHadPrepared = false;
        this.mReleaseWhenLossAudio = true;
        this.mPlayTag = "";
        this.mNetSate = "NORMAL";
        this.mMapHeadData = new HashMap();
        this.onAudioFocusChangeListener = new a();
        init(context);
    }

    public GSYVideoView(@NonNull Context context, @Nullable AttributeSet attributeSet, @AttrRes int i10) {
        super(context, attributeSet, i10);
        this.mCurrentState = -1;
        this.mPlayPosition = -22;
        this.mBackUpPlayingBufferState = -1;
        this.mSeekOnStart = -1L;
        this.mSaveChangeViewTIme = 0L;
        this.mSpeed = 1.0f;
        this.mCache = false;
        this.mIfCurrentIsFullscreen = false;
        this.mLooping = false;
        this.mHadPlay = false;
        this.mNetChanged = false;
        this.mSoundTouch = false;
        this.mShowPauseCover = false;
        this.mPauseBeforePrepared = false;
        this.mStartAfterPrepared = true;
        this.mHadPrepared = false;
        this.mReleaseWhenLossAudio = true;
        this.mPlayTag = "";
        this.mNetSate = "NORMAL";
        this.mMapHeadData = new HashMap();
        this.onAudioFocusChangeListener = new a();
        init(context);
    }

    public GSYVideoView(Context context, Boolean bool) {
        super(context);
        this.mCurrentState = -1;
        this.mPlayPosition = -22;
        this.mBackUpPlayingBufferState = -1;
        this.mSeekOnStart = -1L;
        this.mSaveChangeViewTIme = 0L;
        this.mSpeed = 1.0f;
        this.mCache = false;
        this.mIfCurrentIsFullscreen = false;
        this.mLooping = false;
        this.mHadPlay = false;
        this.mNetChanged = false;
        this.mSoundTouch = false;
        this.mShowPauseCover = false;
        this.mPauseBeforePrepared = false;
        this.mStartAfterPrepared = true;
        this.mHadPrepared = false;
        this.mReleaseWhenLossAudio = true;
        this.mPlayTag = "";
        this.mNetSate = "NORMAL";
        this.mMapHeadData = new HashMap();
        this.onAudioFocusChangeListener = new a();
        this.mIfCurrentIsFullscreen = bool.booleanValue();
        init(context);
    }
}
