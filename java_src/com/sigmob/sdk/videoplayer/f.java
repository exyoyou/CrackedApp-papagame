package com.sigmob.sdk.videoplayer;

import android.R;
import android.content.BroadcastReceiver;
import android.content.Context;
import android.content.Intent;
import android.content.IntentFilter;
import android.graphics.Bitmap;
import android.graphics.SurfaceTexture;
import android.media.AudioManager;
import android.util.AttributeSet;
import android.view.MotionEvent;
import android.view.Surface;
import android.view.View;
import android.view.ViewGroup;
import android.view.ViewParent;
import android.view.Window;
import android.widget.FrameLayout;
import android.widget.ImageView;
import android.widget.ProgressBar;
import android.widget.RelativeLayout;
import android.widget.SeekBar;
import com.czhj.sdk.common.utils.ResourceUtil;
import com.czhj.sdk.logger.SigmobLog;
import com.sigmob.windad.WindAdError;
import com.sigmob.windad.WindAds;
import java.lang.reflect.InvocationTargetException;
import java.util.Timer;
import java.util.TimerTask;

/* JADX INFO: loaded from: classes3.dex */
public class f extends RelativeLayout implements View.OnClickListener, View.OnTouchListener, SeekBar.OnSeekBarChangeListener, h {
    private static final String V = "android.media.VOLUME_CHANGED_ACTION";
    private static final String W = "android.media.EXTRA_VOLUME_STREAM_TYPE";

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public static final String f82055a = "VideoPlayerView";

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public static final int f82056b = -1;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public static final int f82057c = 0;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    public static final int f82058d = 1;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public static final int f82059e = 2;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    public static final int f82060f = 3;

    /* JADX INFO: renamed from: g, reason: collision with root package name */
    public static final int f82061g = 4;

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    public static final int f82062h = 5;

    /* JADX INFO: renamed from: i, reason: collision with root package name */
    public static final int f82063i = 6;

    /* JADX INFO: renamed from: j, reason: collision with root package name */
    public static final int f82064j = 7;

    /* JADX INFO: renamed from: k, reason: collision with root package name */
    public static final int f82065k = 1;

    /* JADX INFO: renamed from: l, reason: collision with root package name */
    public static final int f82066l = 2;

    /* JADX INFO: renamed from: m, reason: collision with root package name */
    public static final int f82067m = 3;

    /* JADX INFO: renamed from: n, reason: collision with root package name */
    public static final int f82068n = 0;

    /* JADX INFO: renamed from: o, reason: collision with root package name */
    public static final int f82069o = 80;

    /* JADX INFO: renamed from: p, reason: collision with root package name */
    public static boolean f82070p = true;

    /* JADX INFO: renamed from: q, reason: collision with root package name */
    public static int f82071q = 6;

    /* JADX INFO: renamed from: r, reason: collision with root package name */
    public static int f82072r = 1;

    /* JADX INFO: renamed from: s, reason: collision with root package name */
    public static boolean f82073s = false;

    /* JADX INFO: renamed from: t, reason: collision with root package name */
    public static boolean f82074t = true;

    /* JADX INFO: renamed from: u, reason: collision with root package name */
    public static int f82075u;
    public int A;
    public Class B;
    public boolean C;
    public i D;
    public int E;
    public int F;
    public int G;
    public long H;
    public ImageView I;
    public ImageView J;
    public ImageView K;
    public boolean L;
    protected long M;
    protected Timer N;
    protected int O;
    protected int P;
    protected AudioManager Q;
    protected a R;
    protected boolean S;
    l T;
    public AudioManager.OnAudioFocusChangeListener U;

    /* JADX INFO: renamed from: aa, reason: collision with root package name */
    private ViewGroup f82076aa;

    /* JADX INFO: renamed from: ab, reason: collision with root package name */
    private ViewGroup f82077ab;

    /* JADX INFO: renamed from: ac, reason: collision with root package name */
    private ViewGroup f82078ac;

    /* JADX INFO: renamed from: ad, reason: collision with root package name */
    private ViewGroup f82079ad;
    private ViewGroup ae;
    private ViewGroup af;
    private ViewGroup ag;
    private ViewGroup ah;
    private ProgressBar ai;
    private ImageView aj;
    private com.sigmob.sdk.nativead.l ak;
    private boolean al;
    private com.sigmob.sdk.videoplayer.b am;
    private ImageView an;
    private int ao;
    private int ap;
    private c aq;
    private boolean ar;
    private View as;
    private boolean at;
    private View au;

    /* JADX INFO: renamed from: v, reason: collision with root package name */
    public f f82080v;

