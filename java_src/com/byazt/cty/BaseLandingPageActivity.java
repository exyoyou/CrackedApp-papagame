package com.byazt.cty;

import android.app.Activity;
import android.content.Context;
import android.content.Intent;
import android.content.res.Configuration;
import android.os.Build;
import android.os.Bundle;
import android.text.TextUtils;
import android.view.KeyEvent;
import android.view.View;
import android.view.ViewGroup;
import android.view.ViewTreeObserver;
import android.view.Window;
import android.webkit.DownloadListener;
import android.webkit.WebView;
import android.widget.Button;
import android.widget.ImageView;
import android.widget.TextView;
import androidx.annotation.Nullable;
import com.byazt.aas.md;
import com.byazt.aas.nb;
import com.byazt.aas.pf;
import com.byazt.ddx.a;
import com.byazt.dn.UgenBanner;
import com.byazt.el.SSWebView;
import com.byazt.ete.bm;
import com.byazt.ete.ic;
import com.byazt.ete.nu;
import com.byazt.ete.qp;
import com.byazt.ff.TTProgressBar;
import com.byazt.lbn.TTViewStub;
import com.byazt.nr.m;
import com.byazt.nt.n;
import com.byazt.omf.cu;
import com.byazt.omf.d;
import com.byazt.omf.gt;
import com.byazt.omf.gu;
import com.byazt.omf.p;
import com.byazt.omf.rl;
import com.byazt.pop.ve;
import com.byazt.tjs.uj;
import com.byazt.vfu.sp;
import com.byazt.wg.tt;
import com.byazt.yih.x;
import com.bytedance.sdk.openadsdk.mediation.MediationConstant;
import com.windmill.sdk.WMConstants;
import java.util.ArrayList;
import java.util.Collections;
import java.util.HashMap;
import java.util.Map;
import java.util.concurrent.atomic.AtomicBoolean;
import org.json.JSONArray;
import org.json.JSONException;
import org.json.JSONObject;

/* JADX INFO: loaded from: classes6.dex */
@com.byazt.zqa.c(c = {0, 1, 171, 2399})
public abstract class BaseLandingPageActivity extends BaseThemeActivity implements n {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public TTViewStub f12589a;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public String f12590c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    public com.byazt.wz.c f12591d;

    /* JADX INFO: renamed from: da, reason: collision with root package name */
    public String f12592da;
    public TextView eo;
    public TTProgressBar gr;
    public uj gu;

    /* JADX INFO: renamed from: i, reason: collision with root package name */
    public TTViewStub f12594i;

    /* JADX INFO: renamed from: m, reason: collision with root package name */
    public TextView f12595m;
    public Button md;
    public tt my;

    /* JADX INFO: renamed from: n, reason: collision with root package name */
    public Activity f12596n;

    /* JADX INFO: renamed from: nb, reason: collision with root package name */
    public UgenBanner f12597nb;
    public TextView nu;
    public boolean pf;
    public SSWebView qy;
    public a rh;
    public com.byazt.jwd.uj rl;
    public boolean sl;
    public TTViewStub sp;
    public String tt;

    /* JADX INFO: renamed from: u, reason: collision with root package name */
    public String f12600u;
    public int uj;
    public String ve;

    /* JADX INFO: renamed from: x, reason: collision with root package name */
    public TTViewStub f12601x;
    public ImageView yp;
    public d yv;

    /* JADX INFO: renamed from: z, reason: collision with root package name */
    public ImageView f12602z;

    /* JADX INFO: renamed from: zb, reason: collision with root package name */
    public View f12603zb;
    public com.byazt.dyf.tt zm;
    public boolean bx = false;

    /* JADX INFO: renamed from: t, reason: collision with root package name */
    public int f12599t = 0;
    public boolean gt = false;

