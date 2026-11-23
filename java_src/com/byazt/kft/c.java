package com.byazt.kft;

import android.content.Context;
import android.graphics.Bitmap;
import android.graphics.SurfaceTexture;
import android.os.Handler;
import android.os.Looper;
import android.os.SystemClock;
import android.text.TextUtils;
import android.view.SurfaceHolder;
import android.view.View;
import android.view.ViewGroup;
import android.view.ViewTreeObserver;
import android.widget.FrameLayout;
import com.byazt.fk.sp;
import com.byazt.fk.u;
import com.byazt.ga.LottieAnimationView;
import com.byazt.ga.gt;
import com.byazt.ga.i;
import com.byazt.ga.uj;
import com.byazt.jzl.a;
import com.byazt.jzl.ve;
import com.byazt.nr.m;
import com.bykv.vk.component.ttvideo.player.MediaPlayer;
import java.util.HashMap;
import java.util.HashSet;
import java.util.Iterator;
import java.util.Map;
import java.util.Set;
import org.json.JSONObject;

/* JADX INFO: loaded from: classes6.dex */
@com.byazt.zqa.c(c = {0, 1, MediaPlayer.MEDIA_PLAYER_OPTION_VIDEOCODEC_PIXEL_ALIGN, 20})
public class c implements sp {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final com.byazt.jr.tt f16202a;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    public long f16204d;

    /* JADX INFO: renamed from: da, reason: collision with root package name */
    public LottieAnimationView f16205da;
    public boolean gr;
    public boolean gt;
    public boolean gu;

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    public int f16206h;

    /* JADX INFO: renamed from: i, reason: collision with root package name */
    public String f16207i;

    /* JADX INFO: renamed from: m, reason: collision with root package name */
    public final sp f16208m;

    /* JADX INFO: renamed from: n, reason: collision with root package name */
    public final int f16209n;

    /* JADX INFO: renamed from: nb, reason: collision with root package name */
    public ViewTreeObserverOnGlobalLayoutListenerC0358c f16210nb;
    public boolean nu;

    /* JADX INFO: renamed from: p, reason: collision with root package name */
    public boolean f16211p;
    public boolean qy;
    public sp.c rh;
    public boolean rl;
    public Bitmap sl;
    public final Context sp;
    public final String tt;
    public final int uj;
    public final long ve;

    /* JADX INFO: renamed from: x, reason: collision with root package name */
    public final com.byazt.jzl.tt f16214x;
    public final String yp;
    public boolean yv;

    /* JADX INFO: renamed from: z, reason: collision with root package name */
    public final JSONObject f16215z;

    /* JADX INFO: renamed from: zb, reason: collision with root package name */
    public boolean f16216zb;
    public boolean zm;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final String f16203c = "TTLottieFakeVideoPlayer";

    /* JADX INFO: renamed from: t, reason: collision with root package name */
    public final Map<String, Bitmap> f16212t = new HashMap();

    /* JADX INFO: renamed from: u, reason: collision with root package name */
    public final Map<String, Integer> f16213u = new HashMap();
    public final Set<sp.c> my = new HashSet();
    public volatile int md = 200;
    public float eo = 1.0f;
    public int or = 0;
    public int cu = 0;
    public final Handler pf = new Handler(Looper.getMainLooper());
    public final Runnable bx = new Runnable() { // from class: com.byazt.kft.c.5
        @Override // java.lang.Runnable
        public void run() {
            for (sp.c cVar : c.this.my) {
                c cVar2 = c.this;
                cVar.onPlayPositionUpdate(cVar2, cVar2.f16206h, c.this.getVideoDuration());
            }
            m.c("TTLottieFakeVideoPlayer", "--==--play curr: " + c.this.f16206h);
            if (c.this.f16206h < c.this.getVideoDuration()) {
                c.this.f16206h += c.this.md;
                c.this.pf.postDelayed(c.this.bx, c.this.md);
                return;
            }
            if (c.this.f16205da != null) {
                c.this.f16205da.a();
            }
            if (c.this.qy && !c.this.gr && c.this.f16208m != null && c.this.f16208m.isPlaying()) {
                c.this.f16208m.pause();
            }
            c.this.rl = false;
            c.this.gu = true;
            c.this.a();
            Iterator it2 = c.this.my.iterator();
            while (it2.hasNext()) {
                ((sp.c) it2.next()).onCompletion(c.this);
            }
        }
    };
    public long qp = SystemClock.elapsedRealtime();

