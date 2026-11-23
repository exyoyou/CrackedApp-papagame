package com.windmill.gdt;

import android.app.Dialog;
import android.content.Context;
import android.content.DialogInterface;
import android.text.TextUtils;
import android.view.View;
import android.view.ViewGroup;
import android.view.Window;
import android.view.WindowManager;
import android.webkit.WebResourceError;
import android.webkit.WebResourceRequest;
import android.webkit.WebView;
import android.webkit.WebViewClient;
import android.widget.Button;
import android.widget.FrameLayout;
import android.widget.ImageView;
import android.widget.ProgressBar;
import com.czhj.sdk.logger.SigmobLog;
import com.qq.e.comm.compliance.DownloadConfirmCallBack;
import com.windmill.sdk.utils.ViewUtil;

/* JADX INFO: loaded from: classes8.dex */
public final class a extends Dialog implements View.OnClickListener {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    Button f86070a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private int f86071b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    private DownloadConfirmCallBack f86072c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    private WebView f86073d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    private ImageView f86074e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    private ViewGroup f86075f;

    /* JADX INFO: renamed from: g, reason: collision with root package name */
    private ProgressBar f86076g;

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    private Button f86077h;

    /* JADX INFO: renamed from: i, reason: collision with root package name */
    private String f86078i;

    /* JADX INFO: renamed from: j, reason: collision with root package name */
    private boolean f86079j;

    /* JADX INFO: renamed from: com.windmill.gdt.a$a, reason: collision with other inner class name */
    class C1071a extends WebViewClient {
        C1071a() {
        }

        @Override // android.webkit.WebViewClient
        public final void onPageFinished(WebView webView, String str) {
            super.onPageFinished(webView, str);
            if (a.this.f86079j) {
                return;
            }
            a.this.f86076g.setVisibility(8);
            a.this.f86077h.setVisibility(8);
            a.this.f86075f.setVisibility(0);
        }

        @Override // android.webkit.WebViewClient
        public final void onReceivedError(WebView webView, WebResourceRequest webResourceRequest, WebResourceError webResourceError) {
            super.onReceivedError(webView, webResourceRequest, webResourceError);
            SigmobLog.e("doConfirmWithInfo onReceivedError:" + webResourceError + " " + webResourceRequest);
            a.e(a.this);
            a.this.f86076g.setVisibility(8);
            a.this.f86075f.setVisibility(8);
            a.this.f86077h.setVisibility(0);
            a.this.f86077h.setText("重新加载");
            a.this.f86077h.setEnabled(true);
        }
    }

    public a(Context context, String str, DownloadConfirmCallBack downloadConfirmCallBack) {
        int i10;
        super(context, R.style.DownloadConfirmDialogFullScreen);
        this.f86079j = false;
        this.f86072c = downloadConfirmCallBack;
        this.f86078i = str;
        this.f86071b = context.getResources().getConfiguration().orientation;
        requestWindowFeature(1);
        setCanceledOnTouchOutside(true);
        setContentView(R.layout.download_confirm_dialog);
        View viewFindViewById = findViewById(R.id.download_confirm_root);
        int i11 = this.f86071b;
        if (i11 != 1) {
            i10 = i11 == 2 ? R.drawable.download_confirm_background_landscape : i10;
            ImageView imageView = (ImageView) findViewById(R.id.download_confirm_close);
            this.f86074e = imageView;
            imageView.setOnClickListener(this);
            Button button = (Button) findViewById(R.id.download_confirm_reload_button);
            this.f86077h = button;
            button.setOnClickListener(this);
            Button button2 = (Button) findViewById(R.id.download_confirm_confirm);
            this.f86070a = button2;
            button2.setOnClickListener(this);
            this.f86076g = (ProgressBar) findViewById(R.id.download_confirm_progress_bar);
            this.f86075f = (ViewGroup) findViewById(R.id.download_confirm_content);
            FrameLayout frameLayout = (FrameLayout) findViewById(R.id.download_confirm_holder);
            WebView webView = new WebView(getContext());
            this.f86073d = webView;
            webView.getSettings().setJavaScriptEnabled(true);
            this.f86073d.setWebViewClient(new C1071a());
            frameLayout.addView(this.f86073d);
        }
        i10 = R.drawable.download_confirm_background_portrait;
        viewFindViewById.setBackgroundResource(i10);
        ImageView imageView2 = (ImageView) findViewById(R.id.download_confirm_close);
        this.f86074e = imageView2;
        imageView2.setOnClickListener(this);
        Button button3 = (Button) findViewById(R.id.download_confirm_reload_button);
        this.f86077h = button3;
        button3.setOnClickListener(this);
        Button button4 = (Button) findViewById(R.id.download_confirm_confirm);
        this.f86070a = button4;
        button4.setOnClickListener(this);
        this.f86076g = (ProgressBar) findViewById(R.id.download_confirm_progress_bar);
        this.f86075f = (ViewGroup) findViewById(R.id.download_confirm_content);
        FrameLayout frameLayout2 = (FrameLayout) findViewById(R.id.download_confirm_holder);
        WebView webView2 = new WebView(getContext());
        this.f86073d = webView2;
        webView2.getSettings().setJavaScriptEnabled(true);
        this.f86073d.setWebViewClient(new C1071a());
        frameLayout2.addView(this.f86073d);
    }

