package com.byazt.rpt;

import android.content.Context;
import android.os.Handler;
import android.os.Looper;
import android.view.View;
import android.view.ViewGroup;
import android.widget.FrameLayout;
import android.widget.ImageView;
import com.byazt.aas.pf;
import com.byazt.ete.ic;
import com.byazt.ete.kp;
import com.byazt.ete.lt;
import com.byazt.msx.FullSwiperItemView;
import com.byazt.omf.gt;
import com.byazt.omf.x;
import com.byazt.ouz.FullRewardExpressBackupView;
import com.byazt.ouz.NativeExpressView;
import com.byazt.ouz.sl;
import com.byazt.ouz.z;
import com.byazt.xl.uj;
import com.byazt.xl.ve;
import com.byazt.xl.yp;
import java.util.HashSet;

/* JADX INFO: loaded from: classes6.dex */
@com.byazt.zqa.c(c = {0, 1, 311, 722})
public class FullRewardExpressView extends NativeExpressView implements sl {

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public sl f19492c;
    public HashSet<String> gr;
    public ImageView gu;

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    public com.byazt.qmz.c f19493h;
    public FullSwiperItemView.c md;

    /* JADX INFO: renamed from: n, reason: collision with root package name */
    public yp f19494n;

    /* JADX INFO: renamed from: p, reason: collision with root package name */
    public com.byazt.nj.c.InterfaceC0378c f19495p;
    public FullRewardExpressBackupView tt;
    public uj uj;
    public com.byazt.zd.c ve;
    public View yv;
    public c zm;

    public interface c {
        void c(int i10);
    }

    public FullRewardExpressView(Context context, ic icVar, com.byazt.dj.tt ttVar, String str, boolean z10, String str2) {
        super(context, icVar, ttVar, str, z10, str2);
        this.gr = new HashSet<>();
    }

    private void gu() {
        com.byazt.zd.c cVar;
        if ((this.uj instanceof com.byazt.mt.c) && (cVar = this.ve) != null) {
            if (cVar.lr()) {
                this.ve.a();
                tt(true);
            } else {
                this.ve.x();
                tt(false);
            }
        }
    }

    private void yp() {
        setBackupListener(new ve() { // from class: com.byazt.rpt.FullRewardExpressView.1
            @Override // com.byazt.xl.ve
            public boolean c(ViewGroup viewGroup, int i10) {
                try {
                    ((NativeExpressView) viewGroup).my();
                    FullRewardExpressView.this.tt = new FullRewardExpressBackupView(viewGroup.getContext());
                    FullRewardExpressView fullRewardExpressView = FullRewardExpressView.this;
                    fullRewardExpressView.tt.c(fullRewardExpressView.f18393i, (NativeExpressView) viewGroup);
                    return true;
                } catch (Exception unused) {
                    return false;
                }
            }
        });
    }

    @Override // com.byazt.ouz.NativeExpressView, com.byazt.ouz.sl
    public void da() {
        sl slVar = this.f19492c;
        if (slVar != null) {
            slVar.da();
        }
    }

    public yp getRenderResult() {
        return this.f19494n;
    }

    @Override // com.byazt.ouz.NativeExpressView
    public com.byazt.dh.ve getVideoController() {
        return this.ve;
    }

    public FrameLayout getVideoFrameLayout() {
        return rl() ? this.tt.getVideoContainer() : this.yp;
    }

    @Override // com.byazt.ouz.NativeExpressView, com.byazt.ouz.sl
    public void i() {
        sl slVar = this.f19492c;
        if (slVar != null) {
            slVar.i();
        }
    }

    @Override // com.byazt.ouz.NativeExpressView, android.view.View
    public void onWindowFocusChanged(boolean z10) {
        super.onWindowFocusChanged(z10);
        uj(z10);
    }

    public void setEasyPlayableContainer(View view) {
        this.yv = view;
    }