    /* JADX INFO: renamed from: com.byazt.kft.c$c, reason: collision with other inner class name */
    @com.byazt.zqa.c(c = {0, 1, MediaPlayer.MEDIA_PLAYER_OPTION_VIDEOCODEC_PIXEL_ALIGN, 44})
    private class ViewTreeObserverOnGlobalLayoutListenerC0358c implements ViewTreeObserver.OnGlobalLayoutListener {
        public final ViewGroup tt;
        public int ve;

        @Override // android.view.ViewTreeObserver.OnGlobalLayoutListener
        public void onGlobalLayout() {
            int width = this.tt.getWidth();
            int height = this.tt.getHeight();
            this.tt.removeAllViews();
            int i10 = this.ve;
            this.ve = i10 - 1;
            if (i10 < 0) {
                this.tt.getViewTreeObserver().removeOnGlobalLayoutListener(this);
            }
            if (width <= 0 || height <= 0) {
                this.tt.addView(c.this.f16205da);
            } else {
                this.tt.getViewTreeObserver().removeOnGlobalLayoutListener(this);
                float f10 = width;
                float f11 = height;
                float f12 = f10 / f11;
                float f13 = c.this.f16209n > 0 ? c.this.uj / c.this.f16209n : f12;
                if (f13 <= 0.0f || f13 < f12) {
                    width = (int) (f11 * f13);
                } else {
                    height = (int) (f10 / f13);
                }
                FrameLayout.LayoutParams layoutParams = new FrameLayout.LayoutParams(width, height);
                layoutParams.gravity = 17;
                this.tt.addView(c.this.f16205da, layoutParams);
            }
            if (!c.this.gt || c.this.f16205da.n()) {
                return;
            }
            c.this.f16205da.c();
        }

        private ViewTreeObserverOnGlobalLayoutListenerC0358c(ViewGroup viewGroup) {
            this.ve = 10;
            this.tt = viewGroup;
        }
    }

    public c(com.byazt.jr.tt ttVar, com.byazt.cph.c cVar, sp spVar, a aVar, com.byazt.jzl.tt ttVar2) {
        this.sp = ttVar.getView().getContext();
        this.f16202a = ttVar;
        this.f16214x = ttVar2;
        this.ve = cVar.a();
        this.uj = cVar.uj();
        this.f16209n = cVar.n();
        String strVe = cVar.ve();
        this.yp = strVe;
        String strC = cVar.c();
        this.tt = strC;
        String strTt = cVar.tt();
        this.f16215z = cVar.sp();
        c(strC);
        tt(strVe);
        this.f16208m = spVar;
        c(strTt, aVar);
    }

    public static /* synthetic */ int gu(c cVar) {
        int i10 = cVar.cu;
        cVar.cu = i10 + 1;
        return i10;
    }

    public static /* synthetic */ int zm(c cVar) {
        int i10 = cVar.or;
        cVar.or = i10 + 1;
        return i10;
    }

    @Override // com.byazt.fk.sp
    public void addIVideoPlayerCallback(sp.c cVar) {
        this.my.add(cVar);
    }

    @Override // com.byazt.fk.sp
    public int getBufferCount() {
        m.c("TTLottieFakeVideoPlayer", "--==--getBufferCount: 1");
        return 1;
    }

    @Override // com.byazt.fk.sp
    public String getCodec() {
        return "";
    }

    @Override // com.byazt.fk.sp
    public long getCurrentPosition() {
        m.c("TTLottieFakeVideoPlayer", "--==--getCurrentPosition: " + this.f16206h);
        return this.f16206h;
    }

    @Override // com.byazt.fk.sp
    public SurfaceHolder getSurfaceHolder() {
        return null;
    }

    @Override // com.byazt.fk.sp
    public SurfaceTexture getSurfaceTexture() {
        return null;
    }

