package com.join.mgps.activity;

import android.app.Activity;
import android.content.Context;
import android.os.Bundle;
import android.os.Handler;
import android.os.Looper;
import android.os.Message;
import android.os.Vibrator;
import android.text.TextUtils;
import android.view.GestureDetector;
import android.view.KeyEvent;
import android.view.LayoutInflater;
import android.view.MotionEvent;
import android.view.View;
import android.view.ViewGroup;
import android.view.animation.AccelerateInterpolator;
import android.view.animation.DecelerateInterpolator;
import android.widget.FrameLayout;
import android.widget.ImageView;
import android.widget.LinearLayout;
import android.widget.RelativeLayout;
import android.widget.TextView;
import com.aggmoread.sdk.client.AMAdLoadSlot;
import com.aggmoread.sdk.client.AMError;
import com.aggmoread.sdk.client.AMSdk;
import com.aggmoread.sdk.client.splash.AMSplashAd;
import com.aggmoread.sdk.client.splash.AMSplashAdListener;
import com.aggmoread.sdk.client.splash.AMSplashInteractionListener;
import com.beizi.fusion.AdListener;
import com.beizi.fusion.SplashAd;
import com.bytedance.sdk.openadsdk.AdSlot;
import com.bytedance.sdk.openadsdk.CSJAdError;
import com.bytedance.sdk.openadsdk.CSJSplashAd;
import com.bytedance.sdk.openadsdk.TTAdConfig;
import com.bytedance.sdk.openadsdk.TTAdManager;
import com.bytedance.sdk.openadsdk.TTAdNative;
import com.bytedance.sdk.openadsdk.TTAdSdk;
import com.bytedance.sdk.openadsdk.mediation.MediationConstant;
import com.czhj.sdk.common.utils.DeviceUtils;
import com.czhj.sdk.common.utils.Dips;
import com.facebook.drawee.view.SimpleDraweeView;
import com.github.snowdream.android.app.downloader.DownloadTask;
import com.haima.hmcp.cloud.BaseCloudFileManager;
import com.join.android.app.common.utils.JsonMapper;
import com.join.android.app.component.video.EmptyControlVideoView;
import com.join.android.app.mgsim.wufun.R;
import com.join.mgps.Util.AccountUtil_;
import com.join.mgps.Util.IntentDateBean;
import com.join.mgps.Util.IntentUtil;
import com.join.mgps.Util.WifiUtils;
import com.join.mgps.activity.login.AbScreenUtils;
import com.join.mgps.db.tables.ShowViewDataBeanTable;
import com.join.mgps.dto.ExtBean;
import com.join.mgps.dto.FirstIntentData;
import com.join.mgps.dto.FirstScreenAdInteractionBean;
import com.join.mgps.dto.PlayCfgBean;
import com.join.mgps.dto.ShowViewDataBean;
import com.join.mgps.dto.SplashIntentBean;
import com.join.mgps.dto.ThAdSwitchDataBean;
import com.join.mgps.pref.PrefDef_;
import com.join.mgps.service.CommonService;
import com.papa.sim.statistic.Event;
import com.papa.sim.statistic.Ext;
import com.papa91.wrapper.UserPrefs;
import com.windmill.sdk.WMConstants;
import com.windmill.sdk.WindMillError;
import com.windmill.sdk.models.AdInfo;
import com.windmill.sdk.splash.IWMSplashEyeAd;
import com.windmill.sdk.splash.WMSplashAd;
import com.windmill.sdk.splash.WMSplashAdListener;
import com.windmill.sdk.splash.WMSplashAdRequest;
import com.windmill.sdk.utils.UIUtils;
import java.io.File;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.Iterator;
import java.util.List;
import java.util.Random;
import org.androidannotations.annotations.AfterViews;
import org.androidannotations.annotations.EActivity;
import org.androidannotations.annotations.Extra;
import org.androidannotations.annotations.UiThread;
import org.androidannotations.annotations.ViewById;
import org.androidannotations.annotations.sharedpreferences.Pref;
import org.json.JSONObject;

/* JADX INFO: loaded from: classes4.dex */
@EActivity(R.layout.splash_main_layout)
public class SplashActivity extends Activity {
    public static final String X = "SplashActivity";
    private static final String Y = "点击跳过 %d";
    private com.join.mgps.adapter.g3 A;
    private FirstIntentData B;
    private TTAdNative I;
    private int K;
    private Vibrator N;
    GestureDetector P;
    ShowViewDataBean T;
    SplashIntentBean U;
    private SplashAd V;
    AMSplashAd W;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    @ViewById
    FrameLayout f56099b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    EmptyControlVideoView f56100c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    SimpleDraweeView f56101d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    RelativeLayout f56102e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    ImageView f56103f;

    /* JADX INFO: renamed from: g, reason: collision with root package name */
    @Pref
    PrefDef_ f56104g;

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    TextView f56105h;

    /* JADX INFO: renamed from: i, reason: collision with root package name */
    TextView f56106i;

    /* JADX INFO: renamed from: j, reason: collision with root package name */
    View f56107j;

    /* JADX INFO: renamed from: k, reason: collision with root package name */
    @Extra
    ThAdSwitchDataBean f56108k;

    /* JADX INFO: renamed from: l, reason: collision with root package name */
    @Extra
    PlayCfgBean f56109l;

    /* JADX INFO: renamed from: m, reason: collision with root package name */
    @ViewById(R.id.splash_holder)
    ImageView f56110m;

    /* JADX INFO: renamed from: n, reason: collision with root package name */
    @ViewById(R.id.skip_view)
    TextView f56111n;

    /* JADX INFO: renamed from: o, reason: collision with root package name */
    ImageView f56112o;

    /* JADX INFO: renamed from: p, reason: collision with root package name */
    ImageView f56113p;

    /* JADX INFO: renamed from: q, reason: collision with root package name */
    RelativeLayout f56114q;

    /* JADX INFO: renamed from: r, reason: collision with root package name */
    LinearLayout f56115r;

    /* JADX INFO: renamed from: s, reason: collision with root package name */
    LinearLayout f56116s;

    /* JADX INFO: renamed from: t, reason: collision with root package name */
    TextView f56117t;

    /* JADX INFO: renamed from: u, reason: collision with root package name */
    TextView f56118u;

    /* JADX INFO: renamed from: v, reason: collision with root package name */
    RelativeLayout f56119v;

    /* JADX INFO: renamed from: w, reason: collision with root package name */
    private int f56120w = 2000;

    /* JADX INFO: renamed from: x, reason: collision with root package name */
    private long f56121x = 0;

    /* JADX INFO: renamed from: y, reason: collision with root package name */
    public boolean f56122y = false;

    /* JADX INFO: renamed from: z, reason: collision with root package name */
    private boolean f56123z = false;
    FirstScreenAdInteractionBean C = null;
    int D = 4;
    private Handler E = new i(Looper.getMainLooper());
    private boolean F = false;
    private boolean G = false;
    private int H = 1;
    private String J = "";
    private int L = 0;
    private com.join.mgps.shake.a M = null;
    com.join.mgps.shake.a.InterfaceC0744a O = new k();
    com.nineoldandroids.animation.q Q = null;
    float R = 0.0f;
    float S = 0.0f;

    class a implements Runnable {
        a() {
        }

        @Override // java.lang.Runnable
        public void run() {
            SplashActivity.this.f56100c.startPlayLogic();
        }
    }

