package com.sigmob.sdk.base;

import android.net.Uri;
import android.text.TextUtils;
import android.webkit.URLUtil;
import android.webkit.WebResourceResponse;
import com.czhj.sdk.logger.SigmobLogger;
import com.sigmob.sdk.base.utils.y;
import java.util.Map;

/* JADX INFO: loaded from: classes5.dex */
public final class d {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    static e f79313a = null;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private static final String f79314b = "d";

    static {
        try {
            if (o.a().ab()) {
                f79313a = new f();
            }
        } catch (Throwable unused) {
        }
        if (f79313a == null) {
            f79313a = new e();
        }
    }

    public static WebResourceResponse a(Uri url) {
        return null;
    }

    static WebResourceResponse a(String url, String method, Map<String, String> map) {
        e eVar;
        if (y.a(url)) {
            return null;
        }
        if ((URLUtil.isHttpUrl(url) || URLUtil.isHttpsUrl(url)) && !method.equals("POST") && (eVar = f79313a) != null) {
            try {
                return eVar.a(url, method, map);
            } catch (Throwable unused) {
            }
        }
        return null;
    }

    public static boolean a(String url) {
        try {
            Uri uri = Uri.parse(url);
            String host = uri.getHost();
            String scheme = uri.getScheme();
            String lastPathSegment = uri.getLastPathSegment();
            if (host == null || l.a(url) || !scheme.startsWith("http") || host.equals("localhost") || host.equals("127.0.0.1") || !TextUtils.isEmpty(uri.getQueryParameter("no-cache"))) {
                return true;
            }
            if (!lastPathSegment.endsWith(".js") && !lastPathSegment.endsWith(".css")) {
                return true;
            }
        } catch (Throwable th) {
            SigmobLogger.e(f79314b, "filterUrl: error = " + th.getMessage(), new Object[0]);
        }
        return false;
    }
}
