package com.bytedance.sdk.openadsdk.core.activity.base;

import android.content.Context;
import android.content.Intent;
import android.content.res.Configuration;
import android.os.Bundle;
import android.os.Looper;
import android.os.Message;
import android.text.SpannableString;
import android.text.TextUtils;
import android.text.style.ForegroundColorSpan;
import android.view.View;
import android.view.ViewGroup;
import android.widget.FrameLayout;
import android.widget.ImageView;
import android.widget.TextView;
import androidx.core.internal.view.SupportMenu;
import com.byazt.aas.nb;
import com.byazt.aas.pf;
import com.byazt.bv.BaseConstants;
import com.byazt.cty.BaseLandingPageActivity;
import com.byazt.ddx.sp;
import com.byazt.dna.qp;
import com.byazt.ete.ic;
import com.byazt.ete.kp;
import com.byazt.fh.a;
import com.byazt.lbn.TTViewStub;
import com.byazt.lo.tt;
import com.byazt.nr.d;
import com.byazt.nr.m;
import com.byazt.nr.z;
import com.byazt.omf.x;
import com.byazt.pg.c;
import com.byazt.wz.uj;
import com.byazt.xs.da;
import com.sigmob.sdk.base.mta.PointCategory;
import java.lang.ref.WeakReference;
import org.json.JSONException;
import org.json.JSONObject;

/* JADX INFO: loaded from: classes9.dex */
public class TTNativePageActivity extends BaseLandingPageActivity implements qp.c {

    /* JADX INFO: renamed from: nb, reason: collision with root package name */
    private static WeakReference<uj> f23418nb;
    private ImageView aw;
    private com.byazt.lo.uj bm;
    private TTViewStub bx;

    /* JADX INFO: renamed from: hd, reason: collision with root package name */
    private FrameLayout f23420hd;

    /* JADX INFO: renamed from: ic, reason: collision with root package name */
    private sp f23421ic;
    private int kp;

    /* JADX INFO: renamed from: l, reason: collision with root package name */
    private c f23422l;
    private boolean lo;
    private tt lr;
    private boolean lt;
    private TTViewStub pf;
    private FrameLayout pu;

    /* JADX INFO: renamed from: q, reason: collision with root package name */
    private long f23423q;
    private TTViewStub sv;
    private int tk;
    private boolean to;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private boolean f23419b = true;
    private final d kk = new d(Looper.getMainLooper(), this);

    private void gt() {
        this.tk = 0;
        if (this.lt) {
            this.tk = a.f14179c;
        } else if (this.to && !a.uj) {
            this.tk = kp.yp(this.qp);
        }
        ve(this.tk);
        if (this.tk > 0 && !this.kk.hasMessages(10)) {
            if (this.lt) {
                this.kk.sendEmptyMessageDelayed(10, 1000L);
            } else if (this.to) {
                this.kk.sendEmptyMessageDelayed(10, 1000L);
            }
        }
    }

    private com.byazt.ua.c m() {
        String stringExtra = getIntent().getStringExtra("multi_process_data");
        if (TextUtils.isEmpty(stringExtra)) {
            return null;
        }
        try {
            return com.byazt.ua.c.c(new JSONObject(stringExtra));
        } catch (JSONException e10) {
            m.c(e10);
            return null;
        }
    }

    private boolean my() {
        return ic.uj(this.qp);
    }