    public void setExpressVideoListenerProxy(sl slVar) {
        this.f19492c = slVar;
    }

    public void setInteractListener(FullSwiperItemView.c cVar) {
        this.md = cVar;
    }

    public void setOnVideoSizeChangeListener(c cVar) {
        this.zm = cVar;
    }

    @Override // com.byazt.ouz.NativeExpressView, com.byazt.ouz.sl
    public void setPauseFromExpressView(boolean z10) {
    }

    public void setVideoController(com.byazt.dh.ve veVar) {
        if (veVar instanceof com.byazt.zd.c) {
            com.byazt.zd.c cVar = (com.byazt.zd.c) veVar;
            this.ve = cVar;
            cVar.ve(50);
            this.ve.c(this.f19495p);
        }
    }

    @Override // com.byazt.ouz.NativeExpressView
    public void sl() {
        this.f18397m = true;
        this.yp = new FrameLayout(this.f18384a);
        super.sl();
        yp();
        if (getJsObject() != null) {
            getJsObject().t(this.gt);
        }
    }

    @Override // com.byazt.ouz.NativeExpressView, com.byazt.ouz.sl
    public void sp() {
        sl slVar = this.f19492c;
        if (slVar != null) {
            slVar.sp();
        }
    }

    @Override // com.byazt.ouz.NativeExpressView
    public void t() {
        super.t();
        this.gr.clear();
    }

    public boolean u() {
        yp ypVar = this.f19494n;
        if (ypVar == null) {
            return true;
        }
        if (ypVar instanceof com.byazt.atv.ve) {
            return ((com.byazt.atv.ve) ypVar).m() != null;
        }
        return (ypVar.x() == 0.0d || this.f19494n.i() == 0.0d) ? false : true;
    }

    @Override // com.byazt.ouz.NativeExpressView, com.byazt.ouz.sl
    public void x() {
        sl slVar = this.f19492c;
        if (slVar != null) {
            slVar.x();
        }
    }

    @Override // com.byazt.ouz.NativeExpressView, com.byazt.ouz.sl
    public void a() {
        super.a();
        sl slVar = this.f19492c;
        if (slVar != null) {
            slVar.a();
        }
    }

    @Override // com.byazt.ouz.NativeExpressView, com.byazt.ouz.sl
    public void n(int i10) {
        sl slVar = this.f19492c;
        if (slVar != null) {
            slVar.n(i10);
        }
    }

    /* JADX WARN: Code duplicated, block: B:21:0x0054  */
    @Override // com.byazt.ouz.NativeExpressView
    public void tt(uj<? extends View> ujVar, yp ypVar) {
        boolean z10;
        FrameLayout frameLayoutNu;
        View view;
        this.uj = ujVar;
        if (ujVar instanceof z) {
            z zVar = (z) ujVar;
            if (zVar.J_() != null) {
                zVar.J_().c((sl) this);
            }
            if (zVar.J_() != null) {
                zVar.J_().ve(this.f18388da);
            }
        }
        if (ujVar instanceof com.byazt.atv.c) {
            ((com.byazt.atv.c) ujVar).c(this);
        }
        if (ypVar != null && ypVar.ve()) {
            this.f19494n = ypVar;
            if (ypVar.tt() == 2) {
                View viewC = ypVar.c();
                if (viewC instanceof ViewGroup) {
                    ((ViewGroup) viewC).addView(getVideoContainer());
                    z10 = true;
                } else {
                    z10 = false;
                }
            } else {
                z10 = false;
            }
            if (!z10) {
                c((ViewGroup) this.yp, true);
            }
            if (ypVar.tt() == 10 && (ypVar instanceof com.byazt.atv.ve)) {
                this.f19493h = ((com.byazt.atv.ve) ypVar).rh();
            }
            if (ypVar.tt() == 10 && (ypVar instanceof com.byazt.atv.ve) && (frameLayoutNu = ((com.byazt.atv.ve) ypVar).nu()) != null && (view = this.yv) != null) {
                ViewGroup viewGroup = (ViewGroup) view.getParent();
                if (viewGroup != null) {
                    viewGroup.removeView(this.yv);
                }
                frameLayoutNu.addView(this.yv);
            }
        }
        super.tt(ujVar, ypVar);
        sp(getVisibility());
    }

