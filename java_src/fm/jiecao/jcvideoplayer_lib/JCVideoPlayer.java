package fm.jiecao.jcvideoplayer_lib;

import android.content.Context;
import android.hardware.Sensor;
import android.hardware.SensorEvent;
import android.hardware.SensorEventListener;
import android.media.AudioManager;
import android.os.Handler;
import android.provider.Settings;
import android.text.TextUtils;
import android.util.AttributeSet;
import android.view.MotionEvent;
import android.view.View;
import android.view.ViewGroup;
import android.view.ViewParent;
import android.view.WindowManager;
import android.widget.FrameLayout;
import android.widget.ImageView;
import android.widget.SeekBar;
import android.widget.TextView;
import android.widget.Toast;
import androidx.appcompat.app.ActionBar;
import androidx.appcompat.app.AppCompatActivity;
import java.util.LinkedHashMap;
import java.util.Map;
import java.util.Timer;
import java.util.TimerTask;

/* JADX INFO: loaded from: classes5.dex */
public abstract class JCVideoPlayer extends FrameLayout implements View.OnClickListener, SeekBar.OnSeekBarChangeListener, View.OnTouchListener {
    public static final String J = "JieCaoVideoPlayer";
    public static boolean K = true;
    public static boolean L = true;
    public static final int L1 = 7;
    public static int M = 4;
    public static int N = 1;
    public static boolean O = true;
    public static boolean P = false;
    public static final int Q = 33797;
    public static final int R = 33798;
    public static int R1 = -1;
    public static final int S = 80;
    public static final int T = 300;
    public static long U = 0;
    public static final int V = 0;
    protected static fm.jiecao.jcvideoplayer_lib.c V1 = null;
    public static final int W = 1;

    /* JADX INFO: renamed from: a2, reason: collision with root package name */
    protected static Timer f91197a2 = null;

    /* JADX INFO: renamed from: b1, reason: collision with root package name */
    public static final int f91198b1 = 3;

    /* JADX INFO: renamed from: b2, reason: collision with root package name */
    public static final String f91199b2 = "URL_KEY_DEFAULT";

    /* JADX INFO: renamed from: c2, reason: collision with root package name */
    public static long f91200c2 = 0;

    /* JADX INFO: renamed from: d2, reason: collision with root package name */
    public static AudioManager.OnAudioFocusChangeListener f91201d2 = new a();

    /* JADX INFO: renamed from: f1, reason: collision with root package name */
    public static final int f91202f1 = 0;

    /* JADX INFO: renamed from: i1, reason: collision with root package name */
    public static final int f91203i1 = 1;

    /* JADX INFO: renamed from: l1, reason: collision with root package name */
    public static final int f91204l1 = 2;

    /* JADX INFO: renamed from: p0, reason: collision with root package name */
    public static final int f91205p0 = 2;

    /* JADX INFO: renamed from: p1, reason: collision with root package name */
    public static final int f91206p1 = 3;

    /* JADX INFO: renamed from: q1, reason: collision with root package name */
    public static final int f91207q1 = 4;

    /* JADX INFO: renamed from: r1, reason: collision with root package name */
    public static final int f91208r1 = 5;

    /* JADX INFO: renamed from: v1, reason: collision with root package name */
    public static final int f91209v1 = 6;
    protected boolean A;
    protected int B;
    protected int C;
    protected float D;
    protected int E;
    LinkedHashMap F;
    int G;
    public int H;
    public int I;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    protected boolean f91210b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public int f91211c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    public int f91212d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public boolean f91213e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    public Map<String, String> f91214f;

    /* JADX INFO: renamed from: g, reason: collision with root package name */
    public Object[] f91215g;

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    public int f91216h;

    /* JADX INFO: renamed from: i, reason: collision with root package name */
    public ImageView f91217i;

    /* JADX INFO: renamed from: j, reason: collision with root package name */
    public SeekBar f91218j;

    /* JADX INFO: renamed from: k, reason: collision with root package name */
    public ImageView f91219k;

    /* JADX INFO: renamed from: l, reason: collision with root package name */
    public TextView f91220l;

    /* JADX INFO: renamed from: m, reason: collision with root package name */
    public TextView f91221m;

    /* JADX INFO: renamed from: n, reason: collision with root package name */
    public ViewGroup f91222n;

    /* JADX INFO: renamed from: o, reason: collision with root package name */
    public ViewGroup f91223o;

    /* JADX INFO: renamed from: p, reason: collision with root package name */
    public ViewGroup f91224p;

    /* JADX INFO: renamed from: q, reason: collision with root package name */
    protected int f91225q;

    /* JADX INFO: renamed from: r, reason: collision with root package name */
    protected int f91226r;

    /* JADX INFO: renamed from: s, reason: collision with root package name */
    protected AudioManager f91227s;

    /* JADX INFO: renamed from: t, reason: collision with root package name */
    protected Handler f91228t;

