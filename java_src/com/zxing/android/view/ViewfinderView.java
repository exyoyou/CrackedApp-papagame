package com.zxing.android.view;

import android.content.Context;
import android.graphics.Bitmap;
import android.graphics.Canvas;
import android.graphics.Paint;
import android.graphics.Rect;
import android.graphics.drawable.BitmapDrawable;
import android.util.AttributeSet;
import android.view.View;
import com.google.zxing.ResultPoint;
import com.join.android.app.mgsim.wufun.R;
import com.zxing.android.camera.c;
import java.util.ArrayList;
import java.util.Collection;

/* JADX INFO: loaded from: classes8.dex */
public final class ViewfinderView extends View {

    /* JADX INFO: renamed from: n, reason: collision with root package name */
    private static final long f90525n = 30;

    /* JADX INFO: renamed from: o, reason: collision with root package name */
    private static final int f90526o = 255;

    /* JADX INFO: renamed from: p, reason: collision with root package name */
    private static final int f90527p = 5;

    /* JADX INFO: renamed from: q, reason: collision with root package name */
    private static final int f90528q = 10;

    /* JADX INFO: renamed from: r, reason: collision with root package name */
    private static final int f90529r = 6;

    /* JADX INFO: renamed from: s, reason: collision with root package name */
    private static final int f90530s = 5;

    /* JADX INFO: renamed from: t, reason: collision with root package name */
    private static final int f90531t = 5;

    /* JADX INFO: renamed from: u, reason: collision with root package name */
    private static float f90532u = 0.0f;

    /* JADX INFO: renamed from: v, reason: collision with root package name */
    private static final int f90533v = 16;

    /* JADX INFO: renamed from: w, reason: collision with root package name */
    private static final int f90534w = 30;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private int f90535b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    private Paint f90536c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    private int f90537d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    private int f90538e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    private Bitmap f90539f;

    /* JADX INFO: renamed from: g, reason: collision with root package name */
    private final int f90540g;

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    private final int f90541h;

    /* JADX INFO: renamed from: i, reason: collision with root package name */
    private final int f90542i;

    /* JADX INFO: renamed from: j, reason: collision with root package name */
    private Collection<ResultPoint> f90543j;

    /* JADX INFO: renamed from: k, reason: collision with root package name */
    private Collection<ResultPoint> f90544k;

    /* JADX INFO: renamed from: l, reason: collision with root package name */
    private c f90545l;

    /* JADX INFO: renamed from: m, reason: collision with root package name */
    boolean f90546m;

    public ViewfinderView(Context context) {
        this(context, null);
    }

    public void a(ResultPoint point) {
        this.f90543j.add(point);
    }

    public void b(Bitmap barcode) {
        this.f90539f = barcode;
        invalidate();
    }

    public void c() {
        Bitmap bitmap = this.f90539f;
        this.f90539f = null;
        if (bitmap != null) {
            bitmap.recycle();
        }
        invalidate();
    }

    @Override // android.view.View
    protected void onDetachedFromWindow() {
        super.onDetachedFromWindow();
    }

