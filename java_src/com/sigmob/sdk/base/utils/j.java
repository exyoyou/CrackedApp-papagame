package com.sigmob.sdk.base.utils;

import android.util.Base64;
import android.webkit.WebSettings;
import com.czhj.sdk.common.utils.ReflectionUtil;
import com.czhj.sdk.logger.SigmobLogger;

/* JADX INFO: loaded from: classes5.dex */
public class j {
    public static void a(String tag, WebSettings webSettings) {
        a(tag, webSettings, com.sigmob.sdk.base.n.E);
        a(tag, webSettings, com.sigmob.sdk.base.n.G);
    }

    public static void a(String tag, WebSettings webSettings, String encryptedStr) {
        try {
            ReflectionUtil.MethodBuilder methodBuilder = new ReflectionUtil.MethodBuilder(webSettings, new String(Base64.decode(encryptedStr, 2)));
            methodBuilder.addParam(Boolean.TYPE, Boolean.TRUE);
            methodBuilder.execute();
        } catch (Exception e10) {
            SigmobLogger.e(tag, "executeJsMethod: error = " + e10.getMessage(), new Object[0]);
        }
    }
}
