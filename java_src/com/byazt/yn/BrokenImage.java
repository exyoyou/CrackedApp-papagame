package com.byazt.yn;

import android.animation.ObjectAnimator;
import android.content.Context;
import android.graphics.Bitmap;
import android.graphics.Canvas;
import android.graphics.Paint;
import android.graphics.Path;
import android.graphics.Point;
import android.graphics.Rect;
import android.view.MotionEvent;
import android.view.View;
import android.view.animation.AccelerateInterpolator;
import com.byazt.sa.uj;
import com.bytedance.component.sdk.annotation.Keep;
import java.lang.reflect.Array;
import java.security.SecureRandom;
import java.util.Random;

/* JADX INFO: loaded from: classes9.dex */
@com.byazt.zqa.c(c = {0, 1, 1357, 2155})
public class BrokenImage extends View {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public Bitmap f22373a;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public uj f22374c;

    /* JADX INFO: renamed from: da, reason: collision with root package name */
    public Rect f22375da;

    /* JADX INFO: renamed from: i, reason: collision with root package name */
    public boolean f22376i;

    /* JADX INFO: renamed from: m, reason: collision with root package name */
    public float f22377m;

    /* JADX INFO: renamed from: n, reason: collision with root package name */
    public int f22378n;
    public Rect sl;
    public Point[][] sp;

    /* JADX INFO: renamed from: t, reason: collision with root package name */
    public Rect f22379t;
    public final Paint tt;

    /* JADX INFO: renamed from: u, reason: collision with root package name */
    public int f22380u;
    public int uj;
    public final Path ve;

    /* JADX INFO: renamed from: x, reason: collision with root package name */
    public boolean f22381x;
    public final Random yp;

    /* JADX INFO: renamed from: z, reason: collision with root package name */
    public float f22382z;

    public BrokenImage(Context context) {
        super(context);
        this.tt = new Paint();
        this.ve = new Path();
        this.f22381x = false;
        this.f22376i = true;
        this.f22380u = 0;
        this.yp = new SecureRandom();
    }

    private void tt(int i10, int i11) {
        this.ve.reset();
        Path path = this.ve;
        Point point = this.sp[i10][i11];
        path.moveTo(point.x, point.y);
        Path path2 = this.ve;
        int i12 = i11 + 1;
        Point point2 = this.sp[i10][i12];
        path2.lineTo(point2.x, point2.y);
        Path path3 = this.ve;
        int i13 = i10 + 1;
        Point point3 = this.sp[i13][i12];
        path3.lineTo(point3.x, point3.y);
        Path path4 = this.ve;
        Point point4 = this.sp[i13][i11];
        path4.lineTo(point4.x, point4.y);
        this.ve.close();
    }

    public void c(int i10, int i11) {
        this.uj = i10;
        this.f22378n = i11;
        this.f22379t = new Rect(0, 0, getWidth(), getHeight());
        int width = getWidth() / i10;
        int height = getHeight() / i11;
        this.sp = (Point[][]) Array.newInstance((Class<?>) Point.class, i11 + 1, i10 + 1);
        for (int i12 = 0; i12 < i11; i12++) {
            for (int i13 = 0; i13 < i10; i13++) {
                int i14 = i13 * width;
                int i15 = i12 * height;
                Rect rect = new Rect(i14, i15, i14 + width, i15 + height);
                if (i12 == 0 || i13 == 0) {
                    this.sp[i12][i13] = new Point(rect.left, rect.top);
                }
                if (i12 == 0 || i13 == i10 - 1) {
                    this.sp[i12][i13 + 1] = new Point(rect.right, rect.top);
                }
                int i16 = i11 - 1;
                if (i12 == i16 || i13 == 0) {
                    this.sp[i12 + 1][i13] = new Point(rect.left, rect.bottom);
                }
                if (i12 == i16 || i13 == i10 - 1) {
                    this.sp[i12 + 1][i13 + 1] = new Point(rect.right, rect.bottom);
                } else {
                    this.sp[i12 + 1][i13 + 1] = new Point((int) (rect.right + ((this.yp.nextFloat() - 0.5f) * width)), (int) (rect.bottom + ((this.yp.nextFloat() - 0.5f) * height)));
                }
            }
        }
        this.f22381x = true;
        invalidate();
    }

