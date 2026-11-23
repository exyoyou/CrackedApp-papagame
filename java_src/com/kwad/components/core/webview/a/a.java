package com.kwad.components.core.webview.a;

import android.text.TextUtils;
import android.webkit.JavascriptInterface;
import android.webkit.WebView;
import androidx.annotation.WorkerThread;
import com.ksad.json.annotation.KsJson;
import com.kwad.components.core.e.d.d;
import com.kwad.sdk.api.KsAppDownloadListener;
import com.kwad.sdk.core.response.model.AdTemplate;
import com.kwad.sdk.utils.bi;
import com.kwad.sdk.utils.by;
import com.kwad.sdk.utils.ce;
import org.json.JSONException;
import org.json.JSONObject;

/* JADX INFO: loaded from: classes2.dex */
public final class a {
    private d QS;
    private WebView ade;
    private boolean aow;
    private KsAppDownloadListener aph;
    private int api = -100;
    private int apj = 0;
    private com.kwad.sdk.core.webview.b fi;
    private AdTemplate mAdTemplate;

    /* JADX INFO: renamed from: com.kwad.components.core.webview.a.a$a, reason: collision with other inner class name */
    @KsJson
    public static final class C0883a extends com.kwad.sdk.core.response.a.a {
        public String packageName;
        public String url;
    }

    @KsJson
    public static final class b extends com.kwad.sdk.core.response.a.a {
        public int progress;
        public int status;
    }

    public a(WebView webView, com.kwad.sdk.core.webview.b bVar) {
        this.ade = webView;
        this.mAdTemplate = bVar.getAdTemplate();
        this.fi = bVar;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void bA(String str) {
        try {
            C0883a c0883a = new C0883a();
            c0883a.parseJson(new JSONObject(str));
            if (s(c0883a.url, c0883a.packageName)) {
                return;
            }
            if (this.QS == null) {
                r(c0883a.url, c0883a.packageName);
            }
            com.kwad.components.core.e.d.a.C0852a c0852aAv = new com.kwad.components.core.e.d.a.C0852a(this.fi.ade.getContext()).as(true).at(false).aJ(this.mAdTemplate).av(false);
            if (this.QS.w(c0852aAv)) {
                return;
            }
            this.QS.d(this.aph);
            this.QS.v(c0852aAv);
        } catch (JSONException e10) {
            com.kwad.sdk.core.d.c.printStackTrace(e10);
        }
    }

    private void q(String str, String str2) {
        WebView webView;
        if (this.aow || TextUtils.isEmpty(str) || (webView = this.ade) == null) {
            return;
        }
        ce.a(webView, str, str2);
    }

    private synchronized void r(String str, String str2) {
        this.QS = new d(this.mAdTemplate, null, str, str2);
        if (this.aph == null) {
            KsAppDownloadListener ksAppDownloadListenerYr = yr();
            this.aph = ksAppDownloadListenerYr;
            this.QS.b(ksAppDownloadListenerYr);
        }
    }

    private static boolean s(String str, String str2) {
        return TextUtils.isEmpty(str) || TextUtils.isEmpty(str2);
    }

    private KsAppDownloadListener yr() {
        return new com.kwad.sdk.core.download.a.a() { // from class: com.kwad.components.core.webview.a.a.2
            @Override // com.kwad.sdk.api.KsAppDownloadListener
            public final void onDownloadFailed() {
                a.this.s(0, 0);
            }

            @Override // com.kwad.sdk.api.KsAppDownloadListener
            public final void onDownloadFinished() {
                a.this.s(8, 100);
            }

            @Override // com.kwad.sdk.api.KsAppDownloadListener
            public final void onIdle() {
                a.this.s(0, 0);
            }

            @Override // com.kwad.sdk.api.KsAppDownloadListener
            public final void onInstalled() {
                a.this.s(12, 100);
            }

            @Override // com.kwad.sdk.core.download.a.a
            public final void onPaused(int i10) {
                a.this.s(4, i10);
            }

            @Override // com.kwad.sdk.api.KsAppDownloadListener
            public final void onProgressUpdate(int i10) {
                if (i10 == 0) {
                    a.this.s(1, 0);
                } else {
                    a.this.s(2, i10);
                }
            }
        };
    }

    public final void destroy() {
        this.aow = true;
        d dVar = this.QS;
        if (dVar != null) {
            dVar.c(this.aph);
        }
    }

    @JavascriptInterface
    public final int getDownLoadStatus(String str, String str2) {
        if (s(str, str2)) {
            return 0;
        }
        if (this.QS == null) {
            r(str, str2);
        }
        return this.QS.qn();
    }

    @JavascriptInterface
    public final int getProgress(String str, String str2) {
        if (s(str, str2)) {
            return 0;
        }
        if (this.QS == null) {
            r(str, str2);
        }
        return this.apj;
    }

    @JavascriptInterface
    @WorkerThread
    public final void handleAdClick(final String str) {
        by.runOnUiThread(new bi() { // from class: com.kwad.components.core.webview.a.a.1
            @Override // com.kwad.sdk.utils.bi
            public final void doTask() {
                a.this.bA(str);
            }
        });
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void s(int i10, int i11) {
        this.apj = i11;
        if (this.api != i10) {
            this.api = i10;
            StringBuilder sb2 = new StringBuilder();
            sb2.append(i10);
            q("onDownLoadStatusCallback", sb2.toString());
        }
    }
}
