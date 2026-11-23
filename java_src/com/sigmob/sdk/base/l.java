package com.sigmob.sdk.base;

import android.annotation.SuppressLint;
import android.net.Uri;
import android.webkit.WebResourceRequest;
import android.webkit.WebResourceResponse;
import android.webkit.WebView;
import android.webkit.WebViewClient;
import com.czhj.sdk.common.utils.FileUtil;
import com.czhj.sdk.logger.SigmobLog;
import com.czhj.sdk.logger.SigmobLogger;
import com.haima.hmcp.beans.ClipBoardItemData;
import com.j256.ormlite.stmt.query.SimpleComparison;
import com.sigmob.sdk.base.utils.t;
import com.sigmob.sdk.base.utils.y;
import io.netty.handler.codec.http.HttpHeaders;
import java.io.File;
import java.io.FileInputStream;
import java.io.FileNotFoundException;
import java.net.CookieManager;
import java.net.HttpCookie;
import java.net.HttpURLConnection;
import java.text.MessageFormat;
import java.util.HashMap;
import java.util.List;
import java.util.Locale;
import java.util.Map;

/* JADX INFO: loaded from: classes5.dex */
public class l extends WebViewClient {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    static final String f79483a = "Set-Cookie";

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    static final String f79484b = "Referer";

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    private static final String f79485c = "l";

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    private static final String f79486d = "mraid.js";

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    private static final String f79487e = "mraid2.js";

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    private final boolean f79488f = false;

    /* JADX INFO: renamed from: g, reason: collision with root package name */
    private boolean f79489g = false;

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    private String f79490h;

    public static WebResourceResponse a(Uri url) {
        String scheme;
        if (url != null && (scheme = url.getScheme()) != null && scheme.startsWith("file")) {
            String path = url.getPath();
            if (!t.a((CharSequence) path) && !y.a(path)) {
                try {
                    File file = new File(path);
                    if (file.getCanonicalPath().equals(file.getAbsolutePath()) && file.exists()) {
                        return new WebResourceResponse(ClipBoardItemData.TYPE_TEXT_HTML, "utf-8", new FileInputStream(file));
                    }
                } catch (Throwable th) {
                    th.printStackTrace();
                }
            }
        }
        return null;
    }

    private WebResourceResponse c(String url) {
        String str;
        try {
            Uri uri = Uri.parse(url);
            String host = uri.getHost();
            String scheme = uri.getScheme();
            String lastPathSegment = uri.getLastPathSegment();
            if (!t.a((CharSequence) lastPathSegment) && !y.a(lastPathSegment) && host != null && !a(url) && scheme.startsWith("http") && !host.equals("127.0.0.1") && t.a((CharSequence) uri.getQueryParameter("no-cache")) && (lastPathSegment.endsWith(".js") || lastPathSegment.endsWith(".css"))) {
                String strC = com.sigmob.sdk.base.utils.o.c();
                File file = new File(strC, lastPathSegment);
                if (!file.getCanonicalPath().startsWith(new File(strC).getCanonicalPath())) {
                    return null;
                }
                if (lastPathSegment.endsWith(".js")) {
                    str = "text/javascript";
                } else {
                    str = lastPathSegment.endsWith(".css") ? "text/css" : null;
                }
                if (file.exists()) {
                    WebResourceResponse webResourceResponse = new WebResourceResponse(str, "UTF-8", new FileInputStream(file));
                    HashMap map = new HashMap();
                    map.put("Cache-Control", HttpHeaders.Values.NO_STORE);
                    webResourceResponse.setResponseHeaders(map);
                    return webResourceResponse;
                }
                return null;
            }
            return null;
        } catch (Throwable th) {
            SigmobLog.e("useWebResourceCache: error = " + th.getMessage());
        }
    }

    public void b(String url) {
        try {
            Uri uri = Uri.parse(url);
            this.f79490h = uri.getScheme() + "://" + uri.getHost() + net.lingala.zip4j.util.e.F0 + uri.getPath();
        } catch (Throwable unused) {
        }
    }

