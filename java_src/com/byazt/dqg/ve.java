package com.byazt.dqg;

import android.animation.Keyframe;
import android.animation.ObjectAnimator;
import android.animation.PropertyValuesHolder;
import android.content.Context;
import android.graphics.Color;
import android.text.TextUtils;
import android.view.View;
import android.widget.FrameLayout;
import android.widget.ImageView;
import android.widget.LinearLayout;
import android.widget.RelativeLayout;
import android.widget.TextView;
import com.byazt.aas.nb;
import com.byazt.aas.pf;
import com.byazt.ete.ic;
import com.byazt.ete.zb;
import com.byazt.ff.TTRatingBar;
import com.byazt.ff.TTRoundRectImageView;
import com.byazt.lcf.TTBaseVideoActivity;
import com.byazt.nr.z;
import com.byazt.sgn.t;
import java.util.Locale;
import java.util.concurrent.atomic.AtomicBoolean;

/* JADX INFO: loaded from: classes6.dex */
@com.byazt.zqa.c(c = {0, 1, 74, 54})
public class ve extends tt {
    public TTRatingBar gt;

    /* JADX INFO: renamed from: m, reason: collision with root package name */
    public TTRoundRectImageView f13134m;
    public TextView my;
    public TextView nu;
    public FrameLayout qy;
    public TextView rh;
    public FrameLayout rl;
    public int yp;

    /* JADX INFO: renamed from: z, reason: collision with root package name */
    public final AtomicBoolean f13135z;

    public ve(TTBaseVideoActivity tTBaseVideoActivity, ic icVar, boolean z10) {
        super(tTBaseVideoActivity, icVar, z10);
        this.yp = 0;
        this.f13135z = new AtomicBoolean(false);
    }

    private void a() {
        if (this.uj == 1) {
            TextView textView = this.nu;
            if (textView != null) {
                textView.setMaxWidth(pf.ve(this.tt, 153.0f));
            }
        } else {
            TextView textView2 = this.nu;
            if (textView2 != null) {
                textView2.setMaxWidth(pf.ve(this.tt, 404.0f));
            }
        }
        if (this.f13121a) {
            return;
        }
        pf.c((View) this.f13128x, 0);
    }

    private void n() {
        TextView textView = this.my;
        if (textView != null) {
            textView.setText(this.ve.cf() == 3 ? x() : tt());
        }
    }

    private void sp() {
        if (this.ve.cf() == 3) {
            int[] iArr = {Color.parseColor("#0070FF")};
            int iVe = pf.ve(this.tt, 17.0f);
            int color = Color.parseColor("#80000000");
            t.c((LinearLayout) this.tt.findViewById(2114387898), new t.c().c(iArr[0]).tt(color).c(iArr).ve(iVe).uj(0).n(pf.ve(this.tt, 3.0f)));
        }
    }

    private void uj() {
        String strValueOf;
        if (this.rh == null) {
            return;
        }
        int iA = this.ve.z() != null ? this.ve.z().a() : 6870;
        if (iA > 10000) {
            strValueOf = (iA / 10000) + "万";
        } else {
            strValueOf = String.valueOf(iA);
        }
        this.rh.setText(String.format("%1$s个评分", strValueOf));
    }

    private void ve() {
        if (this.f13134m != null) {
            zb zbVarTe = this.ve.te();
            if (zbVarTe == null || TextUtils.isEmpty(zbVarTe.c())) {
                z.c((Context) this.tt, "tt_ad_logo_small", (ImageView) this.f13134m, 320);
            } else {
                com.byazt.xky.tt.c(zbVarTe).to(this.f13134m);
            }
        }
        if (this.nu != null) {
            if (this.uj != 1 || this.ve.z() == null || TextUtils.isEmpty(this.ve.z().ve())) {
                this.nu.setText(this.ve.v_());
            } else {
                this.nu.setText(this.ve.z().ve());
            }
        }
    }