    @Override // com.byazt.fk.sp
    public long getTotalBufferTime() {
        if (!this.qy) {
            m.c("TTLottieFakeVideoPlayer", "--==--is not prepared, getTotalBufferTime: 0");
            return 0L;
        }
        m.c("TTLottieFakeVideoPlayer", "--==--getTotalBufferTime: " + this.qp);
        return this.qp;
    }

    @Override // com.byazt.fk.sp
    public int getUpdateProgressInterval() {
        return this.md;
    }

    @Override // com.byazt.fk.sp
    public long getVideoDuration() {
        return this.ve;
    }

    @Override // com.byazt.fk.sp
    public int getVideoHeight() {
        m.c("TTLottieFakeVideoPlayer", "--==--getVideoHeight: " + this.f16209n);
        return this.f16209n;
    }

    @Override // com.byazt.fk.sp
    public int getVideoWidth() {
        m.c("TTLottieFakeVideoPlayer", "--==--getVideoWidth: " + this.uj);
        return this.uj;
    }

    @Override // com.byazt.fk.sp
    public boolean isCompleted() {
        m.c("TTLottieFakeVideoPlayer", "--==--isCompleted: " + this.gu);
        return this.gu;
    }

    @Override // com.byazt.fk.sp
    public boolean isFirstFrameSuccess() {
        m.c("TTLottieFakeVideoPlayer", "--==--isFirstFrameSuccess: " + this.qy);
        return this.qy;
    }

    @Override // com.byazt.fk.sp
    public boolean isLooping() {
        return this.zm;
    }

    @Override // com.byazt.fk.sp
    public boolean isPaused() {
        boolean z10 = (this.rl || this.gu || this.gr || !this.qy) ? false : true;
        m.c("TTLottieFakeVideoPlayer", "--==--isPaused: ".concat(String.valueOf(z10)));
        return z10;
    }

    @Override // com.byazt.fk.sp
    public boolean isPlaying() {
        m.c("TTLottieFakeVideoPlayer", "--==--isPlaying: " + this.rl);
        return this.rl;
    }

    @Override // com.byazt.fk.sp
    public boolean isPrepared() {
        m.c("TTLottieFakeVideoPlayer", "--==--isPrepared: " + this.qy);
        return this.qy;
    }

    @Override // com.byazt.fk.sp
    public boolean isReleased() {
        m.c("TTLottieFakeVideoPlayer", "--==--isReleased: " + this.gr);
        return this.gr;
    }

    @Override // com.byazt.fk.sp
    public boolean isStarted() {
        m.c("TTLottieFakeVideoPlayer", "--==--isStarted: " + this.gt);
        return this.gt;
    }

    @Override // com.byazt.fk.sp
    public void pause() {
        x();
        com.byazt.qk.tt.tt(new Runnable() { // from class: com.byazt.kft.c.7
            @Override // java.lang.Runnable
            public void run() {
                Iterator it2 = c.this.my.iterator();
                while (it2.hasNext()) {
                    ((sp.c) it2.next()).onPause(c.this);
                }
            }
        });
    }

    @Override // com.byazt.fk.sp
    public void play() {
        sp();
        if (this.f16206h > 0) {
            com.byazt.qk.tt.tt(new Runnable() { // from class: com.byazt.kft.c.6
                @Override // java.lang.Runnable
                public void run() {
                    Iterator it2 = c.this.my.iterator();
                    while (it2.hasNext()) {
                        ((sp.c) it2.next()).onResume(c.this);
                    }
                }
            });
        }
    }

    @Override // com.byazt.fk.sp
    public void release() {
        m.c("TTLottieFakeVideoPlayer", "--==--release");
        this.gr = true;
        a();
        this.f16212t.clear();
        this.sl = null;
        sp spVar = this.f16208m;
        if (spVar != null) {
            if (this.qy) {
                spVar.stop();
            }
            this.f16208m.release();
        }
        com.byazt.qk.tt.tt(new Runnable() { // from class: com.byazt.kft.c.8
            @Override // java.lang.Runnable
            public void run() {
                ViewGroup viewGroup = (ViewGroup) c.this.f16202a.getView();
                if (viewGroup != null) {
                    viewGroup.getViewTreeObserver().removeOnGlobalLayoutListener(c.this.f16210nb);
                }
                Iterator it2 = c.this.my.iterator();
                while (it2.hasNext()) {
                    ((sp.c) it2.next()).onRelease(c.this);
                }
            }
        });
    }