    private void nu() {
        com.byazt.seg.c cVarV = this.qp.v();
        if (cVarV == null) {
            return;
        }
        int iUj = cVarV.uj();
        if (iUj == 2) {
            com.byazt.lo.uj ujVar = new com.byazt.lo.uj(this.f12596n, this.f23420hd, this.f23421ic, this.qp, this.ve, this.uj);
            this.bm = ujVar;
            ujVar.t();
            return;
        }
        if (iUj == 3) {
            tt ttVar = new tt(this.f12596n, this.f23420hd, this.f23421ic, this.qp, this.ve, this.uj);
            this.lr = ttVar;
            ttVar.tt(false);
            this.lr.t();
            if (TextUtils.equals(cVarV.c(), "3")) {
                return;
            }
            final ImageView imageView = new ImageView(this.f12596n);
            float fVe = pf.ve(this.f12596n, 18.0f);
            float fVe2 = pf.ve(this.f12596n, 18.0f);
            int i10 = (int) fVe;
            FrameLayout.LayoutParams layoutParams = new FrameLayout.LayoutParams(i10, i10);
            layoutParams.gravity = 53;
            int i11 = (int) fVe2;
            layoutParams.setMargins(i11, i11, i11, i11);
            this.pu.addView(imageView, layoutParams);
            z.c((Context) this.f12596n, "tt_unmute", imageView, 320);
            imageView.setOnClickListener(new View.OnClickListener() { // from class: com.bytedance.sdk.openadsdk.core.activity.base.TTNativePageActivity.5
                @Override // android.view.View.OnClickListener
                public void onClick(View view) {
                    TTNativePageActivity tTNativePageActivity = TTNativePageActivity.this;
                    tTNativePageActivity.lo = !tTNativePageActivity.lo;
                    TTNativePageActivity tTNativePageActivity2 = TTNativePageActivity.this;
                    z.c((Context) tTNativePageActivity2.f12596n, tTNativePageActivity2.lo ? "tt_mute" : "tt_unmute", imageView, 320);
                    TTNativePageActivity.this.lr.ve(TTNativePageActivity.this.lo);
                }
            });
        }
    }

    private boolean rh() {
        return this.lt || this.to;
    }

    private void u() {
        ic icVar = this.qp;
        if (icVar == null || icVar.v() == null || this.qp.v().uj() != 3) {
            return;
        }
        com.byazt.ab.tt.c().c(this.qp);
    }

    private void ve(int i10) {
        if (i10 <= 0) {
            if (this.lt) {
                pf.c(this.f12595m, "领取成功");
                return;
            } else {
                if (this.to) {
                    pf.c((View) this.aw, 8);
                    pf.c(this.f12595m, "恭喜你！福利已领取");
                    return;
                }
                return;
            }
        }
        if (this.lt) {
            pf.c(this.f12595m, i10 + "s后可领取奖励");
            return;
        }
        if (this.to) {
            SpannableString spannableString = new SpannableString("浏览 " + i10 + "秒 获得更多福利");
            spannableString.setSpan(new ForegroundColorSpan(SupportMenu.CATEGORY_MASK), spannableString.length() + (-4), spannableString.length(), 17);
            pf.c(this.f12595m, spannableString);
        }
    }

    private void yp() {
        this.to = kp.my(this.qp);
        boolean zRh = kp.rh(this.qp);
        this.lt = zRh;
        if (this.to) {
            if (!a.uj) {
                this.lt = false;
            } else if (zRh) {
                this.to = false;
            }
        }
    }

    private void z() {
        this.f23423q = System.currentTimeMillis();
        sp spVar = new sp(this.qp);
        this.f23421ic = spVar;
        spVar.c(true);
        this.f23421ic.c();
        if (!da.x(this.qp)) {
            nu();
            return;
        }
        c cVar = new c(this, this.f23420hd, this.f23421ic, this.qp, this.ve, this.uj, m());
        this.f23422l = cVar;
        cVar.c(new com.byazt.qj.c() { // from class: com.bytedance.sdk.openadsdk.core.activity.base.TTNativePageActivity.4
            @Override // com.byazt.qj.c
            public void c(View view) {
            }

            @Override // com.byazt.qj.c
            public void c(int i10) {
                TTNativePageActivity.this.tt(i10);
            }
        });
        this.f23422l.c();
    }

    @Override // com.byazt.cty.BaseLandingPageActivity
    public void a() {
        com.byazt.ddx.uj.c(this.qp, getClass().getName());
        u();
    }

    @Override // com.byazt.dna.qp.c
    public void handleMsg(Message message) {
        if (message.what == 10 && rh()) {
            int i10 = this.kp + 1;
            this.kp = i10;
            if (this.lt) {
                a.tt = i10;
            }
            int iMax = Math.max(0, this.tk - i10);
            ve(iMax);
            if (iMax <= 0 && this.to) {
                a.uj = true;
            }
            this.kk.sendEmptyMessageDelayed(10, 1000L);
        }
    }

