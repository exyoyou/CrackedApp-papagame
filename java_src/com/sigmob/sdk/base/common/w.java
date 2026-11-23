package com.sigmob.sdk.base.common;

import android.app.ActionBar;
import android.app.Activity;
import android.content.Context;
import android.content.res.Configuration;
import android.net.Uri;
import android.os.Build;
import android.os.Bundle;
import android.util.Base64;
import android.view.MotionEvent;
import android.view.View;
import android.webkit.ConsoleMessage;
import android.webkit.DownloadListener;
import android.webkit.WebChromeClient;
import android.webkit.WebResourceError;
import android.webkit.WebResourceRequest;
import android.webkit.WebResourceResponse;
import android.webkit.WebView;
import android.widget.ImageView;
import android.widget.LinearLayout;
import android.widget.RelativeLayout;
import android.widget.TextView;
import androidx.core.app.NotificationCompat;
import com.czhj.sdk.common.ClientMetadata;
import com.czhj.sdk.common.utils.Dips;
import com.czhj.sdk.logger.SigmobLog;
import com.czhj.volley.toolbox.StringUtil;
import com.sigmob.sdk.base.models.BaseAdUnit;
import com.sigmob.sdk.base.models.IntentActions;
import com.sigmob.sdk.base.models.LoadAdRequest;
import com.sigmob.sdk.base.models.SigMacroCommon;
import com.sigmob.sdk.base.models.rtb.LinkAction;
import com.sigmob.sdk.base.mta.PointEntitySigmob;
import com.sigmob.windad.WindAdRequest;
import org.json.JSONObject;

/* JADX INFO: loaded from: classes5.dex */
public class w extends j {

    /* JADX INFO: renamed from: g, reason: collision with root package name */
    private static final String f79280g = "w";

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    com.sigmob.sdk.base.views.f f79281f;

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    private int f79282h;

    /* JADX INFO: renamed from: i, reason: collision with root package name */
    private final BaseAdUnit f79283i;

    /* JADX INFO: renamed from: j, reason: collision with root package name */
    private RelativeLayout f79284j;

    /* JADX INFO: renamed from: k, reason: collision with root package name */
    private TextView f79285k;

    /* JADX INFO: renamed from: l, reason: collision with root package name */
    private ImageView f79286l;

    /* JADX INFO: renamed from: m, reason: collision with root package name */
    private String f79287m;

    /* JADX INFO: renamed from: com.sigmob.sdk.base.common.w$1, reason: invalid class name */
    class AnonymousClass1 extends com.sigmob.sdk.base.l {
        AnonymousClass1() {
        }

        /* JADX INFO: Access modifiers changed from: private */
        public static /* synthetic */ void a(String str, Object obj) {
            if (obj instanceof PointEntitySigmob) {
                ((PointEntitySigmob) obj).setUrl(str);
            }
        }

        @Override // android.webkit.WebViewClient
        public void onReceivedError(WebView view, int errorCode, String description, String failingUrl) {
            ad.a("h5_error", "landpage", errorCode, failingUrl + " error:" + description, (WindAdRequest) null, (LoadAdRequest) null, w.this.f79283i, (ad.a) null);
        }

        @Override // android.webkit.WebViewClient
        public void onReceivedHttpError(WebView view, WebResourceRequest request, WebResourceResponse errorResponse) {
            ad.a("h5_error", "landpage", errorResponse.getStatusCode(), request.getUrl().toString(), (WindAdRequest) null, (LoadAdRequest) null, w.this.f79283i, (ad.a) null);
        }