    /* JADX INFO: renamed from: u, reason: collision with root package name */
    protected c f91229u;

    /* JADX INFO: renamed from: v, reason: collision with root package name */
    protected boolean f91230v;

    /* JADX INFO: renamed from: w, reason: collision with root package name */
    protected float f91231w;

    /* JADX INFO: renamed from: x, reason: collision with root package name */
    protected float f91232x;

    /* JADX INFO: renamed from: y, reason: collision with root package name */
    protected boolean f91233y;

    /* JADX INFO: renamed from: z, reason: collision with root package name */
    protected boolean f91234z;

    static class a implements AudioManager.OnAudioFocusChangeListener {
        a() {
        }

        @Override // android.media.AudioManager.OnAudioFocusChangeListener
        public void onAudioFocusChange(int i10) {
            if (i10 != -2) {
                if (i10 != -1) {
                    return;
                }
                JCVideoPlayer.H();
                StringBuilder sb2 = new StringBuilder();
                sb2.append("AUDIOFOCUS_LOSS [");
                sb2.append(hashCode());
                sb2.append("]");
                return;
            }
            try {
                if (fm.jiecao.jcvideoplayer_lib.b.b().f91282b != null && fm.jiecao.jcvideoplayer_lib.b.b().f91282b.isPlaying()) {
                    fm.jiecao.jcvideoplayer_lib.b.b().f91282b.pause();
                }
            } catch (IllegalStateException e10) {
                e10.printStackTrace();
            }
            StringBuilder sb3 = new StringBuilder();
            sb3.append("AUDIOFOCUS_LOSS_TRANSIENT [");
            sb3.append(hashCode());
            sb3.append("]");
        }
    }

    public static class b implements SensorEventListener {
        @Override // android.hardware.SensorEventListener
        public void onAccuracyChanged(Sensor sensor, int i10) {
        }

        @Override // android.hardware.SensorEventListener
        public void onSensorChanged(SensorEvent sensorEvent) {
            float[] fArr = sensorEvent.values;
            float f10 = fArr[0];
            float f11 = fArr[1];
            float f12 = fArr[2];
            if (((f10 <= -15.0f || f10 >= -10.0f) && (f10 >= 15.0f || f10 <= 10.0f)) || Math.abs(f11) >= 1.5d || System.currentTimeMillis() - JCVideoPlayer.f91200c2 <= 2000) {
                return;
            }
            if (f.b() != null) {
                f.b().b(f10);
            }
            JCVideoPlayer.f91200c2 = System.currentTimeMillis();
        }
    }

    public class c extends TimerTask {

        class a implements Runnable {
            a() {
            }

            @Override // java.lang.Runnable
            public void run() {
                int currentPositionWhenPlaying = JCVideoPlayer.this.getCurrentPositionWhenPlaying();
                int duration = JCVideoPlayer.this.getDuration();
                JCVideoPlayer.this.setProgressAndText((currentPositionWhenPlaying * 100) / (duration == 0 ? 1 : duration), currentPositionWhenPlaying, duration);
            }
        }

        public c() {
        }

        @Override // java.util.TimerTask, java.lang.Runnable
        public void run() {
            JCVideoPlayer jCVideoPlayer = JCVideoPlayer.this;
            int i10 = jCVideoPlayer.f91211c;
            if (i10 == 3 || i10 == 5 || i10 == 4) {
                jCVideoPlayer.f91228t.post(new a());
            }
        }
    }

    public JCVideoPlayer(Context context) {
        super(context);
        this.f91210b = false;
        this.f91211c = -1;
        this.f91212d = -1;
        this.f91213e = false;
        this.f91215g = null;
        this.f91216h = 0;
        this.G = 0;
        this.H = 0;
        this.I = 0;
        m(context);
    }

    public static void H() {
        if (System.currentTimeMillis() - U > 300) {
            f.a();
            fm.jiecao.jcvideoplayer_lib.b.b().d();
        }
    }

    public static void M(Context context) {
        ActionBar supportActionBar;
        if (K && (supportActionBar = e.c(context).getSupportActionBar()) != null) {
            supportActionBar.setShowHideAnimationEnabled(false);
            supportActionBar.show();
        }
        if (L) {
            e.c(context).getWindow().clearFlags(1024);
        }
    }

    public static void P(Context context, Class cls, String str, Object... objArr) {
        LinkedHashMap linkedHashMap = new LinkedHashMap();
        linkedHashMap.put("URL_KEY_DEFAULT", str);
        Q(context, cls, linkedHashMap, 0, objArr);
    }

