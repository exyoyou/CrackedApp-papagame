package com.join.mgps.customview;

import android.annotation.TargetApi;
import android.app.Activity;
import android.content.ClipData;
import android.content.Context;
import android.content.Intent;
import android.net.Uri;
import android.os.Build;
import android.os.Bundle;
import android.util.AttributeSet;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.webkit.ConsoleMessage;
import android.webkit.ValueCallback;
import android.webkit.WebChromeClient;
import android.webkit.WebSettings;
import android.webkit.WebView;
import android.webkit.WebViewClient;
import android.widget.ProgressBar;
import android.widget.RelativeLayout;
import com.haima.hmcp.beans.ClipBoardItemData;
import com.join.android.app.mgsim.wufun.R;
import com.join.mgps.Util.UtilsMy;
import java.util.HashMap;

/* JADX INFO: loaded from: classes3.dex */
public class LJNestScrollWebView extends RelativeLayout {

    /* JADX INFO: renamed from: q, reason: collision with root package name */
    public static int f65159q = 1;

    /* JADX INFO: renamed from: r, reason: collision with root package name */
    public static int f65160r = 2;

    /* JADX INFO: renamed from: s, reason: collision with root package name */
    public static final int f65161s = 43234;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private Context f65162b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    private NestedWebView f65163c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    private ProgressBar f65164d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    private RelativeLayout f65165e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    private int f65166f;

    /* JADX INFO: renamed from: g, reason: collision with root package name */
    private boolean f65167g;

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    private int f65168h;

    /* JADX INFO: renamed from: i, reason: collision with root package name */
    private String f65169i;

    /* JADX INFO: renamed from: j, reason: collision with root package name */
    private View f65170j;

    /* JADX INFO: renamed from: k, reason: collision with root package name */
    private View f65171k;

    /* JADX INFO: renamed from: l, reason: collision with root package name */
    private b f65172l;

    /* JADX INFO: renamed from: m, reason: collision with root package name */
    Activity f65173m;

    /* JADX INFO: renamed from: n, reason: collision with root package name */
    ValueCallback<Uri> f65174n;

    /* JADX INFO: renamed from: o, reason: collision with root package name */
    ValueCallback<Uri[]> f65175o;

    /* JADX INFO: renamed from: p, reason: collision with root package name */
    private c f65176p;

    public interface b {
        void noMethod();

        void onHideCustomView();

        void onReceivedTitle(String title);

        void onShowCustomView(View view, WebChromeClient.CustomViewCallback callback, WebChromeClient chromeClient);

        void showMainWebview();
    }

    public interface c {
        void a();
    }

    public LJNestScrollWebView(Context context) {
        super(context);
        this.f65163c = null;
        this.f65164d = null;
        this.f65165e = null;
        this.f65166f = 4;
        this.f65167g = false;
        this.f65168h = f65160r;
        this.f65171k = null;
        this.f65162b = context;
        s();
    }

    private void s() {
        NestedWebView nestedWebView = new NestedWebView(this.f65162b);
        this.f65163c = nestedWebView;
        addView(nestedWebView, -1, -1);
        this.f65163c.setBackgroundColor(0);
        t();
        this.f65163c.setWebChromeClient(new a());
    }

