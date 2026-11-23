package com.sigmob.sdk.base.common;

import android.app.Activity;
import android.content.Context;
import android.net.Uri;
import com.byazt.bv.BaseConstants;
import com.czhj.sdk.common.network.JsonRequest;
import com.czhj.sdk.common.network.Networking;
import com.czhj.sdk.common.network.SigmobRequestQueue;
import com.czhj.sdk.common.utils.FileUtil;
import com.czhj.sdk.common.utils.Preconditions;
import com.czhj.sdk.common.utils.TouchLocation;
import com.czhj.sdk.logger.SigmobLog;
import com.czhj.volley.VolleyError;
import com.czhj.wire.Wire;
import com.sigmob.sdk.base.models.BaseAdUnit;
import com.sigmob.sdk.base.models.ClickCommon;
import com.sigmob.sdk.base.models.SigMacroCommon;
import com.sigmob.sdk.base.models.rtb.AndroidMarket;
import com.sigmob.sdk.base.mta.PointCategory;
import com.sigmob.sdk.base.mta.PointEntitySigmob;
import com.sigmob.sdk.base.mta.PointEntitySigmobError;
import java.lang.ref.WeakReference;
import java.util.ArrayList;
import java.util.Collections;
import java.util.List;
import java.util.Map;
import org.json.JSONObject;

/* JADX INFO: loaded from: classes5.dex */
public class i {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public static final String f79120a = "i";

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    protected Map<String, String> f79121b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    protected String f79122c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    protected String f79123d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    protected String f79124e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    protected String f79125f;

    /* JADX INFO: renamed from: g, reason: collision with root package name */
    protected String f79126g;

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    protected String f79127h;

    /* JADX INFO: renamed from: i, reason: collision with root package name */
    protected String f79128i;

    /* JADX INFO: renamed from: k, reason: collision with root package name */
    public boolean f79130k;

    /* JADX INFO: renamed from: m, reason: collision with root package name */
    private boolean f79132m;

    /* JADX INFO: renamed from: n, reason: collision with root package name */
    private boolean f79133n;

    /* JADX INFO: renamed from: o, reason: collision with root package name */
    private String f79134o;

    /* JADX INFO: renamed from: p, reason: collision with root package name */
    private boolean f79135p;

    /* JADX INFO: renamed from: q, reason: collision with root package name */
    private ac f79136q;

    /* JADX INFO: renamed from: r, reason: collision with root package name */
    private com.sigmob.sdk.base.views.n f79137r;

    /* JADX INFO: renamed from: s, reason: collision with root package name */
    private WeakReference<Activity> f79138s;

    /* JADX INFO: renamed from: t, reason: collision with root package name */
    private com.sigmob.sdk.base.views.n.b f79139t;

    /* JADX INFO: renamed from: u, reason: collision with root package name */
    private WeakReference<BaseAdUnit> f79140u;

    /* JADX INFO: renamed from: v, reason: collision with root package name */
    private boolean f79141v;

    /* JADX INFO: renamed from: w, reason: collision with root package name */
    private int f79142w;

    /* JADX INFO: renamed from: j, reason: collision with root package name */
    protected int f79129j = 1;

    /* JADX INFO: renamed from: l, reason: collision with root package name */
    private final List<com.sigmob.sdk.videoAd.d> f79131l = new ArrayList();

    /* JADX INFO: renamed from: com.sigmob.sdk.base.common.i$2, reason: invalid class name */
    class AnonymousClass2 implements JsonRequest.Listener {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        final /* synthetic */ BaseAdUnit f79145a;

        AnonymousClass2(final BaseAdUnit val$adUnit) {
            this.f79145a = val$adUnit;
        }

        @Override // com.czhj.volley.Response.ErrorListener
        public void onErrorResponse(VolleyError error) {
            ad.a("download_start", "0", this.f79145a, new ad.a() { // from class: com.sigmob.sdk.base.common.y0
                @Override // com.sigmob.sdk.base.common.ad.a
                public final void onAddExtra(Object obj) {
                    this.f79301a.b(obj);
                }
            });
            ad.a("download_start", 0, error.getMessage(), this.f79145a, new ad.a() { // from class: com.sigmob.sdk.base.common.z0
                @Override // com.sigmob.sdk.base.common.ad.a
                public final void onAddExtra(Object obj) {
                    this.f79311a.a(obj);
                }
            });
            SigmobLog.e(i.f79120a + "handleFourDownload#onErrorResponse: error = " + error.getMessage());
        }

        @Override // com.czhj.sdk.common.network.JsonRequest.Listener
        public void onSuccess(JSONObject response) {
            try {
                SigmobLog.d(i.f79120a + "handleFourDownload#onSuccess: response = " + response);
                if (response.getInt("ret") == 0) {
                    String string = response.getJSONObject("data").getString("dstlink");
                    this.f79145a.getMacroCommon().addMarcoKey(SigMacroCommon._CLICKID_, response.getJSONObject("data").getString("clickid"));
                    i.this.f79134o = string;
                    q.a(string, this.f79145a);
                } else {
                    ad.a("download_start", "0", this.f79145a, new ad.a() { // from class: com.sigmob.sdk.base.common.a1
                        @Override // com.sigmob.sdk.base.common.ad.a
                        public final void onAddExtra(Object obj) {
                            this.f78894a.f(obj);
                        }
                    });
                    ad.a("download_start", 0, response.toString(), this.f79145a, new ad.a() { // from class: com.sigmob.sdk.base.common.b1
                        @Override // com.sigmob.sdk.base.common.ad.a
                        public final void onAddExtra(Object obj) {
                            this.f79021a.e(obj);
                        }
                    });
                }
            } catch (Throwable th) {
                SigmobLog.e(i.f79120a + "handleFourDownload#onSuccess: error = " + th.getMessage());
                ad.a("download_start", "0", this.f79145a, new ad.a() { // from class: com.sigmob.sdk.base.common.c1
                    @Override // com.sigmob.sdk.base.common.ad.a
                    public final void onAddExtra(Object obj) {
                        this.f79046a.d(obj);
                    }
                });
                ad.a("download_start", 0, th.getMessage(), this.f79145a, new ad.a() { // from class: com.sigmob.sdk.base.common.d1
                    @Override // com.sigmob.sdk.base.common.ad.a
                    public final void onAddExtra(Object obj) {
                        this.f79055a.c(obj);
                    }
                });
            }
        }