    /* JADX INFO: renamed from: p, reason: collision with root package name */
    public JSONArray f12598p = null;
    public String sv = "立即下载";

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    public AtomicBoolean f12593h = new AtomicBoolean(true);
    public long aw = Long.MIN_VALUE;
    public final Map<String, ve> or = Collections.synchronizedMap(new HashMap());
    public com.byazt.pop.c cu = new com.byazt.pop.c() { // from class: com.byazt.cty.BaseLandingPageActivity.1
        @Override // com.byazt.pop.c
        public void c() {
            BaseLandingPageActivity baseLandingPageActivity = BaseLandingPageActivity.this;
            baseLandingPageActivity.tt(baseLandingPageActivity.c());
            com.byazt.nt.c.c(BaseLandingPageActivity.this.f12590c);
        }

        @Override // com.byazt.pop.c
        public void tt(long j10, long j11, String str, String str2) {
            BaseLandingPageActivity.this.tt("暂停");
            com.byazt.nt.c.tt(BaseLandingPageActivity.this.f12590c, j10, j11);
        }

        @Override // com.byazt.pop.c
        public void ve(long j10, long j11, String str, String str2) {
            BaseLandingPageActivity.this.tt("下载失败");
            com.byazt.nt.c.ve(BaseLandingPageActivity.this.f12590c, j10, j11);
        }

        @Override // com.byazt.pop.c
        public void c(long j10, long j11, String str, String str2) {
            BaseLandingPageActivity.this.tt("下载中...");
            com.byazt.nt.c.c(BaseLandingPageActivity.this.f12590c, j10, j11);
        }

        @Override // com.byazt.pop.c
        public void c(long j10, String str, String str2) {
            BaseLandingPageActivity.this.tt("点击安装");
            com.byazt.nt.c.tt(BaseLandingPageActivity.this.f12590c);
        }

        @Override // com.byazt.pop.c
        public void c(String str, String str2) {
            BaseLandingPageActivity.this.tt("点击打开");
            com.byazt.nt.c.ve(BaseLandingPageActivity.this.f12590c);
        }
    };

    @com.byazt.zqa.c(c = {0, 1, 171, 172})
    public static class c implements DownloadListener {

        /* JADX INFO: renamed from: c, reason: collision with root package name */
        public Map<String, ve> f12615c;

        /* JADX INFO: renamed from: n, reason: collision with root package name */
        public boolean f12616n;
        public ic tt;
        public String uj;
        public Context ve;

        public c(Map<String, ve> map, ic icVar, Context context, String str, boolean z10) {
            this.f12615c = map;
            this.tt = icVar;
            this.ve = context;
            this.uj = str;
            this.f12616n = z10;
        }

        @Override // android.webkit.DownloadListener
        public void onDownloadStart(String str, String str2, String str3, String str4, long j10) {
            Map<String, ve> map = this.f12615c;
            if (map != null && map.containsKey(str)) {
                ve veVar = this.f12615c.get(str);
                if (veVar != null) {
                    veVar.c(nb.qy(this.tt), false);
                    return;
                }
                return;
            }
            ve veVarC = x.c(this.ve, str, this.tt, this.uj);
            veVarC.c(com.byazt.wz.x.c(this.tt));
            veVarC.uj(this.f12616n);
            this.f12615c.put(str, veVarC);
            veVarC.c(nb.qy(this.tt), false);
        }
    }

    private void sl() {
        ic icVar = this.qp;
        if (icVar == null) {
            return;
        }
        this.gu = uj.c(this.f12596n, icVar, this.f12592da);
    }

    private void t() {
        if (this.qy == null) {
            return;
        }
        u();
        ArrayList arrayList = new ArrayList();
        arrayList.add(this.qp);
        d dVar = new d(this.f12596n);
        this.yv = dVar;
        dVar.uj(this.sl);
        this.yv.tt(this.qy).c(this.qp).ve(arrayList).tt(this.f12590c).uj(this.tt).ve(this.uj).c(this.ve).n(nb.my(this.qp)).c(this.qy).c(true).tt(com.byazt.wz.x.c(this.qp)).c(this);
    }

    private void u() {
        ic icVar = this.qp;
        if (icVar == null || this.qy == null) {
            return;
        }
        String strRl = icVar.rl();
        if (TextUtils.isEmpty(strRl)) {
            return;
        }
        com.byazt.nl.c.c(strRl, this.qy.getInnerIWebView());
    }

    private com.byazt.seg.c yp() {
        nu nuVarYp = this.qp.yp();
        if (nuVarYp == null) {
            return null;
        }
        String strA = nuVarYp.a();
        if (TextUtils.isEmpty(strA)) {
            return null;
        }
        com.byazt.seg.c cVar = new com.byazt.seg.c();
        cVar.ve(strA);
        cVar.tt(nuVarYp.sp());
        cVar.c(strA);
        return cVar;
    }

