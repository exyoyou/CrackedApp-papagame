package com.beizi.ad.v2.activity;

import android.app.Activity;
import android.content.ComponentName;
import android.content.Intent;
import android.graphics.Bitmap;
import android.graphics.Rect;
import android.net.Uri;
import android.os.Bundle;
import android.text.TextUtils;
import android.view.MotionEvent;
import android.view.View;
import android.webkit.ConsoleMessage;
import android.webkit.GeolocationPermissions;
import android.webkit.JsResult;
import android.webkit.WebChromeClient;
import android.webkit.WebResourceRequest;
import android.webkit.WebView;
import android.webkit.WebViewClient;
import android.widget.FrameLayout;
import android.widget.ImageView;
import android.widget.ProgressBar;
import android.widget.RelativeLayout;
import android.widget.VideoView;
import androidx.annotation.Nullable;
import androidx.annotation.RequiresApi;
import com.beizi.ad.internal.e.h;
import com.beizi.ad.internal.e.k;
import com.beizi.ad.internal.e.n;
import com.beizi.ad.internal.e.u;
import com.beizi.ad.internal.view.b;
import com.beizi.ad.model.c;
import com.beizi.ad.model.j;
import com.beizi.fusion.R;
import com.beizi.fusion.tool.ai;
import com.bykv.vk.component.ttvideo.player.C;
import com.haima.hmcp.Constants;
import java.util.HashMap;
import java.util.Iterator;
import java.util.List;
import java.util.Map;

/* JADX INFO: loaded from: classes6.dex */
public class BeiZiLandingPageActivity extends Activity {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private WebView f9741a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private ProgressBar f9742b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    private boolean f9743c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    private boolean f9744d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    private String f9745e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    private String f9746f;

    /* JADX INFO: renamed from: g, reason: collision with root package name */
    private boolean f9747g;

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    private boolean f9748h;

    /* JADX INFO: renamed from: i, reason: collision with root package name */
    private c.b.C0229b f9749i;

    /* JADX INFO: renamed from: j, reason: collision with root package name */
    private boolean f9750j;

    /* JADX INFO: renamed from: l, reason: collision with root package name */
    private j f9752l;

    /* JADX INFO: renamed from: m, reason: collision with root package name */
    private View f9753m;

    /* JADX INFO: renamed from: n, reason: collision with root package name */
    private RelativeLayout f9754n;

    /* JADX INFO: renamed from: o, reason: collision with root package name */
    private ImageView f9755o;

    /* JADX INFO: renamed from: p, reason: collision with root package name */
    private boolean f9756p;

    /* JADX INFO: renamed from: x, reason: collision with root package name */
    private long f9764x;

    /* JADX INFO: renamed from: y, reason: collision with root package name */
    private boolean f9765y;

    /* JADX INFO: renamed from: k, reason: collision with root package name */
    private boolean f9751k = true;

    /* JADX INFO: renamed from: q, reason: collision with root package name */
    private int f9757q = -1;

    /* JADX INFO: renamed from: r, reason: collision with root package name */
    private int f9758r = -1;

    /* JADX INFO: renamed from: s, reason: collision with root package name */
    private int f9759s = -1;

    /* JADX INFO: renamed from: t, reason: collision with root package name */
    private int f9760t = -1;

    /* JADX INFO: renamed from: u, reason: collision with root package name */
    private int f9761u = -1;

    /* JADX INFO: renamed from: v, reason: collision with root package name */
    private int f9762v = -1;

    /* JADX INFO: renamed from: w, reason: collision with root package name */
    private int f9763w = 0;

    @Override // android.app.Activity
    public void onBackPressed() {
        try {
            RelativeLayout relativeLayout = this.f9754n;
            if (relativeLayout == null || relativeLayout.getVisibility() != 0) {
                WebView webView = this.f9741a;
                if (webView == null || !webView.canGoBack()) {
                    f();
                } else {
                    this.f9741a.goBack();
                }
            }
        } catch (Exception e10) {
            e10.printStackTrace();
        }
    }

    @Override // android.app.Activity
    protected void onCreate(@Nullable Bundle bundle) {
        super.onCreate(bundle);
        setContentView(R.layout.activtiy_beizi_landingpage);
        a();
        b();
    }

