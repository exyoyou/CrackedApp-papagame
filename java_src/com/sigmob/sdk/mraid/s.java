package com.sigmob.sdk.mraid;

import android.app.Activity;
import android.content.Context;
import android.content.res.Configuration;
import android.os.Bundle;
import android.text.TextUtils;
import android.view.MotionEvent;
import android.view.View;
import android.view.WindowInsets;
import android.webkit.ConsoleMessage;
import android.webkit.JsResult;
import android.webkit.ValueCallback;
import android.widget.FrameLayout;
import android.widget.RelativeLayout;
import com.czhj.sdk.common.ClientMetadata;
import com.czhj.sdk.common.utils.Dips;
import com.czhj.sdk.logger.SigmobLog;
import com.sigmob.sdk.base.common.ac;
import com.sigmob.sdk.base.common.ad;
import com.sigmob.sdk.base.models.BaseAdUnit;
import com.sigmob.sdk.base.models.ClickCommon;
import com.sigmob.sdk.base.models.IntentActions;
import com.sigmob.sdk.base.models.LoadAdRequest;
import com.sigmob.sdk.base.models.PlacementType;
import com.sigmob.sdk.base.views.ak;
import com.sigmob.windad.WindAdError;
import com.sigmob.windad.WindAdRequest;
import com.sigmob.windad.natives.WindNativeAdData;
import java.net.URI;
import java.util.HashMap;
import java.util.Map;
import org.json.JSONObject;

/* JADX INFO: loaded from: classes3.dex */
public class s extends com.sigmob.sdk.videoAd.b implements ac {

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    public static final String f81069f = "s";

    /* JADX INFO: renamed from: g, reason: collision with root package name */
    protected com.sigmob.sdk.base.common.v f81070g;

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    private final Bundle f81071h;

    /* JADX INFO: renamed from: i, reason: collision with root package name */
    private int f81072i;

    /* JADX INFO: renamed from: j, reason: collision with root package name */
    private final com.sigmob.sdk.videoAd.a f81073j;

    /* JADX INFO: renamed from: k, reason: collision with root package name */
    private int f81074k;

    /* JADX INFO: renamed from: l, reason: collision with root package name */
    private boolean f81075l;

    /* JADX INFO: renamed from: m, reason: collision with root package name */
    private final BaseAdUnit f81076m;

    /* JADX INFO: renamed from: n, reason: collision with root package name */
    private h f81077n;

    /* JADX INFO: renamed from: o, reason: collision with root package name */
    private x f81078o;

    /* JADX INFO: renamed from: p, reason: collision with root package name */
    private ak f81079p;

    /* JADX INFO: renamed from: q, reason: collision with root package name */
    private int f81080q;

    /* JADX INFO: renamed from: r, reason: collision with root package name */
    private boolean f81081r;

    /* JADX INFO: renamed from: s, reason: collision with root package name */
    private boolean f81082s;

    /* JADX INFO: renamed from: t, reason: collision with root package name */
    private boolean f81083t;

    /* JADX INFO: renamed from: u, reason: collision with root package name */
    private com.sigmob.sdk.base.views.n f81084u;

    /* JADX INFO: renamed from: v, reason: collision with root package name */
    private boolean f81085v;

    /* JADX INFO: renamed from: w, reason: collision with root package name */
    private com.sigmob.sdk.nativead.b f81086w;

    /* JADX INFO: renamed from: x, reason: collision with root package name */
    private com.sigmob.sdk.base.views.s f81087x;

    /* JADX INFO: renamed from: y, reason: collision with root package name */
    private JSONObject f81088y;

    /* JADX INFO: renamed from: z, reason: collision with root package name */
    private final View.OnClickListener f81089z;

    /* JADX INFO: renamed from: com.sigmob.sdk.mraid.s$3, reason: invalid class name */
    class AnonymousClass3 implements h.a {
        AnonymousClass3() {
        }

        @Override // com.sigmob.sdk.mraid.h.a
        public void b() {
            s.this.b("show_skip");
        }

