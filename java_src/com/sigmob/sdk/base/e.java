package com.sigmob.sdk.base;

import android.text.TextUtils;
import android.webkit.WebResourceResponse;
import com.haima.hmcp.beans.ClipBoardItemData;
import com.j256.ormlite.stmt.query.SimpleComparison;
import com.sigmob.sdk.base.utils.y;
import io.netty.handler.codec.http.HttpHeaders;
import java.io.ByteArrayInputStream;
import java.io.ByteArrayOutputStream;
import java.io.IOException;
import java.io.InputStream;
import java.net.CookieManager;
import java.net.HttpCookie;
import java.net.HttpURLConnection;
import java.net.URL;
import java.nio.charset.Charset;
import java.text.MessageFormat;
import java.util.HashMap;
import java.util.Iterator;
import java.util.List;
import java.util.Map;

/* JADX INFO: loaded from: classes5.dex */
public class e {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public static final String f79426a = "Cookie";

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private static final String f79427b = "e";

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    private static final CookieManager f79428c = new CookieManager();

    public WebResourceResponse a(String str, String method, Map<String, String> map) {
        List<String> list;
        String str2 = "UTF-8";
        if (y.a(str)) {
            return null;
        }
        try {
            HttpURLConnection httpURLConnection = (HttpURLConnection) new URL(str).openConnection();
            httpURLConnection.setRequestMethod(method);
            if (map != null && map.size() > 0) {
                for (Map.Entry<String, String> entry : map.entrySet()) {
                    httpURLConnection.setRequestProperty(entry.getKey(), entry.getValue());
                }
            }
            String cookie = android.webkit.CookieManager.getInstance().getCookie(str);
            if (!TextUtils.isEmpty(cookie)) {
                for (String str3 : cookie.split(";")) {
                    httpURLConnection.addRequestProperty("Cookie".toLowerCase(), str3.replace(" ", ""));
                }
            }
            httpURLConnection.connect();
            int responseCode = httpURLConnection.getResponseCode();
            String contentType = httpURLConnection.getContentType();
            String contentEncoding = httpURLConnection.getContentEncoding();
            InputStream inputStream = httpURLConnection.getInputStream();
            a(httpURLConnection, f79428c);
            Map<String, List<String>> headerFields = httpURLConnection.getHeaderFields();
            if ((responseCode == 301 || responseCode == 302) && (list = headerFields.get("Location")) != null && list.size() > 0) {
                return a(list.get(0), "GET", null);
            }
            if (contentType != null) {
                contentType = contentType.split(";")[0];
                if (contentType.contains("text") || contentType.contains("javascript")) {
                    if (contentType.contains("text/plain")) {
                        contentType = ClipBoardItemData.TYPE_TEXT_HTML;
                    }
                    inputStream = a(inputStream, "UTF-8");
                }
                WebResourceResponse webResourceResponse = new WebResourceResponse(contentType, str2, inputStream);
                webResourceResponse.setResponseHeaders(a(headerFields));
                return webResourceResponse;
            }
            inputStream = null;
            str2 = contentEncoding;
            WebResourceResponse webResourceResponse2 = new WebResourceResponse(contentType, str2, inputStream);
            webResourceResponse2.setResponseHeaders(a(headerFields));
            return webResourceResponse2;
        } catch (Exception e10) {
            e10.printStackTrace();
            return null;
        }
    }

    private static InputStream a(InputStream inputStream, String str) throws IOException {
        byte[] bArr = new byte[1024];
        ByteArrayOutputStream byteArrayOutputStream = new ByteArrayOutputStream();
        while (true) {
            int i10 = inputStream.read(bArr);
            if (i10 == -1) {
                break;
            }
            byteArrayOutputStream.write(bArr, 0, i10);
        }
        String str2 = new String(byteArrayOutputStream.toByteArray());
        if (str == null) {
            str = Charset.defaultCharset().displayName();
        }
        return new ByteArrayInputStream(str2.getBytes(str));
    }

    public static Map<String, String> a(Map<String, List<String>> maps) {
        StringBuilder sb2 = new StringBuilder();
        HashMap map = new HashMap();
        for (Map.Entry<String, List<String>> entry : maps.entrySet()) {
            List<String> value = entry.getValue();
            sb2.delete(0, sb2.length());
            if (value != null && value.size() > 0) {
                Iterator<String> it2 = value.iterator();
                while (it2.hasNext()) {
                    sb2.append(it2.next());
                    sb2.append(";");
                }
            }
            if (sb2.length() > 0) {
                sb2.deleteCharAt(sb2.length() - 1);
            }
            map.put(entry.getKey(), sb2.toString());
        }
        return map;
    }

    public static void a(HttpURLConnection conn, CookieManager cookieManager) {
        if (cookieManager == null || conn == null) {
            return;
        }
        Map<String, List<String>> headerFields = conn.getHeaderFields();
        StringBuilder sb2 = new StringBuilder();
        sb2.append("headerFields : ");
        sb2.append(headerFields.toString());
        List<String> list = headerFields.get(HttpHeaders.Names.SET_COOKIE);
        if (list == null) {
            return;
        }
        for (String str : list) {
            try {
                List<HttpCookie> list2 = HttpCookie.parse(str);
                if (list2 != null && !list2.isEmpty()) {
                    StringBuilder sb3 = new StringBuilder();
                    sb3.append("{0} -- Reading Cookies from the response :");
                    sb3.append(conn.getURL().toString());
                    StringBuilder sb4 = new StringBuilder();
                    sb4.append("{0} -- Reading Cookies from the response :");
                    sb4.append(list2.get(0));
                    for (HttpCookie httpCookie : list2) {
                        httpCookie.toString();
                        android.webkit.CookieManager.getInstance().setCookie(conn.getURL().toString(), httpCookie.getName() + SimpleComparison.EQUAL_TO_OPERATION + httpCookie.getValue());
                    }
                }
            } catch (NullPointerException unused) {
                MessageFormat.format("{0} -- Null header for the cookie : {1}", conn.getURL().toString(), str);
            }
        }
        android.webkit.CookieManager.getInstance().flush();
    }
}
