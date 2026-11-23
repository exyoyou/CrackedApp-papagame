package com.sigmob.sdk.videoAd;

import android.animation.ValueAnimator;
import android.app.Activity;
import android.app.Dialog;
import android.content.Context;
import android.content.Intent;
import android.content.res.Configuration;
import android.graphics.Bitmap;
import android.media.MediaMetadataRetriever;
import android.net.Uri;
import android.os.Bundle;
import android.os.Handler;
import android.os.Looper;
import android.util.Base64;
import android.view.MotionEvent;
import android.view.View;
import android.view.ViewGroup;
import android.view.ViewParent;
import android.view.animation.LinearInterpolator;
import android.view.animation.RotateAnimation;
import android.webkit.DownloadListener;
import android.webkit.JavascriptInterface;
import android.webkit.WebResourceError;
import android.webkit.WebResourceRequest;
import android.webkit.WebView;
import android.widget.ImageView;
import android.widget.LinearLayout;
import android.widget.RelativeLayout;
import androidx.core.app.NotificationCompat;
import com.byazt.bv.BaseConstants;
import com.czhj.sdk.common.ClientMetadata;
import com.czhj.sdk.common.ThreadPool.ThreadPoolFactory;
import com.czhj.sdk.common.utils.Dips;
import com.czhj.sdk.common.utils.Preconditions;
import com.czhj.sdk.common.utils.ResourceUtil;
import com.czhj.sdk.logger.SigmobLog;
import com.czhj.volley.toolbox.ImageLoader;
import com.czhj.volley.toolbox.StringUtil;
import com.haima.hmcp.proto.GSSDK;
import com.sigmob.sdk.base.common.ac;
import com.sigmob.sdk.base.common.ad;
import com.sigmob.sdk.base.models.BaseAdUnit;
import com.sigmob.sdk.base.models.ClickCommon;
import com.sigmob.sdk.base.models.IntentActions;
import com.sigmob.sdk.base.models.SensorEntity;
import com.sigmob.sdk.base.models.SigMacroCommon;
import com.sigmob.sdk.base.models.rtb.ClickAreaSetting;
import com.sigmob.sdk.base.models.rtb.Color;
import com.sigmob.sdk.base.models.rtb.CompanionEndcard;
import com.sigmob.sdk.base.models.rtb.LinkAction;
import com.sigmob.sdk.base.models.rtb.MaterialMeta;
import com.sigmob.sdk.base.mta.PointCategory;
import com.sigmob.sdk.base.mta.PointEntitySigmob;
import com.sigmob.sdk.base.views.ag;
import com.sigmob.sdk.base.views.ai;
import com.sigmob.sdk.base.views.ak;
import com.sigmob.sdk.base.views.al;
import com.sigmob.sdk.base.views.ap;
import com.sigmob.windad.natives.WindNativeAdData;
import java.io.File;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.List;
import java.util.Locale;
import java.util.Map;
import java.util.regex.Matcher;
import java.util.regex.Pattern;
import org.json.JSONObject;

/* JADX INFO: loaded from: classes3.dex */
public class j extends b implements ac, com.sigmob.sdk.base.common.h.a, com.sigmob.sdk.videocache.d {

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    public static final String f81821f = "j";

    /* JADX INFO: renamed from: g, reason: collision with root package name */
    static final String f81822g = "video_config";

    /* JADX INFO: renamed from: i, reason: collision with root package name */
    private static final String f81823i = "current_position";

    /* JADX INFO: renamed from: j, reason: collision with root package name */
    private static final String f81824j = "video_finished";

    /* JADX INFO: renamed from: k, reason: collision with root package name */
    private static final String f81825k = "companionAd_visable";

    /* JADX INFO: renamed from: l, reason: collision with root package name */
    private static final long f81826l = 50;

    /* JADX INFO: renamed from: m, reason: collision with root package name */
    private static final int f81827m = -1;

    /* JADX INFO: renamed from: n, reason: collision with root package name */
    private static final int f81828n = 0;

    /* JADX INFO: renamed from: o, reason: collision with root package name */
    private static int f81829o;
    private String A;
    private boolean B;
    private final Handler C;
    private boolean D;
    private com.sigmob.sdk.base.views.c E;
    private String F;
    private int G;
    private boolean H;
    private com.sigmob.sdk.videoAd.a I;
    private int J;
    private com.sigmob.sdk.videoplayer.a K;
    private BaseAdUnit L;
    private View M;
    private com.sigmob.sdk.base.common.v N;
    private final MediaMetadataRetriever O;
    private al P;
    private ak Q;
    private com.sigmob.sdk.base.views.s R;
    private f S;
    private int T;
    private int U;
    private boolean V;
    private boolean W;
    private int X;
    private boolean Y;
    private RelativeLayout Z;

    /* JADX INFO: renamed from: aa, reason: collision with root package name */
    private boolean f81830aa;

    /* JADX INFO: renamed from: ab, reason: collision with root package name */
    private ak f81831ab;

    /* JADX INFO: renamed from: ac, reason: collision with root package name */
    private boolean f81832ac;

    /* JADX INFO: renamed from: ad, reason: collision with root package name */
    private boolean f81833ad;
    private ImageLoader.ImageContainer ae;
    private com.sigmob.sdk.base.views.k af;
    private boolean ag;
    private boolean ah;
    private com.sigmob.sdk.base.views.v ai;
    private boolean aj;
    private com.sigmob.sdk.base.views.n ak;
    private boolean al;
    private com.sigmob.sdk.base.views.s am;
    private com.sigmob.sdk.base.views.s an;
    private com.sigmob.sdk.base.common.al.a ao;
    private com.sigmob.sdk.base.views.r ap;
    private boolean aq;
    private com.sigmob.sdk.nativead.b ar;
    private com.sigmob.sdk.base.views.s as;
    private boolean at;
    private boolean au;
    private boolean av;
    private boolean aw;
    private String ax;
    private final View.OnClickListener ay;
    private boolean az;

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    String f81834h;

    /* JADX INFO: renamed from: p, reason: collision with root package name */
    private final int f81835p;

    /* JADX INFO: renamed from: q, reason: collision with root package name */
    private com.sigmob.sdk.base.views.a f81836q;

    /* JADX INFO: renamed from: r, reason: collision with root package name */
    private ImageView f81837r;

    /* JADX INFO: renamed from: s, reason: collision with root package name */
    private RelativeLayout f81838s;

    /* JADX INFO: renamed from: t, reason: collision with root package name */
    private int f81839t;

    /* JADX INFO: renamed from: u, reason: collision with root package name */
    private boolean f81840u;

    /* JADX INFO: renamed from: v, reason: collision with root package name */
    private int f81841v;

    /* JADX INFO: renamed from: w, reason: collision with root package name */
    private String f81842w;

    /* JADX INFO: renamed from: x, reason: collision with root package name */
    private final List<String> f81843x;

    /* JADX INFO: renamed from: y, reason: collision with root package name */
    private final List<String> f81844y;

    /* JADX INFO: renamed from: z, reason: collision with root package name */
    private long f81845z;

    /* JADX INFO: renamed from: com.sigmob.sdk.videoAd.j$10, reason: invalid class name */
    class AnonymousClass10 extends com.sigmob.sdk.base.common.al.b {
        AnonymousClass10() {
        }

        @Override // com.sigmob.sdk.base.common.al.b, com.sigmob.sdk.base.common.al.c
        public void a(Map<String, Number> info) {
            if (info == null || j.this.L == null || j.this.aq) {
                return;
            }
            j.this.aq = true;
            Number number = info.get("x_max_acc");
            Number number2 = info.get("y_max_acc");
            Number number3 = info.get("z_max_acc");
            ClickCommon clickCommon = j.this.L.getClickCommon();
            if (number != null) {
                clickCommon.x_max_acc = String.valueOf(number.intValue());
            }
            if (number2 != null) {
                clickCommon.y_max_acc = String.valueOf(number2.intValue());
            }
            if (number3 != null) {
                clickCommon.z_max_acc = String.valueOf(number3.intValue());
            }
            clickCommon.sld = "2";
            j.this.ap.postDelayed(new Runnable() { // from class: com.sigmob.sdk.videoAd.c0
                @Override // java.lang.Runnable
                public final void run() {
                    this.f81794b.b();
                }
            }, 400L);
        }

        /* JADX INFO: Access modifiers changed from: private */
        public /* synthetic */ void b() {
            j.this.J();
        }
    }

    /* JADX INFO: renamed from: com.sigmob.sdk.videoAd.j$11, reason: invalid class name */
    class AnonymousClass11 extends com.sigmob.sdk.base.common.al.b {
        AnonymousClass11() {
        }

        @Override // com.sigmob.sdk.base.common.al.b, com.sigmob.sdk.base.common.al.c
        public void a(Map<String, Number> info) {
            if (info == null || j.this.L == null || j.this.aq) {
                return;
            }
            j.this.aq = true;
            Number number = info.get("turn_x");
            Number number2 = info.get("turn_y");
            Number number3 = info.get("turn_z");
            Number number4 = info.get("turn_time");
            ClickCommon clickCommon = j.this.L.getClickCommon();
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
            j.this.ap.postDelayed(new Runnable() { // from class: com.sigmob.sdk.videoAd.d0
                @Override // java.lang.Runnable
                public final void run() {
                    this.f81796b.b();
                }
            }, 400L);
        }

        /* JADX INFO: Access modifiers changed from: private */
        public /* synthetic */ void b() {
            j.this.J();
        }
    }

    /* JADX INFO: renamed from: com.sigmob.sdk.videoAd.j$12, reason: invalid class name */
    class AnonymousClass12 extends com.sigmob.sdk.base.common.al.b {
        AnonymousClass12() {
        }

        @Override // com.sigmob.sdk.base.common.al.b, com.sigmob.sdk.base.common.al.c
        public void a(float progress) {
            if (j.this.ap instanceof ai) {
                ((ai) j.this.ap).a(progress);
            }
        }

        /* JADX INFO: Access modifiers changed from: private */
        public /* synthetic */ void b() {
            j.this.J();
        }

        @Override // com.sigmob.sdk.base.common.al.b, com.sigmob.sdk.base.common.al.c
        public void a(Map<String, Number> info) {
            if (info == null || j.this.L == null || j.this.aq) {
                return;
            }
            j.this.aq = true;
            Number number = info.get("x_max_acc");
            Number number2 = info.get("y_max_acc");
            Number number3 = info.get("z_max_acc");
            ClickCommon clickCommon = j.this.L.getClickCommon();
            if (number != null) {
                clickCommon.x_max_acc = String.valueOf(number.intValue());
            }
            if (number2 != null) {
                clickCommon.y_max_acc = String.valueOf(number2.intValue());
            }
            if (number3 != null) {
                clickCommon.z_max_acc = String.valueOf(number3.intValue());
            }
            clickCommon.sld = "2";
            j.this.ap.postDelayed(new Runnable() { // from class: com.sigmob.sdk.videoAd.e0
                @Override // java.lang.Runnable
                public final void run() {
                    this.f81804b.b();
                }
            }, 400L);
        }
    }

    /* JADX INFO: renamed from: com.sigmob.sdk.videoAd.j$13, reason: invalid class name */
    class AnonymousClass13 extends com.sigmob.sdk.base.common.al.b {
        AnonymousClass13() {
        }

        @Override // com.sigmob.sdk.base.common.al.b, com.sigmob.sdk.base.common.al.c
        public void a(float progress) {
            if (j.this.ap instanceof ag) {
                ((ag) j.this.ap).a(progress);
            }
        }

        /* JADX INFO: Access modifiers changed from: private */
        public /* synthetic */ void b() {
            j.this.J();
        }

