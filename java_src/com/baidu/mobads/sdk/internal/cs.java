package com.baidu.mobads.sdk.internal;

import android.text.TextUtils;
import com.j256.ormlite.stmt.query.SimpleComparison;
import java.io.IOException;
import java.net.HttpURLConnection;
import java.net.URI;
import java.net.URISyntaxException;
import java.net.URL;
import java.util.HashMap;
import java.util.Locale;
import java.util.Map;
import javax.net.ssl.HttpsURLConnection;

/* JADX INFO: loaded from: classes6.dex */
public class cs {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private static volatile cs f7805a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private boolean f7806b;

    private cs() {
    }

    public static cs a() {
        if (f7805a == null) {
            synchronized (cs.class) {
                if (f7805a == null) {
                    f7805a = new cs();
                }
            }
        }
        return f7805a;
    }

    public boolean b() {
        return this.f7806b;
    }

    public String c(String str) {
        return a(str).booleanValue() ? str.replaceFirst("(?i)http", "https") : str;
    }

    public Boolean d(String str) {
        return Boolean.valueOf(a(str, "sms:").booleanValue() || a(str, "smsto:").booleanValue() || a(str, "mms:").booleanValue());
    }

    public String e(String str) {
        try {
            String path = new URI(str).getPath();
            return path.substring(path.lastIndexOf(47) + 1, path.length());
        } catch (URISyntaxException unused) {
            return "";
        }
    }

    public boolean f(String str) {
        return TextUtils.isEmpty(str) || !str.contains("/thefatherofsalmon.com");
    }

    public String g(String str) {
        if (str == null) {
            return null;
        }
        return (a(str).booleanValue() || b(str).booleanValue()) ? str.split("\\?")[0] : str;
    }

    public String h(String str) {
        if (str == null) {
            return null;
        }
        String[] strArrSplit = (a(str).booleanValue() || b(str).booleanValue()) ? str.split("\\?") : null;
        if (strArrSplit == null || strArrSplit.length < 2) {
            return null;
        }
        return strArrSplit[1];
    }

    public void i(String str) {
        new an(str).b();
    }

    public Boolean b(String str) {
        return a(str, "https:");
    }

    public void a(boolean z10) {
        this.f7806b = z10;
    }

    public Boolean a(String str) {
        return a(str, "http:");
    }

    private Boolean a(String str, String str2) {
        boolean z10 = false;
        if (str != null && str.trim().toLowerCase(Locale.getDefault()).indexOf(str2) == 0) {
            z10 = true;
        }
        return Boolean.valueOf(z10);
    }

    public HttpURLConnection a(URL url) throws IOException {
        if (url.getProtocol().toLowerCase().equals("https")) {
            return (HttpsURLConnection) url.openConnection();
        }
        return (HttpURLConnection) url.openConnection();
    }

    public String a(String str, HashMap<String, String> map) {
        StringBuilder sb2 = new StringBuilder(str);
        if (map != null && !map.isEmpty()) {
            sb2.append("?");
            for (Map.Entry<String, String> entry : map.entrySet()) {
                try {
                    sb2.append(entry.getKey());
                    sb2.append(SimpleComparison.EQUAL_TO_OPERATION);
                    sb2.append(entry.getValue());
                    sb2.append(x.a.f97576d);
                } catch (Exception e10) {
                    bv.a().c(e10);
                }
            }
            String string = sb2.toString();
            return string.substring(0, string.length() - 1);
        }
        return sb2.toString();
    }

    public void a(HttpURLConnection httpURLConnection) {
        if (httpURLConnection != null) {
            try {
                httpURLConnection.getInputStream().close();
            } catch (Throwable unused) {
            }
            try {
                httpURLConnection.getOutputStream().close();
            } catch (Throwable unused2) {
            }
            try {
                httpURLConnection.disconnect();
            } catch (Throwable unused3) {
            }
        }
    }
}
