package com.join.android.app.common.utils;

import android.graphics.Bitmap;
import android.graphics.Canvas;
import android.graphics.Paint;
import android.graphics.PorterDuff;
import android.graphics.PorterDuffXfermode;
import android.graphics.Rect;
import android.graphics.RectF;
import android.graphics.drawable.BitmapDrawable;
import android.graphics.drawable.Drawable;
import android.widget.ImageView;

/* JADX INFO: loaded from: classes5.dex */
public class h {
    public static Bitmap a(Bitmap bitmap) {
        float f10;
        float f11;
        float f12;
        float f13;
        int width = bitmap.getWidth();
        int height = bitmap.getHeight();
        if (width <= height) {
            f13 = width / 2;
            f12 = width;
            f11 = f12;
            f10 = 0.0f;
        } else {
            f10 = (width - height) / 2;
            f11 = height;
            f12 = width - f10;
            width = height;
            f13 = height / 2;
        }
        Bitmap bitmapCreateBitmap = Bitmap.createBitmap(width, width, Bitmap.Config.ARGB_8888);
        Canvas canvas = new Canvas(bitmapCreateBitmap);
        Paint paint = new Paint();
        Rect rect = new Rect((int) f10, (int) 0.0f, (int) f12, (int) f11);
        Rect rect2 = new Rect((int) 0.0f, (int) 0.0f, (int) f11, (int) f11);
        RectF rectF = new RectF(rect2);
        paint.setAntiAlias(true);
        canvas.drawARGB(0, 0, 0, 0);
        paint.setColor(-12434878);
        canvas.drawRoundRect(rectF, f13, f13, paint);
        paint.setXfermode(new PorterDuffXfermode(PorterDuff.Mode.SRC_IN));
        canvas.drawBitmap(bitmap, rect, rect2, paint);
        return bitmapCreateBitmap;
    }

    public static void b(ImageView userIcon, Drawable drawable) {
        float f10;
        float f11;
        float f12;
        float f13;
        Bitmap bitmap = ((BitmapDrawable) drawable).getBitmap();
        int width = bitmap.getWidth();
        int height = bitmap.getHeight();
        if (width <= height) {
            f13 = width / 2;
            f12 = width;
            f11 = f12;
            f10 = 0.0f;
        } else {
            f10 = (width - height) / 2;
            f11 = height;
            f12 = width - f10;
            width = height;
            f13 = height / 2;
        }
        Bitmap bitmapCreateBitmap = Bitmap.createBitmap(width, width, Bitmap.Config.ARGB_8888);
        Canvas canvas = new Canvas(bitmapCreateBitmap);
        Paint paint = new Paint();
        Rect rect = new Rect((int) f10, (int) 0.0f, (int) f12, (int) f11);
        Rect rect2 = new Rect((int) 0.0f, (int) 0.0f, (int) f11, (int) f11);
        RectF rectF = new RectF(rect2);
        paint.setAntiAlias(true);
        canvas.drawARGB(0, 0, 0, 0);
        paint.setColor(-12434878);
        canvas.drawRoundRect(rectF, f13, f13, paint);
        paint.setXfermode(new PorterDuffXfermode(PorterDuff.Mode.SRC_IN));
        canvas.drawBitmap(bitmap, rect, rect2, paint);
        userIcon.setImageBitmap(bitmapCreateBitmap);
    }
}
