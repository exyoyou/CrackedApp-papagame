package com.sigmob.sdk.videoplayer;

import android.content.Context;
import android.graphics.SurfaceTexture;
import android.os.Handler;
import android.os.Looper;
import android.os.Message;
import android.view.ViewGroup;
import android.view.Window;
import android.widget.FrameLayout;
import android.widget.RelativeLayout;
import com.czhj.sdk.logger.SigmobLog;
import com.haima.hmcp.cloud.BaseCloudFileManager;
import java.util.Timer;
import java.util.TimerTask;

/* JADX INFO: loaded from: classes3.dex */
public class a extends RelativeLayout implements h {

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    private static final String f81999f = "a";

    /* JADX INFO: renamed from: v, reason: collision with root package name */
    private static final int f82000v = 6000;

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    i f82001a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    Class f82002b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    l f82003c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    public g f82004d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public d f82005e;

    /* JADX INFO: renamed from: g, reason: collision with root package name */
    private ViewGroup f82006g;

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    private int f82007h;

    /* JADX INFO: renamed from: i, reason: collision with root package name */
    private Timer f82008i;

    /* JADX INFO: renamed from: j, reason: collision with root package name */
    private C1036a f82009j;

    /* JADX INFO: renamed from: k, reason: collision with root package name */
    private boolean f82010k;

    /* JADX INFO: renamed from: l, reason: collision with root package name */
    private boolean f82011l;

    /* JADX INFO: renamed from: m, reason: collision with root package name */
    private final Handler f82012m;

    /* JADX INFO: renamed from: n, reason: collision with root package name */
    private boolean f82013n;

    /* JADX INFO: renamed from: o, reason: collision with root package name */
    private boolean f82014o;

    /* JADX INFO: renamed from: p, reason: collision with root package name */
    private int f82015p;

    /* JADX INFO: renamed from: q, reason: collision with root package name */
    private int f82016q;

    /* JADX INFO: renamed from: r, reason: collision with root package name */
    private float f82017r;

    /* JADX INFO: renamed from: s, reason: collision with root package name */
    private k f82018s;

    /* JADX INFO: renamed from: t, reason: collision with root package name */
    private int f82019t;

    /* JADX INFO: renamed from: u, reason: collision with root package name */
    private String f82020u;

    /* JADX INFO: renamed from: w, reason: collision with root package name */
    private boolean f82021w;

    /* JADX INFO: renamed from: com.sigmob.sdk.videoplayer.a$a, reason: collision with other inner class name */
    public class C1036a extends TimerTask {
        public C1036a() {
        }

        @Override // java.util.TimerTask, java.lang.Runnable
        public void run() {
            a aVar = a.this;
            d dVar = aVar.f82005e;
            if (dVar == d.STATE_PLAYING || dVar == d.STATE_PAUSE) {
                aVar.post(new Runnable() { // from class: com.sigmob.sdk.videoplayer.m
                    @Override // java.lang.Runnable
                    public final void run() {
                        this.f82105b.a();
                    }
                });
            }
        }

        /* JADX INFO: Access modifiers changed from: private */
        public /* synthetic */ void a() {
            long currentPositionWhenPlaying = a.this.getCurrentPositionWhenPlaying();
            long duration = a.this.getDuration();
            if (a.this.f82018s == null) {
                return;
            }
            a.this.f82018s.a(currentPositionWhenPlaying, duration);
        }
    }

    public a(Context context) {
        super(context);
        this.f82005e = d.STATE_IDLE;
        this.f82012m = new Handler(Looper.getMainLooper()) { // from class: com.sigmob.sdk.videoplayer.a.1
            @Override // android.os.Handler
            public void handleMessage(Message msg) {
                if (msg.what != 6000 || a.this.f82010k || a.this.f82011l) {
                    return;
                }
                a.this.f82010k = true;
                a.this.setState(d.STATE_BUFFERING_START);
            }
        };
        FrameLayout frameLayout = new FrameLayout(context);
        this.f82006g = frameLayout;
        frameLayout.setBackgroundColor(-16777216);
        addView(this.f82006g, new RelativeLayout.LayoutParams(-1, -1));
    }

    private void s() {
        try {
            i iVar = this.f82001a;
            if (iVar != null) {
                iVar.f();
            }
            Class cls = this.f82002b;
            this.f82001a = cls == null ? new j(this) : (i) cls.getConstructor(a.class).newInstance(this);
        } catch (Throwable th) {
            th.printStackTrace();
        }
    }

    public void a() {
        SigmobLog.d("startVideo [" + hashCode() + "] ");
        try {
            s();
        } catch (Throwable th) {
            th.printStackTrace();
        }
        Window windowC = c.c(getContext());
        if (windowC != null) {
            windowC.setFlags(16777216, 16777216);
            windowC.addFlags(128);
        }
        m();
        b();
    }