        @Override // android.webkit.WebViewClient
        public boolean shouldOverrideUrlLoading(WebView view, String url) {
            try {
                Context context = view.getContext();
                Uri uri = Uri.parse(url);
                String scheme = uri.getScheme();
                String host = uri.getHost();
                if (StringUtil.scheme().equalsIgnoreCase(scheme) && !com.sigmob.sdk.base.utils.t.a((CharSequence) host) && ("track".equals(host) || "active".equals(host))) {
                    String queryParameter = uri.getQueryParameter("data");
                    String queryParameter2 = uri.getQueryParameter(NotificationCompat.CATEGORY_EVENT);
                    if (!com.sigmob.sdk.base.utils.t.a((CharSequence) queryParameter2) && !com.sigmob.sdk.base.utils.t.a((CharSequence) queryParameter)) {
                        final String str = new String(Base64.decode(queryParameter, 0), "utf-8");
                        ad.a(host, queryParameter2, w.this.f79283i, new ad.a() { // from class: com.sigmob.sdk.base.common.q2
                            @Override // com.sigmob.sdk.base.common.ad.a
                            public final void onAddExtra(Object obj) {
                                w.AnonymousClass1.a(str, obj);
                            }
                        });
                    }
                    return true;
                }
                if (com.sigmob.sdk.base.utils.t.a((CharSequence) scheme)) {
                    SigmobLog.i("load Url: " + url);
                    view.loadUrl(url);
                } else {
                    LinkAction linkActionA = com.sigmob.sdk.videoplayer.c.a(w.this.f79283i.getAdLinkActions(), uri);
                    if (linkActionA == null) {
                        linkActionA = com.sigmob.sdk.videoplayer.c.a(w.this.f79283i.getSlotAdLinkActions(), uri);
                    }
                    boolean zHasReachedMaxRedirectCount = w.this.f79283i.hasReachedMaxRedirectCount();
                    int quickAppMaxRedirectCount = w.this.f79283i.getQuickAppMaxRedirectCount();
                    if (zHasReachedMaxRedirectCount) {
                        com.sigmob.sdk.base.utils.k.e(w.f79280g, "reach max redirect count(%d).", Integer.valueOf(quickAppMaxRedirectCount));
                        return true;
                    }
                    int redirectCount = w.this.f79283i.getRedirectCount(uri);
                    if (linkActionA != null && linkActionA.redirect_count.intValue() <= redirectCount) {
                        com.sigmob.sdk.base.utils.k.e(w.f79280g, "%s reach redirect count(%d).", scheme, Integer.valueOf(redirectCount));
                        return true;
                    }
                    if (!com.sigmob.sdk.base.utils.t.a(host, "hapjs.org") || (!scheme.equalsIgnoreCase("http") && !scheme.equalsIgnoreCase("https"))) {
                        w.this.f79283i.addRedirectCount(uri);
                        w.this.f79283i.incrementRedirectCount();
                        com.sigmob.sdk.base.utils.g.a(context, uri, com.sigmob.sdk.base.utils.t.a(host, "hapjs.org") ? com.sigmob.sdk.b.a() : com.sigmob.sdk.base.utils.g.a(context, uri, w.this.f79283i.getMarketPackageNameList()));
                        ad.a(com.sigmob.sdk.base.a.LAND_PAGE, "click", w.this.f79283i, "1", url, w.this.f79287m, 0L, (JSONObject) null);
                        com.sigmob.sdk.base.utils.k.c(w.f79280g, "%s(quick) not reach redirect count(%d).", scheme, Integer.valueOf(redirectCount));
                        return true;
                    }
                    view.loadUrl(url);
                    com.sigmob.sdk.base.utils.k.c(w.f79280g, "%s(302) not reach redirect count(%d).", scheme, Integer.valueOf(redirectCount));
                }
                return true;
            } catch (Throwable th) {
                SigmobLog.e(th.getMessage());
            }
        }

        @Override // android.webkit.WebViewClient
        public void onReceivedError(WebView view, WebResourceRequest request, WebResourceError error) {
            SigmobLog.i("onReceivedError:" + error.toString());
            if (Build.VERSION.SDK_INT >= 23) {
                ad.a("h5_error", "landpage", 0, request.getUrl() + " error:" + ((Object) error.getDescription()), (WindAdRequest) null, (LoadAdRequest) null, w.this.f79283i, (ad.a) null);
            }
        }
    }

    /* JADX INFO: renamed from: com.sigmob.sdk.base.common.w$4, reason: invalid class name */
    static /* synthetic */ class AnonymousClass4 {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        static final /* synthetic */ int[] f79292a;

        static {
            int[] iArr = new int[ConsoleMessage.MessageLevel.values().length];
            f79292a = iArr;
            try {
                iArr[ConsoleMessage.MessageLevel.ERROR.ordinal()] = 1;
            } catch (NoSuchFieldError unused) {
            }
        }
    }

    public w(Activity activity, BaseAdUnit baseAdUnit, Bundle intentExtras, Bundle savedInstanceState, String broadcastIdentifier, k controllerListener) {
        super(activity, broadcastIdentifier, controllerListener);
        this.f79283i = baseAdUnit;
        if (baseAdUnit != null) {
            n().requestWindowFeature(8);
        } else {
            a(IntentActions.ACTION_INTERSTITIAL_FAIL);
            k().a();
        }
    }

