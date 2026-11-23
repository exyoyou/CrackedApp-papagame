package com.byazt.zd;

import android.annotation.SuppressLint;
import android.app.Activity;
import android.content.Context;
import android.content.Intent;
import android.text.TextUtils;
import android.view.TextureView;
import android.view.View;
import android.view.ViewGroup;
import android.widget.RelativeLayout;
import com.byazt.aas.nb;
import com.byazt.aas.pf;
import com.byazt.bv.BaseConstants;
import com.byazt.bzd.t;
import com.byazt.dh.ve;
import com.byazt.ete.ic;
import com.byazt.ete.my;
import com.byazt.ete.pu;
import com.byazt.ete.xd;
import com.byazt.fk.n;
import com.byazt.fk.sp;
import com.byazt.kft.UpieVideoView;
import com.byazt.nr.da;
import com.byazt.nr.m;
import com.byazt.nr.rh;
import com.byazt.omf.gt;
import com.byazt.omf.p;
import com.byazt.omf.x;
import com.byazt.sgn.z;
import com.byazt.ts.uj;
import com.byazt.un.a;
import com.byazt.wol.LayoutVideoPlayLayoutForLive;
import com.bytedance.android.metrics.LiveMetrics;
import java.lang.ref.WeakReference;
import java.util.EnumSet;
import java.util.HashMap;
import java.util.Map;
import java.util.concurrent.atomic.AtomicInteger;
import org.json.JSONArray;
import org.json.JSONException;
import org.json.JSONObject;

/* JADX INFO: loaded from: classes9.dex */
@com.byazt.zqa.c(c = {0, 1, 1607, 20})
public abstract class c extends com.byazt.nj.c {

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public int f22714b;
    public WeakReference<ve.tt> bm;

    /* JADX INFO: renamed from: ic, reason: collision with root package name */
    public InterfaceC0501c f22718ic;
    public int kp;
    public final int lr;
    public final String lt;
    public ViewGroup md;
    public com.byazt.hkv.c or;
    public long os;
    public int oz;

    /* JADX INFO: renamed from: p, reason: collision with root package name */
    public long f22721p;
    public long pu;
    public ve.c sv;
    public int tk;

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    public long f22716h = 0;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    public boolean f22715d = false;
    public boolean eo = false;

    /* JADX INFO: renamed from: zb, reason: collision with root package name */
    public Map<String, Object> f22726zb = null;
    public final AtomicInteger qp = new AtomicInteger(0);

    /* JADX INFO: renamed from: nb, reason: collision with root package name */
    public final AtomicInteger f22720nb = new AtomicInteger(0);
    public long pf = 0;
    public long bx = 0;
    public final Runnable aw = new Runnable() { // from class: com.byazt.zd.c.1
        @Override // java.lang.Runnable
        public void run() {
            if (c.this.sv != null) {
                c.this.sv.c();
            }
            if (c.this.f22718ic != null) {
                c.this.f22718ic.tt();
            }
        }
    };

    /* JADX INFO: renamed from: hd, reason: collision with root package name */
    public boolean f22717hd = false;

    /* JADX INFO: renamed from: l, reason: collision with root package name */
    public boolean f22719l = false;
    public boolean lo = true;
    public boolean to = false;

    /* JADX INFO: renamed from: q, reason: collision with root package name */
    public boolean f22722q = false;
    public boolean kk = false;
    public boolean tx = false;

