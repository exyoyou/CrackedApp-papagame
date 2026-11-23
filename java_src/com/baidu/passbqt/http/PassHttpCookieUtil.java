package com.baidu.passbqt.http;

import android.annotation.TargetApi;
import android.content.Context;
import android.text.TextUtils;
import android.webkit.CookieManager;
import android.webkit.CookieSyncManager;
import com.j256.ormlite.stmt.query.SimpleComparison;
import com.join.mgps.Util.o0;
import java.net.HttpCookie;
import java.net.HttpURLConnection;
import java.net.URI;
import java.net.URL;
import java.text.SimpleDateFormat;
import java.util.Calendar;
import java.util.List;
import java.util.Locale;
import java.util.Map;
import java.util.SimpleTimeZone;
import net.lingala.zip4j.util.e;

/* JADX INFO: loaded from: classes6.dex */
class PassHttpCookieUtil {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private static final String f8355a = "PassHttpCookieUtil";

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private static final String f8356b = "Set-Cookie";

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    private static final String f8357c = "EEE, dd-MMM-yyyy HH:mm:ss 'GMT'";

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    private static final String f8358d = "Cookie";

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    private static final String f8359e = "https://";

    PassHttpCookieUtil() {
    }

    @TargetApi(9)
    static void a(Context context, HttpURLConnection httpURLConnection, PassHttpParamDTO passHttpParamDTO) {
        HttpCookie httpCookie;
        try {
            CookieSyncManager.createInstance(context);
            String cookie = CookieManager.getInstance().getCookie(f8359e + new URI(passHttpParamDTO.f8360a).getHost());
            String str = f8355a;
            PassHttpUtils.a(str, "asyncCookie" + passHttpParamDTO.f8365f);
            PassHttpUtils.a(str, "webviewCookies" + cookie);
            if (!passHttpParamDTO.f8365f) {
                cookie = null;
            }
            List<HttpCookie> list = passHttpParamDTO.f8361b;
            if (TextUtils.isEmpty(cookie) && (list == null || list.isEmpty())) {
                return;
            }
            String str2 = "";
            String[] strArrSplit = TextUtils.isEmpty(cookie) ? null : cookie.split(";");
            if (strArrSplit != null && strArrSplit.length > 0) {
                for (String str3 : strArrSplit) {
                    if (!TextUtils.isEmpty(str3)) {
                        List<HttpCookie> list2 = HttpCookie.parse(str3);
                        if (!list2.isEmpty() && (httpCookie = list2.get(0)) != null && !httpCookie.hasExpired()) {
                            if (list != null) {
                                for (HttpCookie httpCookie2 : list) {
                                    if (httpCookie.getName().equals(httpCookie2.getName()) && a(passHttpParamDTO.f8360a, httpCookie)) {
                                        httpCookie = httpCookie2;
                                    }
                                }
                            }
                            if (!httpCookie.hasExpired()) {
                                str2 = str2 + httpCookie.getName() + SimpleComparison.EQUAL_TO_OPERATION + httpCookie.getValue() + ";";
                            }
                            PassHttpUtils.a(f8355a, "httpCookie webview item name:" + httpCookie.getName() + ",value:" + httpCookie.getValue());
                        }
                    }
                }
            }
            if (list != null) {
                for (HttpCookie httpCookie3 : list) {
                    if (a(passHttpParamDTO.f8360a, httpCookie3)) {
                        str2 = str2 + httpCookie3.getName() + SimpleComparison.EQUAL_TO_OPERATION + httpCookie3.getValue() + ";";
                    }
                }
            }
            if (TextUtils.isEmpty(str2)) {
                return;
            }
            String strSubstring = str2.substring(0, str2.length() - 1);
            PassHttpUtils.a(f8355a, "cookieStr" + strSubstring);
            httpURLConnection.setRequestProperty("Cookie", strSubstring);
        } catch (Exception e10) {
            PassHttpUtils.a(f8355a, "asyncWebviewCookie2NA:" + e10.toString());
        }
    }

