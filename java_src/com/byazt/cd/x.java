package com.byazt.cd;

import android.content.Context;
import android.graphics.Bitmap;
import android.graphics.drawable.Drawable;
import android.os.Build;
import android.os.Handler;
import android.os.Looper;
import android.renderscript.Allocation;
import android.renderscript.Element;
import android.renderscript.RenderScript;
import android.renderscript.ScriptIntrinsicBlur;
import android.util.TypedValue;
import com.byazt.nr.m;

/* JADX INFO: loaded from: classes6.dex */
@com.byazt.zqa.c(c = {0, 1, 43, 71})
public class x {
    public static TypedValue ve;
    public static final Object tt = new Object();

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public static Handler f12383c = new Handler(Looper.getMainLooper());

    public static float c(Context context, String str) {
        float f10;
        float f11 = context.getResources().getDisplayMetrics().density;
        try {
            f10 = Float.parseFloat(str);
        } catch (NumberFormatException unused) {
            f10 = 0.0f;
        }
        return (f10 * f11) + 0.5f;
    }

    public static int tt(Context context, float f10) {
        float f11 = context.getResources().getDisplayMetrics().density;
        if (f11 <= 0.0f) {
            f11 = 1.0f;
        }
        return (int) ((f10 / f11) + 0.5f);
    }

    public static float c(Context context, float f10) {
        return (f10 * context.getResources().getDisplayMetrics().density) + 0.5f;
    }

    public static int c(Context context) {
        return context.getResources().getDisplayMetrics().heightPixels;
    }

    public static Bitmap c(Context context, Bitmap bitmap, int i10) {
        try {
            if (Build.VERSION.SDK_INT < 26) {
                return null;
            }
            Bitmap bitmapCreateScaledBitmap = Bitmap.createScaledBitmap(bitmap, Math.round(bitmap.getWidth() * 0.2f), Math.round(bitmap.getHeight() * 0.2f), false);
            Bitmap bitmapCreateBitmap = Bitmap.createBitmap(bitmapCreateScaledBitmap);
            RenderScript renderScriptCreate = RenderScript.create(context);
            if (renderScriptCreate == null) {
                return null;
            }
            ScriptIntrinsicBlur scriptIntrinsicBlurCreate = ScriptIntrinsicBlur.create(renderScriptCreate, Element.U8_4(renderScriptCreate));
            Allocation allocationCreateFromBitmap = Allocation.createFromBitmap(renderScriptCreate, bitmapCreateScaledBitmap);
            Allocation allocationCreateFromBitmap2 = Allocation.createFromBitmap(renderScriptCreate, bitmapCreateBitmap);
            scriptIntrinsicBlurCreate.setRadius(i10);
            scriptIntrinsicBlurCreate.setInput(allocationCreateFromBitmap);
            scriptIntrinsicBlurCreate.forEach(allocationCreateFromBitmap2);
            allocationCreateFromBitmap2.copyTo(bitmapCreateBitmap);
            return bitmapCreateBitmap;
        } catch (Throwable th) {
            m.c(th);
            return null;
        }
    }

    public static Drawable c(Context context, int i10) {
        return context.getDrawable(i10);
    }

    public static boolean c() {
        return Looper.getMainLooper() == Looper.myLooper();
    }

    public static void c(Runnable runnable) {
        if (c()) {
            runnable.run();
        } else {
            f12383c.post(runnable);
        }
    }
}