    public static void Q(Context context, Class cls, LinkedHashMap linkedHashMap, int i10, Object... objArr) {
        l(context);
        e.c(context).setRequestedOrientation(M);
        ViewGroup viewGroup = (ViewGroup) e.j(context).findViewById(android.R.id.content);
        View viewFindViewById = viewGroup.findViewById(Q);
        if (viewFindViewById != null) {
            viewGroup.removeView(viewFindViewById);
        }
        try {
            JCVideoPlayer jCVideoPlayer = (JCVideoPlayer) cls.getConstructor(Context.class).newInstance(context);
            jCVideoPlayer.setId(Q);
            viewGroup.addView(jCVideoPlayer, new FrameLayout.LayoutParams(-1, -1));
            jCVideoPlayer.setUp(linkedHashMap, i10, 2, objArr);
            U = System.currentTimeMillis();
            jCVideoPlayer.f91217i.performClick();
        } catch (InstantiationException e10) {
            e10.printStackTrace();
        } catch (Exception e11) {
            e11.printStackTrace();
        }
    }

    public static boolean d() {
        if (System.currentTimeMillis() - U < 300) {
            return false;
        }
        if (f.d() != null) {
            U = System.currentTimeMillis();
            JCVideoPlayer jCVideoPlayerD = f.d();
            jCVideoPlayerD.s(jCVideoPlayerD.f91212d == 2 ? 8 : 10);
            f.c().F();
            return true;
        }
        if (f.c() == null || !(f.c().f91212d == 2 || f.c().f91212d == 3)) {
            return false;
        }
        U = System.currentTimeMillis();
        f.b().f91211c = 0;
        f.c().f();
        fm.jiecao.jcvideoplayer_lib.b.b().d();
        f.e(null);
        return true;
    }

    public static void h(Context context, String str) {
        e.a(context, str);
    }

    public static void l(Context context) {
        ActionBar supportActionBar;
        if (K && (supportActionBar = e.c(context).getSupportActionBar()) != null) {
            supportActionBar.setShowHideAnimationEnabled(false);
            supportActionBar.hide();
        }
        if (L) {
            e.c(context).getWindow().setFlags(1024, 1024);
        }
    }

    public static void setJcUserAction(fm.jiecao.jcvideoplayer_lib.c cVar) {
        V1 = cVar;
    }

    public void A() {
        StringBuilder sb2 = new StringBuilder();
        sb2.append("onStatePlaying  [");
        sb2.append(hashCode());
        sb2.append("] ");
        this.f91211c = 3;
        R();
    }

    public void B() {
        StringBuilder sb2 = new StringBuilder();
        sb2.append("onStatePreparing  [");
        sb2.append(hashCode());
        sb2.append("] ");
        this.f91211c = 1;
        J();
    }

    public void C(int i10, int i11) {
        this.f91211c = 2;
        this.G = i10;
        this.f91216h = i11;
        fm.jiecao.jcvideoplayer_lib.b.f91277l = e.d(this.F, i10);
        fm.jiecao.jcvideoplayer_lib.b.f91278m = this.f91213e;
        fm.jiecao.jcvideoplayer_lib.b.f91279n = this.f91214f;
        fm.jiecao.jcvideoplayer_lib.b.b().c();
    }

    public void D() {
        StringBuilder sb2 = new StringBuilder();
        sb2.append("onVideoRendingStart  [");
        sb2.append(hashCode());
        sb2.append("] ");
        this.f91210b = true;
        int i10 = this.f91211c;
        if (i10 == 1 || i10 == 2 || i10 == 4) {
            if (this.f91216h != 0) {
                fm.jiecao.jcvideoplayer_lib.b.b().f91282b.seekTo(this.f91216h);
                this.f91216h = 0;
            } else {
                int iF = e.f(getContext(), e.d(this.F, this.G));
                if (iF != 0) {
                    fm.jiecao.jcvideoplayer_lib.b.b().f91282b.seekTo(iF);
                }
            }
            R();
            A();
        }
    }

    public void E() {
        StringBuilder sb2 = new StringBuilder();
        sb2.append("onVideoSizeChanged  [");
        sb2.append(hashCode());
        sb2.append("] ");
        JCResizeTextureView jCResizeTextureView = fm.jiecao.jcvideoplayer_lib.b.f91275j;
        if (jCResizeTextureView != null) {
            jCResizeTextureView.setVideoSize(fm.jiecao.jcvideoplayer_lib.b.b().a());
        }
    }

    public void F() {
        StringBuilder sb2 = new StringBuilder();
        sb2.append("playOnThisJcvd  [");
        sb2.append(hashCode());
        sb2.append("] ");
        this.f91211c = f.d().f91211c;
        this.G = f.d().G;
        f();
        setState(this.f91211c);
        a();
    }

    public void G() {
        if (!e.d(this.F, this.G).equals(fm.jiecao.jcvideoplayer_lib.b.f91277l) || System.currentTimeMillis() - U <= 300) {
            return;
        }
        if (f.d() == null || f.d().f91212d != 2) {
            if (f.d() == null && f.c() != null && f.c().f91212d == 2) {
                return;
            }
            StringBuilder sb2 = new StringBuilder();
            sb2.append("release [");
            sb2.append(hashCode());
            sb2.append("]");
            H();
        }
    }

