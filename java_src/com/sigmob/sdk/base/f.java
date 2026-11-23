package com.sigmob.sdk.base;

import android.net.Uri;
import android.text.TextUtils;
import android.webkit.CookieManager;
import android.webkit.URLUtil;
import android.webkit.WebResourceResponse;
import com.sigmob.sdk.base.utils.y;
import java.util.Map;
import java.util.concurrent.TimeUnit;
import okhttp3.ConnectionPool;
import okhttp3.OkHttpClient;
import okhttp3.Request;
import okhttp3.Response;

/* JADX INFO: loaded from: classes5.dex */
public final class f extends e {

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private OkHttpClient.Builder f79429b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    private OkHttpClient f79430c;

    public f() {
        try {
            OkHttpClient.Builder builder = new OkHttpClient.Builder();
            this.f79429b = builder;
            builder.connectionPool(new ConnectionPool());
            OkHttpClient.Builder builder2 = this.f79429b;
            TimeUnit timeUnit = TimeUnit.MILLISECONDS;
            builder2.connectTimeout(5000L, timeUnit);
            this.f79429b.readTimeout(5000L, timeUnit);
            this.f79429b.writeTimeout(5000L, timeUnit);
            this.f79430c = this.f79429b.build();
        } catch (Throwable unused) {
        }
    }

    @Override // com.sigmob.sdk.base.e
    public WebResourceResponse a(String url, String method, Map<String, String> map) {
        if (y.a(url)) {
            return null;
        }
        if ((!URLUtil.isHttpUrl(url) && !URLUtil.isHttpsUrl(url)) || method.equals("POST")) {
            return null;
        }
        try {
            String host = Uri.parse(url).getHost();
            if (host != null && !host.equals("127.0.0.1") && !host.equals("localhost")) {
                Request.Builder builderUrl = new Request.Builder().url(url);
                if (map != null && map.size() > 0) {
                    for (Map.Entry<String, String> entry : map.entrySet()) {
                        builderUrl.addHeader(entry.getKey(), entry.getValue());
                    }
                }
                String cookie = CookieManager.getInstance().getCookie(url);
                if (!TextUtils.isEmpty(cookie)) {
                    for (String str : cookie.split(";")) {
                        builderUrl.addHeader("Cookie".toLowerCase(), str.replace(" ", ""));
                    }
                }
                Response responseExecute = this.f79430c.newCall(builderUrl.build()).execute();
                return new WebResourceResponse(responseExecute.body().get$contentType().type() + net.lingala.zip4j.util.e.F0 + responseExecute.body().get$contentType().subtype(), responseExecute.header("content-encoding", "utf-8"), responseExecute.body().byteStream());
            }
            return null;
        } catch (Exception e10) {
            e10.printStackTrace();
            return super.a(url, method, map);
        }
    }
}
