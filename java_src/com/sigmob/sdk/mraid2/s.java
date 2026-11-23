package com.sigmob.sdk.mraid2;

import android.annotation.SuppressLint;
import android.app.Activity;
import android.content.Context;
import android.content.Intent;
import android.content.res.Configuration;
import android.graphics.Color;
import android.net.Uri;
import android.os.Bundle;
import android.os.Handler;
import android.view.MotionEvent;
import android.view.View;
import android.view.ViewGroup;
import android.view.WindowInsets;
import android.webkit.ConsoleMessage;
import android.webkit.JsResult;
import android.widget.FrameLayout;
import android.widget.RelativeLayout;
import androidx.core.app.NotificationCompat;
import com.byazt.bv.BaseConstants;
import com.czhj.sdk.common.ClientMetadata;
import com.czhj.sdk.common.utils.AppPackageUtil;
import com.czhj.sdk.common.utils.Dips;
import com.czhj.sdk.common.utils.FileUtil;
import com.czhj.sdk.logger.SigmobLog;
import com.czhj.sdk.logger.SigmobLogger;
import com.sigmob.sdk.Sigmob;
import com.sigmob.sdk.base.BaseAdActivity;
import com.sigmob.sdk.base.common.AdActivity;
import com.sigmob.sdk.base.common.MiMarketManager;
import com.sigmob.sdk.base.common.ad;
import com.sigmob.sdk.base.common.am;
import com.sigmob.sdk.base.common.ao;
import com.sigmob.sdk.base.models.BaseAdUnit;
import com.sigmob.sdk.base.models.ClickCommon;
import com.sigmob.sdk.base.models.IntentActions;
import com.sigmob.sdk.base.models.LoadAdRequest;
import com.sigmob.sdk.base.models.SigMacroCommon;
import com.sigmob.sdk.base.mta.PointCategory;
import com.sigmob.sdk.base.mta.PointEntitySigmob;
import com.sigmob.sdk.base.mta.PointParamKey;
import com.sigmob.sdk.base.views.ak;
import com.sigmob.windad.WindAdError;
import com.sigmob.windad.WindAdRequest;
import com.sigmob.windad.natives.WindNativeAdData;
import java.util.HashMap;
import java.util.Iterator;
import java.util.List;
import java.util.Locale;
import java.util.Map;
import org.json.JSONObject;

/* JADX INFO: loaded from: classes3.dex */
public class s extends com.sigmob.sdk.videoAd.b {

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    public static final String f81274f = "s";

    /* JADX INFO: renamed from: g, reason: collision with root package name */
    List<BaseAdUnit> f81275g;

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    private final Bundle f81276h;

    /* JADX INFO: renamed from: i, reason: collision with root package name */
    private int f81277i;

    /* JADX INFO: renamed from: j, reason: collision with root package name */
    private boolean f81278j;

    /* JADX INFO: renamed from: k, reason: collision with root package name */
    private e f81279k;

    /* JADX INFO: renamed from: l, reason: collision with root package name */
    private ak f81280l;

    /* JADX INFO: renamed from: m, reason: collision with root package name */
    private com.sigmob.sdk.nativead.b f81281m;

    /* JADX INFO: renamed from: n, reason: collision with root package name */
    private boolean f81282n;

    /* JADX INFO: renamed from: o, reason: collision with root package name */
    private boolean f81283o;

    /* JADX INFO: renamed from: p, reason: collision with root package name */
    private boolean f81284p;

    /* JADX INFO: renamed from: q, reason: collision with root package name */
    private boolean f81285q;

    /* JADX INFO: renamed from: r, reason: collision with root package name */
    private com.sigmob.sdk.base.views.s f81286r;

    /* JADX INFO: renamed from: s, reason: collision with root package name */
    private final Handler f81287s;

    /* JADX INFO: renamed from: t, reason: collision with root package name */
    private boolean f81288t;

    /* JADX INFO: renamed from: u, reason: collision with root package name */
    private final View.OnClickListener f81289u;

    /* JADX INFO: renamed from: com.sigmob.sdk.mraid2.s$2, reason: invalid class name */
    class AnonymousClass2 implements m {
        AnonymousClass2() {
        }

        @Override // com.sigmob.sdk.mraid2.m
        public void a() {
            SigmobLog.d("MraidActivity failed to load. Finishing the activity");
            if (((com.sigmob.sdk.base.common.j) s.this).f79161b != null) {
                s.this.a(IntentActions.ACTION_INTERSTITIAL_FAIL);
            }
            ((com.sigmob.sdk.base.common.j) s.this).f79163d.a();
        }

        @Override // com.sigmob.sdk.mraid2.m
        public void c() {
            if (s.this.f81278j) {
                return;
            }
            s.this.f81278j = true;
            s.this.a(IntentActions.ACTION_REWARDED_VIDEO_COMPLETE);
        }