    @Override // com.byazt.ouz.NativeExpressView, com.byazt.ouz.sl
    public void uj() {
        sl slVar = this.f19492c;
        if (slVar != null) {
            slVar.uj();
        }
    }

    @Override // com.byazt.ouz.NativeExpressView, com.byazt.ouz.sl
    public int ve() {
        sl slVar = this.f19492c;
        if (slVar != null) {
            return slVar.ve();
        }
        return 0;
    }

    public void c(final ViewGroup viewGroup, final boolean z10) {
        if (this.f19494n == null) {
            return;
        }
        if (Looper.myLooper() == Looper.getMainLooper()) {
            tt(viewGroup, z10);
        } else {
            new Handler(Looper.getMainLooper()).post(new Runnable() { // from class: com.byazt.rpt.FullRewardExpressView.2
                @Override // java.lang.Runnable
                public void run() {
                    FullRewardExpressView.this.tt(viewGroup, z10);
                }
            });
        }
    }

    @Override // com.byazt.ouz.NativeExpressView, com.byazt.ouz.sl
    public void n() {
        sl slVar = this.f19492c;
        if (slVar != null) {
            slVar.n();
        }
    }

    @Override // com.byazt.ouz.NativeExpressView, com.byazt.ouz.sl
    public void uj(int i10) {
        sl slVar = this.f19492c;
        if (slVar != null) {
            slVar.uj(i10);
        }
    }

    @Override // com.byazt.ouz.NativeExpressView, com.byazt.ouz.sl
    public void ve(int i10) {
        sl slVar = this.f19492c;
        if (slVar != null) {
            slVar.ve(i10);
        }
    }

    private void uj(boolean z10) {
        com.byazt.zd.c cVar;
        if ((this.uj instanceof com.byazt.mt.c) && z10) {
            ImageView imageView = this.gu;
            if (imageView != null && imageView.getVisibility() == 0 && (cVar = this.ve) != null) {
                cVar.a();
            } else {
                c(this.gt);
            }
        }
    }

    @Override // com.byazt.ouz.NativeExpressView, com.byazt.ouz.sl
    public void c(boolean z10) {
        super.c(z10);
        this.gt = z10;
        sl slVar = this.f19492c;
        if (slVar != null) {
            slVar.c(z10);
        }
        uj ujVar = this.uj;
        if (ujVar == null || !(ujVar instanceof com.byazt.mt.c)) {
            return;
        }
        ((com.byazt.mt.c) ujVar).c(z10);
    }

    @Override // com.byazt.ouz.NativeExpressView, com.byazt.ouz.sl
    public void c(int i10) {
        sl slVar = this.f19492c;
        if (slVar != null) {
            slVar.c(i10);
        }
    }

    @Override // com.byazt.ouz.NativeExpressView, com.byazt.ouz.sl
    public long c() {
        sl slVar = this.f19492c;
        if (slVar != null) {
            return slVar.c();
        }
        return 0L;
    }

    @Override // com.byazt.ouz.NativeExpressView, com.byazt.ouz.sl
    public void c(float f10, float f11, float f12, float f13, int i10) {
        sl slVar = this.f19492c;
        if (slVar != null) {
            slVar.c(f10, f11, f12, f13, i10);
        }
    }

    @Override // com.byazt.ouz.NativeExpressView, com.byazt.ouz.sl
    public void c(ic icVar) {
        sl slVar = this.f19492c;
        if (slVar != null) {
            slVar.c(icVar);
        }
    }

