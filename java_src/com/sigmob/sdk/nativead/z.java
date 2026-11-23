package com.sigmob.sdk.nativead;

import android.app.Activity;
import android.content.Context;
import android.content.res.Configuration;
import android.os.Bundle;
import android.text.TextUtils;
import android.util.DisplayMetrics;
import android.view.View;
import android.view.ViewGroup;
import android.view.ViewTreeObserver;
import android.view.animation.AlphaAnimation;
import android.widget.FrameLayout;
import android.widget.ImageView;
import android.widget.RelativeLayout;
import com.czhj.sdk.common.ClientMetadata;
import com.czhj.sdk.common.utils.Dips;
import com.czhj.sdk.logger.SigmobLog;
import com.sigmob.sdk.base.models.BaseAdUnit;
import com.sigmob.sdk.base.models.ClickCommon;
import com.sigmob.sdk.base.models.IntentActions;
import com.sigmob.sdk.base.models.PlacementType;
import com.sigmob.windad.WindAdError;
import com.sigmob.windad.natives.WindNativeAdData;
import java.net.URI;
import org.json.JSONObject;

/* JADX INFO: loaded from: classes3.dex */
public class z extends com.sigmob.sdk.base.common.j {

    /* JADX INFO: renamed from: g, reason: collision with root package name */
    private static r f81566g;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    public final long f81567f;

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    private ae f81568h;

    /* JADX INFO: renamed from: i, reason: collision with root package name */
    private ae f81569i;

    /* JADX INFO: renamed from: j, reason: collision with root package name */
    private RelativeLayout f81570j;

    /* JADX INFO: renamed from: k, reason: collision with root package name */
    private FrameLayout f81571k;

    /* JADX INFO: renamed from: l, reason: collision with root package name */
    private BaseAdUnit f81572l;

    /* JADX INFO: renamed from: m, reason: collision with root package name */
    private e f81573m;

    /* JADX INFO: renamed from: n, reason: collision with root package name */
    private com.sigmob.sdk.mraid.h f81574n;

    /* JADX INFO: renamed from: o, reason: collision with root package name */
    private View f81575o;

    /* JADX INFO: renamed from: p, reason: collision with root package name */
    private WindNativeAdData f81576p;

    /* JADX INFO: renamed from: q, reason: collision with root package name */
    private APKStatusBroadcastReceiver f81577q;

    /* JADX INFO: renamed from: r, reason: collision with root package name */
    private ImageView f81578r;

    /* JADX INFO: renamed from: s, reason: collision with root package name */
    private com.sigmob.sdk.base.views.n f81579s;

    /* JADX INFO: renamed from: t, reason: collision with root package name */
    private boolean f81580t;

    /* JADX INFO: renamed from: u, reason: collision with root package name */
    private boolean f81581u;