        @Override // com.sigmob.sdk.mraid2.m
        public void d() {
            s.this.f81284p = true;
        }

        @Override // com.sigmob.sdk.mraid2.m
        public void a(View view) {
            SigmobLog.d("onLoaded() called");
        }

        @Override // com.sigmob.sdk.mraid2.m
        public void b() {
            s.this.a(IntentActions.ACTION_REWARDED_VIDEO_CLOSE);
            s.this.f81283o = true;
            ((com.sigmob.sdk.base.common.j) s.this).f79163d.a();
        }

        @Override // com.sigmob.sdk.mraid2.m
        public void a(final c container, final BaseAdUnit adUnit, JSONObject args) {
            s sVar;
            String message;
            String str;
            int interactionType = adUnit == null ? -1 : adUnit.getInteractionType();
            String packageName = null;
            String deeplinkUrl = adUnit == null ? null : adUnit.getDeeplinkUrl();
            int i10 = 0;
            SigmobLogger.d(s.f81274f, "open: deeplinkUrl = " + deeplinkUrl + ", interactionType = " + interactionType, new Object[0]);
            final String strOptString = args.optString("url");
            final String strOptString2 = args.optString(NotificationCompat.CATEGORY_EVENT);
            JSONObject jSONObjectOptJSONObject = args.optJSONObject("data");
            if (jSONObjectOptJSONObject == null) {
                return;
            }
            final JSONObject jSONObjectOptJSONObject2 = jSONObjectOptJSONObject.optJSONObject("log_data");
            final String strOptString3 = jSONObjectOptJSONObject.optString("default_url");
            final boolean zOptBoolean = jSONObjectOptJSONObject.optBoolean("in_app");
            boolean zOptBoolean2 = jSONObjectOptJSONObject.optBoolean("parse_302");
            int iOptInt = jSONObjectOptJSONObject.optInt("interaction_type");
            String message2 = "";
            if (iOptInt == 1) {
                if (zOptBoolean2) {
                    ao.a(strOptString, new ao.a() { // from class: com.sigmob.sdk.mraid2.s.2.1
                        @Override // com.sigmob.sdk.base.common.ao.a
                        public void a(String resolvedUrl) {
                            s.this.a(container, adUnit, strOptString2, resolvedUrl, jSONObjectOptJSONObject2, strOptString3, zOptBoolean);
                        }

                        @Override // com.sigmob.sdk.base.common.ao.a
                        public void a(String message3, Throwable throwable) {
                            s.this.a(container, adUnit, strOptString2, strOptString, jSONObjectOptJSONObject2, strOptString3, zOptBoolean);
                        }
                    });
                    return;
                } else {
                    s.this.a(container, adUnit, strOptString2, strOptString, jSONObjectOptJSONObject2, strOptString3, zOptBoolean);
                    return;
                }
            }
            if (iOptInt != 2) {
                if (iOptInt != 3) {
                    String str2 = "1";
                    String str3 = com.sigmob.sdk.base.common.a.G;
                    if (iOptInt == 7) {
                        JSONObject jSONObjectOptJSONObject3 = jSONObjectOptJSONObject.optJSONObject("program");
                        if (jSONObjectOptJSONObject3 == null) {
                            return;
                        }
                        try {
                            com.sigmob.sdk.base.utils.g.a(com.sigmob.sdk.b.e(), jSONObjectOptJSONObject3.optString("wx_app_id"), jSONObjectOptJSONObject3.optString("wx_app_username"), jSONObjectOptJSONObject3.optString("wx_app_path"), jSONObjectOptJSONObject3.optInt("wx_business_type"), jSONObjectOptJSONObject3.optString("wx_ext_msg"));
                            message = "";
                        } catch (Throwable th) {
                            message = th.getMessage();
                        }
                        if (adUnit != null) {
                            try {
                                boolean zA = com.sigmob.sdk.base.utils.t.a((CharSequence) message);
                                if (!zA) {
                                    str3 = com.sigmob.sdk.base.common.a.H;
                                }
                                ClickCommon clickCommon = adUnit.getClickCommon();
                                if (!zA) {
                                    str2 = "0";
                                }
                                clickCommon.isDeeplink = str2;
                                com.sigmob.sdk.manager.b.b(adUnit, str3, strOptString);
                            } catch (Exception e10) {
                                e = e10;
                                e.printStackTrace();
                            }
                        }
                    } else {
                        if (iOptInt != 8) {
                            return;
                        }
                        if (com.sigmob.sdk.base.utils.t.b(strOptString)) {
                            try {
                                Intent intent = new Intent("android.intent.action.VIEW", Uri.parse(strOptString));
                                if (adUnit != null) {
                                    packageName = adUnit.getPackageName();
                                }
                                com.sigmob.sdk.base.utils.g.b(s.this.l(), intent, packageName);
                                message = "";
                            } catch (Throwable th2) {
                                message = th2.getMessage();
                            }
                        } else {
                            message = "market_url is null";
                        }
                        if (adUnit != null) {
                            try {
                                boolean zA2 = com.sigmob.sdk.base.utils.t.a((CharSequence) message);
                                if (!zA2) {
                                    str3 = com.sigmob.sdk.base.common.a.H;
                                }
                                ClickCommon clickCommon2 = adUnit.getClickCommon();
                                if (!zA2) {
                                    str2 = "0";
                                }
                                clickCommon2.isDeeplink = str2;
                                com.sigmob.sdk.manager.b.b(adUnit, str3, strOptString);
                            } catch (Exception e11) {
                                e = e11;
                                e.printStackTrace();
                            }
                        }
                    }
                    sVar = s.this;
                } else {
                    String str4 = BaseConstants.SCHEME_MARKET;
                    JSONObject jSONObjectOptJSONObject4 = jSONObjectOptJSONObject.optJSONObject(BaseConstants.SCHEME_MARKET);
                    if (jSONObjectOptJSONObject4 == null) {
                        return;
                    }
                    final String strOptString4 = jSONObjectOptJSONObject4.optString("market_url");
                    final String strOptString5 = jSONObjectOptJSONObject4.optString("app_package_name");
                    final String strOptString6 = jSONObjectOptJSONObject4.optString("appstore_package_name");
                    String strOptString7 = jSONObjectOptJSONObject4.optString("type");
                    if (com.sigmob.sdk.base.utils.t.b(strOptString4)) {
                        if (com.sigmob.sdk.base.utils.t.b(strOptString7)) {
                            try {
                                i10 = Integer.parseInt(strOptString7);
                            } catch (Throwable unused) {
                            }
                        }
                        String strA = (!com.sigmob.sdk.base.utils.t.b(strOptString6) || AppPackageUtil.getPackageVersionCode(((com.sigmob.sdk.base.common.j) s.this).f79160a, strOptString6) == -1) ? null : strOptString6;
                        Uri uri = Uri.parse(strOptString4);
                        if (com.sigmob.sdk.base.utils.t.a((CharSequence) strA) && adUnit != null) {
                            strA = com.sigmob.sdk.base.utils.g.a(((com.sigmob.sdk.base.common.j) s.this).f79160a, uri, adUnit.getMarketPackageNameList());
                        }
                        if (i10 == 1) {
                            new MiMarketManager.DirectMailStatusReceiver().a(com.sigmob.sdk.b.e(), adUnit);
                        }
                        try {
                            com.sigmob.sdk.base.utils.g.a(s.this.l(), uri, strA);
                        } catch (Throwable th3) {
                            message2 = th3.getMessage();
                        }
                    } else {
                        message2 = "market_url is null";
                    }
                    if (adUnit != null) {
                        try {
                            if (com.sigmob.sdk.base.utils.t.a((CharSequence) message2)) {
                                str = PointCategory.OPEN_MARKET;
                                if (com.sigmob.sdk.base.utils.t.b(strOptString5)) {
                                    FileUtil.writeToCache(adUnit, com.sigmob.sdk.base.utils.o.a((Object) strOptString5).getAbsolutePath());
                                }
                                if (i10 == 1) {
                                    str4 = "mimarket";
                                }
                                ad.a(PointCategory.APK_CLICK, str4, adUnit, (ad.a) null);
                            } else {
                                str = PointCategory.OPEN_MARKET_FAILED;
                            }
                            ad.a(str, (String) null, adUnit, new ad.a() { // from class: com.sigmob.sdk.mraid2.u0
                                @Override // com.sigmob.sdk.base.common.ad.a
                                public final void onAddExtra(Object obj) {
                                    s.AnonymousClass2.a(strOptString4, adUnit, strOptString5, strOptString6, obj);
                                }
                            });
                        } catch (Exception e12) {
                            e12.printStackTrace();
                        }
                    }
                }
                sVar.a(container, adUnit, strOptString2, jSONObjectOptJSONObject2, message);
            }
            if (adUnit == null) {
                List<BaseAdUnit> adUnitList = container.getAdUnitList();
                if (adUnitList == null || adUnitList.isEmpty()) {
                    SigmobLog.d("adUnits is null or empty.");
                    return;
                }
                BaseAdUnit baseAdUnit = container.getAdUnitList().get(0);
                baseAdUnit.setRecord(false);
                com.sigmob.sdk.base.common.i.a(baseAdUnit, strOptString, zOptBoolean2);
                s.this.a(container, baseAdUnit, strOptString2, jSONObjectOptJSONObject2, "");
                return;
            }
            adUnit.setRecord(true);
            com.sigmob.sdk.base.common.i.a(adUnit, strOptString, zOptBoolean2);
            sVar = s.this;
            message = message2;
            sVar.a(container, adUnit, strOptString2, jSONObjectOptJSONObject2, message);
        }