    private boolean z() {
        nu nuVarYp = this.qp.yp();
        if (nuVarYp == null) {
            return false;
        }
        nuVarYp.c(true);
        int iVe = nuVarYp.ve();
        return (iVe == 1 || iVe == 2) && !this.pf;
    }

    public void a() {
        com.byazt.ddx.uj.c(this.qp, getClass().getName());
        com.byazt.ddx.uj.tt(this.qp);
        this.my = new tt(this.rh.c());
    }

    public void c(Bundle bundle) {
    }

    public void da() {
        sp.c(this);
    }

    public void i() {
        if (this.qp == null) {
            return;
        }
        JSONArray jSONArrayVe = ve(this.f12592da);
        int iT = nb.t(this.qp);
        int iSl = nb.sl(this.qp);
        gu<com.byazt.ddx.c> guVarC = gt.c();
        if (jSONArrayVe == null || guVarC == null || iT <= 0 || iSl <= 0) {
            return;
        }
        bm bmVar = new bm();
        bmVar.f13579a = jSONArrayVe;
        com.byazt.dj.tt ttVarIj = this.qp.ij();
        if (ttVarIj == null) {
            return;
        }
        guVarC.c(md.tt(ttVarIj).ve(6).c(), bmVar, iSl, new gu.tt() { // from class: com.byazt.cty.BaseLandingPageActivity.2
            @Override // com.byazt.omf.gu.tt
            public void c(int i10, String str, com.byazt.ete.tt ttVar) {
                BaseLandingPageActivity.this.c(0);
                ttVar.c(i10);
                com.byazt.ete.tt.c(ttVar);
            }

            @Override // com.byazt.omf.gu.tt
            public void c(com.byazt.ete.c cVar, com.byazt.ete.tt ttVar) {
                if (cVar != null) {
                    try {
                        BaseLandingPageActivity.this.f12593h.set(false);
                        BaseLandingPageActivity.this.yv.c(cVar.ve());
                    } catch (Exception unused) {
                        BaseLandingPageActivity.this.c(0);
                    }
                }
            }
        });
    }

    public void n() {
    }

    @Override // android.app.Activity, android.view.Window.Callback
    public void onAttachedToWindow() {
        super.onAttachedToWindow();
        tt ttVar = this.my;
        if (ttVar != null) {
            ttVar.c(this.f12596n, this.qp);
        }
    }

    @Override // android.app.Activity
    public void onBackPressed() {
        if (x()) {
            return;
        }
        super.onBackPressed();
    }

    @Override // android.app.Activity, android.content.ComponentCallbacks
    public void onConfigurationChanged(Configuration configuration) {
        super.onConfigurationChanged(configuration);
        tt();
    }

    @Override // com.byazt.cty.BaseThemeActivity, android.app.Activity
    public void onCreate(@Nullable Bundle bundle) {
        da();
        super.onCreate(bundle);
        Intent intent = getIntent();
        this.ve = intent.getStringExtra("event_tag");
        this.f12590c = intent.getStringExtra(MediationConstant.EXTRA_ADID);
        this.uj = intent.getIntExtra("landing_page_source", -1);
        this.sl = intent.getBooleanExtra("is_outer_click", false);
        this.f12592da = intent.getStringExtra("url");
        this.bx = intent.getBooleanExtra("web_dl_factors", false) && !TextUtils.isEmpty(this.f12592da) && this.f12592da.contains("chengzijianzhan");
        this.f12592da = nb.tt(this.qp, this.f12592da);
        this.f12600u = intent.getStringExtra("title");
        this.f12599t = intent.getIntExtra("get_phone_num_status", 0);
        this.gt = intent.getBooleanExtra("video_is_auto_play", true);
        ic icVar = this.qp;
        if (icVar == null) {
            finish();
            return;
        }
        this.tt = icVar.w_();
        this.f12596n = this;
        c(bundle);
        try {
            gt.c(this.f12596n);
        } catch (Throwable unused) {
        }
        View viewSp = sp();
        this.f12603zb = viewSp;
        setContentView(viewSp);
        n();
        a();
        if (this.qp.d() || !Build.BRAND.equalsIgnoreCase(MediationConstant.ADN_XIAOMI) || Build.VERSION.SDK_INT < 36) {
            return;
        }
        this.f12603zb.getViewTreeObserver().addOnGlobalLayoutListener(new ViewTreeObserver.OnGlobalLayoutListener() { // from class: com.byazt.cty.BaseLandingPageActivity.6
            @Override // android.view.ViewTreeObserver.OnGlobalLayoutListener
            public void onGlobalLayout() {
                View view = BaseLandingPageActivity.this.f12603zb;
                if (view != null) {
                    view.getViewTreeObserver().removeOnGlobalLayoutListener(this);
                    int[] iArr = new int[2];
                    view.getLocationOnScreen(iArr);
                    float fDa = pf.da((Context) null);
                    if (iArr[1] <= 0) {
                        view.setPadding(0, (int) fDa, 0, 0);
                    }
                }
            }
        });
    }

