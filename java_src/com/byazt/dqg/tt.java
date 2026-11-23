package com.byazt.dqg;

import android.text.TextUtils;
import android.view.View;
import android.view.ViewGroup;
import android.webkit.DownloadListener;
import android.widget.FrameLayout;
import android.widget.ImageView;
import android.widget.RelativeLayout;
import android.widget.TextView;
import com.byazt.aas.nb;
import com.byazt.aas.pf;
import com.byazt.ete.ic;
import com.byazt.ete.pu;
import com.byazt.ete.zb;
import com.byazt.lcf.TTBaseVideoActivity;
import com.byazt.nr.z;
import com.byazt.ogz.sl;
import com.byazt.omf.EmptyView;
import com.byazt.omf.gt;
import com.byazt.ui.UpieImageView;
import java.util.List;
import java.util.Map;

/* JADX INFO: loaded from: classes6.dex */
@com.byazt.zqa.c(c = {0, 1, 74, 13})
public class tt {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final boolean f13121a;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final String f13122c;

    /* JADX INFO: renamed from: da, reason: collision with root package name */
    public TextView f13123da;

    /* JADX INFO: renamed from: i, reason: collision with root package name */
    public FrameLayout f13124i;

    /* JADX INFO: renamed from: n, reason: collision with root package name */
    public final float f13125n;
    public RelativeLayout sl;
    public ViewGroup sp;

    /* JADX INFO: renamed from: t, reason: collision with root package name */
    public TextView f13126t;
    public final TTBaseVideoActivity tt;

    /* JADX INFO: renamed from: u, reason: collision with root package name */
    public int f13127u = 3;
    public final int uj;
    public final ic ve;

    /* JADX INFO: renamed from: x, reason: collision with root package name */
    public RelativeLayout f13128x;

    public tt(TTBaseVideoActivity tTBaseVideoActivity, ic icVar, boolean z10) {
        this.tt = tTBaseVideoActivity;
        this.ve = icVar;
        this.uj = icVar.by();
        this.f13125n = icVar.fr();
        this.f13121a = z10;
        this.f13122c = z10 ? "rewarded_video" : "fullscreen_interstitial_ad";
    }

    public void a(int i10) {
        pf.c((View) this.f13128x, i10);
    }

    public void c(DownloadListener downloadListener) {
    }

    public void da() {
    }

    public void m() {
        ic icVar = this.ve;
        String strDn = icVar != null ? icVar.dn() : null;
        if (this.f13123da == null || !TextUtils.isEmpty(strDn)) {
            return;
        }
        z.c(this.tt, "tt_ad_logo_backup", this.f13123da, 320);
    }

    public void n(int i10) {
        pf.c((View) this.f13123da, i10);
    }

    public void sl() {
        if (this.f13121a) {
            int iJt = this.ve.jt();
            this.f13127u = iJt;
            if (iJt == -200) {
                sl slVarTt = gt.tt();
                StringBuilder sb2 = new StringBuilder();
                sb2.append(nb.t(this.ve));
                this.f13127u = slVarTt.sl(sb2.toString());
            }
            if (this.f13127u == -1) {
                pf.c((View) this.f13128x, 0);
            }
        }
    }

    public FrameLayout t() {
        return this.f13124i;
    }

    public void tt(int i10) {
    }

    public RelativeLayout u() {
        return this.f13128x;
    }

    public void uj(int i10) {
    }

    public void ve(int i10) {
    }

    public String yp() {
        return nb.gt(this.ve);
    }

    public String z() {
        return nb.rl(this.ve);
    }

    private void tt() {
        ViewGroup viewGroup = this.sp;
        if (viewGroup != null) {
            EmptyView emptyViewC = c(viewGroup);
            if (emptyViewC == null) {
                ic icVar = this.ve;
                EmptyView emptyView = new EmptyView(this.tt, this.sp, icVar != null ? icVar.m17if() : 1000);
                emptyView.c(this.ve, this.f13122c);
                this.sp.addView(emptyView);
                emptyViewC = emptyView;
            }
            emptyViewC.setNeedCheckingShow(false);
            emptyViewC.setCallback(new EmptyView.c() { // from class: com.byazt.dqg.tt.1
                @Override // com.byazt.omf.EmptyView.c
                public void c() {
                }

                @Override // com.byazt.omf.EmptyView.c
                public void tt() {
                }

                @Override // com.byazt.omf.EmptyView.c
                public void c(View view, Map<String, Object> map) {
                }

                @Override // com.byazt.omf.EmptyView.c
                public void c(boolean z10) {
                }
            });
        }
    }

    public void c(com.byazt.hkv.tt ttVar, com.byazt.hkv.tt ttVar2) {
    }

    public void ve(boolean z10) {
        this.tt.or().getWidgetFrameContainer().setVisibility(z10 ? 0 : 8);
    }

    public void c() {
        ViewGroup viewGroup = (ViewGroup) this.tt.findViewById(2114387959);
        this.sp = viewGroup;
        if (viewGroup != null) {
            viewGroup.setBackgroundColor(-16777216);
        }
        com.byazt.qw.x.c(this.sp);
        if (pu.c(this.ve) != 2) {
            tt();
        }
    }

    public void c(ImageView imageView, UpieImageView upieImageView) {
        List<zb> listPa = this.ve.pa();
        if (listPa == null || listPa.size() <= 0) {
            return;
        }
        com.byazt.xky.tt.c(listPa.get(0)).to(imageView);
        if (com.byazt.ic.c.uj(this.ve)) {
            com.byazt.ic.c.c(imageView, upieImageView);
        }
    }

    private EmptyView c(ViewGroup viewGroup) {
        if (viewGroup == null) {
            return null;
        }
        for (int i10 = 0; i10 < viewGroup.getChildCount(); i10++) {
            View childAt = viewGroup.getChildAt(i10);
            if (childAt instanceof EmptyView) {
                return (EmptyView) childAt;
            }
        }
        return null;
    }
}