        @Override // com.sigmob.sdk.mraid2.m
        public void a(WindAdError error) {
            SigmobLog.d("Finishing the activity due to a problem: " + error);
            if (((com.sigmob.sdk.base.common.j) s.this).f79161b != null) {
                s.this.a(IntentActions.ACTION_INTERSTITIAL_FAIL);
            }
            ((com.sigmob.sdk.base.common.j) s.this).f79163d.a();
        }

        /* JADX INFO: Access modifiers changed from: private */
        public static /* synthetic */ void a(String str, BaseAdUnit baseAdUnit, String str2, String str3, Object obj) {
            if (obj instanceof PointEntitySigmob) {
                PointEntitySigmob pointEntitySigmob = (PointEntitySigmob) obj;
                pointEntitySigmob.setFinal_url(str);
                if (baseAdUnit.getAndroidMarket() == null) {
                    return;
                }
                Map<String, String> options = pointEntitySigmob.getOptions();
                options.put("app_package_name", str2);
                options.put("store_package_name", str3);
            }
        }

        @Override // com.sigmob.sdk.mraid2.m
        public void a(boolean useCustomClose) {
            if (useCustomClose) {
                s.this.r();
            } else {
                s.this.s();
            }
        }
    }

    /* JADX INFO: renamed from: com.sigmob.sdk.mraid2.s$4, reason: invalid class name */
    static /* synthetic */ class AnonymousClass4 {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        static final /* synthetic */ int[] f81303a;

        static {
            int[] iArr = new int[ConsoleMessage.MessageLevel.values().length];
            f81303a = iArr;
            try {
                iArr[ConsoleMessage.MessageLevel.ERROR.ordinal()] = 1;
            } catch (NoSuchFieldError unused) {
            }
        }
    }