        @Override // com.sigmob.sdk.mraid.h.a
        public void c() {
            Activity activityN = s.this.n();
            if (activityN == null || s.this.f81076m == null) {
                return;
            }
            s sVar = s.this;
            if (sVar.a(sVar.f81086w)) {
                return;
            }
            s.this.f81086w = new com.sigmob.sdk.nativead.b(activityN, s.this.f81076m);
            s.this.f81086w.a();
            s.this.f81086w.a(new WindNativeAdData.DislikeInteractionCallback() { // from class: com.sigmob.sdk.mraid.s.3.1
                @Override // com.sigmob.windad.natives.WindNativeAdData.DislikeInteractionCallback
                public void onCancel() {
                    s.this.c("feedbackDidDisappear");
                    s.this.s();
                }

                @Override // com.sigmob.windad.natives.WindNativeAdData.DislikeInteractionCallback
                public void onSelected(int position, String value, boolean enforce) {
                    s.this.c("feedbackDidDisappear");
                    s.this.s();
                }

                @Override // com.sigmob.windad.natives.WindNativeAdData.DislikeInteractionCallback
                public void onShow() {
                    s.this.c("feedbackDidAppear");
                }
            });
        }

        @Override // com.sigmob.sdk.mraid.h.a
        public void d() {
        }

        @Override // com.sigmob.sdk.mraid.h.a
        public void e() {
            SigmobLog.d("MraidActivity failed to load. Finishing the activity");
            if (((com.sigmob.sdk.base.common.j) s.this).f79161b != null) {
                s.this.a(IntentActions.ACTION_INTERSTITIAL_FAIL);
            }
            ((com.sigmob.sdk.base.common.j) s.this).f79163d.a();
        }

        @Override // com.sigmob.sdk.mraid.h.a
        public void f() {
        }

        @Override // com.sigmob.sdk.mraid.h.a
        public void g() {
            if (s.this.f81084u == null) {
                s.this.f81084u = new com.sigmob.sdk.base.views.n(s.this.n(), s.this.f81076m);
                s.this.f81084u.a(new com.sigmob.sdk.base.views.n.b() { // from class: com.sigmob.sdk.mraid.s.3.2
                    @Override // com.sigmob.sdk.base.views.n.b
                    public void a() {
                        s.this.p();
                        com.sigmob.sdk.base.common.v vVar = s.this.f81070g;
                        if (vVar != null) {
                            vVar.a(com.sigmob.sdk.base.common.a.f78873g, 0);
                        }
                        s.this.c("fourElementsDidDisappear");
                    }

                    @Override // com.sigmob.sdk.base.views.n.b
                    public void b() {
                        com.sigmob.sdk.base.common.v vVar = s.this.f81070g;
                        if (vVar != null) {
                            vVar.a(com.sigmob.sdk.base.common.a.f78872f, 0);
                        }
                        s.this.c("fourElementsDidAppear");
                    }

                    @Override // com.sigmob.sdk.base.views.n.b
                    public void a(Error error) {
                    }

                    @Override // com.sigmob.sdk.base.views.n.b
                    public void a(String url, String clickCoordinate) {
                        if (s.this.f81073j == null) {
                            return;
                        }
                        s.this.f81073j.a(com.sigmob.sdk.base.a.ENDCARD, url, clickCoordinate, true);
                    }
                });
            }
            if (s.this.f81084u == null || !s.this.f81084u.a() || s.this.f81085v) {
                return;
            }
            s.this.f81084u.show();
            s.this.f81085v = true;
        }

        @Override // com.sigmob.sdk.mraid.h.a
        public void h() {
            s.this.f81077n.a(new ValueCallback() { // from class: com.sigmob.sdk.mraid.n0
                @Override // android.webkit.ValueCallback
                public final void onReceiveValue(Object obj) {
                    this.f81047a.b((String) obj);
                }
            });
            s.this.a(IntentActions.ACTION_REWARDED_VIDEO_CLOSE);
            s.this.f81082s = true;
            ((com.sigmob.sdk.base.common.j) s.this).f79163d.a();
        }

        @Override // com.sigmob.sdk.mraid.h.a
        public void a() {
            s.this.b("show");
        }

        @Override // com.sigmob.sdk.mraid.h.a
        public void b(float progress) {
            if (s.this.f81081r) {
                return;
            }
            s.this.f81081r = true;
            s.this.b("skip");
            s.this.a(IntentActions.ACTION_REWARDED_VIDEO_SKIP);
        }

