package com.papa91;

import android.annotation.SuppressLint;
import android.app.Activity;
import android.graphics.drawable.ColorDrawable;
import android.net.http.SslError;
import android.os.Handler;
import android.os.Message;
import android.view.KeyEvent;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.webkit.JavascriptInterface;
import android.webkit.SslErrorHandler;
import android.webkit.WebChromeClient;
import android.webkit.WebView;
import android.webkit.WebViewClient;
import android.widget.ImageView;
import android.widget.PopupWindow;
import android.widget.TextView;
import com.mgsim.common.R;

/* JADX INFO: loaded from: classes2.dex */
public class VideoStrategyPop extends PopupWindow {
    private Activity context;
    private Handler handler;

    @SuppressLint({"HandlerLeak"})
    private Handler handlerTime;
    private VideoPopListener mVideoPopListener;
    private ImageView popCloseIv;
    private TextView popTimeTv;
    private int times;
    private String url;
    private WebView web;

    public interface VideoPopListener {
        void onClose();
    }

    public VideoStrategyPop(Activity activity, int i10, String str, VideoPopListener videoPopListener) {
        super(activity);
        this.handler = new Handler();
        this.handlerTime = new Handler() { // from class: com.papa91.VideoStrategyPop.1
            @Override // android.os.Handler
            public void handleMessage(Message message) {
                super.handleMessage(message);
                VideoStrategyPop.access$020(VideoStrategyPop.this, 1);
                if (VideoStrategyPop.this.times < 0) {
                    VideoStrategyPop.this.popTimeTv.setVisibility(8);
                    VideoStrategyPop.this.popCloseIv.setVisibility(0);
                    return;
                }
                VideoStrategyPop.this.popTimeTv.setText(String.valueOf(VideoStrategyPop.this.times) + "");
                VideoStrategyPop.this.handlerTime.sendEmptyMessageDelayed(1, 1000L);
            }
        };
        this.context = activity;
        this.url = str;
        setHeight(-1);
        setWidth(-1);
        setOutsideTouchable(false);
        setFocusable(false);
        setBackgroundDrawable(new ColorDrawable(0));
        View viewInflate = LayoutInflater.from(activity).inflate(R.layout.dialog_video_strategy_view, (ViewGroup) null, false);
        viewInflate.setOnKeyListener(new View.OnKeyListener() { // from class: com.papa91.VideoStrategyPop.2
            @Override // android.view.View.OnKeyListener
            public boolean onKey(View view, int i11, KeyEvent keyEvent) {
                return true;
            }
        });
        this.times = i10;
        this.mVideoPopListener = videoPopListener;
        this.web = (WebView) viewInflate.findViewById(R.id.web);
        this.popCloseIv = (ImageView) viewInflate.findViewById(R.id.popCloseIv);
        TextView textView = (TextView) viewInflate.findViewById(R.id.popTimeTv);
        this.popTimeTv = textView;
        textView.setText(i10 + "");
        this.popCloseIv.setOnClickListener(new View.OnClickListener() { // from class: com.papa91.VideoStrategyPop.3
            @Override // android.view.View.OnClickListener
            public void onClick(View view) {
                VideoStrategyPop.this.dismiss();
                if (VideoStrategyPop.this.mVideoPopListener != null) {
                    VideoStrategyPop.this.mVideoPopListener.onClose();
                }
            }
        });
        setContentView(viewInflate);
        setWeb();
    }

    static /* synthetic */ int access$020(VideoStrategyPop videoStrategyPop, int i10) {
        int i11 = videoStrategyPop.times - i10;
        videoStrategyPop.times = i11;
        return i11;
    }

    private void setWeb() {
        this.web.getSettings().setJavaScriptEnabled(true);
        this.web.setWebViewClient(new WebViewClient() { // from class: com.papa91.VideoStrategyPop.4
            @Override // android.webkit.WebViewClient
            public void onPageFinished(WebView webView, String str) {
                super.onPageFinished(webView, str);
                VideoStrategyPop.this.handlerTime.sendEmptyMessageDelayed(1, 1000L);
                webView.loadUrl("javascript:onPageFinished();");
            }

            @Override // android.webkit.WebViewClient
            public void onReceivedSslError(WebView webView, SslErrorHandler sslErrorHandler, SslError sslError) {
                int primaryError = sslError.getPrimaryError();
                if (primaryError == 3 || primaryError == 5) {
                    sslErrorHandler.proceed();
                }
                sslErrorHandler.cancel();
            }

            @Override // android.webkit.WebViewClient
            public boolean shouldOverrideUrlLoading(WebView webView, String str) {
                webView.loadUrl(str);
                return true;
            }
        });
        this.web.addJavascriptInterface(this, "yqw");
        this.web.setWebChromeClient(new WebChromeClient() { // from class: com.papa91.VideoStrategyPop.5
            @Override // android.webkit.WebChromeClient
            public void onShowCustomView(View view, WebChromeClient.CustomViewCallback customViewCallback) {
                super.onShowCustomView(view, customViewCallback);
            }
        });
        this.web.loadUrl("file:///android_asset/h5video.html?videoUrl=" + this.url);
    }

    @Override // android.widget.PopupWindow
    public void dismiss() {
        WebView webView = this.web;
        if (webView != null) {
            webView.destroy();
        }
        super.dismiss();
    }

    public void onMyPause() {
        WebView webView = this.web;
        if (webView != null) {
            webView.onPause();
            this.web.loadUrl("javascript:onPagePause();");
        }
    }

    public void onMyResume() {
        WebView webView = this.web;
        if (webView != null) {
            webView.onResume();
            this.web.loadUrl("javascript:onPageFinished();");
        }
    }

    @JavascriptInterface
    public void videoEndFunction() {
        this.handler.postDelayed(new Runnable() { // from class: com.papa91.VideoStrategyPop.6
            @Override // java.lang.Runnable
            public void run() {
                VideoStrategyPop.this.handlerTime.removeMessages(1);
                VideoStrategyPop.this.popTimeTv.setVisibility(8);
                VideoStrategyPop.this.popCloseIv.setVisibility(0);
            }
        }, 1000L);
    }
}
