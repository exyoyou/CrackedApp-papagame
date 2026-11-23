package com.byazt.un;

import android.R;
import android.annotation.SuppressLint;
import android.app.Activity;
import android.content.Context;
import android.content.Intent;
import android.content.res.Resources;
import android.graphics.Bitmap;
import android.graphics.Color;
import android.graphics.Matrix;
import android.graphics.drawable.BitmapDrawable;
import android.graphics.drawable.ClipDrawable;
import android.graphics.drawable.Drawable;
import android.graphics.drawable.GradientDrawable;
import android.graphics.drawable.LayerDrawable;
import android.os.Build;
import android.text.TextUtils;
import android.util.TypedValue;
import android.view.SurfaceView;
import android.view.TextureView;
import android.view.View;
import android.view.ViewGroup;
import android.widget.ImageView;
import android.widget.RelativeLayout;
import com.byazt.aas.nb;
import com.byazt.aas.pf;
import com.byazt.afw.nu;
import com.byazt.bzd.t;
import com.byazt.dna.u;
import com.byazt.ete.ic;
import com.byazt.ete.j;
import com.byazt.ete.xd;
import com.byazt.ff.TTProgressBar;
import com.byazt.ga.LottieAnimationView;
import com.byazt.kft.UpieVideoView;
import com.byazt.lbn.TTViewStub;
import com.byazt.nr.d;
import com.byazt.nr.da;
import com.byazt.nr.m;
import com.byazt.nr.rh;
import com.byazt.omf.gt;
import com.byazt.omf.p;
import com.byazt.omf.x;
import com.byazt.omf.zb;
import com.byazt.sgn.z;
import com.byazt.ukr.yp;
import com.byazt.wol.LayoutVideoDetail;
import com.bykv.vk.component.ttvideo.player.MediaPlayer;
import com.bytedance.android.metrics.LiveMetrics;
import java.lang.ref.WeakReference;
import java.util.EnumSet;
import java.util.List;
import java.util.Map;
import org.json.JSONArray;
import org.json.JSONObject;

/* JADX INFO: loaded from: classes6.dex */
@com.byazt.zqa.c(c = {0, 1, 96, 15})
public class uj extends com.byazt.nj.c {
    public int bm;
    public boolean cu;
    public com.byazt.dh.ve.c eo;

    /* JADX INFO: renamed from: hd, reason: collision with root package name */
    public WeakReference<c> f20841hd;

    /* JADX INFO: renamed from: ic, reason: collision with root package name */
    public WeakReference<com.byazt.dh.ve.uj> f20842ic;
    public int kp;
    public int lr;
    public long lt;
    public ViewGroup md;

    /* JADX INFO: renamed from: nb, reason: collision with root package name */
    public WeakReference<com.byazt.dh.ve.tt> f20844nb;
    public String or;
    public long oz;
    public boolean qp;

    /* JADX INFO: renamed from: s, reason: collision with root package name */
    public int f20848s;
    public Map<String, Object> tk;
    public int to;

    /* JADX INFO: renamed from: zb, reason: collision with root package name */
    public final boolean f20851zb;

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    public long f20840h = 0;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    public long f20839d = 0;
    public boolean pf = false;
    public boolean bx = false;
    public boolean sv = true;
    public volatile boolean aw = false;

    /* JADX INFO: renamed from: l, reason: collision with root package name */
    public int f20843l = 0;
    public boolean lo = false;
    public boolean pu = true;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public boolean f20838b = false;

    /* JADX INFO: renamed from: q, reason: collision with root package name */
    public boolean f20846q = false;
    public boolean kk = false;
    public boolean tx = false;

