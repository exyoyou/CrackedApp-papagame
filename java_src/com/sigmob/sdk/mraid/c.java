package com.sigmob.sdk.mraid;

import android.annotation.SuppressLint;
import android.annotation.TargetApi;
import android.content.Context;
import android.graphics.Rect;
import android.location.Location;
import android.net.Uri;
import android.os.Build;
import android.view.View;
import android.webkit.ConsoleMessage;
import android.webkit.JsPromptResult;
import android.webkit.JsResult;
import android.webkit.RenderProcessGoneDetail;
import android.webkit.ValueCallback;
import android.webkit.WebChromeClient;
import android.webkit.WebResourceError;
import android.webkit.WebResourceRequest;
import android.webkit.WebResourceResponse;
import android.webkit.WebSettings;
import android.webkit.WebView;
import androidx.core.app.NotificationCompat;
import com.bykv.vk.component.ttvideo.log.LiveError;
import com.bytedance.pangle.provider.ContentProviderManager;
import com.czhj.sdk.common.ClientMetadata;
import com.czhj.sdk.common.json.JSONSerializer;
import com.czhj.sdk.common.network.Networking;
import com.czhj.sdk.common.utils.Md5Util;
import com.czhj.sdk.common.utils.TouchLocation;
import com.czhj.sdk.logger.SigmobLog;
import com.czhj.sdk.logger.SigmobLogger;
import com.czhj.volley.toolbox.StringUtil;
import com.haima.hmcp.beans.ClipBoardItemData;
import com.j256.ormlite.stmt.query.SimpleComparison;
import com.join.mgps.activity.NoticeTopAnimActivityDialog_;
import com.join.mgps.activity.QuarkPromptActivity_;
import com.sigmob.sdk.base.BaseAdActivity;
import com.sigmob.sdk.base.common.ad;
import com.sigmob.sdk.base.common.ap;
import com.sigmob.sdk.base.models.AppInfo;
import com.sigmob.sdk.base.models.BaseAdUnit;
import com.sigmob.sdk.base.models.ClickCommon;
import com.sigmob.sdk.base.models.CurrentAppOrientation;
import com.sigmob.sdk.base.models.ExposureChange;
import com.sigmob.sdk.base.models.LoadAdRequest;
import com.sigmob.sdk.base.models.MraidEnv;
import com.sigmob.sdk.base.models.PlacementType;
import com.sigmob.sdk.base.models.VideoItem;
import com.sigmob.sdk.base.models.ViewState;
import com.sigmob.sdk.base.models.rtb.Ad;
import com.sigmob.sdk.base.models.rtb.AdSetting;
import com.sigmob.sdk.base.models.rtb.MaterialMeta;
import com.sigmob.sdk.base.models.rtb.RvAdSetting;
import com.sigmob.sdk.base.models.rtb.SlotAdSetting;
import com.sigmob.windad.WindAdError;
import com.sigmob.windad.WindAdRequest;
import com.umeng.analytics.pro.aw;
import io.netty.handler.codec.http.websocketx.WebSocketServerHandshaker;
import java.io.File;
import java.io.FileInputStream;
import java.io.FileNotFoundException;
import java.net.URI;
import java.net.URISyntaxException;
import java.util.HashMap;
import java.util.List;
import java.util.Map;
import org.json.JSONException;
import org.json.JSONObject;

/* JADX INFO: loaded from: classes3.dex */
public class c {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public static final String f80938a = "MraidBridge";

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    static final String f80939b = "mraid://open?url=";

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    BaseAdUnit f80940c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    d f80941d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    v f80942e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    private final PlacementType f80943f;

    /* JADX INFO: renamed from: g, reason: collision with root package name */
    private final m f80944g;

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    private String f80945h;

    /* JADX INFO: renamed from: i, reason: collision with root package name */
    private ap f80946i;

    /* JADX INFO: renamed from: j, reason: collision with root package name */
    private boolean f80947j;

    /* JADX INFO: renamed from: k, reason: collision with root package name */
    private final w f80948k;

    /* JADX INFO: renamed from: l, reason: collision with root package name */
    private e f80949l;