        /* JADX INFO: Access modifiers changed from: private */
        public /* synthetic */ void b(String str) {
            if (c.a(str) == null || s.this.f81070g == null) {
                return;
            }
            float f10 = Float.parseFloat(str);
            if (f10 < 0.999f && !s.this.f81081r) {
                s.this.f81081r = true;
                s.this.b("skip");
            }
            if (s.this.f81075l || s.this.f81076m.getAd_type() == 4 || f10 <= s.this.f81076m.getFinishedTime()) {
                return;
            }
            s.this.f81075l = true;
            s sVar = s.this;
            sVar.f81070g.a("reward", sVar.f81077n.f().intValue());
            s.this.a(IntentActions.ACTION_REWARDED_VIDEO_COMPLETE);
        }

        @Override // com.sigmob.sdk.mraid.h.a
        public void a(float cvtime) {
            s.this.f81075l = true;
            s.this.b("reward");
            s.this.a(IntentActions.ACTION_REWARDED_VIDEO_COMPLETE);
        }

        @Override // com.sigmob.sdk.mraid.h.a
        public void a(int width, int height, int offsetX, int offsetY, b.a closePosition, boolean allowOffscreen) {
        }

        @Override // com.sigmob.sdk.mraid.h.a
        public void a(View view) {
            s.this.b("start");
            s.this.a(IntentActions.ACTION_INTERSTITIAL_SHOW);
            SigmobLog.d("onLoaded() called");
        }

        @Override // com.sigmob.sdk.mraid.h.a
        public void a(WindAdError error) {
            SigmobLog.d("Finishing the activity due to a problem: " + error);
            s.this.b("error");
            if (((com.sigmob.sdk.base.common.j) s.this).f79161b != null) {
                s.this.a(IntentActions.ACTION_INTERSTITIAL_FAIL);
            }
            ((com.sigmob.sdk.base.common.j) s.this).f79163d.a();
        }

        @Override // com.sigmob.sdk.mraid.h.a
        public void a(String ext) {
            boolean z10 = true;
            if (!TextUtils.isEmpty(ext)) {
                try {
                    JSONObject jSONObject = new JSONObject(ext);
                    int iOptInt = jSONObject.optInt("type");
                    if (jSONObject.has("x") && jSONObject.has("y")) {
                        s.this.f81077n.a(String.valueOf(jSONObject.optInt("x")), String.valueOf(jSONObject.optInt("y")));
                    }
                    if (iOptInt != 1) {
                        s.this.f81088y = jSONObject.optJSONObject("log_data");
                    } else {
                        z10 = false;
                    }
                } catch (Exception unused) {
                    s.this.f81077n.a("0", "0");
                }
            }
            s.this.f81073j.a(com.sigmob.sdk.base.a.COMPANION, s.this.f81077n.a(), z10);
        }

        /* JADX WARN: Code duplicated, block: B:27:0x0073  */
        /* JADX WARN: Code duplicated, block: B:28:0x008d  */
        @Override // com.sigmob.sdk.mraid.h.a
        public void a(URI uri, int InterActionType, String ext) {
            boolean z10;
            boolean z11;
            JSONObject jSONObject;
            boolean z12;
            boolean z13 = true;
            boolean z14 = false;
            JSONObject jSONObject2 = null;
            if (TextUtils.isEmpty(ext)) {
                jSONObject = null;
                z12 = true;
                z11 = true;
            } else {
                try {
                    JSONObject jSONObject3 = new JSONObject(ext);
                    try {
                        int iOptInt = jSONObject3.optInt("type");
                        if (jSONObject3.has("x") && jSONObject3.has("y")) {
                            s.this.f81077n.a(String.valueOf(jSONObject3.optInt("x")), String.valueOf(jSONObject3.optInt("y")));
                        }
                        boolean zOptBoolean = jSONObject3.optBoolean("disable_landing");
                        try {
                            z10 = !jSONObject3.optBoolean("feDisable");
                            if (iOptInt != 1) {
                                try {
                                    s.this.f81088y = jSONObject3.optJSONObject("log_data");
                                } catch (Exception unused) {
                                    z14 = zOptBoolean;
                                    jSONObject2 = jSONObject3;
                                    z11 = z10;
                                    jSONObject = jSONObject2;
                                    z12 = true;
                                }
                            } else {
                                z13 = false;
                            }
                            z14 = zOptBoolean;
                            z11 = z10;
                            jSONObject = jSONObject3;
                            z12 = z13;
                        } catch (Exception unused2) {
                            z14 = zOptBoolean;
                            jSONObject2 = jSONObject3;
                            z10 = true;
                            z11 = z10;
                            jSONObject = jSONObject2;
                            z12 = true;
                            if (z14) {
                                s.this.f81073j.a(com.sigmob.sdk.base.a.ENDCARD, uri.toString(), s.this.f81077n.a(), z12, z11, jSONObject);
                            } else {
                                s.this.f81073j.a(com.sigmob.sdk.base.a.ENDCARD, (String) null, s.this.f81077n.a(), z12, z11);
                            }
                        }
                    } catch (Exception unused3) {
                    }
                } catch (Exception unused4) {
                }
            }
            if (z14) {
                s.this.f81073j.a(com.sigmob.sdk.base.a.ENDCARD, uri.toString(), s.this.f81077n.a(), z12, z11, jSONObject);
            } else {
                s.this.f81073j.a(com.sigmob.sdk.base.a.ENDCARD, (String) null, s.this.f81077n.a(), z12, z11);
            }
        }