    @Override // com.byazt.fk.sp
    public void removeIVideoPlayerCallback(sp.c cVar) {
        this.my.remove(cVar);
    }

    @Override // com.byazt.fk.sp
    public void reset() {
        sp spVar;
        m.c("TTLottieFakeVideoPlayer", "--==--reset");
        this.f16206h = 0;
        a();
        LottieAnimationView lottieAnimationView = this.f16205da;
        if (lottieAnimationView != null) {
            lottieAnimationView.a();
            this.f16205da.setProgress(0.0f);
        }
        if (!this.qy || this.gr || (spVar = this.f16208m) == null) {
            return;
        }
        if (spVar.isPlaying()) {
            this.f16208m.pause();
        }
        this.f16208m.seekTo(0L);
    }

    @Override // com.byazt.fk.sp
    public void restart() {
        m.c("TTLottieFakeVideoPlayer", "--==--reStart");
        a();
        this.f16206h = 0;
        this.qy = true;
        this.gu = false;
        this.gr = false;
        LottieAnimationView lottieAnimationView = this.f16205da;
        if (lottieAnimationView != null) {
            lottieAnimationView.a();
            this.f16205da.setProgress(0.0f);
        }
        play();
    }

    @Override // com.byazt.fk.sp
    public void seekTo(long j10) {
        m.c("TTLottieFakeVideoPlayer", "--==--seekTo: ".concat(String.valueOf(j10)));
        this.f16206h = (int) j10;
        LottieAnimationView lottieAnimationView = this.f16205da;
        if (lottieAnimationView != null) {
            long duration = lottieAnimationView.getDuration();
            if (duration <= 0) {
                duration = getVideoDuration();
            }
            if (duration > 0) {
                this.f16205da.setProgress((j10 % duration) / duration);
            }
        }
        sp spVar = this.f16208m;
        if (spVar != null && spVar.getVideoDuration() > 0) {
            this.f16208m.seekTo((int) (j10 % this.f16208m.getVideoDuration()));
        }
        c(true);
    }

    @Override // com.byazt.fk.sp
    public void setDataSource(u uVar) {
        m.c("TTLottieFakeVideoPlayer", "--==--setDataSource: ".concat(String.valueOf(uVar)));
    }

    @Override // com.byazt.fk.sp
    public void setDisplay(SurfaceHolder surfaceHolder) {
    }

    @Override // com.byazt.fk.sp
    public void setLoop(boolean z10) {
        m.c("TTLottieFakeVideoPlayer", "--==--setLoop:".concat(String.valueOf(z10)));
        this.zm = z10;
    }

    @Override // com.byazt.fk.sp
    public void setPlaySpeedRatio(float f10) {
        this.eo = f10;
    }

    @Override // com.byazt.fk.sp
    public void setQuietPlay(boolean z10) {
        m.c("TTLottieFakeVideoPlayer", "--==--setQuietPlay: ".concat(String.valueOf(z10)));
        this.f16216zb = z10;
        sp spVar = this.f16208m;
        if (spVar != null) {
            spVar.setQuietPlay(z10);
        }
    }

    @Override // com.byazt.fk.sp
    public void setSeekMode(int i10) {
        m.c("TTLottieFakeVideoPlayer", "--==--setSeekMode: ".concat(String.valueOf(i10)));
    }

    @Override // com.byazt.fk.sp
    public void setSurface(SurfaceTexture surfaceTexture) {
    }

    @Override // com.byazt.fk.sp
    public void setSurfaceValid(boolean z10) {
    }

    @Override // com.byazt.fk.sp
    public void setUpdateProgressInterval(int i10) {
        this.md = i10;
    }

