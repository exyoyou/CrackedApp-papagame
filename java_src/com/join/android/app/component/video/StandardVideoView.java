package com.join.android.app.component.video;

import android.content.Context;
import android.graphics.Bitmap;
import android.graphics.Point;
import android.net.Uri;
import android.os.Handler;
import android.os.Message;
import android.text.TextUtils;
import android.util.AttributeSet;
import android.view.Surface;
import android.view.View;
import android.view.ViewGroup;
import android.widget.Button;
import android.widget.ImageView;
import android.widget.RelativeLayout;
import android.widget.SeekBar;
import android.widget.TextView;
import com.facebook.drawee.view.SimpleDraweeView;
import com.join.android.app.common.utils.l;
import com.join.android.app.mgsim.wufun.R;
import com.join.mgps.Util.a3;
import com.join.mgps.Util.g1;
import com.join.mgps.Util.s1;
import com.join.mgps.Util.t2;
import com.join.mgps.customview.EqualizerView;
import com.join.mgps.customview.t;
import com.papa.gsyvideoplayer.utils.n;
import com.papa.gsyvideoplayer.video.StandardGSYVideoPlayer;
import com.papa.gsyvideoplayer.video.base.GSYBaseVideoPlayer;
import com.papa.gsyvideoplayer.video.base.GSYVideoControlView;
import moe.codeest.enviews.ENPlayView;

/* JADX INFO: loaded from: classes5.dex */
public class StandardVideoView extends StandardGSYVideoPlayer {
    public static int D = 1;
    public static boolean E = true;
    Runnable A;
    String B;
    private boolean C;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public SimpleDraweeView f35112b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    ImageView f35113c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    long f35114d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    View f35115e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    View f35116f;

    /* JADX INFO: renamed from: g, reason: collision with root package name */
    TextView f35117g;

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    ImageView f35118h;

    /* JADX INFO: renamed from: i, reason: collision with root package name */
    k f35119i;

    /* JADX INFO: renamed from: j, reason: collision with root package name */
    String f35120j;

    /* JADX INFO: renamed from: k, reason: collision with root package name */
    long f35121k;

    /* JADX INFO: renamed from: l, reason: collision with root package name */
    long f35122l;

    /* JADX INFO: renamed from: m, reason: collision with root package name */
    String f35123m;

    /* JADX INFO: renamed from: n, reason: collision with root package name */
    String f35124n;

    /* JADX INFO: renamed from: o, reason: collision with root package name */
    int f35125o;

    /* JADX INFO: renamed from: p, reason: collision with root package name */
    j f35126p;

    /* JADX INFO: renamed from: q, reason: collision with root package name */
    boolean f35127q;

    /* JADX INFO: renamed from: r, reason: collision with root package name */
    public ImageView f35128r;

    /* JADX INFO: renamed from: s, reason: collision with root package name */
    protected ImageView f35129s;

    /* JADX INFO: renamed from: t, reason: collision with root package name */
    protected boolean f35130t;

    /* JADX INFO: renamed from: u, reason: collision with root package name */
    private boolean f35131u;

    /* JADX INFO: renamed from: v, reason: collision with root package name */
    private i f35132v;

    /* JADX INFO: renamed from: w, reason: collision with root package name */
    private i f35133w;

    /* JADX INFO: renamed from: x, reason: collision with root package name */
    Handler f35134x;

    /* JADX INFO: renamed from: y, reason: collision with root package name */
    protected boolean f35135y;

    /* JADX INFO: renamed from: z, reason: collision with root package name */
    t f35136z;

    class a implements View.OnClickListener {
        a() {
        }

        @Override // android.view.View.OnClickListener
        public void onClick(View v10) {
            ((GSYVideoControlView) StandardVideoView.this).mStartButton.performClick();
            StandardVideoView.this.f35116f.setVisibility(4);
        }
    }

    class b implements View.OnClickListener {

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        final /* synthetic */ Context f35138b;

        b(final Context val$context) {
            this.f35138b = val$context;
        }

        @Override // android.view.View.OnClickListener
        public void onClick(View v10) {
            StandardVideoView.this.startWindowFullscreen(this.f35138b, false, true);
        }
    }