        @Override // com.sigmob.sdk.base.common.al.b, com.sigmob.sdk.base.common.al.c
        public void a(Map<String, Number> info) {
            if (info == null || j.this.L == null || j.this.aq) {
                return;
            }
            j.this.aq = true;
            Number number = info.get("turn_x");
            Number number2 = info.get("turn_y");
            Number number3 = info.get("turn_z");
            Number number4 = info.get("turn_time");
            ClickCommon clickCommon = j.this.L.getClickCommon();
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
            j.this.ap.postDelayed(new Runnable() { // from class: com.sigmob.sdk.videoAd.f0
                @Override // java.lang.Runnable
                public final void run() {
                    this.f81815b.b();
                }
            }, 400L);
        }
    }

    /* JADX INFO: renamed from: com.sigmob.sdk.videoAd.j$6, reason: invalid class name */
    class AnonymousClass6 extends com.sigmob.sdk.base.l {
        AnonymousClass6() {
        }

        /* JADX INFO: Access modifiers changed from: private */
        public static /* synthetic */ void a(String str, Object obj) {
            if (obj instanceof PointEntitySigmob) {
                ((PointEntitySigmob) obj).setUrl(str);
            }
        }

        @Override // android.webkit.WebViewClient
        public void onPageFinished(WebView view, String url) {
            super.onPageFinished(view, url);
            SigmobLog.d("onPageFinished: ");
            j.this.f81842w = "done";
        }

        @Override // android.webkit.WebViewClient
        public void onPageStarted(WebView view, String url, Bitmap favicon) {
            super.onPageStarted(view, url, favicon);
            SigmobLog.d("onPageStarted: ");
        }

        @Override // android.webkit.WebViewClient
        public void onReceivedError(WebView view, int errorCode, String description, String failingUrl) {
            super.onReceivedError(view, errorCode, description, failingUrl);
            if (failingUrl.startsWith("http://")) {
                return;
            }
            j.this.f81842w = "error";
        }

        @Override // android.webkit.WebViewClient
        public boolean shouldOverrideUrlLoading(WebView view, String url) {
            try {
                SigmobLog.d("load url " + url);
                Uri uri = Uri.parse(url);
                String host = uri.getHost();
                String scheme = uri.getScheme();
                if (!com.sigmob.sdk.base.utils.t.a((CharSequence) host)) {
                    if (!"track".equals(host) && !"active".equals(host)) {
                        if ("openFourElements".equals(host)) {
                            j.this.b(2);
                            return true;
                        }
                    }
                    String queryParameter = uri.getQueryParameter("data");
                    String queryParameter2 = uri.getQueryParameter(NotificationCompat.CATEGORY_EVENT);
                    if (!com.sigmob.sdk.base.utils.t.a((CharSequence) queryParameter2) && !com.sigmob.sdk.base.utils.t.a((CharSequence) queryParameter)) {
                        final String str = new String(Base64.decode(queryParameter, 0), "utf-8");
                        ad.a(host, queryParameter2, j.this.L, new ad.a() { // from class: com.sigmob.sdk.videoAd.g0
                            @Override // com.sigmob.sdk.base.common.ad.a
                            public final void onAddExtra(Object obj) {
                                j.AnonymousClass6.a(str, obj);
                            }
                        });
                    }
                    return true;
                }
                if (j.this.f81830aa) {
                    return true;
                }
                if (j.this.L.getMaterial().disable_auto_deeplink.booleanValue() && !j.this.B) {
                    return (com.sigmob.sdk.base.utils.t.b(scheme) && scheme.startsWith("http")) ? false : true;
                }
                if (j.this.L.getMaterial().click_type.intValue() == com.sigmob.sdk.base.common.m.Button.a() || com.sigmob.sdk.base.utils.t.a((CharSequence) j.this.L.getLanding_page()) || j.this.L.getMaterial().creative_type.intValue() == com.sigmob.sdk.base.common.n.CreativeTypeVideo_EndCardURL.a()) {
                    j.this.L.getClickCommon().click_area = ClickCommon.CLICK_AREA_BTN;
                    j.this.L.getClickCommon().click_scene = "endcard";
                    if (j.this.Q.getVisibility() != 0 || com.sigmob.sdk.base.utils.t.a((CharSequence) scheme)) {
                        if (!com.sigmob.sdk.base.utils.t.a((CharSequence) scheme) && (scheme.equals("http") || scheme.equals("https"))) {
                            if (j.this.ah) {
                                j.this.W();
                                j.this.ah = false;
                            }
                            view.loadUrl(url);
                        }
                    } else if (!StringUtil.scheme().equalsIgnoreCase(scheme) || com.sigmob.sdk.base.utils.t.a((CharSequence) host) || !host.equalsIgnoreCase("download") || com.sigmob.sdk.base.utils.t.a((CharSequence) j.this.L.getMaterial().landing_page)) {
                        try {
                            LinkAction linkActionA = com.sigmob.sdk.videoplayer.c.a(j.this.L.getAdLinkActions(), uri);
                            if (linkActionA == null) {
                                linkActionA = com.sigmob.sdk.videoplayer.c.a(j.this.L.getSlotAdLinkActions(), uri);
                            }
                            boolean zHasReachedMaxRedirectCount = j.this.L.hasReachedMaxRedirectCount();
                            int quickAppMaxRedirectCount = j.this.L.getQuickAppMaxRedirectCount();
                            if (zHasReachedMaxRedirectCount) {
                                com.sigmob.sdk.base.utils.k.e(j.f81821f, "reach max redirect count(%d).", Integer.valueOf(quickAppMaxRedirectCount));
                                return true;
                            }
                            int redirectCount = j.this.L.getRedirectCount(uri);
                            if (linkActionA != null && linkActionA.redirect_count.intValue() <= redirectCount) {
                                com.sigmob.sdk.base.utils.k.e(j.f81821f, "%s reach redirect count(%d).", scheme, Integer.valueOf(redirectCount));
                                return true;
                            }
                            if (!scheme.equalsIgnoreCase("http") && !scheme.equalsIgnoreCase("https")) {
                                j.this.L.addRedirectCount(uri);
                                j.this.L.setCustomDeeplink(url);
                                j.this.L.incrementRedirectCount();
                                j.this.I.a(com.sigmob.sdk.base.a.ENDCARD, j.this.f81834h, true);
                                com.sigmob.sdk.base.utils.k.c(j.f81821f, "%s(quick) not reach redirect count(%d).", scheme, Integer.valueOf(redirectCount));
                                return true;
                            }
                            view.loadUrl(url);
                            com.sigmob.sdk.base.utils.k.c(j.f81821f, "%s(302) not reach redirect count(%d).", scheme, Integer.valueOf(redirectCount));
                        } catch (Exception e10) {
                            e10.printStackTrace();
                        }
                    } else {
                        j.this.I.a(com.sigmob.sdk.base.a.ENDCARD, j.this.f81834h, true);
                    }
                } else if (j.this.L.getMaterial().click_type.intValue() == com.sigmob.sdk.base.common.m.FullScreen.a()) {
                    com.sigmob.sdk.base.utils.t.a((CharSequence) j.this.L.getLanding_page());
                    return true;
                }
            } catch (Throwable unused) {
                SigmobLog.e("webview");
            }
            return true;
        }

        @Override // android.webkit.WebViewClient
        public void onReceivedError(WebView view, WebResourceRequest request, WebResourceError error) {
            super.onReceivedError(view, request, error);
            String host = request.getUrl().getHost();
            if (com.sigmob.sdk.base.utils.t.a((CharSequence) host) || !host.equals("localhost")) {
                return;
            }
            j.this.f81842w = "error";
        }
    }

    /* JADX INFO: renamed from: com.sigmob.sdk.videoAd.j$7, reason: invalid class name */
    static /* synthetic */ class AnonymousClass7 {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        static final /* synthetic */ int[] f81861a;

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        static final /* synthetic */ int[] f81862b;

        static {
            int[] iArr = new int[com.sigmob.sdk.base.a.values().length];
            f81862b = iArr;
            try {
                iArr[com.sigmob.sdk.base.a.COMPANION.ordinal()] = 1;
            } catch (NoSuchFieldError unused) {
            }
            try {
                f81862b[com.sigmob.sdk.base.a.VIDEO_CLICK.ordinal()] = 2;
            } catch (NoSuchFieldError unused2) {
            }
            try {
                f81862b[com.sigmob.sdk.base.a.MOTION.ordinal()] = 3;
            } catch (NoSuchFieldError unused3) {
            }
            int[] iArr2 = new int[com.sigmob.sdk.videoplayer.d.values().length];
            f81861a = iArr2;
            try {
                iArr2[com.sigmob.sdk.videoplayer.d.STATE_PREPARED.ordinal()] = 1;
            } catch (NoSuchFieldError unused4) {
            }
            try {
                f81861a[com.sigmob.sdk.videoplayer.d.STATE_PLAYING.ordinal()] = 2;
            } catch (NoSuchFieldError unused5) {
            }
            try {
                f81861a[com.sigmob.sdk.videoplayer.d.STATE_AUTO_COMPLETE.ordinal()] = 3;
            } catch (NoSuchFieldError unused6) {
            }
            try {
                f81861a[com.sigmob.sdk.videoplayer.d.STATE_STOP.ordinal()] = 4;
            } catch (NoSuchFieldError unused7) {
            }
            try {
                f81861a[com.sigmob.sdk.videoplayer.d.STATE_BUFFERING_START.ordinal()] = 5;
            } catch (NoSuchFieldError unused8) {
            }
            try {
                f81861a[com.sigmob.sdk.videoplayer.d.STATE_BUFFERING_END.ordinal()] = 6;
            } catch (NoSuchFieldError unused9) {
            }
            try {
                f81861a[com.sigmob.sdk.videoplayer.d.STATE_PAUSE.ordinal()] = 7;
            } catch (NoSuchFieldError unused10) {
            }
            try {
                f81861a[com.sigmob.sdk.videoplayer.d.STATE_ERROR.ordinal()] = 8;
            } catch (NoSuchFieldError unused11) {
            }
        }
    }

    static class a {
        a() {
        }

        @JavascriptInterface
        public int getInteractionType() {
            return j.f81829o;
        }

        @JavascriptInterface
        public String getSdkVersion() {
            return com.sigmob.sdk.base.n.f79584k;
        }
    }

