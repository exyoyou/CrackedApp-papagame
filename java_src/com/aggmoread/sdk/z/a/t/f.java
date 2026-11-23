package com.aggmoread.sdk.z.a.t;

import android.app.Activity;
import android.content.Context;
import android.media.AudioManager;
import android.media.MediaPlayer;
import android.net.Uri;
import android.os.Build;
import android.util.AttributeSet;
import android.view.KeyEvent;
import android.view.MotionEvent;
import android.view.SurfaceHolder;
import android.view.SurfaceView;
import android.view.View;
import android.view.ViewGroup;
import android.view.accessibility.AccessibilityEvent;
import android.view.accessibility.AccessibilityNodeInfo;
import java.io.IOException;
import java.util.Map;
import java.util.concurrent.atomic.AtomicBoolean;

/* JADX INFO: loaded from: classes7.dex */
public class f extends SurfaceView implements com.aggmoread.sdk.z.a.t.a.f, com.aggmoread.sdk.z.a.t.h.c {
    private boolean A;
    private boolean B;
    private int C;
    private int D;
    private i E;
    private com.aggmoread.sdk.z.a.t.h F;
    private j G;
    private float H;
    MediaPlayer.OnVideoSizeChangedListener I;
    MediaPlayer.OnPreparedListener J;
    private MediaPlayer.OnCompletionListener K;
    private MediaPlayer.OnInfoListener L;
    private MediaPlayer.OnErrorListener M;
    private MediaPlayer.OnBufferingUpdateListener N;
    SurfaceHolder.Callback O;

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private String f4016a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private Uri f4017b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    private int f4018c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    private int f4019d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    private SurfaceHolder f4020e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    private MediaPlayer f4021f;

    /* JADX INFO: renamed from: g, reason: collision with root package name */
    private int f4022g;

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    private int f4023h;

    /* JADX INFO: renamed from: i, reason: collision with root package name */
    private int f4024i;

    /* JADX INFO: renamed from: j, reason: collision with root package name */
    private int f4025j;

    /* JADX INFO: renamed from: k, reason: collision with root package name */
    private int f4026k;

    /* JADX INFO: renamed from: l, reason: collision with root package name */
    private com.aggmoread.sdk.z.a.t.a f4027l;

    /* JADX INFO: renamed from: m, reason: collision with root package name */
    private MediaPlayer.OnCompletionListener f4028m;

    /* JADX INFO: renamed from: n, reason: collision with root package name */
    private MediaPlayer.OnPreparedListener f4029n;

    /* JADX INFO: renamed from: o, reason: collision with root package name */
    private int f4030o;

    /* JADX INFO: renamed from: p, reason: collision with root package name */
    private MediaPlayer.OnErrorListener f4031p;

    /* JADX INFO: renamed from: q, reason: collision with root package name */
    private MediaPlayer.OnInfoListener f4032q;

    /* JADX INFO: renamed from: r, reason: collision with root package name */
    private int f4033r;

    /* JADX INFO: renamed from: s, reason: collision with root package name */
    private int f4034s;

    /* JADX INFO: renamed from: t, reason: collision with root package name */
    private AtomicBoolean f4035t;

    /* JADX INFO: renamed from: u, reason: collision with root package name */
    private AtomicBoolean f4036u;

    /* JADX INFO: renamed from: v, reason: collision with root package name */
    private boolean f4037v;

    /* JADX INFO: renamed from: w, reason: collision with root package name */
    private boolean f4038w;

    /* JADX INFO: renamed from: x, reason: collision with root package name */
    private boolean f4039x;

    /* JADX INFO: renamed from: y, reason: collision with root package name */
    private boolean f4040y;

    /* JADX INFO: renamed from: z, reason: collision with root package name */
    private Context f4041z;

    class a implements MediaPlayer.OnVideoSizeChangedListener {
        a() {
        }