    class c implements v7.d {
        c() {
        }

        @Override // v7.d
        public void a(int progress, int secProgress, int currentPosition, int duration) {
            StandardVideoView standardVideoView = StandardVideoView.this;
            standardVideoView.f35114d = currentPosition;
            if (progress == 100 || currentPosition == duration) {
                standardVideoView.f35114d = 0L;
            }
            k kVar = standardVideoView.f35119i;
            if (kVar != null) {
                kVar.a(progress, secProgress, currentPosition, duration);
            }
        }
    }

    class d implements Runnable {
        d() {
        }

        @Override // java.lang.Runnable
        public void run() {
            StandardVideoView.this.backToNormal();
        }
    }

    class e extends Handler {
        e() {
        }

        @Override // android.os.Handler
        public void handleMessage(Message msg) {
            if (StandardVideoView.this.f35118h.getVisibility() == 0) {
                StandardVideoView.this.f35118h.setVisibility(4);
            }
        }
    }

    class f implements View.OnClickListener {
        f() {
        }

        @Override // android.view.View.OnClickListener
        public void onClick(View view) {
            StandardVideoView.this.startPlayLogic();
            StandardVideoView.this.f35136z.dismiss();
        }
    }

    class g implements View.OnClickListener {
        g() {
        }

        @Override // android.view.View.OnClickListener
        public void onClick(View view) {
            StandardVideoView.this.f35136z.dismiss();
        }
    }

    class h implements Runnable {
        h() {
        }

        @Override // java.lang.Runnable
        public void run() {
            StandardVideoView.this.startProgressTimer();
        }
    }

    public interface i {
        void a(int visible);
    }

    public interface j {
        void a(StandardVideoView standardVideoView);
    }

    public interface k {
        void a(int progress, int secProgress, int currentPosition, int duration);
    }

    public StandardVideoView(Context context) {
        super(context);
        this.f35114d = 0L;
        this.f35120j = "";
        this.f35121k = 100000000L;
        this.f35122l = 0L;
        this.f35123m = "";
        this.f35124n = "";
        this.f35127q = true;
        this.f35130t = false;
        this.f35131u = false;
        this.f35134x = new e();
        this.A = new h();
        this.B = "StandardVideoView";
        this.C = true;
    }

    private void j() {
        i iVar = this.f35132v;
        if (iVar != null) {
            iVar.a(4);
        } else {
            this.f35112b.setVisibility(4);
        }
    }

    private void o() {
        this.f35134x.sendEmptyMessageDelayed(1, 800L);
    }

    @Override // com.papa.gsyvideoplayer.video.base.GSYVideoPlayer, com.papa.gsyvideoplayer.video.base.GSYVideoView
    protected boolean backFromFull(Context context) {
        return com.join.android.app.component.video.a.c0(context, this.mPlayTag);
    }

    @Override // com.papa.gsyvideoplayer.video.StandardGSYVideoPlayer, com.papa.gsyvideoplayer.video.base.GSYVideoControlView
    protected void changeUiToCompleteShow() {
        super.changeUiToCompleteShow();
        if (!this.mIfCurrentIsFullscreen) {
            setViewShowState(this.mTopContainer, 4);
        }
        setViewShowState(this.mStartButton, 4);
        setViewShowState(this.mBottomProgressBar, 4);
        setViewShowState(this.mBottomContainer, 4);
        setViewShowState(this.mLoadingProgressBar, 4);
        i iVar = this.f35133w;
        if (iVar != null) {
            iVar.a(4);
        }
        this.f35115e.setVisibility(4);
        if (this.f35126p == null || this.mIfCurrentIsFullscreen) {
            this.f35116f.setVisibility(0);
        } else if (t2.i(this.f35124n)) {
            l.h(this.f35112b, this.f35124n);
        }
        i iVar2 = this.f35132v;
        if (iVar2 != null) {
            iVar2.a(0);
        } else {
            this.f35112b.setVisibility(0);
        }
    }

    @Override // com.papa.gsyvideoplayer.video.StandardGSYVideoPlayer, com.papa.gsyvideoplayer.video.base.GSYVideoControlView
    protected void changeUiToError() {
        super.changeUiToError();
        if (this.mIfCurrentIsFullscreen) {
            setViewShowState(this.mTopContainer, 0);
        }
        i iVar = this.f35132v;
        if (iVar != null) {
            iVar.a(0);
        } else {
            this.f35112b.setVisibility(0);
        }
    }

