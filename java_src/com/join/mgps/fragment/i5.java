package com.join.mgps.fragment;

import android.net.http.SslError;
import android.webkit.SslErrorHandler;
import android.webkit.WebResourceRequest;
import android.webkit.WebView;
import android.webkit.WebViewClient;
import com.join.android.app.mgsim.wufun.R;
import com.join.mgps.customview.LJWebView;
import org.androidannotations.annotations.AfterViews;
import org.androidannotations.annotations.EFragment;
import org.androidannotations.annotations.FragmentArg;
import org.androidannotations.annotations.ViewById;

/* JADX INFO: loaded from: classes3.dex */
@EFragment(R.layout.fragment_search_web)
public class i5 extends e {

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    @ViewById
    LJWebView f69839c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    @FragmentArg
    String f69840d;

    class a extends WebViewClient {
        a() {
        }

        @Override // android.webkit.WebViewClient
        public void onReceivedSslError(WebView view, SslErrorHandler handler, SslError error) {
            int primaryError = error.getPrimaryError();
            if (primaryError == 3 || primaryError == 5) {
                handler.proceed();
            }
            handler.cancel();
        }

        @Override // android.webkit.WebViewClient
        public boolean shouldOverrideUrlLoading(WebView view, WebResourceRequest request) {
            return super.shouldOverrideUrlLoading(view, request);
        }
    }

    @AfterViews
    void afterviews() {
        LJWebView lJWebView = this.f69839c;
        if (lJWebView != null) {
            lJWebView.setVisibility(0);
            this.f69839c.setBarHeight(getResources().getDimensionPixelOffset(R.dimen.web_loding_progress_h));
            this.f69839c.setClickable(true);
            this.f69839c.setUseWideViewPort(true);
            this.f69839c.setSupportZoom(false);
            this.f69839c.setBuiltInZoomControls(false);
            this.f69839c.setJavaScriptEnabled(true);
            this.f69839c.setCacheMode(-1);
            this.f69839c.setWebViewClient(new a());
            this.f69839c.w(this.f69840d);
        }
    }

    @Override // com.join.mgps.fragment.e
    protected void lazyLoad() {
    }
}
