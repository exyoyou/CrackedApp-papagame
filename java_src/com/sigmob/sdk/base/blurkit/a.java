package com.sigmob.sdk.base.blurkit;

import android.content.Context;
import android.graphics.Bitmap;
import android.graphics.Canvas;
import android.graphics.Matrix;
import android.graphics.Paint;
import android.renderscript.Allocation;
import android.renderscript.Element;
import android.renderscript.RenderScript;
import android.renderscript.ScriptIntrinsicBlur;
import android.view.View;

/* JADX INFO: loaded from: classes5.dex */
public class a {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private static final float f78811a = 1.0f;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private static a f78812b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    private static RenderScript f78813c;

    private Bitmap a(Bitmap src, float downscaleFactor) {
        Bitmap bitmapCreateBitmap = Bitmap.createBitmap((int) (src.getWidth() * downscaleFactor), (int) (src.getHeight() * downscaleFactor), Bitmap.Config.ARGB_8888);
        Canvas canvas = new Canvas(bitmapCreateBitmap);
        Matrix matrix = new Matrix();
        matrix.preScale(downscaleFactor, downscaleFactor);
        canvas.setMatrix(matrix);
        canvas.drawBitmap(src, 0.0f, 0.0f, (Paint) null);
        return bitmapCreateBitmap;
    }

    public Bitmap a(Bitmap src, int radius) {
        try {
            Allocation allocationCreateFromBitmap = Allocation.createFromBitmap(f78813c, src);
            Allocation allocationCreateTyped = Allocation.createTyped(f78813c, allocationCreateFromBitmap.getType());
            RenderScript renderScript = f78813c;
            ScriptIntrinsicBlur scriptIntrinsicBlurCreate = ScriptIntrinsicBlur.create(renderScript, Element.U8_4(renderScript));
            scriptIntrinsicBlurCreate.setRadius(radius);
            scriptIntrinsicBlurCreate.setInput(allocationCreateFromBitmap);
            scriptIntrinsicBlurCreate.forEach(allocationCreateTyped);
            allocationCreateTyped.copyTo(src);
        } catch (Throwable unused) {
        }
        return src;
    }

    public Bitmap a(Bitmap src, int radius, float downscaleFactor) {
        return a(a(src, downscaleFactor), radius);
    }

    private Bitmap a(View src) {
        Bitmap bitmapCreateBitmap = Bitmap.createBitmap(src.getWidth(), src.getHeight(), Bitmap.Config.ARGB_8888);
        src.draw(new Canvas(bitmapCreateBitmap));
        return bitmapCreateBitmap;
    }

    private Bitmap a(View src, float downscaleFactor) {
        Bitmap bitmapCreateBitmap = Bitmap.createBitmap((int) (src.getWidth() * downscaleFactor), (int) (src.getHeight() * downscaleFactor), Bitmap.Config.ARGB_8888);
        Canvas canvas = new Canvas(bitmapCreateBitmap);
        Matrix matrix = new Matrix();
        matrix.preScale(downscaleFactor, downscaleFactor);
        canvas.setMatrix(matrix);
        src.draw(canvas);
        return bitmapCreateBitmap;
    }

    public Bitmap a(View src, int radius) {
        return a(a(src), radius);
    }

    public Bitmap a(View src, int radius, float downscaleFactor) {
        return a(a(src, downscaleFactor), radius);
    }

    public static a a() {
        a aVar = f78812b;
        if (aVar != null) {
            return aVar;
        }
        throw new RuntimeException("BlurKit not initialized!");
    }

    public static void a(Context context) {
        if (f78812b != null) {
            return;
        }
        f78812b = new a();
        f78813c = RenderScript.create(context.getApplicationContext());
    }
}