    @Override // com.papa.gsyvideoplayer.video.StandardGSYVideoPlayer, com.papa.gsyvideoplayer.video.base.GSYVideoControlView
    protected void changeUiToNormal() {
        super.changeUiToNormal();
        this.f35135y = false;
        setViewShowState(this.mStartButton, 4);
        setViewShowState(this.mBottomProgressBar, 4);
        setViewShowState(this.mBottomContainer, 4);
        setViewShowState(this.mLoadingProgressBar, 4);
        i iVar = this.f35133w;
        if (iVar != null) {
            iVar.a(4);
        }
        if (!this.mIfCurrentIsFullscreen) {
            setViewShowState(this.mTopContainer, 4);
        }
        this.f35116f.setVisibility(4);
        this.f35115e.setVisibility(4);
        i iVar2 = this.f35132v;
        if (iVar2 != null) {
            iVar2.a(0);
        } else {
            this.f35112b.setVisibility(0);
        }
    }

    @Override // com.papa.gsyvideoplayer.video.StandardGSYVideoPlayer
    protected void changeUiToPauseClear() {
        super.changeUiToPauseClear();
        setViewShowState(this.mBottomProgressBar, 4);
    }

    @Override // com.papa.gsyvideoplayer.video.StandardGSYVideoPlayer, com.papa.gsyvideoplayer.video.base.GSYVideoControlView
    protected void changeUiToPauseShow() {
        super.changeUiToPauseShow();
        if (!this.mIfCurrentIsFullscreen) {
            setViewShowState(this.mTopContainer, 4);
        }
        setViewShowState(this.mStartButton, 0);
        setViewShowState(this.mBottomProgressBar, 4);
        setViewShowState(this.mBottomContainer, 4);
        setViewShowState(this.mLoadingProgressBar, 4);
        i iVar = this.f35133w;
        if (iVar != null) {
            iVar.a(4);
        }
        if (this.f35126p != null) {
            setViewShowState(this.mStartButton, 4);
        }
        setViewShowState(this.mThumbImageViewLayout, 4);
        i iVar2 = this.f35132v;
        if (iVar2 != null) {
            iVar2.a(0);
        } else {
            this.f35112b.setVisibility(this.C ? 0 : 4);
        }
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
        super.changeUiToPlayingBufferingShow();
        if (!this.mIfCurrentIsFullscreen) {
            setViewShowState(this.mTopContainer, 4);
        }
        setViewShowState(this.mStartButton, 4);
        setViewShowState(this.mBottomProgressBar, 4);
        setViewShowState(this.mBottomContainer, 4);
        setViewShowState(this.mLoadingProgressBar, 4);
        i iVar = this.f35133w;
        if (iVar != null) {
            iVar.a(4);
        }
        if (this.f35126p == null) {
            setViewShowState(this.mLoadingProgressBar, 0);
            i iVar2 = this.f35133w;
            if (iVar2 != null) {
                iVar2.a(0);
            }
        }
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
        super.changeUiToPlayingShow();
        if (!this.mIfCurrentIsFullscreen) {
            setViewShowState(this.mTopContainer, 4);
            setMute(E);
        }
        if (this.mIfCurrentIsFullscreen) {
            if (!this.f35135y) {
                setViewShowState(this.mBottomContainer, 4);
                setViewShowState(this.mStartButton, 4);
            }
            this.f35115e.setVisibility(4);
        } else {
            if (this.f35126p == null) {
                this.f35115e.setVisibility(0);
            } else {
                this.f35115e.setVisibility(4);
            }
            setViewShowState(this.mStartButton, 4);
            setViewShowState(this.mBottomProgressBar, 4);
            setViewShowState(this.mBottomContainer, 4);
            setViewShowState(this.mLoadingProgressBar, 4);
            i iVar = this.f35133w;
            if (iVar != null) {
                iVar.a(4);
            }
        }
        j();
    }

