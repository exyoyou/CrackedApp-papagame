package com.windmill.sdk.widget;

import android.content.Context;
import android.net.Uri;
import android.net.http.SslError;
import android.text.TextUtils;
import android.webkit.JavascriptInterface;
import android.webkit.SslErrorHandler;
import android.webkit.WebResourceRequest;
import android.webkit.WebResourceResponse;
import android.webkit.WebView;
import android.webkit.WebViewClient;
import com.czhj.volley.toolbox.StringUtil;
import com.windmill.sdk.WMConstants;
import com.windmill.sdk.base.WMBidUtil;
import com.windmill.sdk.base.WMLogUtil;
import com.windmill.sdk.natives.WMNativeAdData;
import java.util.Map;
import org.json.JSONObject;

/* JADX INFO: loaded from: classes8.dex */
public class a {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private int f87558a;
    public int autoPlayMuted;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private int f87559b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    private CircleWebView f87560c;
    public int close_position;
    public int close_style;
    public ViewInteractionListener listener;
    public int mistake_click_rate;
    public WMNativeAdData nativeAdData;
    public int nativeBtnStyle;
    public int nativeRenderOri;
    public int nativeRenderType;
    public int nativeShakeAd;
    public int nativeSkipTime;
    public String nativeTemplateId;
    public int nativeTotalTime;
    public String privacy_url;

    /* JADX INFO: renamed from: com.windmill.sdk.widget.a$a, reason: collision with other inner class name */
    static class C1085a {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        private WMNativeAdData.AppInfo f87563a;

        public C1085a(WMNativeAdData.AppInfo privacy) {
            this.f87563a = privacy;
        }

        @JavascriptInterface
        public String getPrivacyInfo() {
            try {
                if (this.f87563a == null) {
                    return null;
                }
                JSONObject jSONObject = new JSONObject();
                jSONObject.put("app_name", this.f87563a.getAppName());
                jSONObject.put("app_size", this.f87563a.getAppPackageSize());
                jSONObject.put("app_version", this.f87563a.getAppVersion());
                jSONObject.put("app_package", this.f87563a.getAppPackageName());
                jSONObject.put("app_company", this.f87563a.getDeveloperName());
                jSONObject.put("app_privacy_url", this.f87563a.getPrivacyUrl());
                jSONObject.put("app_permission", this.f87563a.getPermissionInfo());
                jSONObject.put("app_permission_url", this.f87563a.getPermissionInfoUrl());
                jSONObject.put("app_func_url", this.f87563a.getFunctionDescUrl());
                WMLogUtil.i("-----------getPrivacyInfo------------:" + jSONObject.toString());
                return jSONObject.toString();
            } catch (Throwable th) {
                th.printStackTrace();
                return null;
            }
        }
    }

    interface b {
        void a();

        void b();
    }

