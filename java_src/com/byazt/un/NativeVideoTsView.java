package com.byazt.un;

import android.annotation.SuppressLint;
import android.content.Context;
import android.graphics.Bitmap;
import android.graphics.drawable.BitmapDrawable;
import android.os.Message;
import android.text.TextUtils;
import android.view.MotionEvent;
import android.view.View;
import android.view.ViewGroup;
import android.view.ViewParent;
import android.view.ViewTreeObserver;
import android.widget.FrameLayout;
import android.widget.ImageView;
import android.widget.RelativeLayout;
import com.byazt.aas.nb;
import com.byazt.aas.pf;
import com.byazt.afw.nu;
import com.byazt.bzd.sl;
import com.byazt.bzd.t;
import com.byazt.dna.qp;
import com.byazt.ete.ic;
import com.byazt.ete.pu;
import com.byazt.ete.xd;
import com.byazt.ete.z;
import com.byazt.lbn.TTViewStub;
import com.byazt.nc.u;
import com.byazt.nr.d;
import com.byazt.nr.da;
import com.byazt.nr.m;
import com.byazt.nr.rh;
import com.byazt.omf.gt;
import com.byazt.omf.x;
import com.byazt.omf.zb;
import com.byazt.oq.GifView;
import com.byazt.ouz.NativeExpressVideoView;
import com.byazt.yj.gr;
import java.lang.ref.WeakReference;
import java.util.concurrent.atomic.AtomicBoolean;

/* JADX INFO: loaded from: classes6.dex */
@com.byazt.zqa.c(c = {0, 1, 96, 2485})
@SuppressLint({"ViewConstructor"})
public class NativeVideoTsView extends FrameLayout implements com.byazt.dh.ve.c, qp.c, com.byazt.un.uj.c {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public ViewGroup f20745a;
    public boolean aw;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public boolean f20746b;
    public ve bm;
    public int bx;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public boolean f20747c;
    public long cu;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    public final d f20748d;

    /* JADX INFO: renamed from: da, reason: collision with root package name */
    public RelativeLayout f20749da;
    public boolean eo;
    public boolean gr;
    public final AtomicBoolean gt;
    public boolean gu;

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    public long f20750h;

    /* JADX INFO: renamed from: hd, reason: collision with root package name */
    public boolean f20751hd;

    /* JADX INFO: renamed from: i, reason: collision with root package name */
    public boolean f20752i;

    /* JADX INFO: renamed from: ic, reason: collision with root package name */
    public boolean f20753ic;
    public boolean kk;
    public boolean kp;

    /* JADX INFO: renamed from: l, reason: collision with root package name */
    public ViewTreeObserver f20754l;
    public View.OnAttachStateChangeListener lo;
    public ViewTreeObserver.OnGlobalLayoutListener lr;
    public com.byazt.sy.sp lt;

    /* JADX INFO: renamed from: m, reason: collision with root package name */
    public int f20755m;
    public boolean md;
    public uj my;

    /* JADX INFO: renamed from: n, reason: collision with root package name */
    public com.byazt.dh.ve f20756n;

    /* JADX INFO: renamed from: nb, reason: collision with root package name */
    public boolean f20757nb;
    public AtomicBoolean nu;
    public long or;

    /* JADX INFO: renamed from: p, reason: collision with root package name */
    public NativeExpressVideoView f20758p;
    public boolean pf;
    public ViewGroup pu;

    /* JADX INFO: renamed from: q, reason: collision with root package name */
    public boolean f20759q;
    public com.byazt.dh.ve.InterfaceC0292ve qp;
    public boolean qy;
    public boolean rh;
    public String rl;
    public ImageView sl;
    public FrameLayout sp;
    public int sv;

    /* JADX INFO: renamed from: t, reason: collision with root package name */
    public ImageView f20760t;
    public tt tk;
    public com.byazt.it.ve to;
    public boolean tt;
    public volatile boolean tx;

    /* JADX INFO: renamed from: u, reason: collision with root package name */
    public ImageView f20761u;
    public ic uj;

    /* JADX INFO: renamed from: v, reason: collision with root package name */
    public AtomicBoolean f20762v;
    public final Context ve;

    /* JADX INFO: renamed from: x, reason: collision with root package name */
    public boolean f20763x;
    public boolean yp;
    public boolean yv;

    /* JADX INFO: renamed from: z, reason: collision with root package name */
    public String f20764z;

    /* JADX INFO: renamed from: zb, reason: collision with root package name */
    public TTViewStub f20765zb;
    public boolean zm;

    public interface c {
        void c(View view, int i10);
    }

    @com.byazt.zqa.c(c = {0, 1, 96, 1447})
    private class tt implements Runnable {
        public volatile boolean tt;

        private tt() {
        }

        public Runnable c(boolean z10) {
            this.tt = z10;
            return this;
        }

        @Override // java.lang.Runnable
        public void run() {
            NativeVideoTsView.this.tt(this.tt);
        }
    }

    public interface uj {
        void c(boolean z10, long j10, long j11, long j12, boolean z11, boolean z12);
    }

    @com.byazt.zqa.c(c = {0, 1, 96, 1442})
    public static class ve implements gr {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        public int f20774a;

        /* JADX INFO: renamed from: c, reason: collision with root package name */
        public z f20775c;

        /* JADX INFO: renamed from: n, reason: collision with root package name */
        public String f20776n;
        public int sp;
        public WeakReference<ViewGroup> tt;
        public ic uj;
        public WeakReference<GifView> ve = new WeakReference<>(null);

        public ve(z zVar, ViewGroup viewGroup, ic icVar, String str, int i10, int i11) {
            this.f20775c = zVar;
            this.tt = new WeakReference<>(viewGroup);
            this.uj = icVar;
            this.f20776n = str;
            this.f20774a = i10;
            this.sp = i11;
        }

        @Override // com.byazt.yj.gr
        public void onFailed(int i10, String str, Throwable th) {
            m.uj("copflg", "fail: ".concat(String.valueOf(str)));
            GifView gifView = this.ve.get();
            if (gifView != null) {
                gifView.setVisibility(8);
            }
            com.byazt.ddx.uj.c(this.uj, this.f20776n, 2);
        }