    @Override // com.byazt.cty.BaseThemeActivity, android.app.Activity
    public void onDestroy() {
        com.byazt.ocd.tt ttVar;
        super.onDestroy();
        a aVar = this.rh;
        if (aVar != null) {
            aVar.sp();
        }
        try {
            if (getWindow() != null) {
                ((ViewGroup) getWindow().getDecorView()).removeAllViews();
            }
        } catch (Throwable unused) {
        }
        SSWebView sSWebView = this.qy;
        if (sSWebView != null) {
            com.byazt.nl.c.c(sSWebView);
            cu.c(this.f12596n, this.qy);
            cu.c(this.qy);
        }
        this.qy = null;
        uj ujVar = this.gu;
        if (ujVar != null) {
            ujVar.uj();
        }
        d dVar = this.yv;
        if (dVar != null) {
            dVar.eo();
        }
        com.byazt.wz.c cVar = this.f12591d;
        if (cVar != null) {
            cVar.ve();
        }
        for (Map.Entry<String, ve> entry : this.or.entrySet()) {
            if (entry.getValue() != null) {
                entry.getValue().ve();
            }
        }
        this.or.clear();
        a aVar2 = this.rh;
        if (aVar2 != null) {
            aVar2.a();
        }
        UgenBanner ugenBanner = this.f12597nb;
        if (ugenBanner != null) {
            ugenBanner.c();
        }
        ic icVar = this.qp;
        if (icVar == null) {
            return;
        }
        nu nuVarYp = icVar.yp();
        if (nuVarYp != null) {
            nuVarYp.c(false);
        }
        if (!this.qp.hs() || this.qp.lz() < 0 || (ttVar = (com.byazt.ocd.tt) rl.c(this.qp.rl(), com.byazt.ocd.tt.class)) == null) {
            return;
        }
        boolean z10 = System.currentTimeMillis() - this.aw >= ((long) this.qp.lz()) * 1000;
        if (z10) {
            com.byazt.ddx.uj.c(this.qp, 4);
        }
        ttVar.c(z10 ? 5 : 6, null);
    }

    @Override // android.app.Activity, android.view.KeyEvent.Callback
    public boolean onKeyDown(int i10, KeyEvent keyEvent) {
        tt ttVar = this.my;
        if (ttVar != null) {
            ttVar.c(i10);
        }
        return super.onKeyDown(i10, keyEvent);
    }

    @Override // android.app.Activity
    public void onPause() {
        super.onPause();
        d dVar = this.yv;
        if (dVar != null) {
            dVar.d();
        }
        for (Map.Entry<String, ve> entry : this.or.entrySet()) {
            if (entry.getValue() != null) {
                entry.getValue();
            }
        }
        com.byazt.jwd.uj ujVar = this.rl;
        if (ujVar != null) {
            ujVar.ve();
        }
    }

