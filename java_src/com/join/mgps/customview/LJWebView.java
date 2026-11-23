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
public class LJWebView extends RelativeLayout {

    /* JADX INFO: renamed from: r, reason: collision with root package name */
    public static int f65179r = 1;

    /* JADX INFO: renamed from: s, reason: collision with root package name */
    public static int f65180s = 2;

    /* JADX INFO: renamed from: t, reason: collision with root package name */
    public static final int f65181t = 43234;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private Context f65182b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    private WebView f65183c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    private ProgressBar f65184d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    private boolean f65185e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    private RelativeLayout f65186f;

    /* JADX INFO: renamed from: g, reason: collision with root package name */
    private int f65187g;

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    private boolean f65188h;

    /* JADX INFO: renamed from: i, reason: collision with root package name */
    private int f65189i;

    /* JADX INFO: renamed from: j, reason: collision with root package name */
    private String f65190j;

    /* JADX INFO: renamed from: k, reason: collision with root package name */
    private View f65191k;

    /* JADX INFO: renamed from: l, reason: collision with root package name */
    private View f65192l;

    /* JADX INFO: renamed from: m, reason: collision with root package name */
    private b f65193m;

    /* JADX INFO: renamed from: n, reason: collision with root package name */
    Activity f65194n;

    /* JADX INFO: renamed from: o, reason: collision with root package name */
    ValueCallback<Uri> f65195o;

    /* JADX INFO: renamed from: p, reason: collision with root package name */
    ValueCallback<Uri[]> f65196p;

    /* JADX INFO: renamed from: q, reason: collision with root package name */
    private c f65197q;

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

    public LJWebView(Context context) {
        super(context);
        this.f65183c = null;
        this.f65184d = null;
        this.f65185e = true;
        this.f65186f = null;
        this.f65187g = 4;
        this.f65188h = false;
        this.f65189i = f65180s;
        this.f65192l = null;
        this.f65182b = context;
        t();
    }

    private void t() {
        WebView webView = new WebView(this.f65182b);
        this.f65183c = webView;
        addView(webView, -1, -1);
        this.f65183c.setBackgroundColor(0);
        u();
        this.f65183c.setWebChromeClient(new a());
    }

