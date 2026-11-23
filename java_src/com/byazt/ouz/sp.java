package com.byazt.ouz;

import android.annotation.TargetApi;
import android.content.Context;
import android.graphics.Bitmap;
import android.text.TextUtils;
import android.webkit.WebResourceRequest;
import android.webkit.WebResourceResponse;
import android.webkit.WebView;
import com.byazt.ete.ic;
import com.byazt.ete.pu;
import com.byazt.omf.d;
import java.util.ArrayList;

/* JADX INFO: loaded from: classes6.dex */
@com.byazt.zqa.c(c = {0, 1, 27, 91})
public class sp extends com.byazt.jwd.uj {

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public ArrayList<Integer> f18486c;

    /* JADX INFO: renamed from: da, reason: collision with root package name */
    public ic f18487da;

    /* JADX INFO: renamed from: i, reason: collision with root package name */
    public final com.byazt.zb.x f18488i;
    public boolean sl;

    /* JADX INFO: renamed from: t, reason: collision with root package name */
    public com.byazt.xl.u f18489t;

    public sp(Context context, d dVar, ic icVar, com.byazt.ddx.a aVar, boolean z10, com.byazt.zb.x xVar, com.byazt.xl.u uVar) {
        super(context, dVar, icVar.uj(), aVar);
        this.f18486c = new ArrayList<>();
        this.f18487da = icVar;
        this.sl = z10;
        this.f18488i = xVar;
        this.f18489t = uVar;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public String uj() {
        if (pu.a(this.f18487da) != null) {
            return pu.a(this.f18487da).sl();
        }
        if (pu.sp(this.f18487da) != null) {
            return "v3";
        }
        return null;
    }

    @Override // com.byazt.jwd.uj, android.webkit.WebViewClient
    public void onPageFinished(WebView webView, String str) {
        this.f15938a = false;
        super.onPageFinished(webView, str);
    }

    @Override // com.byazt.jwd.uj, android.webkit.WebViewClient
    public void onPageStarted(WebView webView, String str, Bitmap bitmap) {
        this.sp = false;
        super.onPageStarted(webView, str, bitmap);
        com.byazt.xl.u uVar = this.f18489t;
        if (uVar == null || !uVar.zm()) {
            return;
        }
        com.byazt.nr.yp.c(webView, "javascript:window.SDK_INJECT_DATA=" + this.f18489t.n());
    }

    @Override // com.byazt.jwd.uj, android.webkit.WebViewClient
    @TargetApi(21)
    public WebResourceResponse shouldInterceptRequest(WebView webView, WebResourceRequest webResourceRequest) {
        try {
            return shouldInterceptRequest(webView, webResourceRequest.getUrl().toString());
        } catch (Throwable th) {
            com.byazt.nr.m.ve("ExpressClient", "shouldInterceptRequest error1", th);
            return super.shouldInterceptRequest(webView, webResourceRequest);
        }
    }

    public int c() {
        for (Integer num : this.f18486c) {
            if (num.intValue() == 3 || num.intValue() == 2 || num.intValue() == -1) {
                return num.intValue();
            }
        }
        return TextUtils.isEmpty(uj()) ? -1 : 1;
    }

    @Override // com.byazt.jwd.uj, android.webkit.WebViewClient
    public WebResourceResponse shouldInterceptRequest(WebView webView, String str) {
        try {
            com.byazt.zb.x xVar = this.f18488i;
            if (xVar != null) {
                xVar.x(str);
            }
            long jCurrentTimeMillis = System.currentTimeMillis();
            com.byazt.six.c cVarC = com.byazt.jlk.c.c(webView, this.f18487da, str, new com.byazt.jlk.c.InterfaceC0349c() { // from class: com.byazt.ouz.sp.1
                @Override // com.byazt.jlk.c.InterfaceC0349c
                public boolean c() {
                    return true;
                }

                @Override // com.byazt.jlk.c.InterfaceC0349c
                public com.byazt.six.c c(String str2, com.byazt.or.da.c cVar, String str3) {
                    return com.byazt.six.tt.c(str2, cVar, str3, sp.this.uj());
                }
            });
            c(jCurrentTimeMillis, System.currentTimeMillis(), str, (cVarC == null || cVarC.c() == null) ? 2 : 1);
            if (cVarC != null && cVarC.getType() != 5) {
                this.f18486c.add(Integer.valueOf(cVarC.getType()));
            }
            if (cVarC != null && cVarC.c() != null) {
                com.byazt.zb.x xVar2 = this.f18488i;
                if (xVar2 != null) {
                    xVar2.i(str);
                }
                return cVarC.c();
            }
        } catch (Throwable th) {
            com.byazt.nr.m.ve("ExpressClient", "shouldInterceptRequest error2", th);
        }
        return super.shouldInterceptRequest(webView, str);
    }

    private void c(long j10, long j11, String str, int i10) {
        com.byazt.ddx.a aVar = this.f15942n;
        if (aVar == null || aVar.ve() == null) {
            return;
        }
        com.byazt.or.da.c cVarC = com.byazt.or.da.c(str);
        if (cVarC == com.byazt.or.da.c.HTML) {
            this.f15942n.ve().c(str, j10, j11, i10);
        } else if (cVarC == com.byazt.or.da.c.JS) {
            this.f15942n.ve().tt(str, j10, j11, i10);
        }
    }
}