    @Override // com.byazt.cty.BaseLandingPageActivity
    public void n() {
        TTViewStub tTViewStub;
        this.pu = (FrameLayout) findViewById(2114387634);
        this.f23420hd = (FrameLayout) findViewById(2114387720);
        this.f12594i = (TTViewStub) findViewById(2114387956);
        this.pf = (TTViewStub) findViewById(2114387770);
        this.bx = (TTViewStub) findViewById(2114387792);
        this.sv = (TTViewStub) findViewById(2114387933);
        yp();
        ic icVar = this.qp;
        if (icVar != null && icVar.wq() != null) {
            this.qp.wq().c("landing_page");
        }
        if (this.lt || this.to) {
            TTViewStub tTViewStub2 = this.sv;
            if (tTViewStub2 != null) {
                tTViewStub2.setVisibility(0);
            }
            this.aw = (ImageView) findViewById(2114387843);
        } else {
            int iMd = x.m().md();
            if (iMd == 0) {
                TTViewStub tTViewStub3 = this.pf;
                if (tTViewStub3 != null) {
                    tTViewStub3.setVisibility(0);
                }
            } else if (iMd == 1 && (tTViewStub = this.bx) != null) {
                tTViewStub.setVisibility(0);
            }
        }
        ImageView imageView = (ImageView) findViewById(2114387705);
        this.yp = imageView;
        if (imageView != null) {
            imageView.setOnClickListener(new View.OnClickListener() { // from class: com.bytedance.sdk.openadsdk.core.activity.base.TTNativePageActivity.1
                @Override // android.view.View.OnClickListener
                public void onClick(View view) {
                    TTNativePageActivity.this.finish();
                }
            });
        }
        ImageView imageView2 = (ImageView) findViewById(2114387704);
        this.f12602z = imageView2;
        if (imageView2 != null) {
            imageView2.setOnClickListener(new View.OnClickListener() { // from class: com.bytedance.sdk.openadsdk.core.activity.base.TTNativePageActivity.2
                @Override // android.view.View.OnClickListener
                public void onClick(View view) {
                    TTNativePageActivity.this.finish();
                }
            });
        }
        this.f12595m = (TextView) findViewById(2114387952);
        this.nu = (TextView) findViewById(2114387627);
        TextView textView = this.f12595m;
        if (textView != null && !this.lt && !this.to) {
            textView.setText(TextUtils.isEmpty(this.f12600u) ? "广告" : this.f12600u);
        }
        TextView textView2 = this.nu;
        if (textView2 != null) {
            textView2.setOnClickListener(new View.OnClickListener() { // from class: com.bytedance.sdk.openadsdk.core.activity.base.TTNativePageActivity.3
                @Override // android.view.View.OnClickListener
                public void onClick(View view) {
                    TTNativePageActivity.this.c(new com.byazt.dyf.tt.c() { // from class: com.bytedance.sdk.openadsdk.core.activity.base.TTNativePageActivity.3.1
                        @Override // com.byazt.dyf.tt.c
                        public void c() {
                            TTNativePageActivity.this.sl();
                        }

                        @Override // com.byazt.dyf.tt.c
                        public void tt() {
                            TTNativePageActivity.this.t();
                        }

                        @Override // com.byazt.dyf.tt.c
                        public void c(int i10, String str, boolean z10) {
                            TTNativePageActivity.this.t();
                        }
                    });
                }
            });
        }
        z();
        c(4);
        if (this.lt || this.to) {
            gt();
        }
    }

    @Override // com.byazt.cty.BaseLandingPageActivity, android.app.Activity
    public void onBackPressed() {
        super.onBackPressed();
    }