    @TargetApi(21)
    private void w(int requestCode, int resultCode, Intent intent) {
        Uri[] uriArr;
        if (requestCode != 43234 || this.f65175o == null) {
            return;
        }
        if (resultCode != -1 || intent == null) {
            uriArr = null;
        } else {
            String dataString = intent.getDataString();
            ClipData clipData = intent.getClipData();
            if (clipData != null) {
                uriArr = new Uri[clipData.getItemCount()];
                for (int i10 = 0; i10 < clipData.getItemCount(); i10++) {
                    uriArr[i10] = clipData.getItemAt(i10).getUri();
                }
            } else {
                uriArr = null;
            }
            if (dataString != null) {
                uriArr = new Uri[]{Uri.parse(dataString)};
            }
        }
        this.f65175o.onReceiveValue(uriArr);
        this.f65175o = null;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void x() {
        Intent intent = new Intent("android.intent.action.GET_CONTENT");
        intent.addCategory("android.intent.category.OPENABLE");
        intent.setType("*/*");
        this.f65173m.startActivityForResult(Intent.createChooser(intent, "Image Chooser"), 43234);
    }

    public WebView getWebView() {
        return this.f65163c;
    }

    public void p(int requestCode, int resultCode, Intent data) {
        if (requestCode != 43234) {
            ValueCallback<Uri> valueCallback = this.f65174n;
            if (valueCallback != null) {
                valueCallback.onReceiveValue(null);
                this.f65174n = null;
                return;
            }
            ValueCallback<Uri[]> valueCallback2 = this.f65175o;
            if (valueCallback2 != null) {
                valueCallback2.onReceiveValue(null);
                this.f65175o = null;
                return;
            }
            return;
        }
        if (this.f65174n == null && this.f65175o == null) {
            return;
        }
        Uri data2 = (data == null || resultCode != -1) ? null : data.getData();
        if (this.f65175o != null) {
            w(requestCode, resultCode, data);
            return;
        }
        ValueCallback<Uri> valueCallback3 = this.f65174n;
        if (valueCallback3 != null) {
            valueCallback3.onReceiveValue(data2);
            this.f65174n = null;
        }
    }

    public void q(Object object) {
        this.f65163c.addJavascriptInterface(object, "papa");
    }

    public void r(Object object) {
        this.f65163c.addJavascriptInterface(object, "wufan");
    }

    public void setActivity(Activity activity) {
        this.f65173m = activity;
    }

    public void setBarHeight(int height) {
        this.f65166f = height;
    }

    public void setBuiltInZoomControls(boolean value) {
        this.f65163c.getSettings().setBuiltInZoomControls(value);
    }

    public void setCacheMode(int value) {
        this.f65163c.getSettings().setCacheMode(value);
    }

    @Override // android.view.View
    public void setClickable(boolean value) {
        this.f65163c.setClickable(value);
    }

    public void setJavaScriptEnabled(boolean value) {
        this.f65163c.getSettings().setJavaScriptEnabled(value);
    }

    public void setMethodListenter(b findMethod) {
        this.f65172l = findMethod;
    }

    public void setProgressStyle(int style) {
        this.f65168h = style;
    }

    public void setSupportZoom(boolean value) {
        this.f65163c.getSettings().setSupportZoom(value);
    }

    public void setUseWideViewPort(boolean value) {
        this.f65163c.getSettings().setUseWideViewPort(value);
    }

    public void setWebViewClient(WebViewClient value) {
        this.f65163c.setWebViewClient(value);
        try {
            this.f65163c.removeJavascriptInterface("searchBoxJavaBredge_");
        } catch (Exception unused) {
        }
    }

    public void setonShowFileChooser(c fileChooserListener) {
        this.f65176p = fileChooserListener;
    }

    public void t() {
        this.f65163c.getSettings().setDomStorageEnabled(true);
        this.f65163c.getSettings().setRenderPriority(WebSettings.RenderPriority.HIGH);
        this.f65169i = this.f65162b.getApplicationContext().getDir("cacheH5", 0).getPath();
        this.f65163c.getSettings().setAllowFileAccess(true);
        this.f65163c.getSettings().setCacheMode(-1);
        this.f65163c.getSettings().setPluginState(WebSettings.PluginState.ON);
        this.f65163c.getSettings().setLoadWithOverviewMode(true);
        this.f65163c.getSettings().setLayoutAlgorithm(WebSettings.LayoutAlgorithm.NARROW_COLUMNS);
        this.f65163c.getSettings().setJavaScriptCanOpenWindowsAutomatically(true);
        this.f65163c.getSettings().setTextZoom(100);
        this.f65163c.getSettings().setMediaPlaybackRequiresUserGesture(false);
        UtilsMy.T3(this.f65163c);
        try {
            if (Build.VERSION.SDK_INT > 27) {
                this.f65163c.getSettings().setSafeBrowsingEnabled(false);
            }
        } catch (Exception e10) {
            e10.printStackTrace();
        }
    }

    public void u(String data) {
        this.f65163c.loadData(data, ClipBoardItemData.TYPE_TEXT_HTML, "utf-8");
    }

    public void v(String url) {
        HashMap map = new HashMap();
        map.put("wf-v", "517_6.1.7.0");
        this.f65163c.loadUrl(url, map);
    }

    public void y(Bundle outState) {
        this.f65163c.saveState(outState);
    }

    class a extends WebChromeClient {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        WebChromeClient.CustomViewCallback f65177a;

        a() {
        }

        public void a(ValueCallback<Uri> valueCallback) {
            LJNestScrollWebView lJNestScrollWebView = LJNestScrollWebView.this;
            lJNestScrollWebView.f65174n = valueCallback;
            lJNestScrollWebView.x();
        }

        public void b(ValueCallback valueCallback, String acceptType) {
            LJNestScrollWebView lJNestScrollWebView = LJNestScrollWebView.this;
            lJNestScrollWebView.f65174n = valueCallback;
            lJNestScrollWebView.x();
        }

        public void c(ValueCallback<Uri> valueCallback, String acceptType, String capture) {
            LJNestScrollWebView lJNestScrollWebView = LJNestScrollWebView.this;
            lJNestScrollWebView.f65174n = valueCallback;
            lJNestScrollWebView.x();
        }

        @Override // android.webkit.WebChromeClient
        public View getVideoLoadingProgressView() {
            if (LJNestScrollWebView.this.f65171k == null) {
                LayoutInflater layoutInflaterFrom = LayoutInflater.from(LJNestScrollWebView.this.f65162b);
                LJNestScrollWebView.this.f65171k = layoutInflaterFrom.inflate(R.layout.video_loading_progress, (ViewGroup) null);
            }
            return LJNestScrollWebView.this.f65171k;
        }

        @Override // android.webkit.WebChromeClient
        public boolean onConsoleMessage(ConsoleMessage consoleMessage) {
            String strMessage = consoleMessage.message();
            if (strMessage != null && strMessage.contains("Uncaught ReferenceError") && strMessage.contains("papaBackPageUp") && LJNestScrollWebView.this.f65172l != null) {
                LJNestScrollWebView.this.f65172l.noMethod();
            }
            StringBuilder sb2 = new StringBuilder();
            sb2.append(consoleMessage.message());
            sb2.append(" -- From line ");
            sb2.append(consoleMessage.lineNumber());
            sb2.append(" of ");
            sb2.append(consoleMessage.sourceId());
            return super.onConsoleMessage(consoleMessage);
        }

        @Override // android.webkit.WebChromeClient
        public void onHideCustomView() {
            if (LJNestScrollWebView.this.f65170j == null) {
                return;
            }
            LJNestScrollWebView.this.f65170j = null;
            try {
                WebChromeClient.CustomViewCallback customViewCallback = this.f65177a;
                if (customViewCallback != null) {
                    customViewCallback.onCustomViewHidden();
                }
            } catch (Exception e10) {
                e10.printStackTrace();
            }
            if (LJNestScrollWebView.this.f65172l != null) {
                LJNestScrollWebView.this.f65172l.onHideCustomView();
            }
        }

        @Override // android.webkit.WebChromeClient
        public void onProgressChanged(WebView view, int newProgress) {
            super.onProgressChanged(view, newProgress);
            if (newProgress > 10 && LJNestScrollWebView.this.f65172l != null) {
                LJNestScrollWebView.this.f65172l.showMainWebview();
            }
            if (newProgress > 80) {
                if (LJNestScrollWebView.this.f65168h == LJNestScrollWebView.f65160r) {
                    if (LJNestScrollWebView.this.f65164d != null) {
                        LJNestScrollWebView.this.f65164d.setVisibility(8);
                    }
                } else if (LJNestScrollWebView.this.f65165e != null) {
                    LJNestScrollWebView.this.f65165e.setVisibility(8);
                }
            }
            if (newProgress == 100) {
                if (LJNestScrollWebView.this.f65168h == LJNestScrollWebView.f65160r) {
                    if (LJNestScrollWebView.this.f65164d != null) {
                        LJNestScrollWebView.this.f65164d.setVisibility(8);
                        return;
                    }
                    return;
                } else {
                    if (LJNestScrollWebView.this.f65165e != null) {
                        LJNestScrollWebView.this.f65165e.setVisibility(8);
                        return;
                    }
                    return;
                }
            }
            if (!LJNestScrollWebView.this.f65167g) {
                if (LJNestScrollWebView.this.f65168h == LJNestScrollWebView.f65160r) {
                    LJNestScrollWebView lJNestScrollWebView = LJNestScrollWebView.this;
                    lJNestScrollWebView.f65164d = (ProgressBar) LayoutInflater.from(lJNestScrollWebView.f65162b).inflate(R.layout.progress_horizontal, (ViewGroup) null);
                    LJNestScrollWebView.this.f65164d.setMax(100);
                    LJNestScrollWebView.this.f65164d.setProgress(0);
                    LJNestScrollWebView lJNestScrollWebView2 = LJNestScrollWebView.this;
                    lJNestScrollWebView2.addView(lJNestScrollWebView2.f65164d, -1, LJNestScrollWebView.this.f65166f);
                } else {
                    LJNestScrollWebView lJNestScrollWebView3 = LJNestScrollWebView.this;
                    lJNestScrollWebView3.f65165e = (RelativeLayout) LayoutInflater.from(lJNestScrollWebView3.f65162b).inflate(R.layout.loding_layout, (ViewGroup) null);
                    LJNestScrollWebView lJNestScrollWebView4 = LJNestScrollWebView.this;
                    lJNestScrollWebView4.addView(lJNestScrollWebView4.f65165e, -1, -1);
                }
                LJNestScrollWebView.this.f65167g = true;
            }
            if (LJNestScrollWebView.this.f65168h != LJNestScrollWebView.f65160r) {
                LJNestScrollWebView.this.f65165e.setVisibility(0);
            } else {
                LJNestScrollWebView.this.f65164d.setVisibility(0);
                LJNestScrollWebView.this.f65164d.setProgress(newProgress);
            }
        }

        @Override // android.webkit.WebChromeClient
        public void onReceivedTitle(WebView view, String title) {
            if (LJNestScrollWebView.this.f65172l != null) {
                LJNestScrollWebView.this.f65172l.onReceivedTitle(title);
            }
            super.onReceivedTitle(view, title);
        }

        @Override // android.webkit.WebChromeClient
        public void onShowCustomView(View view, WebChromeClient.CustomViewCallback callback) {
            try {
                if (LJNestScrollWebView.this.f65170j != null) {
                    callback.onCustomViewHidden();
                    return;
                }
            } catch (Exception e10) {
                e10.printStackTrace();
            }
            LJNestScrollWebView.this.f65170j = view;
            this.f65177a = callback;
            if (LJNestScrollWebView.this.f65172l != null) {
                LJNestScrollWebView.this.f65172l.onShowCustomView(view, callback, this);
            }
        }

        @Override // android.webkit.WebChromeClient
        public boolean onShowFileChooser(WebView webView, ValueCallback<Uri[]> filePathCallback, WebChromeClient.FileChooserParams fileChooserParams) {
            LJNestScrollWebView lJNestScrollWebView = LJNestScrollWebView.this;
            lJNestScrollWebView.f65175o = filePathCallback;
            lJNestScrollWebView.x();
            return true;
        }

        @Override // android.webkit.WebChromeClient
        public void onShowCustomView(View view, int requestedOrientation, WebChromeClient.CustomViewCallback callback) {
            onShowCustomView(view, callback);
        }
    }

    public LJNestScrollWebView(Context context, AttributeSet attrs) {
        super(context, attrs);
        this.f65163c = null;
        this.f65164d = null;
        this.f65165e = null;
        this.f65166f = 4;
        this.f65167g = false;
        this.f65168h = f65160r;
        this.f65171k = null;
        this.f65162b = context;
        s();
    }

    public LJNestScrollWebView(Context context, AttributeSet attrs, int defStyle) {
        super(context, attrs, defStyle);
        this.f65163c = null;
        this.f65164d = null;
        this.f65165e = null;
        this.f65166f = 4;
        this.f65167g = false;
        this.f65168h = f65160r;
        this.f65171k = null;
        this.f65162b = context;
        s();
    }
}