    public z(Activity activity, BaseAdUnit baseAdUnit, Bundle intentExtras, Bundle savedInstanceState, String broadcastIdentifier, com.sigmob.sdk.base.common.k baseAdViewControllerListener) {
        super(activity, broadcastIdentifier, baseAdViewControllerListener);
        this.f81567f = 300L;
        this.f81580t = false;
        this.f81572l = baseAdUnit;
        e eVar = (e) baseAdUnit.getAdConfig();
        this.f81573m = eVar;
        eVar.a(n(), this.f81572l, (com.sigmob.sdk.base.views.n.b) null);
        this.f81568h = (ae) intentExtras.getParcelable("attr");
        k().a(1);
        int iA = com.sigmob.sdk.base.k.a();
        if (iA == 0) {
            return;
        }
        n().getTheme().applyStyle(iA, true);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void v() {
        r rVar = f81566g;
        if (rVar != null) {
            rVar.setUIStyle(j.PREVIEW);
        }
        k().a();
    }

    @Override // com.sigmob.sdk.base.common.j
    public void i() {
    }

    @Override // com.sigmob.sdk.base.common.j
    public void o() {
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void b(View view) {
        k().onBackPressed();
    }

    private int r() {
        DisplayMetrics displayMetrics = ClientMetadata.getInstance().getDisplayMetrics();
        return Math.min((int) (((double) Math.min(displayMetrics.widthPixels, displayMetrics.heightPixels)) / this.f81572l.getAdPercent()), Math.max(displayMetrics.heightPixels, displayMetrics.widthPixels) / 2);
    }

    private void s() {
        ImageView imageView = this.f81578r;
        if (imageView == null) {
            return;
        }
        imageView.setVisibility(4);
    }

    private void t() {
        if (this.f81578r == null) {
            a(n());
        }
        this.f81578r.setVisibility(0);
    }

    private void u() {
        this.f81581u = true;
        if (f81566g == null) {
            k().a();
            return;
        }
        new af(this.f81571k, this.f81569i, this.f81568h, 300L).a();
        this.f81570j.setVisibility(8);
        this.f81571k.postDelayed(new Runnable() { // from class: com.sigmob.sdk.nativead.a1
            @Override // java.lang.Runnable
            public final void run() {
                this.f81332b.v();
            }
        }, 300L);
    }

    public com.sigmob.sdk.base.common.ag a() {
        com.sigmob.sdk.base.common.ag sessionManager = this.f81572l.getSessionManager();
        if (sessionManager != null) {
            return sessionManager;
        }
        i iVar = new i();
        iVar.a(this.f81572l);
        return iVar;
    }

    @Override // com.sigmob.sdk.base.common.j
    public void e() {
        m().removeAllViews();
        k().onSetContentView(m());
        this.f81572l.getClickCommon().click_scene = ClickCommon.CLICK_SCENE_TEMPLATE;
        RelativeLayout relativeLayout = new RelativeLayout(l());
        this.f81570j = relativeLayout;
        relativeLayout.setBackgroundColor(-1);
        this.f81575o = p();
        com.sigmob.sdk.mraid.h hVar = this.f81574n;
        if (hVar != null) {
            hVar.a(n());
        }
        this.f81570j.addView(this.f81575o, new RelativeLayout.LayoutParams(-1, -1));
        RelativeLayout.LayoutParams layoutParams = new RelativeLayout.LayoutParams(-1, -1);
        r rVar = f81566g;
        if (rVar != null) {
            WindNativeAdData nativeAdUnit = rVar.getNativeAdUnit();
            this.f81576p = nativeAdUnit;
            if (nativeAdUnit != null) {
                layoutParams.setMargins(0, r(), 0, 0);
            }
        }
        m().addView(this.f81570j, layoutParams);
        if (f81566g != null) {
            this.f81571k = new FrameLayout(n());
            f81566g.setBackClickListener(new View.OnClickListener() { // from class: com.sigmob.sdk.nativead.z0
                @Override // android.view.View.OnClickListener
                public final void onClick(View view) {
                    this.f81585b.b(view);
                }
            });
            m().addView(this.f81571k, new RelativeLayout.LayoutParams(-1, r()));
            f81566g.getSigVideoAdController().c();
            this.f81571k.getViewTreeObserver().addOnPreDrawListener(new ViewTreeObserver.OnPreDrawListener() { // from class: com.sigmob.sdk.nativead.z.1
                @Override // android.view.ViewTreeObserver.OnPreDrawListener
                public boolean onPreDraw() {
                    if (z.f81566g == null || z.this.f81571k == null) {
                        return false;
                    }
                    z.this.f81571k.getViewTreeObserver().removeOnPreDrawListener(this);
                    z.f81566g.setUIStyle(j.DETAIL_PAGE);
                    ViewGroup videoContainer = z.f81566g.getVideoContainer();
                    if (videoContainer != null) {
                        com.sigmob.sdk.base.utils.x.a(videoContainer);
                        z.this.f81571k.addView(videoContainer, new FrameLayout.LayoutParams(-1, -1));
                    }
                    z.this.f81569i = new ae();
                    int[] iArr = new int[2];
                    z.this.f81571k.getLocationOnScreen(iArr);
                    z.this.f81569i.a(iArr[0]);
                    z.this.f81569i.b(0);
                    z.this.f81569i.c(z.this.f81571k.getMeasuredWidth());
                    z.this.f81569i.d(z.this.f81571k.getMeasuredHeight());
                    new af(z.this.f81571k, z.this.f81568h, z.this.f81569i, 300L).a();
                    z.this.f81568h.b(z.this.f81568h.b() - iArr[1]);
                    if (z.this.f81570j != null) {
                        AlphaAnimation alphaAnimation = new AlphaAnimation(0.0f, 1.0f);
                        alphaAnimation.setDuration(300L);
                        z.this.f81570j.setAnimation(alphaAnimation);
                        alphaAnimation.start();
                    }
                    return true;
                }
            });
        }
        a(IntentActions.ACTION_NATIVE_TEMPLIE_SHOW, 100);
    }

    @Override // com.sigmob.sdk.base.common.j
    public void f() {
        t sigVideoAdController;
        r rVar = f81566g;
        if (rVar == null || this.f81581u || (sigVideoAdController = rVar.getSigVideoAdController()) == null) {
            return;
        }
        sigVideoAdController.a();
    }

    @Override // com.sigmob.sdk.base.common.j
    public void g() {
        t sigVideoAdController;
        r rVar = f81566g;
        if (rVar != null && (sigVideoAdController = rVar.getSigVideoAdController()) != null) {
            sigVideoAdController.c();
        }
        com.sigmob.sdk.mraid.h hVar = this.f81574n;
        if (hVar != null) {
            hVar.c();
        }
    }

    /* JADX WARN: Type inference fix 'apply assigned field type' failed
    java.lang.UnsupportedOperationException: ArgType.getObject(), call class: class jadx.core.dex.instructions.args.ArgType$UnknownArg
    	at jadx.core.dex.instructions.args.ArgType.getObject(ArgType.java:596)
    	at jadx.core.dex.attributes.nodes.ClassTypeVarsAttr.getTypeVarsMapFor(ClassTypeVarsAttr.java:35)
    	at jadx.core.dex.nodes.utils.TypeUtils.replaceClassGenerics(TypeUtils.java:177)
    	at jadx.core.dex.visitors.typeinference.FixTypesVisitor.insertExplicitUseCast(FixTypesVisitor.java:397)
    	at jadx.core.dex.visitors.typeinference.FixTypesVisitor.tryFieldTypeWithNewCasts(FixTypesVisitor.java:359)
    	at jadx.core.dex.visitors.typeinference.FixTypesVisitor.applyFieldType(FixTypesVisitor.java:309)
    	at jadx.core.dex.visitors.typeinference.FixTypesVisitor.visit(FixTypesVisitor.java:94)
     */
    @Override // com.sigmob.sdk.base.common.j
    public void h() {
        APKStatusBroadcastReceiver aPKStatusBroadcastReceiver = this.f81577q;
        if (aPKStatusBroadcastReceiver != null) {
            aPKStatusBroadcastReceiver.b(aPKStatusBroadcastReceiver);
            this.f81577q = null;
        }
        com.sigmob.sdk.base.views.n nVar = this.f81579s;
        if (nVar != null) {
            nVar.dismiss();
            this.f81579s.c();
            this.f81579s = null;
        }
        com.sigmob.sdk.mraid.h hVar = this.f81574n;
        if (hVar != null) {
            hVar.m();
            this.f81574n = null;
        }
        r rVar = f81566g;
        if (rVar != null) {
            rVar.setBackClickListener(null);
            f81566g = null;
        }
        a(IntentActions.ACTION_NATIVE_TEMPLE_DISMISS);
        super.h();
    }

    @Override // com.sigmob.sdk.base.common.j
    public boolean j() {
        r rVar = f81566g;
        if (rVar != null && rVar.b()) {
            return false;
        }
        u();
        return false;
    }

    public View p() {
        if (this.f81574n == null) {
            this.f81574n = new com.sigmob.sdk.mraid.h(this.f79160a, this.f81572l, PlacementType.INTERSTITIAL);
        }
        this.f81574n.a(new com.sigmob.sdk.mraid.h.a() { // from class: com.sigmob.sdk.nativead.z.2
            @Override // com.sigmob.sdk.mraid.h.a
            public void a() {
                SigmobLog.d("SigNativeAdLandViewController onEndCardShow()");
            }

            @Override // com.sigmob.sdk.mraid.h.a
            public void b() {
                SigmobLog.d("SigNativeAdLandViewController onShowSkipTime()");
            }

            @Override // com.sigmob.sdk.mraid.h.a
            public void c() {
                SigmobLog.d("SigNativeAdLandViewController onFeedBack()");
            }

            @Override // com.sigmob.sdk.mraid.h.a
            public void d() {
                SigmobLog.d("SigNativeAdLandViewController onExpand()");
            }

            @Override // com.sigmob.sdk.mraid.h.a
            public void e() {
                SigmobLog.i("SigNativeAdLandViewController onFailedToLoad()");
            }

            @Override // com.sigmob.sdk.mraid.h.a
            public void f() {
                SigmobLog.i("SigNativeAdLandViewController onUnload()");
            }

            @Override // com.sigmob.sdk.mraid.h.a
            public void g() {
                SigmobLog.i("SigNativeAdLandViewController onOpenFourElements()");
                if (z.this.f81579s == null) {
                    z.this.f81579s = new com.sigmob.sdk.base.views.n(z.this.n(), z.this.f81572l);
                    z.this.f81579s.a(new com.sigmob.sdk.base.views.n.b() { // from class: com.sigmob.sdk.nativead.z.2.1
                        @Override // com.sigmob.sdk.base.views.n.b
                        public void a() {
                            if (z.this.f81579s != null) {
                                z.this.f81579s.dismiss();
                                z.this.f81579s.c();
                                z.this.f81579s = null;
                                z.this.f81580t = false;
                            }
                            z.this.f81572l.getClickCommon().click_scene = ClickCommon.CLICK_SCENE_TEMPLATE;
                            z.this.a().a(com.sigmob.sdk.base.common.a.f78873g, 0);
                        }

                        @Override // com.sigmob.sdk.base.views.n.b
                        public void b() {
                            z.this.a().a(com.sigmob.sdk.base.common.a.f78872f, 0);
                        }

                        @Override // com.sigmob.sdk.base.views.n.b
                        public void a(Error error) {
                        }

                        @Override // com.sigmob.sdk.base.views.n.b
                        public void a(String url, String clickCoordinate) {
                            z.this.f81572l.getClickCommon().click_area = ClickCommon.CLICK_AREA_BTN;
                            z.this.f81572l.getClickCommon().click_scene = "appinfo";
                            z.this.f81572l.getClickCommon().is_final_click = true;
                            if (z.this.f81573m != null) {
                                z.this.f81573m.a(com.sigmob.sdk.base.a.COMPANION, url, clickCoordinate, true);
                                z.this.a(IntentActions.ACTION_NATIVE_TEMPLE_CLICK);
                            }
                        }
                    });
                }
                if (z.this.f81579s == null || !z.this.f81579s.a() || z.this.f81580t) {
                    return;
                }
                z.this.f81572l.getClickCommon().click_area = "appinfo";
                z.this.f81572l.getClickCommon().is_final_click = false;
                z.this.a().a("click", 0);
                z.this.f81579s.show();
                z.this.f81580t = true;
            }

            @Override // com.sigmob.sdk.mraid.h.a
            public void h() {
                SigmobLog.i("SigNativeAdLandViewController onClose()");
                z.this.k().onBackPressed();
            }

            @Override // com.sigmob.sdk.mraid.h.a
            public void a(float cvTime) {
                SigmobLog.d("SigNativeAdLandViewController onReward()");
            }

            @Override // com.sigmob.sdk.mraid.h.a
            public void b(float progress) {
                SigmobLog.d("SigNativeAdLandViewController onSkip()");
            }

            @Override // com.sigmob.sdk.mraid.h.a
            public void a(int width, int height, int offsetX, int offsetY, com.sigmob.sdk.mraid.b.a closePosition, boolean allowOffscreen) {
                SigmobLog.i("SigNativeAdLandViewController onResize()");
            }

            @Override // com.sigmob.sdk.mraid.h.a
            public void a(View view) {
                SigmobLog.d("SigNativeAdLandViewController onLoaded()");
            }

            @Override // com.sigmob.sdk.mraid.h.a
            public void a(WindAdError error) {
                SigmobLog.i("SigNativeAdLandViewController onRenderProcessGone:" + error.toString());
            }

            @Override // com.sigmob.sdk.mraid.h.a
            public void a(String ext) {
                SigmobLog.i("SigNativeAdLandViewController onCompanionClick:" + ext);
                boolean z10 = true;
                if (!TextUtils.isEmpty(ext)) {
                    try {
                        z.this.f81572l.getClickCommon().click_area = ClickCommon.CLICK_AREA_BTN;
                        z.this.f81572l.getClickCommon().is_final_click = true;
                        JSONObject jSONObject = new JSONObject(ext);
                        int iOptInt = jSONObject.optInt("type");
                        z.this.f81574n.a(String.valueOf(jSONObject.optInt("x")), String.valueOf(jSONObject.optInt("y")));
                        if (iOptInt != 1) {
                            z.this.a().a("click", 0);
                        } else {
                            z10 = false;
                        }
                    } catch (Exception unused) {
                        z.this.f81574n.a("0", "0");
                        z.this.a().a("click", 0);
                    }
                }
                z.this.f81573m.a(com.sigmob.sdk.base.a.COMPANION, z.this.f81574n.a(), z10);
                z.this.a(IntentActions.ACTION_NATIVE_TEMPLE_CLICK);
            }

            /* JADX WARN: Code duplicated, block: B:24:0x00b0  */
            @Override // com.sigmob.sdk.mraid.h.a
            public void a(URI uri, int type, String ext) {
                boolean z10;
                boolean z11;
                boolean z12;
                e eVar;
                com.sigmob.sdk.base.a aVar;
                String string;
                SigmobLog.i("SigNativeAdLandViewController  onOpen:" + uri + "======" + type + "=====" + ext);
                boolean z13 = false;
                if (TextUtils.isEmpty(ext)) {
                    z12 = true;
                    z11 = true;
                } else {
                    try {
                        z.this.f81572l.getClickCommon().click_area = ClickCommon.CLICK_AREA_BTN;
                        z.this.f81572l.getClickCommon().is_final_click = true;
                        JSONObject jSONObject = new JSONObject(ext);
                        int iOptInt = jSONObject.optInt("type");
                        int iOptInt2 = jSONObject.optInt("x");
                        int iOptInt3 = jSONObject.optInt("y");
                        boolean zOptBoolean = jSONObject.optBoolean("disable_landing");
                        try {
                            z10 = !jSONObject.optBoolean("feDisable");
                            try {
                                z.this.f81574n.a(String.valueOf(iOptInt2), String.valueOf(iOptInt3));
                                z11 = z10;
                                z12 = iOptInt != 1;
                                z13 = zOptBoolean;
                            } catch (Exception unused) {
                                z13 = zOptBoolean;
                                z11 = z10;
                                z12 = true;
                            }
                        } catch (Exception unused2) {
                            z13 = zOptBoolean;
                            z10 = true;
                            z11 = z10;
                            z12 = true;
                            if (!z13) {
                                eVar = z.this.f81573m;
                                aVar = com.sigmob.sdk.base.a.ENDCARD;
                                string = uri.toString();
                            } else {
                                eVar = z.this.f81573m;
                                aVar = com.sigmob.sdk.base.a.ENDCARD;
                                string = uri.toString();
                            }
                            eVar.a(aVar, string, z.this.f81574n.a(), z12, z11);
                            z.this.a(IntentActions.ACTION_NATIVE_TEMPLE_CLICK);
                        }
                    } catch (Exception unused3) {
                    }
                }
                if (!z13 || TextUtils.isEmpty(z.this.f81572l.getLanding_page())) {
                    eVar = z.this.f81573m;
                    aVar = com.sigmob.sdk.base.a.ENDCARD;
                    string = uri.toString();
                } else {
                    eVar = z.this.f81573m;
                    aVar = com.sigmob.sdk.base.a.ENDCARD;
                    string = null;
                }
                eVar.a(aVar, string, z.this.f81574n.a(), z12, z11);
                z.this.a(IntentActions.ACTION_NATIVE_TEMPLE_CLICK);
            }

            @Override // com.sigmob.sdk.mraid.h.a
            public void a(boolean isMute) {
                SigmobLog.d("SigNativeAdLandViewController onMute()");
            }
        });
        if (!TextUtils.isEmpty(this.f81572l.getHtmlUrl())) {
            this.f81574n.b(this.f81572l.getHtmlUrl(), new com.sigmob.sdk.mraid.h.b() { // from class: com.sigmob.sdk.nativead.b1
                @Override // com.sigmob.sdk.mraid.h.b
                public final void onReady(com.sigmob.sdk.mraid.v vVar, com.sigmob.sdk.base.common.v vVar2) {
                    z.b(vVar, vVar2);
                }
            });
        } else if (!TextUtils.isEmpty(this.f81572l.getHtmlData())) {
            this.f81574n.a(this.f81572l.getHtmlData(), new com.sigmob.sdk.mraid.h.b() { // from class: com.sigmob.sdk.nativead.c1
                @Override // com.sigmob.sdk.mraid.h.b
                public final void onReady(com.sigmob.sdk.mraid.v vVar, com.sigmob.sdk.base.common.v vVar2) {
                    z.a(vVar, vVar2);
                }
            });
        }
        this.f81574n.a(new com.sigmob.sdk.mraid.h.e() { // from class: com.sigmob.sdk.nativead.d1
            @Override // com.sigmob.sdk.mraid.h.e
            public final void useCustomCloseChanged(boolean z10) {
                this.f81406a.a(z10);
            }
        });
        return this.f81574n.q();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static /* synthetic */ void b(com.sigmob.sdk.mraid.v vVar, com.sigmob.sdk.base.common.v vVar2) {
    }

    private void a(Context context) {
        if (this.f81578r != null) {
            return;
        }
        ImageView imageView = new ImageView(context);
        this.f81578r = imageView;
        imageView.setImageBitmap(com.sigmob.sdk.base.views.p.CLOSE.a());
        this.f81578r.setScaleType(ImageView.ScaleType.CENTER_CROP);
        this.f81578r.setImageAlpha(127);
        this.f81578r.setClickable(true);
        this.f81578r.setOnClickListener(new View.OnClickListener() { // from class: com.sigmob.sdk.nativead.e1
            @Override // android.view.View.OnClickListener
            public final void onClick(View view) {
                this.f81416b.a(view);
            }
        });
        int iDipsToIntPixels = Dips.dipsToIntPixels(20.0f, this.f79160a);
        RelativeLayout.LayoutParams layoutParams = new RelativeLayout.LayoutParams(iDipsToIntPixels, iDipsToIntPixels);
        layoutParams.addRule(10);
        layoutParams.addRule(9);
        int i10 = iDipsToIntPixels / 2;
        layoutParams.setMargins(i10, i10, 0, 0);
        RelativeLayout relativeLayout = this.f81570j;
        if (relativeLayout != null) {
            relativeLayout.addView(this.f81578r, layoutParams);
        }
    }

    @Override // com.sigmob.sdk.base.common.j
    public void a(Configuration configuration) {
    }

    @Override // com.sigmob.sdk.base.common.j
    public void a(Bundle outState) {
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void a(View view) {
        k().onBackPressed();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static /* synthetic */ void a(com.sigmob.sdk.mraid.v vVar, com.sigmob.sdk.base.common.v vVar2) {
    }

    public static void a(m sigAdView) {
        if (sigAdView instanceof r) {
            f81566g = (r) sigAdView;
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void a(boolean z10) {
        if (z10) {
            s();
        } else if (f81566g == null) {
            t();
        }
    }
}