    private String x() {
        boolean z10;
        boolean zEquals;
        String strC = nb.c(this.tt);
        if (strC == null) {
            strC = "";
        }
        try {
            z10 = strC.equals(Locale.CHINESE.getLanguage()) || strC.equals(Locale.CHINA.getLanguage()) || strC.equals(Locale.TRADITIONAL_CHINESE.getLanguage());
            try {
                zEquals = strC.equals(Locale.ENGLISH.getLanguage());
            } catch (Throwable unused) {
                zEquals = false;
            }
        } catch (Throwable unused2) {
            z10 = true;
        }
        String strTj = "下载";
        if (!z10 && zEquals) {
            strTj = "Install";
        }
        ic icVar = this.ve;
        if (icVar == null) {
            return strTj;
        }
        if (!TextUtils.isEmpty(icVar.tj())) {
            strTj = this.ve.tj();
            if (strTj != null) {
                if (!nb.da(strTj) || strTj.length() <= 2) {
                    if (!nb.da(strTj) && strTj.length() > 7) {
                        if (z10) {
                            strTj = c(true);
                        } else if (zEquals) {
                            strTj = c(false);
                        }
                    }
                } else if (z10) {
                    strTj = c(true);
                } else if (zEquals) {
                    strTj = c(false);
                }
            }
        } else if (this.ve.i() != 4) {
            if (z10) {
                strTj = "查看";
            } else if (zEquals) {
                strTj = "View";
            }
        }
        if (zEquals && !nb.da(strTj)) {
            LinearLayout.LayoutParams layoutParams = (LinearLayout.LayoutParams) this.my.getLayoutParams();
            layoutParams.bottomMargin = pf.ve(this.tt, 4.0f);
            this.my.setLayoutParams(layoutParams);
        }
        return strTj;
    }

    @Override // com.byazt.dqg.tt
    public void c() {
        FrameLayout frameLayout;
        super.c();
        this.f13128x = (RelativeLayout) this.tt.findViewById(2114387649);
        this.f13134m = (TTRoundRectImageView) this.tt.findViewById(2114387793);
        this.nu = (TextView) this.tt.findViewById(2114387875);
        this.rh = (TextView) this.tt.findViewById(2114387630);
        this.my = (TextView) this.tt.findViewById(2114387830);
        TTRatingBar tTRatingBar = (TTRatingBar) this.tt.findViewById(2114387609);
        this.gt = tTRatingBar;
        if (tTRatingBar != null) {
            tTRatingBar.setStarEmptyNum(1);
            this.gt.setStarFillNum(4);
            this.gt.setStarImageWidth(pf.ve(this.tt, 15.0f));
            this.gt.setStarImageHeight(pf.ve(this.tt, 14.0f));
            this.gt.setStarImagePadding(pf.ve(this.tt, 4.0f));
            this.gt.c();
        }
        this.f13123da = (TextView) this.tt.findViewById(2114387658);
        this.f13124i = (FrameLayout) this.tt.findViewById(2114387642);
        this.rl = (FrameLayout) this.tt.findViewById(2114387964);
        this.qy = (FrameLayout) this.tt.findViewById(2114387925);
        pf.c(this.f13123da, this.ve);
        try {
            if (this.uj == 2 && this.ve.cf() == 1 && (this.my.getLayoutParams() instanceof RelativeLayout.LayoutParams)) {
                RelativeLayout.LayoutParams layoutParams = (RelativeLayout.LayoutParams) this.my.getLayoutParams();
                layoutParams.height = pf.ve(this.tt, 55.0f);
                layoutParams.topMargin = pf.ve(this.tt, 20.0f);
                this.my.setLayoutParams(layoutParams);
                RelativeLayout.LayoutParams layoutParams2 = (RelativeLayout.LayoutParams) this.f13128x.getLayoutParams();
                layoutParams2.bottomMargin = pf.ve(this.tt, 12.0f);
                this.f13128x.setLayoutParams(layoutParams2);
            }
        } catch (Throwable unused) {
        }
        if (this.ve.cf() == 1 && (frameLayout = this.f13124i) != null && (frameLayout.getLayoutParams() instanceof RelativeLayout.LayoutParams)) {
            RelativeLayout.LayoutParams layoutParams3 = (RelativeLayout.LayoutParams) this.f13124i.getLayoutParams();
            int iUj = pf.uj((Context) this.tt);
            layoutParams3.width = iUj;
            int i10 = (iUj * 9) / 16;
            layoutParams3.height = i10;
            this.f13124i.setLayoutParams(layoutParams3);
            this.yp = (pf.n((Context) this.tt) - i10) / 2;
        }
        ve();
        uj();
        n();
        a();
        sp();
        sl();
    }

    public String tt() {
        ic icVar = this.ve;
        if (icVar == null) {
            return "立即下载";
        }
        if (TextUtils.isEmpty(icVar.tj())) {
            return this.ve.i() != 4 ? "查看详情" : "立即下载";
        }
        return this.ve.tj();
    }