    public s(Activity activity, BaseAdUnit baseAdUnit, Bundle intentExtras, Bundle savedInstanceState, String mBroadcastIdentifier, com.sigmob.sdk.base.common.k baseAdViewControllerListener) {
        super(activity, mBroadcastIdentifier, baseAdViewControllerListener);
        this.f81283o = false;
        this.f81284p = false;
        this.f81285q = true;
        this.f81287s = new Handler();
        this.f81289u = new View.OnClickListener() { // from class: com.sigmob.sdk.mraid2.s.3
            @Override // android.view.View.OnClickListener
            public void onClick(View view) {
                BaseAdUnit baseAdUnit2;
                Activity activityN = s.this.n();
                if (activityN == null || com.sigmob.sdk.base.utils.e.a(s.this.f81275g) || (baseAdUnit2 = s.this.f81275g.get(0)) == null) {
                    return;
                }
                s sVar = s.this;
                if (sVar.a(sVar.f81281m)) {
                    return;
                }
                s.this.f81281m = new com.sigmob.sdk.nativead.b(activityN, baseAdUnit2);
                s.this.f81281m.a();
                s.this.f81281m.a(new WindNativeAdData.DislikeInteractionCallback() { // from class: com.sigmob.sdk.mraid2.s.3.1
                    @Override // com.sigmob.windad.natives.WindNativeAdData.DislikeInteractionCallback
                    public void onCancel() {
                        s.this.q();
                    }

                    @Override // com.sigmob.windad.natives.WindNativeAdData.DislikeInteractionCallback
                    public void onSelected(int position, String value, boolean enforce) {
                        s.this.q();
                    }

                    @Override // com.sigmob.windad.natives.WindNativeAdData.DislikeInteractionCallback
                    public void onShow() {
                    }
                });
            }
        };
        String uuid = baseAdUnit.getUuid();
        this.f81275g = com.sigmob.sdk.base.common.h.e(uuid);
        this.f81276h = intentExtras;
        e eVarA = b.a().a(uuid);
        this.f81279k = eVarA;
        if (eVarA == null) {
            this.f81279k = new e(com.sigmob.sdk.b.e(), this.f81275g);
        }
        a(new View.OnApplyWindowInsetsListener() { // from class: com.sigmob.sdk.mraid2.r0
            @Override // android.view.View.OnApplyWindowInsetsListener
            public final WindowInsets onApplyWindowInsets(View view, WindowInsets windowInsets) {
                return this.f81273a.a(view, windowInsets);
            }
        });
    }

