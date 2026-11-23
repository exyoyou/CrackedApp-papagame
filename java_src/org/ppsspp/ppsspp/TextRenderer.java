package org.ppsspp.ppsspp;

import android.content.Context;
import android.graphics.Bitmap;
import android.graphics.Canvas;
import android.graphics.Paint;
import android.graphics.Point;
import android.graphics.Typeface;

/* JADX INFO: loaded from: classes10.dex */
public class TextRenderer {
    private static final String TAG = "TextRenderer";
    private static Paint bg;

    /* JADX INFO: renamed from: p, reason: collision with root package name */
    private static Paint f95921p;
    private static Typeface robotoCondensed;

    static {
        Paint paint = new Paint(129);
        f95921p = paint;
        paint.setColor(-1);
        Paint paint2 = new Paint();
        bg = paint2;
        paint2.setColor(-16777216);
    }

    public static void init(Context context) {
        Typeface typefaceCreateFromFile = Typeface.createFromFile(NativeActivity.assetsPath + "Roboto-Condensed.ttf");
        robotoCondensed = typefaceCreateFromFile;
        if (typefaceCreateFromFile != null) {
            f95921p.setTypeface(robotoCondensed);
        }
    }

    private static Point measure(String str, double d10) {
        String[] strArrSplit = str.replaceAll("\\r", "").split("\n");
        Point point = new Point();
        point.x = 0;
        for (String str2 : strArrSplit) {
            point.x = Math.max(measureLine(str2, d10).x, point.x);
        }
        point.y = (((int) (f95921p.descent() - f95921p.ascent())) * strArrSplit.length) + 2;
        return point;
    }

    private static Point measureLine(String str, double d10) {
        int iMeasureText;
        if (str.length() > 0) {
            f95921p.setTextSize((float) d10);
            iMeasureText = (((int) f95921p.measureText(str)) + 5) & (-2);
        } else {
            iMeasureText = 1;
        }
        int iDescent = (int) ((f95921p.descent() - f95921p.ascent()) + 2.0f);
        Point point = new Point();
        point.x = iMeasureText;
        point.y = iDescent;
        return point;
    }

    public static int measureText(String str, double d10) {
        Point pointMeasure = measure(str, d10);
        return pointMeasure.y | (pointMeasure.x << 16);
    }

    public static int[] renderText(String str, double d10) {
        Point pointMeasure = measure(str, d10);
        int i10 = pointMeasure.x;
        int i11 = pointMeasure.y;
        int i12 = i10 == 0 ? 1 : i10;
        int i13 = i11 == 0 ? 1 : i11;
        Bitmap bitmapCreateBitmap = Bitmap.createBitmap(i12, i13, Bitmap.Config.ARGB_8888);
        Canvas canvas = new Canvas(bitmapCreateBitmap);
        canvas.drawRect(0.0f, 0.0f, i12, i13, bg);
        float fDescent = 1.0f;
        for (String str2 : str.replaceAll("\\r", "").split("\n")) {
            if (str2.length() > 0) {
                canvas.drawText(str2, 1.0f, (-f95921p.ascent()) + fDescent, f95921p);
            }
            fDescent += f95921p.descent() - f95921p.ascent();
        }
        int[] iArr = new int[i12 * i13];
        bitmapCreateBitmap.getPixels(iArr, 0, i12, 0, 0, i12, i13);
        bitmapCreateBitmap.recycle();
        return iArr;
    }
}
