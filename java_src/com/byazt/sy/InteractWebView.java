package com.byazt.sy;

import android.content.Context;
import android.webkit.WebResourceRequest;
import android.webkit.WebResourceResponse;
import android.webkit.WebSettings;
import android.webkit.WebView;
import androidx.annotation.RequiresApi;
import com.byazt.aas.gt;
import com.byazt.aas.nb;
import com.byazt.el.SSWebView;
import com.byazt.ete.ic;
import com.byazt.nr.m;
import com.byazt.omf.d;
import com.byazt.omf.p;
import com.byazt.sz.yp;
import java.util.List;
import java.util.Map;
import org.json.JSONObject;

/* JADX INFO: loaded from: classes6.dex */
@com.byazt.zqa.c(c = {0, 1, 528, 1864})
public class InteractWebView extends SSWebView {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public d f19963a;

    /* JADX INFO: renamed from: i, reason: collision with root package name */
    public yp f19964i;

    /* JADX INFO: renamed from: n, reason: collision with root package name */
    public Context f19965n;
    public Map<String, Object> sp;

    /* JADX INFO: renamed from: x, reason: collision with root package name */
    public ic f19966x;

    public InteractWebView(Context context) {
        super(context);
        this.f19965n = context;
    }

    private void c(SSWebView sSWebView) {
        if (sSWebView == null) {
            return;
        }
        try {
            com.byazt.jwd.tt.c(this.f19965n).c(false).c(sSWebView);
            sSWebView.setVerticalScrollBarEnabled(false);
            sSWebView.setHorizontalScrollBarEnabled(false);
            gt.c(sSWebView, p.uj, ic.n(this.f19966x));
            sSWebView.setMixedContentMode(0);
            sSWebView.setJavaScriptEnabled(true);
            sSWebView.setJavaScriptCanOpenWindowsAutomatically(true);
            sSWebView.setDomStorageEnabled(true);
            sSWebView.setDatabaseEnabled(true);
            sSWebView.setAppCacheEnabled(true);
            sSWebView.setAllowFileAccess(false);
            sSWebView.setSupportZoom(true);
            sSWebView.setBuiltInZoomControls(true);
            sSWebView.setLayoutAlgorithm(WebSettings.LayoutAlgorithm.NARROW_COLUMNS);
            sSWebView.setUseWideViewPort(true);
        } catch (Exception e10) {
            m.uj("InteractWebView", e10.toString());
        }
    }

    public void a() {
        Map<String, Object> map = this.sp;
        if (map == null || map.size() <= 0 || !this.sp.containsKey("key_material")) {
            return;
        }
        Object obj = this.sp.get("key_material");
        if (obj instanceof ic) {
            this.f19966x = (ic) obj;
            this.f19963a = (d) this.sp.get("key_js_object");
            if (this.sp.containsKey("key_data_list") && (this.sp.get("key_data_list") instanceof List)) {
                this.f19963a.tt((List<JSONObject>) this.sp.get("key_data_list"));
            }
            this.f19963a.tt(this).c(this.f19966x).c(nb.tt(this.f19966x)).tt(this.f19966x.uj()).uj(this.f19966x.w_()).n(nb.my(this.f19966x)).c((SSWebView) this);
        }
    }

    public yp getUGenContext() {
        return this.f19964i;
    }

    @Override // com.byazt.qg.BizWebView, com.byazt.nl.uj
    public void loadUrl(String str) {
        super.loadUrl(str);
    }

    @Override // com.byazt.el.SSWebView, android.view.ViewGroup, android.view.View
    public void onAttachedToWindow() {
        super.onAttachedToWindow();
    }

    public void setUGenContext(yp ypVar) {
        this.f19964i = ypVar;
    }

    public void setUGenExtraMap(Map<String, Object> map) {
        this.sp = map;
    }

    public void sp() {
        setBackgroundColor(0);
        setBackgroundResource(17170445);
        c((SSWebView) this);
        if (this.f19966x != null) {
            Context context = this.f19965n;
            d dVar = this.f19963a;
            ic icVar = this.f19966x;
            setWebViewClient(new c(context, dVar, icVar, icVar.uj()));
        } else {
            setWebViewClient(new SSWebView.c());
        }
        com.byazt.ol.n.c().c(this, this.f19963a);
        setWebChromeClient(new com.byazt.jwd.ve(this.f19963a));
    }

    @com.byazt.zqa.c(c = {0, 1, 528, 2079})
    public static class c extends com.byazt.jwd.uj {

        /* JADX INFO: renamed from: c, reason: collision with root package name */
        public ic f19967c;

        public c(Context context, d dVar, ic icVar, String str) {
            super(context, dVar, str);
            this.f19967c = icVar;
        }

        @Override // com.byazt.jwd.uj, android.webkit.WebViewClient
        public WebResourceResponse shouldInterceptRequest(final WebView webView, String str) {
            try {
                com.byazt.six.c cVarC = com.byazt.jlk.c.c(webView, this.f19967c, str, new com.byazt.jlk.c.InterfaceC0349c() { // from class: com.byazt.sy.InteractWebView.c.1
                    @Override // com.byazt.jlk.c.InterfaceC0349c
                    public boolean c() {
                        return false;
                    }

                    @Override // com.byazt.jlk.c.InterfaceC0349c
                    public com.byazt.six.c c(String str2, com.byazt.or.da.c cVar, String str3) {
                        com.byazt.six.c cVar2 = new com.byazt.six.c();
                        cVar2.c(5);
                        cVar2.c(com.byazt.tlc.tt.tt().c(webView, cVar, str2));
                        return cVar2;
                    }
                });
                if (cVarC != null && cVarC.c() != null) {
                    return cVarC.c();
                }
            } catch (Throwable unused) {
            }
            return super.shouldInterceptRequest(webView, str);
        }

        @Override // com.byazt.jwd.uj, android.webkit.WebViewClient
        @RequiresApi(api = 21)
        public WebResourceResponse shouldInterceptRequest(WebView webView, WebResourceRequest webResourceRequest) {
            try {
                return shouldInterceptRequest(webView, webResourceRequest.getUrl().toString());
            } catch (Throwable th) {
                m.ve("InteractWebView", "shouldInterceptRequest error1", th);
                return super.shouldInterceptRequest(webView, webResourceRequest);
            }
        }
    }
}
