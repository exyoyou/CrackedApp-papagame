package com.sigmob.sdk.splash;

import android.app.Activity;
import android.content.Context;
import android.graphics.Color;
import android.view.MotionEvent;
import android.view.View;
import android.view.ViewTreeObserver;
import android.widget.RelativeLayout;
import android.widget.TextView;
import com.byazt.bv.BaseConstants;
import com.czhj.sdk.common.utils.Dips;
import com.czhj.sdk.common.utils.FileUtil;
import com.czhj.sdk.common.utils.Preconditions;
import com.czhj.sdk.logger.SigmobLog;
import com.czhj.wire.Wire;
import com.sigmob.sdk.base.common.BaseBroadcastReceiver;
import com.sigmob.sdk.base.common.ad;
import com.sigmob.sdk.base.common.ag;
import com.sigmob.sdk.base.common.al;
import com.sigmob.sdk.base.common.am;
import com.sigmob.sdk.base.common.an;
import com.sigmob.sdk.base.models.BaseAdUnit;
import com.sigmob.sdk.base.models.ClickCommon;
import com.sigmob.sdk.base.models.IntentActions;
import com.sigmob.sdk.base.models.SensorEntity;
import com.sigmob.sdk.base.models.SigMacroCommon;
import com.sigmob.sdk.base.models.rtb.AndroidMarket;
import com.sigmob.sdk.base.mta.PointCategory;
import com.sigmob.sdk.base.mta.PointEntitySigmob;
import com.sigmob.sdk.base.views.ab;
import com.sigmob.sdk.base.views.ac;
import com.sigmob.sdk.base.views.ae;
import com.sigmob.sdk.base.views.ai;
import com.sigmob.sdk.base.views.aj;
import com.sigmob.sdk.base.views.ap;
import com.sigmob.windad.WindAdError;
import java.util.HashMap;
import java.util.Map;

/* JADX INFO: loaded from: classes3.dex */
public final class i extends RelativeLayout {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public static final String f81712a = "i";

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private static float f81713b = 25.0f;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    private final RelativeLayout f81714c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    private b f81715d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    private final Context f81716e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    private BaseAdUnit f81717f;

    /* JADX INFO: renamed from: g, reason: collision with root package name */
    private com.sigmob.sdk.splash.a f81718g;

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    private RelativeLayout f81719h;

    /* JADX INFO: renamed from: i, reason: collision with root package name */
    private View.OnTouchListener f81720i;

    /* JADX INFO: renamed from: j, reason: collision with root package name */
    private volatile boolean f81721j;

    /* JADX INFO: renamed from: k, reason: collision with root package name */
    private volatile boolean f81722k;

    /* JADX INFO: renamed from: l, reason: collision with root package name */
    private boolean f81723l;

    /* JADX INFO: renamed from: m, reason: collision with root package name */
    private boolean f81724m;

    /* JADX INFO: renamed from: n, reason: collision with root package name */
    private ab f81725n;

    /* JADX INFO: renamed from: o, reason: collision with root package name */
    private al.a f81726o;

    /* JADX INFO: renamed from: p, reason: collision with root package name */
    private com.sigmob.sdk.base.views.r f81727p;

    /* JADX INFO: renamed from: q, reason: collision with root package name */
    private boolean f81728q;

    /* JADX INFO: renamed from: r, reason: collision with root package name */
    private float f81729r;

    /* JADX INFO: renamed from: s, reason: collision with root package name */
    private a f81730s;

    /* JADX INFO: renamed from: com.sigmob.sdk.splash.i$2, reason: invalid class name */
    class AnonymousClass2 implements al.c {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        final /* synthetic */ ap f81737a;

        AnonymousClass2(final ap val$actionView) {
            this.f81737a = val$actionView;
        }

        /* JADX INFO: Access modifiers changed from: private */
        public /* synthetic */ void b() {
            i.this.g();
        }

        @Override // com.sigmob.sdk.base.common.al.c
        public void a() {
        }

        @Override // com.sigmob.sdk.base.common.al.c
        public void a(float progress) {
        }

        @Override // com.sigmob.sdk.base.common.al.c
        public void a(Map<String, Number> info) {
            if (info == null || i.this.f81717f == null || i.this.f81721j) {
                return;
            }
            i.this.f81721j = true;
            Number number = info.get("turn_x");
            Number number2 = info.get("turn_y");
            Number number3 = info.get("turn_z");
            Number number4 = info.get("turn_time");
            ClickCommon clickCommon = i.this.f81717f.getClickCommon();
            if (number != null) {
                clickCommon.turn_x = String.valueOf(number.intValue());
            }
            if (number2 != null) {
                clickCommon.turn_y = String.valueOf(number2.intValue());
            }
            if (number3 != null) {
                clickCommon.turn_z = String.valueOf(number3.intValue());
            }
            clickCommon.turn_time = String.valueOf(number4);
            clickCommon.sld = "5";
            clickCommon.click_area = ClickCommon.CLICK_AREA_COMPONENT;
            clickCommon.click_scene = "ad";
            this.f81737a.postDelayed(new Runnable() { // from class: com.sigmob.sdk.splash.a0
                @Override // java.lang.Runnable
                public final void run() {
                    this.f81679b.b();
                }
            }, 400L);
        }
    }

    /* JADX INFO: renamed from: com.sigmob.sdk.splash.i$3, reason: invalid class name */
    static /* synthetic */ class AnonymousClass3 {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        static final /* synthetic */ int[] f81739a;

        static {
            int[] iArr = new int[am.values().length];
            f81739a = iArr;
            try {
                iArr[am.FOLLOW_PACKAGE_NAME.ordinal()] = 1;
            } catch (NoSuchFieldError unused) {
            }
            try {
                f81739a[am.IGNORE_ABOUT_SCHEME.ordinal()] = 2;
            } catch (NoSuchFieldError unused2) {
            }
            try {
                f81739a[am.MINI_PROGRAM.ordinal()] = 3;
            } catch (NoSuchFieldError unused3) {
            }
            try {
                f81739a[am.FOLLOW_DEEP_LINK.ordinal()] = 4;
            } catch (NoSuchFieldError unused4) {
            }
            try {
                f81739a[am.MARKET_SCHEME.ordinal()] = 5;
            } catch (NoSuchFieldError unused5) {
            }
            try {
                f81739a[am.DOWNLOAD_APK.ordinal()] = 6;
            } catch (NoSuchFieldError unused6) {
            }
            try {
                f81739a[am.OPEN_WITH_BROWSER.ordinal()] = 7;
            } catch (NoSuchFieldError unused7) {
            }
            try {
                f81739a[am.NOOP.ordinal()] = 8;
            } catch (NoSuchFieldError unused8) {
            }
        }
    }