    private void a(String str) {
        if (!TextUtils.isEmpty(str)) {
            this.f86079j = false;
            SigmobLog.i("download confirm load url:".concat(String.valueOf(str)));
            this.f86073d.loadUrl(str);
        } else {
            this.f86076g.setVisibility(8);
            this.f86075f.setVisibility(8);
            this.f86077h.setVisibility(0);
            this.f86077h.setText("抱歉，应用信息获取失败");
            this.f86077h.setEnabled(false);
        }
    }

    static /* synthetic */ boolean e(a aVar) {
        aVar.f86079j = true;
        return true;
    }

    @Override // android.app.Dialog, android.content.DialogInterface
    public final void cancel() {
        super.cancel();
        DownloadConfirmCallBack downloadConfirmCallBack = this.f86072c;
        if (downloadConfirmCallBack != null) {
            downloadConfirmCallBack.onCancel();
        }
    }

    @Override // android.view.View.OnClickListener
    public final void onClick(View view) {
        if (view == this.f86074e) {
            DownloadConfirmCallBack downloadConfirmCallBack = this.f86072c;
            if (downloadConfirmCallBack != null) {
                downloadConfirmCallBack.onCancel();
            }
            dismiss();
            return;
        }
        if (view != this.f86070a) {
            if (view == this.f86077h) {
                a(this.f86078i);
            }
        } else {
            DownloadConfirmCallBack downloadConfirmCallBack2 = this.f86072c;
            if (downloadConfirmCallBack2 != null) {
                downloadConfirmCallBack2.onConfirm();
            }
            dismiss();
        }
    }

    @Override // android.app.Dialog
    protected final void onStart() {
        int i10;
        int i11 = getContext().getApplicationContext().getResources().getDisplayMetrics().heightPixels;
        int i12 = getContext().getApplicationContext().getResources().getDisplayMetrics().widthPixels;
        Window window = getWindow();
        window.getDecorView().setPadding(0, 0, 0, 0);
        WindowManager.LayoutParams attributes = window.getAttributes();
        int i13 = this.f86071b;
        if (i13 != 1) {
            if (i13 == 2) {
                attributes.width = (int) (((double) i12) * 0.5d);
                attributes.height = -1;
                attributes.gravity = 5;
                i10 = R.style.DownloadConfirmDialogAnimationRight;
            }
            attributes.dimAmount = 0.5f;
            window.setAttributes(attributes);
            setOnShowListener(new DialogInterface.OnShowListener() { // from class: com.windmill.gdt.a.1
                @Override // android.content.DialogInterface.OnShowListener
                public final void onShow(DialogInterface dialogInterface) {
                    try {
                        a.this.getWindow().setWindowAnimations(0);
                    } catch (Throwable unused) {
                    }
                }
            });
        }
        attributes.width = -1;
        attributes.height = (int) (((double) i11) * 0.6d);
        attributes.gravity = 80;
        i10 = R.style.DownloadConfirmDialogAnimationUp;
        attributes.windowAnimations = i10;
        attributes.dimAmount = 0.5f;
        window.setAttributes(attributes);
        setOnShowListener(new DialogInterface.OnShowListener() { // from class: com.windmill.gdt.a.1
            @Override // android.content.DialogInterface.OnShowListener
            public final void onShow(DialogInterface dialogInterface) {
                try {
                    a.this.getWindow().setWindowAnimations(0);
                } catch (Throwable unused) {
                }
            }
        });
    }

    @Override // android.app.Dialog
    protected final void onStop() {
        super.onStop();
        WebView webView = this.f86073d;
        if (webView != null) {
            ViewUtil.removeChildFromParent(webView);
            this.f86073d.destroy();
            this.f86073d = null;
        }
    }

    @Override // android.app.Dialog
    public final void show() {
        super.show();
        try {
            a(this.f86078i);
        } catch (Exception e10) {
            SigmobLog.e("load error url:" + this.f86078i, e10);
        }
    }
}