    @Override // com.byazt.fk.sp
    public void start(boolean z10, long j10, boolean z11) {
        m.c("TTLottieFakeVideoPlayer", "--==--start: " + z10 + ", " + j10 + ", " + z11);
        this.f16216zb = z11;
        this.gt = true;
        this.f16204d = j10;
        this.f16208m.start(z10, j10, z11);
        if (this.qy) {
            this.f16208m.setQuietPlay(z11);
            this.f16208m.setLoop(true);
            if (j10 > 0) {
                c(j10);
            } else {
                play();
            }
        }
    }

    @Override // com.byazt.fk.sp
    public void stop() {
        sp spVar;
        m.c("TTLottieFakeVideoPlayer", "--==--stop");
        LottieAnimationView lottieAnimationView = this.f16205da;
        if (lottieAnimationView != null) {
            lottieAnimationView.a();
            this.gt = false;
        }
        if (this.qy && !this.gr && (spVar = this.f16208m) != null && spVar.isPlaying()) {
            this.f16208m.pause();
        }
        a();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void sp() {
        sp spVar;
        m.c("TTLottieFakeVideoPlayer", "--==--play");
        LottieAnimationView lottieAnimationView = this.f16205da;
        if (lottieAnimationView != null && this.qy && !lottieAnimationView.n()) {
            m.c("TTLottieFakeVideoPlayer", "--==--play --- enter");
            if (this.f16206h > 0) {
                this.f16205da.tt();
            } else {
                this.f16205da.c();
            }
        }
        if (this.qy && !this.gr && (spVar = this.f16208m) != null && !spVar.isPlaying()) {
            m.c("TTLottieFakeVideoPlayer", "--==--audio play --- enter");
            if (this.f16206h > 0) {
                this.f16208m.play();
            } else {
                this.f16208m.seekTo(0L);
                this.f16208m.play();
            }
        }
        this.rl = true;
        n();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void x() {
        sp spVar;
        m.c("TTLottieFakeVideoPlayer", "--==--pause");
        LottieAnimationView lottieAnimationView = this.f16205da;
        if (lottieAnimationView != null && this.qy && lottieAnimationView.n()) {
            m.c("TTLottieFakeVideoPlayer", "--==--pause --- enter");
            this.f16205da.sp();
        }
        if (this.qy && !this.gr && (spVar = this.f16208m) != null && spVar.isPlaying()) {
            m.c("TTLottieFakeVideoPlayer", "--==--audio pause --- enter");
            this.f16208m.pause();
        }
        this.rl = false;
        a();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void a() {
        this.pf.removeCallbacksAndMessages(null);
    }

    private void n() {
        this.pf.removeCallbacksAndMessages(null);
        this.pf.post(this.bx);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void uj() {
        com.byazt.qk.tt.tt(new Runnable() { // from class: com.byazt.kft.c.2
            @Override // java.lang.Runnable
            public void run() {
                m.c("TTLottieFakeVideoPlayer", "--==--audio buffering end");
                c.this.f16211p = false;
                if (c.this.isPaused()) {
                    c.this.sp();
                }
                Iterator it2 = c.this.my.iterator();
                while (it2.hasNext()) {
                    ((sp.c) it2.next()).onBufferEnd(c.this, -1);
                }
            }
        });
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void ve() {
        com.byazt.qk.tt.tt(new Runnable() { // from class: com.byazt.kft.c.15
            @Override // java.lang.Runnable
            public void run() {
                if (!c.this.f16211p) {
                    m.c("TTLottieFakeVideoPlayer", "--==--audio buffering start");
                    if (c.this.isPlaying()) {
                        c.this.x();
                    }
                    Iterator it2 = c.this.my.iterator();
                    while (it2.hasNext()) {
                        ((sp.c) it2.next()).onBufferStart(c.this, -1, -1, -1);
                    }
                }
                c.this.f16211p = true;
            }
        });
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void tt() {
        com.byazt.qk.tt.c(new Runnable() { // from class: com.byazt.kft.c.9
            @Override // java.lang.Runnable
            public void run() {
                if (c.this.sl == null || c.this.f16207i == null || !c.this.nu || c.this.f16205da != null) {
                    return;
                }
                c.this.f16205da = new LottieAnimationView(c.this.sp);
                c.this.f16205da.setVideoStats(c.this.f16214x);
                c.this.f16205da.setRepeatCount(-1);
                c.this.f16205da.setSpeed(c.this.eo);
                c.this.f16205da.setImageAssetDelegate(new uj() { // from class: com.byazt.kft.c.9.1
                    @Override // com.byazt.ga.uj
                    public Bitmap c(i iVar) {
                        if (iVar != null) {
                            String strU = iVar.u();
                            if (!TextUtils.isEmpty(strU)) {
                                if (strU.startsWith("${") && strU.endsWith("}")) {
                                    strU = com.byazt.qk.c.c(strU, c.this.f16215z);
                                    if (TextUtils.isEmpty(strU)) {
                                        return null;
                                    }
                                    if (!strU.startsWith("http") || TextUtils.equals(strU, c.this.yp)) {
                                        Bitmap bitmap = c.this.sl;
                                        if (bitmap != null && (bitmap.getWidth() != iVar.c() || bitmap.getHeight() != iVar.tt())) {
                                            c.this.sl = Bitmap.createScaledBitmap(bitmap, iVar.c(), iVar.tt(), false);
                                        }
                                        return c.this.sl;
                                    }
                                }
                                Bitmap bitmap2 = (Bitmap) c.this.f16212t.get(strU);
                                if (bitmap2 != null) {
                                    return bitmap2;
                                }
                                c.this.c(strU, iVar.c(), iVar.tt());
                            }
                        }
                        return null;
                    }
                });
                c.this.f16205da.setTextDelegate(new gt(c.this.f16205da) { // from class: com.byazt.kft.c.9.2
                    @Override // com.byazt.ga.gt
                    public String c(String str) {
                        return com.byazt.qk.c.c(str, c.this.f16215z != null ? c.this.f16215z : null);
                    }
                });
                c.this.f16205da.c(c.this.f16207i, c.this.tt);
                c.this.c();
                c.this.qy = true;
                m.c("TTLottieFakeVideoPlayer", "--==--onPrepared");
                c.this.qp = SystemClock.elapsedRealtime() - c.this.qp;
                for (sp.c cVar : c.this.my) {
                    cVar.onPrepared(c.this);
                    c cVar2 = c.this;
                    cVar.onVideoSizeChanged(cVar2, cVar2.uj, c.this.f16209n);
                }
                if (c.this.gt) {
                    c.this.f16208m.setQuietPlay(c.this.f16216zb);
                    c.this.f16208m.setLoop(true);
                    if (c.this.f16204d > 0) {
                        c cVar3 = c.this;
                        cVar3.c(cVar3.f16204d);
                    } else {
                        c.this.play();
                    }
                }
                for (sp.c cVar4 : c.this.my) {
                    c cVar5 = c.this;
                    cVar4.onRenderStart(cVar5, cVar5.qp);
                }
            }
        });
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void tt(final String str) {
        if (TextUtils.isEmpty(str)) {
            c(new ve(60008, 10002, "广告主图url为空"));
        } else {
            com.byazt.cph.tt.c().tt(str, new com.byazt.cph.tt.c<Bitmap>() { // from class: com.byazt.kft.c.11
                @Override // com.byazt.cph.tt.c
                public void c(Bitmap bitmap) {
                    c.this.sl = bitmap;
                    c.this.tt();
                }

                @Override // com.byazt.cph.tt.c
                public void c(int i10, String str2) {
                    c.zm(c.this);
                    if (c.this.or <= 3) {
                        c.this.tt(str);
                    } else {
                        c.this.c(new ve(60008, 10003, "广告主图url加载失败"));
                    }
                }
            });
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void c() {
        final ViewGroup viewGroup = (ViewGroup) this.f16202a.getView();
        viewGroup.removeAllViews();
        viewGroup.addView(this.f16205da);
        this.f16210nb = new ViewTreeObserverOnGlobalLayoutListenerC0358c(viewGroup);
        viewGroup.getViewTreeObserver().addOnGlobalLayoutListener(this.f16210nb);
        viewGroup.addOnAttachStateChangeListener(new View.OnAttachStateChangeListener() { // from class: com.byazt.kft.c.1
            @Override // android.view.View.OnAttachStateChangeListener
            public void onViewAttachedToWindow(View view) {
            }

            @Override // android.view.View.OnAttachStateChangeListener
            public void onViewDetachedFromWindow(View view) {
                ViewGroup viewGroup2 = viewGroup;
                if (viewGroup2 == view) {
                    viewGroup2.getViewTreeObserver().removeOnGlobalLayoutListener(c.this.f16210nb);
                    viewGroup.removeOnAttachStateChangeListener(this);
                }
            }
        });
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void c(final String str) {
        if (TextUtils.isEmpty(str)) {
            c(new ve(60008, 10000, "lottieJsonUrl为空"));
        } else {
            com.byazt.qk.tt.ve(new Runnable() { // from class: com.byazt.kft.c.10
                @Override // java.lang.Runnable
                public void run() {
                    String strC = com.byazt.cph.tt.c().c(str);
                    if (TextUtils.isEmpty(strC)) {
                        com.byazt.cph.tt.c().c(str, new com.byazt.cph.tt.c<String>() { // from class: com.byazt.kft.c.10.1
                            @Override // com.byazt.cph.tt.c
                            public void c(String str2) {
                                m.c("TTLottieFakeVideoPlayer", "--==-- lottie jsonStr ok");
                                c.this.f16207i = str2;
                                c.this.tt();
                            }

                            @Override // com.byazt.cph.tt.c
                            public void c(int i10, String str2) {
                                m.c("TTLottieFakeVideoPlayer", "--==-- lottie jsonStr load fail: " + i10 + ", " + str2);
                                if (i10 == 10006) {
                                    c.this.c(new ve(60008, i10, str2));
                                    return;
                                }
                                c.gu(c.this);
                                if (c.this.cu <= 3) {
                                    AnonymousClass10 anonymousClass10 = AnonymousClass10.this;
                                    c.this.c(str);
                                } else {
                                    c.this.c(new ve(60008, i10, str2));
                                }
                            }
                        });
                    } else {
                        c.this.f16207i = strC;
                        c.this.tt();
                    }
                }
            });
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void c(final String str, final int i10, final int i11) {
        Integer num = this.f16213u.get(str);
        if (num == null || num.intValue() != 1) {
            this.f16213u.put(str, 1);
            this.f16205da.c(str, new com.byazt.rs.i() { // from class: com.byazt.kft.c.12
                @Override // com.byazt.rs.i
                public void c(Bitmap bitmap) {
                    c.this.c(bitmap, str, i10, i11);
                }

                @Override // com.byazt.rs.i
                public void c() {
                    com.byazt.cph.tt.c().c(c.this.sp, str, new com.byazt.cph.tt.c<Bitmap>() { // from class: com.byazt.kft.c.12.1
                        @Override // com.byazt.cph.tt.c
                        public void c(Bitmap bitmap) {
                            AnonymousClass12 anonymousClass12 = AnonymousClass12.this;
                            c.this.c(bitmap, str, i10, i11);
                        }

                        @Override // com.byazt.cph.tt.c
                        public void c(int i12, String str2) {
                            c.this.f16213u.put(str, 2);
                        }
                    });
                }
            });
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void c(Bitmap bitmap, String str, int i10, int i11) {
        if (bitmap != null) {
            if (bitmap.getWidth() != i10 || bitmap.getHeight() != i11) {
                bitmap = Bitmap.createScaledBitmap(bitmap, i10, i11, false);
            }
            this.f16212t.put(str, bitmap);
            com.byazt.qk.tt.c(new Runnable() { // from class: com.byazt.kft.c.13
                @Override // java.lang.Runnable
                public void run() {
                    if (c.this.f16205da != null) {
                        c.this.f16205da.invalidate();
                    }
                }
            });
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void c(final ve veVar) {
        com.byazt.qk.tt.tt(new Runnable() { // from class: com.byazt.kft.c.14
            @Override // java.lang.Runnable
            public void run() {
                if (!c.this.yv) {
                    m.c("TTLottieFakeVideoPlayer", "--==--play err, code: " + veVar.getCode() + ", extra: " + veVar.getExtraCode() + ", msg: " + veVar.getMsg());
                    Iterator it2 = c.this.my.iterator();
                    while (it2.hasNext()) {
                        ((sp.c) it2.next()).onError(c.this, veVar);
                    }
                }
                c.this.yv = true;
            }
        });
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void c(final int i10) {
        com.byazt.qk.tt.tt(new Runnable() { // from class: com.byazt.kft.c.16
            @Override // java.lang.Runnable
            public void run() {
                Iterator it2 = c.this.my.iterator();
                while (it2.hasNext()) {
                    ((sp.c) it2.next()).onBufferingUpdate(c.this, i10);
                }
            }
        });
    }

    private void c(final boolean z10) {
        com.byazt.qk.tt.tt(new Runnable() { // from class: com.byazt.kft.c.3
            @Override // java.lang.Runnable
            public void run() {
                m.c("TTLottieFakeVideoPlayer", "--==--seek completed");
                Iterator it2 = c.this.my.iterator();
                while (it2.hasNext()) {
                    ((sp.c) it2.next()).onSeekCompletion(c.this, z10);
                }
            }
        });
    }

    private void c(String str, a aVar) {
        if (TextUtils.isEmpty(str)) {
            c(new ve(60008, 10004, "lottie音频url为空"));
            return;
        }
        sp.c cVar = new sp.c() { // from class: com.byazt.kft.c.4
            @Override // com.byazt.fk.sp.c
            public void onBufferEnd(sp spVar, int i10) {
                c.this.uj();
            }

            @Override // com.byazt.fk.sp.c
            public void onBufferStart(sp spVar, int i10, int i11, int i12) {
                c.this.ve();
            }

            @Override // com.byazt.fk.sp.c
            public void onBufferingUpdate(sp spVar, int i10) {
                c.this.c(i10);
            }

            @Override // com.byazt.fk.sp.c
            public void onCompletion(sp spVar) {
            }

            @Override // com.byazt.fk.sp.c
            public void onError(sp spVar, com.byazt.fk.ve veVar) {
                int code;
                String msg;
                int extraCode;
                if (veVar != null) {
                    code = veVar.getCode();
                    extraCode = veVar.getExtraCode();
                    msg = veVar.getMsg();
                } else {
                    code = -1;
                    msg = "";
                    extraCode = -1;
                }
                c.this.c(new ve(code, extraCode, "lottie音频播放失败:".concat(String.valueOf(msg))));
            }

            @Override // com.byazt.fk.sp.c
            public void onMonitorLog(sp spVar, JSONObject jSONObject, String str2) {
            }

            @Override // com.byazt.fk.sp.c
            public void onPause(sp spVar) {
            }

            @Override // com.byazt.fk.sp.c
            public void onPlayPositionUpdate(sp spVar, long j10, long j11) {
            }

            @Override // com.byazt.fk.sp.c
            public void onPrepared(sp spVar) {
                c.this.nu = true;
                c.this.tt();
            }

            @Override // com.byazt.fk.sp.c
            public void onRelease(sp spVar) {
            }

            @Override // com.byazt.fk.sp.c
            public void onRenderStart(sp spVar, long j10) {
            }

            @Override // com.byazt.fk.sp.c
            public void onResume(sp spVar) {
            }

            @Override // com.byazt.fk.sp.c
            public void onSeekCompletion(sp spVar, boolean z10) {
            }

            @Override // com.byazt.fk.sp.c
            public void onStart(sp spVar) {
                for (sp.c cVar2 : c.this.my) {
                    if (cVar2 != null) {
                        cVar2.onStart(c.this);
                    }
                }
            }

            @Override // com.byazt.fk.sp.c
            public void onVideoSizeChanged(sp spVar, int i10, int i11) {
            }
        };
        this.rh = cVar;
        this.f16208m.addIVideoPlayerCallback(cVar);
        this.f16208m.setDataSource(aVar);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void c(long j10) {
        LottieAnimationView lottieAnimationView = this.f16205da;
        if (lottieAnimationView != null) {
            lottieAnimationView.c();
        }
        seekTo(j10);
        sp spVar = this.f16208m;
        if (spVar != null) {
            spVar.play();
        }
        this.rl = true;
        n();
    }
}