        @Override // android.media.MediaPlayer.OnVideoSizeChangedListener
        public void onVideoSizeChanged(MediaPlayer mediaPlayer, int i10, int i11) {
            f.this.f4023h = mediaPlayer.getVideoWidth();
            f.this.f4024i = mediaPlayer.getVideoHeight();
            String unused = f.this.f4016a;
            String.format("onVideoSizeChanged width=%d,height=%d", Integer.valueOf(f.this.f4023h), Integer.valueOf(f.this.f4024i));
            if (f.this.f4023h == 0 || f.this.f4024i == 0) {
                return;
            }
            f.this.i();
            f.this.requestLayout();
        }
    }

    class b implements MediaPlayer.OnPreparedListener {
        b() {
        }

        @Override // android.media.MediaPlayer.OnPreparedListener
        public void onPrepared(MediaPlayer mediaPlayer) {
            String unused = f.this.f4016a;
            f.this.f4018c = 2;
            f fVar = f.this;
            fVar.f4037v = fVar.f4038w = fVar.f4039x = true;
            f.this.f4040y = true;
            if (f.this.f4027l != null) {
                f.this.f4027l.j();
            }
            if (f.this.f4035t.compareAndSet(true, false) && f.this.f4029n != null) {
                f.this.f4029n.onPrepared(f.this.f4021f);
            }
            if (f.this.f4027l != null) {
                f.this.f4027l.setEnabled(true);
            }
            f.this.f4023h = mediaPlayer.getVideoWidth();
            f.this.f4024i = mediaPlayer.getVideoHeight();
            int i10 = f.this.f4033r;
            if (i10 != 0) {
                f.this.a(i10);
            }
            if (f.this.f4023h == 0 || f.this.f4024i == 0) {
                if (f.this.f4019d == 3) {
                    f.this.d();
                    return;
                }
                return;
            }
            f.this.i();
            if (f.this.l()) {
                if (f.this.f4019d == 3) {
                    f.this.d();
                    if (f.this.f4027l != null) {
                        f.this.f4027l.o();
                        return;
                    }
                    return;
                }
                if (f.this.a()) {
                    return;
                }
                if ((i10 != 0 || f.this.f() > 0) && f.this.f4027l != null) {
                    f.this.f4027l.b(0);
                }
            }
        }
    }

    class c implements MediaPlayer.OnCompletionListener {
        c() {
        }

        @Override // android.media.MediaPlayer.OnCompletionListener
        public void onCompletion(MediaPlayer mediaPlayer) {
            f.this.f4018c = 5;
            f.this.f4019d = 5;
            if (f.this.f4027l != null) {
                boolean zIsPlaying = f.this.f4021f.isPlaying();
                int i10 = f.this.f4018c;
                f.this.f4027l.q();
                String unused = f.this.f4016a;
                String.format("a=%s,b=%d", Boolean.valueOf(zIsPlaying), Integer.valueOf(i10));
            }
            if (f.this.f4028m != null) {
                f.this.f4028m.onCompletion(f.this.f4021f);
            }
        }
    }

    class d implements MediaPlayer.OnInfoListener {
        d() {
        }

        /* JADX WARN: Code duplicated, block: B:22:0x0070  */
        /* JADX WARN: Code duplicated, block: B:28:0x0081 A[RETURN] */
        @Override // android.media.MediaPlayer.OnInfoListener
        public boolean onInfo(MediaPlayer mediaPlayer, int i10, int i11) {
            boolean z10;
            if (i10 != 701) {
                if (i10 != 702) {
                    z10 = false;
                } else {
                    String unused = f.this.f4016a;
                    if (f.this.G != null) {
                        f.this.G.b(f.this.f4021f);
                    }
                    if (f.this.f4027l != null) {
                        f.this.f4027l.j();
                    }
                }
                if (f.this.f4032q == null) {
                    return f.this.f4032q.onInfo(mediaPlayer, i10, i11) || z10;
                }
                return z10;
            }
            String unused2 = f.this.f4016a;
            if (f.this.G != null) {
                f.this.G.c(f.this.f4021f);
            }
            if (f.this.f4027l != null) {
                f.this.f4027l.s();
            }
            z10 = true;
            if (f.this.f4032q == null) {
                return z10;
            }
            if (f.this.f4032q.onInfo(mediaPlayer, i10, i11)) {
                return true;
            }
        }
    }

    class e implements MediaPlayer.OnErrorListener {
        e() {
        }