    public View a() {
        if (this.f81279k == null) {
            this.f81279k = new e(this.f79160a, this.f81275g);
        }
        this.f81279k.a(this.f79164e);
        this.f81279k.a(new f() { // from class: com.sigmob.sdk.mraid2.s.1
            @Override // com.sigmob.sdk.mraid2.f
            public void a() {
                s.this.c();
            }

            @Override // com.sigmob.sdk.mraid2.f
            public void b() {
                s.this.d();
            }

            @Override // com.sigmob.sdk.mraid2.f
            public void c() {
                s.this.f81288t = true;
            }

            @Override // com.sigmob.sdk.mraid2.f
            public void d() {
                s.this.a(IntentActions.ACTION_INTERSTITIAL_SHOW);
            }

            @Override // com.sigmob.sdk.mraid2.f
            public void a(int red, int green, int blue, int alpha) {
                try {
                    ViewGroup viewGroupM = s.this.m();
                    if (alpha == 0) {
                        viewGroupM.setBackgroundColor(0);
                    } else {
                        viewGroupM.setBackgroundColor(Color.argb((int) ((alpha / 100.0f) * 255.0f), red, green, blue));
                    }
                } catch (Throwable th) {
                    th.printStackTrace();
                }
            }

            @Override // com.sigmob.sdk.mraid2.f
            public void a(BaseAdUnit adUnit) {
                if (adUnit == null && com.sigmob.sdk.base.utils.e.b(s.this.f81275g)) {
                    adUnit = s.this.f81275g.get(0);
                }
                Activity activityN = s.this.n();
                if (activityN == null || adUnit == null) {
                    return;
                }
                s sVar = s.this;
                if (sVar.a(sVar.f81281m)) {
                    return;
                }
                s.this.f81281m = new com.sigmob.sdk.nativead.b(activityN, adUnit);
                s.this.f81281m.a();
                s.this.f81281m.a(new WindNativeAdData.DislikeInteractionCallback() { // from class: com.sigmob.sdk.mraid2.s.1.1
                    @Override // com.sigmob.windad.natives.WindNativeAdData.DislikeInteractionCallback
                    public void onCancel() {
                        s.this.a("feedbackDidDisappear", true);
                        s.this.q();
                    }

                    @Override // com.sigmob.windad.natives.WindNativeAdData.DislikeInteractionCallback
                    public void onSelected(int position, String value, boolean enforce) {
                        s.this.a("feedbackDidDisappear", true);
                        s.this.q();
                    }

                    @Override // com.sigmob.windad.natives.WindNativeAdData.DislikeInteractionCallback
                    public void onShow() {
                        s.this.a("feedbackDidAppear", false);
                    }
                });
            }

            @Override // com.sigmob.sdk.mraid2.f
            public boolean a(ConsoleMessage consoleMessage) {
                if (AnonymousClass4.f81303a[consoleMessage.messageLevel().ordinal()] == 1) {
                    SigmobLog.e("onConsoleMessage " + consoleMessage.message());
                    ad.a("h5_error", "mraid2", 0, consoleMessage.message(), (WindAdRequest) null, (LoadAdRequest) null, s.this.f81275g.get(0), (ad.a) null);
                }
                return false;
            }

            @Override // com.sigmob.sdk.mraid2.f
            public boolean a(String message, JsResult result) {
                return false;
            }
        });
        this.f81279k.a(new AnonymousClass2());
        return this.f81279k.e();
    }

    @Override // com.sigmob.sdk.base.common.j
    public boolean j() {
        return false;
    }

    @Override // com.sigmob.sdk.base.common.j
    public void o() {
        e eVar = this.f81279k;
        if (eVar != null) {
            eVar.a(this.f81275g.get(0));
        }
        this.f81287s.postDelayed(new Runnable() { // from class: com.sigmob.sdk.mraid2.q0
            @Override // java.lang.Runnable
            public final void run() {
                this.f81263b.p();
            }
        }, 5000L);
        a(IntentActions.ACTION_INTERSTITIAL_VOPEN);
    }