    @TargetApi(9)
    static void b(Context context, HttpURLConnection httpURLConnection, PassHttpParamDTO passHttpParamDTO) {
        Map<String, List<String>> headerFields;
        List<String> list;
        try {
            PassHttpUtils.a(f8355a, "asyncCookie" + passHttpParamDTO.f8365f);
            if (passHttpParamDTO.f8365f && (headerFields = httpURLConnection.getHeaderFields()) != null && !headerFields.isEmpty() && (list = headerFields.get("Set-Cookie")) != null && !list.isEmpty()) {
                CookieSyncManager.createInstance(context);
                CookieManager cookieManager = CookieManager.getInstance();
                cookieManager.setAcceptCookie(true);
                if (cookieManager.acceptCookie()) {
                    for (String str : list) {
                        if (!TextUtils.isEmpty(str)) {
                            List<HttpCookie> list2 = HttpCookie.parse(str);
                            if (!list2.isEmpty()) {
                                HttpCookie httpCookie = list2.get(0);
                                if (a(passHttpParamDTO.f8360a, httpCookie)) {
                                    StringBuilder sb2 = new StringBuilder();
                                    sb2.append("httpcookie:");
                                    sb2.append(httpCookie.toString());
                                    String strA = a(httpCookie.getDomain(), httpCookie.getName(), httpCookie.getValue(), (httpCookie.getMaxAge() * 1000) + System.currentTimeMillis(), httpCookie.getSecure());
                                    StringBuilder sb3 = new StringBuilder();
                                    sb3.append("httpcookie build:");
                                    sb3.append(strA);
                                    cookieManager.setCookie(f8359e + httpCookie.getDomain(), strA);
                                }
                            }
                        }
                    }
                    cookieManager.flush();
                }
            }
        } catch (Exception e10) {
            PassHttpUtils.a(f8355a, "asyncNaCookie2Webview:" + e10.toString());
        }
    }

    private static boolean b(String str, String str2) {
        if (str.equals(str2)) {
            return true;
        }
        if (str.startsWith(str2)) {
            return str2.endsWith(e.F0) || str.charAt(str2.length()) == '/';
        }
        return false;
    }

    static String a(String str, String str2, String str3, long j10, boolean z10) {
        Calendar calendar = Calendar.getInstance();
        calendar.setTimeInMillis(j10);
        SimpleDateFormat simpleDateFormat = new SimpleDateFormat(f8357c, Locale.US);
        simpleDateFormat.setTimeZone(new SimpleTimeZone(0, "GMT"));
        StringBuilder sb2 = new StringBuilder();
        sb2.append(str2);
        sb2.append(SimpleComparison.EQUAL_TO_OPERATION);
        sb2.append(str3);
        sb2.append(";domain=");
        sb2.append(str);
        sb2.append(";path=/;expires=");
        sb2.append(simpleDateFormat.format(calendar.getTime()));
        sb2.append(";httponly");
        sb2.append(z10 ? ";secure" : "");
        return sb2.toString();
    }

    @TargetApi(9)
    private static boolean a(String str, HttpCookie httpCookie) {
        try {
            URL url = new URL(str);
            return !httpCookie.getDiscard() && !httpCookie.hasExpired() && a(url.getHost(), httpCookie.getDomain()) && b(url.getPath(), httpCookie.getPath()) && a(str, httpCookie.getSecure());
        } catch (Exception unused) {
        }
    }

    private static boolean a(String str, boolean z10) {
        if (TextUtils.isEmpty(str)) {
            return false;
        }
        return !z10 || str.startsWith(f8359e);
    }

    private static boolean a(String str, String str2) {
        if (str.equals(str2)) {
            return true;
        }
        return (str.endsWith(str2) && str.charAt((str.length() - str2.length()) - 1) == '.' && !PassHttpUtils.b(str)) || str.endsWith(str2) || str2.startsWith(o0.f49827a) || !PassHttpUtils.b(str);
    }
}