        @Override // android.media.MediaPlayer.OnErrorListener
        public boolean onError(MediaPlayer mediaPlayer, int i10, int i11) {
            String unused = f.this.f4016a;
            StringBuilder sb2 = new StringBuilder();
            sb2.append("Error: ");
            sb2.append(i10);
            sb2.append(",");
            sb2.append(i11);
            f.this.f4018c = -1;
            f.this.f4019d = -1;
            if (f.this.f4027l != null) {
                f.this.f4027l.r();
            }
            if (f.this.f4031p != null) {
                f.this.f4031p.onError(f.this.f4021f, i10, i11);
            }
            return true;
        }
    }

    /* JADX INFO: renamed from: com.aggmoread.sdk.z.a.t.f$f, reason: collision with other inner class name */
    class C0102f implements MediaPlayer.OnBufferingUpdateListener {
        C0102f() {
        }

        @Override // android.media.MediaPlayer.OnBufferingUpdateListener
        public void onBufferingUpdate(MediaPlayer mediaPlayer, int i10) {
            if (f.this.G != null && i10 == 100) {
                f.this.G.g(mediaPlayer);
            }
            f.this.f4030o = i10;
        }
    }

    class g implements SurfaceHolder.Callback {
        g() {
        }

        @Override // android.view.SurfaceHolder.Callback
        public void surfaceChanged(SurfaceHolder surfaceHolder, int i10, int i11, int i12) {
            com.aggmoread.sdk.z.a.d.d(f.this.f4016a, "surfaceChanged w " + i11 + ", h " + i12 + ", mVideoWidth " + f.this.f4023h + ", mVideoHeight " + f.this.f4024i);
            f.this.f4025j = i11;
            f.this.f4026k = i12;
            boolean z10 = f.this.f4019d == 3;
            boolean zL = f.this.l();
            if (f.this.f4021f != null && z10 && zL) {
                if (f.this.f4033r != 0) {
                    f fVar = f.this;
                    fVar.a(fVar.f4033r);
                }
                f.this.d();
            }
        }

        @Override // android.view.SurfaceHolder.Callback
        public void surfaceCreated(SurfaceHolder surfaceHolder) {
            com.aggmoread.sdk.z.a.d.d(f.this.f4016a, "surfaceCreated mSeekWhenDestroyed " + f.this.f4034s);
            f.this.f4020e = surfaceHolder;
            if (f.this.f4018c != 4 || f.this.f4021f == null) {
                f.this.o();
            } else {
                f.this.f4021f.setDisplay(f.this.f4020e);
            }
            f.this.k();
            if (f.this.f4034s > 0) {
                f fVar = f.this;
                fVar.a(fVar.f4034s);
                f.this.f4034s = 0;
            }
        }

        @Override // android.view.SurfaceHolder.Callback
        public void surfaceDestroyed(SurfaceHolder surfaceHolder) {
            com.aggmoread.sdk.z.a.d.d(f.this.f4016a, "surfaceDestroyed");
            f.this.f4020e = null;
            if (f.this.G != null && f.this.f4018c != 4) {
                f.this.G.f(f.this.f4021f);
            }
            f fVar = f.this;
            fVar.f4034s = fVar.f();
            if (f.this.f4027l != null) {
                f.this.f4027l.f();
            }
            if (f.this.f4018c != 4) {
                f.this.c(true);
            }
            f.this.j();
        }
    }

    static /* synthetic */ class h {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        static final /* synthetic */ int[] f4049a;

        static {
            int[] iArr = new int[i.values().length];
            f4049a = iArr;
            try {
                iArr[i.TYPE.ordinal()] = 1;
            } catch (NoSuchFieldError unused) {
            }
            try {
                f4049a[i.TYPE_SCALE.ordinal()] = 2;
            } catch (NoSuchFieldError unused2) {
            }
            try {
                f4049a[i.TYPE_CENTER_INSIDE.ordinal()] = 3;
            } catch (NoSuchFieldError unused3) {
            }
            try {
                f4049a[i.TYPE9_16.ordinal()] = 4;
            } catch (NoSuchFieldError unused4) {
            }
            try {
                f4049a[i.TYPE3_4.ordinal()] = 5;
            } catch (NoSuchFieldError unused5) {
            }
            try {
                f4049a[i.TYPE5.ordinal()] = 6;
            } catch (NoSuchFieldError unused6) {
            }
            try {
                f4049a[i.TYPE_CLIP_VIDEO.ordinal()] = 7;
            } catch (NoSuchFieldError unused7) {
            }
        }
    }