        /* JADX INFO: Access modifiers changed from: private */
        public /* synthetic */ void a(Object obj) {
            if (obj instanceof PointEntitySigmobError) {
                ((PointEntitySigmobError) obj).setFinal_url(i.this.f79134o);
            }
        }

        /* JADX INFO: Access modifiers changed from: private */
        public /* synthetic */ void b(Object obj) {
            if (obj instanceof PointEntitySigmob) {
                ((PointEntitySigmob) obj).setFinal_url(i.this.f79134o);
            }
        }

        /* JADX INFO: Access modifiers changed from: private */
        public /* synthetic */ void c(Object obj) {
            if (obj instanceof PointEntitySigmobError) {
                ((PointEntitySigmobError) obj).setFinal_url(i.this.f79134o);
            }
        }

        /* JADX INFO: Access modifiers changed from: private */
        public /* synthetic */ void d(Object obj) {
            if (obj instanceof PointEntitySigmob) {
                ((PointEntitySigmob) obj).setFinal_url(i.this.f79134o);
            }
        }

        /* JADX INFO: Access modifiers changed from: private */
        public /* synthetic */ void e(Object obj) {
            if (obj instanceof PointEntitySigmobError) {
                ((PointEntitySigmobError) obj).setFinal_url(i.this.f79134o);
            }
        }

        /* JADX INFO: Access modifiers changed from: private */
        public /* synthetic */ void f(Object obj) {
            if (obj instanceof PointEntitySigmob) {
                ((PointEntitySigmob) obj).setFinal_url(i.this.f79134o);
            }
        }
    }

    /* JADX INFO: renamed from: com.sigmob.sdk.base.common.i$3, reason: invalid class name */
    class AnonymousClass3 implements JsonRequest.Listener {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        final /* synthetic */ BaseAdUnit f79147a;

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        final /* synthetic */ String f79148b;

        AnonymousClass3(final BaseAdUnit val$adUnit, final String val$tempUrl) {
            this.f79147a = val$adUnit;
            this.f79148b = val$tempUrl;
        }

        /* JADX INFO: Access modifiers changed from: private */
        public static /* synthetic */ void a(String str, Object obj) {
            if (obj instanceof PointEntitySigmobError) {
                ((PointEntitySigmobError) obj).setFinal_url(str);
            }
        }

        /* JADX INFO: Access modifiers changed from: private */
        public static /* synthetic */ void b(String str, Object obj) {
            if (obj instanceof PointEntitySigmob) {
                ((PointEntitySigmob) obj).setFinal_url(str);
            }
        }

        /* JADX INFO: Access modifiers changed from: private */
        public static /* synthetic */ void c(String str, Object obj) {
            if (obj instanceof PointEntitySigmobError) {
                ((PointEntitySigmobError) obj).setFinal_url(str);
            }
        }

        /* JADX INFO: Access modifiers changed from: private */
        public static /* synthetic */ void d(String str, Object obj) {
            if (obj instanceof PointEntitySigmob) {
                ((PointEntitySigmob) obj).setFinal_url(str);
            }
        }

        /* JADX INFO: Access modifiers changed from: private */
        public static /* synthetic */ void e(String str, Object obj) {
            if (obj instanceof PointEntitySigmobError) {
                ((PointEntitySigmobError) obj).setFinal_url(str);
            }
        }

        /* JADX INFO: Access modifiers changed from: private */
        public static /* synthetic */ void f(String str, Object obj) {
            if (obj instanceof PointEntitySigmob) {
                ((PointEntitySigmob) obj).setFinal_url(str);
            }
        }

        @Override // com.czhj.volley.Response.ErrorListener
        public void onErrorResponse(VolleyError error) {
            BaseAdUnit baseAdUnit = this.f79147a;
            final String str = this.f79148b;
            ad.a("download_start", "0", baseAdUnit, new ad.a() { // from class: com.sigmob.sdk.base.common.i1
                @Override // com.sigmob.sdk.base.common.ad.a
                public final void onAddExtra(Object obj) {
                    i.AnonymousClass3.b(str, obj);
                }
            });
            String message = error.getMessage();
            BaseAdUnit baseAdUnit2 = this.f79147a;
            final String str2 = this.f79148b;
            ad.a("download_start", 0, message, baseAdUnit2, new ad.a() { // from class: com.sigmob.sdk.base.common.j1
                @Override // com.sigmob.sdk.base.common.ad.a
                public final void onAddExtra(Object obj) {
                    i.AnonymousClass3.a(str2, obj);
                }
            });
            SigmobLog.e(i.f79120a + "handleMRAID2Download#onErrorResponse: error = " + error.getMessage());
        }