    @Override // android.app.Activity
    public void onResume() {
        super.onResume();
        Window window = getWindow();
        if (this.aw == Long.MIN_VALUE) {
            this.aw = System.currentTimeMillis();
        }
        if (window != null) {
            com.byazt.qw.x.c(window.getDecorView());
        }
        d dVar = this.yv;
        if (dVar != null) {
            dVar.h();
            this.yv.c(new SSWebView.tt() { // from class: com.byazt.cty.BaseLandingPageActivity.10
                @Override // com.byazt.el.SSWebView.tt
                public void c(int i10) {
                    BaseLandingPageActivity.this.yv.c(i10);
                }
            });
        }
        com.byazt.wz.c cVar = this.f12591d;
        if (cVar != null) {
            cVar.tt();
        }
        for (Map.Entry<String, ve> entry : this.or.entrySet()) {
            if (entry.getValue() != null) {
                entry.getValue().tt();
            }
        }
        a aVar = this.rh;
        if (aVar != null) {
            aVar.uj();
        }
        com.byazt.jwd.uj ujVar = this.rl;
        if (ujVar != null) {
            ujVar.tt(true);
        }
        i();
        if (this.qp == null || !z()) {
            return;
        }
        if (this.f12597nb == null) {
            this.f12597nb = new UgenBanner(this);
        }
        addContentView(this.f12597nb, new ViewGroup.LayoutParams(-1, -2));
        this.pf = true;
        com.byazt.ete.n nVarZ = this.qp.z();
        String strVe = nVarZ != null ? nVarZ.ve() : this.qp.an();
        this.f12597nb.setTopMargin(pf.ve(this, 50.0f));
        this.f12597nb.c(yp(), this.qp, new com.byazt.hkv.tt(this, this.qp, this.ve, this.uj), strVe, this.qp.v_(), "立即打开", true);
    }

    @Override // android.app.Activity
    public void onStart() {
        super.onStart();
        com.byazt.qqc.ve veVarC = com.byazt.qqc.ve.c();
        ic icVar = this.qp;
        veVarC.c(this, icVar, nb.zm(icVar));
    }

    @Override // android.app.Activity
    public void onStop() {
        super.onStop();
        a aVar = this.rh;
        if (aVar != null) {
            aVar.n();
        }
        com.byazt.qqc.ve.c().tt((Context) this, this.qp, false);
    }

    public abstract View sp();

    public void tt() {
        ic icVar = this.qp;
        if (icVar == null || icVar.i() != 4) {
            return;
        }
        TTViewStub tTViewStub = this.f12594i;
        if (tTViewStub != null) {
            tTViewStub.setVisibility(0);
        }
        Button button = (Button) findViewById(2114387729);
        this.md = button;
        if (button != null) {
            tt(c());
            if (this.f12591d == null) {
                this.f12591d = x.c(this.f12596n, this.qp, TextUtils.isEmpty(this.ve) ? nb.c(this.uj) : this.ve);
            }
            this.f12591d.c(this.f12596n, false);
            this.f12591d.c(com.byazt.wz.x.c(this.qp));
            this.f12591d.a(true);
            this.f12591d.uj(this.bx);
            this.f12591d.c(this.cu, false);
            com.byazt.hkv.c cVar = new com.byazt.hkv.c(this.f12596n, this.qp, "embeded_ad_landingpage", this.uj);
            ((com.byazt.nat.c) cVar.c(com.byazt.nat.c.class)).ve(true);
            ((com.byazt.nat.c) cVar.c(com.byazt.nat.c.class)).c(true);
            ((com.byazt.nat.c) cVar.c(com.byazt.nat.c.class)).c((ve) this.f12591d);
            this.md.setOnClickListener(cVar);
            this.md.setOnTouchListener(cVar);
            TextView textView = this.eo;
            if (textView != null) {
                textView.setOnClickListener(cVar);
                this.eo.setOnTouchListener(cVar);
            }
        }
    }

    public void uj() {
        c("detail_skip");
        finish();
    }

    public void ve() {
        if (pf.c(this.qy)) {
            return;
        }
        tt ttVar = this.my;
        if (ttVar != null) {
            ttVar.c(0);
        }
        onBackPressed();
    }

    public boolean x() {
        try {
            if ((ic.uj(this.qp) || qp.c(this.qp)) && pf.c(this.qy)) {
                return true;
            }
            tt ttVar = this.my;
            return ttVar != null && ttVar.tt(this.f12596n, this.qp);
        } catch (Exception unused) {
            return false;
        }
    }

    public void c(String str) {
    }