    /* JADX INFO: renamed from: com.sigmob.sdk.splash.i$5, reason: invalid class name */
    class AnonymousClass5 implements an.b {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        final /* synthetic */ BaseAdUnit f81742a;

        AnonymousClass5(final BaseAdUnit val$adUnit) {
            this.f81742a = val$adUnit;
        }

        @Override // com.sigmob.sdk.base.common.an.b
        public void a(final String url, am urlAction) {
            SigmobLog.i("urlHandlingSucceeded: " + urlAction.name() + " url: " + url);
            if (i.this.f81717f == null) {
                SigmobLog.e("adUnit is null");
                return;
            }
            ClickCommon clickCommon = i.this.f81717f.getClickCommon();
            clickCommon.is_final_click = true;
            if (!this.f81742a.getAd().forbiden_parse_landingpage.booleanValue()) {
                ad.a(this.f81742a, urlAction.name(), url);
            }
            i.this.h();
            int i10 = AnonymousClass3.f81739a[urlAction.ordinal()];
            if (i10 == 3) {
                String str = i.f81712a;
                StringBuilder sb2 = new StringBuilder();
                sb2.append("打开小程序成功：");
                sb2.append(urlAction);
                com.sigmob.sdk.manager.b.b(this.f81742a, com.sigmob.sdk.base.common.a.G, url);
            } else if (i10 == 5) {
                AndroidMarket androidMarket = i.this.f81717f.getAndroidMarket();
                if (androidMarket != null) {
                    ad.a(PointCategory.APK_CLICK, ((Integer) Wire.get(androidMarket.type, 0)).intValue() == 0 ? BaseConstants.SCHEME_MARKET : "mimarket", i.this.f81717f, (ad.a) null);
                    if (com.sigmob.sdk.base.utils.t.b(androidMarket.app_package_name)) {
                        try {
                            FileUtil.writeToCache(i.this.f81717f, com.sigmob.sdk.base.utils.o.a((Object) androidMarket.app_package_name).getAbsolutePath());
                        } catch (Throwable th) {
                            SigmobLog.e("write ad info with package error " + th.getMessage());
                        }
                    }
                }
                ad.a(PointCategory.OPEN_MARKET, (String) null, i.this.f81717f, new ad.a() { // from class: com.sigmob.sdk.splash.b0
                    @Override // com.sigmob.sdk.base.common.ad.a
                    public final void onAddExtra(Object obj) {
                        this.f81681a.b(url, obj);
                    }
                });
            } else if (i10 == 6) {
                if (i.this.f81718g.j()) {
                    clickCommon.is_final_click = false;
                } else {
                    i.this.a(true);
                    i.this.f81718g.f(url);
                    i.this.f81722k = true;
                }
            }
            ag sessionManager = this.f81742a.getSessionManager();
            if (sessionManager == null) {
                return;
            }
            sessionManager.a("click", 0);
        }

        @Override // com.sigmob.sdk.base.common.an.b
        public void b(final String url, am urlAction) {
            SigmobLog.i("urlHandlingFailed: " + urlAction.name() + " url: " + url);
            if (i.this.f81717f == null) {
                return;
            }
            ClickCommon clickCommon = i.this.f81717f.getClickCommon();
            clickCommon.is_final_click = true;
            int i10 = AnonymousClass3.f81739a[urlAction.ordinal()];
            if (i10 == 3 || i10 == 4) {
                String str = i.f81712a;
                StringBuilder sb2 = new StringBuilder();
                sb2.append("打开小程序失败：");
                sb2.append(urlAction);
                com.sigmob.sdk.manager.b.b(this.f81742a, com.sigmob.sdk.base.common.a.H, url);
                return;
            }
            if (i10 == 5) {
                ad.a(PointCategory.OPEN_MARKET_FAILED, (String) null, i.this.f81717f, new ad.a() { // from class: com.sigmob.sdk.splash.c0
                    @Override // com.sigmob.sdk.base.common.ad.a
                    public final void onAddExtra(Object obj) {
                        this.f81687a.a(url, obj);
                    }
                });
                return;
            }
            if (i10 != 8) {
                return;
            }
            if (!this.f81742a.getAd().forbiden_parse_landingpage.booleanValue()) {
                ad.a(this.f81742a, urlAction.name(), url);
            }
            clickCommon.is_final_click = true;
            ag sessionManager = this.f81742a.getSessionManager();
            if (sessionManager != null) {
                sessionManager.a("click", 0);
            }
        }

        /* JADX INFO: Access modifiers changed from: private */
        public /* synthetic */ void a(String str, Object obj) {
            if (obj instanceof PointEntitySigmob) {
                PointEntitySigmob pointEntitySigmob = (PointEntitySigmob) obj;
                pointEntitySigmob.setFinal_url(str);
                Map<String, String> options = pointEntitySigmob.getOptions();
                options.put("app_package_name", i.this.f81717f.getAndroidMarket().app_package_name);
                options.put("store_package_name", i.this.f81717f.getAndroidMarket().appstore_package_name);
                pointEntitySigmob.setOptions(options);
            }
        }

        /* JADX INFO: Access modifiers changed from: private */
        public /* synthetic */ void b(String str, Object obj) {
            if (obj instanceof PointEntitySigmob) {
                PointEntitySigmob pointEntitySigmob = (PointEntitySigmob) obj;
                pointEntitySigmob.setFinal_url(str);
                Map<String, String> options = pointEntitySigmob.getOptions();
                options.put("app_package_name", i.this.f81717f.getAndroidMarket().app_package_name);
                options.put("store_package_name", i.this.f81717f.getAndroidMarket().appstore_package_name);
                pointEntitySigmob.setOptions(options);
            }
        }
    }

    /* JADX INFO: renamed from: com.sigmob.sdk.splash.i$6, reason: invalid class name */
    class AnonymousClass6 implements al.c {
        AnonymousClass6() {
        }

        /* JADX INFO: Access modifiers changed from: private */
        public /* synthetic */ void b() {
            i.this.g();
        }