    @Override // com.sigmob.sdk.base.common.j
    public void e() {
        int iC = com.sigmob.sdk.base.k.c();
        if (iC > 0) {
            n().getTheme().applyStyle(iC, true);
        }
        n().getWindow().addFlags(1024);
        r();
        p();
        String strMacroProcess = this.f79283i.getMacroCommon().macroProcess(this.f79283i.getLanding_page());
        String landUrl = this.f79283i.getLandUrl();
        if (com.sigmob.sdk.base.utils.t.a((CharSequence) landUrl)) {
            this.f79281f.loadUrl(strMacroProcess);
        } else {
            this.f79281f.loadUrl(landUrl);
        }
        a(IntentActions.ACTION_LANDPAGE_SHOW);
    }

    @Override // com.sigmob.sdk.base.common.j
    public void f() {
    }

    @Override // com.sigmob.sdk.base.common.j
    public void g() {
        com.sigmob.sdk.base.views.f fVar = this.f79281f;
        if (fVar != null) {
            fVar.resumeTimers();
        }
    }

    @Override // com.sigmob.sdk.base.common.j
    public void h() {
        a(IntentActions.ACTION_LANDPAGE_DISMISS);
        ImageView imageView = this.f79286l;
        if (imageView != null) {
            imageView.setOnClickListener(null);
            this.f79286l = null;
        }
        com.sigmob.sdk.base.views.f fVar = this.f79281f;
        if (fVar != null) {
            fVar.destroy();
            this.f79281f = null;
        }
        super.h();
    }

    @Override // com.sigmob.sdk.base.common.j
    public void i() {
        if (j()) {
            k().a();
        }
    }

    @Override // com.sigmob.sdk.base.common.j
    public boolean j() {
        if (!this.f79281f.canGoBack()) {
            return true;
        }
        this.f79281f.goBack();
        return false;
    }

    @Override // com.sigmob.sdk.base.common.j
    public void o() {
    }

    private void p() {
        if (this.f79281f == null) {
            try {
                com.sigmob.sdk.base.views.f fVar = new com.sigmob.sdk.base.views.f(n());
                this.f79281f = fVar;
                fVar.setScrollBarStyle(0);
                this.f79281f.setAdUnit(this.f79283i);
                this.f79281f.setWebViewClient(new AnonymousClass1());
                this.f79281f.setWebChromeClient(new WebChromeClient() { // from class: com.sigmob.sdk.base.common.w.2
                    @Override // android.webkit.WebChromeClient
                    public boolean onConsoleMessage(ConsoleMessage consoleMessage) {
                        if (AnonymousClass4.f79292a[consoleMessage.messageLevel().ordinal()] != 1) {
                            return false;
                        }
                        SigmobLog.e("onConsoleMessage " + consoleMessage.message());
                        ad.a("h5_error", "landpage", 0, consoleMessage.message(), (WindAdRequest) null, (LoadAdRequest) null, w.this.f79283i, (ad.a) null);
                        return false;
                    }

                    @Override // android.webkit.WebChromeClient
                    public void onReceivedTitle(WebView view, String title) {
                        if (title == null || title.isEmpty() || title.startsWith("http") || title.length() > 10) {
                            if (w.this.f79285k != null) {
                                w.this.f79285k.setVisibility(8);
                            }
                        } else if (w.this.f79285k != null) {
                            w.this.f79285k.setVisibility(0);
                            w.this.f79285k.setText(title);
                        }
                    }
                });
            } catch (Throwable th) {
                SigmobLog.e(th.getMessage());
                this.f79163d.a();
            }
        }
        LinearLayout.LayoutParams layoutParams = new LinearLayout.LayoutParams(-1, -1);
        LinearLayout linearLayout = new LinearLayout(n());
        linearLayout.addView(this.f79281f, 0, layoutParams);
        this.f79163d.onSetContentView(linearLayout);
        if (!this.f79283i.isDisable_download_listener()) {
            this.f79281f.setDownloadListener(new DownloadListener() { // from class: com.sigmob.sdk.base.common.n2
                @Override // android.webkit.DownloadListener
                public final void onDownloadStart(String str, String str2, String str3, String str4, long j10) {
                    this.f79215a.a(str, str2, str3, str4, j10);
                }
            });
        }
        this.f79281f.setOnTouchListener(new View.OnTouchListener() { // from class: com.sigmob.sdk.base.common.w.3

            /* JADX INFO: renamed from: a, reason: collision with root package name */
            MotionEvent f79290a = null;

            @Override // android.view.View.OnTouchListener
            public boolean onTouch(View v10, MotionEvent event) {
                SigmobLog.d(event.toString());
                if (event.getAction() == 0) {
                    this.f79290a = MotionEvent.obtain(event);
                    return false;
                }
                if (event.getAction() != 1) {
                    return false;
                }
                MotionEvent motionEvent = this.f79290a;
                if (motionEvent == null) {
                    w.this.f79287m = SigMacroCommon.getCoordinate(event, event, true);
                    return false;
                }
                w.this.f79287m = SigMacroCommon.getCoordinate(motionEvent, event, true);
                return false;
            }
        });
    }

