package com.byazt.jlk;

import android.text.TextUtils;
import android.webkit.WebResourceResponse;
import android.webkit.WebView;
import com.byazt.ete.ic;
import com.byazt.ete.zb;
import com.byazt.nr.m;
import com.byazt.or.da;
import io.netty.handler.codec.http.HttpHeaders;
import io.netty.handler.codec.http.websocketx.WebSocketServerHandshaker;
import java.io.InputStream;
import java.util.HashMap;
import java.util.Iterator;
import java.util.Map;

/* JADX INFO: loaded from: classes6.dex */
@com.byazt.zqa.c(c = {0, 1, 249, 20})
public final class c {

    /* JADX INFO: renamed from: com.byazt.jlk.c$c, reason: collision with other inner class name */
    public interface InterfaceC0349c {
        com.byazt.six.c c(String str, da.c cVar, String str2);

        boolean c();
    }

    public static com.byazt.six.c c(WebView webView, ic icVar, String str, InterfaceC0349c interfaceC0349c) {
        zb next;
        if (TextUtils.isEmpty(str)) {
            return null;
        }
        da.c cVarC = da.c(str);
        boolean z10 = interfaceC0349c != null && interfaceC0349c.c();
        if (cVarC != da.c.IMAGE && z10 && icVar != null) {
            Iterator<zb> it2 = icVar.pa().iterator();
            while (true) {
                if (!it2.hasNext()) {
                    next = null;
                    break;
                }
                next = it2.next();
                if (!TextUtils.isEmpty(next.c()) && !TextUtils.isEmpty(str)) {
                    String strC = next.c();
                    if (strC.startsWith("https")) {
                        strC = strC.replaceFirst("https", "http");
                    }
                    if ((str.startsWith("https") ? str.replaceFirst("https", "http") : str).equals(strC)) {
                        break;
                    }
                }
            }
        } else {
            next = null;
            break;
        }
        if (cVarC == da.c.IMAGE) {
            com.byazt.six.c cVar = new com.byazt.six.c();
            cVar.c(5);
            cVar.c(c(str, tt.tt(icVar, str)));
            return cVar;
        }
        if (next == null) {
            if (interfaceC0349c == null) {
                return null;
            }
            return interfaceC0349c.c(str, cVarC, "");
        }
        com.byazt.six.c cVar2 = new com.byazt.six.c();
        cVar2.c(c(str, next.sp()));
        cVar2.c(5);
        return cVar2;
    }

    private static WebResourceResponse c(String str, String str2) {
        WebResourceResponse webResourceResponse = null;
        if (TextUtils.isEmpty(str)) {
            return null;
        }
        try {
            InputStream inputStreamC = com.byazt.xky.tt.c(str, str2);
            if (inputStreamC == null) {
                return null;
            }
            WebResourceResponse webResourceResponse2 = new WebResourceResponse(da.c.IMAGE.getType(), "utf-8", inputStreamC);
            try {
                Map<String, String> responseHeaders = webResourceResponse2.getResponseHeaders();
                if (responseHeaders == null) {
                    responseHeaders = new HashMap<>();
                }
                responseHeaders.put(HttpHeaders.Names.ACCESS_CONTROL_ALLOW_ORIGIN, WebSocketServerHandshaker.SUB_PROTOCOL_WILDCARD);
                webResourceResponse2.setResponseHeaders(responseHeaders);
                return webResourceResponse2;
            } catch (Throwable th) {
                th = th;
                webResourceResponse = webResourceResponse2;
            }
        } catch (Throwable th2) {
            th = th2;
        }
        m.ve("CacheInterceptUtil", "get image WebResourceResponse error", th);
        return webResourceResponse;
    }
}