        @Override // com.sigmob.sdk.base.common.al.c
        public void a() {
        }

        @Override // com.sigmob.sdk.base.common.al.c
        public void a(float progress) {
        }

        @Override // com.sigmob.sdk.base.common.al.c
        public void a(Map<String, Number> info) {
            if (info == null || i.this.f81717f == null || i.this.f81721j) {
                return;
            }
            i.this.f81721j = true;
            Number number = info.get("x_max_acc");
            Number number2 = info.get("y_max_acc");
            Number number3 = info.get("z_max_acc");
            ClickCommon clickCommon = i.this.f81717f.getClickCommon();
            clickCommon.sld = "2";
            clickCommon.click_area = ClickCommon.CLICK_AREA_COMPONENT;
            clickCommon.click_scene = "ad";
            if (number != null) {
                clickCommon.x_max_acc = String.valueOf(number.intValue());
            }
            if (number2 != null) {
                clickCommon.y_max_acc = String.valueOf(number2.intValue());
            }
            if (number3 != null) {
                clickCommon.z_max_acc = String.valueOf(number3.intValue());
            }
            i.this.f81727p.postDelayed(new Runnable() { // from class: com.sigmob.sdk.splash.d0
                @Override // java.lang.Runnable
                public final void run() {
                    this.f81691b.b();
                }
            }, 400L);
        }
    }

    /* JADX INFO: renamed from: com.sigmob.sdk.splash.i$7, reason: invalid class name */
    class AnonymousClass7 implements al.c {
        AnonymousClass7() {
        }

        /* JADX INFO: Access modifiers changed from: private */
        public /* synthetic */ void b() {
            i.this.g();
        }

        @Override // com.sigmob.sdk.base.common.al.c
        public void a() {
        }

        @Override // com.sigmob.sdk.base.common.al.c
        public void a(float progress) {
            if (i.this.f81727p instanceof com.sigmob.sdk.base.views.ag) {
                ((com.sigmob.sdk.base.views.ag) i.this.f81727p).a(progress);
            }
        }

        @Override // com.sigmob.sdk.base.common.al.c
        public void a(Map<String, Number> info) {
            if (info == null || i.this.f81717f == null || i.this.f81721j) {
                return;
            }
            i.this.f81721j = true;
            Number number = info.get("turn_x");
            Number number2 = info.get("turn_y");
            Number number3 = info.get("turn_z");
            Number number4 = info.get("turn_time");
            ClickCommon clickCommon = i.this.f81717f.getClickCommon();
            if (number != null) {
                clickCommon.turn_x = String.valueOf(number.intValue());
            }
            if (number2 != null) {
                clickCommon.turn_y = String.valueOf(number2.intValue());
            }
            if (number3 != null) {
                clickCommon.turn_z = String.valueOf(number3.intValue());
            }
            clickCommon.turn_time = String.valueOf(number4);
            clickCommon.sld = "5";
            clickCommon.click_area = ClickCommon.CLICK_AREA_COMPONENT;
            clickCommon.click_scene = "ad";
            i.this.f81727p.postDelayed(new Runnable() { // from class: com.sigmob.sdk.splash.e0
                @Override // java.lang.Runnable
                public final void run() {
                    this.f81692b.b();
                }
            }, 400L);
        }
    }

    public interface a {
        void onWindowVisibilityChanged(int visibility);
    }

