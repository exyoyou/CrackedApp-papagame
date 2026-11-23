package com.byazt.nl;

import android.graphics.Paint;
import android.view.View;
import android.webkit.DownloadListener;
import android.webkit.ValueCallback;
import android.webkit.WebChromeClient;
import android.webkit.WebSettings;
import android.webkit.WebView;
import android.webkit.WebViewClient;

/* JADX INFO: loaded from: classes6.dex */
public interface uj extends ve {
    void addJavascriptInterface(Object obj, String str);

    void c(String str, String str2, Object obj);

    boolean canGoBack();

    void clearCache(boolean z10);

    void clearHistory();

    void clearView();

    void computeScroll();

    void destroy();

    void evaluateJavascript(String str, ValueCallback<String> valueCallback);

    int getContentHeight();

    int getProgress();

    String getUrl();

    String getUserAgentString();

    View getView();

    WebView getWebView();

    void goBack();

    void loadUrl(String str);

    void onPause();

    void onResume();

    void pauseTimers();

    void removeAllViews();

    void removeJavascriptInterface(String str);

    void resumeTimers();

    void setAllowFileAccess(boolean z10);

    void setAllowFileAccessFromFileURLs(boolean z10);

    void setAllowUniversalAccessFromFileURLs(boolean z10);

    void setAlpha(float f10);

    void setAppCacheEnabled(boolean z10);

    void setBackgroundColor(int i10);

    void setBlockNetworkImage(boolean z10);

    void setBuiltInZoomControls(boolean z10);

    void setCacheMode(int i10);

    void setDatabaseEnabled(boolean z10);

    void setDefaultFontSize(int i10);

    void setDefaultTextEncodingName(String str);

    void setDisplayZoomControls(boolean z10);

    void setDomStorageEnabled(boolean z10);

    void setDownloadListener(DownloadListener downloadListener);

    void setJavaScriptCanOpenWindowsAutomatically(boolean z10);

    void setJavaScriptEnabled(boolean z10);

    void setLayerType(int i10, Paint paint);

    void setLayoutAlgorithm(WebSettings.LayoutAlgorithm layoutAlgorithm);

    void setLoadWithOverviewMode(boolean z10);

    void setMediaPlaybackRequiresUserGesture(boolean z10);

    void setMixedContentMode(int i10);

    void setNetworkAvailable(boolean z10);

    void setOnScrollChangeListener(View.OnScrollChangeListener onScrollChangeListener);

    void setOverScrollMode(int i10);

    void setSavePassword(boolean z10);

    void setSupportZoom(boolean z10);

    void setUseWideViewPort(boolean z10);

    void setUserAgentString(String str);

    void setVisibility(int i10);

    void setWebChromeClient(WebChromeClient webChromeClient);

    void setWebViewClient(WebViewClient webViewClient);
}