        @Override // com.czhj.sdk.common.network.JsonRequest.Listener
        public void onSuccess(JSONObject response) {
            try {
                SigmobLog.d(i.f79120a + "handleMRAID2Download#onSuccess: response = " + response);
                if (response.getInt("ret") == 0) {
                    String string = response.getJSONObject("data").getString("dstlink");
                    this.f79147a.getMacroCommon().addMarcoKey(SigMacroCommon._CLICKID_, response.getJSONObject("data").getString("clickid"));
                    q.a(string, this.f79147a);
                } else {
                    BaseAdUnit baseAdUnit = this.f79147a;
                    final String str = this.f79148b;
                    ad.a("download_start", "0", baseAdUnit, new ad.a() { // from class: com.sigmob.sdk.base.common.e1
                        @Override // com.sigmob.sdk.base.common.ad.a
                        public final void onAddExtra(Object obj) {
                            i.AnonymousClass3.f(str, obj);
                        }
                    });
                    String string2 = response.toString();
                    BaseAdUnit baseAdUnit2 = this.f79147a;
                    final String str2 = this.f79148b;
                    ad.a("download_start", 0, string2, baseAdUnit2, new ad.a() { // from class: com.sigmob.sdk.base.common.f1
                        @Override // com.sigmob.sdk.base.common.ad.a
                        public final void onAddExtra(Object obj) {
                            i.AnonymousClass3.e(str2, obj);
                        }
                    });
                }
            } catch (Throwable th) {
                SigmobLog.e(i.f79120a + "handleMRAID2Download#onSuccess: error = " + th.getMessage());
                BaseAdUnit baseAdUnit3 = this.f79147a;
                final String str3 = this.f79148b;
                ad.a("download_start", "0", baseAdUnit3, new ad.a() { // from class: com.sigmob.sdk.base.common.g1
                    @Override // com.sigmob.sdk.base.common.ad.a
                    public final void onAddExtra(Object obj) {
                        i.AnonymousClass3.d(str3, obj);
                    }
                });
                String message = th.getMessage();
                BaseAdUnit baseAdUnit4 = this.f79147a;
                final String str4 = this.f79148b;
                ad.a("download_start", 0, message, baseAdUnit4, new ad.a() { // from class: com.sigmob.sdk.base.common.h1
                    @Override // com.sigmob.sdk.base.common.ad.a
                    public final void onAddExtra(Object obj) {
                        i.AnonymousClass3.c(str4, obj);
                    }
                });
            }
        }
    }

    /* JADX INFO: renamed from: com.sigmob.sdk.base.common.i$4, reason: invalid class name */
    class AnonymousClass4 implements an.b {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        final /* synthetic */ BaseAdUnit f79149a;

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        final /* synthetic */ boolean f79150b;

        /* JADX INFO: renamed from: c, reason: collision with root package name */
        final /* synthetic */ AndroidMarket f79151c;

        /* JADX INFO: renamed from: d, reason: collision with root package name */
        final /* synthetic */ boolean f79152d;

        /* JADX INFO: renamed from: e, reason: collision with root package name */
        final /* synthetic */ com.sigmob.sdk.base.a f79153e;

        AnonymousClass4(final BaseAdUnit val$baseAdUnit, final boolean val$isRecord, final AndroidMarket val$androidMarket, final boolean val$showAppElement, final com.sigmob.sdk.base.a val$clickUIType) {
            this.f79149a = val$baseAdUnit;
            this.f79150b = val$isRecord;
            this.f79151c = val$androidMarket;
            this.f79152d = val$showAppElement;
            this.f79153e = val$clickUIType;
        }

        @Override // com.sigmob.sdk.base.common.an.b
        public void a(final String url, am urlAction) {
            SigmobLog.d(i.f79120a + "urlHandlingSucceeded: action = " + urlAction.name() + ", url = " + url);
            this.f79149a.getClickCommon().is_final_click = true;
            if (!this.f79149a.getAd().forbiden_parse_landingpage.booleanValue()) {
                ad.a(this.f79149a, urlAction.name(), url);
            }
            this.f79149a.getClickCommon().isDeeplink = "0";
            int i10 = AnonymousClass5.f79156b[urlAction.ordinal()];
            if (i10 == 3) {
                if (this.f79150b) {
                    com.sigmob.sdk.manager.b.b(this.f79149a, a.G, url);
                }
                this.f79149a.getClickCommon().isDeeplink = "1";
            } else if (i10 != 5) {
                if (i10 == 6) {
                    if (this.f79152d && i.this.j()) {
                        this.f79149a.getClickCommon().is_final_click = false;
                    } else {
                        i.this.f(url);
                    }
                }
            } else if (this.f79150b) {
                AndroidMarket androidMarket = this.f79151c;
                if (androidMarket != null) {
                    ad.a(PointCategory.APK_CLICK, ((Integer) Wire.get(androidMarket.type, 0)).intValue() == 0 ? BaseConstants.SCHEME_MARKET : "mimarket", this.f79149a, (ad.a) null);
                    if (com.sigmob.sdk.base.utils.t.b(this.f79151c.app_package_name)) {
                        try {
                            FileUtil.writeToCache(this.f79149a, com.sigmob.sdk.base.utils.o.a((Object) this.f79151c.app_package_name).getAbsolutePath());
                        } catch (Throwable th) {
                            SigmobLog.e(i.f79120a + "urlHandlingSucceeded: error = " + th.getMessage());
                        }
                    }
                }
                BaseAdUnit baseAdUnit = this.f79149a;
                final AndroidMarket androidMarket2 = this.f79151c;
                ad.a(PointCategory.OPEN_MARKET, (String) null, baseAdUnit, new ad.a() { // from class: com.sigmob.sdk.base.common.l1
                    @Override // com.sigmob.sdk.base.common.ad.a
                    public final void onAddExtra(Object obj) {
                        i.AnonymousClass4.b(url, androidMarket2, obj);
                    }
                });
            }
            this.f79149a.setCustomDeeplink(null);
            this.f79149a.setCustomAndroidMarket(null);
            this.f79149a.setCustomLandPageUrl(null);
            if (i.this.f79136q != null) {
                i.this.f79136q.onAdClick(this.f79150b, this.f79153e);
            }
        }