    @Override // com.byazt.ouz.NativeExpressView, com.byazt.ouz.sl
    public void c(final int i10, final String str) {
        this.f19495p = new com.byazt.nj.c.InterfaceC0378c() { // from class: com.byazt.rpt.FullRewardExpressView.3
            @Override // com.byazt.nj.c.InterfaceC0378c
            public void c(long j10, long j11) {
                int iAbs = (int) Math.abs(((long) i10) - j10);
                FullRewardExpressView fullRewardExpressView = FullRewardExpressView.this;
                int i11 = fullRewardExpressView.ve instanceof com.byazt.iym.uj ? 200 : 50;
                int i12 = i10;
                if (i12 < 0 || iAbs > i11 || i12 > j11 || iAbs >= i11 || fullRewardExpressView.gr.contains(str)) {
                    return;
                }
                if (i10 > j10) {
                    FullRewardExpressView.this.postDelayed(new Runnable() { // from class: com.byazt.rpt.FullRewardExpressView.3.1
                        @Override // java.lang.Runnable
                        public void run() {
                            FullRewardExpressView.this.ve.a();
                            AnonymousClass3 anonymousClass3 = AnonymousClass3.this;
                            FullRewardExpressView.this.tt(i10, str);
                            if (kp.nu(FullRewardExpressView.this.f18393i) || lt.c(FullRewardExpressView.this.f18393i)) {
                                FullRewardExpressView.this.f19492c.c(2);
                            }
                            sl slVar = FullRewardExpressView.this.f19492c;
                            if (slVar != null) {
                                slVar.setPauseFromExpressView(true);
                            }
                        }
                    }, iAbs);
                } else {
                    FullRewardExpressView.this.ve.a();
                    FullRewardExpressView.this.tt(i10, str);
                    if (kp.nu(FullRewardExpressView.this.f18393i) || lt.c(FullRewardExpressView.this.f18393i)) {
                        FullRewardExpressView.this.f19492c.c(2);
                    }
                    sl slVar = FullRewardExpressView.this.f19492c;
                    if (slVar != null) {
                        slVar.setPauseFromExpressView(true);
                    }
                }
                FullRewardExpressView.this.gr.add(str);
            }
        };
        com.byazt.zd.c cVar = this.ve;
        if (cVar != null) {
            cVar.ve(50);
            this.ve.c(this.f19495p);
        }
    }

    @Override // com.byazt.ouz.NativeExpressView, com.byazt.ouz.sl
    public void c(float f10) {
        sl slVar = this.f19492c;
        if (slVar != null) {
            slVar.c(f10);
        }
    }

