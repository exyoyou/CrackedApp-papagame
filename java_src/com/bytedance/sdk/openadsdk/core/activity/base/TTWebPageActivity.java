package com.bytedance.sdk.openadsdk.core.activity.base;

import android.R;
import android.app.Activity;
import android.content.res.Resources;
import android.os.Looper;
import android.os.Message;
import android.text.SpannableString;
import android.text.style.ForegroundColorSpan;
import android.util.TypedValue;
import android.view.View;
import android.view.ViewGroup;
import android.widget.FrameLayout;
import android.widget.ImageView;
import android.widget.LinearLayout;
import androidx.core.internal.view.SupportMenu;
import com.byazt.aas.cu;
import com.byazt.aas.pf;
import com.byazt.ab.tt;
import com.byazt.cty.BaseLandingPageActivity;
import com.byazt.dna.qp;
import com.byazt.el.SSWebView;
import com.byazt.ete.ic;
import com.byazt.ete.kp;
import com.byazt.ff.TTProgressBar;
import com.byazt.fh.a;
import com.byazt.lbn.TTViewStub;
import com.byazt.nr.d;
import com.byazt.omf.x;
import com.byazt.ows.c;
import com.byazt.ows.uj;
import com.byazt.ows.ve;
import com.byazt.vfu.n;

/* JADX INFO: loaded from: classes9.dex */
public class TTWebPageActivity extends BaseLandingPageActivity implements qp.c {

    /* JADX INFO: renamed from: nb, reason: collision with root package name */
    private static final String f23477nb = "TTWebPageActivity";
    private int aw;
    private boolean bx;

    /* JADX INFO: renamed from: hd, reason: collision with root package name */
    private final d f23478hd = new d(Looper.getMainLooper(), this);

    /* JADX INFO: renamed from: ic, reason: collision with root package name */
    private int f23479ic;
    private ImageView pf;
    private boolean sv;

