package com.sigmob.sdk.mraid2;

import android.content.Context;
import android.graphics.drawable.Drawable;
import android.webkit.JavascriptInterface;
import android.webkit.ValueCallback;
import android.webkit.WebChromeClient;
import android.webkit.WebSettings;
import android.webkit.WebViewClient;
import android.widget.FrameLayout;
import com.czhj.sdk.logger.SigmobLog;
import com.sigmob.sdk.base.models.BaseAdUnit;
import com.sigmob.sdk.base.models.rtb.Ad;
import com.sigmob.sdk.base.mta.PointCategory;
import com.sigmob.sdk.base.views.am;
import com.sigmob.sdk.nativead.APKStatusBroadcastReceiver;
import java.util.HashMap;
import java.util.LinkedHashMap;
import java.util.List;
import java.util.Map;

/* JADX INFO: loaded from: classes3.dex */
public abstract class x extends FrameLayout {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public static HashMap<String, com.sigmob.sdk.mraid.n> f81315a = new LinkedHashMap();

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private static final String f81316b = "WebAdContainer";

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    private final Map<String, APKStatusBroadcastReceiver> f81317c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    private com.sigmob.sdk.base.views.f f81318d;

    private class a {
        public a() {
        }

        @JavascriptInterface
        public int cancelDownloadTaskByVid(String vid) {
            BaseAdUnit baseAdUnitA = x.this.a(vid);
            com.sigmob.sdk.base.utils.k.c(x.f81316b, "cancelDownloadTaskByVid: vid = " + vid + ", adUnit = " + baseAdUnitA, new Object[0]);
            Context context = x.this.getContext();
            if (context == null || baseAdUnitA == null || baseAdUnitA.getApkDownloadType() == 0) {
                return -1;
            }
            return com.sigmob.sdk.base.common.o.c(context, baseAdUnitA);
        }

        @JavascriptInterface
        public int getApKDownloadProcessId(String vid) {
            BaseAdUnit baseAdUnitA = x.this.a(vid);
            List<BaseAdUnit> adUnitList = x.this.getAdUnitList();
            if (baseAdUnitA == null && com.sigmob.sdk.base.utils.e.b(adUnitList)) {
                baseAdUnitA = adUnitList.get(0);
            }
            com.sigmob.sdk.base.utils.k.c(x.f81316b, "getApKDownloadProcessId: vid = " + vid + ", adUnit = " + baseAdUnitA, new Object[0]);
            Context context = x.this.getContext();
            if (context == null || baseAdUnitA == null) {
                return -1;
            }
            long[] jArrA = baseAdUnitA.getApkDownloadType() == 0 ? com.sigmob.sdk.base.common.q.a(context, baseAdUnitA.getDownloadId()) : com.sigmob.sdk.base.common.o.d(context, baseAdUnitA);
            int i10 = (int) jArrA[2];
            if (i10 != 1) {
                if (i10 != 2) {
                    if (i10 != 4) {
                        return i10 != 8 ? -1 : 100;
                    }
                    return -2;
                }
                long j10 = jArrA[0];
                long j11 = jArrA[1];
                if (j11 != 0 && j10 != 0) {
                    return (int) ((j10 * 100) / j11);
                }
            }
            return 0;
        }

        @JavascriptInterface
        public int pauseDownloadByVid(String vid) {
            BaseAdUnit baseAdUnitA = x.this.a(vid);
            com.sigmob.sdk.base.utils.k.c(x.f81316b, "pauseDownloadByVid: vid = " + vid + ", adUnit = " + baseAdUnitA, new Object[0]);
            if (x.this.getContext() == null || baseAdUnitA == null || baseAdUnitA.getApkDownloadType() == 0) {
                return -1;
            }
            return com.sigmob.sdk.base.common.o.a(x.this.getContext(), baseAdUnitA);
        }