    @Override // com.byazt.ouz.NativeExpressView, com.byazt.xl.x
    public void c(View view, int i10, com.byazt.sr.ve veVar, int i11) {
        FullSwiperItemView.c cVar = this.md;
        if (cVar != null) {
            cVar.c();
        }
        if (i10 != -1 && veVar != null && i10 == 3) {
            i();
            return;
        }
        if (i10 == 5) {
            c(!this.gt);
        } else if (i10 == 4) {
            gu();
        } else {
            super.c(view, i10, veVar, i11);
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* JADX WARN: Code duplicated, block: B:49:0x0102  */
    public void tt(ViewGroup viewGroup, boolean z10) {
        yp ypVar = this.f19494n;
        if (ypVar == null) {
            return;
        }
        double dA = ypVar.a();
        double dSp = this.f19494n.sp();
        double dX = this.f19494n.x();
        double dI = this.f19494n.i();
        int iVe = pf.ve(this.f18384a, (float) dA);
        int iVe2 = pf.ve(this.f18384a, (float) dSp);
        int iVe3 = pf.ve(this.f18384a, (float) dX);
        int iVe4 = pf.ve(this.f18384a, (float) dI);
        float fVe = this.f19494n.t() > 0.0f ? pf.ve(this.f18384a, this.f19494n.t()) : 0.0f;
        float fVe2 = this.f19494n.u() > 0.0f ? pf.ve(this.f18384a, this.f19494n.u()) : 0.0f;
        float fVe3 = this.f19494n.yp() > 0.0f ? pf.ve(this.f18384a, this.f19494n.yp()) : 0.0f;
        float fVe4 = this.f19494n.z() > 0.0f ? pf.ve(this.f18384a, this.f19494n.z()) : 0.0f;
        if (fVe2 < fVe) {
            fVe = fVe2;
        }
        if (fVe3 >= fVe) {
            fVe3 = fVe;
        }
        if (fVe4 >= fVe3) {
            fVe4 = fVe3;
        }
        FrameLayout.LayoutParams layoutParams = (FrameLayout.LayoutParams) viewGroup.getLayoutParams();
        if (layoutParams == null) {
            layoutParams = new FrameLayout.LayoutParams(iVe3, iVe4);
        }
        layoutParams.width = iVe3;
        layoutParams.height = iVe4;
        layoutParams.topMargin = iVe2;
        layoutParams.leftMargin = iVe;
        viewGroup.setLayoutParams(layoutParams);
        pf.tt(viewGroup, fVe4);
        if (z10) {
            viewGroup.removeAllViews();
            ViewGroup viewGroup2 = (ViewGroup) viewGroup.getParent();
            if (viewGroup2 != null) {
                viewGroup2.removeView(viewGroup);
            }
            if (this.uj.ve() == 7 || this.uj.ve() == 10) {
                yp ypVar2 = this.f19494n;
                if (ypVar2 instanceof com.byazt.atv.ve) {
                    FrameLayout frameLayoutM = ((com.byazt.atv.ve) ypVar2).m();
                    if (frameLayoutM != null) {
                        frameLayoutM.addView(viewGroup, new FrameLayout.LayoutParams(-1, -1));
                    }
                } else {
                    this.rl.addView(viewGroup);
                }
            } else {
                this.rl.addView(viewGroup);
            }
            c cVar = this.zm;
            if (cVar == null || iVe4 == 0) {
                return;
            }
            cVar.c(iVe4);
        }
    }

    public void c(int i10, int i11, int i12, int i13) {
        com.byazt.qmz.c cVar = this.f19493h;
        if (cVar != null) {
            cVar.c(i10, i11, i12, i13);
        }
    }

    @Override // com.byazt.ouz.NativeExpressView, com.byazt.ouz.sl
    public int tt() {
        sl slVar = this.f19492c;
        if (slVar != null) {
            return slVar.tt();
        }
        return 0;
    }

    @Override // com.byazt.ouz.NativeExpressView, com.byazt.ouz.sl
    public void tt(int i10) {
        sl slVar = this.f19492c;
        if (slVar != null) {
            slVar.tt(i10);
        }
    }

    @Override // com.byazt.ouz.NativeExpressView, com.byazt.xl.x
    public void tt(View view, int i10, com.byazt.sr.ve veVar, int i11) {
        FullSwiperItemView.c cVar = this.md;
        if (cVar != null) {
            cVar.c();
        }
        if (i10 != -1 && veVar != null && i10 == 3) {
            i();
        } else {
            super.tt(view, i10, veVar, i11);
        }
    }

    public void tt(boolean z10) {
        if (this.gu == null) {
            this.gu = new ImageView(getContext());
            if (x.m().sv() != null) {
                this.gu.setImageBitmap(x.m().sv());
            } else {
                com.byazt.nr.z.c(gt.getContext(), "tt_new_play_video", this.gu, 320);
            }
            this.gu.setScaleType(ImageView.ScaleType.FIT_XY);
            int iVe = pf.ve(getContext(), 50.0f);
            FrameLayout.LayoutParams layoutParams = new FrameLayout.LayoutParams(iVe, iVe);
            layoutParams.gravity = 17;
            this.yp.addView(this.gu, layoutParams);
        }
        if (z10) {
            this.gu.setVisibility(0);
        } else {
            this.gu.setVisibility(8);
        }
    }
}
