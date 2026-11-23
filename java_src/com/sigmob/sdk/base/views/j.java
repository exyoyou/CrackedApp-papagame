package com.sigmob.sdk.base.views;

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
import android.webkit.WebSettings;

/* JADX INFO: loaded from: classes5.dex */
public class j extends f {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private static final String f80115a = "j";

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private float f80116b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    private int f80117c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    private int f80118d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    private int f80119e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    private int f80120f;

    /* JADX INFO: renamed from: g, reason: collision with root package name */
    private Paint f80121g;

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    private Paint f80122h;

    public j(Context context) {
        this(context, null);
    }

    private void a(Context context) {
        Paint paint = new Paint();
        this.f80121g = paint;
        paint.setColor(-1);
        this.f80121g.setAntiAlias(true);
        this.f80121g.setXfermode(new PorterDuffXfermode(PorterDuff.Mode.DST_OUT));
        Paint paint2 = new Paint();
        this.f80122h = paint2;
        paint2.setXfermode(null);
    }

    private void b(Canvas canvas) {
        Path path = new Path();
        path.moveTo(this.f80119e + this.f80117c, this.f80120f + this.f80116b);
        path.lineTo(this.f80119e + this.f80117c, this.f80120f);
        path.lineTo((this.f80119e + this.f80117c) - this.f80116b, this.f80120f);
        int i10 = this.f80119e;
        int i11 = this.f80117c;
        float f10 = this.f80116b;
        int i12 = this.f80120f;
        path.arcTo(new RectF((i10 + i11) - (f10 * 2.0f), i12, i10 + i11, i12 + (f10 * 2.0f)), -90.0f, 90.0f);
        path.close();
        canvas.drawPath(path, this.f80121g);
    }

    private void c(Canvas canvas) {
        Path path = new Path();
        path.moveTo(this.f80119e, (this.f80120f + this.f80118d) - this.f80116b);
        path.lineTo(this.f80119e, this.f80120f + this.f80118d);
        path.lineTo(this.f80119e + this.f80116b, this.f80120f + this.f80118d);
        int i10 = this.f80119e;
        int i11 = this.f80120f;
        int i12 = this.f80118d;
        float f10 = this.f80116b;
        path.arcTo(new RectF(i10, (i11 + i12) - (f10 * 2.0f), i10 + (f10 * 2.0f), i11 + i12), 90.0f, 90.0f);
        path.close();
        canvas.drawPath(path, this.f80121g);
    }

    private void d(Canvas canvas) {
        Path path = new Path();
        path.moveTo((this.f80119e + this.f80117c) - this.f80116b, this.f80120f + this.f80118d);
        path.lineTo(this.f80119e + this.f80117c, this.f80120f + this.f80118d);
        path.lineTo(this.f80119e + this.f80117c, (this.f80120f + this.f80118d) - this.f80116b);
        int i10 = this.f80119e;
        int i11 = this.f80117c;
        float f10 = this.f80116b;
        int i12 = this.f80120f;
        int i13 = this.f80118d;
        path.arcTo(new RectF((i10 + i11) - (f10 * 2.0f), (i12 + i13) - (f10 * 2.0f), i10 + i11, i12 + i13), 0.0f, 90.0f);
        path.close();
        canvas.drawPath(path, this.f80121g);
    }

    @Override // android.view.View
    public void draw(Canvas canvas) {
        this.f80119e = getScrollX();
        int scrollY = getScrollY();
        this.f80120f = scrollY;
        Bitmap bitmapCreateBitmap = Bitmap.createBitmap(this.f80119e + this.f80117c, scrollY + this.f80118d, Bitmap.Config.ARGB_8888);
        Canvas canvas2 = new Canvas(bitmapCreateBitmap);
        super.draw(canvas2);
        a(canvas2);
        b(canvas2);
        canvas.drawBitmap(bitmapCreateBitmap, 0.0f, 0.0f, this.f80122h);
        bitmapCreateBitmap.recycle();
    }

    @Override // android.webkit.WebView, android.widget.AbsoluteLayout, android.view.View
    protected void onMeasure(int widthMeasureSpec, int heightMeasureSpec) {
        super.onMeasure(widthMeasureSpec, heightMeasureSpec);
        this.f80117c = getMeasuredWidth();
        this.f80118d = getMeasuredHeight();
    }

    public void setRadius(float radius) {
        this.f80116b = radius;
    }

    public j(Context context, AttributeSet attrs) {
        this(context, attrs, 0);
    }

    private void a(Canvas canvas) {
        Path path = new Path();
        path.moveTo(this.f80119e, this.f80116b);
        path.lineTo(this.f80119e, this.f80120f);
        path.lineTo(this.f80116b, this.f80120f);
        int i10 = this.f80119e;
        int i11 = this.f80120f;
        float f10 = this.f80116b;
        path.arcTo(new RectF(i10, i11, i10 + (f10 * 2.0f), i11 + (f10 * 2.0f)), -90.0f, -90.0f);
        path.close();
        canvas.drawPath(path, this.f80121g);
    }

    public j(Context context, AttributeSet attrs, int defStyleAttr) {
        super(context);
        this.f80116b = 40.0f;
        a(getSettings());
        a(context);
    }

    private void a(WebSettings webSettings) {
        com.sigmob.sdk.base.utils.j.a(f80115a, webSettings);
        webSettings.setDomStorageEnabled(true);
        webSettings.setUseWideViewPort(true);
        webSettings.setBuiltInZoomControls(false);
        webSettings.setLoadWithOverviewMode(true);
        webSettings.setSupportZoom(true);
        webSettings.setDefaultTextEncodingName("UTF-8");
        webSettings.setBlockNetworkImage(false);
        webSettings.setBlockNetworkLoads(false);
        webSettings.setCacheMode(-1);
        int i10 = Build.VERSION.SDK_INT;
        webSettings.setMediaPlaybackRequiresUserGesture(false);
        webSettings.setLoadsImagesAutomatically(true);
        webSettings.setAllowContentAccess(true);
        if (i10 >= 26) {
            try {
                webSettings.setSafeBrowsingEnabled(false);
            } catch (Throwable unused) {
            }
        }
        try {
            webSettings.setMixedContentMode(0);
        } catch (Throwable unused2) {
        }
    }

    @Override // com.sigmob.sdk.base.views.f
    public void a(boolean enabled) {
    }
}