    public void b() {
        SigmobLog.d("onStatePreparing  [" + hashCode() + "] ");
        setState(d.STATE_PREPARING);
    }

    public void d() {
        i iVar;
        this.f82014o = false;
        d dVar = this.f82005e;
        if (dVar == d.STATE_NORMAL || (iVar = this.f82001a) == null) {
            a();
            return;
        }
        if (dVar == d.STATE_PAUSE || dVar == d.STATE_BUFFERING_END || dVar == d.STATE_AUTO_COMPLETE || dVar == d.STATE_PREPARED) {
            iVar.a();
            e();
        }
    }

    public void e() {
        SigmobLog.d("onStatePlaying  [" + hashCode() + "] ");
        if (this.f82005e == d.STATE_PREPARED) {
            int i10 = this.f82007h;
            if (i10 != 0) {
                this.f82001a.a(i10);
                this.f82007h = 0;
            }
            if (!this.f82011l) {
                this.f82012m.sendEmptyMessageDelayed(6000, BaseCloudFileManager.ACK_TIMEOUT);
            }
        }
        setState(d.STATE_PLAYING);
        f();
    }

    public void f() {
        SigmobLog.d("startProgressTimer:  [" + hashCode() + "] ");
        l();
        this.f82008i = new Timer();
        C1036a c1036a = new C1036a();
        this.f82009j = c1036a;
        this.f82008i.schedule(c1036a, 0L, 300L);
    }

    public boolean g() {
        return this.f82021w;
    }

    public long getCurrentPositionWhenPlaying() {
        d dVar = this.f82005e;
        if (dVar != d.STATE_PLAYING && dVar != d.STATE_PAUSE) {
            return 0L;
        }
        try {
            return this.f82001a.g();
        } catch (IllegalStateException e10) {
            com.sigmob.sdk.base.utils.k.f(f81999f, "getCurrentPositionWhenPlaying: error = " + e10.getMessage(), new Object[0]);
            return 0L;
        }
    }

    public long getDuration() {
        i iVar = this.f82001a;
        if (iVar == null) {
            return 0L;
        }
        try {
            long j10 = iVar.j();
            com.sigmob.sdk.base.utils.k.f(f81999f, "getDuration: duration = " + j10, new Object[0]);
            return j10;
        } catch (Throwable th) {
            com.sigmob.sdk.base.utils.k.f(f81999f, "getDuration: error = " + th.getMessage(), new Object[0]);
            return 0L;
        }
    }

    public int getErrorCode() {
        return this.f82019t;
    }

    public String getErrorMessage() {
        return this.f82020u;
    }

    public int getVideoHeight() {
        return this.f82015p;
    }

    @Override // com.sigmob.sdk.videoplayer.h
    public g getVideoPlayerDataSource() {
        return this.f82004d;
    }

    public int getVideoWidth() {
        return this.f82016q;
    }

    public void h() {
        SigmobLog.d("reset  [" + hashCode() + "] ");
        l();
        c();
        this.f82006g.removeAllViews();
        Window windowC = c.c(getContext());
        if (windowC != null) {
            windowC.clearFlags(128);
        }
        i iVar = this.f82001a;
        if (iVar != null) {
            iVar.f();
        }
    }

    public void i() {
        setState(d.STATE_STOP);
        h();
    }

    public void j() {
        d dVar = this.f82005e;
        if (dVar == d.STATE_NORMAL || dVar == d.STATE_PREPARING || dVar == d.STATE_ERROR) {
            h();
        } else {
            if (dVar == d.STATE_PAUSE || this.f82001a == null) {
                return;
            }
            k();
            this.f82001a.d();
        }
    }

    public void k() {
        SigmobLog.i("onStatePause  [" + hashCode() + "] ");
        setState(d.STATE_PAUSE);
        f();
    }

    public void l() {
        Timer timer = this.f82008i;
        if (timer != null) {
            timer.cancel();
            this.f82008i = null;
        }
        C1036a c1036a = this.f82009j;
        if (c1036a != null) {
            c1036a.cancel();
            this.f82009j = null;
        }
    }

    public void m() {
        SigmobLog.d("addTextureView [" + hashCode() + "] ");
        l lVar = this.f82003c;
        if (lVar != null) {
            this.f82006g.removeView(lVar);
        }
        l lVar2 = new l(getContext().getApplicationContext());
        this.f82003c = lVar2;
        lVar2.setSurfaceTextureListener(this.f82001a);
        this.f82006g.addView(this.f82003c, new FrameLayout.LayoutParams(-1, -1, 17));
    }

    public void n() {
        this.f82014o = true;
        a();
    }

