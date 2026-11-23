package com.join.mgps.dialog;

import android.app.Activity;
import android.app.Dialog;
import android.content.Context;
import android.content.DialogInterface;
import android.graphics.Bitmap;
import android.net.http.SslError;
import android.os.Bundle;
import android.os.Handler;
import android.os.Message;
import android.view.KeyEvent;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.webkit.GeolocationPermissions;
import android.webkit.SslErrorHandler;
import android.webkit.WebChromeClient;
import android.webkit.WebSettings;
import android.webkit.WebView;
import android.webkit.WebViewClient;
import android.widget.LinearLayout;
import android.widget.TextView;
import androidx.annotation.NonNull;
import com.join.android.app.mgsim.wufun.R;
import com.join.mgps.Util.IntentDateBean;
import com.join.mgps.Util.IntentUtil;
import com.join.mgps.Util.a3;
import com.join.mgps.pref.PrefDef_;
import com.mob.MobSDK;
import com.mob.OperationCallback;
import com.papa.sim.statistic.Event;
import com.papa.sim.statistic.Ext;
import java.lang.reflect.Method;

/* JADX INFO: loaded from: classes3.dex */
public class p2 extends Dialog {

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    Activity f67746b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    TextView f67747c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    WebView f67748d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    String f67749e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    int f67750f;

    /* JADX INFO: renamed from: g, reason: collision with root package name */
    g f67751g;

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    Handler f67752h;

    class a extends WebChromeClient {
        a() {
        }

        @Override // android.webkit.WebChromeClient
        public void onGeolocationPermissionsShowPrompt(String origin, GeolocationPermissions.Callback callback) {
            super.onGeolocationPermissionsShowPrompt(origin, callback);
            callback.invoke(origin, true, false);
        }
    }

    class b implements View.OnClickListener {
        b() {
        }

        @Override // android.view.View.OnClickListener
        public void onClick(View view) {
            p2 p2Var = p2.this;
            if (p2Var.f67750f == 1) {
                com.papa.sim.statistic.t.l(p2Var.f67746b).R1(Event.disagreePrivacyProtocol, new Ext());
                new p2(p2.this.f67746b, 2, com.join.mgps.rpc.h.f72349j + com.constant.b.f24650b, p2.this.f67751g).show();
            } else {
                com.papa.sim.statistic.t.l(p2Var.f67746b).R1(Event.disagreeExitApp, new Ext());
                p2.this.f67746b.finish();
                MobSDK.submitPolicyGrantResult(false, (OperationCallback<Void>) null);
            }
            p2.this.dismiss();
        }
    }

    class c implements View.OnClickListener {
        c() {
        }

        @Override // android.view.View.OnClickListener
        public void onClick(View view) {
            p2 p2Var = p2.this;
            if (p2Var.f67750f == 1) {
                com.papa.sim.statistic.t.l(p2Var.f67746b).R1(Event.agreePrivacyProtocol, new Ext());
                new PrefDef_(p2.this.f67746b).firstShowUserPermiss().g(Boolean.FALSE);
                p2.this.f67751g.a();
            } else {
                com.papa.sim.statistic.t.l(p2Var.f67746b).R1(Event.disagreeThinkAgain, new Ext());
                new p2(p2.this.f67746b, 1, com.join.mgps.rpc.h.f72349j + com.constant.b.f24649a, p2.this.f67751g).show();
            }
            p2.this.dismiss();
        }
    }

    class d implements DialogInterface.OnKeyListener {
        d() {
        }

        @Override // android.content.DialogInterface.OnKeyListener
        public boolean onKey(DialogInterface dialog, int keyCode, KeyEvent event) {
            if (keyCode != 4) {
                return false;
            }
            if (p2.this.f67750f == 2) {
                new p2(p2.this.f67746b, 1, com.join.mgps.rpc.h.f72349j + com.constant.b.f24649a, p2.this.f67751g).show();
                p2.this.dismiss();
            }
            return true;
        }
    }

    class e extends Handler {
        e() {
        }

        @Override // android.os.Handler
        public void handleMessage(@NonNull Message msg) {
            if (msg.what == 1) {
                p2 p2Var = p2.this;
                p2Var.f67748d.loadUrl(p2Var.f67749e);
                return;
            }
            p2 p2Var2 = p2.this;
            if (p2Var2.f67750f == 1) {
                p2Var2.f67748d.loadUrl("file:///android_asset/dialogxieyi1.html");
            } else {
                p2Var2.f67748d.loadUrl("file:///android_asset/dialogxieyi2.html");
            }
        }
    }

    class f extends Thread {
        f() {
        }

        @Override // java.lang.Thread, java.lang.Runnable
        public void run() {
            if (com.join.android.app.common.utils.m.l()) {
                p2.this.f67752h.sendEmptyMessage(1);
            } else {
                p2.this.f67752h.sendEmptyMessage(2);
            }
        }
    }