    /* JADX INFO: renamed from: v, reason: collision with root package name */
    public boolean f22725v = false;
    public sp.c cu = new sp.c() { // from class: com.byazt.zd.c.2
        @Override // com.byazt.fk.sp.c
        public void onBufferEnd(sp spVar, int i10) {
            m.c("BaseVideoController", "IVideoPlayerCallback onBufferEnd: ");
            c.this.f17368c.post(new Runnable() { // from class: com.byazt.zd.c.2.7
                @Override // java.lang.Runnable
                public void run() {
                    if (c.this.f17372n != null) {
                        c.this.n(0);
                        c.this.f17372n.tt();
                        c.this.f17368c.removeCallbacks(c.this.aw);
                        c.this.f22719l = false;
                    }
                }
            });
        }

        @Override // com.byazt.fk.sp.c
        public void onBufferStart(sp spVar, int i10, int i11, int i12) {
            m.c("BaseVideoController", "IVideoPlayerCallback onBufferStart: ");
            com.byazt.rgb.ve.uj(c.this.b());
            c.this.f17368c.post(new Runnable() { // from class: com.byazt.zd.c.2.6
                @Override // java.lang.Runnable
                public void run() {
                    if (c.this.f17372n != null) {
                        c.this.n(8);
                        c.this.f17372n.gu();
                        c.this.aw();
                        c.this.f22719l = true;
                    }
                }
            });
        }

        @Override // com.byazt.fk.sp.c
        public void onBufferingUpdate(sp spVar, int i10) {
            m.c("BaseVideoController", "IVideoPlayerCallback onBufferingUpdate: ");
        }

        @Override // com.byazt.fk.sp.c
        public void onCompletion(sp spVar) {
            m.c("BaseVideoController", "IVideoPlayerCallback onCompletion: ");
            com.byazt.rgb.ve.a(c.this.b());
            c.this.f17368c.post(new Runnable() { // from class: com.byazt.zd.c.2.1
                @Override // java.lang.Runnable
                public void run() {
                    c.this.a(false);
                }
            });
            c.this.c(4);
            c.this.tt(4);
        }

        @Override // com.byazt.fk.sp.c
        public void onError(final sp spVar, final com.byazt.fk.ve veVar) {
            if (veVar == null) {
                return;
            }
            com.byazt.rgb.ve.ve(c.this.b(), 1);
            m.c("BaseVideoController", "IVideoPlayerCallback video_pip_big_error onError: code:" + veVar.getCode() + " msg:" + veVar.getMsg());
            c.this.f17368c.post(new Runnable() { // from class: com.byazt.zd.c.2.4
                @Override // java.lang.Runnable
                public void run() {
                    sp spVar2;
                    sp spVar3;
                    int iC;
                    int code = veVar.getCode();
                    if (code == 308 && (spVar2 = c.this.uj) != null && spVar2 != (spVar3 = spVar) && (spVar3 instanceof uj) && ((iC = ((uj) spVar3).c()) == 200 || iC == 203)) {
                        m.uj("BaseVideoController", "ignore errorCode:" + code + " state:" + iC);
                        return;
                    }
                    c.this.c(code, veVar.getExtraCode(), veVar.getMsg(), (JSONArray) null);
                    c.this.f17368c.removeCallbacks(c.this.aw);
                    if (c.this.f17372n != null) {
                        c.this.n(0);
                        c.this.f17372n.tt();
                    }
                    if (c.this.sv != null) {
                        c.this.sv.tt(c.this.bx, com.byazt.vv.c.c(c.this.sp, c.this.f22721p));
                    }
                    if (c.this.f22718ic != null) {
                        c.this.f22718ic.c(code, veVar.getMsg());
                    }
                }
            });
            c.this.c(veVar.getCode(), veVar.getMsg());
        }

        @Override // com.byazt.fk.sp.c
        public void onMonitorLog(sp spVar, JSONObject jSONObject, String str) {
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
            com.byazt.ddx.uj.c((Context) c.this.f17370i.get(), c.this.f17367a, c.this.lt, "pangle_live_sdk_monitor", jSONObject);
        }

        @Override // com.byazt.fk.sp.c
        public void onPause(sp spVar) {
            c.this.tx = true;
            com.byazt.rgb.ve.n(c.this.b());
        }

        @Override // com.byazt.fk.sp.c
        public void onPlayPositionUpdate(final sp spVar, final long j10, final long j11) {
            if (c.this.tx && c.this.f22725v) {
                c.this.tx = false;
                c.this.f22725v = false;
                com.byazt.rgb.ve.tt(c.this.b(), 2);
            }
            if (Math.abs(j10 - c.this.sp) < 50) {
                return;
            }
            m.c("BaseVideoController", "IVideoPlayerCallback onPlayPositionUpdate: current = ", Long.valueOf(j10), "; duration=", Long.valueOf(j11));
            c.this.f17368c.post(new Runnable() { // from class: com.byazt.zd.c.2.8
                @Override // java.lang.Runnable
                public void run() {
                    if (c.this.gu != null) {
                        c.this.gu.c(j10, j11);
                    }
                    c.this.tt(j10, j11);
                    c.this.c(j10, j11);
                    if (c.this.f17367a.pb() <= 0 || j11 <= ((long) c.this.f17367a.pb()) * 1000 || j10 < ((long) c.this.f17367a.pb()) * 1000 || c.this.yp) {
                        return;
                    }
                    c.this.yp = true;
                    spVar.stop();
                    c.this.a(false);
                }
            });
        }

        @Override // com.byazt.fk.sp.c
        public void onPrepared(sp spVar) {
            if (!c.this.kk) {
                c.this.kk = true;
                com.byazt.rgb.ve.ve(c.this.b());
            }
            m.c("BaseVideoController", "IVideoPlayerCallback onPrepared: ");
            if (com.byazt.ex.c.c(c.this.f17367a)) {
                c.this.f17367a.ve(spVar.getCodec());
            }
            c.this.f17368c.post(new Runnable() { // from class: com.byazt.zd.c.2.3
                @Override // java.lang.Runnable
                public void run() {
                    c.this.f17368c.removeCallbacks(c.this.aw);
                    if (c.this.f17372n != null) {
                        c.this.n(0);
                        c.this.f17372n.tt();
                    }
                }
            });
        }

        @Override // com.byazt.fk.sp.c
        public void onRelease(sp spVar) {
            m.c("BaseVideoController", "IVideoPlayerCallback onRelease: ");
            com.byazt.rgb.ve.ve(c.this.b(), 2);
        }

        @Override // com.byazt.fk.sp.c
        public void onRenderStart(sp spVar, long j10) {
            m.c("BaseVideoController", "IVideoPlayerCallback onRenderStart: ");
            if (!c.this.f22722q) {
                c.this.f22722q = true;
                com.byazt.rgb.ve.tt(c.this.b(), 1);
            }
            c.this.f17368c.post(new Runnable() { // from class: com.byazt.zd.c.2.2
                @Override // java.lang.Runnable
                public void run() {
                    if (c.this.f17372n != null) {
                        c.this.n(0);
                        c.this.f17372n.tt();
                        c.this.f17368c.removeCallbacks(c.this.aw);
                        c.this.f22719l = false;
                    }
                }
            });
            c.this.c(j10, false);
            c.this.pu = System.currentTimeMillis();
            c.this.l();
            if (c.this.f22718ic != null) {
                c.this.f22718ic.ve();
            }
        }

        @Override // com.byazt.fk.sp.c
        public void onResume(sp spVar) {
            c.this.f22725v = true;
        }

        @Override // com.byazt.fk.sp.c
        public void onSeekCompletion(sp spVar, boolean z10) {
            m.c("BaseVideoController", "IVideoPlayerCallback onSeekCompletion: ");
            c.this.f17368c.post(new Runnable() { // from class: com.byazt.zd.c.2.5
                @Override // java.lang.Runnable
                public void run() {
                    c.this.f17368c.removeCallbacks(c.this.aw);
                    if (c.this.f17372n != null) {
                        c.this.n(0);
                        c.this.f17372n.tt();
                    }
                }
            });
        }

        @Override // com.byazt.fk.sp.c
        public void onStart(sp spVar) {
        }

        @Override // com.byazt.fk.sp.c
        public void onVideoSizeChanged(sp spVar, int i10, int i11) {
            m.c("BaseVideoController", "IVideoPlayerCallback onVideoSizeChanged: ");
            c.this.tk = i10;
            c.this.kp = i11;
            c.this.lo();
        }
    };