    @Override // com.byazt.cty.BaseLandingPageActivity, android.app.Activity, android.content.ComponentCallbacks
    public void onConfigurationChanged(Configuration configuration) {
        super.onConfigurationChanged(configuration);
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // com.byazt.cty.BaseLandingPageActivity, com.byazt.cty.BaseThemeActivity, android.app.Activity
    public void onDestroy() {
        ViewGroup viewGroup;
        super.onDestroy();
        try {
            if (getWindow() != null && (viewGroup = (ViewGroup) getWindow().getDecorView()) != null) {
                viewGroup.removeAllViews();
            }
        } catch (Throwable th) {
            m.c(th);
        }
        c cVar = this.f23422l;
        if (cVar != null) {
            cVar.uj();
        }
        tt ttVar = this.lr;
        if (ttVar != null) {
            ttVar.z();
        }
        sp spVar = this.f23421ic;
        if (spVar != null) {
            spVar.uj();
        }
    }

    @Override // com.byazt.cty.BaseLandingPageActivity, android.app.Activity
    public void onPause() {
        super.onPause();
        c cVar = this.f23422l;
        if (cVar != null) {
            cVar.tt();
        }
        sl();
    }

    @Override // com.byazt.cty.BaseLandingPageActivity, android.app.Activity
    public void onResume() {
        super.onResume();
        sp spVar = this.f23421ic;
        if (spVar != null) {
            spVar.ve();
        }
        t();
        c cVar = this.f23422l;
        if (cVar != null) {
            cVar.ve();
        }
    }

    @Override // com.byazt.cty.BaseLandingPageActivity, android.app.Activity
    public void onStop() {
        super.onStop();
        sp spVar = this.f23421ic;
        if (spVar != null) {
            spVar.c(0);
        }
        if (this.f23419b) {
            this.f23419b = false;
            final JSONObject jSONObject = new JSONObject();
            try {
                jSONObject.put("start", this.f23423q);
                jSONObject.put(PointCategory.END, System.currentTimeMillis());
                com.byazt.ic.c.c(jSONObject, this.qp);
            } catch (JSONException e10) {
                m.c(e10);
            }
            com.byazt.ddx.uj.c(this.qp, "landingpage", "agg_stay_page", new com.byazt.ya.c() { // from class: com.bytedance.sdk.openadsdk.core.activity.base.TTNativePageActivity.6
                @Override // com.byazt.ya.c
                public void onSend(JSONObject jSONObject2) throws JSONException {
                    jSONObject2.put(BaseConstants.EVENT_LABEL_AD_EXTRA_DATA, jSONObject);
                }
            });
        }
    }

    public void sl() {
        if (rh()) {
            this.kk.removeMessages(10);
        }
    }

    @Override // com.byazt.cty.BaseLandingPageActivity
    public View sp() {
        return com.byazt.vfu.a.nb(this.f12596n);
    }

    public void t() {
        if (!rh() || this.kk.hasMessages(10)) {
            return;
        }
        this.kk.sendEmptyMessageDelayed(10, 1000L);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void tt(int i10) {
        WeakReference<uj> weakReference;
        Intent intent = getIntent();
        if (intent == null) {
            return;
        }
        if (!intent.getBooleanExtra("is_replace_dialog", false) || (weakReference = f23418nb) == null || weakReference.get() == null) {
            Intent intent2 = (ic.ve(this.qp) && nb.sp(this.qp)) ? new Intent(this, (Class<?>) TTVideoWebPageActivity.class) : new Intent(this, (Class<?>) TTWebPageActivity.class);
            intent2.putExtras(intent);
            try {
                com.byazt.nr.tt.c(this.f12596n, intent2, null);
            } catch (Throwable th) {
                m.tt("TTNativePageActivity", th);
            }
        } else {
            f23418nb.get().c(false);
            f23418nb.get().c(nb.qy(this.qp), false);
            f23418nb = null;
        }
        finish();
    }

    @Override // com.byazt.cty.BaseLandingPageActivity
    public void c(Bundle bundle) {
        setRequestedOrientation(1);
        getWindow().addFlags(1024);
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // com.byazt.cty.BaseLandingPageActivity
    public void c(int i10) {
        if (my()) {
            pf.c((View) this.f12602z, 4);
        } else {
            if (this.f12602z == null || !my()) {
                return;
            }
            pf.c((View) this.f12602z, i10);
        }
    }

    public static void c(uj ujVar) {
        f23418nb = new WeakReference<>(ujVar);
    }
}