    @Override // android.app.Activity
    protected void onResume() {
        List<String> listF;
        super.onResume();
        try {
            if (!this.f9751k) {
                this.f9750j = false;
                c.b.C0229b c0229b = this.f9749i;
                if (c0229b != null && (listF = c0229b.f()) != null && listF.size() > 0) {
                    List<String> listJ = this.f9749i.j();
                    this.f9749i.q(null);
                    k.a(listJ);
                }
            }
            if (this.f9761u == 1 && System.currentTimeMillis() - this.f9764x < this.f9762v) {
                e();
            }
            this.f9764x = 0L;
        } catch (Exception e10) {
            e10.printStackTrace();
        }
        this.f9751k = false;
    }

    @Override // android.app.Activity
    protected void onStop() {
        super.onStop();
        try {
            this.f9764x = System.currentTimeMillis();
            if (this.f9750j) {
                c.b.C0229b c0229b = this.f9749i;
                if (c0229b != null) {
                    List<String> listF = c0229b.f();
                    this.f9749i.m(null);
                    k.a(listF);
                }
                g();
            }
        } catch (Exception e10) {
            e10.printStackTrace();
        }
    }

    private void d() {
        if (this.f9741a == null || TextUtils.isEmpty(this.f9746f)) {
            return;
        }
        u.a(this.f9741a);
        this.f9741a.loadUrl(this.f9746f, com.beizi.ad.lance.a.k.a());
        this.f9741a.setWebViewClient(new WebViewClient() { // from class: com.beizi.ad.v2.activity.BeiZiLandingPageActivity.6
            @Override // android.webkit.WebViewClient
            public void onPageFinished(WebView webView, String str) {
                BeiZiLandingPageActivity.this.c();
            }

            @Override // android.webkit.WebViewClient
            @RequiresApi(api = 21)
            public boolean shouldOverrideUrlLoading(WebView webView, WebResourceRequest webResourceRequest) {
                try {
                    Uri url = webResourceRequest.getUrl();
                    if (url == null) {
                        return false;
                    }
                    String string = url.toString();
                    if (!string.startsWith("http")) {
                        if (BeiZiLandingPageActivity.this.b(string) && !BeiZiLandingPageActivity.this.d(string)) {
                            BeiZiLandingPageActivity.this.a(string);
                        }
                        return true;
                    }
                    Map<String, String> requestHeaders = webResourceRequest.getRequestHeaders();
                    if (requestHeaders == null || requestHeaders.size() == 0) {
                        requestHeaders = new HashMap<>();
                    }
                    requestHeaders.put("X-Requested-With", "");
                    webView.loadUrl(string, requestHeaders);
                    return true;
                } catch (Exception e10) {
                    e10.printStackTrace();
                    return true;
                }
            }

            @Override // android.webkit.WebViewClient
            public boolean shouldOverrideUrlLoading(WebView webView, String str) {
                if (str.startsWith("http")) {
                    return false;
                }
                if (!BeiZiLandingPageActivity.this.b(str) || BeiZiLandingPageActivity.this.d(str)) {
                    return true;
                }
                BeiZiLandingPageActivity.this.a(str);
                return true;
            }
        });
        this.f9741a.setWebChromeClient(new b(this) { // from class: com.beizi.ad.v2.activity.BeiZiLandingPageActivity.7
            @Override // com.beizi.ad.internal.view.a, android.webkit.WebChromeClient
            public boolean onConsoleMessage(ConsoleMessage consoleMessage) {
                return true;
            }

            @Override // com.beizi.ad.internal.view.b, android.webkit.WebChromeClient
            public void onGeolocationPermissionsShowPrompt(String str, GeolocationPermissions.Callback callback) {
                if (callback != null) {
                    try {
                        callback.invoke(str, false, false);
                    } catch (Throwable th) {
                        th.printStackTrace();
                    }
                }
            }

            @Override // com.beizi.ad.internal.view.a, android.webkit.WebChromeClient
            public boolean onJsAlert(WebView webView, String str, String str2, JsResult jsResult) {
                jsResult.confirm();
                return true;
            }

            @Override // android.webkit.WebChromeClient
            public void onProgressChanged(WebView webView, int i10) {
                if (BeiZiLandingPageActivity.this.f9742b == null) {
                    return;
                }
                if (i10 < 100 && BeiZiLandingPageActivity.this.f9742b.getVisibility() == 8) {
                    BeiZiLandingPageActivity.this.f9742b.setVisibility(0);
                }
                BeiZiLandingPageActivity.this.f9742b.setProgress(i10);
                if (i10 == 100) {
                    BeiZiLandingPageActivity.this.f9742b.setVisibility(8);
                }
            }

            @Override // com.beizi.ad.internal.view.b, android.webkit.WebChromeClient
            public void onShowCustomView(View view, WebChromeClient.CustomViewCallback customViewCallback) {
                super.onShowCustomView(view, customViewCallback);
                if (view instanceof FrameLayout) {
                    FrameLayout frameLayout = (FrameLayout) view;
                    if (frameLayout.getFocusedChild() instanceof VideoView) {
                        VideoView videoView = (VideoView) frameLayout.getFocusedChild();
                        frameLayout.removeView(videoView);
                        BeiZiLandingPageActivity.this.setContentView(videoView);
                        videoView.start();
                    }
                }
            }
        });
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void e() {
        try {
            if (!this.f9756p) {
                int i10 = this.f9763w + 1;
                this.f9763w = i10;
                int i11 = this.f9757q;
                if (i11 <= 1 && this.f9759s <= 0) {
                    g();
                    return;
                }
                if (this.f9759s == 1) {
                    if (i11 == 1) {
                        if (i10 >= this.f9760t + 1) {
                            g();
                            return;
                        }
                        return;
                    } else {
                        if (i10 >= this.f9760t) {
                            g();
                            return;
                        }
                        return;
                    }
                }
                return;
            }
            if (TextUtils.isEmpty(this.f9745e)) {
                int i12 = this.f9763w + 1;
                this.f9763w = i12;
                int i13 = this.f9757q;
                if (i13 <= 1 && this.f9759s <= 0) {
                    g();
                    return;
                }
                if (this.f9759s == 1) {
                    if (i13 == 1) {
                        if (i12 >= this.f9760t + 1) {
                            g();
                            return;
                        }
                        return;
                    } else {
                        if (i12 >= this.f9760t) {
                            g();
                            return;
                        }
                        return;
                    }
                }
                return;
            }
            this.f9750j = true;
            this.f9747g = true;
            Uri uri = Uri.parse(this.f9745e);
            if (uri.getScheme() != null && uri.getScheme().equals("bzopen") && !TextUtils.isEmpty(uri.getHost()) && uri.getPathSegments().size() > 0) {
                Intent intent = new Intent();
                intent.setAction("android.intent.action.MAIN");
                intent.setFlags(C.ENCODING_PCM_MU_LAW);
                intent.addCategory("android.intent.category.LAUNCHER");
                String queryParameter = uri.getQueryParameter("flags");
                if (!TextUtils.isEmpty(queryParameter)) {
                    try {
                        if (queryParameter.startsWith("0x") || queryParameter.startsWith("0X")) {
                            intent.setFlags(Integer.parseInt(queryParameter.substring(2), 16));
                        } else {
                            intent.setFlags(Integer.parseInt(queryParameter));
                        }
                    } catch (Exception e10) {
                        e10.printStackTrace();
                    }
                }
                intent.setComponent(new ComponentName(uri.getHost(), uri.getPathSegments().get(0)));
                String queryParameter2 = uri.getQueryParameter("rect");
                if (!TextUtils.isEmpty(queryParameter2)) {
                    try {
                        String[] strArrSplit = queryParameter2.split(":");
                        if (strArrSplit.length == 4) {
                            Rect rect = new Rect();
                            rect.set(Integer.parseInt(strArrSplit[0]), Integer.parseInt(strArrSplit[1]), Integer.parseInt(strArrSplit[2]), Integer.parseInt(strArrSplit[3]));
                            intent.setSourceBounds(rect);
                        }
                    } catch (Exception e11) {
                        e11.printStackTrace();
                    }
                }
                startActivity(intent);
            } else if (this.f9745e.startsWith("hwpps://landingpage")) {
                Intent intent2 = new Intent();
                intent2.setData(uri);
                intent2.addFlags(C.ENCODING_PCM_MU_LAW);
                startActivity(intent2);
            } else if (this.f9745e.startsWith(Constants.WS_MESSAGE_TYPE_INTENT)) {
                Intent uri2 = Intent.parseUri(this.f9745e, 1);
                uri2.addFlags(C.ENCODING_PCM_MU_LAW);
                startActivity(uri2);
            } else {
                Intent intent3 = new Intent("android.intent.action.VIEW", uri);
                intent3.addFlags(805339136);
                startActivity(intent3);
            }
            c.b.C0229b c0229b = this.f9749i;
            if (c0229b != null) {
                List<String> listH = c0229b.h();
                this.f9749i.o(null);
                k.a(listH);
                List<String> listE = this.f9749i.e();
                this.f9749i.l(null);
                k.a(listE);
            }
            int i14 = this.f9763w + 1;
            this.f9763w = i14;
            int i15 = this.f9757q;
            if (i15 > 1 || this.f9759s > 0) {
                if (this.f9759s == 1) {
                    if (i15 == 1) {
                        if (i14 < this.f9760t + 1) {
                        }
                    } else {
                        if (i14 < this.f9760t) {
                        }
                    }
                }
            }
        } catch (Throwable th) {
            try {
                th.printStackTrace();
                c.b.C0229b c0229b2 = this.f9749i;
                if (c0229b2 != null) {
                    List<String> listG = c0229b2.g();
                    this.f9749i.n(null);
                    k.a(listG);
                }
                this.f9763w++;
                if (this.f9757q > 1 || this.f9759s > 0) {
                }
            } finally {
                int i16 = this.f9763w + 1;
                this.f9763w = i16;
                int i17 = this.f9757q;
                if (i17 <= 1 && this.f9759s <= 0) {
                    g();
                } else if (this.f9759s == 1) {
                    if (i17 == 1) {
                        if (i16 >= this.f9760t + 1) {
                            g();
                        }
                    } else if (i16 >= this.f9760t) {
                        g();
                    }
                }
            }
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void f() {
        try {
            WebView webView = this.f9741a;
            if (webView != null) {
                webView.destroy();
            }
            finish();
        } catch (Exception e10) {
            e10.printStackTrace();
        }
    }

    private void g() {
        try {
            RelativeLayout relativeLayout = this.f9754n;
            if (relativeLayout != null) {
                relativeLayout.setVisibility(8);
                this.f9754n.setOnClickListener(null);
            }
            View view = this.f9753m;
            if (view != null) {
                view.setVisibility(8);
                this.f9753m.setOnClickListener(null);
            }
        } catch (Exception e10) {
            e10.printStackTrace();
        }
    }

    private void b() {
        try {
            this.f9741a = (WebView) findViewById(R.id.lp_web_view);
            ((ImageView) findViewById(R.id.lp_close_iv)).setOnClickListener(new View.OnClickListener() { // from class: com.beizi.ad.v2.activity.BeiZiLandingPageActivity.1
                @Override // android.view.View.OnClickListener
                public void onClick(View view) {
                    BeiZiLandingPageActivity.this.f();
                }
            });
            this.f9742b = (ProgressBar) findViewById(R.id.lp_progress_bar);
            this.f9753m = findViewById(R.id.lp_mask_view);
            this.f9754n = (RelativeLayout) findViewById(R.id.lp_dialog_container_rl);
            this.f9755o = (ImageView) findViewById(R.id.lp_dialog_iv);
            d();
        } catch (Exception e10) {
            e10.printStackTrace();
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void c() {
        if (this.f9752l == null || TextUtils.isEmpty(this.f9745e) || this.f9765y) {
            return;
        }
        this.f9765y = true;
        String strB = this.f9752l.b();
        if (TextUtils.isEmpty(strB)) {
            return;
        }
        boolean zA = ai.a(this.f9752l.a());
        this.f9756p = zA;
        if (zA) {
            WebView webView = this.f9741a;
            if (webView != null) {
                webView.setOnTouchListener(new View.OnTouchListener() { // from class: com.beizi.ad.v2.activity.BeiZiLandingPageActivity.2
                    @Override // android.view.View.OnTouchListener
                    public boolean onTouch(View view, MotionEvent motionEvent) {
                        if (motionEvent.getAction() != 0) {
                            return false;
                        }
                        BeiZiLandingPageActivity.this.f9748h = true;
                        return false;
                    }
                });
            }
            int iC = this.f9752l.c();
            View view = this.f9753m;
            if (view != null && iC == 1) {
                view.setVisibility(0);
                this.f9753m.setOnClickListener(new View.OnClickListener() { // from class: com.beizi.ad.v2.activity.BeiZiLandingPageActivity.3
                    @Override // android.view.View.OnClickListener
                    public void onClick(View view2) {
                    }
                });
            }
            this.f9757q = this.f9752l.d();
            this.f9758r = this.f9752l.e();
            this.f9759s = this.f9752l.f();
            this.f9760t = this.f9752l.g();
            this.f9761u = this.f9752l.h();
            this.f9762v = this.f9752l.i();
            if (!TextUtils.isEmpty(strB)) {
                RelativeLayout relativeLayout = this.f9754n;
                if (relativeLayout != null) {
                    relativeLayout.setVisibility(0);
                }
                this.f9754n.setOnClickListener(new View.OnClickListener() { // from class: com.beizi.ad.v2.activity.BeiZiLandingPageActivity.4
                    @Override // android.view.View.OnClickListener
                    public void onClick(View view2) {
                        BeiZiLandingPageActivity.this.e();
                    }
                });
                h.a(this).a(strB, new h.a() { // from class: com.beizi.ad.v2.activity.BeiZiLandingPageActivity.5
                    @Override // com.beizi.ad.internal.e.h.a
                    public void a() {
                    }

                    @Override // com.beizi.ad.internal.e.h.a
                    public void a(Bitmap bitmap) {
                        if (bitmap != null) {
                            if (BeiZiLandingPageActivity.this.f9755o != null) {
                                BeiZiLandingPageActivity.this.f9755o.setImageBitmap(bitmap);
                            }
                            if (BeiZiLandingPageActivity.this.f9757q == 1 && BeiZiLandingPageActivity.this.f9758r == 1) {
                                BeiZiLandingPageActivity.this.e();
                            }
                        }
                    }
                });
            } else {
                RelativeLayout relativeLayout2 = this.f9754n;
                if (relativeLayout2 != null) {
                    relativeLayout2.setVisibility(8);
                }
            }
            if (this.f9757q == 1) {
                int i10 = this.f9758r;
                if (i10 == 0 || i10 == 2) {
                    e();
                }
            }
        }
    }

    private void a() {
        try {
            Bundle bundleExtra = getIntent().getBundleExtra("data");
            if (bundleExtra == null) {
                return;
            }
            if (bundleExtra.containsKey("isRedirectionCanJump")) {
                this.f9743c = bundleExtra.getBoolean("isRedirectionCanJump", false);
            }
            if (bundleExtra.containsKey("isDownload")) {
                this.f9744d = bundleExtra.getBoolean("isDownload", false);
            }
            if (bundleExtra.containsKey("landingPageUrl")) {
                this.f9746f = bundleExtra.getString("landingPageUrl");
            }
            if (bundleExtra.containsKey("deeplinkUrl")) {
                this.f9745e = bundleExtra.getString("deeplinkUrl");
            }
            if (bundleExtra.containsKey("followTrackExt")) {
                this.f9749i = (c.b.C0229b) bundleExtra.getSerializable("followTrackExt");
            }
            if (bundleExtra.containsKey("lpOptimizeModule")) {
                this.f9752l = (j) bundleExtra.getSerializable("lpOptimizeModule");
            }
        } catch (Exception e10) {
            e10.printStackTrace();
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public boolean d(String str) {
        try {
            List<String> listL = com.beizi.ad.internal.c.a().l();
            if (listL == null || listL.size() <= 0) {
                return false;
            }
            Iterator<String> it2 = listL.iterator();
            while (it2.hasNext()) {
                if (str.contains(it2.next())) {
                    return true;
                }
            }
            return false;
        } catch (Exception e10) {
            e10.printStackTrace();
            return false;
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public boolean b(String str) {
        return !c(str) || this.f9743c;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void a(String str) {
        if (this.f9756p) {
            if (this.f9747g && !this.f9748h) {
                return;
            } else {
                this.f9747g = true;
            }
        }
        Uri uri = n.a(str) ? null : Uri.parse(str);
        if (uri == null) {
            return;
        }
        this.f9750j = true;
        Intent intent = new Intent("android.intent.action.VIEW", uri);
        intent.setFlags(C.ENCODING_PCM_MU_LAW);
        try {
            startActivity(intent);
            c.b.C0229b c0229b = this.f9749i;
            if (c0229b != null) {
                List<String> listH = c0229b.h();
                this.f9749i.o(null);
                k.a(listH);
                List<String> listE = this.f9749i.e();
                this.f9749i.l(null);
                k.a(listE);
            }
        } catch (Exception unused) {
        }
    }

    private boolean c(String str) {
        List<String> listI = com.beizi.ad.internal.c.a().i();
        if (listI != null && listI.size() > 0) {
            Iterator<String> it2 = listI.iterator();
            while (it2.hasNext()) {
                if (str.contains(it2.next())) {
                    return true;
                }
            }
        }
        return false;
    }
}