    /* JADX INFO: renamed from: r, reason: collision with root package name */
    public final com.byazt.fn.ve f22723r = new com.byazt.fn.ve() { // from class: com.byazt.zd.c.3
        @Override // com.byazt.fn.ve
        public void onNetworkChanged(Context context, Intent intent, boolean z10, int i10) {
            c.this.c(context, i10);
        }
    };

    /* JADX INFO: renamed from: s, reason: collision with root package name */
    public boolean f22724s = false;

    /* JADX INFO: renamed from: com.byazt.zd.c$8, reason: invalid class name */
    @com.byazt.zqa.c(c = {0, 1, 1607, 112})
    static /* synthetic */ class AnonymousClass8 {

        /* JADX INFO: renamed from: c, reason: collision with root package name */
        public static final /* synthetic */ int[] f22742c;

        static {
            int[] iArr = new int[z.c.values().length];
            f22742c = iArr;
            try {
                iArr[z.c.PAUSE_VIDEO.ordinal()] = 1;
            } catch (NoSuchFieldError unused) {
            }
            try {
                f22742c[z.c.RELEASE_VIDEO.ordinal()] = 2;
            } catch (NoSuchFieldError unused2) {
            }
            try {
                f22742c[z.c.START_VIDEO.ordinal()] = 3;
            } catch (NoSuchFieldError unused3) {
            }
        }
    }

    /* JADX INFO: renamed from: com.byazt.zd.c$c, reason: collision with other inner class name */
    public interface InterfaceC0501c {
        void c();

        void c(int i10, String str);

        void c(long j10, long j11);

        void tt();

        void ve();
    }

    public c(Context context, ViewGroup viewGroup, ic icVar, com.byazt.hkv.c cVar) {
        this.oz = 1;
        this.oz = rh.ve(context);
        this.md = viewGroup;
        this.f17370i = new WeakReference<>(context);
        this.f17367a = icVar;
        this.or = cVar;
        c(context);
        this.lr = nb.t(this.f17367a);
        this.lt = nb.tt(this.f17367a);
    }

    @Override // com.byazt.dh.ve
    public void c(ve.uj ujVar) {
    }

    public void finalize() throws Throwable {
        super.finalize();
        com.byazt.rgb.ve.ve(b(), 3);
    }

    public abstract int gu();

    @Override // com.byazt.dh.c
    public void n(com.byazt.dh.tt ttVar, View view) {
    }

    @Override // com.byazt.nj.c
    public boolean p() {
        return true;
    }

    public boolean p_() {
        ic icVar = this.f17367a;
        return icVar == null || icVar.fr() == 100.0f;
    }

    @Override // com.byazt.dh.ve
    public boolean rl() {
        return false;
    }

    @Override // com.byazt.dh.ve
    public void uj(boolean z10) {
    }

    /* JADX INFO: Access modifiers changed from: private */
    public String b() {
        ic icVar = this.f17367a;
        if (icVar == null) {
            return null;
        }
        return icVar.zm();
    }