    public enum i {
        TYPE,
        TYPE_SCALE,
        TYPE_CENTER_INSIDE,
        TYPE9_16,
        TYPE3_4,
        TYPE5,
        TYPE_CLIP_VIDEO
    }

    public interface j {
        void a(MediaPlayer mediaPlayer);

        void a(boolean z10);

        void b(MediaPlayer mediaPlayer);

        void c(MediaPlayer mediaPlayer);

        void d(MediaPlayer mediaPlayer);

        void e(MediaPlayer mediaPlayer);

        void f(MediaPlayer mediaPlayer);

        void g(MediaPlayer mediaPlayer);
    }

    public f(Context context) {
        this(context, null);
    }

    private void r() {
        com.aggmoread.sdk.z.a.t.a aVar = this.f4027l;
        if (aVar == null || aVar.c() == com.aggmoread.sdk.z.a.t.a.i.f3975d) {
            if (this.f4027l.l()) {
                this.f4027l.f();
            } else {
                this.f4027l.o();
            }
        }
    }

    @Override // com.aggmoread.sdk.z.a.t.a.f
    public int e() {
        if (n()) {
            return this.f4021f.getDuration();
        }
        return -1;
    }

    @Override // com.aggmoread.sdk.z.a.t.a.f
    public int f() {
        if (n()) {
            return this.f4021f.getCurrentPosition();
        }
        return 0;
    }

    @Override // com.aggmoread.sdk.z.a.t.a.f
    public int g() {
        if (this.f4021f != null) {
            return this.f4030o;
        }
        return 0;
    }

    @Override // android.view.View
    public void onInitializeAccessibilityEvent(AccessibilityEvent accessibilityEvent) {
        super.onInitializeAccessibilityEvent(accessibilityEvent);
        accessibilityEvent.setClassName(f.class.getName());
    }

    @Override // android.view.View
    public void onInitializeAccessibilityNodeInfo(AccessibilityNodeInfo accessibilityNodeInfo) {
        super.onInitializeAccessibilityNodeInfo(accessibilityNodeInfo);
        accessibilityNodeInfo.setClassName(f.class.getName());
    }

    @Override // android.view.View, android.view.KeyEvent.Callback
    public boolean onKeyDown(int i10, KeyEvent keyEvent) {
        boolean z10 = (i10 == 4 || i10 == 24 || i10 == 25 || i10 == 164 || i10 == 82 || i10 == 5 || i10 == 6) ? false : true;
        if (n() && z10 && this.f4027l != null) {
            if (i10 == 79 || i10 == 85) {
                if (this.f4021f.isPlaying()) {
                    b();
                    this.f4027l.o();
                } else {
                    d();
                    this.f4027l.f();
                }
                return true;
            }
            if (i10 == 126) {
                if (!this.f4021f.isPlaying()) {
                    d();
                    this.f4027l.f();
                }
                return true;
            }
            if (i10 == 86 || i10 == 127) {
                if (this.f4021f.isPlaying()) {
                    b();
                    this.f4027l.o();
                }
                return true;
            }
            r();
        }
        return super.onKeyDown(i10, keyEvent);
    }

    @Override // android.view.SurfaceView, android.view.View
    protected void onMeasure(int i10, int i11) {
        super.onMeasure(i10, i11);
        if (this.A) {
            a(i10, i11, i.TYPE_CLIP_VIDEO);
        } else {
            a(i10, i11);
        }
    }

    @Override // android.view.View
    public boolean onTouchEvent(MotionEvent motionEvent) {
        if (!n() || this.f4027l == null) {
            return false;
        }
        r();
        return false;
    }

    @Override // android.view.View
    public boolean onTrackballEvent(MotionEvent motionEvent) {
        if (!n() || this.f4027l == null) {
            return false;
        }
        r();
        return false;
    }