    /* JADX INFO: renamed from: v, reason: collision with root package name */
    public com.byazt.fk.sp.c f20849v = new com.byazt.fk.sp.c() { // from class: com.byazt.un.uj.1
        @Override // com.byazt.fk.sp.c
        public void onBufferEnd(com.byazt.fk.sp spVar, int i10) {
            uj.this.f17368c.post(new Runnable() { // from class: com.byazt.un.uj.1.8
                @Override // java.lang.Runnable
                public void run() {
                    if (uj.this.f17372n != null) {
                        uj.this.f17372n.tt();
                    }
                    uj.this.f17368c.removeCallbacks(uj.this.f20845p);
                    uj.this.lo = false;
                }
            });
        }

        @Override // com.byazt.fk.sp.c
        public void onBufferStart(com.byazt.fk.sp spVar, int i10, int i11, int i12) {
            com.byazt.rgb.ve.uj(uj.this.tx());
            uj.this.f17368c.post(new Runnable() { // from class: com.byazt.un.uj.1.7
                @Override // java.lang.Runnable
                public void run() {
                    if (uj.this.f17372n != null) {
                        uj.this.f17372n.gu();
                        uj.this.f17368c.postDelayed(uj.this.f20845p, 8000L);
                        uj.this.lo = true;
                    }
                }
            });
        }

        @Override // com.byazt.fk.sp.c
        public void onBufferingUpdate(com.byazt.fk.sp spVar, int i10) {
        }

        @Override // com.byazt.fk.sp.c
        public void onCompletion(com.byazt.fk.sp spVar) {
            com.byazt.rgb.ve.a(uj.this.tx());
            uj.this.f17368c.post(new Runnable() { // from class: com.byazt.un.uj.1.1
                @Override // java.lang.Runnable
                public void run() {
                    uj.this.hd();
                }
            });
            uj.this.c(4);
            uj.this.tt(4);
        }

        @Override // com.byazt.fk.sp.c
        public void onError(com.byazt.fk.sp spVar, final com.byazt.fk.ve veVar) {
            com.byazt.rgb.ve.ve(uj.this.tx(), 1);
            uj.this.f17368c.post(new Runnable() { // from class: com.byazt.un.uj.1.4
                /* JADX WARN: Code duplicated, block: B:27:0x00d6  */
                /* JADX WARN: Code duplicated, block: B:30:0x00eb  */
                @Override // java.lang.Runnable
                public void run() {
                    int code = veVar.getCode();
                    int extraCode = veVar.getExtraCode();
                    uj.this.c(code, extraCode, veVar.getMsg(), (JSONArray) null);
                    m.uj("NativeVideoController", "CALLBACK_ON_ERROR、、before isVideoPlaying、、、、、");
                    if (!uj.this.bx() || extraCode == -1004) {
                        m.uj("NativeVideoController", "出错后 errorcode,extra、、、、、、、" + code + "," + extraCode);
                        if (!uj.this.uj(code, extraCode) && !com.byazt.ex.c.c(uj.this.f17367a)) {
                            if (code == 1 && (extraCode == -19 || extraCode == -38)) {
                                if (uj.this.f17372n != null) {
                                    uj.this.f17372n.c2(uj.this.f17367a, uj.this.f17370i, false);
                                }
                            }
                            if (uj.this.f17372n != null) {
                                uj.this.f17372n.tt();
                            }
                            if (uj.this.eo != null) {
                                uj.this.eo.tt(uj.this.f20839d, com.byazt.vv.c.c(uj.this.sp, uj.this.f17371m));
                            }
                            if (uj.this.f20842ic != null || uj.this.f20842ic.get() == null || uj.this.bx()) {
                                return;
                            }
                            ((com.byazt.dh.ve.uj) uj.this.f20842ic.get()).onVideoError(code, extraCode);
                            return;
                        }
                        m.uj("NativeVideoController", "出错后展示结果页、、、、、、、");
                        if (uj.this.f17372n != null) {
                            uj.this.f17372n.c2(uj.this.f17367a, uj.this.f17370i, false);
                        }
                        uj.this.ve(true);
                        uj.this.da();
                        if (uj.this.f17372n != null) {
                            uj.this.f17372n.tt();
                        }
                        if (uj.this.eo != null) {
                            uj.this.eo.tt(uj.this.f20839d, com.byazt.vv.c.c(uj.this.sp, uj.this.f17371m));
                        }
                        if (uj.this.f20842ic != null) {
                        }
                    }
                }
            });
            uj.this.c(veVar.getCode(), veVar.getMsg());
        }

        @Override // com.byazt.fk.sp.c
        public void onMonitorLog(com.byazt.fk.sp spVar, JSONObject jSONObject, String str) {
            if (x.m().hd()) {
                jSONObject.optString("start");
                jSONObject.optString("sdk_dns_analysis_end");
                jSONObject.optString("player_dns_analysis_end");
                jSONObject.optString("tcp_connect_end");
                jSONObject.optString("tcp_first_package_end");
                jSONObject.optString("first_video_package_end");
                jSONObject.optString("first_frame_video_decode_end");
                jSONObject.optString("first_frame_render_end");
                jSONObject.optLong("first_frame_render_end");
                jSONObject.optLong("start");
            }
            com.byazt.ddx.uj.c((Context) uj.this.f17370i.get(), uj.this.f17367a, uj.this.or, "pangle_live_sdk_monitor", jSONObject);
        }

        @Override // com.byazt.fk.sp.c
        public void onPause(com.byazt.fk.sp spVar) {
            uj.this.kk = true;
            com.byazt.rgb.ve.n(uj.this.tx());
        }

        @Override // com.byazt.fk.sp.c
        public void onPlayPositionUpdate(com.byazt.fk.sp spVar, final long j10, final long j11) {
            if (uj.this.kk && uj.this.tx) {
                uj.this.kk = false;
                uj.this.tx = false;
                com.byazt.rgb.ve.tt(uj.this.tx(), 2);
            }
            if (Math.abs(j10 - uj.this.sp) < 50) {
                return;
            }
            uj.this.f17368c.post(new Runnable() { // from class: com.byazt.un.uj.1.9
                @Override // java.lang.Runnable
                public void run() {
                    if (uj.this.gu != null) {
                        uj.this.gu.c(j10, j11);
                    }
                    uj.this.c(j10, j11);
                    uj.this.tt(j10, j11);
                }
            });
        }

        @Override // com.byazt.fk.sp.c
        public void onPrepared(com.byazt.fk.sp spVar) {
            if (!uj.this.f20846q) {
                uj.this.f20846q = true;
                com.byazt.rgb.ve.ve(uj.this.tx());
            }
            if (com.byazt.ex.c.c(uj.this.f17367a)) {
                uj.this.f17367a.ve(spVar.getCodec());
            }
            if (!uj.this.f20851zb || t.c(uj.this.f17367a)) {
                uj.this.pu();
            }
            uj.this.f17368c.post(new Runnable() { // from class: com.byazt.un.uj.1.3
                @Override // java.lang.Runnable
                public void run() {
                    if (uj.this.f20842ic != null && uj.this.f20842ic.get() != null) {
                        ((com.byazt.dh.ve.uj) uj.this.f20842ic.get()).onVideoLoad();
                    }
                    if (uj.this.f17372n != null && (!uj.this.lt() || !gt.tt().pe())) {
                        uj.this.f17372n.tt();
                    }
                    uj.this.f17368c.removeCallbacks(uj.this.f20845p);
                }
            });
        }

        @Override // com.byazt.fk.sp.c
        public void onRelease(com.byazt.fk.sp spVar) {
            com.byazt.rgb.ve.ve(uj.this.tx(), 2);
            uj.this.b();
        }

        @Override // com.byazt.fk.sp.c
        public void onRenderStart(com.byazt.fk.sp spVar, long j10) {
            if (!uj.this.f20838b) {
                uj.this.f20838b = true;
                com.byazt.rgb.ve.tt(uj.this.tx(), 1);
            }
            uj.this.f17368c.post(new Runnable() { // from class: com.byazt.un.uj.1.2
                @Override // java.lang.Runnable
                public void run() {
                    if (uj.this.f17372n != null) {
                        if (uj.this.lt() && gt.tt().pe()) {
                            uj.this.f17372n.p();
                        } else {
                            uj.this.f17372n.tt();
                        }
                        uj.this.f17368c.removeCallbacks(uj.this.f20845p);
                        uj.this.lo = false;
                    }
                    if (uj.this.f20841hd != null && uj.this.f20841hd.get() != null) {
                        ((c) uj.this.f20841hd.get()).I_();
                    }
                    uj.this.f17368c.removeCallbacks(uj.this.f20845p);
                }
            });
            uj.this.pu();
            uj.this.lt = System.currentTimeMillis();
            uj.this.kk();
        }

        @Override // com.byazt.fk.sp.c
        public void onResume(com.byazt.fk.sp spVar) {
            uj.this.tx = true;
        }

        @Override // com.byazt.fk.sp.c
        public void onSeekCompletion(com.byazt.fk.sp spVar, boolean z10) {
            uj.this.f17368c.post(new Runnable() { // from class: com.byazt.un.uj.1.5
                @Override // java.lang.Runnable
                public void run() {
                    if (uj.this.f17372n != null) {
                        uj.this.f17372n.tt();
                    }
                }
            });
        }

        @Override // com.byazt.fk.sp.c
        public void onStart(com.byazt.fk.sp spVar) {
        }

        @Override // com.byazt.fk.sp.c
        public void onVideoSizeChanged(com.byazt.fk.sp spVar, final int i10, final int i11) {
            uj.this.f17368c.post(new Runnable() { // from class: com.byazt.un.uj.1.6
                @Override // java.lang.Runnable
                public void run() {
                    uj.this.tt(i10, i11);
                }
            });
        }
    };
    public int os = 0;

    /* JADX INFO: renamed from: p, reason: collision with root package name */
    public Runnable f20845p = new Runnable() { // from class: com.byazt.un.uj.6
        @Override // java.lang.Runnable
        public void run() {
            if (uj.this.f17372n != null) {
                uj.this.f17372n.c2(uj.this.f17367a, uj.this.f17370i, false);
                uj.this.f17372n.tt();
                uj.this.ve(true);
                m.uj("NativeVideoController", "出错后展示结果页、、、、、、、showAdCard");
            }
        }
    };

    /* JADX INFO: renamed from: r, reason: collision with root package name */
    public final com.byazt.fn.ve f20847r = new com.byazt.fn.ve() { // from class: com.byazt.un.uj.8
        @Override // com.byazt.fn.ve
        public void onNetworkChanged(Context context, Intent intent, boolean z10, int i10) {
            uj.this.ve(context, i10);
        }
    };

    /* JADX INFO: renamed from: y, reason: collision with root package name */
    public boolean f20850y = false;

    /* JADX INFO: renamed from: com.byazt.un.uj$2, reason: invalid class name */
    @com.byazt.zqa.c(c = {0, 1, 96, 97})
    static /* synthetic */ class AnonymousClass2 {

        /* JADX INFO: renamed from: c, reason: collision with root package name */
        public static final /* synthetic */ int[] f20863c;

        static {
            int[] iArr = new int[z.c.values().length];
            f20863c = iArr;
            try {
                iArr[z.c.PAUSE_VIDEO.ordinal()] = 1;
            } catch (NoSuchFieldError unused) {
            }
            try {
                f20863c[z.c.RELEASE_VIDEO.ordinal()] = 2;
            } catch (NoSuchFieldError unused2) {
            }
            try {
                f20863c[z.c.START_VIDEO.ordinal()] = 3;
            } catch (NoSuchFieldError unused3) {
            }
        }
    }

    public interface c {
        void I_();

        void c(int i10);

        void i();
    }

    public uj(Context context, ViewGroup viewGroup, ic icVar, String str, boolean z10, boolean z11, boolean z12) {
        this.or = com.byazt.dyf.tt.AD_TAG_FEED;
        this.cu = false;
        this.qp = true;
        this.bm = 0;
        this.lr = 0;
        this.f20848s = 1;
        this.f20848s = rh.ve(context);
        c(z10);
        this.or = str;
        try {
            this.bm = viewGroup.getWidth();
            this.lr = viewGroup.getHeight();
        } catch (Throwable unused) {
        }
        this.md = viewGroup;
        this.f17370i = new WeakReference<>(context);
        this.f17367a = icVar;
        c(context);
        this.f20851zb = true;
        this.cu = z11;
        this.qp = z12;
    }