    private boolean gr() {
        int i10;
        sp ujVar;
        ic icVar = this.f17367a;
        if (com.byazt.ic.c.tt(icVar)) {
            com.byazt.jr.tt ttVarTk = tk();
            if (ttVarTk == null) {
                if (this.cu != null) {
                    StringBuilder sb2 = new StringBuilder("创建lottie播放器时，iRenderView为null, mediaLayout is null: ");
                    sb2.append(this.f17372n == null);
                    this.cu.onError(null, new com.byazt.jzl.ve(60008, 10005, sb2.toString()));
                }
                m.uj("BaseVideoController", "[video] invoke NativeVideoController#playVideo error: iRenderView为null");
                return false;
            }
            int iSl = nb.sl(this.f17367a);
            this.zm = c("ad");
            this.uj = new com.byazt.kft.c(ttVarTk, com.byazt.ic.c.i(icVar), new uj(String.valueOf(iSl), this.zm), xd.rh(icVar), c("assist"));
            i10 = 1;
        } else if (com.byazt.ic.c.ve(icVar)) {
            com.byazt.jr.tt ttVarTk2 = tk();
            if (ttVarTk2 == null) {
                if (this.cu != null) {
                    StringBuilder sb3 = new StringBuilder("创建Upie播放器时，iRenderView为null, mediaLayout is null: ");
                    sb3.append(this.f17372n == null);
                    this.cu.onError(null, new com.byazt.jzl.ve(60008, 10005, sb3.toString()));
                }
                m.uj("BaseVideoController", "[video] invoke NativeVideoController#playVideo error: iRenderView为null");
                return false;
            }
            int iSl2 = nb.sl(this.f17367a);
            if (p.n() && this.qy.getPlayerType() == 1) {
                ujVar = com.byazt.btt.tt.c().createTTVideoPlayer(gt.getContext(), String.valueOf(iSl2));
            } else {
                this.zm = c("ad");
                ujVar = new uj(String.valueOf(iSl2), this.zm);
            }
            this.uj = new com.byazt.kft.tt(ujVar, com.byazt.ic.c.i(icVar), c("assist"), ttVarTk2);
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
                this.uj = new uj(String.valueOf(iSl3), this.zm);
                i10 = 5;
            }
        }
        if (icVar != null) {
            com.byazt.rgb.ve.c(icVar, String.valueOf(nb.t(this.f17367a)), nb.sl(this.f17367a), i10, this.f17367a.zm());
        }
        return true;
    }

    private void kp() {
        a aVar = this.f17372n;
        if (aVar != null) {
            aVar.uj(0);
            this.f17372n.c(false, false);
            this.f17372n.ve(false);
            this.f17372n.n();
            n(8);
            this.f17372n.sp();
        }
    }

    private void lt() {
        InterfaceC0501c interfaceC0501c = this.f22718ic;
        if (interfaceC0501c != null) {
            interfaceC0501c.c();
        }
    }

    private void pu() {
        if (!this.rl.c(64) || ve() || uj()) {
            this.rl.ve(64);
            long j10 = this.f22721p;
            tt(j10, j10);
            long j11 = this.f22721p;
            this.sp = j11;
            this.f17376x = j11;
            cu();
        }
    }

    private com.byazt.jr.tt tk() {
        a aVar;
        WeakReference<Context> weakReference = this.f17370i;
        if (weakReference == null || weakReference.get() == null || (aVar = this.f17372n) == null) {
            return null;
        }
        return aVar.nu();
    }

    private boolean to() throws Throwable {
        ic icVar;
        WeakReference<Context> weakReference = this.f17370i;
        return weakReference == null || weakReference.get() == null || tk() == null || this.uj == null || (icVar = this.f17367a) == null || pu.a(icVar) != null || pu.sp(this.f17367a) != null || this.f17367a.cf() == 1;
    }

    /* JADX WARN: Code duplicated, block: B:12:0x0020  */
    public void aw() {
        int iTj;
        int iGu = gu();
        if (iGu == 2 || iGu == 1) {
            iTj = gt.tt().tj() * 1000;
        } else {
            iTj = 5;
            if (iGu == 5) {
                iTj = gt.tt().tj() * 1000;
            } else if (iGu == 3) {
                iTj = gt.tt().x(String.valueOf(this.lr));
            }
        }
        this.f17368c.removeCallbacks(this.aw);
        this.f17368c.postDelayed(this.aw, iTj);
    }

    public boolean bm() {
        return this.uj.isCompleted();
    }

    public void bx() {
        ic icVar = this.f17367a;
        if (icVar != null) {
            new com.byazt.ddx.c.C0288c().tt("auto_replay").c(nb.tt(icVar)).n(this.f17367a.uj()).uj(this.f17367a.w_()).c(new com.byazt.ya.c() { // from class: com.byazt.zd.c.4
                @Override // com.byazt.ya.c
                public void onSend(JSONObject jSONObject) throws JSONException {
                    n currentVideoInfo;
                    JSONObject jSONObject2 = new JSONObject();
                    if (t.c(c.this.f17367a)) {
                        jSONObject2.put("is_audio", 1);
                    }
                    if (c.this.qy != null && (currentVideoInfo = c.this.qy.getCurrentVideoInfo()) != null && currentVideoInfo.getStart() > 0.0d) {
                        jSONObject2.put("start", currentVideoInfo.getStart());
                    }
                    jSONObject.put(BaseConstants.EVENT_LABEL_AD_EXTRA_DATA, jSONObject2.toString());
                }
            });
        }
    }

    @Override // com.byazt.dh.ve
    public void da() {
        tt(-1);
        i();
    }

    public boolean hd() {
        return this.to;
    }

    @Override // com.byazt.dh.ve
    public void i() {
        sp spVar = this.uj;
        if (spVar != null) {
            spVar.release();
            this.uj = null;
        }
        a aVar = this.f17372n;
        if (aVar != null) {
            aVar.i();
        }
        this.f17368c.removeCallbacks(this.aw);
        this.f17368c.removeCallbacksAndMessages(null);
        this.sv = null;
        this.f22718ic = null;
    }

    public void ic() {
        if (!this.rl.c(64) || ve() || uj()) {
            if (this.rl.c(2) || t.c(this.f17367a)) {
                qp();
            }
        }
    }

    public void l() {
        if (com.byazt.ex.c.c(this.f17367a)) {
            int iGu = gu();
            boolean zC = this.rl.c(1024);
            long jLongValue = this.rl.tt(1).longValue();
            if (zC) {
                return;
            }
            this.rl.ve(1024);
            if (iGu == 1) {
                com.byazt.ddx.uj.c(this.f17367a, "rewarded_video", System.currentTimeMillis() - jLongValue, com.byazt.sw.uj.c(this.f17372n));
            } else if (iGu == 2) {
                com.byazt.ddx.uj.c(this.f17367a, "fullscreen_interstitial_ad", System.currentTimeMillis() - jLongValue, com.byazt.sw.uj.c(this.f17372n));
            }
        }
    }

    public void lo() {
        this.f17368c.post(new Runnable() { // from class: com.byazt.zd.c.7
            @Override // java.lang.Runnable
            public void run() {
                if (my.uj(c.this.f17367a) || !c.this.p_()) {
                    c cVar = c.this;
                    cVar.c(cVar.tk, c.this.kp);
                    return;
                }
                if (com.byazt.ex.c.c(c.this.f17367a) && c.this.f17367a.by() == 2 && c.this.p_()) {
                    return;
                }
                if (!c.this.p_()) {
                    c cVar2 = c.this;
                    cVar2.c(cVar2.tk, c.this.kp);
                    return;
                }
                if (c.this.f17367a != null && c.this.f17367a.vi() == 0) {
                    c cVar3 = c.this;
                    cVar3.uj(cVar3.tk, c.this.kp);
                } else if (c.this.f17367a == null || c.this.f17367a.vi() != 2) {
                    c cVar4 = c.this;
                    cVar4.ve(cVar4.tk, c.this.kp);
                } else {
                    c cVar5 = c.this;
                    cVar5.tt(cVar5.tk, c.this.kp);
                }
            }
        });
    }

    public boolean lr() {
        sp spVar = this.uj;
        return spVar != null && spVar.isPlaying();
    }

    @Override // com.byazt.nj.c
    public Map<String, Object> pf() {
        HashMap map = new HashMap();
        Map<String, Object> map2 = this.f22726zb;
        if (map2 != null) {
            for (Map.Entry<String, Object> entry : map2.entrySet()) {
                map.put(entry.getKey(), entry.getValue());
            }
        }
        for (Map.Entry<String, Object> entry2 : nb.c(this.f22716h, this.f17367a, nu()).entrySet()) {
            map.put(entry2.getKey(), entry2.getValue());
        }
        return map;
    }

    @Override // com.byazt.dh.ve
    public boolean qy() {
        return this.f22719l;
    }

    @Override // com.byazt.dh.ve
    public void sp() {
        sp spVar = this.uj;
        if (spVar != null) {
            spVar.pause();
        }
    }

    public int sv() {
        return t.c(this.f17367a) ? this.f22720nb.get() : this.qp.get();
    }

    @Override // com.byazt.dh.ve
    public int u() {
        sp spVar = this.uj;
        if (spVar == null) {
            return 0;
        }
        return spVar.getBufferCount();
    }

    @Override // com.byazt.dh.ve
    public void x() {
        com.byazt.jzl.a aVar;
        a aVar2 = this.f17372n;
        if (aVar2 != null) {
            aVar2.c();
            this.f17372n.gt();
            this.f17372n.gr();
        }
        m.c("BaseVideoController", "resumeVideo:  mIsSurfaceValid = ", Boolean.valueOf(this.f17369da));
        sp spVar = this.uj;
        if (spVar != null) {
            if (spVar.isPaused()) {
                if (this.f17369da || (((aVar = this.qy) != null && aVar.isAudio()) || com.byazt.ic.c.tt(this.f17367a))) {
                    eo();
                } else {
                    tt(this.yv);
                }
                m.c("BaseVideoController", "resumeVideo: isPaused = true , mIsSurfaceValid = ", Boolean.valueOf(this.f17369da));
            } else {
                this.f22714b = 1;
                this.f22722q = false;
                this.uj.start(false, this.sp, this.nu);
            }
        }
        if (!this.rl.c(64) || ve() || uj()) {
            if (this.rl.c(2) || t.c(this.f17367a)) {
                qp();
            }
        }
    }

    @Override // com.byazt.dh.ve
    public int z() {
        return com.byazt.vv.c.c(this.f17376x, this.f22721p);
    }

    public void a(boolean z10) {
        if (md() && this.f17372n != null) {
            this.f17368c.removeCallbacks(this.aw);
            n(0);
            this.f17372n.tt();
            this.bx = System.currentTimeMillis() - this.pf;
            this.f17372n.n(true);
            if (nb.x(this.f17367a)) {
                this.f17372n.c2(this.f17367a, this.f17370i, true);
            } else {
                this.f17372n.yv();
            }
            pu();
            ve.c cVar = this.sv;
            if (cVar != null) {
                cVar.c(this.bx, com.byazt.vv.c.c(this.sp, this.f22721p));
            }
            lt();
            this.my = true;
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public boolean sp(int i10) {
        ic icVar;
        int iVe = rh.ve(gt.getContext());
        if (iVe != 4 && iVe != 0) {
            a();
            this.f17377z = true;
            this.f22717hd = false;
            a aVar = this.f17372n;
            if (aVar != null && (icVar = this.f17367a) != null) {
                return aVar.c(i10, xd.z(icVar), true);
            }
        } else if (iVe == 4) {
            this.f17377z = false;
            a aVar2 = this.f17372n;
            if (aVar2 != null) {
                aVar2.gt();
            }
        }
        return true;
    }

    @Override // com.byazt.nj.c, com.byazt.dh.ve
    public boolean n() {
        if (t.c(this.f17367a)) {
            return ((double) this.f22720nb.get()) < ((double) xd.nu(this.f17367a).sp());
        }
        return super.uj();
    }

    @Override // com.byazt.dh.ve
    public boolean ve() {
        return this.qp.get() > 0;
    }

    private void ve(com.byazt.jzl.a aVar) throws Exception {
        if (aVar == null) {
            tt("model is null");
            return;
        }
        this.qy = aVar;
        if (this.uj != null) {
            ic icVar = this.f17367a;
            if (icVar != null) {
                aVar.setCodeId(String.valueOf(nb.t(icVar)));
            }
            aVar.setScene(1);
            com.byazt.rgb.ve.tt(b());
            this.uj.setDataSource(aVar);
        }
        this.pf = System.currentTimeMillis();
        if (!TextUtils.isEmpty(aVar.getUrl())) {
            this.f17372n.n(8);
            this.f17372n.n(0);
            c(new Runnable() { // from class: com.byazt.zd.c.5
                @Override // java.lang.Runnable
                public void run() {
                    if (c.this.uj == null) {
                        c.this.tt("play video error proxy empty");
                        return;
                    }
                    if (c.this.rl.uj(1)) {
                        c.this.tt("multi play_start");
                        return;
                    }
                    c.this.rl.c();
                    c.this.nb();
                    c.this.pf = System.currentTimeMillis();
                    c.this.f17372n.uj(0);
                    c.this.f22714b = 1;
                    c.this.f22722q = false;
                    c.this.kk = false;
                    com.byazt.rgb.ve.c(c.this.b(), c.this.f22714b);
                    c.this.uj.start(true, c.this.sp, c.this.nu);
                }
            });
            return;
        }
        tt("url is null");
    }

    @Override // com.byazt.nj.c, com.byazt.dh.ve
    public boolean uj() {
        if (t.c(this.f17367a)) {
            return ((double) this.f22720nb.get()) <= ((double) xd.nu(this.f17367a).sp());
        }
        return super.uj();
    }

    @Override // com.byazt.dh.ve
    public void n(boolean z10) {
        this.lo = z10;
    }

    @Override // com.byazt.dh.ve
    public void tt() {
        if (this.uj != null) {
            if (!n()) {
                this.qp.getAndAdd(1);
                bx();
            }
            this.f22720nb.getAndAdd(1);
            this.rl.c();
            nb();
            c(0L, true);
            ve(false);
            this.f22714b = 2;
            this.f22722q = false;
            this.uj.restart();
        }
    }

    public void n(int i10) {
        Object obj;
        if (this.f17370i == null || !com.byazt.ex.c.c(this.f17367a) || this.f17370i.get() == null || (obj = (Context) this.f17370i.get()) == null || !(obj instanceof com.byazt.fh.tt)) {
            return;
        }
        ((com.byazt.fh.tt) obj).c(i10 == 0);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void uj(int i10, int i11) {
        ic icVar;
        try {
            WeakReference<Context> weakReference = this.f17370i;
            if (weakReference != null && weakReference.get() != null && tk() != null && this.uj != null && (icVar = this.f17367a) != null) {
                boolean z10 = icVar.by() == 1;
                int[] iArrTt = pf.tt(gt.getContext());
                c(iArrTt[0], iArrTt[1], i10, i11, z10);
            }
        } catch (Throwable unused) {
        }
    }

    @SuppressLint({"InflateParams"})
    private void c(Context context) {
        EnumSet enumSetNoneOf = EnumSet.noneOf(com.byazt.dh.tt.c.class);
        enumSetNoneOf.add(com.byazt.dh.tt.c.hideCloseBtn);
        enumSetNoneOf.add(com.byazt.dh.tt.c.hideBackBtn);
        a aVar = new a(context.getApplicationContext(), new LayoutVideoPlayLayoutForLive(context), true, enumSetNoneOf, this.f17367a, this, this.or);
        this.f17372n = aVar;
        aVar.c((com.byazt.dh.c) this);
    }

    public void uj(int i10) {
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

    public void c(long j10, boolean z10) {
        if (this.rl.c(2)) {
            return;
        }
        this.f22716h = j10;
        da(z10);
        this.eo = true;
    }

    @Override // com.byazt.dh.ve
    public void a() {
        sp spVar = this.uj;
        if (spVar != null) {
            spVar.pause();
        }
        if (!this.rl.c(64) || ve() || uj()) {
            if (this.rl.c(2) || t.c(this.f17367a)) {
                ve((Map<String, Object>) null);
            }
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void ve(int i10, int i11) {
        try {
            m.c("changeVideoSize", "changeVideoSize start.......mMaterialMeta.getAdSlot()=" + this.f17367a.ij());
            if (to()) {
                return;
            }
            m.c("changeVideoSize", "changeVideoSize start check condition complete ... go ..");
            int[] iArrTt = pf.tt(gt.getContext());
            boolean z10 = false;
            boolean z11 = this.f17367a.by() == 1;
            float f10 = iArrTt[0];
            float f11 = iArrTt[1];
            float f12 = i10;
            float f13 = i11;
            if (z11) {
                if (f12 > f13) {
                    c(f10, f11, f12, f13, true);
                    return;
                }
            } else if (f12 < f13) {
                c(f10, f11, f12, f13, false);
                return;
            }
            float f14 = f12 / f13;
            float f15 = f10 / f11;
            if (z11) {
                if (f15 < 0.5625f && f14 == 0.5625f) {
                    f12 = (9.0f * f11) / 16.0f;
                    f13 = f11;
                    z10 = true;
                }
            } else if (f15 > 1.7777778f && f14 == 1.7777778f) {
                f13 = (9.0f * f10) / 16.0f;
                f12 = f10;
                z10 = true;
            }
            m.c("changeVideoSize", "适配后宽高：videoHeight=" + f13 + ",videoWidth=" + f12);
            if (z10) {
                f10 = f12;
                f11 = f13;
            } else {
                m.c("changeVideoSize", " 屏幕比例和视频比例相同，以及其他情况都按照屏幕宽高播放，videoHeight=" + f11 + "，videoWidth=" + f10);
            }
            int i12 = (int) f10;
            int i13 = (int) f11;
            RelativeLayout.LayoutParams layoutParams = new RelativeLayout.LayoutParams(i12, i13);
            layoutParams.addRule(13);
            Object objTk = tk();
            if ((objTk instanceof TextureView) || (objTk instanceof UpieVideoView)) {
                if (objTk instanceof TextureView) {
                    ((TextureView) objTk).setLayoutParams(layoutParams);
                } else {
                    ((UpieVideoView) objTk).setLayoutParams(layoutParams);
                }
                ViewGroup.LayoutParams layoutParams2 = this.md.getLayoutParams();
                if (layoutParams2 != null) {
                    layoutParams2.height = i13;
                    layoutParams2.width = i12;
                    this.md.setLayoutParams(layoutParams2);
                }
            }
        } catch (Throwable th) {
            m.ve("changeVideoSize", "changeSize error", th);
        }
    }

    @Override // com.byazt.dh.ve
    public void tt(Map<String, Object> map) {
        this.f22726zb = map;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void tt(int i10, int i11) {
        try {
            WeakReference<Context> weakReference = this.f17370i;
            if (weakReference != null && weakReference.get() != null && tk() != null && this.uj != null && this.f17367a != null) {
                int[] iArrTt = pf.tt(gt.getContext());
                boolean z10 = this.f17367a.by() == 1;
                float f10 = iArrTt[0];
                float f11 = iArrTt[1];
                float f12 = i10;
                float f13 = i11;
                if (z10) {
                    if (f12 > f13) {
                        c(f10, f11, f12, f13, true);
                        return;
                    }
                    f11 = (f13 * f10) / f12;
                } else {
                    if (f12 < f13) {
                        c(f10, f11, f12, f13, false);
                        return;
                    }
                    f10 = (f12 * f11) / f13;
                }
                RelativeLayout.LayoutParams layoutParams = new RelativeLayout.LayoutParams((int) f10, (int) f11);
                layoutParams.addRule(13);
                if (this.md != null) {
                    Object objTk = tk();
                    if (objTk instanceof TextureView) {
                        ((TextureView) objTk).setLayoutParams(layoutParams);
                    } else if (objTk instanceof UpieVideoView) {
                        ((UpieVideoView) objTk).setLayoutParams(layoutParams);
                    }
                }
            }
        } catch (Throwable th) {
            m.ve("changeVideoSize", "changeVideoSizeByWidth error", th);
        }
    }

    @Override // com.byazt.dh.ve
    public boolean c(com.byazt.jzl.a aVar) {
        if (aVar == null) {
            tt("model is null");
            return false;
        }
        sp spVar = this.uj;
        if (spVar != null && spVar.isPaused()) {
            this.uj.play();
            return true;
        }
        this.qy = aVar;
        aVar.getUrl();
        if (TextUtils.isEmpty(aVar.getUrl())) {
            m.uj("BaseVideoController", "No video info");
            tt("url is null");
            return false;
        }
        this.f22715d = (aVar.getUrl().startsWith("http") || com.byazt.ex.c.c(this.f17367a)) ? false : true;
        this.nu = aVar.isQuiet();
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
            n(8);
            this.f17372n.sp();
            this.f17372n.ve(aVar.getWidth(), aVar.getHeight());
            this.f17372n.ve(this.md);
        }
        try {
            if (this.uj == null) {
                if (!gr()) {
                    tt("create video error");
                    return false;
                }
                this.uj.addIVideoPlayerCallback(this.cu);
            }
            yv();
            this.bx = 0L;
            ve(aVar);
            return true;
        } catch (Throwable th) {
            tt(th.getMessage());
            m.uj("BaseVideoController", "create video error:" + th.getMessage());
            return false;
        }
    }

    private boolean a(int i10) {
        return this.f17372n.ve(i10);
    }

    @Override // com.byazt.dh.c
    public void uj(com.byazt.dh.tt ttVar, View view) {
        if (this.gt) {
            i(false);
            a aVar = this.f17372n;
            if (aVar != null) {
                aVar.tt(this.md);
            }
            uj(1);
            return;
        }
        c(1);
        c(true, 3);
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
        this.f22721p = j11;
        this.f17372n.c(j10, j11);
        int iC = com.byazt.vv.c.c(j10, j11);
        if (!ve() && !uj()) {
            this.f17372n.tt(iC);
        } else {
            this.f17372n.tt(100);
        }
        try {
            ve.c cVar = this.sv;
            if (cVar != null) {
                cVar.c(j10, j11);
            }
            InterfaceC0501c interfaceC0501c = this.f22718ic;
            if (interfaceC0501c != null) {
                interfaceC0501c.c(j10, j11);
            }
        } catch (Throwable th) {
            m.ve("BaseVideoController", "onProgressUpdate error: ", th);
        }
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
    public void c(ve.tt ttVar) {
        this.bm = new WeakReference<>(ttVar);
    }

    @Override // com.byazt.dh.ve
    public void c(ve.c cVar) {
        this.sv = cVar;
    }

    @Override // com.byazt.dh.ve
    public void c(Map<String, Object> map) {
        sp spVar = this.uj;
        if (spVar != null) {
            spVar.pause();
        }
        if (!this.rl.c(64) || ve() || uj()) {
            if (this.rl.c(2) || t.c(this.f17367a)) {
                ve(map);
            }
        }
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
                    uj(z10 ? 8 : 0);
                    a aVar = this.f17372n;
                    if (aVar != null) {
                        aVar.c(this.md);
                        this.f17372n.ve(false);
                    }
                } else {
                    uj(1);
                    a aVar2 = this.f17372n;
                    if (aVar2 != null) {
                        aVar2.tt(this.md);
                        this.f17372n.ve(false);
                    }
                }
                WeakReference<ve.tt> weakReference = this.bm;
                ve.tt ttVar2 = weakReference != null ? weakReference.get() : null;
                if (ttVar2 != null) {
                    ttVar2.c(this.gt);
                }
            }
        }
    }

    @Override // com.byazt.dh.ve
    public void c(long j10) {
        this.sp = Math.max(j10, nu().getCurrentPosition());
        this.f17376x = Math.max(this.f17376x, sl());
        a aVar = this.f17372n;
        if (aVar != null) {
            aVar.c();
        }
        sp spVar = this.uj;
        if (spVar != null) {
            this.f22714b = 1;
            this.f22722q = false;
            spVar.start(false, this.sp, this.nu);
            this.uj.seekTo(this.sp);
        }
    }

    @Override // com.byazt.dh.ve
    public void c(boolean z10, int i10) {
        tt(i10);
        i();
    }

    private void tt(long j10, boolean z10) {
        if (this.uj == null) {
            return;
        }
        if (z10) {
            kp();
        }
        this.uj.seekTo(j10);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void c(int i10, int i11) {
        ViewGroup viewGroup;
        try {
            if (tk() != null && this.uj != null && (viewGroup = this.md) != null) {
                float f10 = i10;
                float f11 = i11;
                float width = viewGroup.getWidth();
                float f12 = f10 / (width * 1.0f);
                float height = this.md.getHeight();
                if (f12 <= f11 / (height * 1.0f)) {
                    width = f10 * (height / (f11 * 1.0f));
                } else {
                    height = f11 * (width / (f10 * 1.0f));
                }
                RelativeLayout.LayoutParams layoutParams = new RelativeLayout.LayoutParams((int) width, (int) height);
                layoutParams.addRule(13);
                Object objTk = tk();
                if (objTk instanceof TextureView) {
                    ((TextureView) objTk).setLayoutParams(layoutParams);
                } else if (objTk instanceof UpieVideoView) {
                    ((UpieVideoView) objTk).setLayoutParams(layoutParams);
                }
            }
        } catch (Throwable th) {
            m.ve("changeVideoSize", "changeVideoSizeSupportInteraction error", th);
        }
    }

    @Override // com.byazt.dh.ve
    public void tt(com.byazt.jzl.a aVar) {
        this.qy = aVar;
    }

    private void c(float f10, float f11, float f12, float f13, boolean z10) {
        RelativeLayout.LayoutParams layoutParams;
        if (f12 <= 0.0f || f13 <= 0.0f) {
            try {
                f12 = xd.uj(this.f17367a);
                f13 = xd.ve(this.f17367a);
            } catch (Throwable unused) {
                return;
            }
        }
        if (f13 > 0.0f && f12 > 0.0f) {
            if (z10) {
                if (f12 < f13) {
                    return;
                }
                layoutParams = new RelativeLayout.LayoutParams((int) f10, (int) ((f13 * f10) / f12));
            } else if (f12 > f13) {
                return;
            } else {
                layoutParams = new RelativeLayout.LayoutParams((int) ((f12 * f11) / f13), (int) f11);
            }
            layoutParams.addRule(13);
            Object objTk = tk();
            if (objTk instanceof TextureView) {
                ((TextureView) objTk).setLayoutParams(layoutParams);
            } else if (objTk instanceof UpieVideoView) {
                ((UpieVideoView) objTk).setLayoutParams(layoutParams);
            }
            this.to = true;
        }
    }

    @Override // com.byazt.dh.c
    public void c(com.byazt.dh.tt ttVar, View view) {
        if (this.uj == null || !md()) {
            return;
        }
        if (this.uj.isPlaying()) {
            a();
            this.f17372n.tt(true, false);
            this.f17372n.a();
            return;
        }
        if (!this.uj.isPaused()) {
            a aVar = this.f17372n;
            if (aVar != null) {
                aVar.ve(this.md);
            }
            c(this.sp);
            a aVar2 = this.f17372n;
            if (aVar2 != null) {
                aVar2.tt(false, false);
                return;
            }
            return;
        }
        x();
        a aVar3 = this.f17372n;
        if (aVar3 != null) {
            aVar3.tt(false, false);
        }
    }

    @Override // com.byazt.dh.c
    public void c(com.byazt.dh.tt ttVar, int i10) {
        if (this.uj == null) {
            return;
        }
        tt(this.os, a(i10));
    }

    @Override // com.byazt.dh.c
    public void c(com.byazt.dh.tt ttVar, int i10, boolean z10) {
        if (md()) {
            long j10 = this.f22721p;
            long j11 = (long) (((((long) i10) * j10) * 1.0f) / 100.0f);
            if (j10 > 0) {
                this.os = (int) j11;
            } else {
                this.os = 0L;
            }
            a aVar = this.f17372n;
            if (aVar != null) {
                aVar.c(this.os);
            }
        }
    }

    @Override // com.byazt.dh.c
    public void c(com.byazt.dh.tt ttVar, View view, boolean z10, boolean z11) {
        if (this.f17374t) {
            a();
        }
        if (z10 && !this.f17374t && !bm()) {
            this.f17372n.tt(!lr(), false);
            this.f17372n.c(z11, true, false);
        }
        sp spVar = this.uj;
        if (spVar != null && spVar.isPlaying()) {
            this.f17372n.a();
            this.f17372n.n();
        } else {
            this.f17372n.a();
        }
    }

    @Override // com.byazt.dh.c
    public void c() {
        a aVar = this.f17372n;
        if (aVar != null) {
            aVar.n();
            this.f17372n.c();
        }
        a aVar2 = this.f17372n;
        if (aVar2 != null) {
            aVar2.gr();
        }
        c(-1L);
    }

    @Override // com.byazt.un.tt
    public void c(z.c cVar, String str) {
        int i10 = AnonymousClass8.f22742c[cVar.ordinal()];
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
            this.f22717hd = true;
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void c(Context context, int i10) {
        if (md() && this.oz != i10) {
            if (!this.f22717hd) {
                da.tt().post(new Runnable() { // from class: com.byazt.zd.c.6
                    @Override // java.lang.Runnable
                    public void run() {
                        c.this.sp(2);
                    }
                });
            }
            this.oz = i10;
        }
    }

    @Override // com.byazt.dh.ve
    public void c(int i10) {
        if (com.byazt.ex.c.c(this.f17367a)) {
            int iGu = gu();
            long jCurrentTimeMillis = System.currentTimeMillis() - this.pu;
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
                if (iGu == 1) {
                    com.byazt.ddx.uj.c(this.f17367a, "rewarded_video", jCurrentTimeMillis, jSONObject, com.byazt.sw.uj.c(this.f17372n));
                } else if (iGu == 2) {
                    com.byazt.ddx.uj.c(this.f17367a, "fullscreen_interstitial_ad", jCurrentTimeMillis, jSONObject, com.byazt.sw.uj.c(this.f17372n));
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
            int iGu = gu();
            if (iGu == 1) {
                com.byazt.ddx.uj.c(this.f17367a, "rewarded_video", i10, str, com.byazt.sw.uj.c(this.f17372n));
            } else if (iGu == 2) {
                com.byazt.ddx.uj.c(this.f17367a, "fullscreen_interstitial_ad", i10, str, com.byazt.sw.uj.c(this.f17372n));
            }
        }
    }

    public void c(InterfaceC0501c interfaceC0501c) {
        this.f22718ic = interfaceC0501c;
    }
}