    class b implements Runnable {
        b() {
        }

        @Override // java.lang.Runnable
        public void run() {
            SplashActivity.this.y();
        }
    }

    class c implements TTAdSdk.Callback {

        /* JADX INFO: renamed from: g, reason: collision with root package name */
        final /* synthetic */ Context f56126g;

        c(final Context val$ctx) {
            this.f56126g = val$ctx;
        }

        @Override // com.bytedance.sdk.openadsdk.TTAdSdk.InitCallback
        public void fail(int i10, String s10) {
        }

        @Override // com.bytedance.sdk.openadsdk.TTAdSdk.InitCallback
        public void success() {
            TTAdManager adManager = TTAdSdk.getAdManager();
            adManager.requestPermissionIfNecessary(this.f56126g);
            SplashActivity.this.I = adManager.createAdNative(this.f56126g);
        }
    }

    class d implements TTAdNative.CSJSplashAdListener {

        class a implements CSJSplashAd.SplashAdListener {
            a() {
            }

            @Override // com.bytedance.sdk.openadsdk.CSJSplashAd.SplashAdListener
            public void onSplashAdClick(CSJSplashAd csjSplashAd) {
            }

            @Override // com.bytedance.sdk.openadsdk.CSJSplashAd.SplashAdListener
            public void onSplashAdClose(CSJSplashAd csjSplashAd, int i10) {
                SplashActivity.this.y();
            }

            @Override // com.bytedance.sdk.openadsdk.CSJSplashAd.SplashAdListener
            public void onSplashAdShow(CSJSplashAd csjSplashAd) {
                com.papa.sim.statistic.t.l(SplashActivity.this).R1(Event.Stopad_GromoreSdk_Show, new Ext());
            }
        }

        d() {
        }

        @Override // com.bytedance.sdk.openadsdk.TTAdNative.CSJSplashAdListener
        public void onSplashLoadFail(CSJAdError csjAdError) {
            SplashActivity.this.y();
        }

        /* JADX WARN: Code duplicated, block: B:11:0x0024  */
        @Override // com.bytedance.sdk.openadsdk.TTAdNative.CSJSplashAdListener
        public void onSplashLoadSuccess(CSJSplashAd csjSplashAd) {
            if (csjSplashAd == null) {
                return;
            }
            View splashView = csjSplashAd.getSplashView();
            if (splashView != null) {
                SplashActivity splashActivity = SplashActivity.this;
                if (splashActivity.f56099b == null || splashActivity.isFinishing()) {
                    SplashActivity.this.y();
                } else {
                    SplashActivity.this.f56099b.removeAllViews();
                    SplashActivity.this.f56099b.addView(splashView);
                }
            } else {
                SplashActivity.this.y();
            }
            csjSplashAd.setSplashAdListener(new a());
            com.papa.sim.statistic.t.l(SplashActivity.this).R1(Event.Stopad_GromoreSdk_loading, new Ext());
        }

        @Override // com.bytedance.sdk.openadsdk.TTAdNative.CSJSplashAdListener
        public void onSplashRenderFail(CSJSplashAd csjSplashAd, CSJAdError csjAdError) {
            SplashActivity.this.y();
        }

        @Override // com.bytedance.sdk.openadsdk.TTAdNative.CSJSplashAdListener
        public void onSplashRenderSuccess(CSJSplashAd csjSplashAd) {
        }
    }

    class e implements AdListener {
        e() {
        }

        @Override // com.beizi.fusion.AdListener
        public void onAdClicked() {
        }

        @Override // com.beizi.fusion.AdListener
        public void onAdClosed() {
            SplashActivity.this.y();
        }

        @Override // com.beizi.fusion.AdListener
        public void onAdFailedToLoad(int errorCode) {
            StringBuilder sb2 = new StringBuilder();
            sb2.append("onAdFailedToLoad:");
            sb2.append(errorCode);
            com.papa.sim.statistic.t.l(SplashActivity.this).R1(Event.AdscopeSdk_No, new Ext());
            SplashActivity.this.b0();
        }

        @Override // com.beizi.fusion.AdListener
        public void onAdLoaded() {
            if (SplashActivity.this.V != null) {
                if (!SplashActivity.this.C()) {
                    SplashActivity.this.V.reportNotShow();
                    return;
                }
                SplashActivity.this.f56099b.removeAllViews();
                SplashActivity.this.V.show(SplashActivity.this.f56099b);
                com.papa.sim.statistic.t.l(SplashActivity.this).R1(Event.AdscopeSdk_Show, new Ext());
            }
        }

        @Override // com.beizi.fusion.AdListener
        public void onAdShown() {
        }

        @Override // com.beizi.fusion.AdListener
        public void onAdTick(long millisUnitFinished) {
        }
    }

    class f implements AMSplashAdListener {
        f() {
        }

        @Override // com.aggmoread.sdk.client.IAMAdLoadListener
        public void onAdLoadFail(AMError amError) {
            com.papa.sim.statistic.t.l(SplashActivity.this).R1(Event.AdRenerSdk_No, new Ext());
            SplashActivity.this.b0();
        }

        @Override // com.aggmoread.sdk.client.IAMAdLoadListener
        public void onAdLoaded(List<AMSplashAd> list) {
            if (list == null || list.size() <= 0) {
                return;
            }
            SplashActivity.this.W = list.get(0);
        }
    }

    class g implements AMSplashInteractionListener {
        g() {
        }

        @Override // com.aggmoread.sdk.client.splash.AMSplashInteractionListener
        public void onAdClicked() {
        }

        @Override // com.aggmoread.sdk.client.splash.AMSplashInteractionListener
        public void onAdClosed() {
            SplashActivity.this.y();
        }

        @Override // com.aggmoread.sdk.client.IAMAdInteractionListener
        public void onAdError(AMError amError) {
            com.papa.sim.statistic.t.l(SplashActivity.this).R1(Event.AdRenerSdk_No, new Ext());
            SplashActivity.this.y();
        }

        @Override // com.aggmoread.sdk.client.splash.AMSplashInteractionListener
        public void onAdExposed() {
            SplashActivity splashActivity = SplashActivity.this;
            if (splashActivity.W != null) {
                com.papa.sim.statistic.t.l(splashActivity).R1(Event.AdRenerSdk_Show, new Ext());
            }
        }

        @Override // com.aggmoread.sdk.client.splash.AMSplashInteractionListener
        public void onAdTick(long l10) {
        }
    }

    class h implements WMSplashAdListener {
        h() {
        }

        @Override // com.windmill.sdk.splash.WMSplashAdListener
        public void onSplashAdClicked(AdInfo adInfo) {
            SplashActivity.this.y();
        }

        @Override // com.windmill.sdk.splash.WMSplashAdListener
        public void onSplashAdFailToLoad(WindMillError error, String placementId) {
            com.papa.sim.statistic.t.l(SplashActivity.this).R1(Event.TobidSdk_No, new Ext());
            SplashActivity.this.b0();
        }

        @Override // com.windmill.sdk.splash.WMSplashAdListener
        public void onSplashAdFailToPresent(WindMillError error, String placementId) {
            com.papa.sim.statistic.t.l(SplashActivity.this).R1(Event.TobidSdk_No, new Ext());
            SplashActivity.this.b0();
        }

        @Override // com.windmill.sdk.splash.WMSplashAdListener
        public void onSplashAdSuccessLoad(String placementId) {
        }

