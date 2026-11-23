package com.join.mgps.customview;

import android.annotation.SuppressLint;
import android.content.Context;
import android.os.Handler;
import android.os.Message;
import android.util.AttributeSet;
import android.view.MotionEvent;
import android.webkit.JavascriptInterface;
import android.webkit.WebSettings;
import android.webkit.WebView;
import com.haima.hmcp.beans.ClipBoardItemData;

/* JADX INFO: loaded from: classes3.dex */
public class CopyTextViewNew extends WebView {

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private float f64676b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    private float f64677c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    private float f64678d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    private String f64679e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    @SuppressLint({"HandlerLeak"})
    Handler f64680f;

    class a extends Handler {
        a() {
        }

        @Override // android.os.Handler
        public void handleMessage(Message msg) {
            if (msg.what == 1) {
                float fFloatValue = ((Float) msg.obj).floatValue();
                CopyTextViewNew.this.getLayoutParams().height = (int) (fFloatValue * CopyTextViewNew.this.getResources().getDisplayMetrics().density);
            }
            super.handleMessage(msg);
        }
    }

    private class b {
        private b() {
        }

        @JavascriptInterface
        public void resize(final float height) {
            StringBuilder sb2 = new StringBuilder();
            sb2.append("tbl>>>>:");
            sb2.append(height);
            sb2.append(">>>>:");
            sb2.append(CopyTextViewNew.this.f64679e);
            Message message = new Message();
            message.what = 1;
            message.obj = Float.valueOf(height);
            CopyTextViewNew.this.f64680f.sendMessage(message);
        }
    }

    public CopyTextViewNew(Context context) {
        super(context);
        this.f64679e = "";
        this.f64680f = new a();
        b();
    }

    private void b() {
        this.f64676b = 20.0f;
        this.f64677c = 20.0f;
        this.f64678d = 24.0f;
        getSettings().setBuiltInZoomControls(false);
        getSettings().setTextSize(WebSettings.TextSize.NORMAL);
        getSettings().setCacheMode(2);
    }

    public String getText() {
        return this.f64679e;
    }

    @Override // android.webkit.WebView, android.view.View
    public boolean onTouchEvent(MotionEvent ev) {
        StringBuilder sb2 = new StringBuilder();
        sb2.append("touchevent");
        sb2.append(super.onTouchEvent(ev));
        return false;
    }

    public void setText(String str) {
        this.f64679e = str;
        loadDataWithBaseURL(null, "<html><head><style type=\"text/css\">body{font-size:14px}</style></head><body text='#373737' style='margin:0;padding:0;line-height:" + this.f64676b + "px'>" + str.replace("\n", "<br />") + "</body></html>", ClipBoardItemData.TYPE_TEXT_HTML, "utf-8", null);
    }

    public void setTextForum(String str) {
        this.f64679e = str;
        loadDataWithBaseURL(null, "<html><head><style type=\"text/css\">body{font-size:16px}</style></head><body text='#373737' style='margin:0;padding:0;line-height:" + this.f64678d + "px'>" + str.replace("\n", "<br />") + "</body></html>", ClipBoardItemData.TYPE_TEXT_HTML, "utf-8", null);
    }

    public void setTextHeader(String str) {
        this.f64679e = str;
        loadDataWithBaseURL(null, "<html><head><style type=\"text/css\">body{font-size:14px}</style></head><body text='#373737' style='margin:0;padding:0;line-height:" + this.f64677c + "px'>" + str.replace("\n", "<br />") + "</body></html>", ClipBoardItemData.TYPE_TEXT_HTML, "utf-8", null);
    }

    public CopyTextViewNew(Context context, AttributeSet attrs) {
        super(context, attrs);
        this.f64679e = "";
        this.f64680f = new a();
        b();
    }

    public CopyTextViewNew(Context context, AttributeSet attrs, int defStyle) {
        super(context, attrs, defStyle);
        this.f64679e = "";
        this.f64680f = new a();
        b();
    }
}