        @Override // com.byazt.yj.gr
        public void onSuccess(final com.byazt.yj.m mVar) {
            try {
                ViewGroup viewGroup = this.tt.get();
                if (viewGroup == null) {
                    return;
                }
                viewGroup.postDelayed(new Runnable() { // from class: com.byazt.un.NativeVideoTsView.ve.1
                    @Override // java.lang.Runnable
                    public void run() {
                        try {
                            ViewGroup viewGroup2 = (ViewGroup) ve.this.tt.get();
                            if (viewGroup2 == null) {
                                return;
                            }
                            Context context = viewGroup2.getContext();
                            ve veVar = ve.this;
                            veVar.c(context, veVar.f20775c, mVar, viewGroup2);
                        } catch (Exception e10) {
                            m.c(e10);
                        }
                    }
                }, 100L);
            } catch (Exception e10) {
                onFailed(1002, "", e10);
            }
        }

        private int c() {
            if (this.f20775c.a() > 0.0d) {
                return (int) (((double) this.sp) * this.f20775c.a());
            }
            return this.sp / 2;
        }

        private void c(Context context, FrameLayout.LayoutParams layoutParams, int i10) {
            if (this.f20775c.ve() == 2) {
                layoutParams.gravity = 8388693;
                layoutParams.rightMargin = i10;
                layoutParams.bottomMargin = i10;
            } else {
                layoutParams.gravity = 8388659;
                layoutParams.leftMargin = i10;
                layoutParams.topMargin = pf.ve(context, 19.0f);
            }
        }

        private void c(Object obj, com.byazt.yj.m mVar, GifView gifView) {
            if (obj instanceof byte[]) {
                if (mVar.isGif()) {
                    gifView.c((byte[]) obj, false);
                    gifView.setRepeatConfig(false);
                } else {
                    gifView.setImageDrawable(com.byazt.aas.m.c((byte[]) obj, 0));
                }
            }
        }

        private void c(GifView gifView) {
            if (gifView == null || gifView.getParent() == null) {
                return;
            }
            ((ViewGroup) gifView.getParent()).removeView(gifView);
        }

        /* JADX INFO: Access modifiers changed from: private */
        public void c(Context context, z zVar, com.byazt.yj.m mVar, ViewGroup viewGroup) {
            FrameLayout.LayoutParams layoutParams;
            GifView gifView = new GifView(context);
            gifView.setAdjustViewBounds(true);
            gifView.setBackgroundColor(0);
            int iVe = pf.ve(context, 12.0f);
            this.f20774a = viewGroup.getWidth() <= 0 ? this.f20774a : viewGroup.getWidth();
            this.sp = viewGroup.getHeight() <= 0 ? this.sp : viewGroup.getHeight();
            int iC = c();
            if (zVar.c() == 3) {
                if (iC > pf.ve(context, 88.0f)) {
                    iC = pf.ve(context, 88.0f);
                }
            } else if (zVar.c() == 4 && iC > pf.ve(context, 178.0f)) {
                iC = pf.ve(context, 178.0f);
            }
            int i10 = this.f20774a - iVe;
            int iSp = (int) (((double) iC) * zVar.sp());
            if (iSp > i10 && iSp > 0 && i10 > 0) {
                layoutParams = new FrameLayout.LayoutParams(i10, -2);
            } else {
                layoutParams = new FrameLayout.LayoutParams(-2, iC);
            }
            c(context, layoutParams, iVe);
            gifView.setVisibility(0);
            c(mVar.getResult(), mVar, gifView);
            c(this.ve.get());
            viewGroup.addView(gifView, layoutParams);
            this.ve = new WeakReference<>(gifView);
            com.byazt.ddx.uj.c(this.uj, this.f20776n, 0);
        }
    }

    public NativeVideoTsView(Context context, ic icVar) {
        this(context, icVar, false, false);
    }

    private void cu() {
        pf.n(this.f20760t);
        pf.n(this.f20749da);
    }

    private void d() {
        if (this.pu == null) {
            return;
        }
        for (ViewParent parent = getParent(); parent != null; parent = parent.getParent()) {
            if (parent instanceof ViewGroup) {
                ViewGroup viewGroup = (ViewGroup) parent;
                viewGroup.setClipChildren(false);
                if (viewGroup.hashCode() == this.pu.hashCode()) {
                    this.pu.hashCode();
                    return;
                }
            }
        }
    }

