package com.byazt.cc;

import android.content.Context;
import android.widget.FrameLayout;
import com.byazt.aas.pf;
import com.byazt.ete.ic;
import com.byazt.omf.gt;
import com.xinzhu.overmind.utils.l;

/* JADX INFO: loaded from: classes6.dex */
@com.byazt.zqa.c(c = {0, 1, l.f90098b, 1189})
public class SplashClickBar extends FrameLayout {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public String f12239a;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public int f12240c;

    /* JADX INFO: renamed from: i, reason: collision with root package name */
    public SplashClickBarBtn f12241i;

    /* JADX INFO: renamed from: n, reason: collision with root package name */
    public int f12242n;
    public boolean sp;
    public int tt;
    public int uj;
    public int ve;

    /* JADX INFO: renamed from: x, reason: collision with root package name */
    public int f12243x;

    public SplashClickBar(Context context, ic icVar) {
        super(context);
        c(context, icVar);
    }

    public void c(Context context, ic icVar) {
        setClipChildren(false);
        SplashClickBarBtn splashClickBarBtn = new SplashClickBarBtn(getContext(), icVar);
        this.f12241i = splashClickBarBtn;
        addView(splashClickBarBtn);
        this.f12241i.setClipChildren(false);
    }

    public void setBtnLayout(boolean z10) {
        int iVe;
        int i10 = this.tt + 150;
        if (this.f12240c <= i10 && this.f12243x != 4) {
            this.f12240c = i10;
        }
        int i11 = z10 ? this.ve : this.uj;
        if (i11 < 0) {
            i11 = 0;
        }
        FrameLayout.LayoutParams layoutParams = (FrameLayout.LayoutParams) this.f12241i.getLayoutParams();
        if (layoutParams == null) {
            return;
        }
        int i12 = this.f12243x;
        if (i12 != 4) {
            if (i12 == 5) {
                layoutParams.height = -50;
                layoutParams.width = -50;
                iVe = pf.ve(getContext(), 10.0f);
            } else if (i12 != 7) {
                layoutParams.height = pf.ve(gt.getContext(), this.tt);
                layoutParams.width = pf.ve(gt.getContext(), this.f12240c);
            } else {
                layoutParams.height = -50;
                layoutParams.width = -50;
                iVe = pf.ve(getContext(), 20.0f);
            }
            i11 += iVe;
        } else {
            layoutParams.height = -50;
            layoutParams.width = -50;
        }
        layoutParams.bottomMargin = pf.ve(gt.getContext(), i11);
        layoutParams.gravity = 81;
        this.f12241i.setLayoutParams(layoutParams);
    }

    public void c(ic icVar) {
        this.f12240c = icVar.sd();
        this.tt = icVar.hg();
        this.ve = icVar.k();
        this.uj = icVar.iy();
        this.f12242n = icVar.pl();
        this.f12239a = icVar.di();
        this.f12243x = icVar.nc();
        this.sp = icVar.jg();
        SplashClickBarBtn splashClickBarBtn = this.f12241i;
        if (splashClickBarBtn != null) {
            splashClickBarBtn.setShakeValue(icVar.ge());
            this.f12241i.setDeepShakeValue(icVar.tw());
            this.f12241i.setWriggleValue(icVar.br());
            this.f12241i.setTwistConfig(icVar.lv());
            this.f12241i.setShakeInteractConf(icVar.cy());
            this.f12241i.setTwistInteractConf(icVar.yx());
            this.f12241i.setCalculationTwistMethod(icVar.pe());
            this.f12241i.setCalculationMethod(icVar.e());
        }
        this.f12241i.c(icVar.mf());
        if (this.f12242n == 1 && this.sp) {
            setVisibility(8);
        } else {
            setVisibility(0);
        }
    }

    public void c(com.byazt.hkv.c cVar) {
        this.f12241i.c(cVar);
    }
}