    public void I() {
        fm.jiecao.jcvideoplayer_lib.b.f91276k = null;
        JCResizeTextureView jCResizeTextureView = fm.jiecao.jcvideoplayer_lib.b.f91275j;
        if (jCResizeTextureView == null || jCResizeTextureView.getParent() == null) {
            return;
        }
        ((ViewGroup) fm.jiecao.jcvideoplayer_lib.b.f91275j.getParent()).removeView(fm.jiecao.jcvideoplayer_lib.b.f91275j);
    }

    public void J() {
        this.f91218j.setProgress(0);
        this.f91218j.setSecondaryProgress(0);
        this.f91220l.setText(e.k(0));
        this.f91221m.setText(e.k(0));
    }

    public void K(int i10) {
    }

    public void L(float f10, String str, int i10, String str2, int i11) {
    }

    public void N(float f10, int i10) {
    }

    public void O(int i10) {
    }

    public void R() {
        e();
        f91197a2 = new Timer();
        c cVar = new c();
        this.f91229u = cVar;
        f91197a2.schedule(cVar, 0L, 300L);
    }

    public void S() {
        f.a();
        StringBuilder sb2 = new StringBuilder();
        sb2.append("startVideo [");
        sb2.append(hashCode());
        sb2.append("] ");
        n();
        a();
        ((AudioManager) getContext().getSystemService("audio")).requestAudioFocus(f91201d2, 3, 2);
        e.j(getContext()).getWindow().addFlags(128);
        fm.jiecao.jcvideoplayer_lib.b.f91277l = e.d(this.F, this.G);
        fm.jiecao.jcvideoplayer_lib.b.f91278m = this.f91213e;
        fm.jiecao.jcvideoplayer_lib.b.f91279n = this.f91214f;
        B();
        f.e(this);
    }

    public void T() {
        StringBuilder sb2 = new StringBuilder();
        sb2.append("startWindowFullscreen  [");
        sb2.append(hashCode());
        sb2.append("] ");
        l(getContext());
        e.c(getContext()).setRequestedOrientation(M);
        ViewGroup viewGroup = (ViewGroup) e.j(getContext()).findViewById(android.R.id.content);
        View viewFindViewById = viewGroup.findViewById(Q);
        if (viewFindViewById != null) {
            viewGroup.removeView(viewFindViewById);
        }
        this.f91222n.removeView(fm.jiecao.jcvideoplayer_lib.b.f91275j);
        try {
            JCVideoPlayer jCVideoPlayer = (JCVideoPlayer) getClass().getConstructor(Context.class).newInstance(getContext());
            jCVideoPlayer.setId(Q);
            viewGroup.addView(jCVideoPlayer, new FrameLayout.LayoutParams(-1, -1));
            jCVideoPlayer.setUp(this.F, this.G, 2, this.f91215g);
            jCVideoPlayer.setState(this.f91211c);
            jCVideoPlayer.a();
            f.f(jCVideoPlayer);
            x();
            U = System.currentTimeMillis();
        } catch (Exception e10) {
            e10.printStackTrace();
        }
    }

    public void U() {
        StringBuilder sb2 = new StringBuilder();
        sb2.append("startWindowTiny  [");
        sb2.append(hashCode());
        sb2.append("] ");
        s(9);
        int i10 = this.f91211c;
        if (i10 == 0 || i10 == 7) {
            return;
        }
        ViewGroup viewGroup = (ViewGroup) e.j(getContext()).findViewById(android.R.id.content);
        View viewFindViewById = viewGroup.findViewById(R);
        if (viewFindViewById != null) {
            viewGroup.removeView(viewFindViewById);
        }
        this.f91222n.removeView(fm.jiecao.jcvideoplayer_lib.b.f91275j);
        try {
            JCVideoPlayer jCVideoPlayer = (JCVideoPlayer) getClass().getConstructor(Context.class).newInstance(getContext());
            jCVideoPlayer.setId(R);
            FrameLayout.LayoutParams layoutParams = new FrameLayout.LayoutParams(400, 400);
            layoutParams.gravity = 85;
            viewGroup.addView(jCVideoPlayer, layoutParams);
            jCVideoPlayer.setUp(this.F, this.G, 3, this.f91215g);
            jCVideoPlayer.setState(this.f91211c);
            jCVideoPlayer.a();
            f.f(jCVideoPlayer);
            x();
        } catch (InstantiationException e10) {
            e10.printStackTrace();
        } catch (Exception e11) {
            e11.printStackTrace();
        }
    }

    public void a() {
        StringBuilder sb2 = new StringBuilder();
        sb2.append("addTextureView [");
        sb2.append(hashCode());
        sb2.append("] ");
        this.f91222n.addView(fm.jiecao.jcvideoplayer_lib.b.f91275j, new FrameLayout.LayoutParams(-1, -1, 17));
    }