    private void eo() {
        if (this.to == null) {
            this.to = getKvCache();
        }
        com.byazt.dh.ve veVar = this.f20756n;
        if (veVar == null || nu() || !this.to.get("key_video_is_update_flag", false)) {
            return;
        }
        boolean z10 = this.to.get("key_native_video_complete", false);
        long j10 = this.to.get("key_video_current_play_position", -1L);
        long j11 = this.to.get("key_video_total_play_duration", veVar.yp() + veVar.t());
        long j12 = this.to.get("key_video_duration", veVar.yp());
        veVar.ve(z10);
        if (z10) {
            veVar.tt(j12);
        } else {
            veVar.tt(j10);
        }
        veVar.ve(j11);
        veVar.uj(j12);
        this.to.put("key_video_is_update_flag", false);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public com.byazt.it.ve getKvCache() {
        ic icVar = this.uj;
        return com.byazt.vif.uj.c(icVar == null ? null : icVar.jl(), "sp_multi_native_video_data");
    }

    private void gr() {
        com.byazt.dh.ve veVar = this.f20756n;
        if (veVar == null) {
            return;
        }
        veVar.uj(this.f20747c);
        ((com.byazt.un.uj) this.f20756n).c((com.byazt.un.uj.c) this);
        this.f20756n.c(this);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void gu() {
        ViewTreeObserver.OnGlobalLayoutListener onGlobalLayoutListener;
        ViewTreeObserver viewTreeObserver = this.f20754l;
        if (viewTreeObserver == null || (onGlobalLayoutListener = this.lr) == null) {
            return;
        }
        viewTreeObserver.removeOnGlobalLayoutListener(onGlobalLayoutListener);
    }

    private void h() {
        if (nu()) {
            return;
        }
        if (this.to == null) {
            this.to = getKvCache();
        }
        this.to.put("key_video_isfromvideodetailpage", false);
        this.to.put("key_video_is_from_detail_page", false);
    }

    private boolean md() {
        if (nu()) {
            return false;
        }
        if (this.to == null) {
            this.to = getKvCache();
        }
        return this.to.get("key_video_is_from_detail_page", false) || this.to.get("key_video_isfromvideodetailpage", false);
    }

    private boolean or() {
        return 5 == gt.tt().a(nb.t(this.uj));
    }

    private boolean p() {
        View view;
        if (!t.c(this.uj)) {
            view = this;
        } else if (pu.c(this.uj) == 2) {
            view = this.f20758p;
        } else {
            ViewParent parent = getParent();
            view = parent instanceof ViewGroup ? (ViewGroup) parent : null;
        }
        return zb.tt(view, com.byazt.qqc.ve.c().c(50, this.uj), 5);
    }

    private void qy() {
        if (!(this instanceof NativeDrawVideoTsView) || this.nu.get() || x.m().sv() == null) {
            return;
        }
        this.f20761u.setImageBitmap(x.m().sv());
        RelativeLayout.LayoutParams layoutParams = (RelativeLayout.LayoutParams) this.f20761u.getLayoutParams();
        int iVe = pf.ve(getContext(), this.f20755m);
        layoutParams.width = iVe;
        layoutParams.height = iVe;
        this.f20761u.setLayoutParams(layoutParams);
        this.nu.set(true);
    }

    private void rl() {
        addView(c(this.ve));
        H_();
    }

    private void x() {
        c(0L, 0);
        this.qp = null;
    }

    private void yv() {
        boolean zP = p();
        if (this.tx && zP) {
            com.byazt.dh.ve veVar = this.f20756n;
            if (veVar instanceof com.byazt.un.uj) {
                ((com.byazt.un.uj) veVar).h();
            }
            this.tx = false;
        } else {
            if (this.tk == null) {
                this.tk = new tt();
            } else {
                da.tt().removeCallbacks(this.tk);
            }
            this.tk.c(zP);
            da.tt().post(this.tk);
        }
        this.f20748d.sendEmptyMessageDelayed(1, this.or);
    }

    private boolean zb() {
        return 2 == gt.tt().a(nb.t(this.uj));
    }

    private boolean zm() {
        return TextUtils.equals(this.f20764z, "splash_ad") || TextUtils.equals(this.f20764z, "cache_splash_ad");
    }

    public void H_() {
        this.f20756n = c(this.ve, this.sp, this.uj, this.f20764z, !nu(), this.gr, this.zm);
        gr();
        this.lo = new View.OnAttachStateChangeListener() { // from class: com.byazt.un.NativeVideoTsView.3
            @Override // android.view.View.OnAttachStateChangeListener
            public void onViewAttachedToWindow(View view) {
                NativeVideoTsView nativeVideoTsView = NativeVideoTsView.this;
                nativeVideoTsView.f20754l = nativeVideoTsView.f20745a.getViewTreeObserver();
                if (NativeVideoTsView.this.f20754l == null || NativeVideoTsView.this.lr == null) {
                    return;
                }
                NativeVideoTsView.this.f20754l.addOnGlobalLayoutListener(NativeVideoTsView.this.lr);
            }

            @Override // android.view.View.OnAttachStateChangeListener
            public void onViewDetachedFromWindow(View view) {
                NativeVideoTsView.this.gu();
            }
        };
        this.lr = new ViewTreeObserver.OnGlobalLayoutListener() { // from class: com.byazt.un.NativeVideoTsView.4
            @Override // android.view.ViewTreeObserver.OnGlobalLayoutListener
            public void onGlobalLayout() {
                int width = NativeVideoTsView.this.f20745a.getWidth();
                int height = NativeVideoTsView.this.f20745a.getHeight();
                ((com.byazt.un.uj) NativeVideoTsView.this.f20756n).c(width, height);
                NativeVideoTsView.this.gu();
                NativeVideoTsView.this.tt(width, height);
            }
        };
    }

    public void I_() {
        pf.c((View) this.f20749da, 8);
        com.byazt.dh.ve.InterfaceC0292ve interfaceC0292ve = this.qp;
        if (interfaceC0292ve != null && !this.kk) {
            this.kk = true;
            interfaceC0292ve.onVideoAdStartPlay();
        }
        pf.c((View) this.f20749da, 8);
        com.byazt.sy.sp spVar = this.lt;
        if (spVar != null) {
            spVar.c();
        }
    }

    public boolean da() {
        return this.f20746b;
    }

    public com.byazt.dh.ve getNativeVideoController() {
        return this.f20756n;
    }

    public boolean getVideoError() {
        return this.gu;
    }

    public void gt() {
        d dVar = this.f20748d;
        if (dVar != null) {
            dVar.removeCallbacksAndMessages(null);
        }
    }

    @Override // com.byazt.dna.qp.c
    public void handleMsg(Message message) {
        if (message.what != 1) {
            return;
        }
        yv();
    }

    @Override // com.byazt.un.uj.c
    public void i() {
        this.tx = true;
        if (this.f20748d.hasMessages(1)) {
            return;
        }
        this.f20748d.sendEmptyMessage(1);
    }

    public boolean m() {
        return this.f20763x;
    }

    public void my() {
        if (this.f20756n != null) {
            cu();
            this.f20756n.tt();
        }
    }

    public boolean nu() {
        return this.tt;
    }

    @Override // android.view.ViewGroup, android.view.View
    public void onAttachedToWindow() {
        View.OnAttachStateChangeListener onAttachStateChangeListener;
        super.onAttachedToWindow();
        if (this.aw) {
            ViewGroup viewGroup = this.f20745a;
            if (viewGroup != null && (onAttachStateChangeListener = this.lo) != null) {
                viewGroup.addOnAttachStateChangeListener(onAttachStateChangeListener);
            }
            uj();
            com.byazt.qw.x.c(this);
        }
    }

    @Override // android.view.ViewGroup, android.view.View
    public void onDetachedFromWindow() {
        View.OnAttachStateChangeListener onAttachStateChangeListener;
        super.onDetachedFromWindow();
        ViewGroup viewGroup = this.f20745a;
        if (viewGroup != null && (onAttachStateChangeListener = this.lo) != null) {
            viewGroup.removeOnAttachStateChangeListener(onAttachStateChangeListener);
        }
        n();
        this.bm = null;
    }

    @Override // android.view.View
    public void onFinishTemporaryDetach() {
        super.onFinishTemporaryDetach();
        if (this.aw) {
            uj();
        }
    }

    @Override // android.view.ViewGroup
    public boolean onInterceptTouchEvent(MotionEvent motionEvent) {
        sl();
        return super.onInterceptTouchEvent(motionEvent);
    }

    @Override // android.view.View
    public void onStartTemporaryDetach() {
        super.onStartTemporaryDetach();
        n();
    }

    @Override // android.view.View
    public void onWindowFocusChanged(boolean z10) {
        com.byazt.dh.ve veVar;
        com.byazt.dh.ve veVar2;
        com.byazt.dh.ve veVar3;
        com.byazt.dh.ve veVar4;
        super.onWindowFocusChanged(z10);
        if (this.aw) {
            this.f20757nb = z10;
            eo();
            if (md() && (veVar4 = this.f20756n) != null && veVar4.gt()) {
                h();
                pf.c((View) this.f20749da, 8);
                uj(true);
                x();
                return;
            }
            sp();
            if (!nu() && z() && (veVar2 = this.f20756n) != null && !veVar2.m()) {
                if (this.f20748d != null) {
                    if (z10 && (veVar3 = this.f20756n) != null && !veVar3.gt()) {
                        this.f20748d.obtainMessage(1).sendToTarget();
                        return;
                    } else {
                        this.f20748d.removeMessages(1);
                        tt(false);
                        return;
                    }
                }
                return;
            }
            if (z()) {
                return;
            }
            if (!z10 && (veVar = this.f20756n) != null && veVar.nu() != null && this.f20756n.nu().isPlaying()) {
                this.f20748d.removeMessages(1);
                tt(false);
            } else if (z10) {
                this.f20748d.obtainMessage(1).sendToTarget();
            }
        }
    }

    @Override // android.view.View
    public void onWindowVisibilityChanged(int i10) {
        com.byazt.dh.ve veVar;
        com.byazt.dh.ve veVar2;
        com.byazt.dh.ve veVar3;
        super.onWindowVisibilityChanged(i10);
        if (this.aw) {
            d();
            eo();
            if (this.f20759q) {
                this.f20759q = i10 == 0;
            }
            if (md() && (veVar3 = this.f20756n) != null && veVar3.gt()) {
                h();
                pf.c((View) this.f20749da, 8);
                uj(true);
                x();
                return;
            }
            sp();
            if (nu() || !z() || (veVar = this.f20756n) == null || veVar.m() || this.uj == null) {
                return;
            }
            boolean zTt = zb.tt(this, com.byazt.qqc.ve.c().c(20, this.uj), 5);
            isShown();
            if (this.md && xd.z(this.uj) != null && zTt) {
                com.byazt.jzl.a aVarC = xd.c(4, this.uj);
                aVarC.setCid(this.uj.uj());
                aVarC.setWidth(this.f20745a.getWidth());
                aVarC.setHeight(this.f20745a.getHeight());
                aVarC.setLogExtra(this.uj.w_());
                aVarC.setCurrent(this.f20750h);
                aVarC.setQuiet(m());
                c(aVarC);
                pf.c((View) this.f20749da, 8);
            } else {
                try {
                    StringBuilder sb2 = new StringBuilder("onWindowVisibilityChanged materialMeta.getVideo() is null ");
                    sb2.append(this.f20749da == null);
                    sb2.append(" ");
                    sb2.append(this.f20759q);
                    sb2.append(" ");
                    sb2.append(hashCode());
                    m.uj("NativeVideoAdView", sb2.toString());
                    if (this.f20759q && this.f20749da == null) {
                        t();
                        pf.c((View) this.f20749da, 0);
                    }
                } catch (Throwable th) {
                    m.c(th);
                }
            }
            if (i10 != 0 || !this.f20757nb || this.f20748d == null || (veVar2 = this.f20756n) == null || veVar2.gt()) {
                return;
            }
            this.f20748d.obtainMessage(1).sendToTarget();
        }
    }

    public void rh() {
        com.byazt.dh.tt ttVarRh;
        com.byazt.dh.ve veVar = this.f20756n;
        if (veVar == null || (ttVarRh = veVar.rh()) == null) {
            return;
        }
        ttVarRh.c();
        View viewVe = ttVarRh.ve();
        if (viewVe != null) {
            viewVe.setVisibility(8);
            if (viewVe.getParent() != null) {
                ((ViewGroup) viewVe.getParent()).removeView(viewVe);
            }
        }
    }

    public void setAdCreativeClickListener(c cVar) {
        com.byazt.dh.ve veVar = this.f20756n;
        if (veVar != null) {
            ((com.byazt.un.uj) veVar).c(cVar);
        }
    }

    public void setComplete(boolean z10) {
        com.byazt.dh.ve veVar = this.f20756n;
        if (veVar != null) {
            veVar.ve(z10);
        }
    }

    public void setControllerStatusCallBack(uj ujVar) {
        this.my = ujVar;
    }

    public void setDrawVideoListener(com.byazt.uz.c cVar) {
        com.byazt.dh.ve veVar = this.f20756n;
        if (veVar != null) {
            ((com.byazt.un.uj) veVar).c(cVar);
        }
    }

    public void setEasyPlayableEventSender(com.byazt.sy.sp spVar) {
        this.lt = spVar;
    }

    public void setEnableAutoCheck(boolean z10) {
        this.aw = z10;
    }

    public void setEnableBlur(boolean z10) {
        this.f20752i = z10;
    }

    public void setIsAutoPlay(boolean z10) {
        ic icVar;
        if (this.eo || (icVar = this.uj) == null) {
            return;
        }
        int iA = gt.tt().a(nb.t(icVar));
        if (z10 && iA != 4 && (!rh.n(this.ve) ? !(!rh.a(this.ve) ? rh.uj(this.ve) : zb() || or()) : !zb())) {
            z10 = false;
        }
        this.f20747c = z10;
        com.byazt.dh.ve veVar = this.f20756n;
        if (veVar != null) {
            veVar.uj(z10);
        }
        if (this.f20747c) {
            pf.c((View) this.f20749da, 8);
        } else {
            t();
            RelativeLayout relativeLayout = this.f20749da;
            if (relativeLayout != null) {
                pf.c((View) relativeLayout, 0);
                if (xd.z(this.uj) != null) {
                    com.byazt.xky.tt.c(xd.tt(this.uj)).to(this.sl);
                    c(this.sl, xd.tt(this.uj));
                } else {
                    m.uj("NativeVideoAdView", "attachTask materialMeta.getVideo() is null !!");
                }
            }
        }
        this.eo = true;
    }

    public void setIsQuiet(boolean z10) {
        this.f20763x = z10;
        com.byazt.dh.ve veVar = this.f20756n;
        if (veVar != null) {
            veVar.tt(z10);
        }
    }

    public void setMaterialMeta(ic icVar) {
        this.uj = icVar;
    }

    public void setNativeExpressVideoView(NativeExpressVideoView nativeExpressVideoView) {
        this.f20758p = nativeExpressVideoView;
    }

    public void setNativeRenderAd(boolean z10) {
        this.f20746b = z10;
    }

    public void setNativeVideoAdListener(com.byazt.dh.ve.c cVar) {
        com.byazt.dh.ve veVar = this.f20756n;
        if (veVar != null) {
            veVar.c(cVar);
        }
    }

    public void setNativeVideoController(com.byazt.dh.ve veVar) {
        this.f20756n = veVar;
    }

    public void setNeedNativeVideoPlayBtnVisible(boolean z10) {
        this.yp = z10;
    }

    public void setVideoAdClickListenerTTNativeAd(u uVar) {
        com.byazt.dh.ve veVar = this.f20756n;
        if (veVar != null) {
            ((com.byazt.un.uj) veVar).c(uVar);
        }
    }

    public void setVideoAdInteractionListener(com.byazt.dh.ve.InterfaceC0292ve interfaceC0292ve) {
        this.qp = interfaceC0292ve;
    }

    public void setVideoAdLoadListener(com.byazt.dh.ve.uj ujVar) {
        com.byazt.dh.ve veVar = this.f20756n;
        if (veVar != null) {
            veVar.c(ujVar);
        }
    }

    public void setVideoCacheUrl(String str) {
        this.rl = str;
    }

    @Override // android.view.View
    public void setVisibility(int i10) {
        super.setVisibility(i10);
        if (i10 == 4 || i10 == 8) {
            yp();
        }
    }

    public void sl() {
        uj ujVar;
        com.byazt.dh.ve veVar;
        if (this.tt || (ujVar = this.my) == null || (veVar = this.f20756n) == null) {
            return;
        }
        ujVar.c(veVar.gt(), this.f20756n.yp(), this.f20756n.yp() + this.f20756n.t(), this.f20756n.sl(), this.f20747c, this.f20763x);
    }

    public void sp() {
        ic icVar = this.uj;
        if (icVar == null) {
            return;
        }
        int iA = gt.tt().a(nb.t(icVar));
        if (iA == 1) {
            this.f20747c = rh.uj(this.ve);
        } else if (iA == 2) {
            this.f20747c = rh.n(this.ve) || rh.uj(this.ve) || rh.a(this.ve) || rh.ve(gt.getContext()) == 1;
        } else if (iA == 3) {
            this.f20747c = false;
        } else if (iA == 4) {
            this.rh = true;
        } else if (iA == 5) {
            this.f20747c = rh.uj(this.ve) || rh.a(this.ve);
        }
        if (this.tt) {
            this.f20763x = false;
        } else {
            this.f20763x = this.uj.ab() == 1;
        }
        if ("splash_ad".equals(this.f20764z)) {
            this.f20747c = true;
            this.f20763x = true;
        }
        com.byazt.dh.ve veVar = this.f20756n;
        if (veVar != null) {
            veVar.uj(this.f20747c);
        }
    }

    public void t() {
        TTViewStub tTViewStub;
        if (zm() || this.ve == null || (tTViewStub = this.f20765zb) == null || tTViewStub.getParent() == null || this.uj == null || this.f20749da != null) {
            return;
        }
        if (this.f20765zb.getParent() != null && (this.f20765zb.getParent() instanceof ViewGroup)) {
            this.f20749da = (RelativeLayout) this.f20765zb.c();
        }
        this.sl = (ImageView) findViewById(2114387954);
        ImageView imageView = (ImageView) findViewById(2114387847);
        this.f20761u = imageView;
        if (this.yp) {
            pf.c((View) imageView, 0);
        }
        if (!TextUtils.isEmpty(xd.tt(this.uj))) {
            com.byazt.xky.tt.c(xd.tt(this.uj)).to(this.sl);
            c(this.sl, xd.tt(this.uj));
        }
        qy();
    }

    public boolean u() {
        ic icVar = this.uj;
        return icVar != null && icVar.il() == 4 && pu.c(this.uj) == 1 && !TextUtils.equals("draw_ad", this.f20764z);
    }

    public void yp() {
        if (!this.gt.get()) {
            this.gt.set(true);
            if (this.f20756n != null) {
                d dVar = this.f20748d;
                if (dVar != null) {
                    dVar.removeCallbacksAndMessages(null);
                }
                this.f20756n.c(true, 3);
            }
        }
        this.f20762v.set(false);
    }

    public boolean z() {
        return this.f20747c;
    }

    public NativeVideoTsView(Context context) {
        this(context, null, false, false);
    }

    public void n() {
        this.my = null;
        rh();
        yp();
    }

    public void tt(long j10, int i10) {
        this.gu = true;
    }

    public void uj() {
        com.byazt.dh.ve veVar = this.f20756n;
        if (veVar == null) {
            H_();
        } else if ((veVar instanceof com.byazt.un.uj) && !nu()) {
            ((com.byazt.un.uj) this.f20756n).sv();
        }
        if (this.f20756n == null || !this.gt.get()) {
            return;
        }
        this.gt.set(false);
        sp();
        if (!z()) {
            if (this.f20756n.gt()) {
                uj(true);
                return;
            }
            m.c("NativeVideoAdView", "attachTask.......mRlImgCover.....VISIBLE");
            t();
            pf.c((View) this.f20749da, 0);
            return;
        }
        ImageView imageView = this.f20760t;
        if (imageView != null) {
            pf.c((View) imageView, 8);
        }
        if (xd.z(this.uj) == null) {
            m.uj("NativeVideoAdView", "attachTask materialMeta.getVideo() is null !!");
            return;
        }
        com.byazt.jzl.a aVarC = xd.c(4, this.uj);
        aVarC.setCid(this.uj.uj());
        aVarC.setWidth(this.f20745a.getWidth());
        aVarC.setHeight(this.f20745a.getHeight());
        aVarC.setLogExtra(this.uj.w_());
        aVarC.setCurrent(0L);
        aVarC.setAudio(t.c(this.uj));
        aVarC.setQuiet(m());
        if (zm()) {
            String splashCacheDir = sl.c(0).getSplashCacheDir();
            if (this.uj.ox()) {
                splashCacheDir = sl.c();
            }
            aVarC.setCacheParentDir(splashCacheDir);
        }
        c(aVarC);
        this.f20756n.ve(false);
    }

    public void ve(boolean z10) {
        com.byazt.sy.sp spVar = this.lt;
        if (spVar != null) {
            spVar.c(z10);
        }
    }

    public NativeVideoTsView(Context context, ic icVar, boolean z10, boolean z11) {
        this(context, icVar, z10, z11, com.byazt.dyf.tt.AD_TAG_FEED, false, false);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void tt(int i10, int i11) {
        if (nu()) {
            return;
        }
        ic icVar = this.uj;
        z zVarQi = icVar == null ? null : icVar.qi();
        if (zVarQi != null && i11 > 0) {
            if (!zVarQi.x()) {
                com.byazt.ddx.uj.c(this.uj, this.f20764z, 1);
                return;
            }
            this.bx = i10;
            this.sv = i11;
            if (this.bm == null) {
                this.bm = new ve(zVarQi, this.f20745a, this.uj, this.f20764z, i10, i11);
            }
            com.byazt.xky.tt.c(zVarQi.n()).type(3).config(Bitmap.Config.RGB_565).to(this.bm);
        }
    }

    public NativeVideoTsView(Context context, ic icVar, String str, boolean z10, boolean z11) {
        this(context, icVar, false, false, str, z10, z11);
    }

    public NativeVideoTsView(Context context, ic icVar, boolean z10, boolean z11, String str, boolean z12, boolean z13) {
        super(context);
        this.f20747c = true;
        this.f20763x = true;
        this.tt = false;
        this.qy = false;
        this.gu = false;
        this.gr = false;
        this.zm = true;
        this.yv = false;
        this.yp = true;
        this.f20764z = com.byazt.dyf.tt.AD_TAG_FEED;
        this.f20755m = 50;
        this.md = true;
        this.nu = new AtomicBoolean(false);
        this.eo = false;
        this.rh = false;
        this.or = 50L;
        this.cu = 500L;
        this.f20757nb = true;
        this.pf = false;
        this.aw = true;
        this.f20753ic = true;
        this.kp = false;
        this.gt = new AtomicBoolean(false);
        this.f20759q = true;
        this.tx = false;
        this.f20762v = new AtomicBoolean(false);
        this.f20764z = str;
        this.ve = context;
        this.uj = icVar;
        this.tt = z10;
        this.yv = z11;
        this.gr = z12;
        this.zm = z13;
        this.f20748d = new d(com.byazt.bzd.x.tt(), this);
        setContentDescription("NativeVideoAdView");
        sp();
        rl();
        com.byazt.bzd.x.tt(new Runnable() { // from class: com.byazt.un.NativeVideoTsView.1
            @Override // java.lang.Runnable
            public void run() {
                if (NativeVideoTsView.this.to == null) {
                    NativeVideoTsView nativeVideoTsView = NativeVideoTsView.this;
                    nativeVideoTsView.to = nativeVideoTsView.getKvCache();
                }
            }
        });
    }

    @Override // com.byazt.dh.ve.c
    public void c(long j10, int i10) {
        this.kp = true;
        com.byazt.dh.ve.InterfaceC0292ve interfaceC0292ve = this.qp;
        if (interfaceC0292ve != null) {
            interfaceC0292ve.onVideoComplete();
        }
    }

    @Override // com.byazt.dh.ve.c
    public void c() {
        if (this.qp == null || !zm()) {
            return;
        }
        this.qp.onVideoComplete();
    }

    @Override // com.byazt.dh.ve.c
    public void c(long j10, long j11) {
        com.byazt.dh.ve veVar;
        if (j10 != j11) {
            this.kp = false;
        }
        com.byazt.dh.ve.InterfaceC0292ve interfaceC0292ve = this.qp;
        if (interfaceC0292ve != null) {
            interfaceC0292ve.onProgressUpdate(j10, j11);
        }
        if (p() || (veVar = this.f20756n) == null) {
            return;
        }
        veVar.a();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void tt(boolean z10) {
        if (this.kp || this.qy == z10) {
            return;
        }
        if (!z10) {
            da.tt().removeCallbacks(this.tk);
        }
        this.qy = z10;
        ve(z10);
        if (this.uj == null || this.f20756n == null) {
            return;
        }
        boolean zMd = md();
        h();
        if (zMd && this.f20756n.gt()) {
            uj(true);
            x();
            return;
        }
        if (z10 && !this.f20756n.gt() && !this.f20756n.m()) {
            if (this.f20756n.nu() != null && this.f20756n.nu().isPaused()) {
                if (this.f20747c) {
                    if ("ALP-AL00".equals(((com.byazt.dna.u) com.byazt.ut.uj.getService("device_info_new")).getDeviceModel())) {
                        this.f20756n.x();
                    } else {
                        ((com.byazt.un.uj) this.f20756n).a(zMd);
                    }
                    com.byazt.dh.ve.InterfaceC0292ve interfaceC0292ve = this.qp;
                    if (interfaceC0292ve != null) {
                        interfaceC0292ve.onVideoAdContinuePlay();
                        return;
                    }
                    return;
                }
                this.qy = false;
                return;
            }
            if (this.f20747c && this.f20756n.nu() == null) {
                if (!this.gt.get()) {
                    this.gt.set(true);
                }
                this.f20762v.set(false);
                uj();
                return;
            }
            return;
        }
        if (this.f20756n.nu() == null || !this.f20756n.nu().isPlaying()) {
            return;
        }
        this.f20756n.a();
        com.byazt.dh.ve.InterfaceC0292ve interfaceC0292ve2 = this.qp;
        if (interfaceC0292ve2 != null) {
            interfaceC0292ve2.onVideoAdPaused();
        }
    }

    private View c(Context context) {
        FrameLayout frameLayout = new FrameLayout(context);
        FrameLayout.LayoutParams layoutParams = new FrameLayout.LayoutParams(-1, -1);
        frameLayout.setId(2114387848);
        layoutParams.gravity = 17;
        frameLayout.setVisibility(8);
        this.f20745a = frameLayout;
        FrameLayout frameLayout2 = new FrameLayout(context);
        FrameLayout.LayoutParams layoutParams2 = new FrameLayout.LayoutParams(-1, -1);
        frameLayout2.setId(2114387756);
        layoutParams2.gravity = 17;
        frameLayout2.setLayoutParams(layoutParams2);
        frameLayout.addView(frameLayout2);
        this.sp = frameLayout2;
        TTViewStub tTViewStub = new TTViewStub(context, new com.byazt.wol.n());
        FrameLayout.LayoutParams layoutParams3 = new FrameLayout.LayoutParams(-1, -1);
        tTViewStub.setId(2114387607);
        tTViewStub.setLayoutParams(layoutParams3);
        frameLayout.addView(tTViewStub);
        this.f20765zb = tTViewStub;
        return frameLayout;
    }

    public void c(final ImageView imageView, String str) {
        if (imageView == null || !com.byazt.ic.c.c(this.uj) || com.byazt.ic.c.sp(this.uj)) {
            return;
        }
        com.byazt.xky.tt.c(str).config(Bitmap.Config.ARGB_4444).type(2).to(new gr<Bitmap>() { // from class: com.byazt.un.NativeVideoTsView.2
            @Override // com.byazt.yj.gr
            public void onFailed(int i10, String str2, Throwable th) {
            }

            @Override // com.byazt.yj.gr
            public void onSuccess(com.byazt.yj.m<Bitmap> mVar) {
                Bitmap result;
                if (mVar == null || (result = mVar.getResult()) == null) {
                    return;
                }
                final Bitmap bitmapC = com.byazt.or.tt.c(NativeVideoTsView.this.ve, result, 25);
                com.byazt.bzd.x.c(new Runnable() { // from class: com.byazt.un.NativeVideoTsView.2.1
                    @Override // java.lang.Runnable
                    public void run() {
                        if (bitmapC != null) {
                            imageView.setBackground(new BitmapDrawable(bitmapC));
                        }
                    }
                });
            }
        }, 4);
    }

    public void uj(boolean z10) {
        com.byazt.dh.ve veVar = this.f20756n;
        if (veVar != null) {
            veVar.ve(z10);
            com.byazt.dh.tt ttVarRh = this.f20756n.rh();
            if (ttVarRh != null) {
                ttVarRh.tt();
                View viewVe = ttVarRh.ve();
                if (viewVe != null) {
                    if (viewVe.getParent() != null) {
                        ((ViewGroup) viewVe.getParent()).removeView(viewVe);
                    }
                    viewVe.setVisibility(0);
                    addView(viewVe);
                    ttVarRh.c(this.uj, new WeakReference<>(this.ve), false);
                }
            }
        }
    }

    public void c(String str) {
        if (TextUtils.isEmpty(str)) {
            return;
        }
        if (this.f20765zb.getParent() != null && (this.f20765zb.getParent() instanceof ViewGroup)) {
            this.f20749da = (RelativeLayout) this.f20765zb.c();
        }
        ImageView imageView = (ImageView) findViewById(2114387954);
        this.sl = imageView;
        imageView.setImageDrawable(null);
        this.f20761u = (ImageView) findViewById(2114387847);
        com.byazt.xky.tt.c(str).to(this.sl);
        c(this.sl, str);
        pf.c((View) this.f20749da, 0);
    }

    public void tt(boolean z10, boolean z11) {
        this.f20753ic = z10;
        this.f20751hd = z11;
    }

    public void tt(int i10) {
        if (rh.ve(gt.getContext()) == 0) {
            return;
        }
        if (this.f20756n.nu() != null) {
            if (this.f20756n.nu().isPlaying() && i10 == 2) {
                tt(false);
                d dVar = this.f20748d;
                if (dVar != null) {
                    dVar.removeMessages(1);
                }
                c(true);
                return;
            }
            if (this.f20756n.nu().isPaused() && i10 == 3) {
                this.f20747c = true;
                tt(true);
                sp();
                d dVar2 = this.f20748d;
                if (dVar2 != null) {
                    dVar2.sendEmptyMessageDelayed(1, this.or);
                }
                c(false);
                return;
            }
        }
        if (z() || this.f20762v.get()) {
            return;
        }
        this.f20762v.set(true);
        if (xd.z(this.uj) != null) {
            cu();
            com.byazt.jzl.a aVarC = xd.c(4, this.uj);
            aVarC.setCid(this.uj.uj());
            aVarC.setWidth(this.f20745a.getWidth());
            aVarC.setHeight(this.f20745a.getHeight());
            aVarC.setLogExtra(this.uj.w_());
            aVarC.setCurrent(this.f20750h);
            aVarC.setQuiet(m());
            aVarC.setCacheParentDir(sl.c(this.uj.xx()).getOtherCacheDir());
            c(aVarC);
        } else {
            m.uj("NativeVideoAdView", "attachTask materialMeta.getVideo() is null !!");
        }
        d dVar3 = this.f20748d;
        if (dVar3 != null) {
            dVar3.sendEmptyMessageDelayed(1, this.or);
        }
        c(false);
    }

    public com.byazt.dh.ve c(Context context, ViewGroup viewGroup, ic icVar, String str, boolean z10, boolean z11, boolean z12) {
        return new com.byazt.un.uj(context, viewGroup, icVar, str, z10, z11, z12);
    }

    public boolean c(long j10, boolean z10, boolean z11) {
        boolean zC = false;
        this.f20745a.setVisibility(0);
        if (this.f20756n == null) {
            this.f20756n = new com.byazt.un.uj(this.ve, this.sp, this.uj, this.f20764z, this.gr, this.zm);
            gr();
        }
        this.f20750h = j10;
        if (nu()) {
            this.f20756n.c(false);
            if (xd.z(this.uj) != null) {
                com.byazt.jzl.a aVarC = xd.c(4, this.uj);
                aVarC.setCid(this.uj.uj());
                aVarC.setWidth(this.f20745a.getWidth());
                aVarC.setHeight(this.f20745a.getHeight());
                aVarC.setLogExtra(this.uj.w_());
                aVarC.setCurrent(j10);
                aVarC.setQuiet(m());
                if (z11) {
                    this.f20756n.tt(aVarC);
                    return true;
                }
                zC = c(aVarC);
            }
            if (((j10 > 0 && !z10 && !z11) || (j10 > 0 && z10 && !this.yv)) && (this.f20756n instanceof com.byazt.nj.c)) {
                nu.c cVar = new nu.c();
                cVar.c(this.f20756n.sl());
                cVar.ve(this.f20756n.yp());
                cVar.tt(this.f20756n.t());
                com.byazt.dh.ve veVar = this.f20756n;
                ((com.byazt.nj.c) veVar).tt(veVar.rh(), cVar);
            }
            return zC;
        }
        if (u() || this.f20752i) {
            c(this.ve, 25, xd.tt(this.uj));
        }
        return true;
    }

    public boolean c(com.byazt.jzl.a aVar) {
        if (this.f20756n == null) {
            return false;
        }
        this.md = false;
        this.or = this.cu;
        if (this.f20751hd) {
            aVar.setQuiet(this.f20753ic);
        }
        return this.f20756n.c(aVar);
    }

    public void tt() {
        if (rh.ve(gt.getContext()) == 0) {
            return;
        }
        if (this.f20756n.nu() != null) {
            if (this.f20756n.nu().isPlaying()) {
                tt(false);
                d dVar = this.f20748d;
                if (dVar != null) {
                    dVar.removeMessages(1);
                }
                c(true);
                return;
            }
            if (this.f20756n.nu().isPaused()) {
                this.f20747c = true;
                tt(true);
                sp();
                d dVar2 = this.f20748d;
                if (dVar2 != null) {
                    dVar2.sendEmptyMessageDelayed(1, this.or);
                }
                c(false);
                return;
            }
        }
        if (z() || this.f20762v.get()) {
            return;
        }
        this.f20762v.set(true);
        if (xd.z(this.uj) != null) {
            cu();
            com.byazt.jzl.a aVarC = xd.c(4, this.uj);
            aVarC.setCid(this.uj.uj());
            aVarC.setWidth(this.f20745a.getWidth());
            aVarC.setHeight(this.f20745a.getHeight());
            aVarC.setLogExtra(this.uj.w_());
            aVarC.setCurrent(this.f20750h);
            aVarC.setQuiet(m());
            c(aVarC);
        } else {
            m.uj("NativeVideoAdView", "attachTask materialMeta.getVideo() is null !!");
        }
        d dVar3 = this.f20748d;
        if (dVar3 != null) {
            dVar3.sendEmptyMessageDelayed(1, this.or);
        }
        c(false);
    }

    @Override // com.byazt.un.uj.c
    public void c(int i10) {
        sp();
    }

    public void c(boolean z10) {
        if (this.f20760t == null) {
            this.f20760t = new ImageView(getContext());
            if (x.m().sv() != null) {
                this.f20760t.setImageBitmap(x.m().sv());
            } else {
                com.byazt.nr.z.c(gt.getContext(), "tt_new_play_video", this.f20760t, 320);
            }
            this.f20760t.setScaleType(ImageView.ScaleType.FIT_XY);
            int iVe = pf.ve(getContext(), this.f20755m);
            FrameLayout.LayoutParams layoutParams = new FrameLayout.LayoutParams(iVe, iVe);
            layoutParams.gravity = 17;
            this.f20745a.addView(this.f20760t, layoutParams);
        }
        if (z10) {
            this.f20760t.setVisibility(0);
        } else {
            this.f20760t.setVisibility(8);
        }
    }

    public void c(int i10, int i11) {
        com.byazt.dh.ve veVar = this.f20756n;
        if (veVar != null) {
            ((com.byazt.un.uj) veVar).c(i10, i11);
        }
    }

    public void c(final Context context, final int i10, String str) {
        final com.byazt.dh.tt ttVarRh;
        com.byazt.dh.ve veVar = this.f20756n;
        if (veVar == null || (ttVarRh = veVar.rh()) == null) {
            return;
        }
        com.byazt.xky.tt.c(str).config(Bitmap.Config.ARGB_4444).type(2).to(new gr<Bitmap>() { // from class: com.byazt.un.NativeVideoTsView.5
            @Override // com.byazt.yj.gr
            public void onFailed(int i11, String str2, Throwable th) {
            }

            @Override // com.byazt.yj.gr
            public void onSuccess(com.byazt.yj.m<Bitmap> mVar) {
                Bitmap bitmapC = com.byazt.or.tt.c(context, mVar.getResult(), i10);
                if (bitmapC == null) {
                    return;
                }
                final BitmapDrawable bitmapDrawable = new BitmapDrawable(NativeVideoTsView.this.getResources(), bitmapC);
                com.byazt.bzd.x.c(new Runnable() { // from class: com.byazt.un.NativeVideoTsView.5.1
                    @Override // java.lang.Runnable
                    public void run() {
                        com.byazt.dh.tt ttVar = ttVarRh;
                        if (ttVar != null) {
                            ttVar.c(bitmapDrawable);
                        }
                    }
                });
            }
        }, 4);
    }
}