        @Override // com.windmill.sdk.splash.WMSplashAdListener
        public void onSplashAdSuccessPresent(AdInfo adInfo) {
            if (adInfo != null) {
                com.papa.sim.statistic.t.l(SplashActivity.this).R1(Event.TobidSdk_show, new Ext());
            }
        }

        @Override // com.windmill.sdk.splash.WMSplashAdListener
        public void onSplashClosed(AdInfo adInfo, IWMSplashEyeAd splashEyeAd) {
            SplashActivity.this.y();
        }
    }

    class i extends Handler {
        i(Looper looper) {
            super(looper);
        }

        @Override // android.os.Handler
        public void handleMessage(Message msg) {
            int i10 = msg.what;
            if (i10 == 1) {
                if (SplashActivity.this.F) {
                    return;
                }
                SplashActivity.this.c0();
                return;
            }
            if (i10 == 2) {
                if (SplashActivity.this.F) {
                    return;
                }
                SplashActivity.this.f56105h.setText("跳过(" + SplashActivity.this.D + "S)");
                SplashActivity.this.f56106i.setText("跳过(" + SplashActivity.this.D + "S)");
                SplashActivity splashActivity = SplashActivity.this;
                int i11 = splashActivity.D;
                if (i11 > 1) {
                    splashActivity.D = i11 - 1;
                    if (splashActivity.E != null) {
                        SplashActivity.this.E.sendEmptyMessageDelayed(2, 1000L);
                        return;
                    }
                    return;
                }
                return;
            }
            if (i10 == 3) {
                if (SplashActivity.this.B == null || !SplashActivity.this.B.isCustomApk() || !SplashActivity.this.B.isIntent()) {
                    SplashActivity.this.c0();
                    return;
                }
                IntentDateBean intentDateBean = SplashActivity.this.B.getIntentDateBean();
                intentDateBean.setFrom(MediationConstant.RIT_TYPE_SPLASH);
                if (SplashActivity.this.B.isAutoDownload()) {
                    intentDateBean.setObject(Boolean.TRUE);
                }
                SplashActivity splashActivity2 = SplashActivity.this;
                splashActivity2.d0(splashActivity2.B.getIntentDateBean());
                return;
            }
            if (i10 == 4 && !SplashActivity.this.F) {
                SplashActivity.this.f56105h.setText("跳过");
                SplashActivity.this.f56106i.setText("跳过");
                SplashActivity splashActivity3 = SplashActivity.this;
                int i12 = splashActivity3.D;
                if (i12 > 1) {
                    splashActivity3.D = i12 - 1;
                    if (splashActivity3.E != null) {
                        SplashActivity.this.E.sendEmptyMessageDelayed(4, 1000L);
                    }
                }
            }
        }
    }

    class j implements View.OnClickListener {
        j() {
        }

        @Override // android.view.View.OnClickListener
        public void onClick(View view) {
            SplashActivity.this.w();
        }
    }

    class k implements com.join.mgps.shake.a.InterfaceC0744a {
        k() {
        }

        @Override // com.join.mgps.shake.a.InterfaceC0744a
        public void a() {
            SplashIntentBean splashIntentBean;
            SplashActivity.this.N.vibrate(new long[]{300, 500}, -1);
            SplashActivity.this.M.e();
            SplashActivity splashActivity = SplashActivity.this;
            ShowViewDataBean showViewDataBean = splashActivity.T;
            if (showViewDataBean == null || (splashIntentBean = splashActivity.U) == null) {
                splashActivity.c0();
            } else {
                splashActivity.R(showViewDataBean, splashIntentBean, "2");
            }
        }
    }

    class l implements com.nineoldandroids.animation.q.g {
        l() {
        }

        @Override // com.nineoldandroids.animation.q.g
        public void a(com.nineoldandroids.animation.q animation) {
            SplashActivity.this.f56113p.setRotation(((Float) animation.L()).floatValue());
        }
    }

    class m implements GestureDetector.OnGestureListener {
        m() {
        }

        @Override // android.view.GestureDetector.OnGestureListener
        public boolean onDown(MotionEvent e10) {
            return false;
        }

        @Override // android.view.GestureDetector.OnGestureListener
        public boolean onFling(MotionEvent e10, MotionEvent e11, float velocityX, float velocityY) {
            SplashIntentBean splashIntentBean;
            if (Math.abs(e10.getRawY() - e11.getRawY()) <= 200.0f || Math.abs(velocityY) <= 100.0f) {
                return false;
            }
            SplashActivity splashActivity = SplashActivity.this;
            ShowViewDataBean showViewDataBean = splashActivity.T;
            if (showViewDataBean == null || (splashIntentBean = splashActivity.U) == null) {
                splashActivity.c0();
                return true;
            }
            splashActivity.R(showViewDataBean, splashIntentBean, "3");
            return true;
        }

        @Override // android.view.GestureDetector.OnGestureListener
        public void onLongPress(MotionEvent e10) {
        }

        @Override // android.view.GestureDetector.OnGestureListener
        public boolean onScroll(MotionEvent e10, MotionEvent e11, float distanceX, float distanceY) {
            return false;
        }

        @Override // android.view.GestureDetector.OnGestureListener
        public void onShowPress(MotionEvent e10) {
        }

        @Override // android.view.GestureDetector.OnGestureListener
        public boolean onSingleTapUp(MotionEvent e10) {
            return false;
        }
    }

    class n implements com.nineoldandroids.animation.q.g {
        n() {
        }

        @Override // com.nineoldandroids.animation.q.g
        public void a(com.nineoldandroids.animation.q animation) {
            SplashActivity.this.f56112o.setTranslationY(((Float) animation.L()).floatValue());
        }
    }

    class o implements Runnable {

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        final /* synthetic */ ShowViewDataBean f56140b;

        o(final ShowViewDataBean val$showViewDataBean) {
            this.f56140b = val$showViewDataBean;
        }

        @Override // java.lang.Runnable
        public void run() {
            t6.i0.o().m(this.f56140b.getShowVieDatabeanTable());
        }
    }

    class p implements View.OnClickListener {

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        final /* synthetic */ ShowViewDataBean f56142b;

        /* JADX INFO: renamed from: c, reason: collision with root package name */
        final /* synthetic */ SplashIntentBean f56143c;

        p(final ShowViewDataBean val$showViewDataBean, final SplashIntentBean val$appBeanMain) {
            this.f56142b = val$showViewDataBean;
            this.f56143c = val$appBeanMain;
        }

        @Override // android.view.View.OnClickListener
        public void onClick(View v10) {
            SplashActivity splashActivity = SplashActivity.this;
            splashActivity.R(this.f56142b, this.f56143c, splashActivity.K == 1 ? "0" : "1");
        }
    }

    class q extends com.join.mgps.callbacks.w {

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        final /* synthetic */ ShowViewDataBean f56145b;

        /* JADX INFO: renamed from: c, reason: collision with root package name */
        final /* synthetic */ SplashIntentBean f56146c;

        q(final ShowViewDataBean val$showViewDataBean, final SplashIntentBean val$appBeanMain) {
            this.f56145b = val$showViewDataBean;
            this.f56146c = val$appBeanMain;
        }

        @Override // com.join.mgps.callbacks.w, v7.h
        public void onAutoComplete(String s10, Object... objects) {
            super.onAutoComplete(s10, objects);
            onClickBlank(s10, objects);
        }

