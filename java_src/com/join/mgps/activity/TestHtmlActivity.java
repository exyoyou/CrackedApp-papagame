package com.join.mgps.activity;

import android.content.Context;
import android.graphics.Bitmap;
import android.net.http.SslError;
import android.os.Build;
import android.os.Bundle;
import android.view.View;
import android.webkit.JavascriptInterface;
import android.webkit.SslErrorHandler;
import android.webkit.WebChromeClient;
import android.webkit.WebSettings;
import android.webkit.WebView;
import android.webkit.WebViewClient;
import com.BaseActivity;
import com.haima.hmcp.beans.ClipBoardItemData;
import com.join.android.app.mgsim.wufun.R;
import com.join.mgps.customview.NestedWebView;
import java.lang.reflect.InvocationTargetException;
import org.androidannotations.annotations.AfterViews;
import org.androidannotations.annotations.EActivity;
import org.androidannotations.annotations.UiThread;
import org.androidannotations.annotations.ViewById;

/* JADX INFO: loaded from: classes4.dex */
@EActivity(R.layout.activity_test_html)
public class TestHtmlActivity extends BaseActivity {
    public static final String TAG = "TestHtmlActivity";
    private String appCaceDir;

    @ViewById
    NestedWebView ns_view;

    class a extends WebChromeClient {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        WebChromeClient.CustomViewCallback f56242a;

        a() {
        }

        @Override // android.webkit.WebChromeClient
        public void onHideCustomView() {
        }

        @Override // android.webkit.WebChromeClient
        public void onProgressChanged(WebView view, int newProgress) {
            super.onProgressChanged(view, newProgress);
        }

        @Override // android.webkit.WebChromeClient
        public void onShowCustomView(View view, WebChromeClient.CustomViewCallback callback) {
        }

        @Override // android.webkit.WebChromeClient
        public void onShowCustomView(View view, int requestedOrientation, WebChromeClient.CustomViewCallback callback) {
            onShowCustomView(view, callback);
        }
    }

    public class b {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        private Context f56244a;

        public b(Context context) {
            this.f56244a = context;
        }

        @JavascriptInterface
        public void openImage(String[] imgs, int p10) {
        }
    }

    private class c extends WebViewClient {
        public c(Context context) {
        }

        @Override // android.webkit.WebViewClient
        public void onPageFinished(WebView view, String url2) {
            super.onPageFinished(view, url2);
            com.join.mgps.Util.g1.b(TestHtmlActivity.TAG, "onPageFinished() called." + url2);
        }

        @Override // android.webkit.WebViewClient
        public void onPageStarted(WebView view, String url2, Bitmap favicon) {
            super.onPageStarted(view, url2, favicon);
            com.join.mgps.Util.g1.b(TestHtmlActivity.TAG, "onPageStarted() called." + url2);
        }

        @Override // android.webkit.WebViewClient
        public void onReceivedError(WebView view, int errorCode, String description, String failingUrl) {
            super.onReceivedError(view, errorCode, description, failingUrl);
            com.join.mgps.Util.g1.b(TestHtmlActivity.TAG, "onReceivedError() called." + failingUrl);
            if (failingUrl.endsWith(".zip")) {
                return;
            }
            view.loadDataWithBaseURL(null, "", ClipBoardItemData.TYPE_TEXT_HTML, "utf-8", null);
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
        initWebSet();
        showView();
    }