    @Override // android.view.View
    public void onDraw(Canvas canvas) {
        Rect rectC = this.f90545l.c();
        if (rectC == null) {
            return;
        }
        if (!this.f90546m) {
            this.f90546m = true;
            this.f90537d = rectC.top;
            this.f90538e = rectC.bottom;
        }
        int width = canvas.getWidth();
        int height = canvas.getHeight();
        this.f90536c.setColor(this.f90539f != null ? this.f90541h : this.f90540g);
        float f10 = width;
        canvas.drawRect(0.0f, 0.0f, f10, rectC.top, this.f90536c);
        canvas.drawRect(0.0f, rectC.top, rectC.left, rectC.bottom + 1, this.f90536c);
        canvas.drawRect(rectC.right + 1, rectC.top, f10, rectC.bottom + 1, this.f90536c);
        canvas.drawRect(0.0f, rectC.bottom + 1, f10, height, this.f90536c);
        if (this.f90539f != null) {
            this.f90536c.setAlpha(255);
            canvas.drawBitmap(this.f90539f, rectC.left, rectC.top, this.f90536c);
            return;
        }
        this.f90536c.setColor(-1);
        float f11 = rectC.left;
        int i10 = rectC.top;
        canvas.drawRect(f11, i10, rectC.right + 1, i10 + 2, this.f90536c);
        int i11 = rectC.left;
        canvas.drawRect(i11, rectC.top + 2, i11 + 2, rectC.bottom - 1, this.f90536c);
        int i12 = rectC.right;
        canvas.drawRect(i12 - 1, rectC.top, i12 + 1, rectC.bottom - 1, this.f90536c);
        float f12 = rectC.left;
        int i13 = rectC.bottom;
        canvas.drawRect(f12, i13 - 1, rectC.right + 1, i13 + 1, this.f90536c);
        this.f90536c.setColor(-15809537);
        this.f90536c.setAntiAlias(true);
        int i14 = rectC.left;
        int i15 = rectC.top;
        canvas.drawRect((i14 - 10) + 2, (i15 - 10) + 2, ((i14 + this.f90535b) - 10) + 2, i15 + 2, this.f90536c);
        int i16 = rectC.left;
        int i17 = rectC.top;
        canvas.drawRect((i16 - 10) + 2, (i17 - 10) + 2, i16 + 2, ((i17 + this.f90535b) - 10) + 2, this.f90536c);
        int i18 = rectC.right;
        float f13 = ((i18 - this.f90535b) + 10) - 2;
        int i19 = rectC.top;
        canvas.drawRect(f13, (i19 - 10) + 2, (i18 + 10) - 2, i19 + 2, this.f90536c);
        int i20 = rectC.right;
        int i21 = rectC.top;
        canvas.drawRect(i20 - 2, (i21 - 10) + 2, (i20 + 10) - 2, ((i21 + this.f90535b) - 10) + 2, this.f90536c);
        int i22 = rectC.left;
        int i23 = rectC.bottom;
        canvas.drawRect((i22 - 10) + 2, i23 - 2, ((i22 + this.f90535b) - 10) + 2, (i23 + 10) - 2, this.f90536c);
        int i24 = rectC.left;
        int i25 = rectC.bottom;
        canvas.drawRect((i24 - 10) + 2, ((i25 - this.f90535b) + 10) - 2, i24 + 2, (i25 + 10) - 2, this.f90536c);
        int i26 = rectC.right;
        float f14 = ((i26 - this.f90535b) + 10) - 2;
        int i27 = rectC.bottom;
        canvas.drawRect(f14, i27 - 2, (i26 + 10) - 2, (i27 + 10) - 2, this.f90536c);
        int i28 = rectC.right;
        int i29 = rectC.bottom;
        canvas.drawRect(i28 - 2, ((i29 - this.f90535b) + 10) - 2, (i28 + 10) - 2, (i29 + 10) - 2, this.f90536c);
        int i30 = this.f90537d + 5;
        this.f90537d = i30;
        if (i30 >= rectC.bottom) {
            this.f90537d = rectC.top;
        }
        Rect rect = new Rect();
        rect.left = rectC.left;
        rect.right = rectC.right;
        int i31 = this.f90537d;
        rect.top = i31;
        rect.bottom = i31 + 18;
        canvas.drawBitmap(((BitmapDrawable) getResources().getDrawable(R.drawable.qr_scan_line)).getBitmap(), (Rect) null, rect, this.f90536c);
        postInvalidateDelayed(f90525n, rectC.left, rectC.top, rectC.right, rectC.bottom);
    }

    public void setCameraManager(c cameraManager) {
        this.f90545l = cameraManager;
    }

    public ViewfinderView(Context context, AttributeSet attrs) {
        super(context, attrs);
        this.f90536c = new Paint(1);
        this.f90540g = 1610612736;
        this.f90541h = -1342177280;
        this.f90542i = -1056964864;
        this.f90543j = new ArrayList(5);
        this.f90544k = null;
        float f10 = context.getResources().getDisplayMetrics().density;
        f90532u = f10;
        this.f90535b = (int) (f10 * 20.0f);
    }
}