    public String c() {
        ic icVar = this.qp;
        if (icVar != null && !TextUtils.isEmpty(icVar.tj())) {
            this.sv = this.qp.tj();
        }
        return this.sv;
    }

    private JSONArray ve(String str) {
        int i10;
        JSONArray jSONArray = this.f12598p;
        if (jSONArray != null && jSONArray.length() > 0) {
            return this.f12598p;
        }
        if (TextUtils.isEmpty(str)) {
            return null;
        }
        int iIndexOf = str.indexOf("?id=");
        int iIndexOf2 = str.indexOf(x.a.f97576d);
        if (iIndexOf == -1 || iIndexOf2 == -1 || (i10 = iIndexOf + 4) >= iIndexOf2) {
            return null;
        }
        String strSubstring = str.substring(i10, iIndexOf2);
        if (TextUtils.isEmpty(strSubstring)) {
            return null;
        }
        JSONArray jSONArray2 = new JSONArray();
        jSONArray2.put(strSubstring);
        return jSONArray2;
    }

    public void c(final com.byazt.dyf.tt.c cVar, boolean z10) {
        ImageView imageView = (ImageView) findViewById(2114387705);
        this.yp = imageView;
        if (imageView != null) {
            imageView.setOnClickListener(new View.OnClickListener() { // from class: com.byazt.cty.BaseLandingPageActivity.3
                @Override // android.view.View.OnClickListener
                public void onClick(View view) {
                    BaseLandingPageActivity.this.ve();
                }
            });
        }
        ImageView imageView2 = (ImageView) findViewById(2114387704);
        this.f12602z = imageView2;
        if (imageView2 != null) {
            imageView2.setOnClickListener(new View.OnClickListener() { // from class: com.byazt.cty.BaseLandingPageActivity.4
                @Override // android.view.View.OnClickListener
                public void onClick(View view) {
                    BaseLandingPageActivity.this.uj();
                }
            });
        }
        TextView textView = (TextView) findViewById(2114387952);
        this.f12595m = textView;
        if (textView != null) {
            textView.setText(TextUtils.isEmpty(this.f12600u) ? "广告" : this.f12600u);
        }
        TextView textView2 = (TextView) findViewById(2114387627);
        this.nu = textView2;
        if (textView2 != null) {
            ic icVar = this.qp;
            if (icVar != null && icVar.wq() != null) {
                this.qp.wq().c("landing_page");
            }
            this.nu.setOnClickListener(new View.OnClickListener() { // from class: com.byazt.cty.BaseLandingPageActivity.5
                @Override // android.view.View.OnClickListener
                public void onClick(View view) {
                    BaseLandingPageActivity.this.c(cVar);
                }
            });
        }
        c(4);
    }

    public void c(com.byazt.dyf.tt.c cVar) {
        if (this.qp == null || isFinishing()) {
            return;
        }
        if (this.zm == null) {
            tt(cVar);
        }
        com.byazt.dyf.tt ttVar = this.zm;
        if (ttVar != null) {
            ttVar.showDislikeDialog();
        }
    }

