package com.join.mgps.customview.zoomlayout;

import android.content.Context;
import android.graphics.Canvas;
import android.graphics.Matrix;
import android.graphics.Paint;
import android.graphics.Rect;
import android.graphics.RectF;
import androidx.core.internal.view.SupportMenu;
import androidx.core.view.InputDeviceCompat;
import java.util.Locale;

/* JADX INFO: loaded from: classes3.dex */
public class c {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private static final String f67222a = "[ scale:%.2f, x:%.0f, y:%.0f ]";

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private static final String f67223b = "[ %.2f, %.2f, %.2f ][ %.2f, %.2f, %.2f ][ %.2f, %.2f, %.2f ]";

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    private static final float[] f67224c = new float[9];

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    private static final String f67225d = "%s: %s [ %.0f, %.0f, %.0f, %.0f ], w:%s, h:%s";

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    private static Paint f67226e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    private static Paint f67227f;

    /* JADX INFO: renamed from: g, reason: collision with root package name */
    private static Paint f67228g;

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    private static Paint f67229h;

    /* JADX INFO: renamed from: i, reason: collision with root package name */
    private static int f67230i;

    private c() {
    }

    public static void a(Canvas canvas, Context context, float tx, float ty, float fx, float fy, float invScale) {
        d(context);
        int i10 = (int) (f67230i * invScale);
        b(canvas, tx, ty, i10, f67226e);
        b(canvas, 0.0f, 0.0f, i10, f67229h);
        b(canvas, fx, fy, i10, f67228g);
    }

    private static void b(Canvas canvas, float cx, float cy, int r10, Paint p10) {
        canvas.drawCircle(cx, cy, r10, f67227f);
        canvas.drawCircle(cx, cy, r10 / 2, p10);
    }

    private static int c(int dp, Context ctx) {
        return (int) (dp * ctx.getResources().getDisplayMetrics().density);
    }

    private static void d(Context context) {
        if (f67226e == null) {
            Paint paint = new Paint();
            f67227f = paint;
            paint.setColor(-1);
            Paint paint2 = new Paint();
            f67226e = paint2;
            paint2.setColor(-16776961);
            Paint paint3 = new Paint();
            f67228g = paint3;
            paint3.setColor(InputDeviceCompat.SOURCE_ANY);
            Paint paint4 = new Paint();
            f67229h = paint4;
            paint4.setColor(SupportMenu.CATEGORY_MASK);
            f67230i = c(4, context);
        }
    }

    public static String e(Matrix m10) {
        float[] fArr = f67224c;
        m10.getValues(fArr);
        return String.format(Locale.US, f67222a, Float.valueOf(fArr[0]), Float.valueOf(fArr[2]), Float.valueOf(fArr[5]));
    }

    public static String f(Matrix m10) {
        float[] fArr = f67224c;
        m10.getValues(fArr);
        return String.format(Locale.US, f67223b, Float.valueOf(fArr[0]), Float.valueOf(fArr[1]), Float.valueOf(fArr[2]), Float.valueOf(fArr[3]), Float.valueOf(fArr[4]), Float.valueOf(fArr[5]), Float.valueOf(fArr[6]), Float.valueOf(fArr[7]), Float.valueOf(fArr[8]));
    }

    public static String g(String tag, String name, RectF r10) {
        return String.format(Locale.US, f67225d, tag, name, Float.valueOf(r10.left), Float.valueOf(r10.top), Float.valueOf(r10.right), Float.valueOf(r10.bottom), Float.valueOf(r10.width()), Float.valueOf(r10.height()));
    }

    public static void h(float[] array, Rect rect) {
        array[0] = rect.left;
        array[1] = rect.top;
        array[2] = rect.right;
        array[3] = rect.bottom;
    }

    public static void i(float[] array, RectF rect) {
        array[0] = rect.left;
        array[1] = rect.top;
        array[2] = rect.right;
        array[3] = rect.bottom;
    }

    public static void j(Rect rect, float l10, float t10, float r10, float b10) {
        rect.set(Math.round(l10), Math.round(t10), Math.round(r10), Math.round(b10));
    }

    public static void k(Rect rect, float[] array) {
        j(rect, array[0], array[1], array[2], array[3]);
    }

    public static void l(RectF rect, float l10, float t10, float r10, float b10) {
        rect.set(Math.round(l10), Math.round(t10), Math.round(r10), Math.round(b10));
    }

    public static void m(RectF rect, float[] array) {
        l(rect, array[0], array[1], array[2], array[3]);
    }
}