        @Override // com.sigmob.sdk.base.common.an.b
        public void b(final String url, am urlAction) {
            SigmobLog.d(i.f79120a + "urlHandlingFailed: action = " + urlAction.name() + ", url = " + url);
            this.f79149a.getClickCommon().isDeeplink = "0";
            int i10 = AnonymousClass5.f79156b[urlAction.ordinal()];
            if (i10 == 3 || i10 == 4) {
                if (this.f79150b) {
                    com.sigmob.sdk.manager.b.b(this.f79149a, a.H, url);
                    return;
                }
                return;
            }
            if (i10 == 5) {
                if (this.f79150b) {
                    BaseAdUnit baseAdUnit = this.f79149a;
                    final AndroidMarket androidMarket = this.f79151c;
                    ad.a(PointCategory.OPEN_MARKET_FAILED, url, baseAdUnit, new ad.a() { // from class: com.sigmob.sdk.base.common.k1
                        @Override // com.sigmob.sdk.base.common.ad.a
                        public final void onAddExtra(Object obj) {
                            i.AnonymousClass4.a(url, androidMarket, obj);
                        }
                    });
                    return;
                }
                return;
            }
            if (i10 != 8) {
                return;
            }
            if (com.sigmob.sdk.base.utils.t.a((CharSequence) url) && !this.f79149a.getAd().forbiden_parse_landingpage.booleanValue()) {
                ad.a(this.f79149a, urlAction.name(), url);
            }
            this.f79149a.setCustomDeeplink(null);
            this.f79149a.setCustomAndroidMarket(null);
            this.f79149a.setCustomLandPageUrl(null);
            if (i.this.f79136q != null) {
                i.this.f79136q.onAdClick(this.f79150b, this.f79153e);
            }
        }

        /* JADX INFO: Access modifiers changed from: private */
        public static /* synthetic */ void a(String str, AndroidMarket androidMarket, Object obj) {
            if (obj instanceof PointEntitySigmob) {
                PointEntitySigmob pointEntitySigmob = (PointEntitySigmob) obj;
                pointEntitySigmob.setFinal_url(str);
                Map<String, String> options = pointEntitySigmob.getOptions();
                options.put("app_package_name", androidMarket.app_package_name);
                options.put("store_package_name", androidMarket.appstore_package_name);
                pointEntitySigmob.setOptions(options);
            }
        }

        /* JADX INFO: Access modifiers changed from: private */
        public static /* synthetic */ void b(String str, AndroidMarket androidMarket, Object obj) {
            if (obj instanceof PointEntitySigmob) {
                PointEntitySigmob pointEntitySigmob = (PointEntitySigmob) obj;
                pointEntitySigmob.setFinal_url(str);
                if (androidMarket == null) {
                    return;
                }
                Map<String, String> options = pointEntitySigmob.getOptions();
                options.put("app_package_name", androidMarket.app_package_name);
                options.put("store_package_name", androidMarket.appstore_package_name);
                pointEntitySigmob.setOptions(options);
            }
        }
    }

    /* JADX INFO: renamed from: com.sigmob.sdk.base.common.i$5, reason: invalid class name */
    static /* synthetic */ class AnonymousClass5 {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        static final /* synthetic */ int[] f79155a;

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        static final /* synthetic */ int[] f79156b;

        static {
            int[] iArr = new int[am.values().length];
            f79156b = iArr;
            try {
                iArr[am.FOLLOW_PACKAGE_NAME.ordinal()] = 1;
            } catch (NoSuchFieldError unused) {
            }
            try {
                f79156b[am.IGNORE_ABOUT_SCHEME.ordinal()] = 2;
            } catch (NoSuchFieldError unused2) {
            }
            try {
                f79156b[am.MINI_PROGRAM.ordinal()] = 3;
            } catch (NoSuchFieldError unused3) {
            }
            try {
                f79156b[am.FOLLOW_DEEP_LINK.ordinal()] = 4;
            } catch (NoSuchFieldError unused4) {
            }
            try {
                f79156b[am.MARKET_SCHEME.ordinal()] = 5;
            } catch (NoSuchFieldError unused5) {
            }
            try {
                f79156b[am.DOWNLOAD_APK.ordinal()] = 6;
            } catch (NoSuchFieldError unused6) {
            }
            try {
                f79156b[am.OPEN_WITH_BROWSER.ordinal()] = 7;
            } catch (NoSuchFieldError unused7) {
            }
            try {
                f79156b[am.NOOP.ordinal()] = 8;
            } catch (NoSuchFieldError unused8) {
            }
            int[] iArr2 = new int[com.sigmob.sdk.base.a.values().length];
            f79155a = iArr2;
            try {
                iArr2[com.sigmob.sdk.base.a.COMPANION.ordinal()] = 1;
            } catch (NoSuchFieldError unused9) {
            }
            try {
                f79155a[com.sigmob.sdk.base.a.VIDEO_CLICK.ordinal()] = 2;
            } catch (NoSuchFieldError unused10) {
            }
        }
    }

