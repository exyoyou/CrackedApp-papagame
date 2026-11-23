package com.beizi.ad.v2.g;

import android.animation.ObjectAnimator;
import android.content.Context;
import android.content.Intent;
import android.content.MutableContextWrapper;
import android.graphics.Bitmap;
import android.graphics.Color;
import android.graphics.drawable.BitmapDrawable;
import android.net.http.SslError;
import android.os.CountDownTimer;
import android.os.Handler;
import android.text.Html;
import android.text.TextUtils;
import android.view.View;
import android.view.ViewGroup;
import android.webkit.SslErrorHandler;
import android.webkit.WebResourceError;
import android.webkit.WebResourceRequest;
import android.webkit.WebView;
import android.webkit.WebViewClient;
import android.widget.FrameLayout;
import android.widget.ImageView;
import android.widget.LinearLayout;
import android.widget.TextView;
import com.beizi.ad.internal.activity.DownloadAppInfoActivity;
import com.beizi.ad.internal.e.h;
import com.beizi.ad.internal.e.t;
import com.beizi.ad.internal.e.u;
import com.beizi.ad.internal.f;
import com.beizi.ad.lance.a.c;
import com.beizi.ad.lance.a.q;
import com.beizi.ad.model.i;
import com.beizi.fusion.R;
import com.bykv.vk.component.ttvideo.player.C;
import com.haima.hmcp.Constants;
import com.haima.hmcp.ConstantsInternal;
import com.haima.hmcp.beans.ClipBoardItemData;

/* JADX INFO: loaded from: classes6.dex */
public class b extends com.beizi.ad.v2.a.b {
    private ViewGroup H;
    private View I;
    private com.beizi.ad.a J;
    private CountDownTimer K;
    private String L;
    private i.f M;
    private int N;
    private int O;
    private WebView P;
    private com.beizi.ad.v2.b.a Q;

