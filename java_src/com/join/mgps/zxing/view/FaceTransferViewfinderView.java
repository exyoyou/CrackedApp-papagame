package com.join.mgps.zxing.view;

import android.content.Context;
import android.content.res.Resources;
import android.graphics.Bitmap;
import android.graphics.Canvas;
import android.graphics.Color;
import android.graphics.Paint;
import android.graphics.Rect;
import android.graphics.Typeface;
import android.graphics.drawable.BitmapDrawable;
import android.util.AttributeSet;
import android.view.View;
import com.google.zxing.ResultPoint;
import com.join.android.app.mgsim.wufun.R;
import com.join.mgps.zxing.camera.c;
import java.util.Collection;
import java.util.HashSet;

/* JADX INFO: loaded from: classes3.dex */
public class FaceTransferViewfinderView extends View {

    /* JADX INFO: renamed from: m, reason: collision with root package name */
    private static final String f73515m = "log";

    /* JADX INFO: renamed from: n, reason: collision with root package name */
    private static final long f73516n = 10;

    /* JADX INFO: renamed from: o, reason: collision with root package name */
    private static final int f73517o = 255;

    /* JADX INFO: renamed from: p, reason: collision with root package name */
    private static final int f73518p = 10;

    /* JADX INFO: renamed from: q, reason: collision with root package name */
    private static final int f73519q = 6;

    /* JADX INFO: renamed from: r, reason: collision with root package name */
    private static final int f73520r = 5;

    /* JADX INFO: renamed from: s, reason: collision with root package name */
    private static final int f73521s = 5;

    /* JADX INFO: renamed from: t, reason: collision with root package name */
    private static float f73522t = 0.0f;

    /* JADX INFO: renamed from: u, reason: collision with root package name */
    private static final int f73523u = 15;

    /* JADX INFO: renamed from: v, reason: collision with root package name */
    private static final int f73524v = 30;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private int f73525b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    private Paint f73526c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    private int f73527d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    private int f73528e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    private Bitmap f73529f;

    /* JADX INFO: renamed from: g, reason: collision with root package name */
    private final int f73530g;

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    private final int f73531h;

    /* JADX INFO: renamed from: i, reason: collision with root package name */
    private final int f73532i;

    /* JADX INFO: renamed from: j, reason: collision with root package name */
    private Collection<ResultPoint> f73533j;

    /* JADX INFO: renamed from: k, reason: collision with root package name */
    private Collection<ResultPoint> f73534k;

    /* JADX INFO: renamed from: l, reason: collision with root package name */
    boolean f73535l;

    public FaceTransferViewfinderView(Context context, AttributeSet attrs) {
        super(context, attrs);
        float f10 = context.getResources().getDisplayMetrics().density;
        f73522t = f10;
        this.f73525b = (int) (f10 * 20.0f);
        this.f73526c = new Paint();
        Resources resources = getResources();
        this.f73530g = resources.getColor(R.color.viewfinder_mask);
        this.f73531h = resources.getColor(R.color.result_view);
        this.f73532i = resources.getColor(R.color.possible_result_points);
        this.f73533j = new HashSet(5);
    }

    public void a(ResultPoint point) {
        this.f73533j.add(point);
    }

    public void b(Bitmap barcode) {
        this.f73529f = barcode;
        invalidate();
    }

    public void c() {
        this.f73529f = null;
        invalidate();
    }