        @Override // com.sigmob.sdk.mraid.h.a
        public void a(boolean isMute) {
            s sVar;
            String str;
            if (isMute) {
                sVar = s.this;
                str = com.sigmob.sdk.base.common.a.f78892z;
            } else {
                sVar = s.this;
                str = com.sigmob.sdk.base.common.a.A;
            }
            sVar.b(str);
        }
    }

    /* JADX INFO: renamed from: com.sigmob.sdk.mraid.s$7, reason: invalid class name */
    static /* synthetic */ class AnonymousClass7 {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        static final /* synthetic */ int[] f81100a;

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        static final /* synthetic */ int[] f81101b;

        static {
            int[] iArr = new int[com.sigmob.sdk.base.a.values().length];
            f81101b = iArr;
            try {
                iArr[com.sigmob.sdk.base.a.COMPANION.ordinal()] = 1;
            } catch (NoSuchFieldError unused) {
            }
            try {
                f81101b[com.sigmob.sdk.base.a.VIDEO_CLICK.ordinal()] = 2;
            } catch (NoSuchFieldError unused2) {
            }
            int[] iArr2 = new int[ConsoleMessage.MessageLevel.values().length];
            f81100a = iArr2;
            try {
                iArr2[ConsoleMessage.MessageLevel.ERROR.ordinal()] = 1;
            } catch (NoSuchFieldError unused3) {
            }
        }
    }

    public s(Activity activity, BaseAdUnit baseAdUnit, Bundle intentExtras, Bundle savedInstanceState, String broadcastIdentifier, com.sigmob.sdk.base.common.k baseAdViewControllerListener) {
        super(activity, broadcastIdentifier, baseAdViewControllerListener);
        this.f81082s = false;
        this.f81083t = false;
        this.f81085v = false;
        this.f81089z = new View.OnClickListener() { // from class: com.sigmob.sdk.mraid.s.5
            @Override // android.view.View.OnClickListener
            public void onClick(View view) {
                Activity activityN = s.this.n();
                if (activityN == null || s.this.f81076m == null) {
                    return;
                }
                s sVar = s.this;
                if (sVar.a(sVar.f81086w)) {
                    return;
                }
                s.this.f81086w = new com.sigmob.sdk.nativead.b(activityN, s.this.f81076m);
                s.this.f81086w.a();
                s.this.f81086w.a(new WindNativeAdData.DislikeInteractionCallback() { // from class: com.sigmob.sdk.mraid.s.5.1
                    @Override // com.sigmob.windad.natives.WindNativeAdData.DislikeInteractionCallback
                    public void onCancel() {
                        s.this.s();
                    }

                    @Override // com.sigmob.windad.natives.WindNativeAdData.DislikeInteractionCallback
                    public void onSelected(int position, String value, boolean enforce) {
                        s.this.s();
                    }

                    @Override // com.sigmob.windad.natives.WindNativeAdData.DislikeInteractionCallback
                    public void onShow() {
                    }
                });
            }
        };
        this.f81076m = baseAdUnit;
        this.f81071h = intentExtras;
        com.sigmob.sdk.videoAd.a aVar = (com.sigmob.sdk.videoAd.a) baseAdUnit.getAdConfig();
        this.f81073j = aVar;
        aVar.a(n(), baseAdUnit, new com.sigmob.sdk.base.views.n.b() { // from class: com.sigmob.sdk.mraid.s.1
            @Override // com.sigmob.sdk.base.views.n.b
            public void a() {
                s.this.c("fourElementsDidDisappear");
            }

            @Override // com.sigmob.sdk.base.views.n.b
            public void b() {
                s.this.c("fourElementsDidAppear");
            }

            @Override // com.sigmob.sdk.base.views.n.b
            public void a(Error error) {
            }

            @Override // com.sigmob.sdk.base.views.n.b
            public void a(String url, String clickCoordinate) {
                ClickCommon clickCommon = s.this.f81076m.getClickCommon();
                clickCommon.click_area = ClickCommon.CLICK_AREA_BTN;
                clickCommon.click_scene = "appinfo";
                clickCommon.is_final_click = true;
            }
        });
        aVar.a((ac) this);
        this.f81074k = ClientMetadata.getInstance().getInsetBottom();
        m().setBackgroundColor(0);
    }