    /* JADX INFO: renamed from: com.sigmob.sdk.mraid.c$3, reason: invalid class name */
    static /* synthetic */ class AnonymousClass3 {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        static final /* synthetic */ int[] f80952a;

        static {
            int[] iArr = new int[k.values().length];
            f80952a = iArr;
            try {
                iArr[k.CLOSE.ordinal()] = 1;
            } catch (NoSuchFieldError unused) {
            }
            try {
                f80952a[k.UNLOAD.ordinal()] = 2;
            } catch (NoSuchFieldError unused2) {
            }
            try {
                f80952a[k.OPENFOURELEMENTS.ordinal()] = 3;
            } catch (NoSuchFieldError unused3) {
            }
            try {
                f80952a[k.RESIZE.ordinal()] = 4;
            } catch (NoSuchFieldError unused4) {
            }
            try {
                f80952a[k.EXPAND.ordinal()] = 5;
            } catch (NoSuchFieldError unused5) {
            }
            try {
                f80952a[k.USE_CUSTOM_CLOSE.ordinal()] = 6;
            } catch (NoSuchFieldError unused6) {
            }
            try {
                f80952a[k.OPEN.ordinal()] = 7;
            } catch (NoSuchFieldError unused7) {
            }
            try {
                f80952a[k.feedBack.ordinal()] = 8;
            } catch (NoSuchFieldError unused8) {
            }
            try {
                f80952a[k.SET_ORIENTATION_PROPERTIES.ordinal()] = 9;
            } catch (NoSuchFieldError unused9) {
            }
            try {
                f80952a[k.PLAY_VIDEO.ordinal()] = 10;
            } catch (NoSuchFieldError unused10) {
            }
            try {
                f80952a[k.STORE_PICTURE.ordinal()] = 11;
            } catch (NoSuchFieldError unused11) {
            }
            try {
                f80952a[k.CREATE_CALENDAR_EVENT.ordinal()] = 12;
            } catch (NoSuchFieldError unused12) {
            }
            try {
                f80952a[k.VPAID.ordinal()] = 13;
            } catch (NoSuchFieldError unused13) {
            }
            try {
                f80952a[k.EXTENSION.ordinal()] = 14;
            } catch (NoSuchFieldError unused14) {
            }
            try {
                f80952a[k.UNSPECIFIED.ordinal()] = 15;
            } catch (NoSuchFieldError unused15) {
            }
        }
    }

    c(BaseAdUnit adUnit, PlacementType placementType) {
        this(adUnit, placementType, new m());
    }

    private URI c(String encodedText, String defaultValue) throws f {
        try {
            try {
                return encodedText == null ? new URI(defaultValue) : new URI(encodedText);
            } catch (URISyntaxException unused) {
                return new URI(defaultValue);
            }
        } catch (URISyntaxException unused2) {
            throw new f("Invalid URL parameter: " + encodedText);
        }
    }

    private int f(String text) throws f {
        try {
            return Integer.parseInt(text, 10);
        } catch (NumberFormatException unused) {
            throw new f("Invalid numeric parameter: " + text);
        }
    }

    private p g(String text) throws f {
        if ("portrait".equals(text)) {
            return p.PORTRAIT;
        }
        if ("landscape".equals(text)) {
            return p.LANDSCAPE;
        }
        if ("none".equals(text)) {
            return p.NONE;
        }
        throw new f("Invalid orientation: " + text);
    }