    @Override // android.view.View
    public void onDraw(Canvas canvas) {
        Rect rectE = c.c().e();
        if (rectE == null) {
            return;
        }
        if (!this.f73535l) {
            this.f73535l = true;
            this.f73527d = rectE.top;
            this.f73528e = rectE.bottom;
        }
        int width = canvas.getWidth();
        int height = canvas.getHeight();
        this.f73526c.setColor(this.f73529f != null ? this.f73531h : this.f73530g);
        float f10 = width;
        canvas.drawRect(0.0f, 0.0f, f10, rectE.top, this.f73526c);
        canvas.drawRect(0.0f, rectE.top, rectE.left, rectE.bottom + 1, this.f73526c);
        canvas.drawRect(rectE.right + 1, rectE.top, f10, rectE.bottom + 1, this.f73526c);
        canvas.drawRect(0.0f, rectE.bottom + 1, f10, height, this.f73526c);
        if (this.f73529f != null) {
            this.f73526c.setAlpha(255);
            canvas.drawBitmap(this.f73529f, rectE.left, rectE.top, this.f73526c);
            return;
        }
        this.f73526c.setColor(Color.parseColor("#03e3fe"));
        int i10 = rectE.left;
        int i11 = rectE.top;
        canvas.drawRect(i10, i11, i10 + this.f73525b, i11 + 10, this.f73526c);
        int i12 = rectE.left;
        int i13 = rectE.top;
        canvas.drawRect(i12, i13, i12 + 10, i13 + this.f73525b, this.f73526c);
        int i14 = rectE.right;
        float f11 = i14 - this.f73525b;
        int i15 = rectE.top;
        canvas.drawRect(f11, i15, i14, i15 + 10, this.f73526c);
        int i16 = rectE.right;
        int i17 = rectE.top;
        canvas.drawRect(i16 - 10, i17, i16, i17 + this.f73525b, this.f73526c);
        int i18 = rectE.left;
        int i19 = rectE.bottom;
        canvas.drawRect(i18, i19 - 10, i18 + this.f73525b, i19, this.f73526c);
        int i20 = rectE.left;
        int i21 = rectE.bottom;
        canvas.drawRect(i20, i21 - this.f73525b, i20 + 10, i21, this.f73526c);
        int i22 = rectE.right;
        float f12 = i22 - this.f73525b;
        int i23 = rectE.bottom;
        canvas.drawRect(f12, i23 - 10, i22, i23, this.f73526c);
        int i24 = rectE.right;
        int i25 = rectE.bottom;
        canvas.drawRect(i24 - 10, i25 - this.f73525b, i24, i25, this.f73526c);
        int i26 = this.f73527d + 5;
        this.f73527d = i26;
        if (i26 >= rectE.bottom) {
            this.f73527d = rectE.top;
        }
        Rect rect = new Rect();
        rect.left = rectE.left;
        rect.right = rectE.right;
        int i27 = this.f73527d;
        rect.top = i27;
        rect.bottom = i27 + 18;
        canvas.drawBitmap(((BitmapDrawable) getResources().getDrawable(R.drawable.qrcode_scan_line)).getBitmap(), (Rect) null, rect, this.f73526c);
        this.f73526c.setColor(-16777216);
        this.f73526c.setTextSize(f73522t * 15.0f);
        this.f73526c.setAlpha(64);
        this.f73526c.setTypeface(Typeface.create("System", 1));
        String string = getResources().getString(R.string.scan_qr_code_declar);
        canvas.drawText(string, (f10 - this.f73526c.measureText(string)) / 2.0f, rectE.bottom + (f73522t * 30.0f), this.f73526c);
        Collection<ResultPoint> collection = this.f73533j;
        Collection<ResultPoint> collection2 = this.f73534k;
        if (collection.isEmpty()) {
            this.f73534k = null;
        } else {
            this.f73533j = new HashSet(5);
            this.f73534k = collection;
            this.f73526c.setAlpha(255);
            this.f73526c.setColor(this.f73532i);
            for (ResultPoint resultPoint : collection) {
                canvas.drawCircle(rectE.left + resultPoint.getX(), rectE.top + resultPoint.getY(), 6.0f, this.f73526c);
            }
        }
        if (collection2 != null) {
            this.f73526c.setAlpha(127);
            this.f73526c.setColor(this.f73532i);
            for (ResultPoint resultPoint2 : collection2) {
                canvas.drawCircle(rectE.left + resultPoint2.getX(), rectE.top + resultPoint2.getY(), 3.0f, this.f73526c);
            }
        }
        postInvalidateDelayed(10L, rectE.left, rectE.top, rectE.right, rectE.bottom);
    }
}