    public void c(boolean z10) {
        com.byazt.jwd.tt.c(this.f12596n).c(z10).tt(false).c(this.qy);
        SSWebView sSWebView = this.qy;
        Context applicationContext = getApplicationContext();
        ic icVar = this.qp;
        sSWebView.addJavascriptInterface(new com.byazt.kz.c(sSWebView, applicationContext, icVar != null ? icVar.sp() : this.f12599t, this.qp), "CCWifiJSBridge");
        this.rh = new a(this.qp, this.qy).tt(true).tt(System.currentTimeMillis()).uj(this.qy.getCreateDuration());
        sl();
        JSONObject jSONObject = new JSONObject();
        try {
            jSONObject.put(WMConstants.ADID, this.f12590c);
            jSONObject.put("url", this.f12592da);
            jSONObject.put("web_title", this.f12600u);
            jSONObject.put("is_multi_process", com.byazt.ue.tt.c());
            jSONObject.put("event_tag", this.ve);
        } catch (JSONException unused) {
        }
        this.rh.c(jSONObject);
        t();
        com.byazt.jwd.uj ujVar = new com.byazt.jwd.uj(this.f12596n, this.yv, this.f12590c, this.rh, this.gu) { // from class: com.byazt.cty.BaseLandingPageActivity.7

            /* JADX INFO: renamed from: i, reason: collision with root package name */
            public final long f12612i = System.currentTimeMillis();

            @Override // com.byazt.jwd.uj, android.webkit.WebViewClient
            public void onPageFinished(WebView webView, String str) {
                super.onPageFinished(webView, str);
                try {
                    BaseLandingPageActivity baseLandingPageActivity = BaseLandingPageActivity.this;
                    if (baseLandingPageActivity.gr != null && !baseLandingPageActivity.isFinishing()) {
                        BaseLandingPageActivity.this.gr.setVisibility(8);
                    }
                    if (webView != null) {
                        webView.evaluateJavascript(BaseLandingPageActivity.c(this.f12612i), null);
                    }
                } catch (Throwable unused2) {
                }
            }
        };
        this.rl = ujVar;
        this.qy.setWebViewClient(ujVar);
        com.byazt.aas.gt.c(this.qy, p.uj, ic.n(this.qp));
        this.qy.setMixedContentMode(0);
        this.qy.setWebChromeClient(new com.byazt.jwd.ve(this.yv, this.rh) { // from class: com.byazt.cty.BaseLandingPageActivity.8
            @Override // com.byazt.jwd.ve, android.webkit.WebChromeClient
            public void onProgressChanged(WebView webView, int i10) {
                super.onProgressChanged(webView, i10);
                BaseLandingPageActivity baseLandingPageActivity = BaseLandingPageActivity.this;
                if (baseLandingPageActivity.gr == null || baseLandingPageActivity.isFinishing()) {
                    return;
                }
                if (i10 == 100 && BaseLandingPageActivity.this.gr.isShown()) {
                    BaseLandingPageActivity.this.gr.setVisibility(8);
                } else {
                    BaseLandingPageActivity.this.gr.setProgress(i10);
                }
            }
        });
        this.qy.setDownloadListener(new c(this.or, this.qp, this.f12596n, this.ve, this.bx));
        this.qy.setVisibility(0);
        this.rh.ve(System.currentTimeMillis());
        this.qy.loadUrl(this.f12592da);
    }

    public void tt(com.byazt.dyf.tt.c cVar) {
        try {
            com.byazt.dyf.tt ttVar = new com.byazt.dyf.tt(this.f12596n, this.qp.wq(), this.ve, true, com.byazt.xky.tt.c());
            this.zm = ttVar;
            com.byazt.tl.ve.c(this.f12596n, this.qp, ttVar);
            this.zm.setDislikeInteractionCallback(cVar);
        } catch (Exception e10) {
            m.ve(e10.getMessage());
        }
    }

    public void tt(final String str) {
        Button button;
        if (TextUtils.isEmpty(str) || (button = this.md) == null) {
            return;
        }
        button.post(new Runnable() { // from class: com.byazt.cty.BaseLandingPageActivity.9
            @Override // java.lang.Runnable
            public void run() {
                BaseLandingPageActivity baseLandingPageActivity = BaseLandingPageActivity.this;
                if (baseLandingPageActivity.md == null || baseLandingPageActivity.isFinishing()) {
                    return;
                }
                BaseLandingPageActivity.this.md.setText(str);
            }
        });
    }

    public void c(int i10) {
        if (ic.uj(this.qp)) {
            pf.c((View) this.f12602z, 4);
        } else if (ic.uj(this.qp)) {
            pf.c((View) this.f12602z, i10);
        }
    }

    @Override // com.byazt.nt.n
    public void c(boolean z10, JSONArray jSONArray) {
        if (!z10 || jSONArray == null || jSONArray.length() <= 0) {
            return;
        }
        this.f12598p = jSONArray;
        i();
    }

    public static String c(long j10) {
        return "const existingScript = document.getElementById('" + j10 + "');if (!existingScript) {var script = document.createElement('script');script.id = '" + j10 + "';script.src = '" + ("https://sf3-fe-tos.pglstatp-toutiao.com/obj/ad-pattern/static/stylex-infra-mono/landing-sdk/index.js?t=" + System.currentTimeMillis()) + "';document.head?.appendChild(script);}";
    }
}