        @JavascriptInterface
        public void registerDownloadEvent(String vid) {
            BaseAdUnit baseAdUnitA = x.this.a(vid);
            List<BaseAdUnit> adUnitList = x.this.getAdUnitList();
            if (baseAdUnitA == null && com.sigmob.sdk.base.utils.e.b(adUnitList)) {
                baseAdUnitA = adUnitList.get(0);
            }
            com.sigmob.sdk.base.utils.k.c(x.f81316b, "registerDownloadEvent: vid = " + vid + ", adUnit = " + baseAdUnitA, new Object[0]);
            x.this.a(baseAdUnitA);
        }

        @JavascriptInterface
        public int resumeDownloadByVid(String vid) {
            BaseAdUnit baseAdUnitA = x.this.a(vid);
            com.sigmob.sdk.base.utils.k.c(x.f81316b, "resumeDownloadByVid: vid = " + vid, new Object[0]);
            Context context = x.this.getContext();
            if (context == null || baseAdUnitA == null || baseAdUnitA.getApkDownloadType() == 0) {
                return -1;
            }
            return com.sigmob.sdk.base.common.o.b(context, baseAdUnitA);
        }
    }

    public x(Context context) {
        super(context);
        this.f81317c = new HashMap();
        com.sigmob.sdk.base.views.f fVarA = am.a().a(context);
        this.f81318d = fVarA;
        if (fVarA == null) {
            this.f81318d = new com.sigmob.sdk.base.views.f(context);
        }
        this.f81318d.addJavascriptInterface(new a(), "sigandroidapk");
        addView(this.f81318d, new FrameLayout.LayoutParams(-1, -1));
    }

    public void c(String url) {
        this.f81318d.loadUrl(url);
    }

    void d() {
        d("download_start");
    }

    void e() {
        d("download_fail");
    }

    void f() {
        d("download_pause");
    }

    void g() {
        d(PointCategory.DOWNLOAD_END);
    }

    abstract List<BaseAdUnit> getAdUnitList();

    WebSettings getSettings() {
        return this.f81318d.getSettings();
    }

    void h() {
        d(com.sigmob.sdk.base.common.a.E);
    }

    void i() {
        d("install_end");
    }

    public void j() {
        com.sigmob.sdk.base.views.f fVar = this.f81318d;
        if (fVar == null) {
            return;
        }
        fVar.reload();
    }

    public void k() {
        com.sigmob.sdk.base.views.f fVar = this.f81318d;
        if (fVar == null) {
            return;
        }
        fVar.stopLoading();
    }

    public void l() {
        this.f81318d.resumeTimers();
    }

    @Override // android.view.ViewGroup, android.view.View
    protected void onAttachedToWindow() {
        super.onAttachedToWindow();
    }

    @Override // android.view.View
    public void setBackground(Drawable background) {
        super.setBackground(background);
        this.f81318d.setBackground(background);
    }

    @Override // android.view.View
    public void setBackgroundColor(int color) {
        super.setBackgroundColor(color);
        this.f81318d.setBackgroundColor(color);
    }

    void setWebChromeClient(WebChromeClient webChromeClient) {
        com.sigmob.sdk.base.views.f fVar = this.f81318d;
        if (fVar == null) {
            return;
        }
        fVar.setWebChromeClient(webChromeClient);
    }