    @Override // com.byazt.dqg.tt
    public void tt(int i10) {
        int i11;
        if (this.f13128x == null || (i11 = this.f13127u) == -1 || i10 != i11 || this.f13135z.getAndSet(true)) {
            return;
        }
        pf.c((View) this.f13128x, 0);
        Keyframe keyframeOfFloat = Keyframe.ofFloat(0.0f, 0.0f);
        Keyframe keyframeOfFloat2 = Keyframe.ofFloat(0.65f, 1.0f);
        Keyframe keyframeOfFloat3 = Keyframe.ofFloat(0.765f, 0.9f);
        Keyframe keyframeOfFloat4 = Keyframe.ofFloat(0.88f, 1.0f);
        Keyframe keyframeOfFloat5 = Keyframe.ofFloat(0.95f, 0.95f);
        Keyframe keyframeOfFloat6 = Keyframe.ofFloat(1.0f, 1.0f);
        ObjectAnimator objectAnimatorOfPropertyValuesHolder = ObjectAnimator.ofPropertyValuesHolder(this.f13128x, PropertyValuesHolder.ofKeyframe("scaleX", keyframeOfFloat, keyframeOfFloat2, keyframeOfFloat3, keyframeOfFloat4, keyframeOfFloat5, keyframeOfFloat6), PropertyValuesHolder.ofKeyframe("scaleY", keyframeOfFloat, keyframeOfFloat2, keyframeOfFloat3, keyframeOfFloat4, keyframeOfFloat5, keyframeOfFloat6));
        objectAnimatorOfPropertyValuesHolder.setDuration(1000L);
        objectAnimatorOfPropertyValuesHolder.start();
    }

    private String c(boolean z10) {
        ic icVar = this.ve;
        if (icVar == null) {
            return null;
        }
        if (z10) {
            return icVar.i() == 4 ? "下载" : "查看";
        }
        return icVar.i() == 4 ? "Install" : "View";
    }

    @Override // com.byazt.dqg.tt
    public void c(com.byazt.hkv.tt ttVar, com.byazt.hkv.tt ttVar2) {
        if (this.ve == null) {
            return;
        }
        pf.c((View) this.my, (View.OnClickListener) ttVar, (String) null);
        pf.c((View) this.my, (View.OnTouchListener) ttVar, (String) null);
        c((View.OnTouchListener) ttVar2);
        c((View.OnClickListener) ttVar2);
        if (this.ve.cf() == 1) {
            FrameLayout frameLayout = this.rl;
            if (frameLayout != null) {
                pf.c((View) frameLayout, 0);
                RelativeLayout.LayoutParams layoutParams = (RelativeLayout.LayoutParams) this.rl.getLayoutParams();
                layoutParams.height = this.yp;
                this.rl.setLayoutParams(layoutParams);
            }
            FrameLayout frameLayout2 = this.qy;
            if (frameLayout2 != null) {
                pf.c((View) frameLayout2, 0);
                RelativeLayout.LayoutParams layoutParams2 = (RelativeLayout.LayoutParams) this.qy.getLayoutParams();
                layoutParams2.height = this.yp;
                this.qy.setLayoutParams(layoutParams2);
            }
        }
    }

    private void c(View.OnTouchListener onTouchListener) {
        pf.c(this.f13128x, onTouchListener, "TTBaseVideoActivity#mRlDownloadBar");
        pf.c(this.nu, onTouchListener, "TTBaseVideoActivity#mTvAppName");
        pf.c(this.f13134m, onTouchListener, "TTBaseVideoActivity#mIvIcon");
        pf.c(this.rh, onTouchListener, "TTBaseVideoActivity#mTvCommentVertical");
        pf.c(this.gt, onTouchListener, "TTBaseVideoActivity#mRbScore");
        pf.c(this.f13124i, onTouchListener, "TTBaseVideoActivity#mVideoNativeFrame");
        pf.c(this.rl, onTouchListener, "TTBaseVideoActivity#mClickUpperNonContentArea");
        pf.c(this.qy, onTouchListener, "TTBaseVideoActivity#mClickLowerNonContentArea");
    }

    private void c(View.OnClickListener onClickListener) {
        pf.c(this.f13128x, onClickListener, "TTBaseVideoActivity#mRlDownloadBar");
        pf.c(this.nu, onClickListener, "TTBaseVideoActivity#mTvAppName");
        pf.c(this.f13134m, onClickListener, "TTBaseVideoActivity#mIvIcon");
        pf.c(this.rh, onClickListener, "TTBaseVideoActivity#mTvCommentVertical");
        pf.c(this.gt, onClickListener, "TTBaseVideoActivity#mRbScore");
        pf.c(this.f13124i, onClickListener, "TTBaseVideoActivity#mVideoNativeFrame");
        pf.c(this.rl, onClickListener, "TTBaseVideoActivity#mClickUpperNonContentArea");
        pf.c(this.qy, onClickListener, "TTBaseVideoActivity#mClickLowerNonContentArea");
    }
}