    public void b(float f10) {
        int i10;
        if (!o() || this.f91211c != 3 || (i10 = this.f91212d) == 2 || i10 == 3) {
            return;
        }
        if (f10 > 0.0f) {
            e.c(getContext()).setRequestedOrientation(0);
        } else {
            e.c(getContext()).setRequestedOrientation(8);
        }
        s(7);
        T();
    }

    public void c() {
        if (System.currentTimeMillis() - f91200c2 > 2000 && o() && this.f91211c == 3 && this.f91212d == 2) {
            f91200c2 = System.currentTimeMillis();
            d();
        }
    }

    public void e() {
        Timer timer = f91197a2;
        if (timer != null) {
            timer.cancel();
        }
        c cVar = this.f91229u;
        if (cVar != null) {
            cVar.cancel();
        }
    }

    public void f() {
        e.c(getContext()).setRequestedOrientation(N);
        M(getContext());
        JCVideoPlayer jCVideoPlayerB = f.b();
        jCVideoPlayerB.f91222n.removeView(fm.jiecao.jcvideoplayer_lib.b.f91275j);
        ((ViewGroup) e.j(getContext()).findViewById(android.R.id.content)).removeView(jCVideoPlayerB);
        f.f(null);
    }

    public void g() {
        ViewGroup viewGroup = (ViewGroup) e.j(getContext()).findViewById(android.R.id.content);
        View viewFindViewById = viewGroup.findViewById(Q);
        View viewFindViewById2 = viewGroup.findViewById(R);
        if (viewFindViewById != null) {
            viewGroup.removeView(viewFindViewById);
        }
        if (viewFindViewById2 != null) {
            viewGroup.removeView(viewFindViewById2);
        }
        M(getContext());
    }

    public int getCurrentPositionWhenPlaying() {
        if (fm.jiecao.jcvideoplayer_lib.b.b().f91282b == null) {
            return 0;
        }
        int i10 = this.f91211c;
        if (i10 != 3 && i10 != 5 && i10 != 4) {
            return 0;
        }
        try {
            return fm.jiecao.jcvideoplayer_lib.b.b().f91282b.getCurrentPosition();
        } catch (IllegalStateException e10) {
            e10.printStackTrace();
            return 0;
        }
    }

    public int getDuration() {
        if (fm.jiecao.jcvideoplayer_lib.b.b().f91282b == null) {
            return 0;
        }
        try {
            return fm.jiecao.jcvideoplayer_lib.b.b().f91282b.getDuration();
        } catch (IllegalStateException e10) {
            e10.printStackTrace();
            return 0;
        }
    }

    public abstract int getLayoutId();

    public void i() {
    }

    public void j() {
    }

    public void k() {
    }

    public void m(Context context) {
        View.inflate(context, getLayoutId(), this);
        this.f91217i = (ImageView) findViewById(R.id.start);
        this.f91219k = (ImageView) findViewById(R.id.fullscreen);
        this.f91218j = (SeekBar) findViewById(R.id.bottom_seek_progress);
        this.f91220l = (TextView) findViewById(R.id.current);
        this.f91221m = (TextView) findViewById(R.id.total);
        this.f91224p = (ViewGroup) findViewById(R.id.layout_bottom);
        this.f91222n = (ViewGroup) findViewById(R.id.surface_container);
        this.f91223o = (ViewGroup) findViewById(R.id.layout_top);
        this.f91217i.setOnClickListener(this);
        this.f91219k.setOnClickListener(this);
        this.f91218j.setOnSeekBarChangeListener(this);
        this.f91224p.setOnClickListener(this);
        this.f91222n.setOnClickListener(this);
        this.f91222n.setOnTouchListener(this);
        this.f91225q = getContext().getResources().getDisplayMetrics().widthPixels;
        this.f91226r = getContext().getResources().getDisplayMetrics().heightPixels;
        this.f91227s = (AudioManager) getContext().getSystemService("audio");
        this.f91228t = new Handler();
        try {
            if (o()) {
                N = ((AppCompatActivity) context).getRequestedOrientation();
            }
        } catch (Exception e10) {
            e10.printStackTrace();
        }
    }

    public void n() {
        I();
        JCResizeTextureView jCResizeTextureView = new JCResizeTextureView(getContext());
        fm.jiecao.jcvideoplayer_lib.b.f91275j = jCResizeTextureView;
        jCResizeTextureView.setSurfaceTextureListener(fm.jiecao.jcvideoplayer_lib.b.b());
    }

    public boolean o() {
        return f.b() != null && f.b() == this;
    }