    void setWebViewClient(WebViewClient webViewClient) {
        com.sigmob.sdk.base.views.f fVar = this.f81318d;
        if (fVar == null) {
            return;
        }
        fVar.setWebViewClient(webViewClient);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public BaseAdUnit a(String vid) {
        Ad ad2;
        List<BaseAdUnit> adUnitList = getAdUnitList();
        if (!com.sigmob.sdk.base.utils.e.b(adUnitList)) {
            return null;
        }
        for (BaseAdUnit baseAdUnit : adUnitList) {
            if (baseAdUnit != null && (ad2 = baseAdUnit.getAd()) != null && com.sigmob.sdk.base.utils.t.a((CharSequence) ad2.vid, (CharSequence) vid)) {
                return baseAdUnit;
            }
        }
        return null;
    }

    public void b() {
        if (com.sigmob.sdk.base.utils.e.b(this.f81317c)) {
            for (APKStatusBroadcastReceiver aPKStatusBroadcastReceiver : this.f81317c.values()) {
                aPKStatusBroadcastReceiver.b(aPKStatusBroadcastReceiver);
            }
            this.f81317c.clear();
        }
        if (com.sigmob.sdk.base.utils.e.b(f81315a)) {
            for (com.sigmob.sdk.mraid.n nVar : f81315a.values()) {
                if (nVar != null) {
                    nVar.b();
                }
            }
            f81315a.clear();
        }
        if (this.f81318d != null) {
            am.a().a(this.f81318d);
            this.f81318d = null;
        }
        removeAllViews();
    }

    void d(final String state) {
        post(new Runnable() { // from class: com.sigmob.sdk.mraid2.v0
            @Override // java.lang.Runnable
            public final void run() {
                this.f81312b.b(state);
            }
        });
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void b(String str) {
        a("mraidbridge.notifyApkDownloadStateEvent(\"" + str + "\");", (ValueCallback<String>) null);
    }

    public void a(BaseAdUnit baseAdUnit) {
        if (baseAdUnit == null) {
            return;
        }
        String uuid = baseAdUnit.getUuid();
        if (this.f81317c.get(uuid) == null) {
            APKStatusBroadcastReceiver aPKStatusBroadcastReceiver = new APKStatusBroadcastReceiver(new com.sigmob.sdk.base.common.b() { // from class: com.sigmob.sdk.mraid2.x.1
                @Override // com.sigmob.sdk.base.common.b
                public void a(boolean result) {
                    if (result) {
                        x.this.h();
                    } else {
                        x.this.e();
                    }
                }

                @Override // com.sigmob.sdk.base.common.b
                public void b(boolean result) {
                    if (result) {
                        x.this.i();
                    } else {
                        x.this.e();
                    }
                }

                @Override // com.sigmob.sdk.base.common.b
                public void c(boolean result, long downloadId) {
                    x.this.f();
                }

                @Override // com.sigmob.sdk.base.common.b
                public void a(boolean result, long downloadId) {
                    if (result) {
                        x.this.d();
                    } else {
                        x.this.e();
                    }
                }

                @Override // com.sigmob.sdk.base.common.b
                public void b(boolean result, long downloadId) {
                    if (result) {
                        x.this.g();
                    } else {
                        x.this.e();
                    }
                }
            }, uuid);
            aPKStatusBroadcastReceiver.a(aPKStatusBroadcastReceiver);
            this.f81317c.put(uuid, aPKStatusBroadcastReceiver);
        }
    }

    void a(Object object, String name) {
        this.f81318d.addJavascriptInterface(object, name);
    }

    public void b(String javascript, ValueCallback callback) {
        com.sigmob.sdk.base.views.f fVar = this.f81318d;
        if (fVar == null) {
            return;
        }
        fVar.evaluateJavascript(javascript, callback);
    }

    void a(String javascript, ValueCallback<String> callback) {
        if (this.f81318d == null) {
            return;
        }
        SigmobLog.d("Injecting Javascript into MRAID WebView:\n\t" + javascript);
        this.f81318d.evaluateJavascript(javascript, callback);
    }

    void a(String baseUrl, String data, String mimeType, String encoding, String historyUrl) {
        com.sigmob.sdk.base.views.f fVar = this.f81318d;
        if (fVar == null) {
            return;
        }
        fVar.loadDataWithBaseURL(baseUrl, data, mimeType, encoding, historyUrl);
    }

    void a(boolean enabled) {
        com.sigmob.sdk.base.views.f fVar = this.f81318d;
        if (fVar == null) {
            return;
        }
        fVar.a(enabled);
    }
}