        @Override // com.join.mgps.callbacks.w, v7.h
        public void onClickBlank(String s10, Object... objects) {
            SplashActivity splashActivity = SplashActivity.this;
            splashActivity.R(this.f56145b, this.f56146c, splashActivity.K == 1 ? "0" : "1");
        }

        @Override // com.join.mgps.callbacks.w, v7.h
        public void onPrepared(String s10, Object... objects) {
            int duration = SplashActivity.this.f56100c.getDuration();
            SplashActivity splashActivity = SplashActivity.this;
            splashActivity.D = duration / 1000;
            if (splashActivity.E != null) {
                SplashActivity.this.E.sendEmptyMessage(4);
            }
        }
    }

    private void A() {
        U();
        s();
    }

    private void B(Context ctx, String appid) {
        if (new PrefDef_(ctx).sdkInit().d().booleanValue()) {
            return;
        }
        TTAdSdk.init(ctx, v(appid));
        TTAdSdk.start(new c(ctx));
    }

    /* JADX INFO: Access modifiers changed from: private */
    public boolean C() {
        return true;
    }

    private boolean D(String start, String end, long now) {
        com.join.mgps.Util.h1.e("Aspect", getClass().getSimpleName(), "isInRange", start, end, "before");
        if (TextUtils.isEmpty(start) || TextUtils.isEmpty(end)) {
            com.join.mgps.Util.h1.e("Aspect", getClass().getSimpleName(), "isInRange", start, end, "after");
            return false;
        }
        try {
            boolean z10 = now > Long.parseLong(start) * 1000 && now < Long.parseLong(end) * 1000;
            com.join.mgps.Util.h1.e("Aspect", getClass().getSimpleName(), "isInRange", start, end, "after");
            return z10;
        } catch (NumberFormatException e10) {
            e10.printStackTrace();
            com.join.mgps.Util.h1.e("Aspect", getClass().getSimpleName(), "isInRange", start, end, "after");
            return false;
        }
    }