    private void q() {
        if (this.f79284j == null) {
            RelativeLayout.LayoutParams layoutParams = new RelativeLayout.LayoutParams(-1, -1);
            layoutParams.addRule(13);
            int iDipsToIntPixels = Dips.dipsToIntPixels(20.0f, this.f79160a);
            RelativeLayout.LayoutParams layoutParams2 = new RelativeLayout.LayoutParams(iDipsToIntPixels, iDipsToIntPixels);
            layoutParams2.addRule(15);
            layoutParams2.addRule(9);
            int i10 = iDipsToIntPixels / 2;
            layoutParams2.setMargins(i10, i10, 0, 0);
            ImageView imageView = new ImageView(this.f79160a);
            this.f79286l = imageView;
            imageView.setImageBitmap(com.sigmob.sdk.base.views.p.BACK.a());
            this.f79286l.setScaleType(ImageView.ScaleType.CENTER_CROP);
            this.f79286l.setClickable(true);
            this.f79286l.setId(ClientMetadata.generateViewId());
            this.f79286l.setOnClickListener(new View.OnClickListener() { // from class: com.sigmob.sdk.base.common.o2
                @Override // android.view.View.OnClickListener
                public final void onClick(View view) {
                    this.f79238b.a(view);
                }
            });
            RelativeLayout relativeLayout = new RelativeLayout(l());
            this.f79284j = relativeLayout;
            relativeLayout.setLayoutParams(layoutParams);
            this.f79284j.setBackgroundColor(-1);
            this.f79284j.addView(this.f79286l, layoutParams2);
            TextView textView = new TextView(this.f79160a);
            this.f79285k = textView;
            textView.setTextColor(-16777216);
            this.f79285k.setTextSize(18.0f);
            this.f79285k.setVisibility(8);
            RelativeLayout.LayoutParams layoutParams3 = new RelativeLayout.LayoutParams(-2, -2);
            layoutParams3.addRule(13);
            this.f79284j.addView(this.f79285k, layoutParams3);
        }
    }

    private void r() {
        ActionBar.LayoutParams layoutParams = new ActionBar.LayoutParams(-1, -1, 17);
        ActionBar actionBar = n().getActionBar();
        if (actionBar == null) {
            return;
        }
        q();
        actionBar.setCustomView(this.f79284j, layoutParams);
        actionBar.setDisplayOptions(16);
        actionBar.setDisplayShowCustomEnabled(true);
        actionBar.setDisplayShowHomeEnabled(false);
        actionBar.setDisplayShowTitleEnabled(false);
    }

    @Override // com.sigmob.sdk.base.common.j
    public void a(Configuration configuration) {
    }

    @Override // com.sigmob.sdk.base.common.j
    public void a(Bundle outState) {
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void a(View view) {
        k().a();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static /* synthetic */ void a(String str, Object obj) {
        if (obj instanceof PointEntitySigmob) {
            ((PointEntitySigmob) obj).setCoordinate(str);
        }
    }

    private void a(String subCategory, String cate, BaseAdUnit adUnit, final String coordinate) {
        ad.a(cate, subCategory, adUnit, new ad.a() { // from class: com.sigmob.sdk.base.common.p2
            @Override // com.sigmob.sdk.base.common.ad.a
            public final void onAddExtra(Object obj) {
                w.a(coordinate, obj);
            }
        });
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void a(String str, String str2, String str3, String str4, long j10) {
        q.a(str, this.f79283i);
        ad.a(com.sigmob.sdk.base.a.LAND_PAGE, "click", this.f79283i, "0", str, this.f79287m, 0L, (JSONObject) null);
        SigmobLog.d("onDownloadStart() called with: url = [" + str + "], userAgent = [" + str2 + "], contentDisposition = [" + str3 + "], mimetype = [" + str4 + "], contentLength = [" + j10 + "]");
    }
}
