package com.beizi.fusion.widget;

import android.annotation.SuppressLint;
import android.content.Context;
import android.graphics.Bitmap;
import android.net.http.SslError;
import android.os.Handler;
import android.os.Message;
import android.text.TextUtils;
import android.util.AttributeSet;
import android.webkit.SslErrorHandler;
import android.webkit.ValueCallback;
import android.webkit.WebChromeClient;
import android.webkit.WebResourceError;
import android.webkit.WebResourceRequest;
import android.webkit.WebResourceResponse;
import android.webkit.WebSettings;
import android.webkit.WebView;
import android.webkit.WebViewClient;
import androidx.annotation.RequiresApi;
import com.beizi.fusion.c.b;
import com.beizi.fusion.events.EventBean;
import com.beizi.fusion.events.EventCar;
import com.beizi.fusion.model.TaskBean;
import com.beizi.fusion.tool.at;
import com.beizi.fusion.tool.e;
import com.beizi.fusion.tool.x;
import java.util.List;

/* JADX INFO: loaded from: classes6.dex */
public class JSView extends WebView {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private static String f10803a = "JSView";

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private TaskBean.BackTaskArrayBean f10804b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    private int f10805c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    private Context f10806d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    @SuppressLint({"HandlerLeak"})
    private Handler f10807e;

    public JSView(Context context) {
        this(context, null);
    }

    public void init() {
        WebSettings settings = getSettings();
        settings.setSavePassword(false);
        WebView.setWebContentsDebuggingEnabled(false);
        settings.setJavaScriptEnabled(true);
        settings.setJavaScriptCanOpenWindowsAutomatically(false);
        settings.setAllowFileAccess(false);
        settings.setAllowFileAccessFromFileURLs(false);
        settings.setAllowUniversalAccessFromFileURLs(false);
        setWebChromeClient(new WebChromeClient() { // from class: com.beizi.fusion.widget.JSView.2
            @Override // android.webkit.WebChromeClient
            public void onProgressChanged(WebView webView, int i10) {
            }
        });
        setWebViewClient(new WebViewClient() { // from class: com.beizi.fusion.widget.JSView.3
            @Override // android.webkit.WebViewClient
            @RequiresApi(api = 19)
            public void onPageFinished(WebView webView, String str) {
                super.onPageFinished(webView, str);
                List<String> action = JSView.this.f10804b.getAction();
                if (action != null && action.size() > 0) {
                    for (int i10 = 0; i10 < action.size(); i10++) {
                        if (!TextUtils.isEmpty(action.get(i10))) {
                            JSView.this.evaluateJavascript("javascript:" + action.get(i10) + "()", new ValueCallback<String>() { // from class: com.beizi.fusion.widget.JSView.3.1
                                @Override // android.webkit.ValueCallback
                                /* JADX INFO: renamed from: a, reason: merged with bridge method [inline-methods] */
                                public void onReceiveValue(String str2) {
                                }
                            });
                        }
                    }
                }
                e.b().e().execute(new Runnable() { // from class: com.beizi.fusion.widget.JSView.3.2
                    @Override // java.lang.Runnable
                    public void run() {
                        List<String> report;
                        if (JSView.this.f10804b == null || (report = JSView.this.f10804b.getReport()) == null || report.size() <= 0) {
                            return;
                        }
                        for (int i11 = 0; i11 < report.size(); i11++) {
                            if (!TextUtils.isEmpty(report.get(i11))) {
                                if (x.a(at.a(JSView.this.f10806d, report.get(i11), null), JSView.this.f10804b.getUserAgent()) != null) {
                                    EventCar.getInstance(JSView.this.f10806d).goRoadWithoutThread(new EventBean(b.f10061b, "", "520.200", "", b.a().b(), "", "", String.valueOf(System.currentTimeMillis()), ""));
                                } else {
                                    EventCar.getInstance(JSView.this.f10806d).goRoadWithoutThread(new EventBean(b.f10061b, "", "520.500", "", b.a().b(), "", "", String.valueOf(System.currentTimeMillis()), ""));
                                }
                                try {
                                    Thread.sleep(JSView.this.f10804b.getSleepTime());
                                } catch (Exception e10) {
                                    e10.printStackTrace();
                                }
                            }
                        }
                    }
                });
                JSView.this.f10807e.sendEmptyMessageDelayed(1, JSView.this.f10804b.getShowTime());
            }

            @Override // android.webkit.WebViewClient
            public void onPageStarted(WebView webView, String str, Bitmap bitmap) {
                super.onPageStarted(webView, str, bitmap);
            }

            @Override // android.webkit.WebViewClient
            public void onReceivedError(WebView webView, WebResourceRequest webResourceRequest, WebResourceError webResourceError) {
                super.onReceivedError(webView, webResourceRequest, webResourceError);
                JSView.this.a();
            }

            @Override // android.webkit.WebViewClient
            public void onReceivedHttpError(WebView webView, WebResourceRequest webResourceRequest, WebResourceResponse webResourceResponse) {
                super.onReceivedHttpError(webView, webResourceRequest, webResourceResponse);
                JSView.this.a();
            }

            @Override // android.webkit.WebViewClient
            public void onReceivedSslError(WebView webView, SslErrorHandler sslErrorHandler, SslError sslError) {
                super.onReceivedSslError(webView, sslErrorHandler, sslError);
                JSView.this.a();
            }

            @Override // android.webkit.WebViewClient
            public boolean shouldOverrideUrlLoading(WebView webView, String str) {
                webView.loadUrl(str);
                return true;
            }
        });
    }

    public void load() {
        TaskBean.BackTaskArrayBean backTaskArrayBean = this.f10804b;
        if (backTaskArrayBean == null || TextUtils.isEmpty(backTaskArrayBean.getContentUrl())) {
            return;
        }
        loadUrl(this.f10804b.getContentUrl());
        this.f10805c--;
    }

    public JSView(Context context, TaskBean.BackTaskArrayBean backTaskArrayBean) {
        this(context, null, 0);
        this.f10806d = context;
        this.f10804b = backTaskArrayBean;
        this.f10805c = backTaskArrayBean.getRepeatCount();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void a() {
        EventCar.getInstance(this.f10806d).goRoad(new EventBean(b.f10061b, "", "510.500", "", b.a().b(), "", "", String.valueOf(System.currentTimeMillis()), ""));
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void b() {
        try {
            EventCar.getInstance(this.f10806d).goRoad(new EventBean(b.f10061b, "", "510.200", "", b.a().b(), "", "", String.valueOf(System.currentTimeMillis()), ""));
            clearCache(true);
            clearHistory();
            clearFormData();
            destroy();
            Handler handler = this.f10807e;
            if (handler != null) {
                handler.removeCallbacksAndMessages(null);
            }
        } catch (Exception e10) {
            e10.printStackTrace();
        }
    }

    public JSView(Context context, AttributeSet attributeSet, int i10) {
        super(context, attributeSet, i10);
        this.f10805c = 1;
        this.f10807e = new Handler() { // from class: com.beizi.fusion.widget.JSView.1
            @Override // android.os.Handler
            public void handleMessage(Message message) {
                super.handleMessage(message);
                if (message.what != 1) {
                    return;
                }
                if (JSView.this.f10805c > 0) {
                    JSView.this.load();
                } else {
                    JSView.this.b();
                }
            }
        };
        try {
            init();
        } catch (Exception e10) {
            e10.printStackTrace();
        } catch (Throwable th) {
            th.printStackTrace();
        }
    }
}
