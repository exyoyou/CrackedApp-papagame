package cn.sharesdk.framework.utils;

import android.text.TextUtils;
import android.webkit.WebSettings;
import android.webkit.WebView;

/* JADX INFO: loaded from: classes7.dex */
public class n {
    public static void a(WebView webView, boolean z10) {
        if (webView == null) {
            return;
        }
        try {
            webView.getSettings().setAllowFileAccess(z10);
            webView.getSettings().setSavePassword(z10);
            webView.getSettings().setAllowFileAccessFromFileURLs(z10);
            webView.getSettings().setAllowUniversalAccessFromFileURLs(z10);
        } catch (Throwable unused) {
        }
    }

    public static void a(WebSettings webSettings, boolean z10) {
        if (webSettings == null) {
            return;
        }
        try {
            String strA = i.a("opxLWrBMJweIF1SCwqo+hR2cd4CvxbDxONkTFgKvZMc=");
            if (!TextUtils.isEmpty(strA)) {
                webSettings.getClass().getMethod(strA, Boolean.TYPE).invoke(webSettings, Boolean.valueOf(z10));
            }
            SSDKLog.b().b("wvs");
        } catch (Throwable th) {
            SSDKLog.b().c(th);
        }
    }
}
