package com.join.mgps.zxing.view;

import android.content.Context;
import android.content.res.Resources;
import android.graphics.Bitmap;
import android.graphics.Canvas;
import android.graphics.Paint;
import android.graphics.Rect;
import android.graphics.Typeface;
import android.util.AttributeSet;
import android.view.View;
import com.google.zxing.ResultPoint;
import com.haima.hmcp.Constants;
import com.join.android.app.mgsim.wufun.R;
import com.join.mgps.zxing.camera.c;
import java.util.Collection;
import java.util.HashSet;

/* JADX INFO: loaded from: classes3.dex */
public final class ViewfinderView extends View {

    /* JADX INFO: renamed from: m, reason: collision with root package name */
    private static final String f73536m = "log";

    /* JADX INFO: renamed from: n, reason: collision with root package name */
    private static final long f73537n = 10;

    /* JADX INFO: renamed from: o, reason: collision with root package name */
    private static final int f73538o = 255;

    /* JADX INFO: renamed from: p, reason: collision with root package name */
    private static final int f73539p = 3;

    /* JADX INFO: renamed from: q, reason: collision with root package name */
    private static final int f73540q = 3;

    /* JADX INFO: renamed from: r, reason: collision with root package name */
    private static final int f73541r = 5;

    /* JADX INFO: renamed from: s, reason: collision with root package name */
    private static final int f73542s = 5;

    /* JADX INFO: renamed from: t, reason: collision with root package name */
    private static float f73543t = 0.0f;

    /* JADX INFO: renamed from: u, reason: collision with root package name */
    private static final int f73544u = 16;

    /* JADX INFO: renamed from: v, reason: collision with root package name */
    private static final int f73545v = 30;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private int f73546b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    private Paint f73547c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    private int f73548d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    private int f73549e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    private Bitmap f73550f;

    /* JADX INFO: renamed from: g, reason: collision with root package name */
    private final int f73551g;

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    private final int f73552h;

    /* JADX INFO: renamed from: i, reason: collision with root package name */
    private final int f73553i;

    /* JADX INFO: renamed from: j, reason: collision with root package name */
    private Collection<ResultPoint> f73554j;

    /* JADX INFO: renamed from: k, reason: collision with root package name */
    private Collection<ResultPoint> f73555k;

    /* JADX INFO: renamed from: l, reason: collision with root package name */
    boolean f73556l;

    public ViewfinderView(Context context, AttributeSet attrs) {
        super(context, attrs);
        float f10 = context.getResources().getDisplayMetrics().density;
        f73543t = f10;
        this.f73546b = (int) (f10 * 20.0f);
        this.f73547c = new Paint();
        Resources resources = getResources();
        this.f73551g = resources.getColor(R.color.viewfinder_mask);
        this.f73552h = resources.getColor(R.color.result_view);
        this.f73553i = resources.getColor(R.color.possible_result_points);
        this.f73554j = new HashSet(5);
    }

    public void a(ResultPoint point) {
        this.f73554j.add(point);
    }

    public void b(Bitmap barcode) {
        this.f73550f = barcode;
        invalidate();
    }

    public void c() {
        this.f73550f = null;
        invalidate();
    }

    @Override // android.view.View
    public void onDraw(Canvas canvas) {
        Rect rectD = c.c().d();
        if (rectD == null) {
            return;
        }
        if (!this.f73556l) {
            this.f73556l = true;
            this.f73548d = rectD.top;
            this.f73549e = rectD.bottom;
        }
        int width = canvas.getWidth();
        int height = canvas.getHeight();
        this.f73547c.setColor(this.f73550f != null ? this.f73552h : this.f73551g);
        float f10 = width;
        canvas.drawRect(0.0f, 0.0f, f10, rectD.top, this.f73547c);
        canvas.drawRect(0.0f, rectD.top, rectD.left, rectD.bottom + 1, this.f73547c);
        canvas.drawRect(rectD.right + 1, rectD.top, f10, rectD.bottom + 1, this.f73547c);
        canvas.drawRect(0.0f, rectD.bottom + 1, f10, height, this.f73547c);
        if (this.f73550f != null) {
            this.f73547c.setAlpha(255);
            canvas.drawBitmap(this.f73550f, rectD.left, rectD.top, this.f73547c);
            return;
        }
        this.f73547c.setColor(Constants.LEVEL_SDK);
        int i10 = rectD.left;
        int i11 = rectD.top;
        canvas.drawRect(i10, i11, i10 + this.f73546b, i11 + 3, this.f73547c);
        int i12 = rectD.left;
        int i13 = rectD.top;
        canvas.drawRect(i12, i13, i12 + 3, i13 + this.f73546b, this.f73547c);
        int i14 = rectD.right;
        float f11 = i14 - this.f73546b;
        int i15 = rectD.top;
        canvas.drawRect(f11, i15, i14, i15 + 3, this.f73547c);
        int i16 = rectD.right;
        int i17 = rectD.top;
        canvas.drawRect(i16 - 3, i17, i16, i17 + this.f73546b, this.f73547c);
        int i18 = rectD.left;
        int i19 = rectD.bottom;
        canvas.drawRect(i18, i19 - 3, i18 + this.f73546b, i19, this.f73547c);
        int i20 = rectD.left;
        int i21 = rectD.bottom;
        canvas.drawRect(i20, i21 - this.f73546b, i20 + 3, i21, this.f73547c);
        int i22 = rectD.right;
        float f12 = i22 - this.f73546b;
        int i23 = rectD.bottom;
        canvas.drawRect(f12, i23 - 3, i22, i23, this.f73547c);
        int i24 = rectD.right;
        int i25 = rectD.bottom;
        canvas.drawRect(i24 - 3, i25 - this.f73546b, i24, i25, this.f73547c);
        int i26 = this.f73548d + 5;
        this.f73548d = i26;
        if (i26 >= rectD.bottom) {
            this.f73548d = rectD.top;
        }
        float f13 = rectD.left + 5;
        int i27 = this.f73548d;
        canvas.drawRect(f13, i27 - 1, rectD.right - 5, i27 + 1, this.f73547c);
        this.f73547c.setColor(-1);
        this.f73547c.setTextSize(f73543t * 16.0f);
        this.f73547c.setTypeface(Typeface.create("System", 1));
        Collection<ResultPoint> collection = this.f73554j;
        Collection<ResultPoint> collection2 = this.f73555k;
        if (collection.isEmpty()) {
            this.f73555k = null;
        } else {
            this.f73554j = new HashSet(5);
            this.f73555k = collection;
            this.f73547c.setAlpha(255);
            this.f73547c.setColor(this.f73553i);
            for (ResultPoint resultPoint : collection) {
                canvas.drawCircle(rectD.left + resultPoint.getX(), rectD.top + resultPoint.getY(), 6.0f, this.f73547c);
            }
        }
        if (collection2 != null) {
            this.f73547c.setAlpha(127);
            this.f73547c.setColor(this.f73553i);
            for (ResultPoint resultPoint2 : collection2) {
                canvas.drawCircle(rectD.left + resultPoint2.getX(), rectD.top + resultPoint2.getY(), 3.0f, this.f73547c);
            }
        }
        postInvalidateDelayed(10L, rectD.left, rectD.top, rectD.right, rectD.bottom);
    }
}