    private URI i(String encodedText) throws f {
        if (encodedText == null) {
            throw new f("Parameter cannot be null");
        }
        try {
            return new URI(encodedText);
        } catch (URISyntaxException unused) {
            throw new f("Invalid URL parameter: " + encodedText);
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void o() {
        if (this.f80947j) {
            return;
        }
        this.f80947j = true;
        d dVar = this.f80941d;
        if (dVar != null) {
            dVar.a();
        }
    }

    void d() {
        c("mraidbridge.fireChangeEvent({\"hostSDKVersion\":4.25.21});");
    }

    void e() {
        c("mraidbridge.notifyReadyEvent();");
    }

    void h() {
        c("bridge.notifyApkDownloadEndEvent();");
    }

    void j() {
        c("mraidbridge.startAd();");
    }

    boolean k() {
        ap apVar = this.f80946i;
        return apVar != null && apVar.c();
    }

    boolean l() {
        v vVar = this.f80942e;
        return vVar != null && vVar.j();
    }

    boolean m() {
        return this.f80942e != null;
    }

    boolean n() {
        return this.f80947j;
    }

    c(BaseAdUnit adUnit, PlacementType placementType, m mraidNativeCommandHandler) {
        this.f80948k = new w() { // from class: com.sigmob.sdk.mraid.c.1
            @Override // android.webkit.WebViewClient
            public void onPageFinished(WebView view, String url) {
                c.this.o();
            }

            @Override // android.webkit.WebViewClient
            public void onReceivedError(WebView view, int errorCode, String description, String failingUrl) {
                ad.a("h5_error", "mraid1", errorCode, failingUrl + " error:" + description, (WindAdRequest) null, (LoadAdRequest) null, c.this.f80940c, (ad.a) null);
            }

            @Override // android.webkit.WebViewClient
            public void onReceivedHttpError(WebView view, WebResourceRequest request, WebResourceResponse errorResponse) {
                ad.a("h5_error", "mraid1", errorResponse.getStatusCode(), request.getUrl().toString(), (WindAdRequest) null, (LoadAdRequest) null, c.this.f80940c, (ad.a) null);
            }

            @Override // android.webkit.WebViewClient
            public boolean onRenderProcessGone(final WebView view, final RenderProcessGoneDetail detail) {
                c.this.a(detail);
                return true;
            }

            @Override // com.sigmob.sdk.mraid.w, com.sigmob.sdk.base.l, android.webkit.WebViewClient
            public WebResourceResponse shouldInterceptRequest(WebView view, String url) {
                if (com.sigmob.sdk.base.utils.y.a(url)) {
                    return null;
                }
                String videoPath = c.this.f80940c.getVideoPath();
                boolean zIsVideoExist = c.this.f80940c.isVideoExist();
                if (com.sigmob.sdk.base.utils.t.b(videoPath) && url.endsWith(videoPath) && zIsVideoExist) {
                    try {
                        return new WebResourceResponse("video/mp4", "UTF-8", new FileInputStream(videoPath));
                    } catch (FileNotFoundException e10) {
                        SigmobLog.e(e10.getMessage());
                    }
                }
                return super.shouldInterceptRequest(view, url);
            }

            @Override // android.webkit.WebViewClient
            public boolean shouldOverrideUrlLoading(WebView view, String url) {
                return c.this.a(view, url);
            }

            @Override // android.webkit.WebViewClient
            public void onReceivedError(WebView view, WebResourceRequest request, WebResourceError error) {
                SigmobLog.i("onReceivedError:" + error.toString());
                if (Build.VERSION.SDK_INT >= 23) {
                    ad.a("h5_error", "mraid1", 0, request.getUrl() + " error:" + ((Object) error.getDescription()), (WindAdRequest) null, (LoadAdRequest) null, c.this.f80940c, (ad.a) null);
                }
            }
        };
        this.f80940c = adUnit;
        this.f80943f = placementType;
        this.f80944g = mraidNativeCommandHandler;
    }

    private int a(int value, int min, int max) throws f {
        if (value >= min && value <= max) {
            return value;
        }
        throw new f("Integer parameter out of range: " + value);
    }

    private String b(Rect rect) {
        return rect.width() + "," + rect.height();
    }

    private boolean h(String text) throws f {
        if ("true".equals(text)) {
            return true;
        }
        if ("false".equals(text)) {
            return false;
        }
        throw new f("Invalid boolean parameter: " + text);
    }

    void c() {
        c("bridge.fireChangeEvent({\"osType\":2});");
    }

    void d(String url) {
        c("mraidbridge.fireVideoSrc(\"" + url + "\")");
    }

    void e(String cmd) {
        c("mraidbridge.nativeCallCompleteV2(" + JSONObject.quote(cmd) + ")");
    }

    void f() {
        c("bridge.notifyApkDownloadStartEvent();");
    }

    void g() {
        c("bridge.notifyApkDownloadFailEvent();");
    }

    void i() {
        c("bridge.notifyApkDownloadInstalledEvent();");
    }

    private b.a a(String text, b.a defaultValue) throws f {
        if (com.sigmob.sdk.base.utils.t.a((CharSequence) text)) {
            return defaultValue;
        }
        text.hashCode();
        switch (text) {
            case "center":
                return b.a.CENTER;
            case "top-right":
                return b.a.TOP_RIGHT;
            case "top-left":
                return b.a.TOP_LEFT;
            case "bottom-left":
                return b.a.BOTTOM_LEFT;
            case "bottom-right":
                return b.a.BOTTOM_RIGHT;
            case "bottom-center":
                return b.a.BOTTOM_CENTER;
            case "top-center":
                return b.a.TOP_CENTER;
            default:
                throw new f("Invalid close position: " + text);
        }
    }

    void b() {
        this.f80941d = null;
        this.f80949l = null;
        v vVar = this.f80942e;
        if (vVar == null) {
            return;
        }
        vVar.destroy();
        this.f80942e = null;
    }

    void c(String javascript) {
        if (this.f80942e == null) {
            SigmobLog.e("Attempted to inject Javascript into MRAID WebView while was not attached:\n\t" + javascript);
            return;
        }
        if (javascript.startsWith("bridge")) {
            javascript = javascript.replaceFirst("bridge", StringUtil.decode(StringUtil.f25852s));
        }
        SigmobLog.d("Injecting Javascript into MRAID WebView:\n\t" + javascript);
        this.f80942e.evaluateJavascript(javascript, null);
    }

    public String a() {
        return this.f80945h;
    }

    void b(ValueCallback callback) {
        a("mraidbridge.getAdDuration();", callback);
    }

    public void c(String uniqueId, int state) {
        JSONObject jSONObject = new JSONObject();
        try {
            jSONObject.put("uniqueId", uniqueId);
            jSONObject.put(NoticeTopAnimActivityDialog_.STATE_EXTRA, state);
        } catch (JSONException e10) {
            e10.printStackTrace();
        }
        c("mraidbridge.setvdPlayStateChanged(" + jSONObject + ")");
    }

    private String a(Rect rect) {
        return rect.left + "," + rect.top + "," + rect.width() + "," + rect.height();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void c(boolean z10) {
        d dVar = this.f80941d;
        if (dVar == null) {
            return;
        }
        dVar.a(z10);
    }

    @SuppressLint({"JavascriptInterface"})
    public void b(String url) {
        v vVar = this.f80942e;
        if (vVar == null) {
            SigmobLog.e("MRAID bridge called setContentHtml while WebView was not attached");
            return;
        }
        vVar.addJavascriptInterface(new a(this), "sigandroid");
        this.f80947j = false;
        this.f80942e.loadUrl(url);
    }

    public static String a(String value) {
        if (value == null || value.equalsIgnoreCase("null") || value.equalsIgnoreCase("undefined")) {
            return null;
        }
        return value;
    }

    public void b(String uniqueId, int state) {
        JSONObject jSONObject = new JSONObject();
        try {
            jSONObject.put("uniqueId", uniqueId);
            jSONObject.put(NoticeTopAnimActivityDialog_.STATE_EXTRA, state);
        } catch (JSONException e10) {
            e10.printStackTrace();
        }
        c("mraidbridge.setvdLoadStateChanged(" + jSONObject + ")");
    }

    private URI a(String encodedText, URI defaultValue) throws f {
        return encodedText == null ? defaultValue : i(encodedText);
    }

    public void b(String uniqueId, String error) {
        JSONObject jSONObject = new JSONObject();
        try {
            jSONObject.put("uniqueId", uniqueId);
            jSONObject.put("error", error);
        } catch (JSONException e10) {
            e10.printStackTrace();
        }
        c("mraidbridge.setvdPlayError(" + jSONObject + ")");
    }

    void a(int process) {
        c("bridge.notifyApkDownloadProcessEvent(" + process + ");");
    }

    void b(boolean status) {
        c("mraidbridge.setIsScreenRecording(" + status + ")");
    }

    void a(int top, int left, int bottom, int right) {
        c("mraidbridge.setSafeAreaInsets(" + (top + "," + left + "," + bottom + "," + right) + ")");
    }

    @SuppressLint({"JavascriptInterface", "AddJavascriptInterface"})
    public void a(Context context, String htmlData) {
        v vVar = this.f80942e;
        if (vVar == null) {
            SigmobLog.e("MRAID bridge called setContentHtml before WebView was attached");
            return;
        }
        vVar.addJavascriptInterface(new a(this), "sigandroid");
        this.f80947j = false;
        File fileB = com.sigmob.sdk.base.utils.o.b(htmlData, Md5Util.md5(htmlData) + ".html");
        if (fileB == null || com.sigmob.sdk.base.utils.t.a((CharSequence) fileB.getAbsolutePath())) {
            this.f80942e.loadDataWithBaseURL(Networking.getBaseUrlScheme() + "://localhost/", htmlData, ClipBoardItemData.TYPE_TEXT_HTML, "UTF-8", null);
            return;
        }
        this.f80942e.loadUrl("file://" + fileB.getAbsolutePath());
    }

    public void a(Location location) {
        c("mraidbridge.setLocation(" + location.getLatitude() + "," + location.getLongitude() + ",\"" + location.getProvider() + "\");");
    }

    @TargetApi(26)
    void a(RenderProcessGoneDetail detail) {
        WindAdError windAdError = (detail == null || !detail.didCrash()) ? WindAdError.RENDER_PROCESS_GONE_UNSPECIFIED : WindAdError.RENDER_PROCESS_GONE_WITH_CRASH;
        SigmobLog.e("handleRenderProcessGone " + windAdError);
        b();
        d dVar = this.f80941d;
        if (dVar != null) {
            dVar.a(windAdError);
        }
    }

    void a(ValueCallback callback) {
        a("mraidbridge.getPlayProgress();", callback);
    }

    void a(AppInfo appInfo) {
        c("bridge.fireChangeEvent({" + appInfo.toString().replace(SimpleComparison.EQUAL_TO_OPERATION, ":") + "});");
    }

    void a(CurrentAppOrientation appOrientation) {
        c("mraidbridge.fireChangeEvent({" + appOrientation.toString().replace(SimpleComparison.EQUAL_TO_OPERATION, ":") + "});");
    }

    void a(ExposureChange exposedProperty) {
        c("mraidbridge.fireChangeEvent({" + exposedProperty.toString().replace(SimpleComparison.EQUAL_TO_OPERATION, ":") + "});");
    }

    void a(MraidEnv env) {
        c("mraidbridge.fireChangeEvent(" + JSONSerializer.Serialize(env, aw.f84320a, true) + ");");
    }

    void a(PlacementType placementType) {
        c("mraidbridge.setPlacementType(" + JSONObject.quote(placementType.toJavascriptString()) + ")");
    }

    void a(VideoItem videoItem) {
        c("bridge.fireChangeEvent(" + JSONSerializer.Serialize(videoItem, "video", false) + ");");
    }

    void a(ViewState state) {
        c("mraidbridge.setState(" + JSONObject.quote(state.toJavascriptString()) + ")");
    }

    void a(Ad ad2, SlotAdSetting adSetting) {
        String strSerialize = JSONSerializer.Serialize(ad2, "ad", true);
        try {
            String strSerialize2 = JSONSerializer.Serialize(adSetting, null, true);
            JSONObject jSONObject = new JSONObject(strSerialize);
            jSONObject.getJSONObject("ad").put("slotAdSetting", new JSONObject(strSerialize2));
            c("bridge.fireChangeEvent(" + jSONObject.toString() + ");");
        } catch (JSONException e10) {
            throw new RuntimeException(e10);
        }
    }

    void a(MaterialMeta materialMeta) {
        c("bridge.fireChangeEvent(" + JSONSerializer.Serialize(materialMeta, ClickCommon.CLICK_AREA_MATERIAL, true) + ");");
    }

    void a(RvAdSetting rvAdSetting) {
        c("bridge.fireChangeEvent(" + JSONSerializer.Serialize(rvAdSetting, "rvSetting", false) + ");");
    }

    void a(d listener) {
        this.f80941d = listener;
    }

    void a(e listener) {
        this.f80949l = listener;
    }

    private void a(k command) {
        c("window.mraidbridge.nativeCallComplete(" + JSONObject.quote(command.a()) + ")");
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void a(k kVar, f fVar) {
        a(kVar, fVar.getMessage());
    }

    private void a(k command, String message) {
        c("window.mraidbridge.notifyErrorEvent(" + JSONObject.quote(command.a()) + ", " + JSONObject.quote(message) + ")");
    }

    void a(final k command, Map<String, String> params) throws f {
        if (this.f80941d == null) {
            throw new f("Invalid state to execute this command.");
        }
        if (this.f80942e == null) {
            throw new f("The current WebView is being destroyed.");
        }
        switch (AnonymousClass3.f80952a[command.ordinal()]) {
            case 1:
                this.f80941d.d();
                return;
            case 2:
                this.f80941d.e();
                return;
            case 3:
                this.f80941d.f();
                return;
            case 4:
                this.f80941d.a(a(f(params.get("width")), 0, 100000), a(f(params.get("height")), 0, 100000), a(f(params.get("offsetX")), LiveError.PARSE_JSON, 100000), a(f(params.get("offsetY")), LiveError.PARSE_JSON, 100000), a(params.get("customClosePosition"), b.a.TOP_RIGHT), a(params.get("allowOffscreen"), true));
                return;
            case 5:
                this.f80941d.a(a(params.get("url"), (URI) null), a(params.get("shouldUseCustomClose"), false));
                return;
            case 6:
                this.f80941d.b(a(params.get("shouldUseCustomClose"), false));
                return;
            case 7:
                SigmobLogger.d(f80938a, "runCommand: command = " + command.a(), new Object[0]);
                this.f80941d.a(c(params.get("url"), ""), 1, a(params.get("ext")));
                return;
            case 8:
                this.f80941d.g();
                return;
            case 9:
                this.f80941d.a(h(params.get("allowOrientationChange")), g(params.get("forceOrientation")));
                return;
            case 10:
                this.f80941d.a(i(params.get(ContentProviderManager.PROVIDER_URI)));
                return;
            case 11:
                this.f80944g.a(this.f80942e.getContext(), i(params.get(ContentProviderManager.PROVIDER_URI)).toString(), new m.a() { // from class: com.sigmob.sdk.mraid.c0
                    @Override // com.sigmob.sdk.mraid.m.a
                    public final void onFailure(f fVar) {
                        this.f80953a.a(command, fVar);
                    }
                });
                return;
            case 12:
                this.f80944g.a(this.f80942e.getContext(), params);
                return;
            case 13:
                this.f80941d.a(params.get(NotificationCompat.CATEGORY_EVENT), params);
                return;
            case 14:
                this.f80941d.b(params.get(NotificationCompat.CATEGORY_EVENT), params);
                return;
            case 15:
                throw new f("Unspecified MRAID Javascript command");
            default:
                return;
        }
    }

    public void a(final q screenMetrics) {
        c("mraidbridge.setScreenSize(" + b(screenMetrics.c()) + ");mraidbridge.setMaxSize(" + b(screenMetrics.e()) + ");mraidbridge.setCurrentPosition(" + a(screenMetrics.g()) + ");mraidbridge.setDefaultPosition(" + a(screenMetrics.i()) + ")");
        StringBuilder sb2 = new StringBuilder();
        sb2.append("mraidbridge.notifySizeChangeEvent(");
        sb2.append(b(screenMetrics.g()));
        sb2.append(")");
        c(sb2.toString());
    }

    public void a(v mraidWebView) {
        this.f80942e = mraidWebView;
        WebSettings settings = mraidWebView.getSettings();
        com.sigmob.sdk.base.utils.j.a(f80938a, settings);
        if (this.f80943f == PlacementType.INTERSTITIAL) {
            settings.setMediaPlaybackRequiresUserGesture(false);
        }
        this.f80948k.b(this.f80940c.isDisablexRequestWith());
        this.f80948k.a(com.sigmob.sdk.base.o.a().af());
        this.f80942e.setScrollContainer(false);
        this.f80942e.setVerticalScrollBarEnabled(false);
        this.f80942e.setHorizontalScrollBarEnabled(false);
        this.f80942e.setBackgroundColor(0);
        this.f80942e.setAdUnit(this.f80940c);
        this.f80942e.a((com.sigmob.sdk.base.common.b) null);
        this.f80942e.setWebViewClient(this.f80948k);
        this.f80942e.setWebChromeClient(new WebChromeClient() { // from class: com.sigmob.sdk.mraid.c.2
            @Override // android.webkit.WebChromeClient
            public boolean onConsoleMessage(ConsoleMessage consoleMessage) {
                d dVar = c.this.f80941d;
                return dVar == null ? super.onConsoleMessage(consoleMessage) : dVar.a(consoleMessage);
            }

            @Override // android.webkit.WebChromeClient
            public boolean onJsAlert(WebView view, String url, String message, JsResult result) {
                d dVar = c.this.f80941d;
                return dVar == null ? super.onJsAlert(view, url, message, result) : dVar.a(message, result);
            }

            @Override // android.webkit.WebChromeClient
            public boolean onJsPrompt(WebView view, String url, String message, String defaultValue, JsPromptResult result) {
                return super.onJsPrompt(view, url, message, defaultValue, result);
            }

            @Override // android.webkit.WebChromeClient
            public void onShowCustomView(View view, WebChromeClient.CustomViewCallback callback) {
                super.onShowCustomView(view, callback);
            }
        });
        this.f80946i = new ap(this.f80942e.getContext(), this.f80942e, this.f80940c);
        this.f80942e.setVisibilityChangedListener(new v.a() { // from class: com.sigmob.sdk.mraid.d0
            @Override // com.sigmob.sdk.mraid.v.a
            public final void onVisibilityChanged(boolean z10) {
                this.f80955a.c(z10);
            }
        });
    }

    public void a(String uniqueId, int position) {
        JSONObject jSONObject = new JSONObject();
        try {
            jSONObject.put("uniqueId", uniqueId);
            jSONObject.put("currentTime", position / 1000.0f);
        } catch (JSONException e10) {
            e10.printStackTrace();
        }
        c("mraidbridge.setvdPlayToEnd(" + jSONObject + ")");
    }

    public void a(String uniqueId, int position, int duration) {
        JSONObject jSONObject = new JSONObject();
        try {
            jSONObject.put("uniqueId", uniqueId);
            jSONObject.put("currentTime", position / 1000.0f);
            jSONObject.put("duration", duration / 1000.0f);
        } catch (JSONException e10) {
            e10.printStackTrace();
        }
        c("mraidbridge.setvdPlayCurrentTime(" + jSONObject + ")");
    }

    void a(String uniqueId, int duration, int width, int height) {
        JSONObject jSONObject = new JSONObject();
        try {
            jSONObject.put("uniqueId", uniqueId);
            jSONObject.put("duration", duration / 1000.0f);
            jSONObject.put("width", width);
            jSONObject.put("height", height);
        } catch (JSONException e10) {
            e10.printStackTrace();
        }
        c("mraidbridge.setvdReadyToPlay(" + jSONObject + ")");
    }

    void a(String javascript, ValueCallback callback) {
        if (this.f80942e == null) {
            SigmobLog.e("Attempted to inject Javascript into MRAID WebView while was not attached:\n\t" + javascript);
            return;
        }
        if (javascript.startsWith("bridge")) {
            javascript = javascript.replaceFirst("bridge", StringUtil.decode(StringUtil.f25852s));
        }
        SigmobLog.d("Injecting Javascript into MRAID WebView:\n\t" + javascript);
        this.f80942e.evaluateJavascript(javascript, callback);
    }

    void a(String x10, String y10) {
        this.f80945h = String.format("%s,%s,%s,%s", x10, y10, x10, y10);
        this.f80940c.getMacroCommon().updateClickMarco(x10, y10, x10, y10);
        this.f80940c.getClickCommon().down = new TouchLocation(Integer.parseInt(x10), Integer.parseInt(y10));
        this.f80940c.getClickCommon().up = new TouchLocation(Integer.parseInt(x10), Integer.parseInt(y10));
    }

    void a(String uniqueId, String type, String event, HashMap<String, Object> args) {
        JSONObject jSONObject = new JSONObject();
        try {
            JSONObject jSONObject2 = new JSONObject();
            jSONObject2.put(NotificationCompat.CATEGORY_EVENT, event);
            jSONObject2.put("uniqueId", uniqueId);
            if (args != null) {
                jSONObject2.put(QuarkPromptActivity_.ARGS_EXTRA, new JSONObject(args));
            }
            jSONObject.put("onChangeFired", jSONObject2);
        } catch (JSONException e10) {
            e10.printStackTrace();
        }
        c("mraidbridge.fireChangeEvent(" + jSONObject + ");");
    }

    public void a(String event, String subEvent, JSONObject args) {
        if (this.f80949l == null) {
        }
        event.hashCode();
        switch (event) {
            case "motion":
                this.f80949l.d(subEvent, args);
                break;
            case "motionView":
                this.f80949l.e(subEvent, args);
                break;
            case "addSubview":
                this.f80949l.c(subEvent, args);
                break;
            case "vpaid":
                this.f80949l.a(subEvent, args);
                break;
            case "belowSubview":
                this.f80949l.b(subEvent, args);
                break;
        }
    }

    void a(String event, HashMap<String, Object> args) {
        JSONObject jSONObject = new JSONObject();
        try {
            JSONObject jSONObject2 = new JSONObject();
            jSONObject2.put(NotificationCompat.CATEGORY_EVENT, event);
            if (args != null) {
                jSONObject2.put(QuarkPromptActivity_.ARGS_EXTRA, new JSONObject(args));
            }
            jSONObject.put("onChangeEvent", jSONObject2);
        } catch (JSONException e10) {
            e10.printStackTrace();
        }
        c("mraidbridge.fireChangeEvent(" + jSONObject + ");");
    }

    void a(boolean isViewable) {
        c("mraidbridge.setIsViewable(" + isViewable + ")");
    }

    void a(boolean sms, boolean telephone, boolean calendar, boolean storePicture, boolean inlineVideo, boolean vpaid, boolean location) {
        c("mraidbridge.setSupports(" + sms + "," + telephone + "," + calendar + "," + storePicture + "," + inlineVideo + "," + vpaid + "," + location + ")");
    }

    boolean a(WebView view, String url) {
        int i10;
        d dVar;
        SigmobLog.d("MraidBridge#handleShouldOverrideUrl: url = " + url);
        try {
            new URI(url);
            Uri uri = Uri.parse(url);
            String scheme = uri.getScheme();
            String host = uri.getHost();
            if (StringUtil.decode(StringUtil.f25852s).equals(scheme)) {
                if ("failLoad".equals(host) && this.f80943f == PlacementType.INLINE && (dVar = this.f80941d) != null) {
                    dVar.c();
                }
                return true;
            }
            if (BaseAdActivity.f78791c.equals(scheme)) {
                SigmobLogger.d(f80938a, "handleShouldOverrideUrl: uri = " + uri, new Object[0]);
                k kVarA = k.a(host);
                try {
                    a(kVarA, ClientMetadata.getQueryParamMap(uri));
                } catch (Throwable th) {
                    a(kVarA, th.getMessage());
                }
                a(kVarA);
                return true;
            }
            if (com.sigmob.sdk.base.utils.t.b(url)) {
                if (url.startsWith("http")) {
                    view.loadUrl(url);
                } else {
                    try {
                        AdSetting adSetting = this.f80940c.getAdSetting();
                        List<String> list = adSetting == null ? null : adSetting.scheme_white_list;
                        if (com.sigmob.sdk.base.utils.e.a(list)) {
                            return true;
                        }
                        while (i10 < list.size()) {
                            String str = list.get(i10);
                            i10 = (url.startsWith(str) || str.equals(WebSocketServerHandshaker.SUB_PROTOCOL_WILDCARD)) ? 0 : i10 + 1;
                            com.sigmob.sdk.base.utils.g.a(this.f80942e.getContext(), Uri.parse(url));
                            return true;
                        }
                    } catch (Exception e10) {
                        e10.printStackTrace();
                    }
                }
            }
            return true;
        } catch (URISyntaxException unused) {
            SigmobLog.e("Invalid MRAID URL: " + url);
            a(k.UNSPECIFIED, "Mraid command sent an invalid URL");
            return true;
        }
    }

    private boolean a(String text, boolean defaultValue) throws f {
        return text == null ? defaultValue : h(text);
    }
}