    @SuppressLint({"ClickableViewAccessibility"})
    private void b(Context context, int initialVisibility) {
        if (this.f81280l != null) {
            return;
        }
        ak akVar = new ak(context);
        this.f81280l = akVar;
        akVar.setVisibility(initialVisibility);
        this.f81280l.setId(ClientMetadata.generateViewId());
        int iDipsToIntPixels = Dips.dipsToIntPixels(22.0f, context);
        RelativeLayout.LayoutParams layoutParams = new RelativeLayout.LayoutParams(iDipsToIntPixels, iDipsToIntPixels);
        a(3, layoutParams);
        m().addView(this.f81280l, layoutParams);
        this.f81280l.setOnTouchListener(new View.OnTouchListener() { // from class: com.sigmob.sdk.mraid2.t0
            @Override // android.view.View.OnTouchListener
            public final boolean onTouch(View view, MotionEvent motionEvent) {
                return this.f81307b.a(view, motionEvent);
            }
        });
        this.f81280l.a(this.f81275g.get(0));
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void p() {
        if (this.f81284p) {
            return;
        }
        ad.a("h5_state", "0", com.sigmob.sdk.base.utils.e.a(this.f81275g) ? null : this.f81275g.get(0), (ad.a) null);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void r() {
        ak akVar = this.f81280l;
        if (akVar != null) {
            akVar.setVisibility(4);
        }
        com.sigmob.sdk.base.views.s sVar = this.f81286r;
        if (sVar != null) {
            sVar.setVisibility(4);
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void s() {
        if (this.f81280l == null) {
            b(this.f79160a, 0);
        }
        this.f81280l.setVisibility(0);
        a(l(), 0);
    }

    @Override // com.sigmob.sdk.videoAd.b, com.sigmob.sdk.base.common.j
    public void e() {
        super.e();
        n().getWindow().addFlags(16778240);
        b(n(), this.f81277i, this.f81276h);
        BaseAdUnit baseAdUnit = this.f81275g.get(0);
        if (com.sigmob.sdk.base.utils.w.b(baseAdUnit) && (baseAdUnit.getMaterial().theme_data.intValue() == 1 || baseAdUnit.getTemplateType() == 1)) {
            b();
            m().setBackgroundColor(Color.argb(127, 0, 0, 0));
        }
        m().addView(a(), new FrameLayout.LayoutParams(-1, -1));
    }

    @Override // com.sigmob.sdk.base.common.j
    public void f() {
        if (!this.f81283o) {
            this.f81279k.a();
        } else {
            this.f81285q = true;
            a(IntentActions.ACTION_INTERSTITIAL_DISMISS);
        }
    }

    @Override // com.sigmob.sdk.base.common.j
    public void g() {
        this.f81279k.b();
    }

    @Override // com.sigmob.sdk.base.common.j
    public void h() {
        e eVar = this.f81279k;
        if (eVar != null) {
            eVar.d();
        }
        q();
        if (com.sigmob.sdk.base.utils.e.b(this.f81275g)) {
            if (this.f81282n) {
                BaseAdUnit baseAdUnit = this.f81275g.get(0);
                if (com.sigmob.sdk.base.utils.w.b(baseAdUnit)) {
                    com.sigmob.sdk.base.network.h.a(baseAdUnit, com.sigmob.sdk.base.common.a.f78887u);
                    ad.a(com.sigmob.sdk.base.common.a.f78887u, (String) null, baseAdUnit, (ad.a) null);
                }
            }
            for (BaseAdUnit baseAdUnit2 : this.f81275g) {
                if (baseAdUnit2 != null) {
                    baseAdUnit2.destroy();
                }
            }
        }
        if (!this.f81283o || !this.f81285q) {
            this.f81285q = true;
            a(IntentActions.ACTION_INTERSTITIAL_DISMISS);
        }
        Sigmob.getInstance().getMacroCommon().clearMacro();
        super.h();
    }

    @Override // com.sigmob.sdk.base.common.j
    public void i() {
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ WindowInsets a(View view, WindowInsets windowInsets) {
        this.f81279k.a(windowInsets, this.f81288t);
        return windowInsets;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void q() {
        com.sigmob.sdk.nativead.b bVar = this.f81281m;
        if (bVar == null) {
            return;
        }
        bVar.dismiss();
        this.f81281m.b();
        this.f81281m = null;
    }

    private void a(int position, RelativeLayout.LayoutParams layoutParams) {
        int i10;
        int iDipsToIntPixels = Dips.dipsToIntPixels(10.0f, this.f79160a);
        if (position == 1 || position == 2) {
            layoutParams.addRule(10);
            i10 = 9;
        } else {
            if (position != 3 && position != 4) {
                return;
            }
            layoutParams.addRule(10);
            i10 = 11;
        }
        layoutParams.addRule(i10);
        layoutParams.setMargins(iDipsToIntPixels, iDipsToIntPixels * 2, iDipsToIntPixels, iDipsToIntPixels);
    }

    private void a(Context context, int visibility) {
        if (this.f81286r == null) {
            com.sigmob.sdk.base.views.s sVar = new com.sigmob.sdk.base.views.s(context);
            this.f81286r = sVar;
            sVar.setText("反馈");
            this.f81286r.setOnClickListener(this.f81289u);
            this.f81286r.setId(ClientMetadata.generateViewId());
            int iDipsToIntPixels = Dips.dipsToIntPixels(3.0f, this.f79160a);
            RelativeLayout.LayoutParams layoutParams = new RelativeLayout.LayoutParams(Dips.dipsToIntPixels(45.0f, context), Dips.dipsToIntPixels(30.0f, context));
            layoutParams.addRule(0, this.f81280l.getId());
            layoutParams.addRule(6, this.f81280l.getId());
            layoutParams.setMargins(0, -iDipsToIntPixels, 0, 0);
            m().addView(this.f81286r, layoutParams);
        }
        com.sigmob.sdk.base.views.s sVar2 = this.f81286r;
        if (sVar2 != null) {
            sVar2.setVisibility(visibility);
        }
    }

    @Override // com.sigmob.sdk.base.common.j
    public void a(Configuration configuration) {
        e eVar = this.f81279k;
        if (eVar == null) {
            return;
        }
        eVar.a(configuration.orientation);
    }

    @Override // com.sigmob.sdk.base.common.j
    public void a(Bundle outState) {
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static /* synthetic */ void a(BaseAdUnit baseAdUnit, ClickCommon clickCommon, JSONObject jSONObject, Object obj) {
        if (obj instanceof PointEntitySigmob) {
            PointEntitySigmob pointEntitySigmob = (PointEntitySigmob) obj;
            pointEntitySigmob.setScene_id(baseAdUnit.getAd_scene_id());
            pointEntitySigmob.setScene_desc(baseAdUnit.getAd_scene_desc());
            pointEntitySigmob.setIs_deeplink(clickCommon.isDeeplink);
            pointEntitySigmob.setFinal_url(clickCommon.clickUrl);
            pointEntitySigmob.setCoordinate(clickCommon.clickCoordinate);
            pointEntitySigmob.setVtime(String.format(Locale.getDefault(), "%.2f", Float.valueOf(0.0f)));
            Map<String, String> options = pointEntitySigmob.getOptions();
            if (com.sigmob.sdk.base.utils.w.b(jSONObject)) {
                Iterator<String> itKeys = jSONObject.keys();
                while (itKeys.hasNext()) {
                    String next = itKeys.next();
                    options.put(next, jSONObject.optString(next));
                }
            }
            options.put("cwidth", String.valueOf(ClientMetadata.getInstance().getDeviceScreenRealWidthDip()));
            options.put("cheight", String.valueOf(ClientMetadata.getInstance().getDeviceScreenRealHeightDip()));
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void a(c webView, BaseAdUnit adUnit, String key, String url, JSONObject logData, String defaultUrl, boolean inApp) {
        String str;
        BaseAdUnit baseAdUnit;
        BaseAdUnit baseAdUnit2;
        String strA;
        Context contextL = l();
        String message = null;
        String packageName = adUnit == null ? null : adUnit.getPackageName();
        String message2 = "";
        if (am.OPEN_WITH_BROWSER.a(Uri.parse(url), 0)) {
            try {
                if (inApp) {
                    if (adUnit == null) {
                        baseAdUnit = webView.getAdUnitList().get(0);
                        baseAdUnit.setRecord(false);
                    } else {
                        adUnit.setRecord(true);
                        baseAdUnit = adUnit;
                    }
                    baseAdUnit.setUrl(url);
                    com.sigmob.sdk.base.common.h.a(baseAdUnit);
                    BaseAdActivity.a(contextL, (Class<? extends BaseAdActivity>) AdActivity.class, baseAdUnit);
                } else {
                    com.sigmob.sdk.base.utils.g.b(contextL, new Intent("android.intent.action.VIEW", Uri.parse(url)), packageName);
                }
                str = "";
            } catch (Exception e10) {
                String message3 = e10.getMessage();
                if (com.sigmob.sdk.base.utils.t.b(defaultUrl)) {
                    try {
                        com.sigmob.sdk.base.utils.g.b(contextL, new Intent("android.intent.action.VIEW", Uri.parse(defaultUrl)), packageName);
                    } catch (Exception e11) {
                        e11.printStackTrace();
                        message = e10.getMessage();
                    }
                } else {
                    message = message3;
                }
                str = message;
            }
        } else {
            try {
                com.sigmob.sdk.base.common.h.d(adUnit);
                Uri uri = Uri.parse(url);
                if (adUnit == null) {
                    strA = null;
                } else {
                    try {
                        strA = com.sigmob.sdk.base.utils.g.a(this.f79160a, uri, adUnit.getMarketPackageNameList());
                    } catch (Exception e12) {
                        e = e12;
                        com.sigmob.sdk.base.common.h.d((BaseAdUnit) null);
                        message2 = e.getMessage();
                    }
                }
                com.sigmob.sdk.base.utils.g.a(contextL, uri, strA, com.sigmob.sdk.base.utils.w.b(adUnit) && adUnit.enableSmallWindow(null));
            } catch (Exception e13) {
                e = e13;
            }
            try {
                if (com.sigmob.sdk.base.utils.w.b(adUnit) && com.sigmob.sdk.base.utils.t.b(message2)) {
                    adUnit.getClickCommon().isDeeplink = "0";
                    com.sigmob.sdk.manager.b.b(adUnit, com.sigmob.sdk.base.common.a.H, url);
                }
                if (!com.sigmob.sdk.base.utils.t.b(message2) || !com.sigmob.sdk.base.utils.t.b(defaultUrl)) {
                    message = message2;
                } else if (inApp) {
                    if (adUnit == null) {
                        baseAdUnit2 = webView.getAdUnitList().get(0);
                        baseAdUnit2.setRecord(false);
                    } else {
                        adUnit.setRecord(true);
                        baseAdUnit2 = adUnit;
                    }
                    baseAdUnit2.setUrl(defaultUrl);
                    com.sigmob.sdk.base.common.h.a(baseAdUnit2);
                    BaseAdActivity.a(contextL, (Class<? extends BaseAdActivity>) AdActivity.class, baseAdUnit2);
                } else {
                    com.sigmob.sdk.base.utils.g.b(contextL, new Intent("android.intent.action.VIEW", Uri.parse(defaultUrl)), packageName);
                }
                str = message;
            } catch (Exception e14) {
                String message4 = e14.getMessage();
                e14.printStackTrace();
                str = message4;
            }
        }
        a(webView, adUnit, key, logData, str);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void a(c webView, final BaseAdUnit adUnit, String key, final JSONObject logData, String errMsg) {
        d mraidBridge = webView.getMraidBridge();
        try {
            if (com.sigmob.sdk.base.utils.t.b(errMsg) && com.sigmob.sdk.base.utils.w.b(mraidBridge)) {
                mraidBridge.b(key + "_failed", errMsg);
                return;
            }
            if (adUnit != null && logData != null) {
                String requestId = adUnit.getRequestId();
                int iOptInt = logData.optInt(ClickCommon.CLICK_LOSE_RATE, 0);
                int iOptInt2 = logData.optInt(ClickCommon.CLICK_CB_STATE, com.sigmob.sdk.base.utils.d.f79716b);
                com.sigmob.sdk.base.utils.d.a(requestId, Integer.valueOf(iOptInt), Integer.valueOf(iOptInt2));
                adUnit.getMacroCommon().addMarcoKey(SigMacroCommon._ISNC_, String.valueOf(iOptInt2));
                adUnit.getClickCommon().click_lose_rate = Integer.valueOf(iOptInt);
                adUnit.getClickCommon().click_cb_state = Integer.valueOf(iOptInt2);
            }
            a(IntentActions.ACTION_INTERSTITIAL_CLICK);
            if (com.sigmob.sdk.base.utils.w.b(mraidBridge)) {
                mraidBridge.b(key + "_success", "");
            }
            if (adUnit != null && adUnit.isRecord()) {
                final ClickCommon clickCommon = adUnit.getClickCommon();
                String strOptString = logData == null ? null : logData.optString(PointParamKey.CATEGORY);
                if (!com.sigmob.sdk.base.utils.t.b(strOptString)) {
                    strOptString = com.sigmob.sdk.base.a.ENDCARD.name().toLowerCase();
                }
                ad.a(strOptString, "click", adUnit, new ad.a() { // from class: com.sigmob.sdk.mraid2.s0
                    @Override // com.sigmob.sdk.base.common.ad.a
                    public final void onAddExtra(Object obj) {
                        s.a(adUnit, clickCommon, logData, obj);
                    }
                });
                if (com.sigmob.sdk.base.utils.w.b(logData) && com.sigmob.sdk.base.utils.t.a((CharSequence) logData.optString(ClickCommon.CLICK_AREA), (CharSequence) ClickCommon.CLICK_AREA_COMPANION)) {
                    return;
                }
                com.sigmob.sdk.base.network.h.a(adUnit, "click");
            }
        } catch (Exception e10) {
            e10.printStackTrace();
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void a(String event, boolean isViewable) {
        c cVarC;
        d mraidBridge;
        e eVar = this.f81279k;
        if (eVar == null || (cVarC = eVar.c()) == null || (mraidBridge = cVarC.getMraidBridge()) == null) {
            return;
        }
        mraidBridge.a(event, (HashMap<String, Object>) null);
        mraidBridge.b(isViewable);
    }

    public void a(boolean status) {
        if (com.sigmob.sdk.base.utils.w.b(this.f81279k)) {
            this.f81279k.a(status);
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ boolean a(View view, MotionEvent motionEvent) {
        if (motionEvent.getAction() == 1) {
            this.f81283o = true;
            this.f81282n = true;
            k().a();
        }
        return true;
    }
}