    public void onClick(View view) {
        int id2 = view.getId();
        if (id2 != R.id.start) {
            if (id2 != R.id.fullscreen) {
                if (id2 == R.id.surface_container && this.f91211c == 7) {
                    StringBuilder sb2 = new StringBuilder();
                    sb2.append("onClick surfaceContainer State=Error [");
                    sb2.append(hashCode());
                    sb2.append("] ");
                    S();
                    return;
                }
                return;
            }
            StringBuilder sb3 = new StringBuilder();
            sb3.append("onClick fullscreen [");
            sb3.append(hashCode());
            sb3.append("] ");
            if (this.f91211c == 6) {
                return;
            }
            if (this.f91212d == 2) {
                d();
                return;
            }
            StringBuilder sb4 = new StringBuilder();
            sb4.append("toFullscreenActivity [");
            sb4.append(hashCode());
            sb4.append("] ");
            s(7);
            T();
            return;
        }
        StringBuilder sb5 = new StringBuilder();
        sb5.append("onClick start [");
        sb5.append(hashCode());
        sb5.append("] ");
        if (TextUtils.isEmpty(e.d(this.F, this.G))) {
            Toast.makeText(getContext(), getResources().getString(R.string.no_url), 0).show();
            return;
        }
        int i10 = this.f91211c;
        if (i10 == 0 || i10 == 7) {
            if (!e.d(this.F, this.G).startsWith("file") && !e.d(this.F, this.G).startsWith(net.lingala.zip4j.util.e.F0) && !e.h(getContext()) && !P) {
                O(0);
                return;
            } else {
                S();
                s(this.f91211c == 7 ? 1 : 0);
                return;
            }
        }
        if (i10 == 3) {
            s(3);
            StringBuilder sb6 = new StringBuilder();
            sb6.append("pauseVideo [");
            sb6.append(hashCode());
            sb6.append("] ");
            fm.jiecao.jcvideoplayer_lib.b.b().f91282b.pause();
            y();
            return;
        }
        if (i10 == 5) {
            s(4);
            fm.jiecao.jcvideoplayer_lib.b.b().f91282b.start();
            A();
        } else if (i10 == 6) {
            s(2);
            S();
        }
    }

    @Override // android.widget.FrameLayout, android.view.View
    protected void onMeasure(int i10, int i11) {
        int i12 = this.f91212d;
        if (i12 == 2 || i12 == 3) {
            super.onMeasure(i10, i11);
            return;
        }
        if (this.H == 0 || this.I == 0) {
            super.onMeasure(i10, i11);
            return;
        }
        int size = View.MeasureSpec.getSize(i10);
        int i13 = (int) ((size * this.I) / this.H);
        setMeasuredDimension(size, i13);
        getChildAt(0).measure(View.MeasureSpec.makeMeasureSpec(size, 1073741824), View.MeasureSpec.makeMeasureSpec(i13, 1073741824));
    }

    @Override // android.widget.SeekBar.OnSeekBarChangeListener
    public void onProgressChanged(SeekBar seekBar, int i10, boolean z10) {
    }

    public void onStartTrackingTouch(SeekBar seekBar) {
        StringBuilder sb2 = new StringBuilder();
        sb2.append("bottomProgress onStartTrackingTouch [");
        sb2.append(hashCode());
        sb2.append("] ");
        e();
        for (ViewParent parent = getParent(); parent != null; parent = parent.getParent()) {
            parent.requestDisallowInterceptTouchEvent(true);
        }
    }

    public void onStopTrackingTouch(SeekBar seekBar) {
        StringBuilder sb2 = new StringBuilder();
        sb2.append("bottomProgress onStopTrackingTouch [");
        sb2.append(hashCode());
        sb2.append("] ");
        s(5);
        R();
        for (ViewParent parent = getParent(); parent != null; parent = parent.getParent()) {
            parent.requestDisallowInterceptTouchEvent(false);
        }
        int i10 = this.f91211c;
        if (i10 == 3 || i10 == 5) {
            int progress = (seekBar.getProgress() * getDuration()) / 100;
            fm.jiecao.jcvideoplayer_lib.b.b().f91282b.seekTo(progress);
            StringBuilder sb3 = new StringBuilder();
            sb3.append("seekTo ");
            sb3.append(progress);
            sb3.append(" [");
            sb3.append(hashCode());
            sb3.append("] ");
        }
    }