    public interface g {
        void a();
    }

    private class h extends WebViewClient {
        public h(Context context) {
        }

        @Override // android.webkit.WebViewClient
        public void onPageStarted(WebView view, String url2, Bitmap favicon) {
            super.onPageStarted(view, url2, favicon);
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
        public boolean shouldOverrideUrlLoading(WebView view, String url2) {
            if (!com.join.android.app.common.utils.m.j(p2.this.f67746b)) {
                a3.b(p2.this.f67746b).d(p2.this.f67746b.getString(R.string.net_connect_failed));
                return true;
            }
            IntentDateBean intentDateBean = new IntentDateBean();
            intentDateBean.setLink_type(4);
            intentDateBean.setLink_type_val(url2);
            intentDateBean.setObject("悟饭游戏厅用户使用协议");
            IntentUtil.getInstance().intentActivity(p2.this.f67746b, intentDateBean);
            return true;
        }
    }

    public p2(Activity context, int from, String url, g hasPermissListener) {
        super(context, R.style.MyDialog);
        this.f67752h = new e();
        this.f67746b = context;
        this.f67749e = url;
        this.f67750f = from;
        this.f67751g = hasPermissListener;
    }

    public void a() {
        if (com.join.android.app.common.utils.m.j(this.f67746b)) {
            new f().start();
        } else if (this.f67750f == 1) {
            this.f67748d.loadUrl("file:///android_asset/dialogxieyi1.html");
        } else {
            this.f67748d.loadUrl("file:///android_asset/dialogxieyi2.html");
        }
    }

    public void b(String txt) {
        this.f67747c.setText(txt);
    }

    @Override // android.app.Dialog
    protected void onCreate(Bundle savedInstanceState) {
        super.onCreate(savedInstanceState);
        if (this.f67750f == 1) {
            com.papa.sim.statistic.t.l(this.f67746b).R1(Event.showPrivacyProtocol, new Ext());
        } else {
            com.papa.sim.statistic.t.l(this.f67746b).R1(Event.showDisagreePrivacyProtocol, new Ext());
        }
        requestWindowFeature(1);
        requestWindowFeature(-1);
        setCancelable(false);
        setCanceledOnTouchOutside(false);
        View viewInflate = LayoutInflater.from(this.f67746b).inflate(R.layout.dialog_permiss_customer_alert, (ViewGroup) null);
        viewInflate.setMinimumWidth(com.join.android.app.common.utils.q.n(this.f67746b).C(this.f67746b));
        this.f67748d = (WebView) viewInflate.findViewById(R.id.info);
        TextView textView = (TextView) viewInflate.findViewById(R.id.dialog_button_cancel);
        TextView textView2 = (TextView) viewInflate.findViewById(R.id.dialog_button_ok);
        LinearLayout.LayoutParams layoutParams = (LinearLayout.LayoutParams) this.f67748d.getLayoutParams();
        if (this.f67750f == 1) {
            layoutParams.height = this.f67746b.getResources().getDimensionPixelOffset(R.dimen.wdp780);
        } else {
            layoutParams.height = this.f67746b.getResources().getDimensionPixelOffset(R.dimen.wdp380);
        }
        this.f67748d.setLayoutParams(layoutParams);
        this.f67748d.setBackgroundColor(0);
        this.f67748d.setWebViewClient(new h(this.f67746b));
        this.f67748d.getSettings().setUseWideViewPort(true);
        this.f67748d.getSettings().setSupportZoom(false);
        this.f67748d.getSettings().setBuiltInZoomControls(false);
        this.f67748d.setHorizontalScrollBarEnabled(false);
        this.f67748d.setVerticalScrollBarEnabled(false);
        this.f67748d.setLayerType(0, null);
        WebSettings settings = this.f67748d.getSettings();
        settings.setJavaScriptEnabled(true);
        settings.setDomStorageEnabled(true);
        settings.setMixedContentMode(0);
        try {
            Method method = Class.forName("android.webkit.WebView").getMethod("setWebContentsDebuggingEnabled", Boolean.TYPE);
            if (method != null) {
                method.setAccessible(true);
                method.invoke(null, Boolean.TRUE);
            }
        } catch (Exception unused) {
        }
        this.f67748d.setFocusable(true);
        this.f67748d.setDrawingCacheEnabled(true);
        this.f67748d.setScrollBarStyle(0);
        this.f67748d.setWebChromeClient(new a());
        if (this.f67750f == 1) {
            textView.setText("不同意");
            textView2.setText("同意");
        } else {
            textView.setText("退出应用");
            textView2.setText("我再想想");
        }
        textView.setOnClickListener(new b());
        textView2.setOnClickListener(new c());
        setOnKeyListener(new d());
        setContentView(viewInflate);
    }

    @Override // android.app.Dialog
    public void show() {
        super.show();
        a();
    }
}
