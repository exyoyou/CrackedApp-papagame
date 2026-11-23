package com.alipay.sdk.app;

import android.app.Activity;
import android.content.res.Configuration;
import android.os.Bundle;
import android.webkit.WebView;
import android.webkit.WebViewClient;
import com.alipay.sdk.util.j;

/* JADX INFO: loaded from: classes7.dex */
public class H5PayActivity extends Activity {

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private WebView f7024b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    private WebViewClient f7025c;

    public void a() {
        Object obj = PayTask.f7026g;
        synchronized (obj) {
            try {
                obj.notify();
            } catch (Exception unused) {
            }
        }
    }

    @Override // android.app.Activity
    public void finish() {
        a();
        super.finish();
    }

    @Override // android.app.Activity
    public void onBackPressed() {
        if (!this.f7024b.canGoBack()) {
            h.f7050a = h.a();
            finish();
        } else if (((b) this.f7025c).b()) {
            i iVarA = i.a(i.NETWORK_ERROR.a());
            h.f7050a = h.b(iVarA.a(), iVarA.b(), "");
            finish();
        }
    }

    @Override // android.app.Activity, android.content.ComponentCallbacks
    public void onConfigurationChanged(Configuration configuration) {
        super.onConfigurationChanged(configuration);
    }

    @Override // android.app.Activity
    protected void onCreate(Bundle bundle) {
        super.onCreate(bundle);
        try {
            Bundle extras = getIntent().getExtras();
            String string = extras.getString("url");
            if (!j.m(string)) {
                finish();
                return;
            }
            String string2 = extras.getString("cookie");
            super.requestWindowFeature(1);
            this.f7024b = j.b(this, string, string2);
            b bVar = new b(this);
            this.f7025c = bVar;
            this.f7024b.setWebViewClient(bVar);
        } catch (Exception unused) {
            finish();
        }
    }

    @Override // android.app.Activity
    protected void onDestroy() {
        super.onDestroy();
        WebView webView = this.f7024b;
        if (webView != null) {
            webView.removeAllViews();
            try {
                this.f7024b.destroy();
            } catch (Throwable unused) {
            }
            this.f7024b = null;
        }
    }
}