    @Override // com.sigmob.sdk.base.common.j
    public boolean j() {
        return false;
    }

    @Override // com.sigmob.sdk.base.common.ac
    public void onAdClick(boolean isRecord, com.sigmob.sdk.base.a type) {
        com.sigmob.sdk.base.a aVar;
        String str;
        com.sigmob.sdk.base.utils.d.a(f81069f, this.f81076m);
        a(IntentActions.ACTION_INTERSTITIAL_CLICK);
        if (isRecord) {
            int i10 = AnonymousClass7.f81101b[type.ordinal()];
            if (i10 == 1) {
                aVar = com.sigmob.sdk.base.a.COMPANION;
                str = com.sigmob.sdk.base.common.a.f78885s;
            } else if (i10 != 2) {
                aVar = com.sigmob.sdk.base.a.ENDCARD;
                str = "click";
            } else {
                aVar = com.sigmob.sdk.base.a.VIDEO_CLICK;
                str = com.sigmob.sdk.base.common.a.f78886t;
            }
            a(aVar, str);
        }
        this.f81088y = null;
    }

    private void b(Context context, int visibility) {
        if (this.f81087x == null) {
            com.sigmob.sdk.base.views.s sVar = new com.sigmob.sdk.base.views.s(context);
            this.f81087x = sVar;
            sVar.setText("反馈");
            this.f81087x.setOnClickListener(this.f81089z);
            this.f81087x.setId(ClientMetadata.generateViewId());
            int iDipsToIntPixels = Dips.dipsToIntPixels(3.0f, this.f79160a);
            RelativeLayout.LayoutParams layoutParams = new RelativeLayout.LayoutParams(Dips.dipsToIntPixels(45.0f, context), Dips.dipsToIntPixels(30.0f, context));
            layoutParams.addRule(0, this.f81079p.getId());
            layoutParams.addRule(6, this.f81079p.getId());
            layoutParams.setMargins(0, -iDipsToIntPixels, 0, 0);
            m().addView(this.f81087x, layoutParams);
        }
        com.sigmob.sdk.base.views.s sVar2 = this.f81087x;
        if (sVar2 != null) {
            sVar2.setVisibility(visibility);
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void p() {
        com.sigmob.sdk.base.views.n nVar = this.f81084u;
        if (nVar == null) {
            return;
        }
        nVar.dismiss();
        this.f81084u.c();
        this.f81084u = null;
        this.f81085v = false;
    }

    private void q() {
        ak akVar = this.f81079p;
        if (akVar != null) {
            akVar.setVisibility(4);
        }
        com.sigmob.sdk.base.views.s sVar = this.f81087x;
        if (sVar != null) {
            sVar.setVisibility(4);
        }
    }

    private void r() {
        if (this.f81079p == null) {
            a(this.f79160a, 0);
        }
        this.f81079p.setVisibility(0);
        b(l(), 0);
    }

    public View a() {
        String str = this.f79161b;
        z.a aVarA = str != null ? z.a(str) : null;
        this.f81077n = (aVarA == null || aVarA.d() == null) ? new h(this.f79160a, this.f81076m, PlacementType.INTERSTITIAL) : aVarA.d();
        a(new View.OnApplyWindowInsetsListener() { // from class: com.sigmob.sdk.mraid.j0
            @Override // android.view.View.OnApplyWindowInsetsListener
            public final WindowInsets onApplyWindowInsets(View view, WindowInsets windowInsets) {
                return this.f81016a.a(view, windowInsets);
            }
        });
        this.f81077n.a(this.f79164e);
        this.f81077n.a(new h.f() { // from class: com.sigmob.sdk.mraid.s.2

            /* JADX INFO: renamed from: b, reason: collision with root package name */
            private boolean f81092b;

            @Override // com.sigmob.sdk.mraid.h.f
            public void a() {
                SigmobLog.d("adImpression() called");
            }

            @Override // com.sigmob.sdk.mraid.h.f
            public void b() {
                if (this.f81092b) {
                    return;
                }
                s.this.b(com.sigmob.sdk.base.common.a.f78876j);
            }

            @Override // com.sigmob.sdk.mraid.h.f
            public void c() {
                SigmobLog.d("adPlaying() called");
            }

            @Override // com.sigmob.sdk.mraid.h.f
            public void d() {
                this.f81092b = true;
                s.this.b("complete");
                SigmobLog.d("adVideoComplete() called");
            }

            @Override // com.sigmob.sdk.mraid.h.f
            public void e() {
                s.this.b(com.sigmob.sdk.base.common.a.f78877k);
                SigmobLog.d("adVideoFirstQuartile() called");
            }

            @Override // com.sigmob.sdk.mraid.h.f
            public void f() {
                s.this.b(com.sigmob.sdk.base.common.a.f78880n);
                SigmobLog.d("adVideoThirdQuartile() called");
            }

            @Override // com.sigmob.sdk.mraid.h.f
            public void g() {
                s.this.b(com.sigmob.sdk.base.common.a.f78879m);
                SigmobLog.d("adVideoMidpoint() called");
            }

            @Override // com.sigmob.sdk.mraid.h.f
            public void h() {
                s.this.b(com.sigmob.sdk.base.common.a.L);
                s.this.a(IntentActions.ACTION_REWARDED_VIDEO_PLAY);
                SigmobLog.d("adVideoStart() called");
            }

            @Override // com.sigmob.sdk.mraid.h.f
            public void a(Integer duration) {
                s.this.f81080q = duration == null ? -1 : duration.intValue();
                s sVar = s.this;
                sVar.f81070g.a(sVar.f81080q, s.this.f81073j.l());
            }

            @Override // com.sigmob.sdk.mraid.h.f
            public void b(Map<String, String> params) {
                SigmobLog.d("adError() called " + params);
            }

            @Override // com.sigmob.sdk.mraid.h.f
            public void a(Map<String, String> params) {
                try {
                    params.get("id");
                    String str2 = params.get("url");
                    if (!params.get("playerHandles").equalsIgnoreCase("false")) {
                        if (!TextUtils.isEmpty(str2)) {
                            if (str2.startsWith("http")) {
                                s.this.f81076m.setCustomLandPageUrl(str2);
                            } else {
                                s.this.f81076m.setCustomDeeplink(str2);
                            }
                        }
                        s.this.f81073j.a(com.sigmob.sdk.base.a.ENDCARD, s.this.f81077n.a(), true);
                    }
                    SigmobLog.d("adClickThru() called" + params);
                } catch (Throwable th) {
                    SigmobLog.e("adClickThru", th);
                }
            }
        });
        this.f81077n.a(new AnonymousClass3());
        this.f81077n.a(new h.e() { // from class: com.sigmob.sdk.mraid.k0
            @Override // com.sigmob.sdk.mraid.h.e
            public final void useCustomCloseChanged(boolean z10) {
                this.f81034a.c(z10);
            }
        });
        if (aVarA != null) {
            this.f81070g = aVarA.c();
        } else if (!TextUtils.isEmpty(this.f81076m.getHtmlData())) {
            this.f81077n.a(this.f81076m.getHtmlData(), new h.b() { // from class: com.sigmob.sdk.mraid.l0
                @Override // com.sigmob.sdk.mraid.h.b
                public final void onReady(v vVar, com.sigmob.sdk.base.common.v vVar2) {
                    this.f81037a.b(vVar, vVar2);
                }
            });
        } else if (!TextUtils.isEmpty(this.f81076m.getHtmlUrl())) {
            this.f81077n.b(this.f81076m.getHtmlUrl(), new h.b() { // from class: com.sigmob.sdk.mraid.m0
                @Override // com.sigmob.sdk.mraid.h.b
                public final void onReady(v vVar, com.sigmob.sdk.base.common.v vVar2) {
                    this.f81044a.a(vVar, vVar2);
                }
            });
        }
        return this.f81077n.q();
    }

    @Override // com.sigmob.sdk.videoAd.b, com.sigmob.sdk.base.common.j
    public void e() {
        super.e();
        b(n(), this.f81072i, this.f81071h);
        n().getWindow().setFlags(1024, 1024);
        com.sigmob.sdk.base.common.v vVar = this.f81070g;
        if (vVar != null) {
            vVar.a("show", 0);
        }
        m().addView(a(), new FrameLayout.LayoutParams(-1, -1));
        h hVar = this.f81077n;
        if (hVar != null) {
            hVar.a(n());
        }
        a(IntentActions.ACTION_INTERSTITIAL_VOPEN);
        a(new x() { // from class: com.sigmob.sdk.mraid.s.6
            @Override // com.sigmob.sdk.mraid.x
            public boolean a(ConsoleMessage consoleMessage) {
                if (AnonymousClass7.f81100a[consoleMessage.messageLevel().ordinal()] != 1) {
                    return false;
                }
                SigmobLog.e("onConsoleMessage " + consoleMessage.message());
                ad.a("h5_error", "mraid1", 0, consoleMessage.message(), (WindAdRequest) null, (LoadAdRequest) null, s.this.f81076m, (ad.a) null);
                return false;
            }

            @Override // com.sigmob.sdk.mraid.x
            public boolean a(String message, JsResult result) {
                return false;
            }
        });
    }

    @Override // com.sigmob.sdk.base.common.j
    public void f() {
        if (!this.f81082s) {
            this.f81077n.b();
        } else {
            this.f81083t = true;
            a(IntentActions.ACTION_INTERSTITIAL_DISMISS);
        }
    }

    @Override // com.sigmob.sdk.base.common.j
    public void g() {
        this.f81077n.c();
    }

    @Override // com.sigmob.sdk.base.common.j
    public void h() {
        com.sigmob.sdk.base.common.v vVar = this.f81070g;
        if (vVar != null) {
            vVar.a();
            this.f81070g = null;
        }
        h hVar = this.f81077n;
        if (hVar != null) {
            hVar.m();
            this.f81077n = null;
        }
        s();
        p();
        if (!this.f81082s || !this.f81083t) {
            this.f81083t = true;
            a(IntentActions.ACTION_INTERSTITIAL_DISMISS);
        }
        BaseAdUnit baseAdUnit = this.f81076m;
        if (baseAdUnit != null) {
            baseAdUnit.destroy();
        }
        super.h();
    }

    @Override // com.sigmob.sdk.base.common.j
    public void i() {
    }

    @Override // com.sigmob.sdk.base.common.j
    public void o() {
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ WindowInsets a(View view, WindowInsets windowInsets) {
        this.f81077n.a(windowInsets);
        return windowInsets;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void c(String event) {
        c cVarE;
        h hVar = this.f81077n;
        if (hVar == null || hVar.g() == null || (cVarE = this.f81077n.e()) == null) {
            return;
        }
        cVarE.a(event, (HashMap<String, Object>) null);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void s() {
        com.sigmob.sdk.nativead.b bVar = this.f81086w;
        if (bVar == null) {
            return;
        }
        bVar.dismiss();
        this.f81086w.b();
        this.f81086w = null;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void b(v vVar, com.sigmob.sdk.base.common.v vVar2) {
        if (vVar2 != null) {
            this.f81070g = vVar2;
            return;
        }
        com.sigmob.sdk.base.common.v vVar3 = new com.sigmob.sdk.base.common.v();
        this.f81070g = vVar3;
        vVar3.a(this.f81076m);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void c(boolean z10) {
        if (z10) {
            q();
        } else {
            r();
        }
    }

    public void b(final String event) {
        final Integer numF = this.f81077n.f();
        this.f81077n.a(new ValueCallback() { // from class: com.sigmob.sdk.mraid.i0
            @Override // android.webkit.ValueCallback
            public final void onReceiveValue(Object obj) {
                this.f81013a.a(event, numF, (String) obj);
            }
        });
    }

    private void a(Context context, int initialVisibility) {
        if (this.f81079p != null) {
            return;
        }
        ak akVar = new ak(context);
        this.f81079p = akVar;
        akVar.setVisibility(initialVisibility);
        this.f81079p.setId(ClientMetadata.generateViewId());
        int iDipsToIntPixels = Dips.dipsToIntPixels(10.0f, this.f79160a);
        RelativeLayout.LayoutParams layoutParams = new RelativeLayout.LayoutParams(Dips.dipsToIntPixels(22.0f, context), Dips.dipsToIntPixels(22.0f, context));
        layoutParams.addRule(10);
        layoutParams.addRule(11);
        layoutParams.setMargins(iDipsToIntPixels, iDipsToIntPixels * 2, iDipsToIntPixels, iDipsToIntPixels);
        m().addView(this.f81079p, layoutParams);
        this.f81079p.setOnTouchListener(new View.OnTouchListener() { // from class: com.sigmob.sdk.mraid.s.4
            @Override // android.view.View.OnTouchListener
            public boolean onTouch(View view, MotionEvent motionEvent) {
                if (motionEvent.getAction() == 1) {
                    s.this.f81082s = true;
                    s.this.f81073j.b(s.this.l(), s.this.f81080q, s.this.f81076m);
                    s.this.k().a();
                }
                return true;
            }
        });
        this.f81079p.a(this.f81076m);
        String strF = this.f81073j.f();
        if (strF != null) {
            this.f81079p.a(strF);
        }
    }

    @Override // com.sigmob.sdk.base.common.j
    public void a(Configuration configuration) {
        this.f81077n.a(configuration.orientation);
    }

    @Override // com.sigmob.sdk.base.common.j
    public void a(Bundle outState) {
    }

    private void a(com.sigmob.sdk.base.a companion, String adCompanionClick) {
        BaseAdUnit baseAdUnit = this.f81076m;
        if (baseAdUnit == null) {
            return;
        }
        ClickCommon clickCommon = baseAdUnit.getClickCommon();
        ad.a(companion, "click", this.f81076m, clickCommon.isDeeplink, clickCommon.clickUrl, clickCommon.clickCoordinate, this.f81080q, this.f81088y);
        b(adCompanionClick);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void a(v vVar, com.sigmob.sdk.base.common.v vVar2) {
        if (vVar2 != null) {
            this.f81070g = vVar2;
            return;
        }
        com.sigmob.sdk.base.common.v vVar3 = new com.sigmob.sdk.base.common.v();
        this.f81070g = vVar3;
        vVar3.a(this.f81076m);
    }

    public void a(x debugListener) {
        this.f81078o = debugListener;
        h hVar = this.f81077n;
        if (hVar == null) {
            return;
        }
        hVar.a(debugListener);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void a(String str, Integer num, String str2) {
        if (this.f81070g == null) {
            return;
        }
        try {
            if (c.a(str2) == null) {
                if (str.equals("show_skip")) {
                    this.f81070g.a(false, 0);
                }
                this.f81070g.a(str, 0);
            } else {
                float f10 = Float.parseFloat(str2);
                float fIntValue = (((double) f10) <= 1.0E-7d || num == null || num.intValue() <= 0) ? -1.0f : f10 * num.intValue();
                if (str.equals("show_skip")) {
                    this.f81070g.a(false, (int) fIntValue);
                }
                this.f81070g.a(str, (int) fIntValue);
            }
        } catch (Throwable th) {
            th.printStackTrace();
        }
    }

    public void a(boolean status) {
        if (com.sigmob.sdk.base.utils.w.b(this.f81077n)) {
            this.f81077n.a(status);
        }
    }
}