    private boolean E() {
        try {
            List<ShowViewDataBeanTable> listD = t6.i0.o().d();
            ArrayList arrayList = new ArrayList();
            Iterator<ShowViewDataBeanTable> it2 = listD.iterator();
            while (it2.hasNext()) {
                arrayList.add(it2.next().getShowVieDatabean());
            }
            long jCurrentTimeMillis = System.currentTimeMillis();
            ShowViewDataBean showViewDataBean = null;
            ShowViewDataBean showViewDataBean2 = null;
            for (int i10 = 0; i10 < arrayList.size(); i10++) {
                ShowViewDataBean showViewDataBean3 = (ShowViewDataBean) arrayList.get(i10);
                String is_force = showViewDataBean3.getIs_force();
                if (is_force.equals("1") && showViewDataBean3.getTag_show() != 2) {
                    long j10 = Long.parseLong(showViewDataBean3.getBegin_times()) * 1000;
                    long j11 = Long.parseLong(showViewDataBean3.getEnd_times()) * 1000;
                    if (jCurrentTimeMillis > j10 && jCurrentTimeMillis < j11) {
                        showViewDataBean = showViewDataBean3;
                    }
                } else if (!is_force.equals("1")) {
                    long j12 = Long.parseLong(showViewDataBean3.getBegin_times()) * 1000;
                    long j13 = Long.parseLong(showViewDataBean3.getEnd_times()) * 1000;
                    if (jCurrentTimeMillis > j12 && jCurrentTimeMillis < j13 && showViewDataBean3.getJump_info().size() > 0 && showViewDataBean3.getTag_show() != 2) {
                        showViewDataBean2 = showViewDataBean3;
                    }
                }
            }
            if (showViewDataBean != null) {
                return Z(showViewDataBean);
            }
            if (showViewDataBean2 != null) {
                return Z(showViewDataBean2);
            }
            return false;
        } catch (Exception unused) {
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void F() {
        M(this.f56109l.getAd_id());
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void G() {
        N(this.f56109l.getAd_id());
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void H() {
        O(this.f56109l.getAd_id());
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void I() {
        P(this.f56109l.getAd_id());
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static /* synthetic */ void J(View view) {
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ boolean K(View view, MotionEvent motionEvent) {
        GestureDetector gestureDetector = this.P;
        return gestureDetector != null && gestureDetector.onTouchEvent(motionEvent);
    }

    private void L(String adid) {
        S();
    }

    private void M(String adid) {
        if (new PrefDef_(this).sdkInit().d().booleanValue()) {
            return;
        }
        com.papa.sim.statistic.t.l(this).R1(Event.AdscopeSdk_loading, new Ext());
        f0();
        SplashAd splashAd = new SplashAd(this, null, adid, new e(), BaseCloudFileManager.ACK_TIMEOUT);
        this.V = splashAd;
        splashAd.loadAd(AbScreenUtils.getScreenWidth(this), AbScreenUtils.getScreenHeight(this));
    }

    private void N(String adid) {
        if (new PrefDef_(this).sdkInit().d().booleanValue()) {
            return;
        }
        com.papa.sim.statistic.t.l(this).R1(Event.AdRenerSdk_loading, new Ext());
        f0();
        AMSdk.makeAdLoader(new AMAdLoadSlot.Builder().setSlotId(adid).setAdContainer((ViewGroup) findViewById(R.id.main)).setAdCount(1).setFetchTimeOut(3000).build()).loadAndShowSplashAd(this, new f(), new g());
    }

    private void O(String adid) {
        AdSlot adSlotBuild = new AdSlot.Builder().setCodeId(adid).setImageAcceptedSize(UIUtils.getScreenWidthInPx(this), UIUtils.getScreenHeightInPx(this)).build();
        TTAdNative tTAdNativeCreateAdNative = TTAdSdk.getAdManager().createAdNative(this);
        this.I = tTAdNativeCreateAdNative;
        tTAdNativeCreateAdNative.loadSplashAd(adSlotBuild, new d(), 3000);
    }

    private void P(String adid) {
        if (new PrefDef_(this).sdkInit().d().booleanValue()) {
            return;
        }
        com.papa.sim.statistic.t.l(this).R1(Event.TobidSdk_loading, new Ext());
        f0();
        HashMap map = new HashMap();
        map.put(WMConstants.AD_WIDTH, Integer.valueOf(DeviceUtils.getRealMetrics(this).widthPixels));
        map.put(WMConstants.AD_HEIGHT, Integer.valueOf(DeviceUtils.getRealMetrics(this).heightPixels - Dips.dipsToIntPixels(100.0f, this)));
        WMSplashAdRequest wMSplashAdRequest = new WMSplashAdRequest(adid, "123456", map);
        wMSplashAdRequest.setDisableAutoHideAd(true);
        WMSplashAd wMSplashAd = new WMSplashAd(this, wMSplashAdRequest, new h());
        this.f56099b.removeAllViews();
        wMSplashAd.loadAdAndShow(this.f56099b);
    }

    private void Q() {
        if (this.f56122y) {
            y();
        } else {
            this.f56122y = true;
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void R(ShowViewDataBean showViewDataBean, SplashIntentBean appBeanMain, String recPosition) {
        IntentDateBean intentDataBean = appBeanMain.getIntentDataBean();
        if (showViewDataBean.getIs_force().equals("1")) {
            showViewDataBean.setTag_show(2);
            t6.i0.o().m(showViewDataBean.getShowVieDatabeanTable());
            this.f56104g.lastClickPageAD().g(showViewDataBean.getId() + "");
            this.f56104g.isShowSplash().g(Boolean.valueOf(E()));
        }
        X(new com.papa.sim.statistic.f(appBeanMain.getCrc_link_type_val(), "spreadButton", appBeanMain.getJump_id() + "", appBeanMain.getTitle() + ""), true);
        String str = showViewDataBean.getStrategy_id() + "_" + appBeanMain.getTitle() + "_" + appBeanMain.getJump_id();
        com.papa.sim.statistic.t.l(this).R1(Event.onclickScreenAds, new Ext().setNodeId(str).setReMarks(str));
        com.papa.sim.statistic.t.l(this).R1(Event.expHomeTrigTab, new Ext().setRecPosition(recPosition).setGameId(appBeanMain.getCrc_link_type_val()).setNodeId(str).setReMarks(str));
        appBeanMain.setTag_show(2);
        t6.i0.o().m(showViewDataBean.getShowVieDatabeanTable());
        this.F = true;
        this.f56104g.isShowSplash().g(Boolean.valueOf(E()));
        d0(intentDataBean);
    }

    private void T() {
        if (this.f56113p != null) {
            com.nineoldandroids.animation.q qVar = this.Q;
            if (qVar != null) {
                qVar.Z();
            }
            if (this.Q == null) {
                this.R = getResources().getDimension(R.dimen.wdp146);
                float dimension = getResources().getDimension(R.dimen.wdp78);
                this.S = dimension;
                this.f56113p.setPivotX((dimension * 4.0f) / 5.0f);
                this.f56113p.setPivotY((this.R * 2.0f) / 5.0f);
                com.nineoldandroids.animation.q qVar2 = new com.nineoldandroids.animation.q();
                this.Q = qVar2;
                qVar2.f0(0.0f, 30.0f, 0.0f, 45.0f, 0.0f);
                this.Q.j0(-1);
                this.Q.k0(1);
                this.Q.m(new AccelerateInterpolator());
                l lVar = new l();
                this.Q.o(this.f56113p);
                this.Q.D(lVar);
                this.Q.l(1000L);
                this.Q.r();
            }
        }
    }

    private void U() {
        if (this.f56112o != null) {
            com.nineoldandroids.animation.q qVar = this.Q;
            if (qVar != null) {
                qVar.Z();
            }
            if (this.Q == null) {
                this.R = getResources().getDimension(R.dimen.wdp166);
                com.nineoldandroids.animation.q qVar2 = new com.nineoldandroids.animation.q();
                this.Q = qVar2;
                qVar2.f0(this.R, 0.0f);
                this.Q.j0(-1);
                this.Q.k0(1);
                this.Q.m(new DecelerateInterpolator());
                n nVar = new n();
                this.Q.o(this.f56112o);
                this.Q.D(nVar);
                this.Q.l(1500L);
                this.Q.r();
            }
        }
    }

    private void V(String sourceUrl, ShowViewDataBean showViewDataBean, SplashIntentBean appBeanMain) {
        String pic_remote;
        SimpleDraweeView simpleDraweeView = new SimpleDraweeView(this);
        String pic_remote_local = appBeanMain.getPic_remote_local();
        if (com.join.mgps.Util.t2.i(pic_remote_local)) {
            File file = new File(pic_remote_local);
            pic_remote = file.exists() ? com.join.android.app.common.utils.l.H(file).toString() : appBeanMain.getPic_remote();
        } else {
            pic_remote = appBeanMain.getPic_remote();
        }
        if (com.join.mgps.Util.t2.i(pic_remote)) {
            com.join.android.app.common.utils.l.e(simpleDraweeView, R.drawable.alph, pic_remote, com.facebook.drawee.drawable.s.c.f27284a);
        }
        simpleDraweeView.setLayoutParams(new FrameLayout.LayoutParams(-1, -1));
        this.f56100c.setThumbImageView(simpleDraweeView);
        this.f56100c.setUp(sourceUrl, true, " ");
        this.f56100c.setVideoAllCallBack(new q(showViewDataBean, appBeanMain));
        this.f56100c.setMute(true);
        this.E.postDelayed(new a(), 200L);
    }

    private void W(ShowViewDataBean showViewDataBean) {
        this.E.post(new o(showViewDataBean));
    }

    private void X(com.papa.sim.statistic.f eventPointZB, boolean isclick) {
        eventPointZB.j(AccountUtil_.getInstance_(this).getUid());
        com.papa.sim.statistic.t.l(this).w(eventPointZB, isclick);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void b0() {
        String strD = com.papa.sim.statistic.pref.b.k(this).d();
        if (com.join.mgps.Util.t2.i(strD)) {
            this.C = (FirstScreenAdInteractionBean) JsonMapper.getInstance().fromJson(strD, FirstScreenAdInteractionBean.class);
        }
        View viewInflate = LayoutInflater.from(this).inflate(R.layout.splash_activity_layout_b, (ViewGroup) null);
        this.f56114q = (RelativeLayout) viewInflate.findViewById(R.id.rl_opts_bottom);
        this.f56119v = (RelativeLayout) viewInflate.findViewById(R.id.rlRootView);
        FirstScreenAdInteractionBean firstScreenAdInteractionBean = this.C;
        if (firstScreenAdInteractionBean != null) {
            this.J = firstScreenAdInteractionBean.getAction();
            boolean zEquals = "shake_click".equals(this.C.getMode());
            boolean zHasSystemFeature = zEquals ? getPackageManager().hasSystemFeature("android.hardware.sensor.accelerometer") : true;
            if (zEquals && zHasSystemFeature) {
                this.f56113p = (ImageView) viewInflate.findViewById(R.id.iv_hand_shake);
                this.f56115r = (LinearLayout) viewInflate.findViewById(R.id.ll_hand_shake);
                this.f56117t = (TextView) viewInflate.findViewById(R.id.tv_hand_shake_tip);
                this.f56115r.setVisibility(0);
                if (com.join.mgps.Util.t2.i(this.C.getTips())) {
                    this.f56117t.setText(this.C.getTips());
                }
                z(this.C.getShake_conf());
                this.L = 2;
            } else if ("slide_click".equals(this.C.getMode())) {
                this.f56112o = (ImageView) viewInflate.findViewById(R.id.iv_hand_up);
                this.f56116s = (LinearLayout) viewInflate.findViewById(R.id.ll_hand_up);
                this.f56118u = (TextView) viewInflate.findViewById(R.id.tv_hand_up_tip);
                this.f56116s.setVisibility(0);
                if (com.join.mgps.Util.t2.i(this.C.getTips())) {
                    this.f56118u.setText(this.C.getTips());
                }
                this.f56119v.setOnTouchListener(new View.OnTouchListener() { // from class: com.join.mgps.activity.w9
                    @Override // android.view.View.OnTouchListener
                    public final boolean onTouch(View view, MotionEvent motionEvent) {
                        return this.f58198b.K(view, motionEvent);
                    }
                });
                A();
                this.L = 3;
            } else {
                this.f56114q.setVisibility(8);
                this.L = 1;
            }
        }
        this.f56101d = (SimpleDraweeView) viewInflate.findViewById(R.id.viewImage);
        this.f56105h = (TextView) viewInflate.findViewById(R.id.countdown);
        this.f56106i = (TextView) viewInflate.findViewById(R.id.countdownVideo);
        this.f56107j = viewInflate.findViewById(R.id.countdownLayout);
        this.f56102e = (RelativeLayout) viewInflate.findViewById(R.id.bottomImag);
        this.f56103f = (ImageView) viewInflate.findViewById(R.id.imageView24);
        this.f56100c = (EmptyControlVideoView) viewInflate.findViewById(R.id.video_player);
        this.f56099b.addView(viewInflate);
        this.f56107j.setOnClickListener(new j());
        g0();
        x();
    }

    private void f0() {
        UserPrefs userPrefs = new UserPrefs(this);
        String sspAdConfig = userPrefs.getSspAdConfig();
        int i10 = 0;
        if (com.join.mgps.Util.t2.i(sspAdConfig)) {
            try {
                JSONObject jSONObject = new JSONObject(sspAdConfig);
                if (jSONObject.has("adCount")) {
                    i10 = Integer.parseInt(jSONObject.get("adCount").toString());
                }
            } catch (Exception e10) {
                e10.printStackTrace();
            }
        }
        userPrefs.setSspAdConfig(i10 + 1);
    }

    private void s() {
        if (this.P == null) {
            this.P = new GestureDetector(this, new m());
        }
    }

    private void t(FirstScreenAdInteractionBean.ShakeConfBean shakeConfBean) {
        com.join.mgps.shake.a aVar = new com.join.mgps.shake.a(this);
        this.M = aVar;
        aVar.c(shakeConfBean);
        this.M.b(this.O);
        this.N = (Vibrator) getSystemService("vibrator");
    }

    private TTAdConfig v(String appid) {
        return new TTAdConfig.Builder().appId(appid).appName("悟饭游戏厅_android").titleBarTheme(1).allowShowNotify(true).debug(true).directDownloadNetworkType(4, 3).supportMultiProcess(false).build();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void y() {
        if (isFinishing()) {
            return;
        }
        if (!this.f56122y) {
            this.f56122y = true;
        } else {
            setResult(10001);
            finish();
        }
    }

    private void z(FirstScreenAdInteractionBean.ShakeConfBean shakeConfBean) {
        T();
        t(shakeConfBean);
    }

    public void S() {
        long jCurrentTimeMillis = System.currentTimeMillis() - this.f56121x;
        int i10 = this.f56120w;
        this.E.postDelayed(new b(), jCurrentTimeMillis > ((long) i10) ? 0L : ((long) i10) - jCurrentTimeMillis);
    }

    void Y(ShowViewDataBean showViewDataBean, SplashIntentBean appBeanMain) {
        try {
            this.T = showViewDataBean;
            this.U = appBeanMain;
            String str = showViewDataBean.getStrategy_id() + "_" + appBeanMain.getTitle() + "_" + appBeanMain.getJump_id();
            com.papa.sim.statistic.t.l(this).R1(Event.FullScreenAds, new Ext().setPosition("0").setNodeId(str).setReMarks(str));
            com.papa.sim.statistic.t.l(this).R1(Event.expHomeFunTab, new Ext().setPosition("0").setRecPosition(String.valueOf(this.L)).setGameId(appBeanMain.getCrc_link_type_val()).setNodeId(str).setReMarks(str));
            this.f56101d.setVisibility(0);
            this.f56105h.setVisibility(0);
            this.f56106i.setVisibility(8);
            this.f56103f.setVisibility(0);
            this.f56102e.setBackgroundColor(-1);
            Handler handler = this.E;
            if (handler != null) {
                handler.sendEmptyMessage(2);
            }
            X(new com.papa.sim.statistic.f(appBeanMain.getCrc_link_type_val(), "spreadButton", appBeanMain.getJump_id() + "", appBeanMain.getTitle() + ""), false);
            this.f56119v.setOnClickListener(new p(showViewDataBean, appBeanMain));
            this.f56102e.setOnClickListener(new View.OnClickListener() { // from class: com.join.mgps.activity.r9
                @Override // android.view.View.OnClickListener
                public final void onClick(View view) {
                    SplashActivity.J(view);
                }
            });
            Handler handler2 = this.E;
            if (handler2 != null) {
                handler2.sendEmptyMessageDelayed(1, 4000L);
            }
            String pic_remote_local = appBeanMain.getPic_remote_local();
            if (com.join.mgps.Util.t2.i(pic_remote_local)) {
                File file = new File(pic_remote_local);
                if (file.exists()) {
                    com.join.android.app.common.utils.l.e(this.f56101d, R.drawable.alph, com.join.android.app.common.utils.l.H(file).toString(), com.facebook.drawee.drawable.s.c.f27292i);
                    return;
                }
                String pic_remote = appBeanMain.getPic_remote();
                if (com.join.mgps.Util.t2.i(pic_remote) && pic_remote.startsWith("http")) {
                    com.join.android.app.common.utils.l.d(this.f56101d, R.drawable.alph, pic_remote);
                    return;
                } else {
                    com.join.android.app.common.utils.l.e(this.f56101d, R.drawable.alph, com.join.android.app.common.utils.l.I(pic_remote).toString(), com.facebook.drawee.drawable.s.c.f27292i);
                    return;
                }
            }
            String pic_remote2 = appBeanMain.getPic_remote();
            if (com.join.mgps.Util.t2.i(pic_remote2) && pic_remote2.startsWith("http")) {
                com.join.android.app.common.utils.l.e(this.f56101d, R.drawable.alph, pic_remote2, com.facebook.drawee.drawable.s.c.f27292i);
                return;
            }
            com.join.android.app.common.utils.l.e(this.f56101d, R.drawable.alph, com.join.android.app.common.utils.l.I("file://" + pic_remote2).toString(), com.facebook.drawee.drawable.s.c.f27292i);
        } catch (Exception e10) {
            e10.printStackTrace();
            c0();
        }
    }

    boolean Z(ShowViewDataBean dataBean) {
        try {
            if (!dataBean.getIs_force().equals("1")) {
                Iterator<SplashIntentBean> it2 = dataBean.getJump_info().iterator();
                while (it2.hasNext()) {
                    if (it2.next().getTag_show() != 2) {
                        return true;
                    }
                }
                return false;
            }
            dataBean.getJump_info().get(0).getPic_remote();
            return !this.f56104g.lastClickPageAD().d().equals(dataBean.getId() + "");
        } catch (Exception e10) {
            e10.printStackTrace();
            return false;
        }
    }

    void a0(final ShowViewDataBean showViewDataBean, final SplashIntentBean appBeanMain) {
        try {
            String str = showViewDataBean.getStrategy_id() + "_" + appBeanMain.getTitle() + "_" + appBeanMain.getJump_id();
            com.papa.sim.statistic.t.l(this).R1(Event.FullScreenAds, new Ext().setPosition("1").setNodeId(str).setReMarks(str));
            com.papa.sim.statistic.t.l(this).R1(Event.expHomeFunTab, new Ext().setPosition("1").setRecPosition(String.valueOf(this.L)).setGameId(appBeanMain.getCrc_link_type_val()).setNodeId(str).setReMarks(str));
            com.papa.gsyvideoplayer.utils.f.l(4);
            this.f56105h.setVisibility(8);
            this.f56106i.setVisibility(0);
            this.f56103f.setVisibility(8);
            this.f56102e.setBackgroundColor(0);
            this.f56100c.setVisibility(0);
            X(new com.papa.sim.statistic.f(appBeanMain.getCrc_link_type_val(), "spreadButton", appBeanMain.getJump_id() + "", appBeanMain.getTitle() + ""), false);
            String vedio_url_local = appBeanMain.getVedio_url_local();
            if (!com.join.mgps.Util.t2.i(vedio_url_local)) {
                String vedio_url = appBeanMain.getVedio_url();
                if (com.join.mgps.Util.t2.i(vedio_url) && (vedio_url.startsWith("http") || vedio_url.startsWith("https"))) {
                    V(vedio_url, showViewDataBean, appBeanMain);
                    return;
                }
                V(com.join.android.app.common.utils.l.I("file://" + vedio_url).toString(), showViewDataBean, appBeanMain);
                return;
            }
            File file = new File(vedio_url_local);
            if (file.exists()) {
                if (this.f56100c != null) {
                    V(com.join.android.app.common.utils.l.H(file).toString(), showViewDataBean, appBeanMain);
                    return;
                }
                return;
            }
            String vedio_url2 = appBeanMain.getVedio_url();
            if (com.join.mgps.Util.t2.i(vedio_url2) && (vedio_url2.startsWith("http") || vedio_url2.startsWith("https"))) {
                V(vedio_url2, showViewDataBean, appBeanMain);
            } else {
                V(com.join.android.app.common.utils.l.I(vedio_url2).toString(), showViewDataBean, appBeanMain);
            }
        } catch (Exception e10) {
            e10.printStackTrace();
            c0();
        }
    }

    void c0() {
        setResult(10001);
        finish();
    }

    /* JADX WARN: Can't fix incorrect switch cases order, some code will duplicate */
    /* JADX WARN: Code duplicated, block: B:23:0x0062  */
    void d0(IntentDateBean intentDateBean) {
        boolean z10;
        intentDateBean.setFrom(MediationConstant.RIT_TYPE_SPLASH);
        if (intentDateBean.getLink_type() != 3 || intentDateBean.getJump_type() != 1) {
            ExtBean extBean = new ExtBean();
            extBean.set_from_type(this.K == 1 ? 13201 : 157);
            if (this.C != null && intentDateBean.getLink_type() == 1) {
                DownloadTask downloadTaskG = q5.f.M().G(intentDateBean.getCrc_link_type_val());
                if (downloadTaskG == null || downloadTaskG.getStatus() != 11) {
                    z10 = true;
                } else {
                    this.C.setAction("detail_dl");
                    z10 = false;
                }
                String action = this.C.getAction();
                action.hashCode();
                switch (action) {
                    case "detail_dl":
                        intentDateBean.setObject(Boolean.valueOf(z10));
                        intentDateBean.setLink_type(1);
                        extBean.set_from_type(155);
                        break;
                    case "tab_dl":
                        intentDateBean.setObject(Boolean.TRUE);
                        intentDateBean.setExt1("2");
                        intentDateBean.setLink_type(3);
                        intentDateBean.setJump_type(1);
                        extBean.setFrom("154");
                        break;
                    case "main_dl":
                        intentDateBean.setObject(Boolean.TRUE);
                        intentDateBean.setLink_type(3);
                        intentDateBean.setJump_type(1);
                        extBean.setFrom("156");
                        break;
                }
            }
            intentDateBean.setExtBean(extBean);
            IntentUtil.getInstance().intentActivity(this, intentDateBean);
        }
        setResult(10001);
        finish();
    }

    @UiThread(delay = 100)
    void e0() {
        finish();
    }

    @Deprecated
    void g0() {
        if (WifiUtils.getInstance(getApplicationContext()).isWifiEnable()) {
            this.f56104g.isWifiConnectedBefore().g(Boolean.TRUE);
        } else {
            this.f56104g.isWifiConnectedBefore().g(Boolean.FALSE);
        }
    }

    @Override // android.app.Activity
    public void onBackPressed() {
        EmptyControlVideoView emptyControlVideoView = this.f56100c;
        if (emptyControlVideoView != null) {
            emptyControlVideoView.setVideoAllCallBack(null);
        }
        super.onBackPressed();
    }

    @Override // android.app.Activity
    public void onCreate(Bundle savedInstanceState) {
        super.onCreate(savedInstanceState);
        if (!this.f56104g.firstNewSplashV2().d().booleanValue() && (getIntent().getFlags() & 4194304) == 0) {
            com.join.mgps.Util.p2.v(this);
            return;
        }
        this.f56104g.firstNewSplashV2().g(Boolean.FALSE);
        setResult(10001);
        finish();
    }

    @Override // android.app.Activity
    protected void onDestroy() {
        EmptyControlVideoView emptyControlVideoView = this.f56100c;
        if (emptyControlVideoView != null) {
            emptyControlVideoView.release();
        }
        Handler handler = this.E;
        if (handler != null) {
            handler.removeMessages(2);
            this.E.removeMessages(4);
        }
        super.onDestroy();
    }

    @Override // android.app.Activity, android.view.KeyEvent.Callback
    public boolean onKeyDown(int keyCode, KeyEvent event) {
        if (keyCode == 4 || keyCode == 3) {
            return true;
        }
        return super.onKeyDown(keyCode, event);
    }

    @Override // android.app.Activity
    protected void onPause() {
        EmptyControlVideoView emptyControlVideoView;
        super.onPause();
        if (this.G && (emptyControlVideoView = this.f56100c) != null) {
            emptyControlVideoView.onVideoPause();
        }
        this.G = true;
        this.f56122y = false;
        com.join.mgps.shake.a aVar = this.M;
        if (aVar != null) {
            aVar.e();
        }
    }

    @Override // android.app.Activity
    protected void onResume() {
        EmptyControlVideoView emptyControlVideoView;
        super.onResume();
        if (this.G && (emptyControlVideoView = this.f56100c) != null) {
            emptyControlVideoView.onVideoResume(false);
        }
        if (this.f56122y) {
            Q();
        }
        this.f56122y = true;
        com.join.mgps.shake.a aVar = this.M;
        if (aVar != null) {
            aVar.d();
        }
    }

    @Override // android.app.Activity
    protected void onStop() {
        super.onStop();
        com.join.mgps.shake.a aVar = this.M;
        if (aVar != null) {
            aVar.e();
        }
    }

    @AfterViews
    public void u() {
        try {
            if (this.f56109l != null) {
                if (new PrefDef_(this).sdkInit().d().booleanValue()) {
                    S();
                }
                switch (this.f56109l.getSdk_type()) {
                    case 7:
                        this.f56111n.setVisibility(8);
                        com.join.mgps.ad.adapter.f.d(getApplicationContext(), this.f56109l.getSdk_key(), new e6.a() { // from class: com.join.mgps.activity.u9
                            @Override // e6.a
                            public final void a() {
                                this.f58163a.H();
                            }
                        });
                        break;
                    case 8:
                        com.join.mgps.ad.adapter.a.a(getApplicationContext(), this.f56109l.getSdk_key(), new e6.a() { // from class: com.join.mgps.activity.s9
                            @Override // e6.a
                            public final void a() {
                                this.f58099a.F();
                            }
                        });
                        this.f56111n.setVisibility(8);
                        break;
                    case 9:
                        com.join.mgps.ad.adapter.d.a(getApplicationContext(), this.f56109l.getSdk_key(), new e6.a() { // from class: com.join.mgps.activity.t9
                            @Override // e6.a
                            public final void a() {
                                this.f58147a.G();
                            }
                        });
                        this.f56111n.setVisibility(8);
                        break;
                    case 10:
                        com.join.mgps.ad.adapter.e.a(getApplicationContext(), this.f56109l.getSdk_key(), new e6.a() { // from class: com.join.mgps.activity.v9
                            @Override // e6.a
                            public final void a() {
                                this.f58176a.I();
                            }
                        });
                        this.f56111n.setVisibility(8);
                        break;
                }
            } else {
                b0();
            }
            com.papa.sim.statistic.t.l(this).O2(0, AccountUtil_.getInstance_(this).getUid());
            this.f56104g.plugHasUpdate().g(Boolean.FALSE);
            CommonService.W = false;
        } catch (Exception e10) {
            e10.printStackTrace();
        }
    }

    void w() {
        this.F = true;
        c0();
    }

    /* JADX WARN: Code duplicated, block: B:51:0x019b  */
    void x() {
        ShowViewDataBean showViewDataBean;
        SplashIntentBean splashIntentBean;
        boolean z10;
        long j10;
        try {
            int i10 = 2;
            com.join.mgps.Util.h1.e("Aspect", getClass().getSimpleName(), "getImageBitmap", "11", "before");
            List<ShowViewDataBeanTable> listN = t6.i0.o().n();
            if (listN != null && !listN.isEmpty()) {
                long jCurrentTimeMillis = System.currentTimeMillis();
                String strE = this.f56104g.lastShowSplashImage().e("");
                int i11 = 0;
                while (true) {
                    if (i11 < listN.size()) {
                        ShowViewDataBean showVieDatabean = listN.get(i11).getShowVieDatabean();
                        if (showVieDatabean.getTag_show() != i10 && D(showVieDatabean.getBegin_times(), showVieDatabean.getEnd_times(), jCurrentTimeMillis)) {
                            if (!TextUtils.isEmpty(showVieDatabean.getIs_force()) && showVieDatabean.getIs_force().equals("1")) {
                                showViewDataBean = showVieDatabean;
                                splashIntentBean = showVieDatabean.getJump_info().get(0);
                                z10 = true;
                                break;
                            }
                            if (showVieDatabean.getJump_info() == null || showVieDatabean.getJump_info().isEmpty()) {
                                j10 = jCurrentTimeMillis;
                            } else {
                                ArrayList arrayList = new ArrayList();
                                com.join.mgps.Util.h1.e("Aspect", getClass().getSimpleName(), "getImageBitmap", "222 - bbb", "before");
                                Iterator<SplashIntentBean> it2 = showVieDatabean.getJump_info().iterator();
                                SplashIntentBean splashIntentBean2 = null;
                                while (it2.hasNext()) {
                                    ShowViewDataBean showViewDataBean2 = showVieDatabean;
                                    SplashIntentBean next = it2.next();
                                    Iterator<SplashIntentBean> it3 = it2;
                                    long j11 = jCurrentTimeMillis;
                                    if (next.getTag_show() != 2) {
                                        if (TextUtils.equals(strE, next.getVedio_url_local()) || TextUtils.equals(strE, next.getPic_remote_local())) {
                                            splashIntentBean2 = next;
                                        } else {
                                            arrayList.add(next);
                                        }
                                    }
                                    showVieDatabean = showViewDataBean2;
                                    it2 = it3;
                                    jCurrentTimeMillis = j11;
                                }
                                ShowViewDataBean showViewDataBean3 = showVieDatabean;
                                j10 = jCurrentTimeMillis;
                                if (arrayList.isEmpty() && splashIntentBean2 != null) {
                                    arrayList.add(splashIntentBean2);
                                }
                                com.join.mgps.Util.h1.e("Aspect", getClass().getSimpleName(), "getImageBitmap", "222 - ccc", "before");
                                if (!arrayList.isEmpty()) {
                                    int iNextInt = new Random().nextInt(arrayList.size());
                                    SplashIntentBean splashIntentBean3 = (SplashIntentBean) arrayList.get(iNextInt);
                                    splashIntentBean3.setShowPosition(iNextInt + 1);
                                    if (TextUtils.isEmpty(splashIntentBean3.getVedio_url_local())) {
                                        this.f56104g.lastShowSplashImage().g(splashIntentBean3.getPic_remote_local());
                                    } else {
                                        this.f56104g.lastShowSplashImage().g(splashIntentBean3.getVedio_url_local());
                                    }
                                    splashIntentBean = splashIntentBean3;
                                    showViewDataBean = showViewDataBean3;
                                }
                            }
                        } else {
                            j10 = jCurrentTimeMillis;
                        }
                        i11++;
                        listN = listN;
                        jCurrentTimeMillis = j10;
                        i10 = 2;
                    } else {
                        showViewDataBean = null;
                        splashIntentBean = null;
                    }
                    z10 = false;
                    break;
                }
                com.join.mgps.Util.h1.e("Aspect", getClass().getSimpleName(), "getImageBitmap", "333", "before");
                if (z10) {
                    if (splashIntentBean == null) {
                        return;
                    }
                    if (TextUtils.isEmpty(splashIntentBean.getVedio_url())) {
                        com.join.mgps.Util.h1.e("Aspect", getClass().getSimpleName(), "getImageBitmap", "333 - bbb", "before");
                        Y(showViewDataBean, splashIntentBean);
                        com.join.mgps.Util.h1.e("Aspect", getClass().getSimpleName(), "getImageBitmap", "333 - bbb", "after");
                    } else {
                        com.join.mgps.Util.h1.e("Aspect", getClass().getSimpleName(), "getImageBitmap", "333 - aaaa", "before");
                        a0(showViewDataBean, splashIntentBean);
                        com.join.mgps.Util.h1.e("Aspect", getClass().getSimpleName(), "getImageBitmap", "333 - aaaa", "after");
                    }
                    if (showViewDataBean.getTag_show() == 0) {
                        showViewDataBean.setTag_show(2);
                        W(showViewDataBean);
                        this.f56104g.isShowSplash().g(Boolean.valueOf(E()));
                    } else if (showViewDataBean.getTag_show() == 1) {
                        W(showViewDataBean);
                    }
                } else if (showViewDataBean != null) {
                    if (TextUtils.isEmpty(splashIntentBean.getVedio_url())) {
                        com.join.mgps.Util.h1.e("Aspect", getClass().getSimpleName(), "getImageBitmap", "333 - ddd", "before");
                        Y(showViewDataBean, splashIntentBean);
                        com.join.mgps.Util.h1.e("Aspect", getClass().getSimpleName(), "getImageBitmap", "333 - ddd", "after");
                    } else {
                        com.join.mgps.Util.h1.e("Aspect", getClass().getSimpleName(), "getImageBitmap", "333 - ccc", "before");
                        a0(showViewDataBean, splashIntentBean);
                        com.join.mgps.Util.h1.e("Aspect", getClass().getSimpleName(), "getImageBitmap", "333 - ccc", "after");
                    }
                    splashIntentBean.setShow_time(System.currentTimeMillis());
                    W(showViewDataBean);
                } else {
                    finish();
                }
                com.join.mgps.Util.h1.e("Aspect", getClass().getSimpleName(), "getImageBitmap", "444", "before");
                return;
            }
            finish();
        } catch (Exception e10) {
            e10.printStackTrace();
            com.join.mgps.Util.h1.e("Aspect", getClass().getSimpleName(), "getImageBitmap", "555", e10.toString(), "before");
        }
    }
}
