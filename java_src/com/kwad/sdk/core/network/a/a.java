package com.kwad.sdk.core.network.a;

import android.util.Log;
import com.kwad.sdk.export.proxy.AdHttpProxy;
import com.kwad.sdk.export.proxy.AdHttpResponseListener;
import com.kwad.sdk.service.ServiceProvider;
import com.kwad.sdk.service.a.h;
import java.io.OutputStream;

/* JADX INFO: loaded from: classes2.dex */
public final class a {
    private static AdHttpProxy aUa;

    /* JADX INFO: renamed from: com.kwad.sdk.core.network.a.a$a, reason: collision with other inner class name */
    public static class C0937a {
        public String msg;
    }

    private static boolean Ml() {
        h hVar = (h) ServiceProvider.get(h.class);
        if (hVar != null) {
            return hVar.FV();
        }
        return false;
    }

    public static boolean a(String str, OutputStream outputStream, C0937a c0937a, long j10, boolean z10, AdHttpResponseListener adHttpResponseListener) {
        boolean zMl = Ml();
        AdHttpProxy adHttpProxyEG = aUa;
        if (adHttpProxyEG == null) {
            com.kwad.sdk.core.d.c.d("VideoCacheHelper", "isAdCacheEnable:" + zMl);
            adHttpProxyEG = zMl ? com.kwad.sdk.h.EG() : new com.kwad.sdk.core.network.c.a();
            aUa = adHttpProxyEG;
        }
        AdHttpProxy adHttpProxy = adHttpProxyEG;
        if (com.kwad.framework.b.a.pe.booleanValue()) {
            if (adHttpProxy instanceof com.kwad.sdk.core.network.c.b) {
                com.kwad.sdk.core.d.c.d("VideoCacheHelper", "okHttp");
            } else {
                com.kwad.sdk.core.d.c.d("VideoCacheHelper", "Http");
            }
        }
        try {
            com.kwad.sdk.core.d.c.d("VideoCacheHelper", "downloadUrlToStream success size:" + j10 + " url:" + str);
            adHttpProxy.downloadUrlToStream(str, outputStream, j10, z10, adHttpResponseListener);
            return true;
        } catch (Exception e10) {
            com.kwad.sdk.core.d.c.d("VideoCacheHelper", Log.getStackTraceString(e10));
            c0937a.msg = e10.getMessage();
            return false;
        }
    }
}