    protected i() {
    }

    private BaseAdUnit l() {
        WeakReference<BaseAdUnit> weakReference = this.f79140u;
        if (weakReference == null) {
            return null;
        }
        return weakReference.get();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void m() {
        com.sigmob.sdk.base.views.n nVar = this.f79137r;
        if (nVar == null) {
            return;
        }
        nVar.dismiss();
        this.f79137r.c();
        this.f79137r = null;
        this.f79132m = false;
    }

    public String f() {
        return this.f79127h;
    }

    public Map<String, String> g() {
        return this.f79121b;
    }

    public boolean h() {
        return this.f79133n;
    }

    public boolean i() {
        final BaseAdUnit baseAdUnitL = l();
        if (baseAdUnitL == null) {
            return false;
        }
        SigmobLog.i(f79120a + "showDownloadDialog");
        WeakReference<Activity> weakReference = this.f79138s;
        Activity activity = weakReference == null ? null : weakReference.get();
        if (activity != null && baseAdUnitL.getadPrivacy() != null && this.f79137r == null) {
            com.sigmob.sdk.base.views.n nVar = new com.sigmob.sdk.base.views.n(activity, baseAdUnitL);
            this.f79137r = nVar;
            nVar.a(new com.sigmob.sdk.base.views.n.b() { // from class: com.sigmob.sdk.base.common.i.1
                @Override // com.sigmob.sdk.base.views.n.b
                public void a() {
                    SigmobLog.i(i.f79120a + "onCloseClick");
                    i.this.m();
                    ag sessionManager = baseAdUnitL.getSessionManager();
                    if (sessionManager != null) {
                        sessionManager.a(a.f78873g, 0);
                    }
                    if (i.this.f79139t != null) {
                        i.this.f79139t.a();
                    }
                }

                @Override // com.sigmob.sdk.base.views.n.b
                public void b() {
                    SigmobLog.i(i.f79120a + "onShowSuccess");
                    ag sessionManager = baseAdUnitL.getSessionManager();
                    if (sessionManager != null) {
                        sessionManager.a(a.f78872f, 0);
                    }
                    if (i.this.f79139t == null || !i.this.f79132m) {
                        return;
                    }
                    i.this.f79139t.b();
                }

                @Override // com.sigmob.sdk.base.views.n.b
                public void a(Error error) {
                    SigmobLog.e(i.f79120a + "onShowFail: error = " + error);
                }

                @Override // com.sigmob.sdk.base.views.n.b
                public void a(String url, String clickCoordinate) {
                    SigmobLog.i(i.f79120a + "onButtonClick");
                    if (i.this.f79139t != null) {
                        i.this.f79139t.a(url, clickCoordinate);
                    }
                    i.this.a(baseAdUnitL.getClickCommon().clickUIType, url, clickCoordinate, true);
                }
            });
        }
        com.sigmob.sdk.base.views.n nVar2 = this.f79137r;
        if (nVar2 == null || !nVar2.a()) {
            return false;
        }
        if (activity != null && !this.f79132m) {
            boolean zIsFinishing = activity.isFinishing();
            boolean zIsDestroyed = activity.isDestroyed();
            if (!zIsFinishing && !zIsDestroyed) {
                this.f79137r.show();
                this.f79132m = true;
                return true;
            }
            this.f79132m = false;
            this.f79137r.dismiss();
            this.f79137r.c();
            this.f79137r = null;
        }
        return true;
    }

    public boolean j() {
        BaseAdUnit baseAdUnitL = l();
        if (baseAdUnitL == null || !baseAdUnitL.isDownloadDialog()) {
            return false;
        }
        boolean zI = i();
        com.sigmob.sdk.base.utils.k.c(f79120a, "showDownloadDialog: result = " + zI, new Object[0]);
        return zI;
    }

    public void k() {
        this.f79139t = null;
        this.f79136q = null;
        m();
    }

    public static i a(BaseAdUnit adUnit) {
        i iVar = new i();
        iVar.b(adUnit);
        return iVar;
    }

    public String c() {
        return this.f79122c;
    }

    public String d() {
        return this.f79125f;
    }

    public String e() {
        return this.f79126g;
    }

    public void f(String realClickUrl) {
        BaseAdUnit baseAdUnitL = l();
        if (baseAdUnitL == null) {
            return;
        }
        if (q.a(this.f79134o)) {
            try {
                aj.a(com.sigmob.sdk.b.e(), "正在下载", 1).show();
                return;
            } catch (Throwable unused) {
                return;
            }
        }
        String landing_page = baseAdUnitL.getLanding_page();
        if (com.sigmob.sdk.base.utils.t.b(realClickUrl)) {
            landing_page = realClickUrl;
        }
        String strMacroProcess = baseAdUnitL.getMacroCommon().macroProcess(landing_page);
        if (baseAdUnitL.getsubInteractionType() != 1) {
            this.f79134o = realClickUrl;
            q.a(realClickUrl, baseAdUnitL);
            return;
        }
        JsonRequest jsonRequest = new JsonRequest(strMacroProcess, new AnonymousClass2(baseAdUnitL), 1);
        SigmobRequestQueue sigRequestQueue = Networking.getSigRequestQueue();
        if (sigRequestQueue == null) {
            ad.a("download_start", "0", baseAdUnitL, new ad.a() { // from class: com.sigmob.sdk.base.common.u0
                @Override // com.sigmob.sdk.base.common.ad.a
                public final void onAddExtra(Object obj) {
                    this.f79272a.b(obj);
                }
            });
            ad.a("download_start", 0, "request queue is null.", baseAdUnitL, new ad.a() { // from class: com.sigmob.sdk.base.common.v0
                @Override // com.sigmob.sdk.base.common.ad.a
                public final void onAddExtra(Object obj) {
                    this.f79277a.a(obj);
                }
            });
        } else {
            jsonRequest.setTag("GDTRequestConvert");
            sigRequestQueue.add(jsonRequest);
        }
    }

    public String b() {
        return this.f79128i;
    }

    public void c(Context context, int contentPlayHead, BaseAdUnit adUnit) {
        Preconditions.NoThrow.checkNotNull(context, "context cannot be null");
    }

    public void e(String customCloseIconUrl) {
        if (customCloseIconUrl == null) {
            return;
        }
        this.f79127h = customCloseIconUrl;
    }

    public List<com.sigmob.sdk.videoAd.d> a(long currentPosition, long duration) {
        if (duration <= 0 || currentPosition <= 0) {
            return Collections.emptyList();
        }
        ArrayList arrayList = new ArrayList();
        com.sigmob.sdk.videoAd.d dVar = new com.sigmob.sdk.videoAd.d(a.f78877k, currentPosition / duration);
        int size = this.f79131l.size();
        for (int i10 = 0; i10 < size; i10++) {
            com.sigmob.sdk.videoAd.d dVar2 = this.f79131l.get(i10);
            if (dVar2.compareTo(dVar) > 0) {
                break;
            }
            if (!dVar2.isTracked()) {
                arrayList.add(dVar2);
            }
        }
        return arrayList;
    }

    public void b(Context context, int contentPlayHead, BaseAdUnit adUnit) {
        Preconditions.NoThrow.checkNotNull(context, "context cannot be null");
    }

    public void c(BaseAdUnit adUnit) {
        com.sigmob.sdk.base.network.h.a(adUnit, "click");
    }

    public void d(String customSkipText) {
        if (customSkipText == null) {
            return;
        }
        this.f79126g = customSkipText;
    }

    public void a(int duration) {
        this.f79142w = duration;
    }

    public void b(Context context, BaseAdUnit adUnit) {
        ad.a(PointCategory.LANDING_PAGE_CLOSE, (String) null, adUnit, (ad.a) null);
    }

    public void c(String customCtaText) {
        if (customCtaText == null) {
            return;
        }
        this.f79125f = customCtaText;
    }

    private void b(com.sigmob.sdk.base.a clickUIType, String url, String coordinate, boolean isDeeplink) {
        ag sessionManager;
        String str;
        BaseAdUnit baseAdUnitL = l();
        if (baseAdUnitL == null || (sessionManager = baseAdUnitL.getSessionManager()) == null) {
            return;
        }
        int i10 = AnonymousClass5.f79155a[clickUIType.ordinal()];
        if (i10 != 1) {
            str = i10 != 2 ? "click" : a.f78886t;
        } else {
            str = a.f78885s;
        }
        sessionManager.a(str, 0);
    }

    public void a(Activity context, BaseAdUnit adUnit, com.sigmob.sdk.base.views.n.b onPrivacyClickListener) {
        if (adUnit == null) {
            return;
        }
        if (context != null) {
            this.f79138s = new WeakReference<>(context);
        }
        this.f79139t = onPrivacyClickListener;
    }

    public void a(Context context, int contentPlayHead, BaseAdUnit adUnit) {
        Preconditions.NoThrow.checkNotNull(context, "context cannot be null.");
        ad.a("start", (String) null, adUnit, (ad.a) null);
        com.sigmob.sdk.base.network.h.a(adUnit, "start");
    }

    public void b(BaseAdUnit adUnit) {
        this.f79140u = new WeakReference<>(adUnit);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void b(Object obj) {
        if (obj instanceof PointEntitySigmob) {
            ((PointEntitySigmob) obj).setFinal_url(this.f79134o);
        }
    }

    public void a(Context context, TouchLocation down, TouchLocation up, com.sigmob.sdk.base.a clickUIType, BaseAdUnit adUnit) {
        Preconditions.NoThrow.checkNotNull(context, "context cannot be null");
    }

    public void a(Context context, BaseAdUnit adUnit) {
        ad.a("landing_page_show", (String) null, adUnit, (ad.a) null);
    }

    public void b(String clickThroughUrl) {
        this.f79122c = clickThroughUrl;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static /* synthetic */ void b(String str, Object obj) {
        if (obj instanceof PointEntitySigmob) {
            ((PointEntitySigmob) obj).setFinal_url(str);
        }
    }

    public void a(Context context, String error, BaseAdUnit adUnit, String cate, int duration) {
        Preconditions.NoThrow.checkNotNull(context, "context cannot be null");
        ad.a(cate, duration, error, adUnit, (ad.a) null);
    }

    public void a(com.sigmob.sdk.base.a clickUIType, String url, String coordinate, boolean isRecord) {
        a(clickUIType, url, coordinate, isRecord, false);
    }

    public void a(com.sigmob.sdk.base.a clickUIType, String url, String coordinate, boolean isRecord, boolean showAppElement) {
        ClickCommon clickCommon;
        BaseAdUnit baseAdUnitL = l();
        if (baseAdUnitL == null || (clickCommon = baseAdUnitL.getClickCommon()) == null) {
            return;
        }
        AndroidMarket androidMarket = baseAdUnitL.getAndroidMarket();
        String str = com.sigmob.sdk.base.utils.t.a((CharSequence) url) ? this.f79122c : url;
        clickCommon.clickUIType = clickUIType;
        clickCommon.clickCoordinate = coordinate;
        clickCommon.clickUrl = str;
        a(baseAdUnitL, isRecord);
        new an.a().a(am.IGNORE_ABOUT_SCHEME, am.OPEN_WITH_BROWSER, am.MARKET_SCHEME, am.DOWNLOAD_APK, am.FOLLOW_PACKAGE_NAME, am.FOLLOW_DEEP_LINK, am.MINI_PROGRAM).a(new AnonymousClass4(baseAdUnitL, isRecord, androidMarket, showAppElement, clickUIType)).a(l()).a(baseAdUnitL.isSkipSigmobBrowser()).b(baseAdUnitL.getAd().forbiden_parse_landingpage.booleanValue()).a().a(com.sigmob.sdk.b.e(), url);
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Type inference failed for: r4v0, types: [java.lang.Object, org.json.JSONObject] */
    /* JADX WARN: Type inference failed for: r4v1 */
    /* JADX WARN: Type inference failed for: r4v2, types: [android.content.Context] */
    /* JADX WARN: Type inference failed for: r5v0, types: [java.lang.StringBuilder] */
    public void a(com.sigmob.sdk.base.a clickUIType, String url, String coordinate, boolean isRecord, boolean showAppElement, JSONObject extOp) {
        ?? r10 = extOp;
        SigmobLog.d(f79120a + "handleUrlAction: clickUIType = " + clickUIType + ", url = " + url + ", coordinate = " + coordinate + ", isRecord = " + isRecord + ", showAppElement = " + showAppElement + ", ext = " + r10);
        int iOptInt = r10 == 0 ? 2 : r10.optInt("interaction_type", 2);
        int apkDownloadType = 0;
        boolean zOptBoolean = r10 == 0 ? false : r10.optBoolean("disable_landing", false);
        if (com.sigmob.sdk.base.utils.t.a((CharSequence) url) || !zOptBoolean) {
            a(clickUIType, url, coordinate, isRecord, showAppElement);
            return;
        }
        String strOptString = r10.optString("failback_url");
        String strOptString2 = r10.optString("product_name");
        String strOptString3 = r10.optString("app_icon_url");
        Context contextE = com.sigmob.sdk.b.e();
        try {
            BaseAdUnit baseAdUnitL = l();
            boolean zB = com.sigmob.sdk.base.utils.w.b(baseAdUnitL);
            if (zB) {
                baseAdUnitL.setMraidInteractionType(iOptInt);
            }
            boolean z10 = zB && baseAdUnitL.enableSmallWindow(Integer.valueOf(iOptInt));
            try {
                if (iOptInt == 1) {
                    com.sigmob.sdk.base.utils.g.a(contextE, Uri.parse(url), (String) null, z10);
                } else if (iOptInt == 2) {
                    this.f79134o = url;
                    if (baseAdUnitL != null) {
                        apkDownloadType = baseAdUnitL.getApkDownloadType();
                    }
                    q.a(this.f79134o, strOptString3, strOptString2, apkDownloadType);
                } else if (iOptInt == 7) {
                    com.sigmob.sdk.base.utils.g.a(contextE, r10.optString("wx_app_id"), r10.optString("wx_app_username"), r10.optString("wx_app_path"), r10.optInt("wx_business_type"), r10.optString("wx_ext_msg"));
                } else if (iOptInt == 9) {
                    com.sigmob.sdk.base.utils.g.a(contextE, (Uri) null, r10.optString("package_name"), z10);
                }
            } catch (Throwable unused) {
                try {
                    com.sigmob.sdk.base.utils.g.a((Context) r10, Uri.parse(strOptString));
                } catch (Throwable unused2) {
                }
            }
        } catch (Throwable unused3) {
            r10 = contextE;
        }
        ac acVar = this.f79136q;
        if (acVar != null) {
            acVar.onAdClick(isRecord, clickUIType);
        }
    }

    public void a(com.sigmob.sdk.base.a clickUIType, String coordinate, boolean isRecord) {
        a(clickUIType, (String) null, coordinate, isRecord, true);
    }

    public void a(ac onClickListener) {
        this.f79136q = onClickListener;
    }

    public static void a(BaseAdUnit adUnit, String url, boolean parse302) {
        final String strMacroProcess = adUnit.getMacroCommon().macroProcess(url);
        String productId = adUnit.getProductId();
        String apkPackageName = adUnit.getApkPackageName();
        int i10 = adUnit.getsubInteractionType();
        if (i10 == 2 || com.sigmob.sdk.base.utils.t.b(apkPackageName)) {
            if (!com.sigmob.sdk.base.utils.t.a((CharSequence) apkPackageName)) {
                productId = apkPackageName;
            }
            if (com.sigmob.sdk.base.utils.t.b(productId)) {
                try {
                    h.c(adUnit);
                    com.sigmob.sdk.base.utils.g.c(com.sigmob.sdk.b.e(), productId);
                    return;
                } catch (Throwable th) {
                    h.c((BaseAdUnit) null);
                    SigmobLog.e(f79120a + "handleMRAID2Download: error = " + th.getMessage());
                }
            }
        }
        if (i10 != 1 || parse302) {
            q.a(strMacroProcess, adUnit);
            return;
        }
        JsonRequest jsonRequest = new JsonRequest(strMacroProcess, new AnonymousClass3(adUnit, strMacroProcess), 1);
        SigmobRequestQueue sigRequestQueue = Networking.getSigRequestQueue();
        if (sigRequestQueue == null) {
            ad.a("download_start", "0", adUnit, new ad.a() { // from class: com.sigmob.sdk.base.common.w0
                @Override // com.sigmob.sdk.base.common.ad.a
                public final void onAddExtra(Object obj) {
                    i.b(strMacroProcess, obj);
                }
            });
            ad.a("download_start", 0, "request queue is null", adUnit, new ad.a() { // from class: com.sigmob.sdk.base.common.x0
                @Override // com.sigmob.sdk.base.common.ad.a
                public final void onAddExtra(Object obj) {
                    i.a(strMacroProcess, obj);
                }
            });
        } else {
            jsonRequest.setTag("GDTRequestConvert");
            sigRequestQueue.add(jsonRequest);
        }
    }

    private void a(BaseAdUnit adUnit, boolean isRecord) {
        ClickCommon clickCommon;
        if (adUnit == null || !isRecord || (clickCommon = adUnit.getClickCommon()) == null) {
            return;
        }
        String str = clickCommon.is_final_click ? "1" : "0";
        SigMacroCommon macroCommon = adUnit.getMacroCommon();
        macroCommon.addMarcoKey("_AX_", clickCommon.adarea_x);
        macroCommon.addMarcoKey("_AY_", clickCommon.adarea_y);
        macroCommon.addMarcoKey("_AW_", clickCommon.adarea_w);
        macroCommon.addMarcoKey("_AH_", clickCommon.adarea_h);
        if ("5".equals(clickCommon.sld)) {
            macroCommon.updateClickMarco(SigMacroCommon.DEFAULT_XY, SigMacroCommon.DEFAULT_XY, SigMacroCommon.DEFAULT_XY, SigMacroCommon.DEFAULT_XY);
            macroCommon.addMarcoKey(SigMacroCommon._SLD_, clickCommon.sld);
            macroCommon.addMarcoKey("_TURNX_", clickCommon.turn_x);
            macroCommon.addMarcoKey("_TURNY_", clickCommon.turn_y);
            macroCommon.addMarcoKey("_TURNZ_", clickCommon.turn_z);
            macroCommon.addMarcoKey("_TURNTIME_", clickCommon.turn_time);
            macroCommon.addMarcoKey("_CPTIDS_", String.valueOf(clickCommon.widget_id));
        } else if ("2".equals(clickCommon.sld)) {
            macroCommon.updateClickMarco(SigMacroCommon.DEFAULT_XY, SigMacroCommon.DEFAULT_XY, SigMacroCommon.DEFAULT_XY, SigMacroCommon.DEFAULT_XY);
            macroCommon.addMarcoKey(SigMacroCommon._SLD_, clickCommon.sld);
            macroCommon.addMarcoKey("_CPTIDS_", String.valueOf(clickCommon.widget_id));
            macroCommon.addMarcoKey("_XMAXACC_", clickCommon.x_max_acc);
            macroCommon.addMarcoKey("_YMAXACC_", clickCommon.y_max_acc);
            macroCommon.addMarcoKey("_ZMAXACC_", clickCommon.z_max_acc);
        } else if (adUnit.getCreativeType() != 9) {
            clickCommon.sld = "0";
            macroCommon.updateClickMarco(clickCommon.down, clickCommon.up);
            macroCommon.addMarcoKey(SigMacroCommon._SLD_, "0");
        }
        if (adUnit.getTemplateId() > 0) {
            macroCommon.addMarcoKey(SigMacroCommon._TEMPLATE_, String.valueOf(adUnit.getTemplateId()));
        }
        if (com.sigmob.sdk.base.utils.t.b(clickCommon.click_area)) {
            macroCommon.addMarcoKey(SigMacroCommon._CLICKAREA_, String.valueOf(clickCommon.click_area));
        }
        if (com.sigmob.sdk.base.utils.t.b(clickCommon.click_scene)) {
            macroCommon.addMarcoKey(SigMacroCommon._CLICKSCENE_, String.valueOf(clickCommon.click_scene));
        }
        macroCommon.addMarcoKey(SigMacroCommon._FINALCLICK_, str);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void a(Object obj) {
        if (obj instanceof PointEntitySigmobError) {
            ((PointEntitySigmobError) obj).setFinal_url(this.f79134o);
        }
    }

    public void a(String dspCreativeId) {
        this.f79128i = dspCreativeId;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static /* synthetic */ void a(String str, Object obj) {
        if (obj instanceof PointEntitySigmobError) {
            ((PointEntitySigmobError) obj).setFinal_url(str);
        }
    }

    public void a(List<com.sigmob.sdk.videoAd.d> fractionalTrackers) {
        Preconditions.NoThrow.checkNotNull(fractionalTrackers, "fractionalTrackers cannot be null");
        this.f79131l.addAll(fractionalTrackers);
        Collections.sort(this.f79131l);
    }

    public boolean a() {
        return this.f79141v;
    }
}