    @Override // com.papa.gsyvideoplayer.video.StandardGSYVideoPlayer, com.papa.gsyvideoplayer.video.base.GSYVideoControlView
    protected void changeUiToPreparingShow() {
        super.changeUiToPreparingShow();
        if (!this.mIfCurrentIsFullscreen) {
            setViewShowState(this.mTopContainer, 4);
        }
        setViewShowState(this.mBottomContainer, 4);
        setViewShowState(this.mStartButton, 4);
        setViewShowState(this.mBottomProgressBar, 4);
        setViewShowState(this.mLoadingProgressBar, 4);
        i iVar = this.f35133w;
        if (iVar != null) {
            iVar.a(4);
        }
        if (this.f35126p == null) {
            setViewShowState(this.mLoadingProgressBar, 0);
            i iVar2 = this.f35133w;
            if (iVar2 != null) {
                iVar2.a(0);
            }
        }
        this.f35116f.setVisibility(4);
        i iVar3 = this.f35132v;
        if (iVar3 != null) {
            iVar3.a(0);
        } else {
            this.f35112b.setVisibility(0);
        }
    }

    @Override // com.papa.gsyvideoplayer.video.base.GSYBaseVideoPlayer
    protected void clearFullscreenLayout() {
        int iQ;
        if (this.mFullAnimEnd) {
            setMute(E);
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
                ((StandardVideoView) viewFindViewById).mIfCurrentIsFullscreen = false;
            }
            if (iQ == 0) {
                backToNormal();
            } else {
                postDelayed(new d(), iQ);
            }
        }
    }

    @Override // com.papa.gsyvideoplayer.video.StandardGSYVideoPlayer, com.papa.gsyvideoplayer.video.base.GSYBaseVideoPlayer
    protected void cloneParams(GSYBaseVideoPlayer from, GSYBaseVideoPlayer to) {
        super.cloneParams(from, to);
        ((StandardVideoView) to).mShowFullAnimation = ((StandardVideoView) from).mShowFullAnimation;
    }

    @Override // com.papa.gsyvideoplayer.video.base.GSYVideoPlayer, com.papa.gsyvideoplayer.video.base.GSYBaseVideoPlayer
    protected int getFullId() {
        return R.id.custom_full_id;
    }

    @Override // com.papa.gsyvideoplayer.video.base.GSYVideoPlayer, com.papa.gsyvideoplayer.video.base.GSYVideoView
    public com.papa.gsyvideoplayer.video.base.a getGSYVideoManager() {
        if (t2.h(this.mPlayTag)) {
            this.mPlayTag = "getGSYVideoManager";
        }
        com.join.android.app.component.video.a.e0(this.mPlayTag).Q(getContext().getApplicationContext());
        return com.join.android.app.component.video.a.e0(this.mPlayTag);
    }

    public String getKey() {
        if (this.mPlayPosition == -22) {
            com.papa.gsyvideoplayer.utils.c.e(getClass().getSimpleName() + " used getKey() ******* PlayPosition never set. ********");
        }
        if (TextUtils.isEmpty(this.mPlayTag)) {
            com.papa.gsyvideoplayer.utils.c.e(getClass().getSimpleName() + " used getKey() ******* PlayTag never set. ********");
        }
        return this.B + this.mPlayPosition + this.mPlayTag;
    }

    @Override // com.papa.gsyvideoplayer.video.StandardGSYVideoPlayer, com.papa.gsyvideoplayer.video.base.GSYVideoView
    public int getLayoutId() {
        return R.layout.video_layout_standard_wufun;
    }

    @Override // com.papa.gsyvideoplayer.video.base.GSYVideoPlayer, com.papa.gsyvideoplayer.video.base.GSYBaseVideoPlayer
    protected int getSmallId() {
        return R.id.custom_small_id;
    }

    public long getTimeHas() {
        return this.f35121k;
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

    public boolean i() {
        if (this.f35126p == null || this.f35127q) {
            int iE = com.join.mgps.pref.h.n(getContext()).e();
            if (iE != 1) {
                return iE != 2;
            }
            return com.papa.gsyvideoplayer.utils.k.i(getContext());
        }
        int iZ = com.join.mgps.pref.h.n(getContext()).z();
        if (iZ != 0) {
            return iZ == 1 && com.papa.gsyvideoplayer.utils.k.i(getContext());
        }
        return true;
    }

    @Override // com.papa.gsyvideoplayer.video.StandardGSYVideoPlayer, com.papa.gsyvideoplayer.video.base.GSYBaseVideoPlayer, com.papa.gsyvideoplayer.video.base.GSYVideoControlView, com.papa.gsyvideoplayer.video.base.GSYVideoView
    public void init(Context context) {
        int i10;
        super.init(context);
        ImageView imageView = (ImageView) findViewById(R.id.back);
        this.f35113c = imageView;
        imageView.setVisibility(4);
        this.f35112b = (SimpleDraweeView) findViewById(R.id.thumbImageView);
        this.f35117g = (TextView) findViewById(R.id.progressTextShow);
        this.f35115e = findViewById(R.id.layout_bottom2);
        this.f35116f = findViewById(R.id.playFinishCover);
        this.f35118h = (ImageView) findViewById(R.id.coverDetailBack);
        l.n((SimpleDraweeView) findViewById(R.id.loading), Uri.parse("res:///2131235672"));
        this.f35116f.setOnClickListener(new a());
        ((EqualizerView) findViewById(R.id.equalizer_view)).a();
        RelativeLayout relativeLayout = this.mThumbImageViewLayout;
        if (relativeLayout != null && ((i10 = this.mCurrentState) == -1 || i10 == 0 || i10 == 7)) {
            relativeLayout.setVisibility(0);
        }
        TextView textView = (TextView) findViewById(R.id.netWorkType);
        String strC = com.papa.gsyvideoplayer.utils.k.c(context);
        if ("NETWORK_WIFI".equals(strC)) {
            textView.setText("Wi-Fi");
        } else if (t2.i(strC)) {
            textView.setText(strC.replace("NETWORK_", ""));
        }
        setThumbPlay(false);
        setShowPauseCover(true);
        setNeedShowWifiTip(false);
        com.papa.gsyvideoplayer.utils.c.b();
        getFullscreenButton().setOnClickListener(new b(context));
        initCustomView();
        setGSYVideoProgressListener(new c());
        com.papa.gsyvideoplayer.utils.f.l(4);
    }

    @Override // com.papa.gsyvideoplayer.video.base.GSYTextureRenderView
    protected void initCover() {
        try {
            super.initCover();
        } catch (Exception e10) {
            e10.printStackTrace();
        }
    }

    void initCustomView() {
        this.f35128r = (ImageView) findViewById(R.id.mute);
        this.f35129s = (ImageView) findViewById(R.id.autoPlay);
        this.f35128r.setOnClickListener(this);
        this.f35129s.setOnClickListener(this);
        setMuteView(E);
        this.f35129s.setSelected(com.join.mgps.pref.h.n(getContext()).a());
    }

    public void k(StandardVideoView switchVideo) {
        try {
            cloneParams(switchVideo, this);
        } catch (Exception e10) {
            e10.printStackTrace();
        }
    }

    public void l(Bitmap bitmap) {
        if (bitmap != null) {
            try {
                ImageView imageView = this.f35118h;
                if (imageView != null) {
                    imageView.setImageBitmap(bitmap);
                }
            } catch (Exception e10) {
                e10.printStackTrace();
            }
        }
    }

    public void m(int type) {
        com.papa.gsyvideoplayer.utils.f.l(type);
        com.papa.gsyvideoplayer.utils.f.c();
    }

    public StandardVideoView n() {
        StandardVideoView standardVideoView = new StandardVideoView(getContext());
        cloneParams(this, standardVideoView);
        return standardVideoView;
    }

    @Override // com.papa.gsyvideoplayer.video.base.GSYVideoControlView, android.view.View.OnClickListener
    public void onClick(View v10) {
        super.onClick(v10);
        int id2 = v10.getId();
        if (id2 == R.id.mute) {
            setMute(!E);
            return;
        }
        if (id2 == R.id.autoPlay) {
            boolean z10 = !this.f35129s.isSelected();
            this.f35129s.setSelected(z10);
            com.join.mgps.pref.h.n(getContext()).P(z10);
            a3.b(getContext()).d(z10 ? "已开启WiFi下自动播放" : "已关闭WiFi下自动播放");
            return;
        }
        if (id2 == R.id.thumb || id2 == R.id.bannerView) {
            if (TextUtils.isEmpty(this.mUrl)) {
                com.papa.gsyvideoplayer.utils.c.e("********" + getResources().getString(R.string.no_url));
                return;
            }
            if (!this.mIfCurrentIsFullscreen) {
                j jVar = this.f35126p;
                if (jVar != null) {
                    jVar.a(this);
                } else if (this.mCurrentState != 0) {
                    g1.d("startWindowFullscreen", "currentTime= " + this.f35122l + " mCurrentState= " + this.mCurrentState);
                    if (this.mCurrentState != 2 || this.f35122l >= 500) {
                        startWindowFullscreen(getContext(), true, true);
                    }
                }
            }
            if (this.mCurrentState == 0) {
                startPlayLogic();
            }
        }
    }

    @Override // com.papa.gsyvideoplayer.video.StandardGSYVideoPlayer, com.papa.gsyvideoplayer.video.base.GSYVideoControlView
    protected void onClickUiToggle() {
        if (this.mIfCurrentIsFullscreen && this.mLockCurScreen && this.mNeedLockFull) {
            setViewShowState(this.mLockScreen, 0);
            return;
        }
        this.f35135y = true;
        super.onClickUiToggle();
        j jVar = this.f35126p;
        if (jVar != null) {
            jVar.a(this);
            return;
        }
        if (this.mIfCurrentIsFullscreen || this.mCurrentState == 0) {
            return;
        }
        g1.d("startWindowFullscreen", "currentTime= " + this.f35122l + " mCurrentState= " + this.mCurrentState);
        if (this.mCurrentState != 2 || this.f35122l >= 500) {
            startWindowFullscreen(getContext(), true, true);
        }
    }

    @Override // com.papa.gsyvideoplayer.video.StandardGSYVideoPlayer, com.papa.gsyvideoplayer.video.base.GSYVideoControlView, android.view.ViewGroup, android.view.View
    protected void onDetachedFromWindow() {
        super.onDetachedFromWindow();
    }

    @Override // com.papa.gsyvideoplayer.video.base.GSYBaseVideoPlayer, com.papa.gsyvideoplayer.video.base.GSYVideoControlView, com.papa.gsyvideoplayer.video.base.GSYVideoView, v7.a
    public void onPrepared() {
        if (this.f35131u) {
            setMute(true);
            this.f35131u = false;
        } else {
            setMute(E);
        }
        super.onPrepared();
        if (this.mIfCurrentIsFullscreen) {
            com.join.android.app.component.video.a.f0().get(this.mPlayTag).W(false);
        }
    }

    @Override // com.papa.gsyvideoplayer.video.base.GSYVideoControlView, android.widget.SeekBar.OnSeekBarChangeListener
    public void onStartTrackingTouch(SeekBar seekBar) {
        this.f35135y = true;
        super.onStartTrackingTouch(seekBar);
    }

    @Override // com.papa.gsyvideoplayer.video.base.GSYTextureRenderView, w7.c
    public void onSurfaceAvailable(Surface surface) {
        super.onSurfaceAvailable(surface);
    }

    @Override // com.papa.gsyvideoplayer.video.base.GSYTextureRenderView, w7.c
    public void onSurfaceUpdated(Surface surface) {
        super.onSurfaceUpdated(surface);
    }

    @Override // com.papa.gsyvideoplayer.video.base.GSYVideoView, v7.a
    public void onVideoResume() {
        super.onVideoResume();
    }

    @Override // com.papa.gsyvideoplayer.video.base.GSYVideoPlayer, com.papa.gsyvideoplayer.video.base.GSYVideoView
    protected void releaseVideos() {
        com.join.android.app.component.video.a.n0(this.mPlayTag);
    }

    public void setAutoPlayConfig(boolean isnormalConfig) {
        this.f35127q = isnormalConfig;
    }

    public void setChangeCoverShowListener(i changeCoverShow) {
        this.f35132v = changeCoverShow;
        this.f35112b.setVisibility(4);
    }

    public void setChangeCoverShowLoadingListener(i changeCoverShow) {
        this.f35133w = changeCoverShow;
        this.mLoadingProgressBar.setVisibility(4);
    }

    public void setCover(String cover) {
        this.f35124n = cover;
    }

    public void setMute(boolean mute) {
        setMuteOnly(mute);
        E = mute;
        StandardVideoViewJC.U2 = mute;
    }

    public void setMuteOnly(boolean mute) {
        try {
            g1.d("setMuteOnly ", mute + "");
            com.join.android.app.component.video.a.f0().get(this.mPlayTag).W(mute);
            setMuteView(mute);
        } catch (Exception e10) {
            e10.printStackTrace();
        }
    }

    public void setMuteView(boolean mute) {
        if (mute) {
            this.f35128r.setImageResource(R.drawable.mute_off);
        } else {
            this.f35128r.setImageResource(R.drawable.mute_on);
        }
    }

    public void setMuteWhenPlay(boolean muteWhenPlay) {
        this.f35131u = muteWhenPlay;
    }

    public void setNoneNetFinishActivity(boolean noneNetFinishActivity) {
        this.f35130t = noneNetFinishActivity;
    }

    public void setOnVideoProgressListener(k listener) {
        this.f35119i = listener;
    }

    public void setOnclickVideoListener(j onClickVideoListener) {
        this.f35126p = onClickVideoListener;
    }

    @Override // com.papa.gsyvideoplayer.video.base.GSYVideoControlView
    protected void setProgressAndTime(int progress, int secProgress, int currentTime, int totalTime, boolean forceChange) {
        super.setProgressAndTime(progress, secProgress, currentTime, totalTime, forceChange);
        this.f35122l = currentTime;
        if (currentTime > 0) {
            int i10 = totalTime - currentTime;
            this.f35121k = i10;
            String strR = com.papa.gsyvideoplayer.utils.b.r(i10);
            this.f35120j = strR;
            this.f35117g.setText(strR);
        }
    }

    public void setShowCoverWhenPause(boolean showCoverWhenPause) {
        this.C = showCoverWhenPause;
    }

    public void setSurfaceToPlay() {
        addTextureView();
        getGSYVideoManager().x(this);
        checkoutState();
        startProgressTimer();
    }

    public void setSwitchCache(boolean cache) {
        this.mCache = cache;
    }

    public void setSwitchTitle(String title) {
        this.mTitle = title;
    }

    public void setSwitchUrl(String url) {
        this.mUrl = url;
        this.mOriginUrl = url;
    }

    public void setThumbVisibleM() {
        ImageView imageView = this.f35118h;
        if (imageView != null) {
            imageView.setVisibility(0);
            o();
        }
    }

    public void setUp(String url, int screen, Object... objects) {
        int i10;
        this.f35123m = url;
        super.setUp(url, true, null, "");
        setAutoFullWithSize(true);
        setReleaseWhenLossAudio(true);
        setShowFullAnimation(false);
        setNeedShowWifiTip(false);
        if (objects.length > 1) {
            this.f35124n = objects[1].toString();
        }
        this.f35129s.setSelected(com.join.mgps.pref.h.n(getContext()).a());
        RelativeLayout relativeLayout = this.mThumbImageViewLayout;
        if (relativeLayout != null && ((i10 = this.mCurrentState) == -1 || i10 == 0 || i10 == 7)) {
            relativeLayout.setVisibility(0);
        }
        if (t2.i(this.f35124n)) {
            l.h(this.f35112b, this.f35124n);
        }
    }

    public void setUpLazy(String url, int screen, Object... objects) {
        this.f35123m = url;
        super.setUpLazy(url, false, null, null, "");
        setAutoFullWithSize(true);
        setReleaseWhenLossAudio(true);
        setShowFullAnimation(false);
        if (objects.length > 1) {
            this.f35124n = objects[1].toString();
        }
        this.f35129s.setSelected(com.join.mgps.pref.h.n(getContext()).a());
    }

    public void setVideoType(int fromType) {
        this.f35125o = fromType;
    }

    @Override // com.papa.gsyvideoplayer.video.base.GSYVideoControlView
    protected void setViewShowState(View view, int visibility) {
        super.setViewShowState(view, visibility);
    }

    @Override // com.papa.gsyvideoplayer.video.base.GSYBaseVideoPlayer
    public GSYBaseVideoPlayer showSmallVideo(Point size, boolean actionBar, boolean statusBar) {
        StandardVideoView standardVideoView = (StandardVideoView) super.showSmallVideo(size, actionBar, statusBar);
        standardVideoView.mStartButton.setVisibility(8);
        standardVideoView.mStartButton = null;
        return standardVideoView;
    }

    @Override // com.papa.gsyvideoplayer.video.StandardGSYVideoPlayer, com.papa.gsyvideoplayer.video.base.GSYVideoControlView
    protected void showWifiDialog() {
        String string;
        String str;
        t tVar;
        if (!com.papa.gsyvideoplayer.utils.k.g(this.mContext)) {
            startPlayLogic();
            return;
        }
        if (this.f35136z == null) {
            t tVar2 = new t(getContext(), R.style.MyDialog);
            this.f35136z = tVar2;
            tVar2.setContentView(R.layout.bind_dialog);
        }
        Button button = (Button) this.f35136z.findViewById(R.id.dialog_button_cancel);
        Button button2 = (Button) this.f35136z.findViewById(R.id.dialog_button_ok);
        TextView textView = (TextView) this.f35136z.findViewById(R.id.tip_title);
        View viewFindViewById = this.f35136z.findViewById(R.id.divider);
        TextView textView2 = (TextView) this.f35136z.findViewById(R.id.dialog_content);
        TextView textView3 = (TextView) this.f35136z.findViewById(R.id.dialog_desci);
        int iB = s1.b(getContext());
        if (iB != 0) {
            if (iB != 1) {
                viewFindViewById.setVisibility(8);
                button.setVisibility(8);
                string = getResources().getString(R.string.network_conn_failed);
                str = "关闭";
            }
            textView.setText("网络提示");
            textView2.setText(string);
            textView3.setVisibility(8);
            button2.setText(str);
            button.setText("取消");
            button2.setOnClickListener(new f());
            button.setOnClickListener(new g());
            tVar = this.f35136z;
            if (tVar != null || tVar.isShowing()) {
            }
            this.f35136z.show();
            return;
        }
        viewFindViewById.setVisibility(0);
        button.setVisibility(0);
        str = "继续观看";
        string = "您已切换到数据网络，是否继续观看视频？";
        textView.setText("网络提示");
        textView2.setText(string);
        textView3.setVisibility(8);
        button2.setText(str);
        button.setText("取消");
        button2.setOnClickListener(new f());
        button.setOnClickListener(new g());
        tVar = this.f35136z;
        if (tVar != null) {
        }
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
        StandardVideoView standardVideoView = (StandardVideoView) gSYBaseVideoPlayerStartWindowFullscreen;
        if (t2.i(this.f35124n)) {
            l.h(standardVideoView.f35112b, this.f35124n);
        }
        standardVideoView.C = this.C;
        RelativeLayout.LayoutParams layoutParams = (RelativeLayout.LayoutParams) this.mStartButton.getLayoutParams();
        layoutParams.height = getResources().getDimensionPixelOffset(R.dimen.wdp60);
        layoutParams.width = getResources().getDimensionPixelOffset(R.dimen.wdp60);
        this.mStartButton.setLayoutParams(layoutParams);
        if (this.mCurrentState != 2) {
            gSYBaseVideoPlayerStartWindowFullscreen.startPlayLogic();
        }
        com.join.android.app.component.video.a.f0().get(this.mPlayTag).W(false);
        return gSYBaseVideoPlayerStartWindowFullscreen;
    }

    @Override // com.papa.gsyvideoplayer.video.base.GSYVideoControlView
    public void touchDoubleUp() {
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

    public StandardVideoView(Context context, AttributeSet attrs) {
        super(context, attrs);
        this.f35114d = 0L;
        this.f35120j = "";
        this.f35121k = 100000000L;
        this.f35122l = 0L;
        this.f35123m = "";
        this.f35124n = "";
        this.f35127q = true;
        this.f35130t = false;
        this.f35131u = false;
        this.f35134x = new e();
        this.A = new h();
        this.B = "StandardVideoView";
        this.C = true;
    }
}
