package com.sdk.l;

import android.annotation.SuppressLint;
import android.content.Context;
import android.webkit.WebSettings;
import com.sdk.base.framework.utils.log.LogUtils;
import com.sdk.f.d;
import com.sigmob.sdk.downloader.core.c;
import java.net.HttpURLConnection;
import java.net.URL;

/* JADX INFO: loaded from: classes2.dex */
public class a {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public static final String f78547a = "com.sdk.l.a";

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public static final Boolean f78548b = Boolean.valueOf(d.f78521a);

    public static String a(HttpURLConnection httpURLConnection) {
        try {
            String headerField = httpURLConnection.getHeaderField(c.f80446j);
            if (com.sdk.r.a.b(headerField).booleanValue()) {
                String str = new String(headerField.getBytes("ISO-8859-1"), "GBK");
                if (com.sdk.r.a.b(str).booleanValue()) {
                    return str.substring(str.indexOf(34) + 1, str.lastIndexOf(x.a.f97579g));
                }
            }
        } catch (Throwable th) {
            LogUtils.e(f78547a, th.getMessage(), f78548b);
        }
        return null;
    }

    public static boolean b(HttpURLConnection httpURLConnection) {
        String headerField = httpURLConnection.getHeaderField("Accept-Ranges");
        if (com.sdk.r.a.b(headerField).booleanValue()) {
            return "bytes".equals(headerField);
        }
        if (com.sdk.r.a.b(httpURLConnection.getHeaderField("Content-Range")).booleanValue()) {
            return headerField.startsWith("bytes");
        }
        return false;
    }

    public static boolean a(String str) {
        try {
            for (String str2 : new URL(str).getHost().split("\\.")) {
                for (int i10 = 0; i10 < str2.length(); i10++) {
                    if (!Character.isDigit(str2.charAt(i10))) {
                        return false;
                    }
                }
            }
            return true;
        } catch (Exception unused) {
            return false;
        }
    }

    @SuppressLint({"DefaultLocale", "NewApi"})
    public static String a(Context context) {
        String property;
        String string = "";
        if (!com.sdk.r.a.a("").booleanValue()) {
            return "";
        }
        try {
            if (context != null) {
                try {
                    property = WebSettings.getDefaultUserAgent(context);
                } catch (Exception unused) {
                    property = System.getProperty("http.agent");
                }
                StringBuilder sb2 = new StringBuilder();
                int length = property.length();
                for (int i10 = 0; i10 < length; i10++) {
                    char cCharAt = property.charAt(i10);
                    if (cCharAt <= 31 || cCharAt >= 127) {
                        sb2.append(String.format("\\u%04x", Integer.valueOf(cCharAt)));
                    } else {
                        sb2.append(cCharAt);
                    }
                }
                string = sb2.toString();
            }
        } catch (Throwable unused2) {
        }
        return com.sdk.r.a.a(string).booleanValue() ? "Mozilla/5.0 (Linux; U; Android %s) AppleWebKit/533.1 (KHTML, like Gecko) Version/4.0 %sSafari/533.1" : string;
    }
}