    public a(WMNativeAdData nativeAdData, Map<String, Object> serverExtra, ViewInteractionListener listener) {
        this.nativeRenderType = 0;
        this.nativeRenderOri = 0;
        this.nativeTemplateId = "";
        this.nativeSkipTime = 5;
        this.nativeBtnStyle = 0;
        this.nativeShakeAd = 0;
        this.autoPlayMuted = 0;
        this.nativeTotalTime = -1;
        this.f87558a = 0;
        this.f87559b = 0;
        this.close_style = 0;
        this.close_position = 0;
        this.mistake_click_rate = 0;
        this.privacy_url = "";
        this.nativeAdData = nativeAdData;
        this.listener = listener;
        String str = (String) serverExtra.get("nativeRenderType");
        if (!TextUtils.isEmpty(str)) {
            try {
                this.nativeRenderType = WMBidUtil.parseInt(str).intValue();
            } catch (Exception e10) {
                e10.printStackTrace();
            }
        }
        String str2 = (String) serverExtra.get("nativeRenderOri");
        if (!TextUtils.isEmpty(str2)) {
            try {
                this.nativeRenderOri = WMBidUtil.parseInt(str2).intValue();
            } catch (Exception e11) {
                e11.printStackTrace();
            }
        }
        String str3 = (String) serverExtra.get("nativeTemplateId");
        if (!TextUtils.isEmpty(str3)) {
            this.nativeTemplateId = str3;
        }
        String str4 = (String) serverExtra.get("nativeSkipTime");
        if (!TextUtils.isEmpty(str4)) {
            try {
                this.nativeSkipTime = WMBidUtil.parseInt(str4).intValue();
            } catch (Exception e12) {
                e12.printStackTrace();
            }
        }
        String str5 = (String) serverExtra.get("nativeBtnStyle");
        if (!TextUtils.isEmpty(str5)) {
            try {
                this.nativeBtnStyle = WMBidUtil.parseInt(str5).intValue();
            } catch (Exception e13) {
                e13.printStackTrace();
            }
        }
        String str6 = (String) serverExtra.get("nativeShakeAd");
        if (!TextUtils.isEmpty(str6)) {
            try {
                this.nativeShakeAd = WMBidUtil.parseInt(str6).intValue();
            } catch (Exception e14) {
                e14.printStackTrace();
            }
        }
        String str7 = (String) serverExtra.get(WMConstants.AUTO_PLAY_MUTED);
        if (!TextUtils.isEmpty(str7)) {
            try {
                this.autoPlayMuted = WMBidUtil.parseInt(str7).intValue();
            } catch (Exception e15) {
                e15.printStackTrace();
            }
        }
        String str8 = (String) serverExtra.get("nativeTotalTime");
        if (!TextUtils.isEmpty(str8)) {
            try {
                this.nativeTotalTime = WMBidUtil.parseInt(str8).intValue();
            } catch (Exception e16) {
                e16.printStackTrace();
            }
        }
        String str9 = (String) serverExtra.get("nativeEnableFullScreenClick");
        if (!TextUtils.isEmpty(str9)) {
            try {
                this.f87558a = WMBidUtil.parseInt(str9).intValue();
            } catch (Exception e17) {
                e17.printStackTrace();
            }
        }
        String str10 = (String) serverExtra.get("nativeIsAutoClose");
        if (!TextUtils.isEmpty(str10)) {
            try {
                this.f87559b = WMBidUtil.parseInt(str10).intValue();
            } catch (Exception e18) {
                e18.printStackTrace();
            }
        }
        Object obj = serverExtra.get("close_style");
        if (obj != null) {
            try {
                this.close_style = ((Integer) obj).intValue();
            } catch (Exception e19) {
                e19.printStackTrace();
            }
        }
        Object obj2 = serverExtra.get("close_position");
        if (obj2 != null) {
            try {
                this.close_position = ((Integer) obj2).intValue();
            } catch (Exception e20) {
                e20.printStackTrace();
            }
        }
        Object obj3 = serverExtra.get("mistake_click_rate");
        if (obj3 != null) {
            try {
                this.mistake_click_rate = ((Integer) obj3).intValue();
            } catch (Exception e21) {
                e21.printStackTrace();
            }
        }
        String str11 = (String) serverExtra.get("privacy_url");
        if (TextUtils.isEmpty(str11)) {
            return;
        }
        this.privacy_url = str11;
    }

    public void destroy() {
        CircleWebView circleWebView = this.f87560c;
        if (circleWebView != null) {
            circleWebView.destroy();
            this.f87560c = null;
        }
        this.listener = null;
        WMNativeAdData wMNativeAdData = this.nativeAdData;
        if (wMNativeAdData != null) {
            wMNativeAdData.destroy();
            this.nativeAdData = null;
        }
    }