    public boolean onTouch(View view, MotionEvent motionEvent) {
        float x10 = motionEvent.getX();
        float y10 = motionEvent.getY();
        if (view.getId() == R.id.surface_container) {
            int action = motionEvent.getAction();
            if (action == 0) {
                StringBuilder sb2 = new StringBuilder();
                sb2.append("onTouch surfaceContainer actionDown [");
                sb2.append(hashCode());
                sb2.append("] ");
                this.f91230v = true;
                this.f91231w = x10;
                this.f91232x = y10;
                this.f91233y = false;
                this.f91234z = false;
                this.A = false;
            } else if (action == 1) {
                StringBuilder sb3 = new StringBuilder();
                sb3.append("onTouch surfaceContainer actionUp [");
                sb3.append(hashCode());
                sb3.append("] ");
                this.f91230v = false;
                j();
                k();
                i();
                if (this.f91234z) {
                    s(12);
                    fm.jiecao.jcvideoplayer_lib.b.b().f91282b.seekTo(this.E);
                    int duration = getDuration();
                    this.f91218j.setProgress((this.E * 100) / (duration != 0 ? duration : 1));
                }
                if (this.f91233y) {
                    s(11);
                }
                R();
            } else if (action == 2) {
                StringBuilder sb4 = new StringBuilder();
                sb4.append("onTouch surfaceContainer actionMove [");
                sb4.append(hashCode());
                sb4.append("] ");
                float f10 = x10 - this.f91231w;
                float f11 = y10 - this.f91232x;
                float fAbs = Math.abs(f10);
                float fAbs2 = Math.abs(f11);
                if (this.f91212d == 2 && !this.f91234z && !this.f91233y && !this.A && (fAbs > 80.0f || fAbs2 > 80.0f)) {
                    e();
                    if (fAbs >= 80.0f) {
                        if (this.f91211c != 7) {
                            this.f91234z = true;
                            this.B = getCurrentPositionWhenPlaying();
                        }
                    } else if (this.f91231w < this.f91225q * 0.5f) {
                        this.A = true;
                        float f12 = e.c(getContext()).getWindow().getAttributes().screenBrightness;
                        if (f12 < 0.0f) {
                            try {
                                this.D = Settings.System.getInt(getContext().getContentResolver(), "screen_brightness");
                                StringBuilder sb5 = new StringBuilder();
                                sb5.append("current system brightness: ");
                                sb5.append(this.D);
                            } catch (Settings.SettingNotFoundException e10) {
                                e10.printStackTrace();
                            }
                        } else {
                            this.D = f12 * 255.0f;
                            StringBuilder sb6 = new StringBuilder();
                            sb6.append("current activity brightness: ");
                            sb6.append(this.D);
                        }
                    } else {
                        this.f91233y = true;
                        this.C = this.f91227s.getStreamVolume(3);
                    }
                }
                if (this.f91234z) {
                    int duration2 = getDuration();
                    int i10 = (int) (this.B + ((duration2 * f10) / this.f91225q));
                    this.E = i10;
                    if (i10 > duration2) {
                        this.E = duration2;
                    }
                    L(f10, e.k(this.E), this.E, e.k(duration2), duration2);
                }
                if (this.f91233y) {
                    f11 = -f11;
                    int streamMaxVolume = this.f91227s.getStreamMaxVolume(3);
                    this.f91227s.setStreamVolume(3, this.C + ((int) (((streamMaxVolume * f11) * 3.0f) / this.f91226r)), 0);
                    N(-f11, (int) (((this.C * 100) / streamMaxVolume) + (((f11 * 3.0f) * 100.0f) / this.f91226r)));
                }
                if (this.A) {
                    float f13 = -f11;
                    int i11 = (int) (((f13 * 255.0f) * 3.0f) / this.f91226r);
                    WindowManager.LayoutParams attributes = e.c(getContext()).getWindow().getAttributes();
                    float f14 = this.D;
                    float f15 = i11;
                    if ((f14 + f15) / 255.0f >= 1.0f) {
                        attributes.screenBrightness = 1.0f;
                    } else if ((f14 + f15) / 255.0f <= 0.0f) {
                        attributes.screenBrightness = 0.01f;
                    } else {
                        attributes.screenBrightness = (f14 + f15) / 255.0f;
                    }
                    e.c(getContext()).getWindow().setAttributes(attributes);
                    K((int) (((this.D * 100.0f) / 255.0f) + (((f13 * 3.0f) * 100.0f) / this.f91226r)));
                }
            }
        }
        return false;
    }

    public void p() {
        Runtime.getRuntime().gc();
        StringBuilder sb2 = new StringBuilder();
        sb2.append("onAutoCompletion  [");
        sb2.append(hashCode());
        sb2.append("] ");
        s(6);
        k();
        j();
        i();
        e();
        v();
        if (this.f91212d == 2) {
            d();
        }
        e.i(getContext(), e.d(this.F, this.G), 0);
    }

    public void q() {
        StringBuilder sb2 = new StringBuilder();
        sb2.append("onCompletion  [");
        sb2.append(hashCode());
        sb2.append("] ");
        int i10 = this.f91211c;
        if (i10 == 3 || i10 == 5) {
            e.i(getContext(), e.d(this.F, this.G), getCurrentPositionWhenPlaying());
        }
        e();
        x();
        this.f91222n.removeView(fm.jiecao.jcvideoplayer_lib.b.f91275j);
        fm.jiecao.jcvideoplayer_lib.b.b().f91283c = 0;
        fm.jiecao.jcvideoplayer_lib.b.b().f91284d = 0;
        ((AudioManager) getContext().getSystemService("audio")).abandonAudioFocus(f91201d2);
        e.j(getContext()).getWindow().clearFlags(128);
        g();
        e.c(getContext()).setRequestedOrientation(N);
        fm.jiecao.jcvideoplayer_lib.b.f91275j = null;
        fm.jiecao.jcvideoplayer_lib.b.f91276k = null;
        this.f91210b = false;
    }