    public void finalize() throws Throwable {
        super.finalize();
        com.byazt.rgb.ve.ve(tx(), 3);
    }

    @Override // com.byazt.nj.c, com.byazt.dh.ve
    public boolean n() {
        return false;
    }

    @Override // com.byazt.nj.c
    public boolean p() {
        return true;
    }

    @Override // com.byazt.nj.c, com.byazt.dh.ve
    public boolean uj() {
        return false;
    }

    @Override // com.byazt.dh.ve
    public boolean ve() {
        return false;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void b() {
        a aVar;
        if (!this.aw || (aVar = this.f17372n) == null || aVar.ve() == null) {
            return;
        }
        this.aw = false;
        this.f17372n.ve().post(new Runnable() { // from class: com.byazt.un.uj.7
            @Override // java.lang.Runnable
            public void run() {
                if (uj.this.qy == null) {
                    return;
                }
                uj.this.qy.setCid(uj.this.f17367a.uj());
                uj.this.qy.setWidth(uj.this.bm);
                uj.this.qy.setHeight(uj.this.lr);
                uj.this.qy.setPlayTrackUrls(null);
                uj.this.qy.setLogExtra(uj.this.f17367a.w_());
                uj.this.qy.setCurrent(0L);
                uj.this.qy.setQuiet(uj.this.my());
                uj.this.qy.setCacheParentDir(uj.this.qy.getCacheParentDir());
                uj ujVar = uj.this;
                ujVar.c(ujVar.qy);
                uj.this.ve(false);
            }
        });
    }

    private boolean bm() {
        return this.os > 0 && nb.ve(this.f17367a);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void hd() {
        a aVar;
        this.os++;
        if (md() && (aVar = this.f17372n) != null) {
            aVar.tt();
            com.byazt.dh.ve.c cVar = this.eo;
            if (cVar != null) {
                cVar.c(this.f20839d, com.byazt.vv.c.c(this.sp, this.f17371m));
            }
            this.f20839d = System.currentTimeMillis() - this.f20840h;
            this.f17372n.n(true);
            boolean zC = com.byazt.ex.c.c(this.f17367a);
            int iMm = this.f17367a.mm();
            boolean z10 = iMm <= 0;
            boolean z11 = !z10 && this.os >= iMm;
            boolean zVe = nb.ve(this.f17367a);
            if (!zVe || z11 || zC) {
                this.f17372n.c2(this.f17367a, this.f17370i, true);
            }
            if (!this.rl.c(64) || bm() || lr()) {
                this.rl.ve(64);
                long j10 = this.f17371m;
                tt(j10, j10);
                long j11 = this.f17371m;
                this.sp = j11;
                this.f17376x = j11;
                nu.c cVar2 = new nu.c();
                cVar2.c(sl());
                cVar2.ve(yp());
                cVar2.tt(t());
                cVar2.a(u());
                com.byazt.sw.uj.uj(this.f17372n, cVar2);
            }
            if (!this.f17374t && this.gt) {
                n(this.f17372n, (View) null);
            }
            this.my = true;
            if (zC) {
                return;
            }
            if (zVe && (z10 || this.os < iMm)) {
                zm();
                return;
            }
            if (!(t.c(this.f17367a) && (((yp() / 1000) > 10L ? 1 : ((yp() / 1000) == 10L ? 0 : -1)) < 0)) || this.os >= 2) {
                return;
            }
            zm();
        }
    }

    private boolean ic() {
        int i10;
        com.byazt.fk.sp ujVar;
        ic icVar = this.f17367a;
        if (com.byazt.ic.c.tt(icVar)) {
            com.byazt.jr.tt ttVarGu = gu();
            if (ttVarGu == null) {
                if (this.f20849v != null) {
                    StringBuilder sb2 = new StringBuilder("创建lottie播放器时，iRenderView为null, mediaLayout is null: ");
                    sb2.append(this.f17372n == null);
                    this.f20849v.onError(null, new com.byazt.jzl.ve(60008, 10005, sb2.toString()));
                }
                m.uj("tag_video_play", "[video] invoke NativeVideoController#playVideo error: iRenderView为null");
                return false;
            }
            int iSl = nb.sl(this.f17367a);
            this.zm = c("ad");
            this.uj = new com.byazt.kft.c(ttVarGu, com.byazt.ic.c.i(icVar), new com.byazt.ts.uj(String.valueOf(iSl), this.zm), xd.rh(icVar), c("assist"));
            i10 = 1;
        } else if (com.byazt.ic.c.ve(icVar)) {
            com.byazt.jr.tt ttVarGu2 = gu();
            if (ttVarGu2 == null) {
                if (this.f20849v != null) {
                    StringBuilder sb3 = new StringBuilder("创建Upie播放器时，iRenderView为null, mediaLayout is null: ");
                    sb3.append(this.f17372n == null);
                    this.f20849v.onError(null, new com.byazt.jzl.ve(60008, 10005, sb3.toString()));
                }
                m.uj("tag_video_play", "[video] invoke NativeVideoController#playVideo error: iRenderView为null");
                return false;
            }
            int iSl2 = nb.sl(this.f17367a);
            if (p.n() && this.qy.getPlayerType() == 1) {
                ujVar = com.byazt.btt.tt.c().createTTVideoPlayer(gt.getContext(), String.valueOf(iSl2));
            } else {
                this.zm = c("ad");
                ujVar = new com.byazt.ts.uj(String.valueOf(iSl2), this.zm);
            }
            this.uj = new com.byazt.kft.tt(ujVar, com.byazt.ic.c.i(icVar), c("assist"), ttVarGu2);
            i10 = 2;
        } else {
            int iSl3 = nb.sl(this.f17367a);
            if (com.byazt.ex.c.c(this.f17367a)) {
                this.uj = com.byazt.btt.tt.c().createTTLiveVideoPlayer(gt.getContext(), p(), (long) xd.sp(this.f17367a), gt.tt().gy(), null);
                i10 = 3;
            } else if (p.n() && this.qy.getPlayerType() == 1) {
                this.uj = com.byazt.btt.tt.c().createTTVideoPlayer(gt.getContext(), String.valueOf(iSl3));
                i10 = 4;
            } else {
                this.zm = c("ad");
                this.uj = new com.byazt.ts.uj(String.valueOf(iSl3), this.zm);
                i10 = 5;
            }
        }
        if (icVar != null) {
            com.byazt.rgb.ve.c(icVar, String.valueOf(nb.t(this.f17367a)), nb.sl(this.f17367a), i10, this.f17367a.zm());
        }
        return true;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void kk() {
        if (com.byazt.ex.c.c(this.f17367a) && !TextUtils.isEmpty(this.or)) {
            boolean zC = this.rl.c(1024);
            long jLongValue = this.rl.tt(1).longValue();
            if (zC) {
                return;
            }
            this.rl.ve(1024);
            if (this.or.equals(com.byazt.dyf.tt.AD_TAG_FEED)) {
                com.byazt.ddx.uj.c(this.f17367a, com.byazt.dyf.tt.AD_TAG_FEED, System.currentTimeMillis() - jLongValue, com.byazt.sw.uj.c(this.f17372n));
            } else if (this.or.equals("draw_ad")) {
                com.byazt.ddx.uj.c(this.f17367a, "draw_ad", System.currentTimeMillis() - jLongValue, com.byazt.sw.uj.c(this.f17372n));
            }
        }
    }

    private void kp() {
        if (md()) {
            i(!this.gt);
            if (this.f17370i.get() instanceof Activity) {
                a aVar = this.f17372n;
                if (aVar != null) {
                    aVar.tt(this.md);
                    this.f17372n.ve(false);
                }
                n(1);
                WeakReference<com.byazt.dh.ve.tt> weakReference = this.f20844nb;
                com.byazt.dh.ve.tt ttVar = weakReference != null ? weakReference.get() : null;
                if (ttVar != null) {
                    ttVar.c(this.gt);
                }
            }
        }
    }

    private boolean l() {
        return this.f17374t && x.m().b() > 0;
    }

    private void lo() {
        com.byazt.jzl.a aVar;
        m.c("NativeVideoController", "resumeVideo:  mIsSurfaceValid = ", Boolean.valueOf(this.f17369da));
        com.byazt.fk.sp spVar = this.uj;
        if (spVar != null) {
            if (spVar.isPaused() && !l()) {
                if (this.f17369da || (((aVar = this.qy) != null && aVar.isAudio()) || com.byazt.ic.c.tt(this.f17367a))) {
                    eo();
                } else {
                    tt(this.yv);
                }
                m.c("NativeVideoController", "resumeVideo: isPaused = true , mIsSurfaceValid = ", Boolean.valueOf(this.f17369da));
            } else if (l()) {
                this.sp = x.m().b();
                x.m().c(-1L);
                this.uj.seekTo(this.sp);
                this.uj.play();
            } else {
                this.kp = 1;
                this.f20838b = false;
                this.uj.start(false, this.sp, this.nu);
            }
        }
        if (this.rl.c(2)) {
            nu.c cVar = new nu.c();
            cVar.c(sl());
            cVar.ve(yp());
            cVar.tt(t());
            tt(rh(), cVar);
        }
    }

    private boolean lr() {
        return this.os > 0 && t.c(this.f17367a);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public boolean lt() {
        return TextUtils.equals(this.or, "splash_ad") || TextUtils.equals(this.or, "cache_splash_ad");
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void pu() {
        if (!this.rl.c(2) || bm()) {
            nu.c cVar = new nu.c();
            if (lt()) {
                this.sv = true;
            }
            cVar.tt(this.sv);
            cVar.ve(yp());
            this.rl.ve(2);
            com.byazt.sw.uj.c(this.f17372n, cVar);
        }
    }

    private void q() {
        a aVar = this.f17372n;
        if (aVar != null) {
            aVar.uj(0);
            this.f17372n.c(false, false);
            this.f17372n.ve(false);
            this.f17372n.n();
            this.f17372n.sp();
        }
    }

    private boolean tk() {
        ic icVar = this.f17367a;
        return icVar != null && icVar.vi() == 1 && "draw_ad".equals(this.or) && this.md != null;
    }

    private boolean to() {
        j jVarEk;
        if (!lt()) {
            return false;
        }
        ic icVar = this.f17367a;
        return icVar == null || (jVarEk = icVar.ek()) == null || jVarEk.c() != 0;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public String tx() {
        ic icVar = this.f17367a;
        if (icVar == null) {
            return null;
        }
        return icVar.zm();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public boolean uj(int i10, int i11) {
        boolean z10 = i10 == -1010 || i10 == -1007 || i10 == -1004 || i10 == -110 || i10 == 100 || i10 == 200 || i10 == 60008;
        if (i11 == 1 || i11 == 700 || i11 == 800) {
            return true;
        }
        return z10;
    }

    @Override // com.byazt.dh.ve
    public void a() {
        com.byazt.fk.sp spVar = this.uj;
        if (spVar != null) {
            spVar.pause();
        }
        if ((!this.rl.c(64) || bm()) && this.rl.c(2)) {
            nu.c cVar = new nu.c();
            cVar.c(sl());
            cVar.ve(yp());
            cVar.tt(t());
            c(this.f17372n, cVar);
        }
    }

    public void aw() {
        if (this.f20850y) {
            this.f20850y = false;
            try {
                ((u) com.byazt.ut.uj.getService("device_info_new")).removeNetworkMonitor(this.f20847r);
            } catch (Throwable unused) {
            }
        }
    }

    public boolean bx() {
        com.byazt.fk.sp spVar = this.uj;
        return spVar != null && spVar.isPlaying();
    }

    @Override // com.byazt.dh.ve
    public void da() {
        tt(yp() == 0 ? -2 : -1);
        com.byazt.fk.sp spVar = this.uj;
        if (spVar != null) {
            spVar.release();
            this.uj = null;
        }
        ic icVar = this.f17367a;
        int iMm = icVar == null ? 2 : icVar.mm();
        boolean z10 = iMm > 0 && this.os == iMm;
        if (!nb.ve(this.f17367a) || z10) {
            try {
                this.f17372n.c2(this.f17367a, this.f17370i, true);
            } catch (Exception e10) {
                m.uj("NativeVideoController", e10.getMessage());
            }
        }
        d dVar = this.f17368c;
        if (dVar != null) {
            dVar.removeCallbacksAndMessages(null);
        }
        List<Runnable> list = this.sl;
        if (list != null) {
            list.clear();
        }
        aw();
    }

    public boolean gr() {
        com.byazt.fk.sp spVar = this.uj;
        return spVar == null || spVar.isCompleted();
    }

    public com.byazt.jr.tt gu() {
        a aVar;
        WeakReference<Context> weakReference = this.f17370i;
        if (weakReference == null || weakReference.get() == null) {
            return null;
        }
        if ((this.f17370i.get().getResources().getConfiguration().orientation == 1 || com.byazt.ic.c.c(this.f17367a)) && (aVar = this.f17372n) != null) {
            return aVar.nu();
        }
        return null;
    }

    @Override // com.byazt.dh.ve
    public void i() {
        c(true, 3);
    }

    @Override // com.byazt.nj.c
    public void nb() {
        if (this.f17370i == null) {
            return;
        }
        this.gr = com.byazt.sw.uj.c();
        com.byazt.jzl.tt ttVar = this.zm;
        if (ttVar != null) {
            ttVar.tt(this.gr);
        }
        this.rl.ve(1);
        com.byazt.sw.uj.c(this.f17367a, this.f17372n, this.qy, this.sv, this.gr);
    }

    @Override // com.byazt.nj.c
    public Map<String, Object> pf() {
        return this.tk;
    }

    @Override // com.byazt.dh.ve
    public boolean qy() {
        return this.lo;
    }

    @Override // com.byazt.dh.ve
    public boolean rl() {
        return this.sv;
    }

    @Override // com.byazt.dh.ve
    public void sp() {
        com.byazt.fk.sp spVar = this.uj;
        if (spVar != null) {
            spVar.pause();
        }
    }

    public void sv() {
        if (this.f20850y || !this.pu) {
            return;
        }
        this.f20850y = true;
        ((u) com.byazt.ut.uj.getService("device_info_new")).registerNetworkMonitor(this.f20847r);
    }

    @Override // com.byazt.nj.c, com.byazt.dh.ve
    public long t() {
        if (nu() == null) {
            return 0L;
        }
        return nu().getTotalBufferTime();
    }

    @Override // com.byazt.dh.ve
    public int u() {
        if (nu() == null) {
            return 0;
        }
        return nu().getBufferCount();
    }

    @Override // com.byazt.dh.ve
    public void x() {
        a aVar = this.f17372n;
        if (aVar != null) {
            aVar.c();
        }
        a aVar2 = this.f17372n;
        if (aVar2 != null) {
            aVar2.gr();
        }
        lo();
    }

    @Override // com.byazt.dh.ve
    public int z() {
        return com.byazt.vv.c.c(this.f17376x, this.f17371m);
    }

    public void zm() {
        if (rh.ve(gt.getContext()) == 0) {
            return;
        }
        a aVar = this.f17372n;
        if (aVar != null) {
            aVar.c();
        }
        ve(false);
        if (this.uj != null) {
            this.rl.c();
            nb();
            this.kp = 2;
            this.f20838b = false;
            this.uj.restart();
            pu();
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public boolean sp(int i10) {
        ic icVar;
        int iVe = rh.ve(gt.getContext());
        if (iVe == 0) {
            a();
            this.f17377z = true;
            a aVar = this.f17372n;
            if (aVar != null) {
                aVar.c2(this.f17367a, this.f17370i, false);
            }
        }
        if (iVe != 4 && iVe != 0) {
            a aVar2 = this.f17372n;
            if (aVar2 != null) {
                aVar2.c();
            }
            a();
            this.f17377z = true;
            this.pf = false;
            a aVar3 = this.f17372n;
            if (aVar3 != null && (icVar = this.f17367a) != null) {
                return aVar3.c(i10, xd.z(icVar), this.qp);
            }
        } else if (iVe == 4) {
            this.f17377z = false;
            a aVar4 = this.f17372n;
            if (aVar4 != null) {
                aVar4.gt();
            }
        }
        return true;
    }

    private void ve(com.byazt.jzl.a aVar) {
        if (aVar == null) {
            tt("model is null");
            return;
        }
        if (this.uj != null) {
            ic icVar = this.f17367a;
            if (icVar != null) {
                aVar.setCodeId(String.valueOf(nb.t(icVar)));
            }
            aVar.setScene(0);
            com.byazt.rgb.ve.tt(tx());
            this.uj.setDataSource(aVar);
        }
        this.f20840h = System.currentTimeMillis();
        if (!TextUtils.isEmpty(aVar.getUrl())) {
            a aVar2 = this.f17372n;
            if (aVar2 != null) {
                aVar2.n(8);
                this.f17372n.n(0);
            }
            boolean zVe = nb.ve(this.f17367a);
            a aVar3 = this.f17372n;
            boolean zTt = aVar3 != null ? zb.tt(aVar3.f20780c, 50, 9) : true;
            Runnable runnable = new Runnable() { // from class: com.byazt.un.uj.5
                @Override // java.lang.Runnable
                public void run() {
                    uj.this.rl.c();
                    uj.this.nb();
                    uj.this.f20840h = System.currentTimeMillis();
                    if (uj.this.f17372n != null) {
                        uj.this.f17372n.uj(0);
                    }
                    uj.this.kp = 1;
                    uj.this.f20838b = false;
                    uj.this.f20846q = false;
                    com.byazt.rgb.ve.c(uj.this.tx(), uj.this.kp);
                    uj.this.uj.start(true, uj.this.sp, uj.this.nu);
                }
            };
            if (zVe && !zTt) {
                tt(runnable);
                x(true);
                WeakReference<c> weakReference = this.f20841hd;
                if (weakReference != null && weakReference.get() != null) {
                    this.f20841hd.get().i();
                }
            } else {
                c(runnable);
            }
        } else {
            tt("url is null");
        }
        if (this.f17374t) {
            sv();
        }
    }

    public void n(int i10) {
        if (md()) {
            boolean z10 = i10 == 0 || i10 == 8;
            Context context = this.f17370i.get();
            if (context instanceof Activity) {
                Activity activity = (Activity) context;
                try {
                    activity.setRequestedOrientation(i10);
                } catch (Throwable unused) {
                }
                if (!z10) {
                    activity.getWindow().setFlags(1024, 1024);
                } else {
                    activity.getWindow().clearFlags(1024);
                }
            }
        }
    }

    public void uj(int i10) {
        this.to = i10;
    }

    public void tt(ic icVar) {
        this.f17367a = icVar;
    }

    @Override // com.byazt.dh.c
    public void uj(com.byazt.dh.tt ttVar, View view) {
        if (this.gt) {
            i(false);
            a aVar = this.f17372n;
            if (aVar != null) {
                aVar.tt(this.md);
            }
            n(1);
            return;
        }
        c(1);
        c(true, 3);
    }

    private View tt(final Context context) {
        Resources resources = context.getResources();
        RelativeLayout relativeLayout = new RelativeLayout(context);
        relativeLayout.setId(2114387714);
        relativeLayout.setBackgroundColor(-16777216);
        RelativeLayout relativeLayout2 = new RelativeLayout(context);
        ViewGroup.LayoutParams layoutParams = new RelativeLayout.LayoutParams(-1, -1);
        relativeLayout2.setId(2114387900);
        relativeLayout2.setBackgroundColor(0);
        relativeLayout2.setGravity(17);
        relativeLayout2.setLayoutParams(layoutParams);
        relativeLayout.addView(relativeLayout2);
        ImageView imageView = new ImageView(context);
        RelativeLayout.LayoutParams layoutParams2 = new RelativeLayout.LayoutParams(-1, -1);
        imageView.setId(2114387651);
        imageView.setScaleType(ImageView.ScaleType.FIT_CENTER);
        imageView.setLayoutParams(layoutParams2);
        relativeLayout2.addView(imageView);
        final TTProgressBar tTProgressBar = new TTProgressBar(context);
        RelativeLayout.LayoutParams layoutParams3 = new RelativeLayout.LayoutParams((int) TypedValue.applyDimension(1, 60.0f, resources.getDisplayMetrics()), (int) TypedValue.applyDimension(1, 60.0f, resources.getDisplayMetrics()));
        tTProgressBar.setId(2114387631);
        layoutParams3.addRule(13, -1);
        tTProgressBar.setLayoutParams(layoutParams3);
        com.byazt.nr.z.c(context, "tt_normalscreen_loading", new com.byazt.qr.c<Bitmap>() { // from class: com.byazt.un.uj.4
            @Override // com.byazt.qr.c
            public void c(Bitmap bitmap) {
                tTProgressBar.setIndeterminateDrawable(com.byazt.vfu.n.c(context, new BitmapDrawable(context.getResources(), bitmap), 0, MediaPlayer.MEDIA_PLAYER_OPTION_ENABLE_DEMUXER_STALL, 0.5f, 0.5f));
            }
        }, 320);
        relativeLayout2.addView(tTProgressBar);
        View viewInflate = new com.byazt.wol.uj().inflate(context);
        viewInflate.setId(2114387688);
        viewInflate.setLayoutParams(new RelativeLayout.LayoutParams(-1, -1));
        relativeLayout.addView(viewInflate);
        ImageView imageView2 = new ImageView(context);
        RelativeLayout.LayoutParams layoutParams4 = new RelativeLayout.LayoutParams(-2, -2);
        imageView2.setId(2114387626);
        layoutParams4.addRule(13, -1);
        imageView2.setScaleType(ImageView.ScaleType.CENTER);
        com.byazt.nr.z.c(context, "tt_new_play_video", imageView2, 320);
        imageView2.setVisibility(8);
        imageView2.setLayoutParams(layoutParams4);
        relativeLayout.addView(imageView2);
        TTProgressBar tTProgressBar2 = new TTProgressBar(context, null, R.style.Widget.ProgressBar.Horizontal);
        tTProgressBar2.setIndeterminate(false);
        RelativeLayout.LayoutParams layoutParams5 = new RelativeLayout.LayoutParams(-1, (int) TypedValue.applyDimension(1, 1.5f, resources.getDisplayMetrics()));
        tTProgressBar2.setMax(100);
        tTProgressBar2.setId(2114387653);
        tTProgressBar2.setBackgroundColor(0);
        tTProgressBar2.setIndeterminateDrawable(null);
        GradientDrawable gradientDrawable = new GradientDrawable();
        gradientDrawable.setColor(Color.parseColor("#A5FFFFFF"));
        float fVe = pf.ve(context, 1.0f);
        gradientDrawable.setCornerRadius(fVe);
        int iVe = pf.ve(context, 2.0f);
        gradientDrawable.setSize(-1, iVe);
        GradientDrawable gradientDrawable2 = new GradientDrawable();
        gradientDrawable2.setColor(Color.parseColor("#FFFFFFFF"));
        gradientDrawable2.setCornerRadius(fVe);
        gradientDrawable2.setSize(-1, iVe);
        ClipDrawable clipDrawable = new ClipDrawable(gradientDrawable2, 3, 1);
        GradientDrawable gradientDrawable3 = new GradientDrawable();
        gradientDrawable3.setColor(Color.parseColor("#FFF85959"));
        gradientDrawable3.setCornerRadius(fVe);
        gradientDrawable3.setSize(-1, iVe);
        tTProgressBar2.setProgressDrawable(new LayerDrawable(new Drawable[]{gradientDrawable, clipDrawable, new ClipDrawable(gradientDrawable3, 3, 1)}));
        tTProgressBar2.setVisibility(8);
        layoutParams5.addRule(12, -1);
        tTProgressBar2.setLayoutParams(layoutParams5);
        relativeLayout.addView(tTProgressBar2);
        View tTViewStub = new TTViewStub(context, new com.byazt.wol.a());
        ViewGroup.LayoutParams layoutParams6 = new RelativeLayout.LayoutParams(-1, -1);
        tTViewStub.setId(2114387744);
        tTViewStub.setLayoutParams(layoutParams6);
        relativeLayout.addView(tTViewStub);
        View tTViewStub2 = new TTViewStub(context, new com.byazt.wol.tt());
        ViewGroup.LayoutParams layoutParams7 = new RelativeLayout.LayoutParams(-1, -1);
        tTViewStub2.setId(2114387666);
        tTViewStub2.setLayoutParams(layoutParams7);
        relativeLayout.addView(tTViewStub2);
        View tTViewStub3 = new TTViewStub(context, new com.byazt.wol.sp());
        RelativeLayout.LayoutParams layoutParams8 = new RelativeLayout.LayoutParams(-2, -2);
        layoutParams8.addRule(13, -1);
        tTViewStub3.setId(2114387828);
        tTViewStub3.setLayoutParams(layoutParams8);
        relativeLayout.addView(tTViewStub3);
        return relativeLayout;
    }

    public void a(boolean z10) {
        a aVar = this.f17372n;
        if (aVar != null) {
            aVar.c();
        }
        a aVar2 = this.f17372n;
        if (aVar2 != null && z10) {
            aVar2.gr();
        }
        lo();
    }

    public void c(com.byazt.uz.c cVar) {
        a aVar = this.f17372n;
        if (aVar != null) {
            aVar.c(cVar);
        }
    }

    @Override // com.byazt.dh.c
    public void n(com.byazt.dh.tt ttVar, View view) {
        c(ttVar, view, false);
    }

    public void c(final NativeVideoTsView.c cVar) {
        a aVar;
        if (!this.f17374t || (aVar = this.f17372n) == null) {
            return;
        }
        aVar.c(new NativeVideoTsView.c() { // from class: com.byazt.un.uj.3
            @Override // com.byazt.un.NativeVideoTsView.c
            public void c(View view, int i10) {
                NativeVideoTsView.c cVar2 = cVar;
                if (cVar2 != null) {
                    cVar2.c(view, i10);
                }
            }
        });
    }

    @Override // com.byazt.dh.ve
    public void n(boolean z10) {
        this.pu = z10;
    }

    @Override // com.byazt.dh.ve
    public void uj(boolean z10) {
        this.sv = z10;
    }

    public void c(com.byazt.nc.u uVar) {
        a aVar;
        if (!this.f17374t || (aVar = this.f17372n) == null) {
            return;
        }
        aVar.c(uVar);
    }

    private boolean a(int i10) {
        a aVar = this.f17372n;
        return aVar != null && aVar.ve(i10);
    }

    public void c(int i10, int i11) {
        if (i10 == 0 || i11 == 0) {
            return;
        }
        this.bm = i10;
        this.lr = i11;
    }

    @SuppressLint({"InflateParams"})
    private void c(Context context) {
        EnumSet<com.byazt.dh.tt.c> enumSetNoneOf = EnumSet.noneOf(com.byazt.dh.tt.c.class);
        enumSetNoneOf.add(com.byazt.dh.tt.c.hideCloseBtn);
        enumSetNoneOf.add(com.byazt.dh.tt.c.hideBackBtn);
        try {
            a aVarC = c(context, enumSetNoneOf);
            this.f17372n = aVarC;
            if (aVarC != null) {
                aVarC.c((com.byazt.dh.c) this);
                this.f17372n.c((com.byazt.ua.c.InterfaceC0445c) this);
            }
        } catch (Throwable th) {
            m.uj("NativeVideoController", th.getMessage());
        }
    }

    public a c(Context context, EnumSet<com.byazt.dh.tt.c> enumSet) {
        View layoutVideoDetail;
        if (this.f17374t) {
            layoutVideoDetail = tt(context);
        } else {
            layoutVideoDetail = new LayoutVideoDetail(context);
        }
        View view = layoutVideoDetail;
        if (view == null) {
            return null;
        }
        if (this.f17374t) {
            return new a(context, view, true, enumSet, this.f17367a, this, or(), null);
        }
        return new n(context, view, true, enumSet, this.f17367a, this, false);
    }

    private boolean ve(int i10, int i11) {
        return i10 < i11 && tk();
    }

    @Override // com.byazt.dh.c
    public void ve(com.byazt.dh.tt ttVar, View view) {
        a aVar = this.f17372n;
        if (aVar != null) {
            aVar.i();
        }
        c(1);
        c(true, 3);
    }

    @Override // com.byazt.dh.ve
    public void c(com.byazt.dh.ve.uj ujVar) {
        this.f20842ic = new WeakReference<>(ujVar);
    }

    @Override // com.byazt.dh.ve
    public boolean c(com.byazt.jzl.a aVar) {
        aVar.getUrl();
        if (TextUtils.isEmpty(aVar.getUrl())) {
            tt("url is null");
            m.uj("tag_video_play", "[video] play video stop , because no video info");
            return false;
        }
        this.qy = aVar;
        this.nu = aVar.isQuiet();
        this.sp = aVar.getCurrent();
        if (aVar.getCurrent() > 0) {
            long current = aVar.getCurrent();
            this.sp = current;
            long j10 = this.f17376x;
            if (j10 > current) {
                current = j10;
            }
            this.f17376x = current;
        }
        a aVar2 = this.f17372n;
        if (aVar2 != null) {
            aVar2.c();
            if (this.os == 0) {
                this.f17372n.sp();
            }
            this.f17372n.ve(aVar.getWidth(), aVar.getHeight());
            this.f17372n.ve(this.md);
            this.f17372n.c(aVar.getWidth(), aVar.getHeight());
        }
        try {
            if (this.uj == null) {
                if (!ic()) {
                    tt("create video error");
                    return false;
                }
                this.uj.addIVideoPlayerCallback(this.f20849v);
            }
            yv();
            this.f20839d = 0L;
            ve(aVar);
            return true;
        } catch (Throwable th) {
            tt(th.getMessage());
            m.uj("tag_video_play", "[video] invoke NativeVideoController#playVideo cause exception :" + th.toString());
            return false;
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void ve(Context context, int i10) {
        tt(context, i10);
        if (i10 == 4) {
            this.f17377z = false;
        }
    }

    public uj(Context context, ViewGroup viewGroup, ic icVar, String str, boolean z10, boolean z11) {
        this.or = com.byazt.dyf.tt.AD_TAG_FEED;
        this.cu = false;
        this.qp = true;
        this.bm = 0;
        this.lr = 0;
        this.f20848s = 1;
        this.f20848s = rh.ve(context);
        try {
            this.bm = viewGroup.getWidth();
            this.lr = viewGroup.getHeight();
        } catch (Throwable unused) {
        }
        this.md = viewGroup;
        this.or = str;
        this.f17370i = new WeakReference<>(context);
        this.f17367a = icVar;
        c(context);
        this.f20851zb = true;
        this.cu = z10;
        this.qp = z11;
    }

    @Override // com.byazt.dh.ve
    public void c(com.byazt.dh.ve.tt ttVar) {
        this.f20844nb = new WeakReference<>(ttVar);
    }

    @Override // com.byazt.dh.ve
    public void c(com.byazt.dh.ve.c cVar) {
        this.eo = cVar;
    }

    @Override // com.byazt.dh.ve
    public void c(Map<String, Object> map) {
        com.byazt.fk.sp spVar = this.uj;
        if (spVar != null) {
            spVar.pause();
        }
        if ((!this.rl.c(64) || bm()) && this.rl.c(2)) {
            nu.c cVar = new nu.c();
            cVar.c(sl());
            cVar.ve(yp());
            cVar.tt(t());
            if (map != null) {
                cVar.c(map);
            }
            c(this.f17372n, cVar);
        }
    }

    @Override // com.byazt.dh.ve
    public void c(long j10) {
        this.sp = j10;
        long j11 = this.f17376x;
        if (j11 > j10) {
            j10 = j11;
        }
        this.f17376x = j10;
        a aVar = this.f17372n;
        if (aVar != null) {
            aVar.c();
        }
        com.byazt.fk.sp spVar = this.uj;
        if (spVar != null) {
            this.kp = 1;
            this.f20838b = false;
            spVar.start(true, this.sp, this.nu);
        }
    }

    @Override // com.byazt.dh.ve
    public void c(boolean z10, int i10) {
        if (this.f17374t) {
            c(1);
        }
        long jYp = yp();
        if ((!this.rl.c(64) || bm()) && this.rl.c(1) && jYp > 0) {
            if (z10) {
                nu.c cVar = new nu.c();
                cVar.c(sl());
                cVar.ve(jYp);
                cVar.tt(t());
                cVar.n(i10);
                cVar.a(u());
                this.rl.ve(32);
                com.byazt.sw.uj.c(this.f17372n, cVar, this.tk, !this.rl.c(2) ? 1 : 0);
            } else {
                nu.c cVar2 = new nu.c();
                cVar2.c(sl());
                cVar2.ve(jYp);
                cVar2.tt(t());
                c(this.f17372n, cVar2);
            }
        }
        da();
    }

    @Override // com.byazt.dh.ve
    public void tt(Map<String, Object> map) {
        this.tk = map;
    }

    public void tt(int i10, int i11) {
        com.byazt.fk.sp spVar;
        ViewGroup viewGroup;
        int iRound;
        int iRound2;
        ViewGroup.LayoutParams layoutParams;
        try {
            WeakReference<Context> weakReference = this.f17370i;
            if (weakReference != null && weakReference.get() != null && gu() != null && (spVar = this.uj) != null && (viewGroup = this.md) != null && viewGroup != null) {
                if (i10 < 0 && i11 < 0) {
                    i10 = spVar.getVideoWidth();
                    i11 = this.uj.getVideoHeight();
                }
                int width = this.md.getWidth();
                int height = this.md.getHeight();
                if (width > 0 && height > 0 && i11 > 0 && i10 > 0) {
                    if (i10 == i11) {
                        iRound2 = width > height ? height : width;
                        iRound = iRound2;
                    } else if (i10 > i11) {
                        iRound = (int) Math.round((((double) width) * 1.0d) / ((double) ((i10 * 1.0f) / i11)));
                        iRound2 = width;
                    } else if (to()) {
                        iRound = 0;
                        iRound2 = 0;
                    } else {
                        iRound2 = (int) Math.round(((double) (height * 1.0f)) / ((double) ((i11 * 1.0f) / i10)));
                        iRound = height;
                    }
                    if (iRound > height || iRound <= 0) {
                        iRound = height;
                    }
                    if (tt(i10, i11, iRound2, width)) {
                        iRound2 = width;
                    }
                    if (to()) {
                        c(i10, i11, width, height);
                        return;
                    }
                    RelativeLayout.LayoutParams layoutParams2 = new RelativeLayout.LayoutParams(iRound2, iRound);
                    layoutParams2.addRule(13);
                    Object objGu = gu();
                    if (objGu instanceof TextureView) {
                        ((TextureView) objGu).setLayoutParams(layoutParams2);
                    } else if (objGu instanceof UpieVideoView) {
                        ((UpieVideoView) objGu).setLayoutParams(layoutParams2);
                    } else if (objGu instanceof SurfaceView) {
                        ((SurfaceView) objGu).setLayoutParams(layoutParams2);
                    }
                    if (ve(i10, i11) && (layoutParams = this.md.getLayoutParams()) != null) {
                        layoutParams.height = iRound;
                        layoutParams.width = iRound2;
                        this.md.setLayoutParams(layoutParams);
                        a aVar = this.f17372n;
                        if (aVar != null) {
                            aVar.c(layoutParams.width, layoutParams.height);
                        }
                    }
                    c(width, height, iRound2, iRound);
                    return;
                }
                return;
            }
            WeakReference<Context> weakReference2 = this.f17370i;
            if (weakReference2 != null) {
                weakReference2.get();
            }
            gu();
        } catch (Throwable unused) {
        }
    }

    private void c(float f10, float f11, float f12, float f13) {
        boolean zDa;
        if (gt.tt().yp()) {
            WeakReference<c> weakReference = this.f20841hd;
            View view = null;
            c cVar = weakReference != null ? weakReference.get() : null;
            if (cVar instanceof NativeVideoTsView) {
                NativeVideoTsView nativeVideoTsView = (NativeVideoTsView) cVar;
                zDa = nativeVideoTsView.da();
                Object parent = nativeVideoTsView.getParent();
                if (parent instanceof View) {
                    view = (View) parent;
                }
            } else {
                zDa = true;
            }
            View view2 = view;
            if (zDa) {
                yp.c().c(this.f17367a, f10, f11, f12, f13, view2);
            }
        }
    }

    private void c(int i10, int i11, int i12, int i13) {
        Matrix matrix;
        if (i12 == 0 || i13 == 0) {
            return;
        }
        float f10 = i12;
        float f11 = i10;
        float f12 = f10 / f11;
        float f13 = i13;
        float f14 = i11;
        float f15 = f13 / f14;
        try {
            Object objGu = gu();
            if (objGu instanceof TextureView) {
                matrix = ((TextureView) objGu).getMatrix();
            } else if (objGu instanceof UpieVideoView) {
                matrix = ((UpieVideoView) objGu).getMatrix();
            } else {
                matrix = objGu instanceof SurfaceView ? ((SurfaceView) objGu).getMatrix() : null;
            }
            float fMax = Math.max(f12, f15);
            if (matrix == null) {
                matrix = new Matrix();
            } else {
                matrix.reset();
            }
            matrix.preTranslate((i12 - i10) / 2, (i13 - i11) / 2);
            matrix.preScale(f11 / f10, f14 / f13);
            matrix.postScale(fMax, fMax, i12 / 2, i13 / 2);
            if (objGu instanceof TextureView) {
                ((TextureView) objGu).setTransform(matrix);
                ((TextureView) objGu).postInvalidate();
                return;
            }
            if (objGu instanceof UpieVideoView) {
                LottieAnimationView lottieAnimationViewC = c((View) objGu);
                if (lottieAnimationViewC != null) {
                    lottieAnimationViewC.setScaleType(ImageView.ScaleType.CENTER_CROP);
                    return;
                }
                return;
            }
            if (objGu instanceof SurfaceView) {
                if (Build.VERSION.SDK_INT >= 29) {
                    ((SurfaceView) objGu).setAnimationMatrix(matrix);
                }
                ((SurfaceView) objGu).postInvalidate();
            }
        } catch (Exception unused) {
        }
    }

    private boolean tt(int i10, int i11, int i12, int i13) {
        return (i12 > i13 && !ve(i10, i11)) || i12 <= 0;
    }

    @Override // com.byazt.dh.c
    public void tt(com.byazt.dh.tt ttVar, int i10) {
        a aVar = this.f17372n;
        if (aVar != null) {
            aVar.a();
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void tt(long j10, long j11) {
        this.sp = j10;
        this.f17371m = j11;
        a aVar = this.f17372n;
        if (aVar != null) {
            aVar.c(j10, j11);
            this.f17372n.tt(com.byazt.vv.c.c(j10, j11));
        }
        try {
            com.byazt.dh.ve.c cVar = this.eo;
            if (cVar != null) {
                cVar.c(j10, j11);
            }
        } catch (Throwable th) {
            m.ve("NativeVideoController", "onProgressUpdate error: ", th);
        }
    }

    private LottieAnimationView c(View view) {
        LottieAnimationView lottieAnimationViewC;
        if (view instanceof LottieAnimationView) {
            return (LottieAnimationView) view;
        }
        if (!(view instanceof ViewGroup)) {
            return null;
        }
        ViewGroup viewGroup = (ViewGroup) view;
        for (int i10 = 0; i10 < viewGroup.getChildCount(); i10++) {
            View childAt = viewGroup.getChildAt(i10);
            if (childAt instanceof LottieAnimationView) {
                return (LottieAnimationView) childAt;
            }
            if ((childAt instanceof ViewGroup) && (lottieAnimationViewC = c(childAt)) != null) {
                return lottieAnimationViewC;
            }
        }
        return null;
    }

    @Override // com.byazt.dh.c
    public void tt(com.byazt.dh.tt ttVar, View view) {
        tt(ttVar, view, false, false);
    }

    public void tt(com.byazt.dh.tt ttVar, View view, boolean z10, boolean z11) {
        if (md()) {
            i(!this.gt);
            if (this.f17370i.get() instanceof Activity) {
                if (this.gt) {
                    n(z10 ? 8 : 0);
                    a aVar = this.f17372n;
                    if (aVar != null) {
                        aVar.c(this.md);
                        this.f17372n.ve(false);
                    }
                } else {
                    n(1);
                    a aVar2 = this.f17372n;
                    if (aVar2 != null) {
                        aVar2.tt(this.md);
                        this.f17372n.ve(false);
                    }
                }
                WeakReference<com.byazt.dh.ve.tt> weakReference = this.f20844nb;
                com.byazt.dh.ve.tt ttVar2 = weakReference != null ? weakReference.get() : null;
                if (ttVar2 != null) {
                    ttVar2.c(this.gt);
                }
            }
        }
    }

    @Override // com.byazt.dh.c
    public void c(com.byazt.dh.tt ttVar, View view) {
        if (this.uj == null || !md()) {
            return;
        }
        if (this.uj.isPlaying()) {
            a();
            a aVar = this.f17372n;
            if (aVar != null) {
                aVar.tt(true, false);
                this.f17372n.a();
                return;
            }
            return;
        }
        if (!this.uj.isPaused()) {
            a aVar2 = this.f17372n;
            if (aVar2 != null) {
                aVar2.ve(this.md);
            }
            c(this.sp);
            a aVar3 = this.f17372n;
            if (aVar3 != null) {
                aVar3.tt(false, false);
                return;
            }
            return;
        }
        a(false);
        a aVar4 = this.f17372n;
        if (aVar4 != null) {
            aVar4.tt(false, false);
        }
    }

    private void tt(Context context, int i10) {
        if (!md() || context == null || this.f20848s == i10) {
            return;
        }
        this.f20848s = i10;
        if (i10 != 4 && i10 != 0) {
            this.pf = false;
        }
        if (!this.pf && !gt() && this.cu) {
            da.tt().post(new Runnable() { // from class: com.byazt.un.uj.9
                @Override // java.lang.Runnable
                public void run() {
                    uj.this.sp(2);
                }
            });
        }
        WeakReference<c> weakReference = this.f20841hd;
        if (weakReference == null || weakReference.get() == null) {
            return;
        }
        this.f20841hd.get().c(this.f20848s);
    }

    @Override // com.byazt.dh.c
    public void c(com.byazt.dh.tt ttVar, int i10) {
        if (this.uj == null) {
            return;
        }
        c(this.oz, a(i10));
    }

    @Override // com.byazt.dh.ve
    public void tt(com.byazt.jzl.a aVar) {
        this.qy = aVar;
    }

    @Override // com.byazt.dh.c
    public void c(com.byazt.dh.tt ttVar, int i10, boolean z10) {
        if (md()) {
            long j10 = this.f17371m;
            long j11 = (long) (((((long) i10) * j10) * 1.0f) / 100.0f);
            if (j10 > 0) {
                this.oz = (int) j11;
            } else {
                this.oz = 0L;
            }
            a aVar = this.f17372n;
            if (aVar != null) {
                aVar.c(this.oz);
            }
        }
    }

    @Override // com.byazt.dh.ve
    public void tt() {
        if (this.uj != null) {
            ve(false);
            this.kp = 2;
            this.f20838b = false;
            this.uj.restart();
        }
    }

    @Override // com.byazt.dh.c
    public void c(com.byazt.dh.tt ttVar, View view, boolean z10, boolean z11) {
        if (this.f17374t) {
            a();
        }
        if (this.f17372n == null) {
            return;
        }
        if (z10 && !this.f17374t && !gr()) {
            this.f17372n.tt(!bx(), false);
            this.f17372n.c(z11, true, false);
        }
        com.byazt.fk.sp spVar = this.uj;
        if (spVar != null && spVar.isPlaying()) {
            this.f17372n.a();
            this.f17372n.n();
        } else {
            this.f17372n.a();
        }
    }

    public void c(com.byazt.dh.tt ttVar, View view, boolean z10) {
        kp();
    }

    @Override // com.byazt.dh.c
    public void c() {
        if (rh.ve(gt.getContext()) == 0) {
            return;
        }
        this.aw = true;
        if (this.uj == null) {
            da();
            b();
        } else {
            da();
        }
    }

    private void c(long j10, boolean z10) {
        if (this.uj == null) {
            return;
        }
        if (z10) {
            q();
        }
        this.uj.seekTo(j10);
    }

    @Override // com.byazt.un.tt
    public void c(z.c cVar, String str) {
        int i10 = AnonymousClass2.f20863c[cVar.ordinal()];
        if (i10 == 1) {
            a();
            return;
        }
        if (i10 == 2) {
            c(true, 3);
        } else {
            if (i10 != 3) {
                return;
            }
            x();
            this.f17377z = false;
            this.pf = true;
        }
    }

    public void c(Context context, int i10) {
        tt(context, i10);
        if (i10 == 4) {
            this.f17377z = false;
            da.tt().post(new Runnable() { // from class: com.byazt.un.uj.10
                @Override // java.lang.Runnable
                public void run() {
                    uj.this.x();
                }
            });
        }
    }

    public void c(c cVar) {
        this.f20841hd = new WeakReference<>(cVar);
    }

    @Override // com.byazt.dh.ve
    public void c(int i10) {
        if (com.byazt.ex.c.c(this.f17367a)) {
            if (this.lt <= 0) {
                this.lt = System.currentTimeMillis();
            }
            long jCurrentTimeMillis = System.currentTimeMillis() - this.lt;
            JSONObject jSONObject = new JSONObject();
            try {
                jSONObject.putOpt("close_reason", Integer.valueOf(i10));
                jSONObject.putOpt("buffer_count", Integer.valueOf(u()));
                jSONObject.putOpt("buffer_time", Long.valueOf(t()));
            } catch (Exception e10) {
                m.c(e10);
            }
            if (!this.rl.c(512)) {
                this.rl.ve(512);
                if (this.or.equals(com.byazt.dyf.tt.AD_TAG_FEED)) {
                    com.byazt.ddx.uj.c(this.f17367a, com.byazt.dyf.tt.AD_TAG_FEED, jCurrentTimeMillis, jSONObject, com.byazt.sw.uj.c(this.f17372n));
                } else if (this.or.equals("draw_ad")) {
                    com.byazt.ddx.uj.c(this.f17367a, "draw_ad", jCurrentTimeMillis, jSONObject, com.byazt.sw.uj.c(this.f17372n));
                }
            }
            if (com.byazt.ex.c.c(this.f17367a)) {
                if (com.byazt.apd.tt.c().c(this.f17367a)) {
                    com.byazt.apd.tt.c().c(LiveMetrics.EVENT_LIVESDK_LIVE_WINDOW_DURATION_V2, this.f17367a, jCurrentTimeMillis);
                } else {
                    com.byazt.ex.c.c(LiveMetrics.EVENT_LIVESDK_LIVE_WINDOW_DURATION_V2, this.f17367a, jCurrentTimeMillis);
                }
            }
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void c(int i10, String str) {
        if (com.byazt.ex.c.c(this.f17367a)) {
            if (this.or.equals(com.byazt.dyf.tt.AD_TAG_FEED)) {
                com.byazt.ddx.uj.c(this.f17367a, com.byazt.dyf.tt.AD_TAG_FEED, i10, str, com.byazt.sw.uj.c(this.f17372n));
            } else if (this.or.equals("draw_ad")) {
                com.byazt.ddx.uj.c(this.f17367a, "draw_ad", i10, str, com.byazt.sw.uj.c(this.f17372n));
            }
        }
    }
}