    public void initWebSet() {
        this.ns_view.getSettings().setDomStorageEnabled(true);
        this.ns_view.getSettings().setRenderPriority(WebSettings.RenderPriority.HIGH);
        this.appCaceDir = getApplicationContext().getDir("cacheH51", 0).getPath();
        this.ns_view.getSettings().setAllowFileAccess(true);
        this.ns_view.getSettings().setCacheMode(-1);
        this.ns_view.getSettings().setPluginState(WebSettings.PluginState.ON);
        this.ns_view.getSettings().setLoadWithOverviewMode(true);
        this.ns_view.getSettings().setLayoutAlgorithm(WebSettings.LayoutAlgorithm.NARROW_COLUMNS);
        this.ns_view.getSettings().setJavaScriptCanOpenWindowsAutomatically(true);
        this.ns_view.getSettings().setTextZoom(100);
        this.ns_view.getSettings().setMediaPlaybackRequiresUserGesture(false);
        this.ns_view.getSettings().setUseWideViewPort(true);
        this.ns_view.getSettings().setSupportZoom(false);
        this.ns_view.getSettings().setBuiltInZoomControls(false);
        this.ns_view.getSettings().setJavaScriptEnabled(true);
        this.ns_view.getSettings().setDefaultTextEncodingName("UTF-8");
        this.ns_view.getSettings().setCacheMode(-1);
        this.ns_view.setWebViewClient(new c(this));
        try {
            if (Build.VERSION.SDK_INT > 27) {
                this.ns_view.getSettings().setSafeBrowsingEnabled(false);
            }
        } catch (Exception e10) {
            e10.printStackTrace();
        }
        this.ns_view.setWebChromeClient(new a());
    }

    @Override // com.BaseActivity, com.BaseFragmentActivity, androidx.fragment.app.FragmentActivity, androidx.activity.ComponentActivity, androidx.core.app.ComponentActivity, android.app.Activity
    protected void onCreate(Bundle savedInstanceState) {
        super.onCreate(savedInstanceState);
        if (savedInstanceState != null) {
            try {
                NestedWebView nestedWebView = this.ns_view;
                if (nestedWebView != null) {
                    nestedWebView.restoreState(savedInstanceState);
                }
            } catch (Exception e10) {
                e10.printStackTrace();
            }
        }
    }

    @Override // com.BaseActivity, com.BaseFragmentActivity, androidx.fragment.app.FragmentActivity, android.app.Activity
    protected void onPause() {
        NestedWebView nestedWebView = this.ns_view;
        if (nestedWebView != null) {
            try {
                nestedWebView.getClass().getMethod("onPause", new Class[0]).invoke(this.ns_view, null);
            } catch (IllegalAccessException e10) {
                e10.printStackTrace();
            } catch (NoSuchMethodException e11) {
                e11.printStackTrace();
            } catch (InvocationTargetException e12) {
                e12.printStackTrace();
            }
        }
        super.onPause();
    }

    @Override // com.BaseActivity, com.BaseFragmentActivity, androidx.fragment.app.FragmentActivity, android.app.Activity
    protected void onResume() {
        super.onResume();
        NestedWebView nestedWebView = this.ns_view;
        if (nestedWebView != null) {
            try {
                nestedWebView.getClass().getMethod("onResume", new Class[0]).invoke(this.ns_view, null);
            } catch (IllegalAccessException e10) {
                e10.printStackTrace();
            } catch (NoSuchMethodException e11) {
                e11.printStackTrace();
            } catch (InvocationTargetException e12) {
                e12.printStackTrace();
            }
        }
    }

    @UiThread
    void showView() {
        this.ns_view.loadData("<!DOCTYPE html><html style=\"height:100%;width:100%;padding:0;margin:0;\"><head><meta charset=\"utf-8\"><meta name=\"viewport\" content=\"width=device-width, initial-scale=1.0\"><title>wufan</title></head><body style=\"height:100%;width:100%;padding:0;margin:0;\"><div style=\"height:100%;width:100%;overflow: hidden;\"><iframe src=\"https://player.bilibili.com/player.html?high_quality=1&bvid=BV1Me4114751&page=1\" scrolling=\"no\" border=\"0\" frameborder=\"no\" framespacing=\"0\" allowfullscreen=\"true\" style=\"height:100%;width:100%;padding:0;margin:0;\"></iframe></div>%0A</body></html>", ClipBoardItemData.TYPE_TEXT_HTML, "utf-8");
    }
}
