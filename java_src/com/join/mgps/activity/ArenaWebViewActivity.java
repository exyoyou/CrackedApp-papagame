package com.join.mgps.activity;

import android.net.http.SslError;
import android.webkit.SslErrorHandler;
import android.webkit.WebView;
import android.webkit.WebViewClient;
import com.BaseActivity;
import com.join.android.app.mgsim.wufun.R;
import com.join.mgps.customview.LJWebView;
import org.androidannotations.annotations.AfterViews;
import org.androidannotations.annotations.EActivity;
import org.androidannotations.annotations.Extra;
import org.androidannotations.annotations.ViewById;

/* JADX INFO: loaded from: classes4.dex */
@EActivity(R.layout.arena_web)
public class ArenaWebViewActivity extends BaseActivity {

    @Extra
    String url;

    @ViewById
    LJWebView web;

    private class b extends WebViewClient {
        private b() {
        }

        @Override // android.webkit.WebViewClient
        public void onPageFinished(WebView view, String url) {
            super.onPageFinished(view, url);
            view.getSettings().setBlockNetworkImage(false);
        }

        @Override // android.webkit.WebViewClient
        public void onReceivedSslError(WebView view, SslErrorHandler handler, SslError error) {
            int primaryError = error.getPrimaryError();
            if (primaryError == 3 || primaryError == 5) {
                handler.proceed();
            }
            handler.cancel();
        }
    }

    @AfterViews
    void afterViews() {
        showWeb(this.url);
    }

    void showWeb(String url) {
        this.web.setClickable(true);
        this.web.setUseWideViewPort(true);
        this.web.setSupportZoom(false);
        this.web.setBuiltInZoomControls(false);
        this.web.setJavaScriptEnabled(true);
        this.web.setCacheMode(2);
        this.web.w(url);
        this.web.setVisibility(0);
        this.web.setWebViewClient(new b());
    }
}
