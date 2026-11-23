package com.heepay.plugin.activity;

import android.os.Bundle;
import android.view.ViewGroup;
import android.webkit.WebView;
import com.heepay.plugin.activity.logic.LogicHyNotityActivity;
import com.heepay.plugin.b.a;
import com.heepay.plugin.c.c;
import com.heepay.plugin.domain.e;
import com.join.mgps.dto.Constant;
import com.tencent.stat.DeviceInfo;
import java.util.Timer;
import u.b;

/* JADX INFO: loaded from: classes5.dex */
public class HyNotityActivity extends LogicHyNotityActivity {
    protected void a() {
        this.f34265v = new LogicHyNotityActivity.a(this);
        this.f34254e = a.c();
        Bundle extras = getIntent().getExtras();
        this.f34250a = extras.getString(b.f97417c);
        this.f34251b = extras.getInt(DeviceInfo.TAG_ANDROID_ID);
        this.f34252c = extras.getString("bn");
        this.f34255f = extras.getString(Constant.PAY_TYPE);
        i();
        if (this.f34250a.startsWith("http")) {
            this.f34264u.loadUrl(this.f34250a + "&phoneInfo=" + e.a().c(this));
        }
        if (a(this.f34250a, this.f34251b, this.f34252c, this.f34255f)) {
            return;
        }
        if (this.f34250a.indexOf("_") != -1) {
            String str = this.f34250a;
            this.f34253d = str.substring(0, str.lastIndexOf("_"));
        }
        j();
    }

    @Override // android.app.Activity
    protected void onCreate(Bundle bundle) {
        super.onCreate(bundle);
        c.a("-----------onCreate------------");
        a();
    }

    @Override // android.app.Activity
    protected void onDestroy() {
        c.a("-----------onDestroy------------");
        super.onDestroy();
        h();
        WebView webView = this.f34264u;
        if (webView != null) {
            webView.stopLoading();
            ((ViewGroup) this.f34264u.getParent()).removeView(this.f34264u);
            this.f34264u.removeAllViews();
            this.f34264u.setWebChromeClient(null);
            this.f34264u.setWebViewClient(null);
            this.f34264u.getSettings().setJavaScriptEnabled(false);
            unregisterForContextMenu(this.f34264u);
            this.f34264u.destroy();
            this.f34264u = null;
        }
    }

    @Override // android.app.Activity
    protected void onPause() {
        super.onPause();
        Timer timer = this.f34262m;
        if (timer != null) {
            timer.cancel();
        }
    }

    @Override // android.app.Activity
    protected void onRestoreInstanceState(Bundle bundle) {
        super.onRestoreInstanceState(bundle);
    }

    @Override // android.app.Activity
    protected void onResume() {
        super.onResume();
        c.a("-----------onResume------------" + this.f34258i);
        int i10 = this.f34258i + 1;
        this.f34258i = i10;
        if (i10 < 2) {
            return;
        }
        c.a("--------isNeedQuery------" + this.f34259j);
        if (this.f34259j) {
            WebView webView = this.f34264u;
            if (webView != null && webView.getVisibility() == 0) {
                this.f34264u.setVisibility(8);
                c.a("--------isNeedQuery------" + this.f34259j);
            }
            b();
            return;
        }
        if (this.f34261l) {
            WebView webView2 = this.f34264u;
            if (webView2 == null || webView2.getVisibility() != 0) {
                return;
            }
            this.f34264u.setVisibility(8);
            return;
        }
        if (this.f34250a.startsWith("http") || this.f34264u.getVisibility() != 0) {
            return;
        }
        this.f34264u.setVisibility(8);
        a("isLoaded");
    }
}