    @TargetApi(21)
    private void x(int requestCode, int resultCode, Intent intent) {
        Uri[] uriArr;
        if (requestCode != 43234 || this.f65196p == null) {
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
        this.f65196p.onReceiveValue(uriArr);
        this.f65196p = null;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void y() {
        Intent intent = new Intent("android.intent.action.GET_CONTENT");
        intent.addCategory("android.intent.category.OPENABLE");
        intent.setType("*/*");
        this.f65194n.startActivityForResult(Intent.createChooser(intent, "Image Chooser"), 43234);
    }

    public WebView getWebView() {
        return this.f65183c;
    }

    public void q(int requestCode, int resultCode, Intent data) {
        if (requestCode != 43234) {
            ValueCallback<Uri> valueCallback = this.f65195o;
            if (valueCallback != null) {
                valueCallback.onReceiveValue(null);
                this.f65195o = null;
                return;
            }
            ValueCallback<Uri[]> valueCallback2 = this.f65196p;
            if (valueCallback2 != null) {
                valueCallback2.onReceiveValue(null);
                this.f65196p = null;
                return;
            }
            return;
        }
        if (this.f65195o == null && this.f65196p == null) {
            return;
        }
        Uri data2 = (data == null || resultCode != -1) ? null : data.getData();
        if (this.f65196p != null) {
            x(requestCode, resultCode, data);
            return;
        }
        ValueCallback<Uri> valueCallback3 = this.f65195o;
        if (valueCallback3 != null) {
            valueCallback3.onReceiveValue(data2);
            this.f65195o = null;
        }
    }

    public void r(Object object) {
        this.f65183c.addJavascriptInterface(object, "papa");
    }

    public void s(Object object) {
        this.f65183c.addJavascriptInterface(object, "wufan");
    }

    public void setActivity(Activity activity) {
        this.f65194n = activity;
    }

    public void setBarHeight(int height) {
        this.f65187g = height;
    }

    public void setBuiltInZoomControls(boolean value) {
        this.f65183c.getSettings().setBuiltInZoomControls(value);
    }

    public void setCacheMode(int value) {
        this.f65183c.getSettings().setCacheMode(value);
    }

    @Override // android.view.View
    public void setClickable(boolean value) {
        this.f65183c.setClickable(value);
    }

    public void setJavaScriptEnabled(boolean value) {
        this.f65183c.getSettings().setJavaScriptEnabled(value);
    }

    public void setMethodListenter(b findMethod) {
        this.f65193m = findMethod;
    }

    public void setProgressStyle(int style) {
        this.f65189i = style;
    }

    public void setProgressVisible(boolean visible) {
        ProgressBar progressBar = this.f65184d;
        if (progressBar != null) {
            if (visible) {
                progressBar.setVisibility(0);
            } else {
                progressBar.setVisibility(8);
            }
        }
        this.f65185e = visible;
    }

    public void setSupportZoom(boolean value) {
        this.f65183c.getSettings().setSupportZoom(value);
    }

    public void setUseWideViewPort(boolean value) {
        this.f65183c.getSettings().setUseWideViewPort(value);
    }

    public void setWebViewClient(WebViewClient value) {
        this.f65183c.setWebViewClient(value);
        try {
            this.f65183c.removeJavascriptInterface("searchBoxJavaBredge_");
        } catch (Exception unused) {
        }
    }

    public void setonShowFileChooser(c fileChooserListener) {
        this.f65197q = fileChooserListener;
    }

    public void u() {
        this.f65183c.getSettings().setDomStorageEnabled(true);
        this.f65183c.getSettings().setRenderPriority(WebSettings.RenderPriority.HIGH);
        this.f65190j = this.f65182b.getApplicationContext().getDir("cacheH5", 0).getPath();
        this.f65183c.getSettings().setAllowFileAccess(true);
        this.f65183c.getSettings().setCacheMode(-1);
        this.f65183c.getSettings().setPluginState(WebSettings.PluginState.ON);
        this.f65183c.getSettings().setLoadWithOverviewMode(true);
        this.f65183c.getSettings().setLayoutAlgorithm(WebSettings.LayoutAlgorithm.NARROW_COLUMNS);
        this.f65183c.getSettings().setJavaScriptCanOpenWindowsAutomatically(true);
        this.f65183c.getSettings().setTextZoom(100);
        UtilsMy.T3(this.f65183c);
        this.f65183c.getSettings().setMediaPlaybackRequiresUserGesture(false);
        this.f65183c.getSettings().setMixedContentMode(0);
        try {
            if (Build.VERSION.SDK_INT > 27) {
                this.f65183c.getSettings().setSafeBrowsingEnabled(false);
            }
        } catch (Exception e10) {
            e10.printStackTrace();
        }
    }

    public void v(String data) {
        this.f65183c.loadData(data, ClipBoardItemData.TYPE_TEXT_HTML, "utf-8");
    }

    public void w(String url) {
        HashMap map = new HashMap();
        map.put("wf-v", "517_6.1.7.0");
        this.f65183c.loadUrl(url, map);
    }

    public void z(Bundle outState) {
        this.f65183c.saveState(outState);
    }

    class a extends WebChromeClient {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        WebChromeClient.CustomViewCallback f65198a;

        a() {
        }

        public void a(ValueCallback<Uri> valueCallback) {
            LJWebView lJWebView = LJWebView.this;
            lJWebView.f65195o = valueCallback;
            lJWebView.y();
        }

        public void b(ValueCallback valueCallback, String acceptType) {
            LJWebView lJWebView = LJWebView.this;
            lJWebView.f65195o = valueCallback;
            lJWebView.y();
        }

        public void c(ValueCallback<Uri> valueCallback, String acceptType, String capture) {
            LJWebView lJWebView = LJWebView.this;
            lJWebView.f65195o = valueCallback;
            lJWebView.y();
        }

        @Override // android.webkit.WebChromeClient
        public View getVideoLoadingProgressView() {
            if (LJWebView.this.f65192l == null) {
                LayoutInflater layoutInflaterFrom = LayoutInflater.from(LJWebView.this.f65182b);
                LJWebView.this.f65192l = layoutInflaterFrom.inflate(R.layout.video_loading_progress, (ViewGroup) null);
            }
            return LJWebView.this.f65192l;
        }

        @Override // android.webkit.WebChromeClient
        public boolean onConsoleMessage(ConsoleMessage consoleMessage) {
            String strMessage = consoleMessage.message();
            if (strMessage != null && strMessage.contains("Uncaught ReferenceError") && strMessage.contains("papaBackPageUp") && LJWebView.this.f65193m != null) {
                LJWebView.this.f65193m.noMethod();
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
            if (LJWebView.this.f65191k == null) {
                return;
            }
            LJWebView.this.f65191k = null;
            try {
                WebChromeClient.CustomViewCallback customViewCallback = this.f65198a;
                if (customViewCallback != null) {
                    customViewCallback.onCustomViewHidden();
                }
            } catch (Exception e10) {
                e10.printStackTrace();
            }
            if (LJWebView.this.f65193m != null) {
                LJWebView.this.f65193m.onHideCustomView();
            }
        }

        @Override // android.webkit.WebChromeClient
        public void onProgressChanged(WebView view, int newProgress) {
            super.onProgressChanged(view, newProgress);
            if (newProgress > 10 && LJWebView.this.f65193m != null) {
                LJWebView.this.f65193m.showMainWebview();
            }
            if (newProgress > 80) {
                if (LJWebView.this.f65189i == LJWebView.f65180s) {
                    if (LJWebView.this.f65184d != null) {
                        LJWebView.this.f65184d.setVisibility(8);
                    }
                } else if (LJWebView.this.f65186f != null) {
                    LJWebView.this.f65186f.setVisibility(8);
                }
            }
            if (newProgress == 100) {
                if (LJWebView.this.f65189i == LJWebView.f65180s) {
                    if (LJWebView.this.f65184d != null) {
                        LJWebView.this.f65184d.setVisibility(8);
                        return;
                    }
                    return;
                } else {
                    if (LJWebView.this.f65186f != null) {
                        LJWebView.this.f65186f.setVisibility(8);
                        return;
                    }
                    return;
                }
            }
            if (!LJWebView.this.f65188h) {
                if (LJWebView.this.f65189i == LJWebView.f65180s) {
                    LJWebView lJWebView = LJWebView.this;
                    lJWebView.f65184d = (ProgressBar) LayoutInflater.from(lJWebView.f65182b).inflate(R.layout.progress_horizontal, (ViewGroup) null);
                    LJWebView.this.f65184d.setMax(100);
                    LJWebView.this.f65184d.setProgress(0);
                    LJWebView lJWebView2 = LJWebView.this;
                    lJWebView2.addView(lJWebView2.f65184d, -1, LJWebView.this.f65187g);
                } else {
                    LJWebView lJWebView3 = LJWebView.this;
                    lJWebView3.f65186f = (RelativeLayout) LayoutInflater.from(lJWebView3.f65182b).inflate(R.layout.loding_layout, (ViewGroup) null);
                    LJWebView lJWebView4 = LJWebView.this;
                    lJWebView4.addView(lJWebView4.f65186f, -1, -1);
                }
                LJWebView.this.f65188h = true;
            }
            if (LJWebView.this.f65189i != LJWebView.f65180s) {
                LJWebView.this.f65186f.setVisibility(0);
            } else if (!LJWebView.this.f65185e) {
                LJWebView.this.f65184d.setVisibility(8);
            } else {
                LJWebView.this.f65184d.setVisibility(0);
                LJWebView.this.f65184d.setProgress(newProgress);
            }
        }

        @Override // android.webkit.WebChromeClient
        public void onReceivedTitle(WebView view, String title) {
            if (LJWebView.this.f65193m != null) {
                LJWebView.this.f65193m.onReceivedTitle(title);
            }
            super.onReceivedTitle(view, title);
        }

        @Override // android.webkit.WebChromeClient
        public void onShowCustomView(View view, WebChromeClient.CustomViewCallback callback) {
            try {
                if (LJWebView.this.f65191k != null) {
                    callback.onCustomViewHidden();
                    return;
                }
            } catch (Exception e10) {
                e10.printStackTrace();
            }
            LJWebView.this.f65191k = view;
            this.f65198a = callback;
            if (LJWebView.this.f65193m != null) {
                LJWebView.this.f65193m.onShowCustomView(view, callback, this);
            }
        }

        @Override // android.webkit.WebChromeClient
        public boolean onShowFileChooser(WebView webView, ValueCallback<Uri[]> filePathCallback, WebChromeClient.FileChooserParams fileChooserParams) {
            LJWebView lJWebView = LJWebView.this;
            lJWebView.f65196p = filePathCallback;
            lJWebView.y();
            return true;
        }

        @Override // android.webkit.WebChromeClient
        public void onShowCustomView(View view, int requestedOrientation, WebChromeClient.CustomViewCallback callback) {
            onShowCustomView(view, callback);
        }
    }

    public LJWebView(Context context, AttributeSet attrs) {
        super(context, attrs);
        this.f65183c = null;
        this.f65184d = null;
        this.f65185e = true;
        this.f65186f = null;
        this.f65187g = 4;
        this.f65188h = false;
        this.f65189i = f65180s;
        this.f65192l = null;
        this.f65182b = context;
        t();
    }

    public LJWebView(Context context, AttributeSet attrs, int defStyle) {
        super(context, attrs, defStyle);
        this.f65183c = null;
        this.f65184d = null;
        this.f65185e = true;
        this.f65186f = null;
        this.f65187g = 4;
        this.f65188h = false;
        this.f65189i = f65180s;
        this.f65192l = null;
        this.f65182b = context;
        t();
    }
}