    @Override // android.webkit.WebViewClient
    @SuppressLint({"NewApi"})
    public WebResourceResponse shouldInterceptRequest(WebView view, WebResourceRequest request) {
        WebResourceResponse webResourceResponseShouldInterceptRequest;
        File fileA;
        Uri url = request.getUrl();
        String string = url.toString();
        try {
            webResourceResponseShouldInterceptRequest = a(url);
            if (webResourceResponseShouldInterceptRequest != null) {
                return webResourceResponseShouldInterceptRequest;
            }
        } catch (Throwable unused) {
            webResourceResponseShouldInterceptRequest = null;
        }
        if (this.f79489g && (webResourceResponseShouldInterceptRequest = c(string)) != null) {
            return webResourceResponseShouldInterceptRequest;
        }
        if (this.f79489g && !d.a(string) && !a(string)) {
            webResourceResponseShouldInterceptRequest = d.a(string, request.getMethod(), request.getRequestHeaders());
        }
        if (webResourceResponseShouldInterceptRequest == null) {
            webResourceResponseShouldInterceptRequest = super.shouldInterceptRequest(view, request);
        }
        if (this.f79489g && webResourceResponseShouldInterceptRequest != null && (fileA = a(webResourceResponseShouldInterceptRequest, string)) != null && fileA.exists()) {
            try {
                return new WebResourceResponse(webResourceResponseShouldInterceptRequest.getMimeType(), webResourceResponseShouldInterceptRequest.getEncoding(), new FileInputStream(fileA));
            } catch (FileNotFoundException unused2) {
            }
        }
        return webResourceResponseShouldInterceptRequest;
    }

    private static File a(WebResourceResponse webResourceResponse, String url) {
        try {
            Uri uri = Uri.parse(url);
            if (d.a(url)) {
                return null;
            }
            String lastPathSegment = uri.getLastPathSegment();
            if (!t.a((CharSequence) lastPathSegment) && !y.a(lastPathSegment)) {
                File file = new File(com.sigmob.sdk.base.utils.o.c(), lastPathSegment);
                FileUtil.writeToCache(webResourceResponse.getData(), file.getAbsolutePath());
                return file;
            }
        } catch (Throwable unused) {
        }
        return null;
    }

    public void b(boolean isDisable) {
    }

    @Override // android.webkit.WebViewClient
    public WebResourceResponse shouldInterceptRequest(WebView view, String url) {
        WebResourceResponse webResourceResponseShouldInterceptRequest;
        File fileA;
        if (y.a(url)) {
            return null;
        }
        try {
            webResourceResponseShouldInterceptRequest = a(Uri.parse(url));
            if (webResourceResponseShouldInterceptRequest != null) {
                return webResourceResponseShouldInterceptRequest;
            }
        } catch (Throwable unused) {
            webResourceResponseShouldInterceptRequest = null;
        }
        if (this.f79489g && (webResourceResponseShouldInterceptRequest = c(url)) != null) {
            return webResourceResponseShouldInterceptRequest;
        }
        if (this.f79489g && !d.a(url) && !a(url)) {
            webResourceResponseShouldInterceptRequest = d.a(url, "GET", null);
        }
        if (webResourceResponseShouldInterceptRequest == null) {
            webResourceResponseShouldInterceptRequest = super.shouldInterceptRequest(view, url);
        }
        if (this.f79489g && webResourceResponseShouldInterceptRequest != null && (fileA = a(webResourceResponseShouldInterceptRequest, url)) != null && fileA.exists()) {
            try {
                return new WebResourceResponse(webResourceResponseShouldInterceptRequest.getMimeType(), webResourceResponseShouldInterceptRequest.getEncoding(), new FileInputStream(fileA));
            } catch (FileNotFoundException unused2) {
            }
        }
        return webResourceResponseShouldInterceptRequest;
    }

    public static void a(HttpURLConnection conn, CookieManager cookieManager) {
        if (cookieManager == null || conn == null) {
            return;
        }
        Map<String, List<String>> headerFields = conn.getHeaderFields();
        SigmobLog.d("headerFields : " + headerFields.toString());
        List<String> list = headerFields.get("Set-Cookie");
        if (list == null) {
            return;
        }
        for (String str : list) {
            try {
                List<HttpCookie> list2 = HttpCookie.parse(str);
                if (!com.sigmob.sdk.base.utils.e.a(list2)) {
                    SigmobLog.d("{0} -- Reading Cookies from the response :" + conn.getURL().toString());
                    SigmobLog.d("{0} -- Reading Cookies from the response :" + list2.get(0));
                    for (HttpCookie httpCookie : list2) {
                        SigmobLog.d(httpCookie.toString());
                        android.webkit.CookieManager.getInstance().setCookie(conn.getURL().toString(), httpCookie.getName() + SimpleComparison.EQUAL_TO_OPERATION + httpCookie.getValue());
                    }
                }
            } catch (NullPointerException unused) {
                SigmobLog.e(MessageFormat.format("{0} -- Null header for the cookie : {1}", conn.getURL().toString(), str));
            }
        }
        android.webkit.CookieManager.getInstance().flush();
    }

    public void a(boolean useCache) {
        this.f79489g = useCache;
    }

    protected static boolean a(String url) {
        String lastPathSegment = Uri.parse(url.toLowerCase(Locale.US)).getLastPathSegment();
        SigmobLogger.d(f79485c, "matchesInjectionUrl: lastPathSegment = " + lastPathSegment, new Object[0]);
        return f79486d.equals(lastPathSegment) || f79487e.equals(lastPathSegment);
    }
}