    /* JADX INFO: renamed from: w, reason: collision with root package name */
    public int f82081w;

    /* JADX INFO: renamed from: x, reason: collision with root package name */
    public int f82082x;

    /* JADX INFO: renamed from: y, reason: collision with root package name */
    public g f82083y;

    /* JADX INFO: renamed from: z, reason: collision with root package name */
    public int f82084z;

    /* JADX INFO: renamed from: com.sigmob.sdk.videoplayer.f$2, reason: invalid class name */
    static /* synthetic */ class AnonymousClass2 {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        static final /* synthetic */ int[] f82086a;

        static {
            int[] iArr = new int[e.values().length];
            f82086a = iArr;
            try {
                iArr[e.START.ordinal()] = 1;
            } catch (NoSuchFieldError unused) {
            }
            try {
                f82086a[e.RETRY.ordinal()] = 2;
            } catch (NoSuchFieldError unused2) {
            }
            try {
                f82086a[e.VOLUME.ordinal()] = 3;
            } catch (NoSuchFieldError unused3) {
            }
            try {
                f82086a[e.FULLSCREEN.ordinal()] = 4;
            } catch (NoSuchFieldError unused4) {
            }
            try {
                f82086a[e.BIGRETRY.ordinal()] = 5;
            } catch (NoSuchFieldError unused5) {
            }
            try {
                f82086a[e.BACK.ordinal()] = 6;
            } catch (NoSuchFieldError unused6) {
            }
        }
    }

    public class a extends TimerTask {
        public a() {
        }

        @Override // java.util.TimerTask, java.lang.Runnable
        public void run() {
            int i10 = f.this.f82081w;
            if (i10 == 4 || i10 == 5) {
                WindAds.sharedAds().getHandler().post(new Runnable() { // from class: com.sigmob.sdk.videoplayer.o
                    @Override // java.lang.Runnable
                    public final void run() {
                        this.f82107b.a();
                    }
                });
            }
        }