    public CircleWebView getAdView(Context context, final b listener) {
        CircleWebView circleWebView = this.f87560c;
        if (circleWebView != null) {
            return circleWebView;
        }
        WMNativeAdData wMNativeAdData = this.nativeAdData;
        if (wMNativeAdData != null && wMNativeAdData.getAppInfo() != null && !TextUtils.isEmpty(getPrivacy_url())) {
            WMNativeAdData.AppInfo appInfo = this.nativeAdData.getAppInfo();
            CircleWebView circleWebView2 = new CircleWebView(context);
            this.f87560c = circleWebView2;
            circleWebView2.enablePlugins(true);
            this.f87560c.setWebViewClient(new WebViewClient() { // from class: com.windmill.sdk.widget.a.1
                @Override // android.webkit.WebViewClient
                public void onReceivedError(WebView view, int errorCode, String description, String failingUrl) {
                    super.onReceivedError(view, errorCode, description, failingUrl);
                    WMLogUtil.i("AdBaseControl", "-----------onReceivedError------------:" + errorCode + ":" + description);
                    b bVar = listener;
                    if (bVar != null) {
                        bVar.b();
                    }
                }

                @Override // android.webkit.WebViewClient
                public void onReceivedHttpError(WebView view, WebResourceRequest request, WebResourceResponse errorResponse) {
                    super.onReceivedHttpError(view, request, errorResponse);
                    WMLogUtil.i("AdBaseControl", "-----------onReceivedHttpError------------:" + errorResponse);
                    b bVar = listener;
                    if (bVar != null) {
                        bVar.b();
                    }
                }

                @Override // android.webkit.WebViewClient
                public void onReceivedSslError(WebView view, SslErrorHandler handler, SslError error) {
                    super.onReceivedSslError(view, handler, error);
                    WMLogUtil.i("AdBaseControl", "-----------onReceivedSslError------------:" + error.toString());
                    b bVar = listener;
                    if (bVar != null) {
                        bVar.b();
                    }
                }

                @Override // android.webkit.WebViewClient
                public boolean shouldOverrideUrlLoading(WebView view, String url) {
                    b bVar;
                    try {
                        WMLogUtil.i("AdBaseControl", "-----------shouldOverrideUrlLoading------------:" + url);
                        Uri uri = Uri.parse(url);
                        if (StringUtil.scheme().equalsIgnoreCase(uri.getScheme())) {
                            String host = uri.getHost();
                            if (!TextUtils.isEmpty(host)) {
                                if ("closeFourElements".equals(host) && (bVar = listener) != null) {
                                    bVar.a();
                                }
                                return true;
                            }
                        }
                    } catch (Throwable th) {
                        th.printStackTrace();
                    }
                    if (!TextUtils.isEmpty(url) && url.startsWith("http")) {
                        view.loadUrl(url);
                    }
                    return true;
                }
            });
            this.f87560c.addJavascriptInterface(new C1085a(appInfo), "sigPrivacy");
            this.f87560c.loadUrl(getPrivacy_url());
        }
        return this.f87560c;
    }

    public int getAutoPlayMuted() {
        return this.autoPlayMuted;
    }

    public int getClose_position() {
        return this.close_position;
    }

    public int getClose_style() {
        return this.close_style;
    }

    public ViewInteractionListener getListener() {
        return this.listener;
    }

    public int getMistake_click_rate() {
        return this.mistake_click_rate;
    }

    public WMNativeAdData getNativeAdData() {
        return this.nativeAdData;
    }

    public int getNativeBtnStyle() {
        return this.nativeBtnStyle;
    }

    public int getNativeEnableFullScreenClick() {
        return this.f87558a;
    }

    public int getNativeIsAutoClose() {
        return this.f87559b;
    }

    public int getNativeRenderOri() {
        return this.nativeRenderOri;
    }

    public int getNativeRenderType() {
        return this.nativeRenderType;
    }

    public int getNativeShakeAd() {
        return this.nativeShakeAd;
    }

    public int getNativeSkipTime() {
        return this.nativeSkipTime;
    }

    public String getNativeTemplateId() {
        return this.nativeTemplateId;
    }

    public int getNativeTotalTime(int i10) {
        int i11 = this.nativeTotalTime;
        if (i11 < 0) {
            if (i10 == 0) {
                this.nativeTotalTime = 5;
            } else {
                this.nativeTotalTime = 15;
            }
        } else if (i10 == 0 && i11 < 3) {
            this.nativeTotalTime = 5;
        }
        return this.nativeTotalTime;
    }

    public String getPrivacy_url() {
        return this.privacy_url;
    }
}