    @Override // com.sigmob.sdk.videoplayer.h
    public void o() {
        SigmobLog.d("onPrepared  [" + hashCode() + "] ");
        setState(d.STATE_PREPARED);
        setMute(this.f82013n);
        if (this.f82014o) {
            return;
        }
        SigmobLog.d("mediaInterface start");
        e();
        this.f82001a.a();
        this.f82014o = false;
    }

    @Override // android.view.ViewGroup, android.view.View
    protected void onAttachedToWindow() {
        super.onAttachedToWindow();
        SigmobLog.d("onAttachedToWindow");
    }

    @Override // android.view.ViewGroup, android.view.View
    protected void onDetachedFromWindow() {
        super.onDetachedFromWindow();
    }

    @Override // com.sigmob.sdk.videoplayer.h
    public void p() {
        setState(d.STATE_AUTO_COMPLETE);
    }

    @Override // com.sigmob.sdk.videoplayer.h
    public void q() {
    }

    public void r() {
        this.f82018s = null;
        h();
    }

    @Override // com.sigmob.sdk.videoplayer.h
    public void setBufferProgress(int percent) {
    }

    public void setLooping(boolean looping) {
        i iVar = this.f82001a;
        if (iVar == null) {
            return;
        }
        try {
            iVar.a(looping);
            this.f82021w = looping;
        } catch (IllegalStateException e10) {
            e10.printStackTrace();
        }
    }

    public void setMute(boolean isMute) {
        this.f82013n = isMute;
        i iVar = this.f82001a;
        if (iVar == null) {
            return;
        }
        iVar.a(isMute ? 0.0f : 1.0f);
    }

    public void setState(d state) {
        this.f82005e = state;
        Context contextE = com.sigmob.sdk.b.e();
        if (state == d.STATE_PLAYING) {
            c.f(contextE);
        } else if (state == d.STATE_NORMAL || state == d.STATE_PAUSE || state == d.STATE_AUTO_COMPLETE || state == d.STATE_STOP) {
            c.g(contextE);
        }
        k kVar = this.f82018s;
        if (kVar == null) {
            return;
        }
        kVar.a(state);
    }

    @Override // com.sigmob.sdk.videoplayer.h
    public void setSurfaceTexture(SurfaceTexture saved_surface) {
        l lVar = this.f82003c;
        if (lVar == null) {
            return;
        }
        lVar.setSurfaceTexture(saved_surface);
    }

    public void setTextureViewContainer(ViewGroup textureViewContainer) {
        this.f82006g = textureViewContainer;
    }

    public void setUp(String url) {
        a(new g(url, (String) null), 0);
    }

    public void setVideoPlayerStatusListener(k listener) {
        this.f82018s = listener;
    }

    public void a(int seek) {
        d dVar = this.f82005e;
        if (dVar != d.STATE_PAUSE && dVar != d.STATE_PREPARED && dVar != d.STATE_AUTO_COMPLETE && dVar != d.STATE_PLAYING) {
            this.f82007h = seek;
            return;
        }
        i iVar = this.f82001a;
        if (iVar == null) {
            return;
        }
        iVar.a(seek);
    }

    @Override // com.sigmob.sdk.videoplayer.h
    public void b(int what, int extra) {
        d dVar;
        SigmobLog.d("onInfo() called with: what = [" + what + "], extra = [" + extra + "]");
        if (what != 3) {
            if (what == 701) {
                dVar = d.STATE_BUFFERING_START;
            } else if (what != 702) {
                return;
            }
            setState(dVar);
        }
        if (!this.f82011l) {
            this.f82011l = true;
            this.f82012m.removeMessages(6000);
        }
        if (!this.f82010k) {
            return;
        } else {
            this.f82010k = false;
        }
        dVar = d.STATE_BUFFERING_END;
        setState(dVar);
    }

    public void c() {
        SigmobLog.d("onStateNormal stat" + this.f82005e + " [" + hashCode() + "] ");
        setState(d.STATE_NORMAL);
        i iVar = this.f82001a;
        if (iVar != null) {
            iVar.f();
        }
    }

    @Override // com.sigmob.sdk.videoplayer.h
    public void a(int what, int extra) {
        this.f82019t = what;
        this.f82020u = "" + extra;
        setState(d.STATE_ERROR);
    }

    @Override // com.sigmob.sdk.videoplayer.h
    public void c(int width, int height) {
        this.f82015p = height;
        this.f82016q = width;
        SigmobLog.d("onVideoSizeChanged  [" + hashCode() + "] ");
        l lVar = this.f82003c;
        if (lVar == null) {
            return;
        }
        float f10 = this.f82017r;
        if (f10 != 0.0f) {
            lVar.setRotation(f10);
        }
        this.f82003c.a(width, height);
    }

    public void a(g videoPlayerDataSource, int screen) {
        this.f82004d = videoPlayerDataSource;
        c();
    }
}