        /* JADX INFO: Access modifiers changed from: private */
        public /* synthetic */ void a() {
            long currentPositionWhenPlaying = f.this.getCurrentPositionWhenPlaying();
            long duration = f.this.getDuration();
            f.this.a((int) ((100 * currentPositionWhenPlaying) / (duration == 0 ? 1L : duration)), currentPositionWhenPlaying, duration);
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    interface b {
        void onVolumeChanged(int volume);
    }

    private class c extends BroadcastReceiver {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        b f82088a;

        public c(b listener) {
            this.f82088a = listener;
        }

        @Override // android.content.BroadcastReceiver
        public void onReceive(Context context, Intent intent) {
            int streamVolume;
            if (!"android.media.VOLUME_CHANGED_ACTION".equals(intent.getAction()) || intent.getIntExtra("android.media.EXTRA_VOLUME_STREAM_TYPE", -1) != 3 || this.f82088a == null || (streamVolume = ((AudioManager) f.this.getApplicationContext().getSystemService("audio")).getStreamVolume(3)) < 0) {
                return;
            }
            this.f82088a.onVolumeChanged(streamVolume);
        }
    }

    public f(Context context) {
        super(context.getApplicationContext());
        this.f82081w = -1;
        this.f82082x = -1;
        this.f82084z = 0;
        this.A = 0;
        this.C = true;
        this.E = -1;
        this.F = 0;
        this.G = -1;
        this.H = 0L;
        this.L = false;
        this.M = 0L;
        this.U = new AudioManager.OnAudioFocusChangeListener() { // from class: com.sigmob.sdk.videoplayer.f.1
            @Override // android.media.AudioManager.OnAudioFocusChangeListener
            public void onAudioFocusChange(int focusChange) {
                StringBuilder sb2;
                String str;
                if (focusChange == -2) {
                    sb2 = new StringBuilder();
                    str = "AUDIOFOCUS_LOSS_TRANSIENT [";
                } else {
                    if (focusChange != -1) {
                        return;
                    }
                    f.this.E();
                    sb2 = new StringBuilder();
                    str = "AUDIOFOCUS_LOSS [";
                }
                sb2.append(str);
                sb2.append(hashCode());
                sb2.append("]");
                SigmobLog.i(sb2.toString());
            }
        };
        this.al = true;
        this.ar = false;
        a(context.getApplicationContext());
    }

    private void F() {
        try {
            i iVar = this.D;
            if (iVar != null) {
                iVar.f();
            }
            Class cls = this.B;
            this.D = cls == null ? new j(this) : (i) cls.getConstructor(f.class).newInstance(this);
        } catch (Throwable th) {
            th.printStackTrace();
        }
    }

    public void A() {
    }

    public void B() {
    }

    public void C() {
        int i10;
        f fVar = this.f82080v;
        if (fVar == null || (i10 = fVar.f82081w) == 0) {
            k();
            return;
        }
        if (i10 == 5) {
            com.sigmob.sdk.nativead.l lVar = this.ak;
            if (lVar != null) {
                lVar.onVideoResume();
            }
            this.f82080v.f();
            this.f82080v.D.a();
            return;
        }
        if (i10 == 3) {
            com.sigmob.sdk.nativead.l lVar2 = this.ak;
            if (lVar2 != null) {
                lVar2.onVideoStart();
            }
            this.f82080v.D.a();
            this.f82080v.f();
        }
    }

    public void D() {
        f fVar = this.f82080v;
        if (fVar == null) {
            return;
        }
        int i10 = fVar.f82081w;
        if (i10 == 6 || i10 == 0 || i10 == 1 || i10 == 7) {
            E();
        } else if (i10 != 5) {
            fVar.g();
            this.f82080v.D.d();
        }
    }

    public void E() {
        SigmobLog.i("releaseAllVideos");
        f fVar = this.f82080v;
        if (fVar == null) {
            return;
        }
        fVar.j();
        this.f82080v = null;
    }

    public void b() {
        SigmobLog.d("onStateNormal stat" + this.f82081w + " [" + hashCode() + "] ");
        this.f82081w = 0;
        a(this.aj, 0);
        a(this.f82077ab, 0);
        r();
        i iVar = this.D;
        if (iVar != null) {
            iVar.f();
        }
    }

    public void c() {
        SigmobLog.d("onStatePreparing  [" + hashCode() + "] ");
        this.f82081w = 1;
        s();
    }

    public void d() {
        this.L = true;
        k();
    }

    public void e() {
        if (this.f82081w == 3) {
            this.D.a();
        } else {
            this.L = false;
            k();
        }
    }

    public void f() {
        SigmobLog.d("onStatePlaying  [" + hashCode() + "] ");
        a(this.aj, 4);
        a(this.f82077ab, 4);
        if (this.f82081w == 3) {
            long j10 = this.H;
            if (j10 != 0) {
                this.D.a(j10);
                this.H = 0L;
            }
        }
        this.f82081w = 4;
        n();
    }

    public void g() {
        SigmobLog.i("onStatePause  [" + hashCode() + "] ");
        this.f82081w = 5;
        a(this.f82077ab, 0);
        com.sigmob.sdk.nativead.l lVar = this.ak;
        if (lVar != null) {
            lVar.onVideoPause();
        }
        r();
    }

    public ViewGroup getAppContainer() {
        return this.ah;
    }

    public Context getApplicationContext() {
        Context applicationContext;
        Context context = getContext();
        return (context == null || (applicationContext = context.getApplicationContext()) == null) ? context : applicationContext;
    }

    public ImageView getBlurImageView() {
        return this.an;
    }

    public View getBottomLayoutView() {
        return this.au;
    }

    public long getCurrentPositionWhenPlaying() {
        int i10 = this.f82081w;
        if (i10 == 4 || i10 == 5) {
            try {
                return this.D.g();
            } catch (IllegalStateException e10) {
                e10.printStackTrace();
            }
        }
        return 0L;
    }

    public long getDuration() {
        i iVar = this.D;
        if (iVar == null) {
            return 0L;
        }
        try {
            return iVar.j();
        } catch (Throwable th) {
            th.printStackTrace();
            return 0L;
        }
    }

    public int getLayoutId() {
        return ResourceUtil.getLayoutId(getContext(), "sig_video_player_layout");
    }

    public ViewGroup getSigAdView() {
        ViewGroup viewGroup = (ViewGroup) getParent();
        while (!(viewGroup instanceof com.sigmob.sdk.nativead.m) && (viewGroup = (ViewGroup) getParent()) != null) {
        }
        return viewGroup;
    }

    public Bitmap getTextureBitmap() {
        l lVar = this.T;
        if (lVar == null) {
            return null;
        }
        return lVar.getBitmap();
    }

    public ImageView getThumbView() {
        return this.aj;
    }

    public View getTopLayoutView() {
        return this.as;
    }

    public int getVideoHeight() {
        return this.ao;
    }

    @Override // com.sigmob.sdk.videoplayer.h
    public g getVideoPlayerDataSource() {
        return this.f82083y;
    }

    public int getVideoSurferViewHeight() {
        l lVar = this.T;
        if (lVar == null) {
            return 0;
        }
        return lVar.getHeight();
    }

    public int getVideoWidth() {
        return this.ap;
    }

    public void h() {
        SigmobLog.d("onStateError  [" + hashCode() + "] ");
        this.f82081w = 7;
        r();
        a(this.f82082x == 1 ? this.f82077ab : this.f82079ad, 0);
    }

    public void i() {
        SigmobLog.i("onStateAutoComplete  [" + hashCode() + "] ");
        this.f82081w = 6;
        r();
        ProgressBar progressBar = this.ai;
        if (progressBar != null) {
            progressBar.setProgress(100);
        }
    }

    public void j() {
        SigmobLog.d("reset  [" + hashCode() + "] ");
        r();
        s();
        B();
        z();
        A();
        b();
        this.f82076aa.removeAllViews();
        Window windowC = com.sigmob.sdk.videoplayer.c.c(getContext());
        if (windowC != null) {
            windowC.clearFlags(128);
        }
        i iVar = this.D;
        if (iVar != null) {
            iVar.f();
        }
    }

    public void k() {
        SigmobLog.d("startVideo [" + hashCode() + "] ");
        setCurrentVideoAdView(this);
        try {
            F();
            a(this.f82079ad, 4);
            a(this.af, 4);
        } catch (Throwable th) {
            th.printStackTrace();
        }
        Window windowC = com.sigmob.sdk.videoplayer.c.c(getContext());
        if (windowC != null) {
            windowC.setFlags(16777216, 16777216);
            windowC.addFlags(128);
        }
        l();
        c();
    }

    public void l() {
        l lVar = this.T;
        if (lVar != null) {
            this.f82076aa.removeView(lVar);
        }
        l lVar2 = new l(getContext().getApplicationContext());
        this.T = lVar2;
        lVar2.setSurfaceTextureListener(this.D);
        this.f82076aa.addView(this.T, new FrameLayout.LayoutParams(-1, -1, 17));
    }

    public void m() {
        Window windowC = com.sigmob.sdk.videoplayer.c.c(getContext());
        if (windowC != null) {
            ((ViewGroup) windowC.findViewById(R.id.content)).removeView(this);
        }
    }

    public void n() {
        r();
        this.N = new Timer();
        a aVar = new a();
        this.R = aVar;
        this.N.schedule(aVar, 0L, 300L);
        com.sigmob.sdk.videoplayer.c.f(com.sigmob.sdk.b.e());
    }

    @Override // com.sigmob.sdk.videoplayer.h
    public void o() {
        SigmobLog.d("onPrepared  [" + hashCode() + "] ");
        this.f82081w = 3;
        setSoundChange(this.al);
        com.sigmob.sdk.nativead.l lVar = this.ak;
        if (lVar != null) {
            lVar.onVideoLoad();
        }
        if (!this.L) {
            com.sigmob.sdk.nativead.l lVar2 = this.ak;
            if (lVar2 != null) {
                lVar2.onVideoStart();
            }
            SigmobLog.d("mediaInterface start");
            f();
            this.D.a();
            this.L = false;
        } else if (this.ar) {
            this.aj.setImageBitmap(this.T.getBitmap());
        }
        String lowerCase = this.f82083y.a().toString().toLowerCase();
        if (lowerCase.contains("mp3") || lowerCase.contains("wma") || lowerCase.contains("aac") || lowerCase.contains("m4a") || lowerCase.contains("wav")) {
            f();
        }
    }

    @Override // android.view.View.OnClickListener
    public void onClick(View v10) {
        onTouch(v10, null);
    }

    @Override // android.widget.RelativeLayout, android.view.View
    protected void onMeasure(int widthMeasureSpec, int heightMeasureSpec) {
        int i10 = this.f82082x;
        if (i10 == 1 || i10 == 2) {
            super.onMeasure(widthMeasureSpec, heightMeasureSpec);
            return;
        }
        if (this.f82084z == 0 || this.A == 0) {
            super.onMeasure(widthMeasureSpec, heightMeasureSpec);
            return;
        }
        int size = View.MeasureSpec.getSize(widthMeasureSpec);
        int i11 = (int) ((size * this.A) / this.f82084z);
        setMeasuredDimension(size, i11);
        getChildAt(0).measure(View.MeasureSpec.makeMeasureSpec(size, 1073741824), View.MeasureSpec.makeMeasureSpec(i11, 1073741824));
    }

    @Override // android.widget.SeekBar.OnSeekBarChangeListener
    public void onProgressChanged(SeekBar seekBar, int progress, boolean fromUser) {
        if (fromUser) {
            getDuration();
        }
    }

    @Override // android.widget.SeekBar.OnSeekBarChangeListener
    public void onStartTrackingTouch(SeekBar seekBar) {
        r();
        for (ViewParent parent = getParent(); parent != null; parent = parent.getParent()) {
            parent.requestDisallowInterceptTouchEvent(true);
        }
    }

    @Override // android.widget.SeekBar.OnSeekBarChangeListener
    public void onStopTrackingTouch(SeekBar seekBar) {
        SigmobLog.d("bottomProgress onStopTrackingTouch [" + hashCode() + "] ");
        n();
        for (ViewParent parent = getParent(); parent != null; parent = parent.getParent()) {
            parent.requestDisallowInterceptTouchEvent(false);
        }
        int i10 = this.f82081w;
        if (i10 == 4 || i10 == 5) {
            long progress = (((long) seekBar.getProgress()) * getDuration()) / 100;
            this.G = seekBar.getProgress();
            this.D.a(progress);
            SigmobLog.d("seekTo " + progress + " [" + hashCode() + "] ");
        }
    }

    @Override // android.view.View.OnTouchListener
    public boolean onTouch(View v10, MotionEvent event) {
        if (event != null && event.getAction() != 1) {
            return false;
        }
        if (v10 == this.f82078ac) {
            int i10 = this.f82082x;
            if (i10 == 0) {
                t();
                return false;
            }
            if (i10 != 1) {
                return false;
            }
            u();
            return false;
        }
        if (v10 == this.ae) {
            setSoundChange(!this.al);
            return false;
        }
        if (v10 == this.f82079ad || v10 == this.af) {
            com.sigmob.sdk.nativead.l lVar = this.ak;
            if (lVar != null) {
                lVar.a();
            }
            k();
            return false;
        }
        if (v10 != this.f82077ab) {
            return false;
        }
        int i11 = this.f82081w;
        if (i11 != 0) {
            if (i11 == 4) {
                SigmobLog.d("pauseVideo [" + hashCode() + "] ");
                this.D.d();
                g();
            } else if (i11 == 5) {
                com.sigmob.sdk.nativead.l lVar2 = this.ak;
                if (lVar2 != null) {
                    lVar2.onVideoResume();
                }
                this.D.a();
                f();
            } else if (i11 != 6) {
                if (i11 == 3) {
                    this.D.a();
                    f();
                    com.sigmob.sdk.nativead.l lVar3 = this.ak;
                    if (lVar3 != null) {
                        lVar3.onVideoStart();
                    }
                }
            }
            return true;
        }
        if (!f82074t && !this.f82083y.a().toString().startsWith("file") && !this.f82083y.a().toString().startsWith(net.lingala.zip4j.util.e.F0) && !com.sigmob.sdk.videoplayer.c.a(getContext())) {
            y();
            return true;
        }
        k();
        return true;
    }

    @Override // com.sigmob.sdk.videoplayer.h
    public void p() {
        Runtime.getRuntime().gc();
        com.sigmob.sdk.nativead.l lVar = this.ak;
        if (lVar != null) {
            lVar.onVideoCompleted();
        }
        SigmobLog.d("onAutoCompletion  [" + hashCode() + "] ");
        r();
        B();
        z();
        A();
        i();
        Window windowC = com.sigmob.sdk.videoplayer.c.c(getContext());
        if (windowC != null) {
            windowC.clearFlags(128);
        }
        s();
        this.f82080v = null;
    }

    @Override // com.sigmob.sdk.videoplayer.h
    public void q() {
    }

    public void r() {
        Timer timer = this.N;
        if (timer != null) {
            timer.cancel();
            this.N = null;
        }
        a aVar = this.R;
        if (aVar != null) {
            aVar.cancel();
            this.R = null;
        }
        com.sigmob.sdk.videoplayer.c.g(com.sigmob.sdk.b.e());
    }

    public void s() {
        ProgressBar progressBar = this.ai;
        if (progressBar == null) {
            return;
        }
        progressBar.setProgress(0);
    }

    public void setBackClickListener(View.OnClickListener onClickListener) {
        ViewGroup viewGroup = this.ag;
        if (viewGroup == null) {
            return;
        }
        viewGroup.setOnClickListener(onClickListener);
    }

    @Override // com.sigmob.sdk.videoplayer.h
    public void setBufferProgress(int bufferProgress) {
    }

    public void setCurrentVideoAdView(f videoAdView) {
        this.f82080v = videoAdView;
    }

    public void setHolderImageResource(int resId) {
    }

    public void setMediaInterface(Class mediaInterfaceClass) {
        j();
        this.B = mediaInterfaceClass;
    }

    @Override // android.view.View
    public void setRotation(float rotation) {
        this.T.setRotation(rotation);
    }

    public void setScreen(int screen) {
        if (screen == 0) {
            v();
        } else if (screen == 1) {
            w();
        } else {
            if (screen != 2) {
                return;
            }
            x();
        }
    }

    public void setSoundChange(boolean isMute) {
        ImageView imageView;
        Context context;
        String str;
        Context contextE = com.sigmob.sdk.b.e();
        this.al = isMute;
        if (isMute) {
            com.sigmob.sdk.videoplayer.c.g(contextE);
            i iVar = this.D;
            if (iVar != null) {
                iVar.a(0.0f);
            }
            imageView = this.K;
            context = getContext();
            str = "sig_image_video_mute";
        } else {
            com.sigmob.sdk.videoplayer.c.f(contextE);
            i iVar2 = this.D;
            if (iVar2 != null) {
                iVar2.a(1.0f);
            }
            imageView = this.K;
            context = getContext();
            str = "sig_image_video_unmute";
        }
        imageView.setImageResource(ResourceUtil.getDrawableId(context, str));
    }

    public void setState(int state) {
        a(state, 0, 0);
    }

    @Override // com.sigmob.sdk.videoplayer.h
    public void setSurfaceTexture(SurfaceTexture saved_surface) {
        l lVar = this.T;
        if (lVar == null) {
            return;
        }
        lVar.setSurfaceTexture(saved_surface);
    }

    public void setTextureViewRotation(int rotation) {
        l lVar;
        f fVar = this.f82080v;
        if (fVar == null || (lVar = fVar.T) == null) {
            return;
        }
        lVar.setRotation(rotation);
    }

    public void setUp(String url) {
        a(new g(url, (String) null), 0);
    }

    public void setVideoAdStatusListener(com.sigmob.sdk.nativead.l adVideoStatusListener) {
        this.ak = adVideoStatusListener;
    }

    public void setVideoAdViewListener(com.sigmob.sdk.videoplayer.b videoAdViewListener) {
        this.am = videoAdViewListener;
    }

    public void setVideoImageDisplayType(int type) {
        l lVar;
        f82075u = type;
        f fVar = this.f82080v;
        if (fVar == null || (lVar = fVar.T) == null) {
            return;
        }
        lVar.requestLayout();
    }

    public void t() {
        com.sigmob.sdk.videoplayer.b bVar = this.am;
        if (bVar != null) {
            bVar.g();
        }
        w();
        this.J.setImageResource(ResourceUtil.getDrawableId(getContext(), "sig_image_video_small"));
    }

    public void u() {
        this.M = System.currentTimeMillis();
        com.sigmob.sdk.videoplayer.b bVar = this.am;
        if (bVar != null) {
            bVar.f();
        }
        v();
        this.J.setImageResource(ResourceUtil.getDrawableId(getContext(), "sig_image_video_fullscreen"));
    }

    public void v() {
        this.f82082x = 0;
    }

    public void w() {
        this.f82082x = 1;
    }

    public void x() {
        this.f82082x = 2;
    }

    public void y() {
    }

    public void z() {
    }

    public f(Context context, AttributeSet attrs) {
        super(context, attrs);
        this.f82081w = -1;
        this.f82082x = -1;
        this.f82084z = 0;
        this.A = 0;
        this.C = true;
        this.E = -1;
        this.F = 0;
        this.G = -1;
        this.H = 0L;
        this.L = false;
        this.M = 0L;
        this.U = new AudioManager.OnAudioFocusChangeListener() { // from class: com.sigmob.sdk.videoplayer.f.1
            @Override // android.media.AudioManager.OnAudioFocusChangeListener
            public void onAudioFocusChange(int focusChange) {
                StringBuilder sb2;
                String str;
                if (focusChange == -2) {
                    sb2 = new StringBuilder();
                    str = "AUDIOFOCUS_LOSS_TRANSIENT [";
                } else {
                    if (focusChange != -1) {
                        return;
                    }
                    f.this.E();
                    sb2 = new StringBuilder();
                    str = "AUDIOFOCUS_LOSS [";
                }
                sb2.append(str);
                sb2.append(hashCode());
                sb2.append("]");
                SigmobLog.i(sb2.toString());
            }
        };
        this.al = true;
        this.ar = false;
        a(context);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void b(int i10) {
        ImageView imageView;
        int drawableId;
        if (i10 == 0 || this.al) {
            imageView = this.K;
            drawableId = ResourceUtil.getDrawableId(getContext(), "sig_image_video_mute");
        } else {
            imageView = this.K;
            drawableId = ResourceUtil.getDrawableId(getContext(), "sig_image_video_unmute");
        }
        imageView.setImageResource(drawableId);
    }

    public void a() {
        E();
        r();
        if (this.aq == null) {
            return;
        }
        getContext().unregisterReceiver(this.aq);
        this.aq = null;
    }

    @Override // com.sigmob.sdk.videoplayer.h
    public void c(int width, int height) {
        this.ao = height;
        this.ap = width;
        l lVar = this.T;
        if (lVar == null) {
            return;
        }
        int i10 = this.F;
        if (i10 != 0) {
            lVar.setRotation(i10);
        }
        this.T.a(width, height);
    }

    public void a(float x10) {
        int i10;
        if (this.f82080v != null) {
            int i11 = this.f82081w;
            if ((i11 != 4 && i11 != 5) || (i10 = this.f82082x) == 1 || i10 == 2) {
                return;
            }
            t();
        }
    }

    @Override // com.sigmob.sdk.videoplayer.h
    public void b(int what, int extra) {
        String str;
        SigmobLog.d("onInfo what - " + what + " extra - " + extra);
        if (what == 3) {
            int i10 = this.f82081w;
            if (i10 == 3 || i10 == 2) {
                f();
                return;
            }
            return;
        }
        if (what == 701) {
            if (this.f82081w == 4) {
                this.at = true;
                this.D.d();
                g();
            }
            str = "MEDIA_INFO_BUFFERING_START";
        } else {
            if (what != 702) {
                return;
            }
            if (this.at) {
                this.at = false;
                this.D.a();
                f();
            }
            str = "MEDIA_INFO_BUFFERING_END";
        }
        SigmobLog.d(str);
    }

    public void a(float deltaY, int volumePercent) {
    }

    public void b(boolean enable) {
        this.ar = enable;
    }

    public void a(float deltaX, String seekTime, long seekTimePosition, String totalTime, long totalTimeDuration) {
    }

    public void a(int brightnessPercent) {
    }

    @Override // com.sigmob.sdk.videoplayer.h
    public void a(int what, int extra) {
        SigmobLog.e("onError: what = " + what + ", extra = " + extra);
        if (this.ak != null) {
            WindAdError windAdError = WindAdError.ERROR_SIGMOB_PLAY_VIDEO;
            windAdError.setMessage("what = " + what + ", extra = " + extra);
            this.ak.onVideoError(windAdError);
        }
        if (what == 38 || extra == -38 || what == -38 || extra == 38 || extra == -19) {
            return;
        }
        h();
        this.D.f();
    }

    public void a(int state, int urlMapIndex, int seekToInAdvance) {
        if (state == 0) {
            b();
            return;
        }
        if (state == 1) {
            c();
            return;
        }
        if (state == 2) {
            a(urlMapIndex, seekToInAdvance);
            return;
        }
        if (state == 4) {
            f();
            return;
        }
        if (state == 5) {
            g();
        } else if (state == 6) {
            i();
        } else {
            if (state != 7) {
                return;
            }
            h();
        }
    }

    public void a(int urlMapIndex, long seekToInAdvance) {
        this.f82081w = 2;
        this.H = seekToInAdvance;
        this.f82083y.f82091b = urlMapIndex;
        this.D.a((Surface) null);
        this.D.f();
        this.D.c();
    }

    public void a(int progress, long position, long duration) {
        ProgressBar progressBar;
        if (!this.S) {
            int i10 = this.G;
            if (i10 != -1) {
                if (i10 > progress) {
                    return;
                } else {
                    this.G = -1;
                }
            } else if (progress != 0 && (progressBar = this.ai) != null) {
                progressBar.setProgress(progress);
            }
        }
        com.sigmob.sdk.nativead.l lVar = this.ak;
        if (lVar != null) {
            lVar.a(position, duration);
        }
    }

    public void a(Context context) {
        View.inflate(context, getLayoutId(), this);
        this.ae = (ViewGroup) findViewById(ResourceUtil.getId(getContext(), "sig_native_video_sound_rl"));
        this.f82077ab = (ViewGroup) findViewById(ResourceUtil.getId(getContext(), "sig_native_video_start_rl"));
        this.f82078ac = (ViewGroup) findViewById(ResourceUtil.getId(getContext(), "sig_native_video_fullscreen_rl"));
        this.f82079ad = (ViewGroup) findViewById(ResourceUtil.getId(getContext(), "sig_native_video_replay_rl"));
        this.K = (ImageView) findViewById(ResourceUtil.getId(getContext(), "sig_native_video_sound_btn"));
        this.I = (ImageView) findViewById(ResourceUtil.getId(getContext(), "sig_native_video_start_btn"));
        this.J = (ImageView) findViewById(ResourceUtil.getId(getContext(), "sig_native_video_fullscreen_btn"));
        this.f82076aa = (ViewGroup) findViewById(ResourceUtil.getId(getContext(), "sig_native_video_surface_container"));
        this.ah = (ViewGroup) findViewById(ResourceUtil.getId(getContext(), "sig_native_video_app_container"));
        this.ai = (ProgressBar) findViewById(ResourceUtil.getId(getContext(), "sig_native_video_bottom_progress"));
        this.af = (ViewGroup) findViewById(ResourceUtil.getId(getContext(), "sig_native_video_big_replay"));
        this.aj = (ImageView) findViewById(ResourceUtil.getId(getContext(), "sig_native_video_thumb"));
        this.an = (ImageView) findViewById(ResourceUtil.getId(getContext(), "sig_native_video_blurImageView"));
        this.ag = (ViewGroup) findViewById(ResourceUtil.getId(getContext(), "sig_native_video_back_rl"));
        this.as = findViewById(ResourceUtil.getId(getContext(), "sig_native_video_layout_top"));
        this.au = findViewById(ResourceUtil.getId(getContext(), "sig_native_video_layout_bottom"));
        this.f82079ad.setOnClickListener(this);
        this.ae.setOnClickListener(this);
        this.f82077ab.setOnClickListener(this);
        this.f82078ac.setOnClickListener(this);
        this.af.setOnClickListener(this);
        this.O = getContext().getResources().getDisplayMetrics().widthPixels;
        this.P = getContext().getResources().getDisplayMetrics().heightPixels;
        this.aq = new c(new b() { // from class: com.sigmob.sdk.videoplayer.n
            @Override // com.sigmob.sdk.videoplayer.f.b
            public final void onVolumeChanged(int i10) {
                this.f82106a.b(i10);
            }
        });
        IntentFilter intentFilter = new IntentFilter();
        intentFilter.addAction("android.media.VOLUME_CHANGED_ACTION");
        com.sigmob.sdk.base.utils.g.a(context, this.aq, intentFilter);
        this.f82081w = -1;
    }

    private void a(View view, int visibility) {
        if (view == null) {
            return;
        }
        view.setVisibility(visibility);
    }

    public void a(ViewGroup vg) {
        try {
            f fVar = (f) getClass().getConstructor(Context.class).newInstance(getContext());
            fVar.setId(getId());
            vg.addView(fVar);
            fVar.a(this.f82083y.c(), 0, this.B);
        } catch (IllegalAccessException | InstantiationException | NoSuchMethodException | InvocationTargetException e10) {
            e10.printStackTrace();
        }
    }

    public void a(e button, boolean isShow) {
        ViewGroup viewGroup;
        int i10 = 0;
        switch (AnonymousClass2.f82086a[button.ordinal()]) {
            case 1:
                viewGroup = this.f82077ab;
                if (!isShow) {
                }
                a(viewGroup, i10);
            case 2:
                viewGroup = this.f82079ad;
                if (!isShow) {
                }
                a(viewGroup, i10);
            case 3:
                viewGroup = this.ae;
                if (!isShow) {
                }
                a(viewGroup, i10);
            case 4:
                viewGroup = this.f82078ac;
                if (!isShow) {
                }
                a(viewGroup, i10);
            case 5:
                viewGroup = this.af;
                if (!isShow) {
                }
                a(viewGroup, i10);
            case 6:
                viewGroup = this.ag;
                if (!isShow) {
                }
                a(viewGroup, i10);
            default:
                return;
        }
        i10 = 4;
        a(viewGroup, i10);
    }

    public void a(g videoPlayerDataSource, int screen) {
        a(videoPlayerDataSource, screen, (Class) null);
    }

    public void a(g videoPlayerDataSource, int screen, Class mediaInterfaceClass) {
        if (System.currentTimeMillis() - this.M < 200) {
            return;
        }
        this.f82083y = videoPlayerDataSource;
        this.f82082x = screen;
        b();
        this.B = mediaInterfaceClass;
    }

    public void a(g videoPlayerDataSource, long seekToInAdvance) {
        this.f82081w = 2;
        this.H = seekToInAdvance;
        this.f82083y = videoPlayerDataSource;
        this.D.a((Surface) null);
        this.D.f();
        this.D.c();
    }

    public void a(String url, String title) {
        a(new g(url, title), 0);
    }

    public void a(String url, String title, int screen) {
        a(new g(url, title), screen);
    }

    public void a(String url, String title, int screen, Class mediaInterfaceClass) {
        a(new g(url, title), screen, mediaInterfaceClass);
    }

    public void a(String url, String title, long seekToInAdvance) {
        a(new g(url, title), seekToInAdvance);
    }

    public void a(boolean show) {
        a(this.f82078ac, show ? 0 : 4);
    }
}