    public b(Context context, ViewGroup viewGroup, View view, String str) {
        super(context, str, f.NEW_SPLASH);
        this.H = viewGroup;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void E() {
        try {
            i.f fVar = this.M;
            if (fVar == i.f.RENDER_PIC) {
                if (TextUtils.isEmpty(this.L)) {
                    b(3);
                    return;
                } else if (this.L.startsWith("http")) {
                    F();
                    return;
                } else {
                    b(7);
                    return;
                }
            }
            if (fVar != i.f.RENDER_H5) {
                b(3);
            } else {
                if (TextUtils.isEmpty(this.L)) {
                    b(3);
                    return;
                }
                if (this.L.startsWith("http")) {
                    this.L = "<!DOCTYPE html>\n<html lang=\"en\">\n<head>\n  <meta charset=\"UTF-8\">\n  <meta name=\"viewport\" content=\"width=device-width, initial-scale=1.0\">\n  <title>Document</title>\n  <style>\n    html, body { width: 100%; height: 100%; margin: 0; padding: 0 }\n    .material-wrap { overflow: hidden; position: relative; height: 100%; background-repeat: no-repeat; background-position: center center; background-size: cover }\n    .filter-shadow { content: \"\"; position: absolute; z-index: 2; top: -3%; left: -3%; right: -3%; bottom: -3%; background: inherit; filter: blur(10px) }\n    .material-wrap .black-shadow { position: absolute; z-index: 3; top: 0; left: 0; right: 0; bottom: 0; background: rgba(0, 0, 0, .05) }\n    .material-wrap .material { position: absolute; z-index: 3; top: 0; left: 0; width: 100%; height: 100%; background-repeat: no-repeat; background-position: center center; background-size: contain }\n  </style>\n</head>\n<body>\n  <div class=\"material-wrap\" style=\"background-image: url('__IMAGE_SRC_PATH__')\">\n    <div class=\"filter-shadow\"></div>\n    <div class=\"black-shadow\"></div>\n    <div class=\"material\" style=\"background-image: url('__IMAGE_SRC_PATH__')\"></div>\n  </div>\n</body>\n</html>\n".replaceAll("__IMAGE_SRC_PATH__", this.L);
                }
                G();
            }
        } catch (Exception unused) {
            b(3);
        }
    }

    private void F() {
        final ImageView imageView;
        if (this.B) {
            try {
                imageView = new ImageView(this.H.getContext());
                try {
                    this.H.addView(imageView);
                    if (this.E) {
                        imageView.setAlpha(0.0f);
                    }
                    if (!this.C) {
                        I();
                        J();
                    }
                } catch (Exception unused) {
                }
            } catch (Exception unused2) {
                imageView = null;
            }
        } else {
            imageView = null;
        }
        h.a((Context) null).a(this.L, new h.a() { // from class: com.beizi.ad.v2.g.b.3
            @Override // com.beizi.ad.internal.e.h.a
            public void a(final Bitmap bitmap) {
                ViewGroup.LayoutParams layoutParams;
                try {
                    if (b.this.H == null) {
                        b.this.b(10);
                        return;
                    }
                    if (bitmap == null) {
                        b.this.b(8);
                        return;
                    }
                    final Context context = b.this.H.getContext();
                    float width = (float) ((((double) bitmap.getWidth()) * 1.0d) / ((double) bitmap.getHeight()));
                    int i10 = b.this.N;
                    int i11 = b.this.O > 0 ? b.this.O : (int) (i10 / width);
                    final ImageView imageView2 = ((com.beizi.ad.v2.a.b) b.this).B ? imageView : new ImageView(context);
                    if (imageView2 != null && (layoutParams = imageView2.getLayoutParams()) != null) {
                        layoutParams.width = i10;
                        layoutParams.height = i11;
                        imageView2.setLayoutParams(layoutParams);
                    }
                    float fAbs = Math.abs(((float) ((((double) i10) * 1.0d) / ((double) i11))) - width);
                    if (fAbs > 0.1f) {
                        c.b().e().execute(new Runnable() { // from class: com.beizi.ad.v2.g.b.3.1
                            @Override // java.lang.Runnable
                            public void run() {
                                Bitmap bitmap2;
                                try {
                                    Context context2 = context;
                                    if (context2 == null || (bitmap2 = bitmap) == null) {
                                        return;
                                    }
                                    final BitmapDrawable bitmapDrawable = new BitmapDrawable(com.beizi.ad.internal.e.i.a(context2, bitmap2, 20.0f));
                                    if (((com.beizi.ad.v2.a.b) b.this).F != null) {
                                        ((com.beizi.ad.v2.a.b) b.this).F.post(new Runnable() { // from class: com.beizi.ad.v2.g.b.3.1.1
                                            @Override // java.lang.Runnable
                                            public void run() {
                                                ImageView imageView3;
                                                try {
                                                    BitmapDrawable bitmapDrawable2 = bitmapDrawable;
                                                    if (bitmapDrawable2 == null || (imageView3 = imageView2) == null) {
                                                        return;
                                                    }
                                                    imageView3.setBackground(bitmapDrawable2);
                                                } catch (Throwable unused3) {
                                                }
                                            }
                                        });
                                    }
                                } catch (Exception unused3) {
                                }
                            }
                        });
                    } else if (fAbs > 0.07d) {
                        imageView2.setScaleType(ImageView.ScaleType.CENTER_CROP);
                    } else {
                        imageView2.setScaleType(ImageView.ScaleType.FIT_XY);
                    }
                    imageView2.setImageBitmap(bitmap);
                    FrameLayout.LayoutParams layoutParams2 = new FrameLayout.LayoutParams(i10, i11);
                    if (!((com.beizi.ad.v2.a.b) b.this).B) {
                        b.this.H.addView(imageView2, layoutParams2);
                        b.this.I();
                        b.this.J();
                        b.this.K();
                        return;
                    }
                    imageView2.setLayoutParams(layoutParams2);
                    if (((com.beizi.ad.v2.a.b) b.this).E) {
                        ObjectAnimator objectAnimatorOfFloat = ObjectAnimator.ofFloat(imageView2, "alpha", 0.0f, 1.0f);
                        objectAnimatorOfFloat.setDuration(200L);
                        objectAnimatorOfFloat.start();
                    }
                    if (((com.beizi.ad.v2.a.b) b.this).C) {
                        b.this.I();
                        b.this.J();
                    }
                    if (b.this.Q != null) {
                        b.this.Q.a();
                    }
                } catch (Exception unused3) {
                    b.this.b(8);
                }
            }

            @Override // com.beizi.ad.internal.e.h.a
            public void a() {
                if (((com.beizi.ad.v2.a.b) b.this).B) {
                    try {
                        ImageView imageView2 = imageView;
                        if (imageView2 != null) {
                            imageView2.setScaleType(ImageView.ScaleType.FIT_XY);
                            imageView.setImageResource(R.drawable.beizi_bg_place_holder);
                            if (((com.beizi.ad.v2.a.b) b.this).E) {
                                ObjectAnimator objectAnimatorOfFloat = ObjectAnimator.ofFloat(imageView, "alpha", 0.0f, 1.0f);
                                objectAnimatorOfFloat.setDuration(200L);
                                objectAnimatorOfFloat.start();
                            }
                        }
                        if (((com.beizi.ad.v2.a.b) b.this).C) {
                            b.this.I();
                            b.this.J();
                        }
                        if (b.this.Q != null) {
                            b.this.Q.a();
                            return;
                        }
                        return;
                    } catch (Exception unused3) {
                        return;
                    }
                }
                b.this.b(8);
            }
        });
    }

    private void G() {
        ViewGroup viewGroup = this.H;
        if (viewGroup == null) {
            b(10);
            return;
        }
        WebView webView = new WebView(viewGroup.getContext());
        this.P = webView;
        u.a(webView);
        if (this.B) {
            this.H.addView(this.P);
            if (!this.C) {
                I();
                J();
            }
        }
        this.P.setWebViewClient(new WebViewClient() { // from class: com.beizi.ad.v2.g.b.4
            @Override // android.webkit.WebViewClient
            public void onPageFinished(WebView webView2, String str) {
                super.onPageFinished(webView2, str);
                try {
                    if (b.this.H == null) {
                        b.this.b(10);
                        return;
                    }
                    if (b.this.P == null) {
                        b.this.b(9);
                        return;
                    }
                    if (!((com.beizi.ad.v2.a.b) b.this).B) {
                        b.this.H.addView(b.this.P);
                        b.this.I();
                        b.this.J();
                        b.this.K();
                        return;
                    }
                    if (((com.beizi.ad.v2.a.b) b.this).C) {
                        b.this.I();
                        b.this.J();
                    }
                    if (b.this.Q != null) {
                        b.this.Q.a();
                    }
                } catch (Exception unused) {
                    b.this.b(2);
                }
            }

            @Override // android.webkit.WebViewClient
            public void onReceivedError(WebView webView2, WebResourceRequest webResourceRequest, WebResourceError webResourceError) {
                super.onReceivedError(webView2, webResourceRequest, webResourceError);
                b.this.b(2);
            }

            @Override // android.webkit.WebViewClient
            public void onReceivedSslError(WebView webView2, SslErrorHandler sslErrorHandler, SslError sslError) {
                super.onReceivedSslError(webView2, sslErrorHandler, sslError);
                b.this.b(2);
            }
        });
        this.P.loadDataWithBaseURL(null, this.L, ClipBoardItemData.TYPE_TEXT_HTML, "UTF-8", null);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void H() {
        View view = this.I;
        if (view == null) {
            return;
        }
        view.setVisibility(0);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void I() {
        View viewB;
        FrameLayout frameLayoutA;
        try {
            ViewGroup viewGroup = this.H;
            if (viewGroup != null && (viewGroup instanceof FrameLayout)) {
                Context context = viewGroup.getContext();
                LinearLayout linearLayout = new LinearLayout(this.H.getContext());
                linearLayout.setLayoutParams(new FrameLayout.LayoutParams(-2, -2, 17));
                com.beizi.ad.internal.d.a.C0216a c0216aK = this.f9680c.k();
                if (!TextUtils.isEmpty(c0216aK.a()) && (frameLayoutA = t.a(new MutableContextWrapper(context), c0216aK)) != null) {
                    linearLayout.addView(frameLayoutA, new FrameLayout.LayoutParams(-2, -2, 17));
                    frameLayoutA.setVisibility(0);
                    frameLayoutA.setOnClickListener(new View.OnClickListener() { // from class: com.beizi.ad.v2.g.b.6
                        @Override // android.view.View.OnClickListener
                        public void onClick(View view) {
                        }
                    });
                }
                com.beizi.ad.internal.d.a.C0216a c0216aJ = this.f9680c.j();
                if (!TextUtils.isEmpty(c0216aJ.a()) && (viewB = t.b(new MutableContextWrapper(this.H.getContext()), c0216aJ)) != null) {
                    linearLayout.addView(viewB, new FrameLayout.LayoutParams(-2, -2, 17));
                    viewB.setVisibility(0);
                    LinearLayout.LayoutParams layoutParams = (LinearLayout.LayoutParams) viewB.getLayoutParams();
                    layoutParams.setMargins(5, 0, 0, 0);
                    layoutParams.gravity = 17;
                    viewB.setLayoutParams(layoutParams);
                }
                ((FrameLayout) this.H).addView(linearLayout, new FrameLayout.LayoutParams(-2, -2, 85));
                FrameLayout.LayoutParams layoutParams2 = (FrameLayout.LayoutParams) linearLayout.getLayoutParams();
                int iA = t.a(context, 12.0f);
                layoutParams2.setMargins(0, 0, iA, iA);
                linearLayout.setLayoutParams(layoutParams2);
            }
        } catch (Exception unused) {
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void J() {
        try {
            com.beizi.ad.internal.d.a aVar = this.f9680c;
            if (aVar != null && this.H != null) {
                int iU = aVar.u();
                if (iU == 2 || iU == 5) {
                    final String strL = this.f9680c.l();
                    String strP = this.f9680c.p();
                    String strO = this.f9680c.o();
                    String strR = this.f9680c.r();
                    final String strQ = !TextUtils.isEmpty(strR) ? strR : this.f9680c.q();
                    final String strS = this.f9680c.s();
                    final String strT = this.f9680c.t();
                    final Context context = this.H.getContext();
                    TextView textView = new TextView(context);
                    textView.setText(Html.fromHtml("应用名称：" + strL + " | 开发者：" + strP + " | 应用版本：" + strO + " | <u>权限详情</u> | <u>隐私协议</u> | <u>功能介绍</u>"));
                    textView.setTextSize(2, 6.0f);
                    textView.setTextColor(Color.parseColor("#999999"));
                    textView.setShadowLayer(1.0f, 1.0f, 1.0f, Color.parseColor("#333333"));
                    textView.setPadding(10, 10, 10, 10);
                    textView.setOnClickListener(new View.OnClickListener() { // from class: com.beizi.ad.v2.g.b.7
                        @Override // android.view.View.OnClickListener
                        public void onClick(View view) {
                            try {
                                Intent intent = new Intent(context, (Class<?>) DownloadAppInfoActivity.class);
                                intent.putExtra("title_content_key", strL);
                                intent.putExtra("privacy_content_key", strS);
                                intent.putExtra("permission_content_key", strQ);
                                intent.putExtra("intro_content_key", strT);
                                intent.setFlags(C.ENCODING_PCM_MU_LAW);
                                context.startActivity(intent);
                            } catch (Exception unused) {
                            }
                        }
                    });
                    int iD = (q.d(context) * 2) / 3;
                    ViewGroup viewGroup = this.H;
                    if (viewGroup instanceof FrameLayout) {
                        ((FrameLayout) viewGroup).addView(textView, new FrameLayout.LayoutParams(iD, -2, 83));
                    }
                }
            }
        } catch (Exception unused) {
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void K() {
        if (this.f9687j) {
            return;
        }
        this.f9684g = true;
        if (this.J != null) {
            this.J.a();
        }
    }

    private void L() {
        if (this.M == i.f.RENDER_PIC && !TextUtils.isEmpty(this.L)) {
            h.a((Context) null).a(this.L, false, new h.a() { // from class: com.beizi.ad.v2.g.b.2
                @Override // com.beizi.ad.internal.e.h.a
                public void a(Bitmap bitmap) {
                }

                @Override // com.beizi.ad.internal.e.h.a
                public void a() {
                    b.this.b(8);
                }
            });
        }
    }

    public void C() {
        CountDownTimer countDownTimer = this.K;
        if (countDownTimer != null) {
            countDownTimer.cancel();
        }
        if (this.f9691n <= 0) {
            this.f9691n = 5;
        }
        CountDownTimer countDownTimer2 = new CountDownTimer(this.f9691n * 1000, 200L) { // from class: com.beizi.ad.v2.g.b.5
            @Override // android.os.CountDownTimer
            public void onFinish() {
                if (((com.beizi.ad.v2.a.b) b.this).f9680c != null) {
                    ((com.beizi.ad.v2.a.b) b.this).f9680c.d(false);
                }
                if (b.this.J != null) {
                    b.this.J.c();
                }
                if (b.this.K != null) {
                    b.this.K.cancel();
                }
            }

            @Override // android.os.CountDownTimer
            public void onTick(long j10) {
                if (b.this.J != null) {
                    b.this.J.a(j10);
                }
            }
        };
        this.K = countDownTimer2;
        countDownTimer2.start();
    }

    public void D() {
        try {
            this.f9680c.a(true);
            this.f9680c.b(f());
            this.f9680c.a(this.H, Constants.ERRORCODE_SDK_PREFIX, ConstantsInternal.TAG_TO_VIRTUAL_GAME_PAD_SDK_SUCCESS, "105", "206", String.valueOf(System.currentTimeMillis()), String.valueOf(System.currentTimeMillis() + 10), this.f9686i, this.f9689l);
            this.f9686i = true;
            com.beizi.ad.a aVar = this.J;
            if (aVar == null) {
                return;
            }
            aVar.d();
        } catch (Exception unused) {
        }
    }

    public void b(View.OnTouchListener onTouchListener) {
        WebView webView = this.P;
        if (webView != null) {
            webView.setOnTouchListener(onTouchListener);
            return;
        }
        ViewGroup viewGroup = this.H;
        if (viewGroup != null) {
            viewGroup.setOnTouchListener(onTouchListener);
        }
    }

    @Override // com.beizi.ad.v2.a.b
    public void c() {
        try {
            com.beizi.ad.internal.d.a aVar = this.f9680c;
            if (aVar != null) {
                aVar.d(false);
            }
            com.beizi.ad.a aVar2 = this.J;
            if (aVar2 != null) {
                aVar2.c();
            }
            CountDownTimer countDownTimer = this.K;
            if (countDownTimer != null) {
                countDownTimer.cancel();
            }
        } catch (Exception unused) {
        }
    }

    public void a(com.beizi.ad.a aVar) {
        this.J = aVar;
    }

    public void a(int i10, int i11) {
        this.N = i10;
        this.O = i11;
    }

    public void a(View view) {
        ViewGroup viewGroup = this.H;
        if (viewGroup == null) {
            b(11);
        } else {
            this.I = view;
            viewGroup.post(new Runnable() { // from class: com.beizi.ad.v2.g.b.1
                @Override // java.lang.Runnable
                public void run() {
                    try {
                        b.this.H();
                        b.this.C();
                        if (((com.beizi.ad.v2.a.b) b.this).f9680c != null) {
                            ((com.beizi.ad.v2.a.b) b.this).f9680c.a(b.this.H, ((com.beizi.ad.v2.a.b) b.this).f9689l);
                        }
                        if (((com.beizi.ad.v2.a.b) b.this).f9697t) {
                            ((com.beizi.ad.v2.a.b) b.this).f9698u = true;
                            com.beizi.ad.internal.a.a.a().a(((com.beizi.ad.v2.a.b) b.this).f9695r);
                        }
                        if (b.this.J != null) {
                            b.this.J.b();
                        }
                    } catch (Exception unused) {
                        b.this.b(11);
                    }
                }
            });
        }
    }

    @Override // com.beizi.ad.v2.a.b
    public void b(final int i10) {
        if (this.J == null || this.f9687j || this.f9684g) {
            return;
        }
        this.f9687j = true;
        Handler handler = this.F;
        if (handler != null) {
            handler.post(new Runnable() { // from class: com.beizi.ad.v2.g.b.8
                @Override // java.lang.Runnable
                public void run() {
                    b.this.J.a(i10);
                }
            });
        }
    }

    public void a(com.beizi.ad.v2.b.a aVar) {
        this.Q = aVar;
        E();
    }

    public void a(View.OnTouchListener onTouchListener) {
        if (onTouchListener == null) {
            return;
        }
        WebView webView = this.P;
        if (webView != null) {
            webView.setOnTouchListener(onTouchListener);
            return;
        }
        ViewGroup viewGroup = this.H;
        if (viewGroup != null) {
            viewGroup.setOnTouchListener(onTouchListener);
        }
    }

    public void a(com.beizi.ad.model.f fVar, int i10) {
        try {
            com.beizi.ad.internal.d.a aVar = this.f9680c;
            if (aVar != null && this.H != null) {
                aVar.a(true);
                this.f9680c.b(f());
                this.f9680c.a(this.H, fVar, String.valueOf(System.currentTimeMillis()), String.valueOf(System.currentTimeMillis() + 10), this.f9686i, this.f9689l, i10);
                this.f9686i = true;
                com.beizi.ad.a aVar2 = this.J;
                if (aVar2 == null) {
                    return;
                }
                aVar2.d();
            }
        } catch (Exception unused) {
        }
    }

    @Override // com.beizi.ad.v2.a.b
    public void a(com.beizi.ad.internal.d.a aVar) {
        this.f9691n = aVar.h();
        this.L = aVar.E();
        this.M = aVar.F();
        b(aVar.b());
        c(aVar.c());
        a(aVar.B());
        if (this.B) {
            this.F.post(new Runnable() { // from class: com.beizi.ad.v2.g.b.9
                @Override // java.lang.Runnable
                public void run() {
                    b.this.K();
                }
            });
            L();
        } else {
            Handler handler = this.F;
            if (handler != null) {
                handler.post(new Runnable() { // from class: com.beizi.ad.v2.g.b.10
                    @Override // java.lang.Runnable
                    public void run() {
                        b.this.E();
                    }
                });
            }
        }
    }
}