    public void p() {
        if (n()) {
            com.aggmoread.sdk.z.a.t.a aVar = this.f4027l;
            if (aVar != null) {
                aVar.g();
            }
            this.f4019d = 3;
        }
    }

    public void q() {
        MediaPlayer mediaPlayer = this.f4021f;
        if (mediaPlayer != null) {
            mediaPlayer.stop();
            this.f4021f.release();
            this.f4021f = null;
            this.f4018c = 0;
            this.f4019d = 0;
        }
        com.aggmoread.sdk.z.a.t.a aVar = this.f4027l;
        if (aVar != null) {
            aVar.p();
        }
        this.f4036u.set(true);
    }

    public f(Context context, AttributeSet attributeSet) {
        this(context, attributeSet, 0);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void i() {
        if (!this.A || this.E == null) {
            int i10 = this.f4023h;
            int i11 = this.f4024i;
            StringBuilder sb2 = new StringBuilder();
            sb2.append("videoWidth = ");
            sb2.append(i10);
            sb2.append(", videoHeight = ");
            sb2.append(i11);
            getHolder().setFixedSize(i10, i11);
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void j() {
        com.aggmoread.sdk.z.a.t.h hVar = this.F;
        if (hVar != null) {
            hVar.b();
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void k() {
        if (this.B && this.F == null) {
            com.aggmoread.sdk.z.a.t.h hVar = new com.aggmoread.sdk.z.a.t.h(this.f4041z);
            this.F = hVar;
            hVar.a(this);
            this.F.c();
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public boolean l() {
        return this.f4023h > 0 && this.f4024i > 0 && this.f4025j > 0 && this.f4026k > 0;
    }

    private void m() {
        this.f4023h = 0;
        this.f4024i = 0;
        getHolder().addCallback(this.O);
        setFocusable(true);
        setFocusableInTouchMode(true);
        requestFocus();
        this.f4018c = 0;
        this.f4019d = 0;
    }

    private boolean n() {
        int i10;
        return (this.f4021f == null || (i10 = this.f4018c) == -1 || i10 == 0 || i10 == 1) ? false : true;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void o() {
        j jVar;
        if (this.f4017b == null || this.f4020e == null) {
            return;
        }
        ((AudioManager) this.f4041z.getSystemService("audio")).requestAudioFocus(null, 3, 1);
        c(false);
        try {
            MediaPlayer mediaPlayer = new MediaPlayer();
            this.f4021f = mediaPlayer;
            int i10 = this.f4022g;
            if (i10 != 0) {
                mediaPlayer.setAudioSessionId(i10);
            } else {
                this.f4022g = mediaPlayer.getAudioSessionId();
            }
            this.f4021f.setOnPreparedListener(this.J);
            this.f4021f.setOnVideoSizeChangedListener(this.I);
            this.f4021f.setOnCompletionListener(this.K);
            this.f4021f.setOnErrorListener(this.M);
            this.f4021f.setOnInfoListener(this.L);
            this.f4021f.setOnBufferingUpdateListener(this.N);
            this.f4030o = 0;
            MediaPlayer mediaPlayer2 = this.f4021f;
            float f10 = this.H;
            mediaPlayer2.setVolume(f10, f10);
            this.f4021f.setDataSource(this.f4041z, this.f4017b);
            this.f4021f.setDisplay(this.f4020e);
            this.f4021f.setAudioStreamType(3);
            this.f4021f.setScreenOnWhilePlaying(true);
            this.f4021f.prepareAsync();
            if (this.f4035t.get() && (jVar = this.G) != null) {
                jVar.d(this.f4021f);
            }
            this.f4018c = 1;
            h();
        } catch (IOException unused) {
            StringBuilder sb2 = new StringBuilder();
            sb2.append("Unable to open content: ");
            sb2.append(this.f4017b);
            this.f4018c = -1;
            this.f4019d = -1;
            this.M.onError(this.f4021f, 1, 0);
        }
    }

    public f(Context context, AttributeSet attributeSet, int i10) {
        super(context, attributeSet, i10);
        this.f4016a = "ApiVideoViewTAG";
        this.f4018c = 0;
        this.f4019d = 0;
        this.f4020e = null;
        this.f4021f = null;
        this.f4035t = new AtomicBoolean();
        this.f4036u = new AtomicBoolean();
        this.A = false;
        this.B = false;
        this.C = 0;
        this.D = 0;
        this.E = null;
        this.H = 0.0f;
        this.I = new a();
        this.J = new b();
        this.K = new c();
        this.L = new d();
        this.M = new e();
        this.N = new C0102f();
        this.O = new g();
        this.f4041z = context;
        m();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void c(boolean z10) {
        MediaPlayer mediaPlayer = this.f4021f;
        if (mediaPlayer != null) {
            mediaPlayer.stop();
            this.f4021f.reset();
            this.f4021f.release();
            this.f4021f = null;
            this.f4018c = 0;
            if (z10) {
                this.f4019d = 0;
            }
        }
    }

    private void h() {
        com.aggmoread.sdk.z.a.t.a aVar;
        if (this.f4021f == null || (aVar = this.f4027l) == null) {
            return;
        }
        aVar.a(this);
        this.f4027l.setEnabled(n());
        this.f4027l.f();
    }

    @Override // com.aggmoread.sdk.z.a.t.a.f
    public void b() {
        com.aggmoread.sdk.z.a.d.d(this.f4016a, com.sigmob.sdk.base.common.a.f78876j);
        if (n() && this.f4021f.isPlaying()) {
            com.aggmoread.sdk.z.a.t.a aVar = this.f4027l;
            if (aVar != null) {
                aVar.p();
            }
            this.f4021f.pause();
            this.f4018c = 4;
            j jVar = this.G;
            if (jVar != null) {
                jVar.f(this.f4021f);
            }
        }
        this.f4019d = 4;
    }

    @Override // com.aggmoread.sdk.z.a.t.a.f
    public void d() {
        com.aggmoread.sdk.z.a.t.a aVar;
        if (!n() && this.f4036u.get() && this.f4017b != null) {
            this.f4036u.set(false);
            a(this.f4017b);
        }
        com.aggmoread.sdk.z.a.t.a aVar2 = this.f4027l;
        if (aVar2 != null) {
            aVar2.g();
        }
        if (!this.f4040y && (aVar = this.f4027l) != null) {
            aVar.s();
        }
        if (n()) {
            com.aggmoread.sdk.z.a.t.a aVar3 = this.f4027l;
            if (aVar3 != null && aVar3.c() == com.aggmoread.sdk.z.a.t.a.i.f3974c) {
                this.f4027l.o();
            }
            this.f4021f.start();
            j jVar = this.G;
            if (jVar != null) {
                if (this.f4018c == 4) {
                    jVar.e(this.f4021f);
                } else {
                    jVar.a(this.f4021f);
                }
            }
            this.f4018c = 3;
        }
        this.f4019d = 3;
    }

    public void a(float f10) {
        this.H = f10;
    }

    public void b(boolean z10) {
        MediaPlayer mediaPlayer = this.f4021f;
        if (mediaPlayer != null) {
            float f10 = z10 ? 0.0f : 1.0f;
            mediaPlayer.setVolume(f10, f10);
        }
    }

    @Override // com.aggmoread.sdk.z.a.t.a.f
    public boolean c() {
        return this.f4037v;
    }

    public void d(boolean z10) {
        this.B = z10;
    }

    public void e(boolean z10) {
        this.A = z10;
        invalidate();
    }

    public void a(int i10) {
        if (n()) {
            if (Build.VERSION.SDK_INT >= 26) {
                this.f4021f.seekTo(i10, 3);
            } else {
                this.f4021f.seekTo(i10);
            }
            i10 = 0;
        }
        this.f4033r = i10;
    }

    private void a(int i10, int i11) {
        int i12;
        int defaultSize = View.getDefaultSize(this.f4023h, i10);
        int defaultSize2 = View.getDefaultSize(this.f4024i, i11);
        if (this.f4023h > 0 && this.f4024i > 0) {
            int mode = View.MeasureSpec.getMode(i10);
            int size = View.MeasureSpec.getSize(i10);
            int mode2 = View.MeasureSpec.getMode(i11);
            int size2 = View.MeasureSpec.getSize(i11);
            if (mode == 1073741824 && mode2 == 1073741824) {
                int i13 = this.f4023h;
                int i14 = i13 * size2;
                int i15 = this.f4024i;
                int i16 = size * i15;
                if (i14 < i16) {
                    defaultSize = i14 / i15;
                } else {
                    if (i14 > i16) {
                        defaultSize2 = i16 / i13;
                        defaultSize = size;
                    }
                    defaultSize = size;
                }
                defaultSize2 = size2;
            } else if (mode == 1073741824) {
                int i17 = (this.f4024i * size) / this.f4023h;
                if (mode2 != Integer.MIN_VALUE || i17 <= size2) {
                    defaultSize2 = i17;
                    defaultSize = size;
                }
                defaultSize = size;
                defaultSize2 = size2;
            } else {
                if (mode2 == 1073741824) {
                    i12 = (this.f4023h * size2) / this.f4024i;
                    if (mode == Integer.MIN_VALUE && i12 > size) {
                        defaultSize = size;
                    }
                    defaultSize2 = size2;
                } else {
                    int i18 = this.f4023h;
                    int i19 = this.f4024i;
                    if (mode2 != Integer.MIN_VALUE || i19 <= size2) {
                        i12 = i18;
                        size2 = i19;
                    } else {
                        i12 = (size2 * i18) / i19;
                    }
                    if (mode == Integer.MIN_VALUE && i12 > size) {
                        defaultSize2 = (i19 * size) / i18;
                        defaultSize = size;
                    }
                }
                defaultSize = i12;
                defaultSize2 = size2;
            }
        }
        setMeasuredDimension(defaultSize, defaultSize2);
    }

    /* JADX WARN: Code duplicated, block: B:29:0x0067 A[PHI: r7
      0x0067: PHI (r7v7 int) = (r7v4 int), (r7v8 int) binds: [B:28:0x0065, B:9:0x0035] A[DONT_GENERATE, DONT_INLINE]] */
    /* JADX WARN: Failed to find 'out' block for switch in B:6:0x002d. Please report as an issue. */
    private void a(int i10, int i11, i iVar) {
        int i12;
        int i13;
        int i14;
        int i15 = this.f4023h;
        int i16 = this.f4024i;
        int defaultSize = View.getDefaultSize(i15, i10);
        int defaultSize2 = View.getDefaultSize(i16, i11);
        StringBuilder sb2 = new StringBuilder();
        sb2.append("onMeasureFitXY before width ");
        sb2.append(defaultSize);
        sb2.append(", height = ");
        sb2.append(defaultSize2);
        if (i15 > 0 && i16 > 0) {
            switch (h.f4049a[iVar.ordinal()]) {
                case 1:
                    if (i11 * i15 > i10 * i16 && i15 * defaultSize2 > (i12 = i16 * defaultSize)) {
                        i16 = i12 / i15;
                        i15 = defaultSize;
                    } else {
                        i15 = defaultSize;
                    }
                    break;
                case 2:
                    i13 = i15 * defaultSize2;
                    i14 = i16 * defaultSize;
                    if (i13 <= i14) {
                        if (i13 >= i14) {
                            i15 = defaultSize;
                        } else {
                            i15 = i13 / i16;
                        }
                    }
                    i16 = i14 / i15;
                    i15 = defaultSize;
                    break;
                case 3:
                    break;
                case 4:
                    int i17 = defaultSize * 9;
                    int i18 = defaultSize2 * 16;
                    if (i17 >= i18) {
                        i15 = i17 <= i18 ? defaultSize : i18 / 9;
                    } else {
                        i16 = i17 / 16;
                        i15 = defaultSize;
                    }
                    break;
                case 5:
                    int i19 = defaultSize * 3;
                    int i20 = defaultSize2 * 4;
                    if (i19 >= i20) {
                        i15 = i19 <= i20 ? defaultSize : i20 / 3;
                    } else {
                        i16 = i19 / 4;
                        i15 = defaultSize;
                    }
                    break;
                case 6:
                    i15 = (i15 * defaultSize2) / i16;
                    break;
                case 7:
                    i13 = i15 * defaultSize2;
                    i14 = i16 * defaultSize;
                    if (i13 <= i14) {
                        if (i13 >= i14) {
                            i15 = defaultSize;
                        }
                        i16 = i14 / i15;
                        i15 = defaultSize;
                    } else {
                        i15 = i13 / i16;
                    }
                    break;
                default:
                    i15 = defaultSize;
                    break;
            }
            StringBuilder sb3 = new StringBuilder();
            sb3.append("onMeasureFitXY final  width ");
            sb3.append(i15);
            sb3.append(", height = ");
            sb3.append(i16);
            setMeasuredDimension(i15, i16);
        }
        i15 = defaultSize;
        i16 = defaultSize2;
        StringBuilder sb4 = new StringBuilder();
        sb4.append("onMeasureFitXY final  width ");
        sb4.append(i15);
        sb4.append(", height = ");
        sb4.append(i16);
        setMeasuredDimension(i15, i16);
    }

    @Override // com.aggmoread.sdk.z.a.t.h.c
    public void a(int i10, com.aggmoread.sdk.z.a.t.h.b bVar) {
        if (this.B) {
            if (bVar == com.aggmoread.sdk.z.a.t.h.b.f4073b) {
                a(false, 1);
                return;
            }
            if (bVar == com.aggmoread.sdk.z.a.t.h.b.f4074c) {
                a(false, 7);
            } else if (bVar == com.aggmoread.sdk.z.a.t.h.b.f4075d) {
                a(true, 0);
            } else if (bVar == com.aggmoread.sdk.z.a.t.h.b.f4076e) {
                a(true, 8);
            }
        }
    }

    public void a(MediaPlayer.OnCompletionListener onCompletionListener) {
        this.f4028m = onCompletionListener;
    }

    public void a(MediaPlayer.OnErrorListener onErrorListener) {
        this.f4031p = onErrorListener;
    }

    public void a(MediaPlayer.OnInfoListener onInfoListener) {
        this.f4032q = onInfoListener;
    }

    public void a(MediaPlayer.OnPreparedListener onPreparedListener) {
        this.f4029n = onPreparedListener;
    }

    public void a(Uri uri) {
        a(uri, (Map<String, String>) null);
    }

    public void a(Uri uri, Map<String, String> map) {
        com.aggmoread.sdk.z.a.d.d(this.f4016a, "setVideoURI ");
        this.f4017b = uri;
        this.f4033r = 0;
        this.f4034s = 0;
        this.f4035t.set(true);
        o();
        requestLayout();
        invalidate();
    }

    public void a(com.aggmoread.sdk.z.a.t.a aVar) {
        com.aggmoread.sdk.z.a.t.a aVar2 = this.f4027l;
        if (aVar2 != null) {
            aVar2.f();
        }
        this.f4027l = aVar;
        h();
    }

    public void a(i iVar) {
        this.E = iVar;
    }

    public void a(j jVar) {
        this.G = jVar;
    }

    public void a(String str) {
        a(Uri.parse(str));
    }

    @Override // com.aggmoread.sdk.z.a.t.a.f
    public void a(boolean z10) {
        a(z10, !z10 ? 1 : 0);
    }

    public void a(boolean z10, int i10) {
        Activity activity = (Activity) this.f4041z;
        if (z10) {
            if (this.C == 0 && this.D == 0) {
                ViewGroup.LayoutParams layoutParams = getLayoutParams();
                this.C = layoutParams.width;
                this.D = layoutParams.height;
            }
            activity.getWindow().addFlags(1024);
        } else {
            ViewGroup.LayoutParams layoutParams2 = getLayoutParams();
            layoutParams2.width = this.C;
            layoutParams2.height = this.D;
            setLayoutParams(layoutParams2);
            activity.getWindow().clearFlags(1024);
        }
        activity.setRequestedOrientation(i10);
        this.f4027l.a(z10);
        j jVar = this.G;
        if (jVar != null) {
            jVar.a(z10);
        }
    }

    @Override // com.aggmoread.sdk.z.a.t.a.f
    public boolean a() {
        return n() && this.f4021f.isPlaying();
    }
}