    public i(Context context) {
        super(context);
        Context applicationContext = context.getApplicationContext();
        this.f81716e = applicationContext;
        RelativeLayout relativeLayout = new RelativeLayout(applicationContext);
        this.f81714c = relativeLayout;
        addView(relativeLayout, new RelativeLayout.LayoutParams(-1, -1));
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void g() {
        SigmobLog.d("handleClick");
        if (this.f81717f == null) {
            SigmobLog.e("adUnit is null");
            return;
        }
        this.f81721j = true;
        if (com.sigmob.sdk.b.i() == null) {
            com.sigmob.sdk.b.a(com.sigmob.sdk.base.utils.x.c(this));
        }
        a(this.f81717f);
    }

    private void o() {
        Context context = getContext();
        com.sigmob.sdk.base.views.w wVar = new com.sigmob.sdk.base.views.w(context);
        wVar.setButtonColor(this.f81717f.getButtonColor());
        wVar.a(this.f81717f.getDesc(), null);
        int iDipsToIntPixels = Dips.dipsToIntPixels(100.0f, context);
        wVar.setOnTouchListener(this.f81720i);
        int iDipsToIntPixels2 = Dips.dipsToIntPixels(100.0f, context);
        RelativeLayout.LayoutParams layoutParams = new RelativeLayout.LayoutParams(-1, iDipsToIntPixels);
        layoutParams.addRule(14);
        layoutParams.addRule(12);
        layoutParams.setMargins(0, 0, 0, iDipsToIntPixels2);
        addView(wVar, layoutParams);
    }

    private void p() {
        Context context = getContext();
        ac acVar = new ac(context);
        String title = this.f81717f.getTitle();
        if (com.sigmob.sdk.base.utils.t.a((CharSequence) title)) {
            title = "点击查看详情";
        }
        acVar.a(title, this.f81717f.getDesc());
        int iDipsToIntPixels = Dips.dipsToIntPixels(100.0f, context);
        int iDipsToIntPixels2 = Dips.dipsToIntPixels(40.0f, context);
        acVar.setOnTouchListener(this.f81720i);
        int iDipsToIntPixels3 = Dips.dipsToIntPixels(100.0f, context);
        RelativeLayout.LayoutParams layoutParams = new RelativeLayout.LayoutParams(-1, iDipsToIntPixels);
        layoutParams.addRule(14);
        layoutParams.addRule(12);
        layoutParams.setMargins(iDipsToIntPixels2, 0, iDipsToIntPixels2, iDipsToIntPixels3);
        addView(acVar, layoutParams);
    }

    private void q() {
        Context context = getContext();
        View hVar = new com.sigmob.sdk.base.views.h(context);
        int iDipsToIntPixels = Dips.dipsToIntPixels(183.0f, context);
        int iDipsToIntPixels2 = Dips.dipsToIntPixels(40.0f, context);
        RelativeLayout.LayoutParams layoutParams = new RelativeLayout.LayoutParams(-1, iDipsToIntPixels);
        layoutParams.addRule(14);
        layoutParams.addRule(12);
        addView(hVar, layoutParams);
        hVar.setOnTouchListener(this.f81720i);
        String title = this.f81717f.getTitle();
        if (com.sigmob.sdk.base.utils.t.a((CharSequence) title)) {
            title = "点击前往";
        }
        aj ajVar = new aj(context);
        ajVar.setTitle(title);
        ajVar.setDescription(this.f81717f.getDesc());
        ajVar.setOnTouchListener(this.f81720i);
        RelativeLayout.LayoutParams layoutParams2 = new RelativeLayout.LayoutParams(-1, -2);
        layoutParams2.addRule(14);
        layoutParams2.addRule(12);
        layoutParams2.setMargins(0, 0, 0, iDipsToIntPixels2);
        addView(ajVar, layoutParams2);
    }

    private void r() {
        Context context = getContext();
        g gVar = new g(context);
        int iDipsToIntPixels = Dips.dipsToIntPixels(20.0f, context);
        boolean z10 = this.f81717f.getadPrivacy() != null;
        if (z10) {
            gVar.setOnTouchListener(new View.OnTouchListener() { // from class: com.sigmob.sdk.splash.i.11

                /* JADX INFO: renamed from: b, reason: collision with root package name */
                private MotionEvent f81736b;

                @Override // android.view.View.OnTouchListener
                public boolean onTouch(View view, MotionEvent event) {
                    if (i.this.f81717f == null) {
                        return false;
                    }
                    if (event.getAction() == 0) {
                        this.f81736b = MotionEvent.obtain(event);
                    } else if (event.getAction() == 1) {
                        ClickCommon clickCommon = i.this.f81717f.getClickCommon();
                        clickCommon.click_area = "appinfo";
                        clickCommon.click_scene = "ad";
                        com.sigmob.sdk.base.utils.d.a(i.f81712a, i.this.f81717f);
                        if (this.f81736b == null) {
                            this.f81736b = event;
                        }
                        try {
                            i.this.f81717f.getMacroCommon().updateClickMarco(this.f81736b, event, false);
                        } catch (Throwable th) {
                            SigmobLog.e("splash click macro set " + th.getMessage());
                        }
                        i.this.f81718g.i();
                    }
                    return true;
                }
            });
        }
        gVar.a(this.f81717f.getAd_source_logo(), z10);
        gVar.setAlpha(0.5f);
        int iDipsToIntPixels2 = Dips.dipsToIntPixels(5.0f, context);
        RelativeLayout.LayoutParams layoutParams = new RelativeLayout.LayoutParams(-1, iDipsToIntPixels);
        layoutParams.addRule(14);
        layoutParams.addRule(12);
        layoutParams.setMargins(iDipsToIntPixels2, 0, iDipsToIntPixels2, iDipsToIntPixels2);
        addView(gVar, layoutParams);
    }

    private void s() {
        Context context = getContext();
        ap apVar = new ap(context);
        int iDipsToIntPixels = Dips.dipsToIntPixels(100.0f, context);
        int iDipsToIntPixels2 = Dips.dipsToIntPixels(145.0f, context);
        RelativeLayout.LayoutParams layoutParams = new RelativeLayout.LayoutParams(iDipsToIntPixels, iDipsToIntPixels);
        layoutParams.addRule(14);
        layoutParams.addRule(12);
        layoutParams.setMargins(0, 0, 0, iDipsToIntPixels2);
        if (this.f81717f.getClickType() == 1) {
            apVar.setOnTouchListener(this.f81720i);
        }
        al.a aVar = new al.a(context, new AnonymousClass2(apVar), al.d.WRING);
        this.f81726o = aVar;
        aVar.a(SensorEntity.format(this.f81717f));
        this.f81726o.a();
        addView(apVar, layoutParams);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void t() {
        com.sigmob.sdk.base.views.r rVar = this.f81727p;
        if (rVar instanceof ai) {
            ((ai) rVar).a(0.0f);
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void u() {
        BaseAdUnit baseAdUnit = this.f81717f;
        if (baseAdUnit == null) {
            return;
        }
        Integer acDelayMs = baseAdUnit.getAcDelayMs();
        if (com.sigmob.sdk.base.utils.w.a((Number) acDelayMs)) {
            postDelayed(new Runnable() { // from class: com.sigmob.sdk.splash.w
                @Override // java.lang.Runnable
                public final void run() {
                    this.f81764b.v();
                }
            }, acDelayMs.intValue());
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void v() {
        this.f81717f.getMacroCommon().addMarcoKey(SigMacroCommon._ISAC_, "1");
        a((Map<String, Number>) new HashMap(), true);
    }

    void a() {
        super.setVisibility(8);
        b bVar = this.f81715d;
        if (bVar != null) {
            bVar.setVisibility(8);
        }
    }

    public void d() {
        this.f81721j = false;
        al.a aVar = this.f81726o;
        if (aVar != null) {
            aVar.b();
        }
        this.f81715d.b();
    }

    public void e() {
        al.a aVar = this.f81726o;
        if (aVar != null) {
            aVar.a();
        }
        com.sigmob.sdk.base.views.r rVar = this.f81727p;
        if (rVar != null) {
            rVar.a();
        }
        this.f81715d.c();
    }

    public int getDuration() {
        return this.f81715d.getDuration();
    }

    @Override // android.view.ViewGroup, android.view.View
    protected void onAttachedToWindow() {
        super.onAttachedToWindow();
        if (this.f81717f == null) {
            SigmobLog.e("adUnit is null");
        } else {
            if (this.f81718g == null) {
                return;
            }
            this.f81718g.a(com.sigmob.sdk.base.utils.x.c(this), this.f81717f, new com.sigmob.sdk.base.views.n.b() { // from class: com.sigmob.sdk.splash.i.1
                @Override // com.sigmob.sdk.base.views.n.b
                public void a() {
                    SigmobLog.d(i.f81712a + "#onCloseClick");
                    i.this.f81723l = false;
                    i.this.f81721j = false;
                    if (i.this.f81724m) {
                        i.this.a(true);
                    } else if (i.this.f81726o != null) {
                        i.this.f81726o.a();
                    }
                }

                @Override // com.sigmob.sdk.base.views.n.b
                public void b() {
                    SigmobLog.d(i.f81712a + "#onShowSuccess");
                    if (i.this.f81726o != null) {
                        i.this.f81726o.b();
                    }
                    i.this.f81723l = true;
                }

                @Override // com.sigmob.sdk.base.views.n.b
                public void a(Error error) {
                }

                @Override // com.sigmob.sdk.base.views.n.b
                public void a(String url, String clickCoordinate) {
                    SigmobLog.d(i.f81712a + "#onCloseClick");
                    if (i.this.f81717f == null) {
                        return;
                    }
                    ClickCommon clickCommon = i.this.f81717f.getClickCommon();
                    clickCommon.click_scene = "appinfo";
                    clickCommon.click_area = ClickCommon.CLICK_AREA_BTN;
                    clickCommon.is_final_click = true;
                    i.this.h();
                    i.this.f81722k = true;
                    ag sessionManager = i.this.f81717f.getSessionManager();
                    if (sessionManager == null) {
                        return;
                    }
                    sessionManager.a("click", 0);
                }
            });
        }
    }

    @Override // android.view.ViewGroup, android.view.View
    protected void onDetachedFromWindow() {
        super.onDetachedFromWindow();
        al.a aVar = this.f81726o;
        if (aVar != null) {
            aVar.c();
        }
        com.sigmob.sdk.base.views.r rVar = this.f81727p;
        if (rVar != null) {
            rVar.b();
        }
        removeAllViews();
    }

    @Override // android.view.View
    public void onWindowFocusChanged(boolean hasWindowFocus) {
        super.onWindowFocusChanged(hasWindowFocus);
        com.sigmob.sdk.base.utils.k.c(f81712a, "onWindowFocusChanged: hasWindowFocus = " + hasWindowFocus, new Object[0]);
    }

    @Override // android.view.View
    protected void onWindowVisibilityChanged(int visibility) {
        super.onWindowVisibilityChanged(visibility);
        com.sigmob.sdk.base.utils.k.c(f81712a, "onWindowVisibilityChanged: visibility = " + visibility, new Object[0]);
        if (com.sigmob.sdk.base.utils.w.b(this.f81730s)) {
            this.f81730s.onWindowVisibilityChanged(visibility);
        }
    }

    public void setAspectRatio(float v10) {
        this.f81729r = v10;
    }

    public void setDuration(int duration) {
        if (this.f81717f == null) {
            return;
        }
        if (duration > 0 && com.sigmob.sdk.base.utils.w.b(this.f81725n)) {
            this.f81725n.a(duration);
            return;
        }
        this.f81724m = true;
        ad.a("complete", (String) null, this.f81717f, (ad.a) null);
        if (com.sigmob.sdk.base.utils.w.b(Boolean.valueOf(this.f81723l)) || this.f81728q) {
            a(true);
        }
    }

    @Override // android.view.View
    public void setOnTouchListener(View.OnTouchListener l10) {
        b bVar = this.f81715d;
        if (bVar == null) {
            return;
        }
        bVar.setOnTouchListener(l10);
    }

    public void setViewStatusListener(a statusListener) {
        this.f81730s = statusListener;
    }

    @Override // android.view.View
    public void setVisibility(int visibility) {
        if (visibility == 0) {
            this.f81725n.setVisibility(0);
            this.f81715d.a();
            if (com.sigmob.sdk.base.utils.w.b(this.f81717f)) {
                ag sessionManager = this.f81717f.getSessionManager();
                if (com.sigmob.sdk.base.utils.w.b(sessionManager)) {
                    sessionManager.a("start", 0);
                }
            }
            super.setVisibility(visibility);
            return;
        }
        try {
            ad.a(PointCategory.SPLASHADBLOCK, WindAdError.ERROR_SPLASH_ADBLOCK.getErrorCode(), Preconditions.NoThrow.getLineInfo(), this.f81717f, (ad.a) null);
            SigmobLog.e("debug " + Preconditions.NoThrow.getLineInfo());
        } catch (Throwable th) {
            SigmobLog.e(th.getMessage());
        }
    }

    private void a(Activity activity, int templateId) {
        Context context = getContext();
        com.sigmob.sdk.videoplayer.c.c(activity);
        com.sigmob.sdk.videoplayer.c.f(activity);
        int iDipsToIntPixels = Dips.dipsToIntPixels(12.0f, context);
        int i10 = iDipsToIntPixels * 3;
        int iDipsToIntPixels2 = Dips.dipsToIntPixels(68.0f, context);
        int iDipsToIntPixels3 = Dips.dipsToIntPixels(25.0f, context);
        ab abVar = new ab(context);
        this.f81725n = abVar;
        if (templateId == 2109) {
            abVar.setText("关闭");
        }
        this.f81725n.setId(View.generateViewId());
        RelativeLayout.LayoutParams layoutParams = new RelativeLayout.LayoutParams(iDipsToIntPixels2, iDipsToIntPixels3);
        layoutParams.addRule(11);
        this.f81725n.setOnClickListener(new View.OnClickListener() { // from class: com.sigmob.sdk.splash.x
            @Override // android.view.View.OnClickListener
            public final void onClick(View view) {
                this.f81765b.a(view);
            }
        });
        layoutParams.setMargins(0, i10, iDipsToIntPixels, 0);
        addView(this.f81725n, layoutParams);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void h() {
        BaseAdUnit baseAdUnit = this.f81717f;
        if (baseAdUnit == null) {
            return;
        }
        com.sigmob.sdk.base.utils.d.a(f81712a, baseAdUnit);
        BaseBroadcastReceiver.a(this.f81716e, this.f81717f.getUuid(), IntentActions.ACTION_INTERSTITIAL_CLICK);
    }

    private void i() {
        Context context = getContext();
        int iDipsToIntPixels = Dips.dipsToIntPixels(10.0f, context);
        Dips.dipsToIntPixels(75.0f, context);
        int iDipsToIntPixels2 = Dips.dipsToIntPixels(25.0f, context);
        TextView textView = new TextView(context);
        textView.setText("互动广告");
        textView.setTextSize(2, 12.0f);
        textView.setTextColor(Color.parseColor("#ccffffff"));
        textView.setGravity(17);
        RelativeLayout.LayoutParams layoutParams = new RelativeLayout.LayoutParams(-2, iDipsToIntPixels2);
        layoutParams.addRule(0, this.f81725n.getId());
        layoutParams.addRule(6, this.f81725n.getId());
        layoutParams.setMargins(0, 0, iDipsToIntPixels, 0);
        addView(textView, layoutParams);
    }

    private void j() {
        Context context = getContext();
        this.f81727p = new com.sigmob.sdk.base.views.y(context);
        int iDipsToIntPixels = Dips.dipsToIntPixels(100.0f, context);
        int iDipsToIntPixels2 = Dips.dipsToIntPixels(145.0f, context);
        RelativeLayout.LayoutParams layoutParams = new RelativeLayout.LayoutParams(iDipsToIntPixels, iDipsToIntPixels);
        layoutParams.addRule(14);
        layoutParams.addRule(12);
        layoutParams.setMargins(0, 0, 0, iDipsToIntPixels2);
        if (this.f81717f.getClickType() == 1) {
            this.f81727p.setOnTouchListener(this.f81720i);
        }
        al.a aVar = new al.a(context, new AnonymousClass6(), al.d.SHAKE);
        this.f81726o = aVar;
        aVar.a(SensorEntity.format(this.f81717f));
        this.f81726o.a();
        addView(this.f81727p, layoutParams);
    }

    private void k() {
        Context context = getContext();
        this.f81727p = new com.sigmob.sdk.base.views.ag(context);
        int iDipsToIntPixels = Dips.dipsToIntPixels(92.0f, context);
        int iDipsToIntPixels2 = Dips.dipsToIntPixels(145.0f, context);
        RelativeLayout.LayoutParams layoutParams = new RelativeLayout.LayoutParams(iDipsToIntPixels, iDipsToIntPixels);
        layoutParams.addRule(14);
        layoutParams.addRule(12);
        layoutParams.setMargins(0, 0, 0, iDipsToIntPixels2);
        if (this.f81717f.getClickType() == 1) {
            this.f81727p.setOnTouchListener(this.f81720i);
        }
        al.a aVar = new al.a(context, new AnonymousClass7(), al.d.SLOPE);
        this.f81726o = aVar;
        aVar.a(SensorEntity.format(this.f81717f));
        this.f81726o.a();
        addView(this.f81727p, layoutParams);
    }

    private void l() {
        getViewTreeObserver().addOnGlobalLayoutListener(new ViewTreeObserver.OnGlobalLayoutListener() { // from class: com.sigmob.sdk.splash.i.8
            @Override // android.view.ViewTreeObserver.OnGlobalLayoutListener
            public void onGlobalLayout() {
                Context context;
                i.this.getViewTreeObserver().removeOnGlobalLayoutListener(this);
                if (i.this.f81717f == null || (context = i.this.getContext()) == null) {
                    return;
                }
                int[] iArr = new int[2];
                i.this.getLocationOnScreen(iArr);
                ClickCommon clickCommon = i.this.f81717f.getClickCommon();
                clickCommon.adarea_x = String.valueOf(Dips.pixelsToIntDips(iArr[0], context));
                clickCommon.adarea_y = String.valueOf(Dips.pixelsToIntDips(iArr[1], context));
                clickCommon.adarea_w = String.valueOf(Dips.pixelsToIntDips(i.this.getWidth(), context));
                clickCommon.adarea_h = String.valueOf(Dips.pixelsToIntDips(i.this.getHeight(), context));
            }
        });
    }

    private void m() {
        Context context = getContext();
        this.f81727p = new ai(context);
        int iDipsToIntPixels = Dips.dipsToIntPixels(100.0f, context);
        int iDipsToIntPixels2 = Dips.dipsToIntPixels(145.0f, context);
        RelativeLayout.LayoutParams layoutParams = new RelativeLayout.LayoutParams(iDipsToIntPixels, iDipsToIntPixels);
        layoutParams.addRule(14);
        layoutParams.addRule(12);
        layoutParams.setMargins(0, 0, 0, iDipsToIntPixels2);
        if (this.f81717f.getClickType() == 1) {
            this.f81727p.setOnTouchListener(this.f81720i);
        }
        al.a aVar = new al.a(context, new al.c() { // from class: com.sigmob.sdk.splash.i.9
            @Override // com.sigmob.sdk.base.common.al.c
            public void a() {
            }

            @Override // com.sigmob.sdk.base.common.al.c
            public void a(float progress) {
                if (i.this.f81727p instanceof ai) {
                    ((ai) i.this.f81727p).a(progress);
                }
            }

            @Override // com.sigmob.sdk.base.common.al.c
            public void a(Map<String, Number> info) {
                i.this.a(info, false);
            }
        }, al.d.SWING);
        this.f81726o = aVar;
        aVar.a(SensorEntity.format(this.f81717f));
        this.f81726o.a();
        addView(this.f81727p, layoutParams);
    }

    private void n() {
        int i10;
        Context context = getContext();
        View aeVar = new ae(context);
        int iDipsToIntPixels = Dips.dipsToIntPixels(100.0f, context);
        if (this.f81717f.getClickType() == 1) {
            aeVar.setOnTouchListener(this.f81720i);
        }
        int sensitivity = this.f81717f.getSensitivity();
        if (sensitivity == 10) {
            i10 = 0;
        } else {
            i10 = (sensitivity <= 0 || sensitivity >= 10) ? 50 : ((10 - sensitivity) + 1) * 10;
        }
        final int iDipsToIntPixels2 = Dips.dipsToIntPixels(i10, com.sigmob.sdk.b.e());
        this.f81719h.setOnTouchListener(new View.OnTouchListener() { // from class: com.sigmob.sdk.splash.i.10

            /* JADX INFO: renamed from: c, reason: collision with root package name */
            private MotionEvent f81734c;

            @Override // android.view.View.OnTouchListener
            public boolean onTouch(View view, MotionEvent event) {
                if (i.this.f81717f == null) {
                    return false;
                }
                if (event.getAction() == 0) {
                    this.f81734c = MotionEvent.obtain(event);
                    i.this.f81721j = false;
                } else {
                    if ((event.getAction() != 2 && event.getAction() != 1) || i.this.f81721j) {
                        return true;
                    }
                    if (((float) Math.sqrt(Math.pow(Math.abs(event.getX() - this.f81734c.getX()), 2.0d) + Math.pow(Math.abs(event.getY() - this.f81734c.getY()), 2.0d))) >= iDipsToIntPixels2) {
                        i.this.f81721j = true;
                        SigMacroCommon macroCommon = i.this.f81717f.getMacroCommon();
                        if (macroCommon != null) {
                            macroCommon.updateClickMarco(this.f81734c, event, false);
                        }
                        i.this.g();
                    }
                }
                return true;
            }
        });
        int iDipsToIntPixels3 = Dips.dipsToIntPixels(145.0f, context);
        RelativeLayout.LayoutParams layoutParams = new RelativeLayout.LayoutParams(iDipsToIntPixels, iDipsToIntPixels);
        layoutParams.addRule(14);
        layoutParams.addRule(12);
        layoutParams.setMargins(0, 0, 0, iDipsToIntPixels3);
        addView(aeVar, layoutParams);
    }

    void b() {
        super.setVisibility(4);
    }

    public boolean c() {
        BaseAdUnit baseAdUnit = this.f81717f;
        if (baseAdUnit != null && baseAdUnit.getSplashFilePath() != null) {
            return this.f81715d.a(this.f81717f, new b.a() { // from class: com.sigmob.sdk.splash.v
                @Override // com.sigmob.sdk.splash.b.a
                public final void onAdWillShow() {
                    this.f81763a.u();
                }
            });
        }
        SigmobLog.e("adUnit or splashFilePath is null");
        return false;
    }

    public boolean f() {
        return this.f81722k;
    }

    private void a(Context context) {
        b bVarA = b.a(context, this.f81717f);
        this.f81715d = bVarA;
        if (bVarA == null) {
            return;
        }
        bVarA.setAspectRatio(this.f81729r);
        this.f81714c.addView(this.f81715d, new RelativeLayout.LayoutParams(-1, -1));
        this.f81719h = new RelativeLayout(context);
        RelativeLayout.LayoutParams layoutParams = new RelativeLayout.LayoutParams(-1, -1);
        int iDipsToIntPixels = Dips.dipsToIntPixels(f81713b, this.f81716e);
        layoutParams.setMargins(iDipsToIntPixels, (int) (((double) iDipsToIntPixels) * 2.5d), iDipsToIntPixels, iDipsToIntPixels);
        this.f81719h.setClickable(true);
        this.f81719h.setOnTouchListener(new View.OnTouchListener() { // from class: com.sigmob.sdk.splash.u
            @Override // android.view.View.OnTouchListener
            public final boolean onTouch(View view, MotionEvent motionEvent) {
                return i.a(view, motionEvent);
            }
        });
        this.f81714c.addView(this.f81719h, layoutParams);
        this.f81720i = new View.OnTouchListener() { // from class: com.sigmob.sdk.splash.i.4

            /* JADX INFO: renamed from: b, reason: collision with root package name */
            private MotionEvent f81741b;

            @Override // android.view.View.OnTouchListener
            public boolean onTouch(View v10, MotionEvent event) {
                if (i.this.f81717f == null) {
                    SigmobLog.e("adUnit is null");
                    return false;
                }
                if (event.getAction() == 0) {
                    this.f81741b = MotionEvent.obtain(event);
                } else if (event.getAction() == 1) {
                    if (this.f81741b == null) {
                        this.f81741b = event;
                    }
                    try {
                        ClickCommon clickCommon = i.this.f81717f.getClickCommon();
                        clickCommon.sld = "0";
                        clickCommon.click_area = ClickCommon.CLICK_AREA_COMPANION;
                        clickCommon.click_scene = "ad";
                        i.this.f81717f.getMacroCommon().updateClickMarco(this.f81741b, event, false);
                    } catch (Throwable th) {
                        SigmobLog.e("splash click macro set " + th.getMessage());
                    }
                    i.this.g();
                }
                return true;
            }
        };
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void a(View view) {
        this.f81728q = true;
        BaseAdUnit baseAdUnit = this.f81717f;
        if (baseAdUnit == null) {
            return;
        }
        ag sessionManager = baseAdUnit.getSessionManager();
        if (sessionManager != null) {
            sessionManager.a("skip", 0);
        }
        BaseBroadcastReceiver.a(this.f81716e, this.f81717f.getUuid(), IntentActions.ACTION_SPLAH_SKIP);
    }

    private void a(BaseAdUnit adUnit) {
        SigmobLog.d("handleUrlAction");
        if (adUnit == null) {
            SigmobLog.e("adUnit is null");
        } else {
            new an.a().a(am.IGNORE_ABOUT_SCHEME, am.DOWNLOAD_APK, am.MARKET_SCHEME, am.OPEN_WITH_BROWSER, am.FOLLOW_PACKAGE_NAME, am.FOLLOW_DEEP_LINK, am.MINI_PROGRAM).a(new AnonymousClass5(adUnit)).a(adUnit.isSkipSigmobBrowser()).a(adUnit).b(adUnit.getAd().forbiden_parse_landingpage.booleanValue()).a().a(com.sigmob.sdk.b.e(), null);
        }
    }

    private void a(String title, String desc) {
        Context context = getContext();
        aj ajVar = new aj(context);
        ajVar.setTitle(title);
        ajVar.setDescription(desc);
        int iDipsToIntPixels = Dips.dipsToIntPixels(82.0f, context);
        if (this.f81717f.getClickType() == 1) {
            ajVar.setOnTouchListener(this.f81720i);
        }
        RelativeLayout.LayoutParams layoutParams = new RelativeLayout.LayoutParams(-1, -2);
        layoutParams.addRule(14);
        layoutParams.addRule(12);
        layoutParams.setMargins(0, 0, 0, iDipsToIntPixels);
        addView(ajVar, layoutParams);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void a(Map<String, Number> info, boolean auto) {
        if (info == null || this.f81717f == null || this.f81721j) {
            return;
        }
        this.f81721j = true;
        Number number = info.get("x_max_acc");
        Number number2 = info.get("y_max_acc");
        Number number3 = info.get("z_max_acc");
        ClickCommon clickCommon = this.f81717f.getClickCommon();
        if (com.sigmob.sdk.base.utils.w.b(number)) {
            clickCommon.x_max_acc = String.valueOf(number.intValue());
        }
        if (com.sigmob.sdk.base.utils.w.b(number2)) {
            clickCommon.y_max_acc = String.valueOf(number2.intValue());
        }
        if (com.sigmob.sdk.base.utils.w.b(number3)) {
            clickCommon.z_max_acc = String.valueOf(number3.intValue());
        }
        clickCommon.sld = auto ? "0" : "2";
        clickCommon.click_area = ClickCommon.CLICK_AREA_COMPONENT;
        clickCommon.click_scene = "ad";
        this.f81727p.postDelayed(new Runnable() { // from class: com.sigmob.sdk.splash.y
            @Override // java.lang.Runnable
            public final void run() {
                this.f81766b.g();
            }
        }, 400L);
        this.f81727p.postDelayed(new Runnable() { // from class: com.sigmob.sdk.splash.z
            @Override // java.lang.Runnable
            public final void run() {
                this.f81767b.t();
            }
        }, 800L);
    }

    void a(boolean hasClose) {
        if (hasClose && com.sigmob.sdk.base.utils.w.b(this.f81717f)) {
            BaseBroadcastReceiver.a(this.f81716e, this.f81717f.getUuid(), IntentActions.ACTION_INTERSTITIAL_DISMISS);
            this.f81725n.setOnClickListener(null);
            com.sigmob.sdk.base.common.h.b(this.f81717f);
            this.f81717f = null;
        }
        al.a aVar = this.f81726o;
        if (aVar != null) {
            aVar.c();
            this.f81726o = null;
        }
        com.sigmob.sdk.base.views.r rVar = this.f81727p;
        if (rVar != null) {
            rVar.b();
        }
        this.f81715d.setOnTouchListener(null);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static /* synthetic */ boolean a(View view, MotionEvent motionEvent) {
        return true;
    }

    /* JADX WARN: Code duplicated, block: B:42:0x00fc A[Catch: all -> 0x0117, TryCatch #0 {all -> 0x0117, blocks: (B:3:0x0001, B:6:0x0033, B:45:0x0104, B:7:0x0037, B:10:0x0048, B:11:0x004c, B:40:0x00f8, B:42:0x00fc, B:43:0x00ff, B:12:0x0051, B:13:0x005c, B:14:0x0067, B:15:0x0072, B:19:0x008f, B:20:0x0097, B:24:0x00aa, B:25:0x00ae, B:26:0x00b2, B:29:0x00c3, B:30:0x00c8, B:34:0x00db, B:35:0x00e0, B:39:0x00f3), top: B:50:0x0001 }] */
    public boolean a(BaseAdUnit adUnit, Activity activity) {
        String title;
        String desc;
        String str;
        String desc2;
        com.sigmob.sdk.base.views.r rVar;
        try {
            this.f81717f = adUnit;
            this.f81718g = (com.sigmob.sdk.splash.a) adUnit.getAdConfig();
            int templateId = this.f81717f.getTemplateId();
            a(this.f81716e);
            a(activity, templateId);
            ClickCommon clickCommon = this.f81717f.getClickCommon();
            clickCommon.template_id = String.valueOf(templateId);
            l();
            switch (templateId) {
                case 2101:
                    i();
                    j();
                    title = adUnit.getTitle();
                    if (!com.sigmob.sdk.base.utils.t.b(title)) {
                        title = "摇动手机";
                    }
                    desc = adUnit.getDesc();
                    a(title, desc);
                    rVar = this.f81727p;
                    if (rVar != null) {
                        rVar.a();
                    }
                    r();
                    return true;
                case 2102:
                    i();
                    k();
                    title = adUnit.getTitle();
                    if (!com.sigmob.sdk.base.utils.t.b(title)) {
                        title = "前倾手机";
                    }
                    desc = adUnit.getDesc();
                    a(title, desc);
                    rVar = this.f81727p;
                    if (rVar != null) {
                        rVar.a();
                    }
                    r();
                    return true;
                case 2103:
                    i();
                    m();
                    String title2 = adUnit.getTitle();
                    str = com.sigmob.sdk.base.utils.t.b(title2) ? title2 : "晃动手机";
                    desc2 = adUnit.getDesc();
                    a(str, desc2);
                    rVar = this.f81727p;
                    if (rVar != null) {
                        rVar.a();
                    }
                    r();
                    return true;
                case 2104:
                    i();
                    s();
                    title = adUnit.getTitle();
                    if (!com.sigmob.sdk.base.utils.t.b(title)) {
                        title = "转动手机";
                    }
                    desc = adUnit.getDesc();
                    a(title, desc);
                    rVar = this.f81727p;
                    if (rVar != null) {
                        rVar.a();
                    }
                    r();
                    return true;
                case 2105:
                    i();
                    n();
                    String title3 = adUnit.getTitle();
                    clickCommon.sld = "1";
                    clickCommon.click_area = ClickCommon.CLICK_AREA_COMPONENT;
                    clickCommon.click_scene = "ad";
                    if (!com.sigmob.sdk.base.utils.t.b(title3)) {
                        title3 = "向上滑动";
                    }
                    a(title3, adUnit.getDesc());
                    rVar = this.f81727p;
                    if (rVar != null) {
                        rVar.a();
                    }
                    r();
                    return true;
                case 2106:
                    clickCommon.sld = "0";
                    clickCommon.click_area = ClickCommon.CLICK_AREA_COMPANION;
                    clickCommon.click_scene = "ad";
                    o();
                    rVar = this.f81727p;
                    if (rVar != null) {
                        rVar.a();
                    }
                    r();
                    return true;
                case 2107:
                    clickCommon.sld = "0";
                    clickCommon.click_area = ClickCommon.CLICK_AREA_COMPANION;
                    clickCommon.click_scene = "ad";
                    p();
                    rVar = this.f81727p;
                    if (rVar != null) {
                        rVar.a();
                    }
                    r();
                    return true;
                case 2108:
                    clickCommon.sld = "0";
                    clickCommon.click_area = ClickCommon.CLICK_AREA_COMPANION;
                    clickCommon.click_scene = "ad";
                    q();
                    rVar = this.f81727p;
                    if (rVar != null) {
                        rVar.a();
                    }
                    r();
                    return true;
                case 2109:
                    i();
                    m();
                    String title4 = adUnit.getTitle();
                    str = com.sigmob.sdk.base.utils.t.b(title4) ? title4 : "晃动手机";
                    desc2 = adUnit.getDesc();
                    a(str, desc2);
                    rVar = this.f81727p;
                    if (rVar != null) {
                        rVar.a();
                    }
                    r();
                    return true;
                default:
                    SigmobLog.e("loadUI: templateId = " + templateId);
                    return false;
            }
        } catch (Throwable th) {
            SigmobLog.e("setupAd error", th);
            return false;
        }
    }
}