    @Override // android.view.View
    public void onAttachedToWindow() {
        super.onAttachedToWindow();
        uj ujVar = this.f22374c;
        if (ujVar != null) {
            ujVar.n();
        }
    }

    @Override // android.view.View
    public void onDetachedFromWindow() {
        super.onDetachedFromWindow();
        uj ujVar = this.f22374c;
        if (ujVar != null) {
            ujVar.a();
        }
    }

    @Override // android.view.View
    public void onDraw(Canvas canvas) {
        Rect rect;
        try {
            super.onDraw(canvas);
        } catch (Exception unused) {
        }
        Bitmap bitmap = this.f22373a;
        if (bitmap == null || this.f22379t == null || bitmap.isRecycled()) {
            return;
        }
        if (this.f22381x) {
            for (int i10 = 0; i10 < this.f22378n; i10++) {
                int i11 = 0;
                while (i11 < this.uj) {
                    canvas.save();
                    int i12 = this.f22380u;
                    int i13 = i12 < 5 ? -i12 : i12 - 5;
                    Point[][] pointArr = this.sp;
                    int i14 = i11 + 1;
                    int i15 = i10 + 1;
                    int iMax = Math.max(pointArr[i10][i14].x, pointArr[i15][i14].x);
                    Point[][] pointArr2 = this.sp;
                    canvas.translate((((iMax + Math.min(pointArr2[i10][i11].x, pointArr2[i15][i11].x)) / 2) - this.f22382z) * 0.01f * this.f22380u * 0.05f, i15 * i13);
                    canvas.save();
                    tt(i10, i11);
                    canvas.clipPath(this.ve);
                    canvas.drawBitmap(this.f22373a, this.sl, this.f22379t, this.tt);
                    canvas.restore();
                    canvas.restore();
                    i11 = i14;
                }
            }
        }
        if (!this.f22376i || this.f22375da == null || (rect = this.sl) == null) {
            return;
        }
        canvas.drawBitmap(this.f22373a, rect, this.f22379t, this.tt);
    }

    @Override // android.view.View
    public void onSizeChanged(int i10, int i11, int i12, int i13) {
        super.onSizeChanged(i10, i11, i12, i13);
        this.f22379t = new Rect(0, 0, i10, i11);
        this.f22382z = i10 / 2.0f;
    }

    @Override // android.view.View
    public boolean onTouchEvent(MotionEvent motionEvent) {
        if (motionEvent.getAction() == 1) {
            this.f22382z = motionEvent.getX();
            this.f22377m = motionEvent.getY();
        }
        return super.onTouchEvent(motionEvent);
    }

    public void setBitmap(Bitmap bitmap) {
        if (bitmap == null || bitmap.isRecycled()) {
            return;
        }
        this.f22373a = bitmap;
        this.f22375da = new Rect(0, 0, bitmap.getWidth(), bitmap.getHeight());
        this.sl = new Rect(0, 0, this.f22373a.getWidth(), this.f22373a.getHeight());
        invalidate();
    }

    @Keep
    public void setBrokenProgress(int i10) {
        this.f22380u = i10;
        try {
            invalidate();
        } catch (Exception unused) {
        }
    }

    public void c(int i10) {
        ObjectAnimator objectAnimatorOfInt = ObjectAnimator.ofInt(this, "brokenProgress", 0, getHeight());
        objectAnimatorOfInt.setInterpolator(new AccelerateInterpolator());
        objectAnimatorOfInt.setDuration(i10 <= 0 ? 600L : i10);
        objectAnimatorOfInt.start();
        this.f22376i = false;
    }

    public void c(uj ujVar) {
        this.f22374c = ujVar;
    }
}