    public void r(int i10, int i11) {
        StringBuilder sb2 = new StringBuilder();
        sb2.append("onError ");
        sb2.append(i10);
        sb2.append(" - ");
        sb2.append(i11);
        sb2.append(" [");
        sb2.append(hashCode());
        sb2.append("] ");
        if (i10 == 38 || i10 == -38 || i11 == -38) {
            return;
        }
        w();
        if (o()) {
            fm.jiecao.jcvideoplayer_lib.b.b().d();
        }
    }

    public void s(int i10) {
        LinkedHashMap linkedHashMap;
        if (V1 == null || !o() || (linkedHashMap = this.F) == null) {
            return;
        }
        V1.a(i10, e.d(linkedHashMap, this.G), this.f91212d, this.f91215g);
    }

    public void setBufferProgress(int i10) {
        if (i10 != 0) {
            this.f91218j.setSecondaryProgress(i10);
        }
    }

    public void setProgressAndText(int i10, int i11, int i12) {
        if (!this.f91230v && i10 != 0) {
            this.f91218j.setProgress(i10);
        }
        if (i11 != 0) {
            this.f91220l.setText(e.k(i11));
        }
        this.f91221m.setText(e.k(i12));
    }

    public void setState(int i10) {
        setState(i10, 0, 0);
    }

    public void setUp(String str, int i10, Object... objArr) {
        LinkedHashMap linkedHashMap = new LinkedHashMap();
        linkedHashMap.put("URL_KEY_DEFAULT", str);
        setUp(linkedHashMap, 0, i10, objArr);
    }

    public void t(int i10, int i11) {
        StringBuilder sb2 = new StringBuilder();
        sb2.append("onInfo what - ");
        sb2.append(i10);
        sb2.append(" extra - ");
        sb2.append(i11);
        if (i10 == 701) {
            int i12 = this.f91211c;
            if (i12 == 4) {
                return;
            }
            R1 = i12;
            z();
            return;
        }
        if (i10 != 702) {
            if (i10 == 3) {
                D();
            }
        } else {
            int i13 = R1;
            if (i13 != -1) {
                if (this.f91211c == 4) {
                    setState(i13);
                }
                R1 = -1;
            }
        }
    }

    public void u() {
    }

    public void v() {
        StringBuilder sb2 = new StringBuilder();
        sb2.append("onStateAutoComplete  [");
        sb2.append(hashCode());
        sb2.append("] ");
        this.f91211c = 6;
        e();
        this.f91218j.setProgress(100);
        this.f91220l.setText(this.f91221m.getText());
    }

    public void w() {
        StringBuilder sb2 = new StringBuilder();
        sb2.append("onStateError  [");
        sb2.append(hashCode());
        sb2.append("] ");
        this.f91211c = 7;
        e();
    }

    public void x() {
        StringBuilder sb2 = new StringBuilder();
        sb2.append("onStateNormal  [");
        sb2.append(hashCode());
        sb2.append("] ");
        this.f91211c = 0;
        e();
        if (o()) {
            fm.jiecao.jcvideoplayer_lib.b.b().d();
        }
    }

    public void y() {
        StringBuilder sb2 = new StringBuilder();
        sb2.append("onStatePause  [");
        sb2.append(hashCode());
        sb2.append("] ");
        this.f91211c = 5;
        R();
    }

    public void z() {
        StringBuilder sb2 = new StringBuilder();
        sb2.append("onStatePlaybackBufferingStart  [");
        sb2.append(hashCode());
        sb2.append("] ");
        this.f91211c = 4;
        R();
    }

    public void setState(int i10, int i11, int i12) {
        switch (i10) {
            case 0:
                x();
                break;
            case 1:
                B();
                break;
            case 2:
                C(i11, i12);
                break;
            case 3:
                A();
                break;
            case 4:
                z();
                break;
            case 5:
                y();
                break;
            case 6:
                v();
                break;
            case 7:
                w();
                break;
        }
    }

    public void setUp(LinkedHashMap linkedHashMap, int i10, int i11, Object... objArr) {
        if (this.F == null || TextUtils.isEmpty(e.d(linkedHashMap, this.G)) || !TextUtils.equals(e.d(this.F, this.G), e.d(linkedHashMap, this.G))) {
            this.F = linkedHashMap;
            this.G = i10;
            this.f91212d = i11;
            this.f91215g = objArr;
            this.f91214f = null;
            this.f91210b = false;
            x();
        }
    }

    public JCVideoPlayer(Context context, AttributeSet attributeSet) {
        super(context, attributeSet);
        this.f91210b = false;
        this.f91211c = -1;
        this.f91212d = -1;
        this.f91213e = false;
        this.f91215g = null;
        this.f91216h = 0;
        this.G = 0;
        this.H = 0;
        this.I = 0;
        m(context);
    }
}