    /* JADX INFO: Access modifiers changed from: private */
    public void m() {
        if (z()) {
            this.f23478hd.removeMessages(10);
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void nu() {
        if (!z() || this.f23478hd.hasMessages(10)) {
            return;
        }
        this.f23478hd.sendEmptyMessageDelayed(10, 1000L);
    }

    private void u() {
        TTViewStub tTViewStub;
        this.sv = kp.my(this.qp);
        boolean z10 = kp.rh(this.qp) && !a.ve;
        this.bx = z10;
        if (this.sv) {
            if (!a.uj) {
                this.bx = false;
            } else if (z10) {
                this.sv = false;
            }
        }
        if (this.bx || this.sv) {
            TTViewStub tTViewStub2 = this.f12601x;
            if (tTViewStub2 != null) {
                tTViewStub2.setVisibility(0);
            }
            this.pf = (ImageView) findViewById(2114387843);
            return;
        }
        ic icVar = this.qp;
        if (icVar != null && icVar.pf()) {
            TTViewStub tTViewStub3 = this.f12589a;
            if (tTViewStub3 != null) {
                tTViewStub3.setVisibility(8);
            }
            TTViewStub tTViewStub4 = this.sp;
            if (tTViewStub4 != null) {
                tTViewStub4.setVisibility(8);
                return;
            }
            return;
        }
        int iMd = x.m().md();
        if (iMd != 0) {
            if (iMd == 1 && (tTViewStub = this.sp) != null) {
                tTViewStub.setVisibility(0);
                return;
            }
            return;
        }
        TTViewStub tTViewStub5 = this.f12589a;
        if (tTViewStub5 != null) {
            tTViewStub5.setVisibility(0);
        }
    }

    private void yp() {
        this.aw = 0;
        if (this.bx) {
            this.aw = a.f14179c;
        } else if (this.sv && !a.uj) {
            this.aw = kp.yp(this.qp);
        }
        tt(this.aw);
        if (this.aw > 0 && !this.f23478hd.hasMessages(10)) {
            if (this.bx) {
                this.f23478hd.sendEmptyMessageDelayed(10, 1000L);
            } else if (this.sv) {
                this.f23478hd.sendEmptyMessageDelayed(10, 1000L);
            }
        }
    }

    private boolean z() {
        return this.bx || this.sv;
    }

    @Override // com.byazt.cty.BaseLandingPageActivity
    public void a() {
        super.a();
        tt.c().c(this.qp);
    }

    @Override // com.byazt.dna.qp.c
    public void handleMsg(Message message) {
        if (message.what == 10 && z()) {
            int i10 = this.f23479ic + 1;
            this.f23479ic = i10;
            if (this.bx) {
                a.tt = i10;
            }
            int iMax = Math.max(0, this.aw - i10);
            tt(iMax);
            if (iMax <= 0 && this.sv) {
                a.uj = true;
            }
            this.f23478hd.sendEmptyMessageDelayed(10, 1000L);
        }
    }

    @Override // com.byazt.cty.BaseLandingPageActivity
    public void n() {
        u();
        boolean z10 = z();
        c(new com.byazt.dyf.tt.c() { // from class: com.bytedance.sdk.openadsdk.core.activity.base.TTWebPageActivity.1
            @Override // com.byazt.dyf.tt.c
            public void c() {
                TTWebPageActivity.this.m();
            }

            @Override // com.byazt.dyf.tt.c
            public void tt() {
                TTWebPageActivity.this.nu();
            }

            @Override // com.byazt.dyf.tt.c
            public void c(int i10, String str, boolean z11) {
                TTWebPageActivity.this.nu();
            }
        }, !z10);
        if (z10) {
            yp();
        }
        tt();
        c(false);
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // com.byazt.cty.BaseLandingPageActivity, com.byazt.cty.BaseThemeActivity, android.app.Activity
    public void onDestroy() {
        super.onDestroy();
        tt.c().tt(this.qp);
    }

    @Override // com.byazt.cty.BaseLandingPageActivity, android.app.Activity
    public void onPause() {
        super.onPause();
        m();
        tt(false);
    }

    @Override // com.byazt.cty.BaseLandingPageActivity, android.app.Activity
    public void onResume() {
        super.onResume();
        nu();
        tt(true);
    }

    protected int sl() {
        return -1;
    }

    @Override // com.byazt.cty.BaseLandingPageActivity
    public View sp() {
        Activity activity = this.f12596n;
        if (activity == null) {
            return null;
        }
        Resources resources = activity.getResources();
        LinearLayout linearLayoutT = t();
        ViewGroup.LayoutParams layoutParams = new LinearLayout.LayoutParams(-1, -1);
        linearLayoutT.setOrientation(1);
        linearLayoutT.setLayoutParams(layoutParams);
        TTViewStub tTViewStub = new TTViewStub(this.f12596n, new com.byazt.ows.tt());
        this.f12589a = tTViewStub;
        tTViewStub.setId(2114387770);
        linearLayoutT.addView(this.f12589a, new LinearLayout.LayoutParams(-1, -2));
        TTViewStub tTViewStub2 = new TTViewStub(this.f12596n, new ve());
        this.sp = tTViewStub2;
        tTViewStub2.setId(2114387792);
        linearLayoutT.addView(this.sp, new LinearLayout.LayoutParams(-1, -2));
        TTViewStub tTViewStub3 = new TTViewStub(this.f12596n, new uj());
        this.f12601x = tTViewStub3;
        tTViewStub3.setId(2114387933);
        linearLayoutT.addView(this.f12601x, new LinearLayout.LayoutParams(-1, -2));
        FrameLayout frameLayout = new FrameLayout(this.f12596n);
        linearLayoutT.addView(frameLayout, new LinearLayout.LayoutParams(-1, 0, 1.0f));
        SSWebView sSWebView = new SSWebView(this.f12596n);
        this.qy = sSWebView;
        sSWebView.setMaterialMeta(cu.c(this.qp));
        this.qy.setId(2114387733);
        this.qy.setLayoutParams(new FrameLayout.LayoutParams(-1, sl()));
        frameLayout.addView(this.qy);
        try {
            this.qy.setBackgroundColor(0);
            this.qy.setBackgroundResource(17170445);
        } catch (Exception unused) {
        }
        TTViewStub tTViewStub4 = new TTViewStub(this.f12596n, new c());
        this.f12594i = tTViewStub4;
        tTViewStub4.setId(2114387956);
        FrameLayout.LayoutParams layoutParams2 = new FrameLayout.LayoutParams(-1, (int) TypedValue.applyDimension(1, 48.0f, resources.getDisplayMetrics()));
        layoutParams2.gravity = 81;
        frameLayout.addView(this.f12594i, layoutParams2);
        TTProgressBar tTProgressBar = new TTProgressBar(this.f12596n, null, R.style.Widget.ProgressBar.Horizontal);
        this.gr = tTProgressBar;
        tTProgressBar.setId(2114387922);
        FrameLayout.LayoutParams layoutParams3 = new FrameLayout.LayoutParams(-1, (int) TypedValue.applyDimension(1, 3.0f, resources.getDisplayMetrics()));
        layoutParams3.gravity = 49;
        this.gr.setLayoutParams(layoutParams3);
        this.gr.setProgress(1);
        this.gr.setProgressDrawable(n.c());
        frameLayout.addView(this.gr);
        return linearLayoutT;
    }

    protected LinearLayout t() {
        return new LinearLayout(this.f12596n);
    }

    private void tt(boolean z10) {
        com.byazt.omf.d dVar;
        ic icVar = this.qp;
        if (icVar == null || !icVar.bz() || (dVar = this.yv) == null) {
            return;
        }
        dVar.sl(z10);
    }

    private void tt(int i10) {
        if (i10 > 0) {
            if (this.bx) {
                pf.c(this.f12595m, i10 + "s后可领取奖励");
                return;
            }
            if (this.sv) {
                SpannableString spannableString = new SpannableString("浏览 " + i10 + "秒 获得更多福利");
                spannableString.setSpan(new ForegroundColorSpan(SupportMenu.CATEGORY_MASK), spannableString.length() + (-4), spannableString.length(), 17);
                pf.c(this.f12595m, spannableString);
                return;
            }
            return;
        }
        if (this.bx) {
            pf.c(this.f12595m, "领取成功");
        } else if (this.sv) {
            pf.c((View) this.pf, 8);
            pf.c(this.f12595m, "恭喜你！福利已领取");
        }
    }
}