    public j(Activity activity, BaseAdUnit adUnit, Bundle intentExtras, Bundle savedInstanceState, String uuid, com.sigmob.sdk.base.common.k controllerListener) throws IllegalStateException {
        super(activity, uuid, controllerListener);
        this.f81839t = 0;
        this.f81840u = false;
        this.f81841v = 0;
        this.f81842w = "undone";
        this.f81843x = new ArrayList();
        this.f81844y = new ArrayList();
        this.A = "none";
        this.C = new Handler(Looper.getMainLooper());
        this.D = true;
        this.L = null;
        this.O = new MediaMetadataRetriever();
        this.T = 0;
        this.Y = false;
        this.f81830aa = false;
        this.f81832ac = false;
        this.f81833ad = false;
        this.ag = false;
        this.aj = false;
        this.al = false;
        this.ay = new View.OnClickListener() { // from class: com.sigmob.sdk.videoAd.j.9
            @Override // android.view.View.OnClickListener
            public void onClick(View view) {
                Activity activityN = j.this.n();
                if (activityN == null || j.this.L == null) {
                    return;
                }
                j jVar = j.this;
                if (jVar.a((Dialog) jVar.ar)) {
                    return;
                }
                j.this.ar = new com.sigmob.sdk.nativead.b(activityN, j.this.L);
                j.this.ar.a();
                j.this.ar.a(new WindNativeAdData.DislikeInteractionCallback() { // from class: com.sigmob.sdk.videoAd.j.9.1
                    @Override // com.sigmob.windad.natives.WindNativeAdData.DislikeInteractionCallback
                    public void onCancel() {
                        j.this.N();
                        j.this.G();
                        if (j.this.ao == null) {
                            return;
                        }
                        j.this.ao.a();
                    }

                    @Override // com.sigmob.windad.natives.WindNativeAdData.DislikeInteractionCallback
                    public void onSelected(int position, String value, boolean enforce) {
                        j.this.N();
                        j.this.G();
                        if (j.this.ao == null) {
                            return;
                        }
                        j.this.ao.a();
                    }

                    @Override // com.sigmob.windad.natives.WindNativeAdData.DislikeInteractionCallback
                    public void onShow() {
                        j.this.O();
                        if (j.this.ao == null) {
                            return;
                        }
                        j.this.ao.b();
                    }
                });
            }
        };
        this.L = adUnit;
        this.I = (com.sigmob.sdk.videoAd.a) adUnit.getAdConfig();
        this.f81835p = Dips.dipsToIntPixels(10.0f, this.f79160a);
        this.I.a(n(), this.L, new com.sigmob.sdk.base.views.n.b() { // from class: com.sigmob.sdk.videoAd.j.1
            @Override // com.sigmob.sdk.base.views.n.b
            public void a() {
                j.this.al = false;
                j.this.aq = false;
                j.this.N();
                if (j.this.ao != null) {
                    j.this.ao.a();
                }
            }

            @Override // com.sigmob.sdk.base.views.n.b
            public void b() {
                j.this.al = true;
                j.this.aq = true;
                j.this.O();
                if (j.this.ao != null) {
                    j.this.ao.b();
                }
            }

            @Override // com.sigmob.sdk.base.views.n.b
            public void a(Error error) {
            }

            @Override // com.sigmob.sdk.base.views.n.b
            public void a(String url, String clickCoordinate) {
                ClickCommon clickCommon = j.this.L.getClickCommon();
                clickCommon.click_area = ClickCommon.CLICK_AREA_BTN;
                clickCommon.click_scene = "appinfo";
                clickCommon.is_final_click = true;
            }
        });
        this.I.a((ac) this);
        this.F = this.L.getAdslot_id();
        f81829o = this.L.getInteractionType();
        b(activity, this.J, intentExtras);
        this.L.getMacroCommon().addMarcoKey(SigMacroCommon._PLAYLASTFRAME_, "1");
        this.D = this.L.getMaterial().creative_type.intValue() != com.sigmob.sdk.base.common.n.CreativeTypeVideo_transparent_html.a();
        if (savedInstanceState != null) {
            this.U = savedInstanceState.getInt(f81823i, -1);
            this.V = savedInstanceState.getBoolean(f81824j, false);
            this.Y = savedInstanceState.getBoolean(f81825k, false);
        }
        if (this.f79164e == null) {
            int iB = com.sigmob.sdk.base.k.b();
            if (iB != 0) {
                n().setTheme(iB);
            }
            m().setBackgroundColor(-16777216);
        } else {
            m().setBackgroundColor(0);
        }
        RelativeLayout relativeLayout = new RelativeLayout(this.f79160a);
        this.f81838s = relativeLayout;
        relativeLayout.setBackgroundColor(-16777216);
        this.K = d(this.f79160a, 0);
        RelativeLayout.LayoutParams layoutParams = new RelativeLayout.LayoutParams(-1, -2);
        layoutParams.addRule(13);
        this.f81838s.addView(this.K, layoutParams);
        m().addView(this.f81838s, new RelativeLayout.LayoutParams(-1, -1));
        if (this.f81840u) {
            a(this.f79160a);
            E();
        }
        q();
        this.f81838s.setClickable(true);
        this.f81838s.setOnTouchListener(new View.OnTouchListener() { // from class: com.sigmob.sdk.videoAd.j.8

            /* JADX INFO: renamed from: a, reason: collision with root package name */
            MotionEvent f81863a = null;

            /* JADX WARN: Code duplicated, block: B:32:0x009a  */
            @Override // android.view.View.OnTouchListener
            public boolean onTouch(View v10, MotionEvent event) {
                if (!j.this.L.getFullClickOnVideo()) {
                    if (event.getAction() == 1) {
                        if (j.this.L.getMaterial().enable_collapse_tool_bar.booleanValue() && j.this.af != null && j.this.af.a()) {
                            if (j.this.af.b()) {
                                j.this.af.setVisibility(0);
                            } else {
                                j.this.af.setVisibility(4);
                            }
                        }
                        ad.a(j.this.L, event, "useless_video_click", false);
                    }
                    if (event.getAction() == 0) {
                        this.f81863a = MotionEvent.obtain(event);
                    }
                } else if (j.this.E == null || j.this.E.getVisibility() != 0) {
                    if (event.getAction() == 1) {
                        if (this.f81863a == null) {
                            this.f81863a = event;
                        }
                        j.this.a(this.f81863a, event);
                    } else if (event.getAction() == 0) {
                        this.f81863a = MotionEvent.obtain(event);
                    }
                }
                return true;
            }
        });
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void F() {
        RelativeLayout relativeLayout = this.Z;
        if (relativeLayout != null && relativeLayout.getVisibility() == 0) {
            this.f81843x.add(String.format(Locale.getDefault(), "%d", Long.valueOf(System.currentTimeMillis() - this.f81845z)));
            this.f81844y.add(String.format(Locale.getDefault(), "%.2f", Float.valueOf(((int) this.K.getCurrentPositionWhenPlaying()) / 1000.0f)));
            this.A = "play";
            this.C.removeCallbacksAndMessages(null);
            this.Z.setVisibility(4);
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void G() {
        com.sigmob.sdk.nativead.b bVar = this.ar;
        if (bVar == null) {
            return;
        }
        bVar.dismiss();
        this.ar.b();
        this.ar = null;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void J() {
        this.aq = true;
        ClickCommon clickCommon = this.L.getClickCommon();
        clickCommon.click_area = ClickCommon.CLICK_AREA_COMPONENT;
        clickCommon.click_scene = "ad";
        clickCommon.is_final_click = true;
        this.I.a(com.sigmob.sdk.base.a.MOTION, (String) null, true);
    }

    private void L() {
        Context contextL = l();
        this.ap = new ai(contextL);
        int iDipsToIntPixels = Dips.dipsToIntPixels(100.0f, contextL);
        RelativeLayout.LayoutParams layoutParams = new RelativeLayout.LayoutParams(iDipsToIntPixels, iDipsToIntPixels);
        layoutParams.addRule(14);
        layoutParams.addRule(12);
        layoutParams.setMargins(0, 0, 0, Dips.dipsToIntPixels(145.0f, contextL));
        com.sigmob.sdk.base.common.al.a aVar = new com.sigmob.sdk.base.common.al.a(contextL, new AnonymousClass12(), com.sigmob.sdk.base.common.al.d.SWING);
        this.ao = aVar;
        aVar.a(SensorEntity.format(this.L));
        this.ao.a();
        m().addView(this.ap, layoutParams);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public float P() {
        if (y() <= 0) {
            return 0.0f;
        }
        return ((int) this.K.getCurrentPositionWhenPlaying()) / y();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void R() {
        if (this.as == null || this.L.getAd_type() == 4) {
            return;
        }
        int iB = B();
        if (iB <= 0) {
            this.as.setText("已获得奖励");
            return;
        }
        this.as.setText(iB + "s 后获取奖励");
    }

    private void S() {
        ad.a(PointCategory.PLAY_LOADING, (String) null, this.L, new ad.a() { // from class: com.sigmob.sdk.videoAd.x
            @Override // com.sigmob.sdk.base.common.ad.a
            public final void onAddExtra(Object obj) {
                this.f81878a.a(obj);
            }
        });
    }

    private void U() {
        com.sigmob.sdk.base.views.v vVar = this.ai;
        if (vVar == null) {
            return;
        }
        vVar.dismiss();
        this.ai.c();
        this.ai = null;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void V() {
        ImageView imageView;
        com.sigmob.sdk.base.views.s sVar = this.as;
        if (sVar != null) {
            com.sigmob.sdk.base.utils.x.a(sVar);
        }
        com.sigmob.sdk.base.views.s sVar2 = this.an;
        if (sVar2 != null) {
            com.sigmob.sdk.base.utils.x.a(sVar2);
        }
        com.sigmob.sdk.base.views.r rVar = this.ap;
        if (rVar != null) {
            com.sigmob.sdk.base.utils.x.a(rVar);
        }
        z();
        com.sigmob.sdk.base.common.al.a aVar = this.ao;
        if (aVar != null) {
            aVar.c();
            this.ao = null;
        }
        if (!this.D && (imageView = this.f81837r) != null) {
            ViewParent parent = imageView.getParent();
            if (parent instanceof ViewGroup) {
                ((ViewGroup) parent).removeView(this.f81837r);
            }
            m().addView(this.f81837r, 0);
        }
        com.sigmob.sdk.base.common.h.g().b(this);
        h(l(), 0);
        com.sigmob.sdk.base.views.a aVar2 = this.f81836q;
        if (aVar2 != null) {
            aVar2.setVisibility(8);
        }
        S();
        F();
        if (this.M == null) {
            SigmobLog.e("endcard can't show " + this.L.getEndCardIndexPath());
            HashMap map = new HashMap();
            map.put("error", "endcard can't show");
            a(IntentActions.ACTION_REWARDED_VIDEO_PLAYFAIL, map);
            this.f79163d.a();
        }
        View view = this.M;
        if (view != null) {
            view.setVisibility(0);
            this.M.bringToFront();
        }
        RelativeLayout relativeLayout = this.f81838s;
        if (relativeLayout != null) {
            relativeLayout.setVisibility(4);
            a(IntentActions.ACTION_REWARDED_VIDEO_CLOSE);
        }
        com.sigmob.sdk.base.views.s sVar3 = this.R;
        if (sVar3 != null) {
            com.sigmob.sdk.base.utils.x.a(sVar3);
        }
        ak akVar = this.f81831ab;
        if (akVar != null) {
            com.sigmob.sdk.base.utils.x.a(akVar);
        }
        if (this.ag) {
            com.sigmob.sdk.base.utils.x.a(this.P);
        }
        com.sigmob.sdk.base.views.k kVar = this.af;
        if (kVar != null) {
            com.sigmob.sdk.base.utils.x.a(kVar);
        }
        this.Y = true;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void aa() {
        if (new File(this.L.getVideoPath()).exists()) {
            this.O.setDataSource(this.L.getVideoPath());
        } else {
            this.O.setDataSource(this.L.getVideo_url(), new HashMap());
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void ab() {
        this.C.removeCallbacksAndMessages(null);
        a((int) this.K.getCurrentPositionWhenPlaying(), true);
    }

    private ImageView b(Context context) {
        ImageView imageView = new ImageView(context);
        imageView.setLayoutParams(new RelativeLayout.LayoutParams(-1, -1));
        return imageView;
    }

    private com.sigmob.sdk.videoplayer.a d(Context context, int initialVisibility) {
        if (this.L.getProxyVideoUrl() == null) {
            throw new IllegalStateException("BaseVideoConfig does not have a video disk path");
        }
        final com.sigmob.sdk.videoplayer.a aVar = new com.sigmob.sdk.videoplayer.a(context);
        aVar.setVideoPlayerStatusListener(new com.sigmob.sdk.videoplayer.k() { // from class: com.sigmob.sdk.videoAd.j.14
            @Override // com.sigmob.sdk.videoplayer.k
            public void a(long position, long duration) {
                int iY = j.this.y();
                j.this.R();
                if (j.this.C()) {
                    j.this.a(false);
                }
                if (j.this.u()) {
                    j.this.c(false);
                }
                int iB = j.this.B();
                if (j.this.E != null) {
                    j.this.E.setDuration(iB);
                }
                if (j.this.ag) {
                    j.this.P.a((int) j.this.K.getCurrentPositionWhenPlaying());
                }
                long j10 = iY;
                if (1000 + position < j10) {
                    if (j.this.t()) {
                        j.this.A();
                    } else if (!j.this.au) {
                        j.this.R.setText(String.valueOf((int) ((j10 - j.this.K.getCurrentPositionWhenPlaying()) / 1000.0f)));
                    }
                }
                if (j.this.v()) {
                    j.this.w();
                }
                for (d dVar : j.this.I.a(position, j10)) {
                    j.this.b(dVar.getEvent());
                    dVar.setTracked();
                }
                if (position > j10) {
                    j.this.a(true, false);
                }
            }

            @Override // com.sigmob.sdk.videoplayer.k
            public void a(com.sigmob.sdk.videoplayer.d state) {
                SigmobLog.i("video player state change " + state);
                int i10 = AnonymousClass7.f81861a[state.ordinal()];
                if (i10 != 1) {
                    if (i10 == 3) {
                        j.this.A = "none";
                        j.this.a(true, false);
                        return;
                    }
                    if (i10 == 8) {
                        ad.a("video", aVar.getErrorCode(), aVar.getErrorMessage(), j.this.L, (ad.a) null);
                        j.this.a(false, true);
                        return;
                    } else if (i10 == 5) {
                        j.this.E();
                        aVar.j();
                        return;
                    } else {
                        if (i10 != 6) {
                            return;
                        }
                        j.this.F();
                        aVar.d();
                        return;
                    }
                }
                j.this.X = (int) aVar.getDuration();
                if (j.this.X == 0) {
                    j jVar = j.this;
                    jVar.X = jVar.L.getDuration();
                }
                if (!j.this.au) {
                    j.this.R.setText(String.valueOf((int) (j.this.y() / 1000.0f)));
                    j.this.R.setVisibility(0);
                }
                j jVar2 = j.this;
                jVar2.b(jVar2.l(), 0);
                aVar.getVideoWidth();
                aVar.getVideoHeight();
                if (j.this.S != null) {
                    j.this.S.a(j.this.y());
                }
                if (j.this.f81832ac) {
                    j.this.f81831ab.a(ResourceUtil.getDrawableId(j.this.l(), "sig_image_video_mute"));
                    j.this.K.setMute(true);
                }
                j.this.r().a(j.this.X, j.this.I.l());
                if (!j.this.V && (j.this.U == 0 || j.this.U == -1)) {
                    SigMacroCommon macroCommon = j.this.L.getMacroCommon();
                    macroCommon.addMarcoKey(SigMacroCommon._COMPLETED_, "0");
                    macroCommon.addMarcoKey(SigMacroCommon._VIDEOTIME_, String.valueOf(j.this.y() / 1000));
                }
                if (j.this.ag) {
                    j.this.P.a(j.this.y(), 0);
                }
            }
        });
        try {
            if (!this.D) {
                ThreadPoolFactory.getFixIOExecutor().submit(new Runnable() { // from class: com.sigmob.sdk.videoAd.r
                    @Override // java.lang.Runnable
                    public final void run() {
                        this.f81871b.aa();
                    }
                });
                this.f81837r = b(context);
            }
        } catch (Throwable th) {
            SigmobLog.e(th.getMessage());
        }
        String proxyVideoUrl = this.L.getProxyVideoUrl();
        aVar.setUp(proxyVideoUrl);
        c(proxyVideoUrl);
        aVar.setVisibility(initialVisibility);
        return aVar;
    }

    private void j(final Context context, int initialVisibility) {
        ak akVar = new ak(context);
        this.f81831ab = akVar;
        akVar.setId(ClientMetadata.generateViewId());
        this.f81831ab.setVisibility(initialVisibility);
        RelativeLayout.LayoutParams layoutParams = new RelativeLayout.LayoutParams(Dips.dipsToIntPixels(22.0f, context), Dips.dipsToIntPixels(22.0f, context));
        layoutParams.addRule(4, this.an.getId());
        layoutParams.addRule(11);
        int i10 = this.f81835p;
        layoutParams.setMargins(i10, i10 * 2, i10, 0);
        m().addView(this.f81831ab, layoutParams);
        this.f81831ab.setOnTouchListener(new View.OnTouchListener() { // from class: com.sigmob.sdk.videoAd.j.4
            @Override // android.view.View.OnTouchListener
            public boolean onTouch(View view, MotionEvent motionEvent) {
                if (motionEvent.getAction() == 1) {
                    if (j.this.f81832ac) {
                        j.this.r().a(com.sigmob.sdk.base.common.a.A, (int) j.this.K.getCurrentPositionWhenPlaying());
                        j.this.f81831ab.a(ResourceUtil.getDrawableId(j.this.l(), "sig_image_video_unmute"));
                        j.this.K.setMute(false);
                    } else {
                        j.this.r().a(com.sigmob.sdk.base.common.a.f78892z, (int) j.this.K.getCurrentPositionWhenPlaying());
                        j.this.f81831ab.a(ResourceUtil.getDrawableId(j.this.l(), "sig_image_video_mute"));
                        j.this.K.setMute(true);
                    }
                    j jVar = j.this;
                    jVar.f81832ac = !jVar.f81832ac;
                }
                return true;
            }
        });
        if (this.L.getIsMute() == 0) {
            this.f81831ab.a(ResourceUtil.getDrawableId(l(), "sig_image_video_unmute"));
        } else {
            this.f81831ab.a(ResourceUtil.getDrawableId(l(), "sig_image_video_mute"));
            this.K.setMute(true);
            this.f81832ac = true;
        }
    }

    public static int p() {
        return 0;
    }

    void A() {
        if (this.L.getMaterial().disable_auto_deeplink.booleanValue()) {
            z();
        }
        a((int) this.K.getCurrentPositionWhenPlaying(), false);
        int iB = B();
        com.sigmob.sdk.base.views.c cVar = this.E;
        if (cVar != null) {
            cVar.setDuration(iB);
        }
    }

    int B() {
        try {
            int rewardSeconds = this.L.getRewardSeconds();
            if (rewardSeconds > -1) {
                if (y() > 0 && rewardSeconds * 1000 > y()) {
                    rewardSeconds = (int) (y() / 1000.0f);
                }
                return (int) (rewardSeconds - (this.K.getCurrentPositionWhenPlaying() / 1000.0f));
            }
            if (y() <= 0) {
                return -1;
            }
            return (int) ((((double) (y() / 1000.0f)) * (((double) this.L.getRewardPercent()) * 0.01d)) - ((double) (this.K.getCurrentPositionWhenPlaying() / 1000.0f)));
        } catch (Throwable unused) {
            return -1;
        }
    }

    @Override // com.sigmob.sdk.base.common.j
    public void i() {
    }

    @Override // com.sigmob.sdk.base.common.ac
    public void onAdClick(boolean isRecord, com.sigmob.sdk.base.a type) {
        com.sigmob.sdk.base.common.v vVarR;
        int currentPositionWhenPlaying;
        String str;
        this.az = true;
        W();
        if (isRecord) {
            ClickCommon clickCommon = this.L.getClickCommon();
            int i10 = AnonymousClass7.f81862b[type.ordinal()];
            if (i10 == 1) {
                ad.a(com.sigmob.sdk.base.a.COMPANION, "click", this.L, clickCommon.isDeeplink, clickCommon.clickUrl, clickCommon.clickCoordinate, y(), (JSONObject) null);
                vVarR = r();
                currentPositionWhenPlaying = (int) this.K.getCurrentPositionWhenPlaying();
                str = com.sigmob.sdk.base.common.a.f78885s;
            } else if (i10 == 2) {
                ad.a(com.sigmob.sdk.base.a.VIDEO_CLICK, "click", this.L, clickCommon.isDeeplink, clickCommon.clickUrl, clickCommon.clickCoordinate, y(), (JSONObject) null);
                vVarR = r();
                currentPositionWhenPlaying = (int) this.K.getCurrentPositionWhenPlaying();
                str = com.sigmob.sdk.base.common.a.f78886t;
            } else if (i10 != 3) {
                ad.a(com.sigmob.sdk.base.a.ENDCARD, "click", this.L, clickCommon.isDeeplink, clickCommon.clickUrl, clickCommon.clickCoordinate, y(), (JSONObject) null);
                vVarR = r();
                currentPositionWhenPlaying = (int) this.K.getCurrentPositionWhenPlaying();
                str = "click";
            } else {
                vVarR = r();
                currentPositionWhenPlaying = (int) this.K.getCurrentPositionWhenPlaying();
                str = com.sigmob.sdk.base.common.a.f78875i;
            }
            vVarR.a(str, currentPositionWhenPlaying);
        }
    }

    public com.sigmob.sdk.base.common.v r() {
        if (this.N == null) {
            com.sigmob.sdk.base.common.v vVar = new com.sigmob.sdk.base.common.v();
            this.N = vVar;
            vVar.a(a());
        }
        return this.N;
    }

    public void w() {
        com.sigmob.sdk.base.views.k kVar;
        if (this.H || (kVar = this.af) == null) {
            return;
        }
        kVar.setVisibility(0);
        this.H = true;
    }

    int y() {
        com.sigmob.sdk.videoplayer.a aVar = this.K;
        if (aVar == null) {
            return 0;
        }
        int i10 = this.X;
        return i10 > 0 ? this.I.b(i10) : this.I.b((int) aVar.getDuration());
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void E() {
        RelativeLayout relativeLayout = this.Z;
        if (relativeLayout == null || relativeLayout.getVisibility() == 0) {
            return;
        }
        this.f81845z = System.currentTimeMillis();
        this.Z.setVisibility(0);
        this.A = "loading";
        int i10 = this.f81841v + 1;
        this.f81841v = i10;
        if (i10 > 2) {
            a((int) this.K.getCurrentPositionWhenPlaying(), true);
        } else {
            this.C.postDelayed(new Runnable() { // from class: com.sigmob.sdk.videoAd.t
                @Override // java.lang.Runnable
                public final void run() {
                    this.f81873b.ab();
                }
            }, 5000L);
        }
    }

    private void H() {
        switch ((int) this.L.getWidgetId(0)) {
            case 138731:
                L();
                break;
            case 138733:
                M();
                break;
            case 138757:
                I();
                break;
            case 138758:
                K();
                break;
        }
        com.sigmob.sdk.base.views.r rVar = this.ap;
        if (rVar == null) {
            return;
        }
        rVar.a();
    }

    private void I() {
        Context contextL = l();
        this.ap = new com.sigmob.sdk.base.views.y(contextL);
        int iDipsToIntPixels = Dips.dipsToIntPixels(100.0f, contextL);
        int iDipsToIntPixels2 = Dips.dipsToIntPixels(145.0f, contextL);
        RelativeLayout.LayoutParams layoutParams = new RelativeLayout.LayoutParams(iDipsToIntPixels, iDipsToIntPixels);
        layoutParams.addRule(14);
        layoutParams.addRule(12);
        layoutParams.setMargins(0, 0, 0, iDipsToIntPixels2);
        com.sigmob.sdk.base.common.al.a aVar = new com.sigmob.sdk.base.common.al.a(contextL, new AnonymousClass10(), com.sigmob.sdk.base.common.al.d.SHAKE);
        this.ao = aVar;
        aVar.a(SensorEntity.format(this.L));
        this.ao.a();
        m().addView(this.ap, layoutParams);
    }

    private void K() {
        Context contextL = l();
        this.ap = new ap(contextL);
        int iDipsToIntPixels = Dips.dipsToIntPixels(100.0f, contextL);
        RelativeLayout.LayoutParams layoutParams = new RelativeLayout.LayoutParams(iDipsToIntPixels, iDipsToIntPixels);
        layoutParams.addRule(14);
        layoutParams.addRule(12);
        layoutParams.setMargins(0, 0, 0, Dips.dipsToIntPixels(145.0f, contextL));
        com.sigmob.sdk.base.common.al.a aVar = new com.sigmob.sdk.base.common.al.a(contextL, new AnonymousClass11(), com.sigmob.sdk.base.common.al.d.WRING);
        this.ao = aVar;
        aVar.a(SensorEntity.format(this.L));
        this.ao.a();
        m().addView(this.ap, layoutParams);
    }

    private void M() {
        Context contextL = l();
        this.ap = new ag(contextL);
        int iDipsToIntPixels = Dips.dipsToIntPixels(92.0f, contextL);
        RelativeLayout.LayoutParams layoutParams = new RelativeLayout.LayoutParams(iDipsToIntPixels, iDipsToIntPixels);
        layoutParams.addRule(14);
        layoutParams.addRule(12);
        layoutParams.setMargins(0, 0, 0, Dips.dipsToIntPixels(145.0f, contextL));
        com.sigmob.sdk.base.common.al.a aVar = new com.sigmob.sdk.base.common.al.a(contextL, new AnonymousClass13(), com.sigmob.sdk.base.common.al.d.SLOPE);
        this.ao = aVar;
        aVar.a(SensorEntity.format(this.L));
        this.ao.a();
        m().addView(this.ap, layoutParams);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void N() {
        if (this.V) {
            return;
        }
        try {
            int currentPositionWhenPlaying = (int) this.K.getCurrentPositionWhenPlaying();
            if (this.U > 0 && currentPositionWhenPlaying == 0) {
                SigmobLog.d("video seek to " + this.U);
                this.K.a(this.U);
            }
            com.sigmob.sdk.base.views.c cVar = this.E;
            if ((cVar == null || cVar.getVisibility() != 0) && !this.al) {
                this.K.d();
            }
            if (this.U != -1) {
                this.I.a(l(), this.U);
            }
        } catch (Throwable th) {
            SigmobLog.e(th.getMessage());
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void O() {
        if (this.V) {
            return;
        }
        try {
            this.K.j();
            SigmobLog.i("videoView.pause()");
            this.U = (int) this.K.getCurrentPositionWhenPlaying();
            r().a(com.sigmob.sdk.base.common.a.f78876j, (int) this.K.getCurrentPositionWhenPlaying());
            this.I.b(l(), this.U);
        } catch (Throwable th) {
            SigmobLog.e(th.getMessage());
        }
    }

    private void Q() {
        try {
            this.T = this.I.e(y());
        } catch (Throwable th) {
            SigmobLog.e(th.getMessage());
        }
    }

    private void T() {
        int iO = this.I.o();
        int iY = y() - 2;
        if (iO == 99999999) {
            iO = 0;
        } else if (iO == -99999999) {
            a(iY);
            return;
        } else if (iO <= 0) {
            iO += iY;
        }
        a(iO);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void W() {
        com.sigmob.sdk.base.utils.d.a(f81821f, this.L);
        this.C.post(new Runnable() { // from class: com.sigmob.sdk.videoAd.b0
            @Override // java.lang.Runnable
            public final void run() {
                this.f81790b.X();
            }
        });
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void X() {
        a(IntentActions.ACTION_INTERSTITIAL_CLICK);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void Y() {
        a(IntentActions.ACTION_REWARDED_VIDEO_COMPLETE);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void Z() {
        U();
        this.f81830aa = true;
        this.I.b(l(), y(), this.L);
        k().a();
    }

    private View a(Context context, f videoCompanionAdConfig, int initialVisibility) {
        Preconditions.NoThrow.checkNotNull(context);
        if (videoCompanionAdConfig == null) {
            View view = new View(context);
            view.setVisibility(4);
            return view;
        }
        RelativeLayout relativeLayout = new RelativeLayout(context);
        relativeLayout.setGravity(17);
        m().addView(relativeLayout, 0, new RelativeLayout.LayoutParams(-1, -1));
        com.sigmob.sdk.base.views.m mVarA = a(context, videoCompanionAdConfig);
        mVarA.setVisibility(initialVisibility);
        relativeLayout.addView(mVarA, new LinearLayout.LayoutParams(-1, -1));
        return mVarA;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void c(int i10) {
        final Bitmap frameAtTime = this.O.getFrameAtTime(((long) i10) * 1000, 2);
        if (frameAtTime == null) {
            return;
        }
        this.C.post(new Runnable() { // from class: com.sigmob.sdk.videoAd.z
            @Override // java.lang.Runnable
            public final void run() {
                this.f81880b.a(frameAtTime);
            }
        });
    }

    private void i(final Context context, int initialVisibility) {
        com.sigmob.sdk.base.views.s sVar = new com.sigmob.sdk.base.views.s(context);
        this.R = sVar;
        sVar.setId(ClientMetadata.generateViewId());
        this.R.setVisibility(initialVisibility);
        RelativeLayout.LayoutParams layoutParams = new RelativeLayout.LayoutParams(Dips.dipsToIntPixels(22.0f, context), Dips.dipsToIntPixels(22.0f, context));
        layoutParams.addRule(10);
        ak akVar = this.f81831ab;
        if (akVar != null) {
            layoutParams.addRule(0, akVar.getId());
            layoutParams.setMargins(0, this.f81835p * 2, 0, 0);
        }
        m().addView(this.R, layoutParams);
        this.R.setEnabled(false);
        this.R.setOnClickListener(new View.OnClickListener() { // from class: com.sigmob.sdk.videoAd.s
            @Override // android.view.View.OnClickListener
            public final void onClick(View view) {
                this.f81872b.a(view);
            }
        });
        if ((this.L.getSkipPercent() != 0 || this.L.getSkipSeconds() >= 0) && this.L.getSkipSeconds() != 0) {
            return;
        }
        a(0, false);
    }

    boolean C() {
        return B() <= 0;
    }

    @Override // com.sigmob.sdk.videoAd.b, com.sigmob.sdk.base.common.j
    public void e() {
        super.e();
        n().getWindow().addFlags(1024);
        MaterialMeta material = this.L.getMaterial();
        this.f81839t = ClientMetadata.getInstance().getInsetBottom();
        if (this.Y) {
            V();
        } else {
            if (this.I == null) {
                throw new IllegalStateException("BaseVideoConfig does not have a video disk path");
            }
            if (this.ag) {
                e(l(), 4);
            }
            Boolean bool = material.has_companion_endcard;
            if (bool != null && bool.booleanValue() && material.companion != null) {
                g(l(), 4);
                this.G = material.companion.show_delay_secs.intValue();
            }
            a(l(), 0);
            j(l(), 0);
            i(l(), 4);
            ArrayList arrayList = new ArrayList();
            arrayList.add(new d("start", 0.0f));
            arrayList.add(new d(com.sigmob.sdk.base.common.a.f78877k, 0.25f));
            arrayList.add(new d(com.sigmob.sdk.base.common.a.f78879m, 0.5f));
            arrayList.add(new d(com.sigmob.sdk.base.common.a.f78880n, 0.75f));
            this.I.a((List<d>) arrayList);
            a(IntentActions.ACTION_INTERSTITIAL_VOPEN);
        }
        f(l(), 4);
        H();
    }

    @Override // com.sigmob.sdk.base.common.j
    public void f() {
        if (this.f81830aa) {
            a(IntentActions.ACTION_INTERSTITIAL_DISMISS);
            return;
        }
        com.sigmob.sdk.base.common.al.a aVar = this.ao;
        if (aVar != null) {
            aVar.b();
            com.sigmob.sdk.base.views.r rVar = this.ap;
            if (rVar != null) {
                rVar.b();
            }
        }
        if (this.Y) {
            return;
        }
        O();
    }

    @Override // com.sigmob.sdk.base.common.j
    public void g() {
        com.sigmob.sdk.base.common.al.a aVar;
        if (!this.Y && this.ar == null) {
            N();
        }
        View view = this.M;
        if (view != null && (view instanceof com.sigmob.sdk.base.views.m)) {
            ((com.sigmob.sdk.base.views.m) view).resumeTimers();
        }
        this.aq = false;
        if (this.ar != null || (aVar = this.ao) == null) {
            return;
        }
        aVar.a();
        com.sigmob.sdk.base.views.r rVar = this.ap;
        if (rVar != null) {
            rVar.a();
        }
    }

    @Override // com.sigmob.sdk.base.common.j
    public void h() {
        try {
            SigmobLog.d("VideoViewController onDestroy() called");
            com.sigmob.sdk.base.common.h.g().b(this);
            if (!this.f81830aa) {
                a(IntentActions.ACTION_INTERSTITIAL_DISMISS);
            }
            if (this.ax != null) {
                com.sigmob.sdk.base.common.h.d().unregisterCacheListener(this, this.ax);
            }
            com.sigmob.sdk.base.views.s sVar = this.an;
            if (sVar != null) {
                sVar.setOnClickListener(null);
                com.sigmob.sdk.base.utils.x.a(this.an);
            }
            com.sigmob.sdk.base.views.s sVar2 = this.am;
            if (sVar2 != null) {
                sVar2.setOnClickListener(null);
                com.sigmob.sdk.base.utils.x.a(this.am);
            }
            com.sigmob.sdk.nativead.b bVar = this.ar;
            if (bVar != null) {
                bVar.a((WindNativeAdData.DislikeInteractionCallback) null);
                this.ar.dismiss();
                this.ar.b();
            }
            this.I.k();
            ImageLoader.ImageContainer imageContainer = this.ae;
            if (imageContainer != null) {
                imageContainer.cancelRequest();
                this.ae = null;
            }
            com.sigmob.sdk.base.common.v vVar = this.N;
            if (vVar != null) {
                vVar.a();
                this.N = null;
            }
            MediaMetadataRetriever mediaMetadataRetriever = this.O;
            if (mediaMetadataRetriever != null) {
                mediaMetadataRetriever.release();
            }
            ak akVar = this.Q;
            if (akVar != null) {
                akVar.setOnTouchListener(null);
            }
            com.sigmob.sdk.base.views.s sVar3 = this.R;
            if (sVar3 != null) {
                sVar3.setOnTouchListener(null);
            }
            ak akVar2 = this.f81831ab;
            if (akVar2 != null) {
                akVar2.setOnTouchListener(null);
            }
            com.sigmob.sdk.videoplayer.a aVar = this.K;
            if (aVar != null) {
                aVar.r();
            }
            View view = this.M;
            if (view != null && (view instanceof com.sigmob.sdk.base.views.m)) {
                ((com.sigmob.sdk.base.views.m) view).setWebViewClickListener(null);
                ((com.sigmob.sdk.base.views.m) this.M).setLogoClickListener(null);
                ((com.sigmob.sdk.base.views.m) this.M).destroy();
            }
            U();
            com.sigmob.sdk.base.common.al.a aVar2 = this.ao;
            if (aVar2 != null) {
                aVar2.c();
                this.ao = null;
            }
            BaseAdUnit baseAdUnit = this.L;
            if (baseAdUnit != null) {
                baseAdUnit.destroy();
            }
            this.M = null;
            this.P = null;
            super.h();
        } catch (Throwable th) {
            SigmobLog.e(th.getMessage());
        }
    }

    @Override // com.sigmob.sdk.base.common.j
    public boolean j() {
        return false;
    }

    @Override // com.sigmob.sdk.base.common.j
    public void o() {
    }

    public void q() {
        com.sigmob.sdk.base.views.a aVar = new com.sigmob.sdk.base.views.a(l().getApplicationContext(), 0);
        this.f81836q = aVar;
        aVar.setId(ClientMetadata.generateViewId());
        RelativeLayout.LayoutParams layoutParams = new RelativeLayout.LayoutParams(-2, Dips.dipsToIntPixels(16.0f, l()));
        com.sigmob.sdk.base.views.k kVar = this.af;
        if (kVar != null) {
            layoutParams.addRule(8, kVar.getId());
        } else {
            layoutParams.addRule(12);
            layoutParams.setMargins(0, 0, 0, this.f81835p);
        }
        try {
            this.f81836q.a(this.L.getAd_source_logo());
            if (!this.L.getInvisibleAdLabel()) {
                this.f81836q.b(com.sigmob.sdk.base.k.h());
            }
        } catch (Throwable unused) {
        }
        m().addView(this.f81836q, layoutParams);
    }

    public String s() {
        return this.F;
    }

    public boolean t() {
        try {
            long currentPositionWhenPlaying = (int) this.K.getCurrentPositionWhenPlaying();
            if (this.L.getSkipSeconds() > -1) {
                return (((float) currentPositionWhenPlaying) / 1000.0f) + 0.3f >= ((float) this.L.getSkipSeconds());
            }
            if (y() > 0) {
                return ((((float) y()) / 1000.0f) * ((float) this.L.getSkipPercent())) * 0.01f < ((float) currentPositionWhenPlaying) / 1000.0f;
            }
            return true;
        } catch (Throwable th) {
            SigmobLog.e(th.getMessage());
        }
    }

    /* JADX WARN: Code duplicated, block: B:10:0x002f  */
    public boolean u() {
        boolean z10 = true;
        try {
            if (this.L.getAd_type() != 1) {
                return false;
            }
            long currentPositionWhenPlaying = (int) this.K.getCurrentPositionWhenPlaying();
            int chargeSeconds = this.L.getChargeSeconds();
            int chargePercent = this.L.getChargePercent();
            if (chargeSeconds > -1) {
                if ((currentPositionWhenPlaying / 1000.0f) + 0.3f < chargeSeconds) {
                    z10 = false;
                }
            } else {
                if (y() <= 0) {
                    return false;
                }
                if ((currentPositionWhenPlaying * 100) / ((long) y()) < chargePercent) {
                    z10 = false;
                }
            }
            return z10;
        } catch (Throwable th) {
            SigmobLog.e(th.getMessage());
            return true;
        }
    }

    public boolean v() {
        com.sigmob.sdk.base.views.k kVar = this.af;
        if (kVar != null && kVar.a()) {
            return true;
        }
        try {
            boolean z10 = ((long) ((int) this.K.getCurrentPositionWhenPlaying())) / 1000 >= ((long) this.G);
            if (z10) {
                SigmobLog.d("showAble CompanionAds");
            }
            return z10;
        } catch (Throwable th) {
            SigmobLog.e("shouldBeShowCompanionAds", th);
            return true;
        }
    }

    public void x() {
        if (this.av) {
            return;
        }
        this.av = true;
        this.L.getMacroCommon().addMarcoKey(SigMacroCommon._PLAYLASTFRAME_, "1");
        if (this.W) {
            return;
        }
        r().a("complete", (int) this.K.getCurrentPositionWhenPlaying());
    }

    void z() {
        if (this.M == null && this.L.isEndCardIndexExist()) {
            try {
                f fVarE = com.sigmob.sdk.videoAd.a.e(this.L);
                this.S = fVarE;
                fVarE.a(this.I);
                this.M = a(n(), this.S, 4);
                this.S.a(y());
                h(l(), 4);
            } catch (Throwable th) {
                this.S = null;
                SigmobLog.e(th.getMessage());
                HashMap map = new HashMap();
                map.put("error", th.getMessage());
                a(IntentActions.ACTION_REWARDED_VIDEO_PLAYFAIL, map);
                this.f79163d.a();
            }
        }
    }

    private void c(Context context, int visibility) {
        if (this.am == null) {
            com.sigmob.sdk.base.views.s sVar = new com.sigmob.sdk.base.views.s(context);
            this.am = sVar;
            sVar.setText("反馈");
            this.am.setOnClickListener(this.ay);
            this.am.setId(ClientMetadata.generateViewId());
            int iDipsToIntPixels = Dips.dipsToIntPixels(3.0f, this.f79160a);
            RelativeLayout.LayoutParams layoutParams = new RelativeLayout.LayoutParams(Dips.dipsToIntPixels(45.0f, context), Dips.dipsToIntPixels(30.0f, context));
            layoutParams.addRule(0, this.Q.getId());
            layoutParams.addRule(6, this.Q.getId());
            layoutParams.setMargins(0, -iDipsToIntPixels, 0, 0);
            m().addView(this.am, layoutParams);
        }
        com.sigmob.sdk.base.views.s sVar2 = this.am;
        if (sVar2 != null) {
            sVar2.setVisibility(visibility);
        }
    }

    private void e(final Context context, int initialVisibility) {
        al alVar = new al(context);
        this.P = alVar;
        alVar.setAnchorId(this.K.getId());
        this.P.setVisibility(initialVisibility);
        m().addView(this.P);
    }

    private void f(final Context context, int initialVisibility) {
        if (this.E != null) {
            return;
        }
        com.sigmob.sdk.base.views.c cVar = new com.sigmob.sdk.base.views.c(context, this.I.q());
        this.E = cVar;
        cVar.setVisibility(initialVisibility);
        m().addView(this.E);
        this.E.setDialogListener(new com.sigmob.sdk.base.views.c.a() { // from class: com.sigmob.sdk.videoAd.j.15
            @Override // com.sigmob.sdk.base.views.c.a
            public void a() {
                if (!j.this.V) {
                    j.this.r().a("skip", (int) j.this.K.getCurrentPositionWhenPlaying());
                    j.this.I.b(((com.sigmob.sdk.base.common.j) j.this).f79160a, (int) j.this.K.getCurrentPositionWhenPlaying(), j.this.y(), j.this.L);
                }
                j.this.E.setVisibility(8);
                if (j.this.af != null && j.this.af.getFourElementsLayout() != null) {
                    j.this.af.getFourElementsLayout().setClickable(true);
                }
                if (j.this.I.m()) {
                    j.this.k().a();
                    return;
                }
                if (!j.this.D) {
                    j jVar = j.this;
                    jVar.a((int) jVar.K.getCurrentPositionWhenPlaying());
                }
                j.this.K.i();
                j.this.V();
                j.this.V = true;
                if (j.this.r() != null) {
                    j.this.N.a("show", 0);
                }
            }

            @Override // com.sigmob.sdk.base.views.c.a
            public void b() {
                j.this.K.d();
                j.this.E.setVisibility(8);
                if (j.this.af == null || j.this.af.getFourElementsLayout() == null) {
                    return;
                }
                j.this.af.getFourElementsLayout().setClickable(true);
            }
        });
    }

    private void g(final Context context, int initialVisibility) {
        int iArgb;
        int i10;
        int i11;
        int i12;
        int i13;
        int iIntValue;
        boolean z10;
        CompanionEndcard companionEndcard = this.L.getMaterial().companion;
        if (companionEndcard == null || com.sigmob.sdk.base.utils.t.a((CharSequence) companionEndcard.icon_url) || com.sigmob.sdk.base.utils.t.a((CharSequence) companionEndcard.title) || (com.sigmob.sdk.base.utils.t.a((CharSequence) companionEndcard.desc) && companionEndcard.score.floatValue() < 1.0f)) {
            SigmobLog.e("ompanionEnd lose informations of UI Display");
            return;
        }
        int iArgb2 = com.sigmob.sdk.base.views.o.f80191a;
        int iRgb = -1;
        int iFloatValue = GSSDK.OneInputOPData.InputOP.OP_KEY_VK_PROCESSKEY_VALUE;
        try {
            Color color = companionEndcard.button_color;
            if (color != null && color.alpha.floatValue() > 0.01d) {
                try {
                    iArgb2 = android.graphics.Color.argb((int) (companionEndcard.button_color.alpha.floatValue() * 255.0f), companionEndcard.button_color.red.intValue(), companionEndcard.button_color.green.intValue(), companionEndcard.button_color.blue.intValue());
                } catch (Throwable unused) {
                }
            }
            Color color2 = companionEndcard.button_text_color;
            if (color2 == null || color2.alpha.floatValue() <= 0.01d) {
                iArgb = -1;
            } else {
                try {
                    iArgb = android.graphics.Color.argb((int) (companionEndcard.button_text_color.alpha.floatValue() * 255.0f), companionEndcard.button_text_color.red.intValue(), companionEndcard.button_text_color.green.intValue(), companionEndcard.button_text_color.blue.intValue());
                } catch (Throwable unused2) {
                    iArgb = -1;
                }
            }
            try {
                Color color3 = companionEndcard.bar_color;
                if (color3 != null && color3.alpha.floatValue() > 0.01d) {
                    try {
                        iFloatValue = (int) (companionEndcard.bar_color.alpha.floatValue() * 255.0f);
                        iRgb = android.graphics.Color.rgb(companionEndcard.button_text_color.red.intValue(), companionEndcard.button_text_color.green.intValue(), companionEndcard.button_text_color.blue.intValue());
                    } catch (Throwable unused3) {
                    }
                }
                i10 = iArgb2;
                i12 = iRgb;
                i13 = iFloatValue;
                i11 = iArgb;
            } catch (Throwable unused4) {
                i10 = iArgb2;
                i11 = iArgb;
                i12 = -1;
                i13 = GSSDK.OneInputOPData.InputOP.OP_KEY_VK_PROCESSKEY_VALUE;
            }
        } catch (Throwable unused5) {
            iArgb = -1;
        }
        try {
            Integer num = companionEndcard.click_type;
            iIntValue = num != null ? num.intValue() : 0;
        } catch (Throwable unused6) {
            iIntValue = 0;
        }
        String str = companionEndcard.button_text;
        if (com.sigmob.sdk.base.utils.t.a((CharSequence) str) || str.length() > 4) {
            str = a().getInteractionType() == 2 ? "下载" : "详情";
        }
        com.sigmob.sdk.base.views.k kVar = new com.sigmob.sdk.base.views.k(context, this.L, companionEndcard.title, str, companionEndcard.score.floatValue(), companionEndcard.desc, companionEndcard.animate_type.intValue(), this.L.getMaterial().template_type.intValue(), companionEndcard.icon_url, i10, i11, iIntValue, i12, i13, 70.0f);
        this.af = kVar;
        kVar.setId(ClientMetadata.generateViewId());
        LinearLayout fourElementsLayout = this.af.getFourElementsLayout();
        if (fourElementsLayout != null) {
            fourElementsLayout.setClickable(true);
            fourElementsLayout.setOnClickListener(new View.OnClickListener() { // from class: com.sigmob.sdk.videoAd.v
                @Override // android.view.View.OnClickListener
                public final void onClick(View view) {
                    this.f81876b.b(view);
                }
            });
        }
        RelativeLayout.LayoutParams layoutParams = new RelativeLayout.LayoutParams((Math.max(context.getResources().getDisplayMetrics().widthPixels, context.getResources().getDisplayMetrics().heightPixels) * 3) / 5, Dips.asIntPixels(70.0f, context));
        int iAsIntPixels = Dips.asIntPixels(8.0f, context);
        if (this.f81836q == null) {
            z10 = false;
            layoutParams.setMargins(iAsIntPixels, 0, iAsIntPixels, this.f81839t + iAsIntPixels);
            layoutParams.addRule(11);
            layoutParams.addRule(12);
        } else {
            z10 = false;
            layoutParams.setMargins(iAsIntPixels, 0, iAsIntPixels, 0);
            layoutParams.addRule(11);
            layoutParams.addRule(2, this.f81836q.getId());
        }
        m().addView(this.af, layoutParams);
        this.H = z10;
        this.af.setClickable(true);
        this.af.setOnTouchListener(new View.OnTouchListener() { // from class: com.sigmob.sdk.videoAd.j.2

            /* JADX INFO: renamed from: a, reason: collision with root package name */
            MotionEvent f81854a;

            @Override // android.view.View.OnTouchListener
            public boolean onTouch(View v10, MotionEvent event) {
                SigmobLog.d("mCompanionAdsWidget click" + event.toString());
                if (event.getAction() == 1) {
                    ad.a(j.this.L, event, com.sigmob.sdk.base.common.a.f78885s, true);
                    if (this.f81854a == null) {
                        this.f81854a = event;
                    }
                    SigMacroCommon macroCommon = j.this.L.getMacroCommon();
                    macroCommon.addMarcoKey(SigMacroCommon._PROGRESS_, String.valueOf(((int) j.this.P()) * 100));
                    macroCommon.updateClickMarco(this.f81854a, event, true);
                    j.this.f81834h = SigMacroCommon.getCoordinate(this.f81854a, event, true);
                    if (j.this.S == null) {
                        j.this.z();
                    }
                    ClickCommon clickCommon = j.this.L.getClickCommon();
                    clickCommon.sld = "0";
                    clickCommon.click_area = ClickCommon.CLICK_AREA_COMPANION;
                    clickCommon.click_scene = "ad";
                    j.this.I.a(com.sigmob.sdk.base.a.COMPANION, j.this.f81834h, true);
                } else if (event.getAction() == 0) {
                    this.f81854a = MotionEvent.obtain(event);
                }
                return true;
            }
        });
    }

    private void h(Context context, int initialVisibility) {
        if (this.Q == null) {
            ak akVar = new ak(context);
            this.Q = akVar;
            akVar.setId(ClientMetadata.generateViewId());
            RelativeLayout.LayoutParams layoutParams = new RelativeLayout.LayoutParams(Dips.dipsToIntPixels(22.0f, context), Dips.dipsToIntPixels(22.0f, context));
            layoutParams.addRule(10);
            layoutParams.addRule(11);
            int i10 = this.f81835p;
            layoutParams.setMargins(i10, i10 * 2, i10, i10);
            m().addView(this.Q, layoutParams);
            BaseAdUnit baseAdUnit = this.L;
            if (baseAdUnit != null && !com.sigmob.sdk.base.utils.t.a((CharSequence) baseAdUnit.getCloseCardHtmlData()) && !this.az) {
                com.sigmob.sdk.base.views.v vVar = new com.sigmob.sdk.base.views.v(n(), this.L, this.I);
                this.ai = vVar;
                vVar.a(new com.sigmob.sdk.base.views.v.a() { // from class: com.sigmob.sdk.videoAd.y
                    @Override // com.sigmob.sdk.base.views.v.a
                    public final void onCloseClick() {
                        this.f81879a.Z();
                    }
                });
            }
            this.Q.setOnTouchListener(new View.OnTouchListener() { // from class: com.sigmob.sdk.videoAd.j.3
                @Override // android.view.View.OnTouchListener
                public boolean onTouch(View view, MotionEvent motionEvent) {
                    if (motionEvent.getAction() == 1) {
                        if (j.this.az || j.this.ai == null || j.this.ai.a() || j.this.aj) {
                            j.this.f81830aa = true;
                            j.this.I.b(j.this.l(), j.this.y(), j.this.L);
                            j.this.k().a();
                        } else {
                            j.this.ai.show();
                            j.this.aj = true;
                        }
                    }
                    return true;
                }
            });
            this.Q.a(this.L);
            String strF = this.I.f();
            if (strF != null) {
                this.Q.a(strF);
            }
        }
        ak akVar2 = this.Q;
        if (akVar2 != null) {
            akVar2.setVisibility(initialVisibility);
        }
        c(l(), initialVisibility);
    }

    @Override // com.sigmob.sdk.base.common.h.a
    public BaseAdUnit a() {
        return this.L;
    }

    private com.sigmob.sdk.base.views.m a(Context context, f videoCompanionAdConfig) {
        Preconditions.NoThrow.checkNotNull(context);
        Preconditions.NoThrow.checkNotNull(videoCompanionAdConfig);
        Preconditions.NoThrow.checkNotNull(videoCompanionAdConfig.a());
        com.sigmob.sdk.base.views.m mVarA = com.sigmob.sdk.base.views.m.a(context, this.L.getAd_source_logo(), false, this.L.getInvisibleAdLabel());
        mVarA.addJavascriptInterface(new a(), "sigVersion");
        mVarA.setWebViewClickListener(new com.sigmob.sdk.base.views.m.a() { // from class: com.sigmob.sdk.videoAd.p
            @Override // com.sigmob.sdk.base.views.m.a
            public final void onWebViewClick(MotionEvent motionEvent, MotionEvent motionEvent2) {
                this.f81869a.b(motionEvent, motionEvent2);
            }
        });
        mVarA.setDownloadListener(new DownloadListener() { // from class: com.sigmob.sdk.videoAd.q
            @Override // android.webkit.DownloadListener
            public final void onDownloadStart(String str, String str2, String str3, String str4, long j10) {
                this.f81870a.a(str, str2, str3, str4, j10);
            }
        });
        mVarA.setAdUnit(this.L);
        mVarA.setWebViewClient(new AnonymousClass6());
        videoCompanionAdConfig.a().a(mVarA);
        mVarA.a((com.sigmob.sdk.base.common.b) null);
        return mVarA;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void b(final int type) {
        if (this.ak == null) {
            com.sigmob.sdk.base.views.n nVar = new com.sigmob.sdk.base.views.n(n(), this.L);
            this.ak = nVar;
            nVar.a(new com.sigmob.sdk.base.views.n.b() { // from class: com.sigmob.sdk.videoAd.j.5
                @Override // com.sigmob.sdk.base.views.n.b
                public void a() {
                    if (j.this.ak != null) {
                        j.this.ak.dismiss();
                        j.this.ak.c();
                        j.this.ak = null;
                        j.this.al = false;
                    }
                    if (j.this.K != null && type == 1) {
                        j.this.K.d();
                    }
                    if (j.this.ao != null) {
                        j.this.ao.a();
                    }
                    j.this.r().a(com.sigmob.sdk.base.common.a.f78873g, (int) j.this.K.getCurrentPositionWhenPlaying());
                }

                @Override // com.sigmob.sdk.base.views.n.b
                public void b() {
                    if (j.this.K != null && type == 1) {
                        j.this.K.j();
                    }
                    if (j.this.ao != null) {
                        j.this.ao.b();
                    }
                    j.this.r().a(com.sigmob.sdk.base.common.a.f78872f, (int) j.this.K.getCurrentPositionWhenPlaying());
                }

                @Override // com.sigmob.sdk.base.views.n.b
                public void a(Error error) {
                }

                @Override // com.sigmob.sdk.base.views.n.b
                public void a(String url, String clickCoordinate) {
                    if (j.this.S == null) {
                        j.this.z();
                    }
                    ClickCommon clickCommon = j.this.L.getClickCommon();
                    clickCommon.click_area = ClickCommon.CLICK_AREA_BTN;
                    clickCommon.click_scene = "appinfo";
                    j.this.I.a(com.sigmob.sdk.base.a.ENDCARD, url, clickCoordinate, true);
                }
            });
        }
        com.sigmob.sdk.base.views.n nVar2 = this.ak;
        if (nVar2 == null || !nVar2.a() || this.al) {
            return;
        }
        this.ak.show();
        this.al = true;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void b(Context context, int visibility) {
        if (this.L.getRewardStyle() == 1) {
            this.as = new com.sigmob.sdk.base.views.s(context);
            int iB = B();
            if (iB > 0) {
                this.as.setText(iB + "s 后获取奖励");
            } else {
                this.as.setText("已获得奖励");
                a(false);
            }
            RelativeLayout.LayoutParams layoutParams = new RelativeLayout.LayoutParams(Dips.dipsToIntPixels(97.0f, context), Dips.dipsToIntPixels(22.0f, context));
            layoutParams.addRule(1, this.an.getId());
            int i10 = this.f81835p;
            layoutParams.setMargins(i10, i10 * 2, 0, 0);
            m().addView(this.as, layoutParams);
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void b(MotionEvent motionEvent, MotionEvent motionEvent2) {
        if (this.Q.getVisibility() != 0 || this.f81830aa) {
            SigmobLog.w("ignore invalid click");
            return;
        }
        this.L.getClickCommon().sld = "0";
        ad.a(this.L, motionEvent2, PointCategory.ENDCARDCLICK, true);
        SigMacroCommon macroCommon = this.L.getMacroCommon();
        macroCommon.updateClickMarco(motionEvent, motionEvent2, true);
        this.f81834h = macroCommon.getCoordinate();
        this.B = true;
        if (this.L.getMaterial().click_type.intValue() != com.sigmob.sdk.base.common.m.FullScreen.a() || com.sigmob.sdk.base.utils.t.a((CharSequence) this.L.getLanding_page()) || this.L.getMaterial().creative_type.intValue() == com.sigmob.sdk.base.common.n.CreativeTypeVideo_EndCardURL.a()) {
            this.ah = true;
            return;
        }
        this.L.getClickCommon().click_area = ClickCommon.CLICK_AREA_MATERIAL;
        this.L.getClickCommon().click_scene = "endcard";
        this.I.a(com.sigmob.sdk.base.a.ENDCARD, this.f81834h, true);
    }

    private void c(String url) {
        Uri uri;
        if (com.sigmob.sdk.base.utils.t.a((CharSequence) url) || (uri = Uri.parse(url)) == null) {
            return;
        }
        String host = uri.getHost();
        if (!com.sigmob.sdk.base.utils.t.a((CharSequence) host) && host.equalsIgnoreCase("127.0.0.1")) {
            Pattern patternCompile = Pattern.compile("/(.*)");
            String path = uri.getPath();
            if (com.sigmob.sdk.base.utils.t.a((CharSequence) path)) {
                return;
            }
            Matcher matcher = patternCompile.matcher(path);
            if (matcher.find()) {
                this.ax = matcher.group(1);
                com.sigmob.sdk.base.common.h.d().registerCacheListener(this, this.ax);
            }
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void b(View view) {
        b(1);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void c(boolean isComplete) {
        if (this.at || this.L.getAd_type() == 4) {
            return;
        }
        this.at = true;
        int iY = isComplete ? y() : (int) this.K.getCurrentPositionWhenPlaying();
        r().a(com.sigmob.sdk.base.common.a.f78868b, iY);
        this.I.c(l().getApplicationContext(), iY, y(), a());
    }

    private String a(List<String> list) {
        if (list == null || list.isEmpty()) {
            return "";
        }
        StringBuilder sb2 = new StringBuilder();
        sb2.append('[');
        int i10 = 0;
        do {
            if (i10 != 0) {
                sb2.append(io.netty.util.internal.StringUtil.COMMA);
            }
            sb2.append(list.get(i10));
            i10++;
        } while (i10 < list.size());
        sb2.append(']');
        return sb2.toString();
    }

    @Override // com.sigmob.sdk.base.common.h.a
    public void b(BaseAdUnit adUnit) {
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void a(final int seek) {
        try {
            ThreadPoolFactory.getFixIOExecutor().submit(new Runnable() { // from class: com.sigmob.sdk.videoAd.u
                @Override // java.lang.Runnable
                public final void run() {
                    this.f81874b.c(seek);
                }
            });
        } catch (RuntimeException e10) {
            SigmobLog.e(e10.getMessage());
        }
    }

    @Override // com.sigmob.sdk.base.common.j
    public void a(int requestCode, int resultCode, Intent data) {
        if (resultCode == -1) {
            k().a();
        }
    }

    void b(String adEvent) {
        if ("start".equals(adEvent)) {
            a(IntentActions.ACTION_INTERSTITIAL_SHOW);
            a(IntentActions.ACTION_REWARDED_VIDEO_PLAY);
        }
        com.sigmob.sdk.base.common.v vVarR = r();
        if (vVarR == null) {
            return;
        }
        vVarR.a(adEvent, (int) this.K.getCurrentPositionWhenPlaying());
    }

    private void a(int currentPosition, boolean isShowForce) {
        com.sigmob.sdk.base.views.s sVar = this.R;
        if (sVar == null || this.au) {
            return;
        }
        this.au = true;
        sVar.setText("跳过");
        this.R.setEnabled(true);
        ValueAnimator duration = ValueAnimator.ofInt(Dips.dipsToIntPixels(22.0f, l()), Dips.dipsToIntPixels(45.0f, l())).setDuration(300L);
        duration.addUpdateListener(new ValueAnimator.AnimatorUpdateListener() { // from class: com.sigmob.sdk.videoAd.a0
            @Override // android.animation.ValueAnimator.AnimatorUpdateListener
            public final void onAnimationUpdate(ValueAnimator valueAnimator) {
                this.f81789b.a(valueAnimator);
            }
        });
        duration.start();
        this.R.setVisibility(0);
        r().a(isShowForce, currentPosition);
        r().a("show_skip", currentPosition);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void a(ValueAnimator valueAnimator) {
        int iIntValue = ((Integer) valueAnimator.getAnimatedValue()).intValue();
        RelativeLayout.LayoutParams layoutParams = (RelativeLayout.LayoutParams) this.R.getLayoutParams();
        layoutParams.width = iIntValue;
        this.R.setLayoutParams(layoutParams);
        this.R.invalidate();
    }

    public void a(Context context) {
        this.Z = new RelativeLayout(context);
        ImageView imageView = new ImageView(context);
        imageView.setImageBitmap(com.sigmob.sdk.base.views.p.LOADING.a());
        imageView.setId(ClientMetadata.generateViewId());
        RotateAnimation rotateAnimation = new RotateAnimation(0.0f, BaseConstants.Time.HOUR, 1, 0.5f, 1, 0.5f);
        rotateAnimation.setDuration(8000000);
        rotateAnimation.setInterpolator(new LinearInterpolator());
        rotateAnimation.setRepeatCount(-1);
        rotateAnimation.setRepeatMode(1);
        RelativeLayout.LayoutParams layoutParams = new RelativeLayout.LayoutParams(-2, -2);
        layoutParams.addRule(13);
        imageView.setAnimation(rotateAnimation);
        this.Z.addView(imageView, layoutParams);
        this.Z.setVisibility(4);
        RelativeLayout.LayoutParams layoutParams2 = new RelativeLayout.LayoutParams(-2, -2);
        layoutParams2.addRule(13);
        m().addView(this.Z, layoutParams2);
    }

    private void a(Context context, int visibility) {
        if (this.an == null) {
            com.sigmob.sdk.base.views.s sVar = new com.sigmob.sdk.base.views.s(context);
            this.an = sVar;
            sVar.setText("反馈");
            this.an.setId(ClientMetadata.generateViewId());
            this.an.setOnClickListener(this.ay);
            RelativeLayout.LayoutParams layoutParams = new RelativeLayout.LayoutParams(Dips.dipsToIntPixels(45.0f, context), Dips.dipsToIntPixels(22.0f, context));
            layoutParams.addRule(9);
            layoutParams.addRule(10);
            int i10 = this.f81835p;
            layoutParams.setMargins(i10, i10 * 2, 0, 0);
            m().addView(this.an, layoutParams);
        }
        com.sigmob.sdk.base.views.s sVar2 = this.an;
        if (sVar2 != null) {
            sVar2.setVisibility(visibility);
        }
    }

    @Override // com.sigmob.sdk.base.common.j
    public void a(final Configuration newConfig) {
        if (this.I != null && this.S == null) {
            f fVarE = com.sigmob.sdk.videoAd.a.e(this.L);
            this.S = fVarE;
            fVarE.a(this.I);
        }
        com.sigmob.sdk.base.common.v vVarR = r();
        if (vVarR == null) {
            return;
        }
        vVarR.a("rotation", (int) this.K.getCurrentPositionWhenPlaying());
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void a(Bitmap bitmap) {
        this.f81837r.setScaleType(ImageView.ScaleType.FIT_XY);
        this.f81837r.setImageBitmap(bitmap);
    }

    @Override // com.sigmob.sdk.base.common.j
    public void a(Bundle outState) {
        try {
            outState.putBoolean(f81824j, this.V);
            outState.putInt(f81823i, this.U);
            outState.putBoolean(f81825k, this.Y);
        } catch (Throwable th) {
            SigmobLog.e(th.getMessage());
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void a(MotionEvent downEvent, MotionEvent upEvent) {
        boolean z10;
        this.L.getClickCommon().click_area = ClickCommon.CLICK_AREA_MATERIAL;
        this.L.getClickCommon().click_scene = "ad";
        ClickAreaSetting clickAreaSetting = this.L.getClickAreaSetting();
        float fFloatValue = clickAreaSetting.left.floatValue() * ClientMetadata.getInstance().getDisplayMetrics().widthPixels;
        float fFloatValue2 = (1.0f - clickAreaSetting.right.floatValue()) * ClientMetadata.getInstance().getDisplayMetrics().widthPixels;
        float fFloatValue3 = clickAreaSetting.top.floatValue() * ClientMetadata.getInstance().getDisplayMetrics().heightPixels;
        float fFloatValue4 = (1.0f - clickAreaSetting.bottom.floatValue()) * ClientMetadata.getInstance().getDisplayMetrics().heightPixels;
        if (fFloatValue >= upEvent.getRawX() || upEvent.getRawX() >= fFloatValue2 || fFloatValue3 >= upEvent.getRawY() || upEvent.getRawY() >= fFloatValue4) {
            z10 = false;
        } else {
            SigMacroCommon macroCommon = this.L.getMacroCommon();
            macroCommon.addMarcoKey(SigMacroCommon._PROGRESS_, String.valueOf(((int) P()) * 100));
            z10 = true;
            macroCommon.updateClickMarco(downEvent, upEvent, true);
            this.f81834h = macroCommon.getCoordinate();
            if (this.S == null) {
                z();
            }
            this.I.a(com.sigmob.sdk.base.a.VIDEO_CLICK, this.f81834h, true);
        }
        ad.a(this.L, upEvent, "useless_video_click", z10);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void a(View view) {
        r().a(com.sigmob.sdk.base.common.a.f78884r, (int) this.K.getCurrentPositionWhenPlaying());
        if (C()) {
            a(false);
        }
        if (this.f81833ad || this.L.getConfirmDialog() == 2 || this.L.getAd_type() == 4) {
            r().a("skip", (int) this.K.getCurrentPositionWhenPlaying());
            this.I.b(this.f79160a, (int) this.K.getCurrentPositionWhenPlaying(), y(), this.L);
            a(false, false);
            return;
        }
        this.K.j();
        SigmobLog.i("videoView.pause()");
        this.E.setDuration(B());
        this.E.setVisibility(0);
        com.sigmob.sdk.base.views.k kVar = this.af;
        if (kVar == null || kVar.getFourElementsLayout() == null) {
            return;
        }
        this.af.getFourElementsLayout().setClickable(false);
    }

    @Override // com.sigmob.sdk.base.common.h.a
    public void a(BaseAdUnit adUnit) {
        if (adUnit.getUuid().equals(this.L.getUuid()) && adUnit.isEndCardIndexExist()) {
            this.C.post(new Runnable() { // from class: com.sigmob.sdk.videoAd.o
                @Override // java.lang.Runnable
                public final void run() {
                    this.f81868b.z();
                }
            });
        }
    }

    @Override // com.sigmob.sdk.videocache.d
    public void a(File cacheFile, String url, int percentsAvailable) {
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void a(Object obj) {
        if (obj instanceof PointEntitySigmob) {
            PointEntitySigmob pointEntitySigmob = (PointEntitySigmob) obj;
            Map<String, String> options = pointEntitySigmob.getOptions();
            options.put("duration_seq", a(this.f81843x));
            options.put("video_time_seq", a(this.f81844y));
            options.put("skip_state", this.A);
            options.put("video_duration", String.format(Locale.getDefault(), "%.2f", Float.valueOf(y() / 1000.0f)));
            options.put("endcard_loading_state", this.f81842w);
            pointEntitySigmob.setOptions(options);
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void a(String str, String str2, String str3, String str4, long j10) {
        if (this.B) {
            if (com.sigmob.sdk.base.utils.t.a((CharSequence) this.L.getLanding_page()) || this.L.getInteractionType() == 2) {
                this.L.setCustomLandPageUrl(str);
            }
            this.L.getClickCommon().click_area = ClickCommon.CLICK_AREA_COMPANION;
            this.L.getClickCommon().click_scene = "endcard";
            this.I.a(com.sigmob.sdk.base.a.ENDCARD, this.f81834h, true);
            SigmobLog.d("onDownloadStart() called with: url = [" + str + "], userAgent = [" + str2 + "], contentDisposition = [" + str3 + "], mimetype = [" + str4 + "], contentLength = [" + j10 + "]");
        }
    }

    @Override // com.sigmob.sdk.videocache.d
    public void a(String url, Throwable th) {
        SigmobLog.e("url", th);
        ad.a("video", 0, th.getMessage(), this.L, (ad.a) null);
        a(false, true);
    }

    void a(boolean isComplete) {
        if (this.L.getAd_type() == 4 || this.f81833ad) {
            return;
        }
        this.f81833ad = true;
        int iY = isComplete ? y() : (int) this.K.getCurrentPositionWhenPlaying();
        this.C.postDelayed(new Runnable() { // from class: com.sigmob.sdk.videoAd.w
            @Override // java.lang.Runnable
            public final void run() {
                this.f81877b.Y();
            }
        }, 100L);
        r().a("reward", iY);
        this.I.c(l().getApplicationContext(), iY, y(), a());
    }

    public void a(boolean isComplete, boolean isError) {
        if (this.aw) {
            return;
        }
        this.aw = true;
        F();
        boolean videoErrorReward = this.L.getVideoErrorReward();
        c(isComplete);
        if (isComplete || (isError && videoErrorReward)) {
            a(isComplete);
            if (isComplete) {
                x();
            }
        } else if (this.I.m()) {
            k().a();
            return;
        }
        if (!this.D) {
            if (isComplete) {
                T();
            } else {
                a((int) this.K.getCurrentPositionWhenPlaying());
            }
        }
        this.K.i();
        V();
        this.V = true;
        com.sigmob.sdk.base.common.v vVarR = r();
        if (vVarR == null) {
            return;
        }
        vVarR.a("show", 0);
    }
}
