package com.windmill.sdk.widget;

import android.content.Context;
import android.graphics.Bitmap;
import android.graphics.Canvas;
import android.graphics.Paint;
import android.graphics.Path;
import android.graphics.PorterDuff;
import android.graphics.PorterDuffXfermode;
import android.graphics.RectF;
import android.os.Build;
import android.util.AttributeSet;
import android.util.Base64;
import android.webkit.WebSettings;
import android.webkit.WebView;
import com.czhj.sdk.common.utils.ReflectionUtil;
import com.sigmob.sdk.base.n;

/* JADX INFO: loaded from: classes8.dex */
public class CircleWebView extends WebView {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private float f87426a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private int f87427b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    private int f87428c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    private int f87429d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    private int f87430e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    private Paint f87431f;

    /* JADX INFO: renamed from: g, reason: collision with root package name */
    private Paint f87432g;

    public CircleWebView(Context context) {
        this(context, null);
    }

    private void a(WebSettings webSettings) {
        try {
            ReflectionUtil.MethodBuilder methodBuilder = new ReflectionUtil.MethodBuilder(webSettings, new String(Base64.decode(n.E, 2)));
            methodBuilder.addParam(Boolean.TYPE, Boolean.TRUE);
            methodBuilder.execute();
        } catch (Exception e10) {
            e10.printStackTrace();
        }
        try {
            ReflectionUtil.MethodBuilder methodBuilder2 = new ReflectionUtil.MethodBuilder(webSettings, new String(Base64.decode(n.G, 2)));
            methodBuilder2.addParam(Boolean.TYPE, Boolean.TRUE);
            methodBuilder2.execute();
        } catch (Exception e11) {
            e11.printStackTrace();
        }
        webSettings.setDomStorageEnabled(true);
        webSettings.setUseWideViewPort(true);
        webSettings.setBuiltInZoomControls(false);
        webSettings.setLoadWithOverviewMode(true);
        webSettings.setSupportZoom(true);
        webSettings.setDefaultTextEncodingName("UTF-8");
        webSettings.setCacheMode(2);
        webSettings.setPluginState(WebSettings.PluginState.ON);
        webSettings.setBlockNetworkImage(false);
        webSettings.setBlockNetworkLoads(false);
        int i10 = Build.VERSION.SDK_INT;
        webSettings.setMediaPlaybackRequiresUserGesture(false);
        webSettings.setLoadsImagesAutomatically(true);
        webSettings.setAllowContentAccess(true);
        if (i10 >= 26) {
            webSettings.setSafeBrowsingEnabled(false);
        }
        webSettings.setMixedContentMode(0);
    }

    private void b(Canvas canvas) {
        Path path = new Path();
        path.moveTo(this.f87429d + this.f87427b, this.f87430e + this.f87426a);
        path.lineTo(this.f87429d + this.f87427b, this.f87430e);
        path.lineTo((this.f87429d + this.f87427b) - this.f87426a, this.f87430e);
        int i10 = this.f87429d;
        int i11 = this.f87427b;
        float f10 = this.f87426a;
        int i12 = this.f87430e;
        path.arcTo(new RectF((i10 + i11) - (f10 * 2.0f), i12, i10 + i11, i12 + (f10 * 2.0f)), -90.0f, 90.0f);
        path.close();
        canvas.drawPath(path, this.f87431f);
    }

    private void c(Canvas canvas) {
        Path path = new Path();
        path.moveTo(this.f87429d, (this.f87430e + this.f87428c) - this.f87426a);
        path.lineTo(this.f87429d, this.f87430e + this.f87428c);
        path.lineTo(this.f87429d + this.f87426a, this.f87430e + this.f87428c);
        int i10 = this.f87429d;
        int i11 = this.f87430e;
        int i12 = this.f87428c;
        float f10 = this.f87426a;
        path.arcTo(new RectF(i10, (i11 + i12) - (f10 * 2.0f), i10 + (f10 * 2.0f), i11 + i12), 90.0f, 90.0f);
        path.close();
        canvas.drawPath(path, this.f87431f);
    }

    private void d(Canvas canvas) {
        Path path = new Path();
        path.moveTo((this.f87429d + this.f87427b) - this.f87426a, this.f87430e + this.f87428c);
        path.lineTo(this.f87429d + this.f87427b, this.f87430e + this.f87428c);
        path.lineTo(this.f87429d + this.f87427b, (this.f87430e + this.f87428c) - this.f87426a);
        int i10 = this.f87429d;
        int i11 = this.f87427b;
        float f10 = this.f87426a;
        int i12 = this.f87430e;
        int i13 = this.f87428c;
        path.arcTo(new RectF((i10 + i11) - (f10 * 2.0f), (i12 + i13) - (f10 * 2.0f), i10 + i11, i12 + i13), 0.0f, 90.0f);
        path.close();
        canvas.drawPath(path, this.f87431f);
    }

    @Override // android.view.View
    public void draw(Canvas canvas) {
        this.f87429d = getScrollX();
        int scrollY = getScrollY();
        this.f87430e = scrollY;
        Bitmap bitmapCreateBitmap = Bitmap.createBitmap(this.f87429d + this.f87427b, scrollY + this.f87428c, Bitmap.Config.ARGB_8888);
        Canvas canvas2 = new Canvas(bitmapCreateBitmap);
        super.draw(canvas2);
        a(canvas2);
        b(canvas2);
        canvas.drawBitmap(bitmapCreateBitmap, 0.0f, 0.0f, this.f87432g);
        bitmapCreateBitmap.recycle();
    }

    public void enablePlugins(final boolean enabled) {
    }

    @Override // android.webkit.WebView, android.widget.AbsoluteLayout, android.view.View
    protected void onMeasure(int widthMeasureSpec, int heightMeasureSpec) {
        super.onMeasure(widthMeasureSpec, heightMeasureSpec);
        this.f87427b = getMeasuredWidth();
        this.f87428c = getMeasuredHeight();
    }

    public void setRadius(float radius) {
        this.f87426a = radius;
    }

    public CircleWebView(Context context, AttributeSet attrs) {
        this(context, attrs, 0);
    }

    public CircleWebView(Context context, AttributeSet attrs, int defStyleAttr) {
        super(context, attrs, defStyleAttr);
        this.f87426a = 40.0f;
        a(getSettings());
        a(context);
    }

    private void a(Context context) {
        Paint paint = new Paint();
        this.f87431f = paint;
        paint.setColor(-1);
        this.f87431f.setAntiAlias(true);
        this.f87431f.setXfermode(new PorterDuffXfermode(PorterDuff.Mode.DST_OUT));
        Paint paint2 = new Paint();
        this.f87432g = paint2;
        paint2.setXfermode(null);
    }

    private void a(Canvas canvas) {
        Path path = new Path();
        path.moveTo(this.f87429d, this.f87426a);
        path.lineTo(this.f87429d, this.f87430e);
        path.lineTo(this.f87426a, this.f87430e);
        int i10 = this.f87429d;
        int i11 = this.f87430e;
        float f10 = this.f87426a;
        path.arcTo(new RectF(i10, i11, i10 + (f10 * 2.0f), i11 + (f10 * 2.0f)), -90.0f, -90.0f);
        path.close();
        canvas.drawPath(path, this.f87431f);
    }
}
