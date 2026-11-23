package com.haima.hmcp.utils;

import android.content.res.Resources;
import android.graphics.Bitmap;
import android.graphics.BitmapFactory;
import android.graphics.Canvas;
import android.graphics.Matrix;
import android.graphics.Paint;

/* JADX INFO: loaded from: classes5.dex */
public class ImageUtil {
    public static String Tag = "ImageUtil";

    public static Bitmap adaptionScreen(Bitmap bitmap, int i10, int i11) {
        Bitmap bitmapCreateScaledBitmap;
        if (bitmap == null) {
            return null;
        }
        int width = bitmap.getWidth();
        int height = bitmap.getHeight();
        LogUtils.e(Tag, "autoScreen-- screenWidth = " + i10 + ", screenHeight = " + i11 + ", bitmapwidth = " + width + ", bitmapheight = " + height);
        if (height >= i11 || width >= i10) {
            bitmapCreateScaledBitmap = bitmap;
        } else {
            float f10 = height;
            float f11 = i11 / f10;
            float f12 = width;
            float f13 = i10 / f12;
            if (f11 < f13) {
                width = (int) (f12 * f11);
                height = i11;
            } else {
                height = (int) (f10 * f13);
                width = i10;
            }
            bitmapCreateScaledBitmap = Bitmap.createScaledBitmap(bitmap, width, height, true);
        }
        if (height > i11) {
            width = (int) (width * (i11 / height));
            bitmapCreateScaledBitmap = Bitmap.createScaledBitmap(bitmap, width, i11, true);
        } else {
            i11 = height;
        }
        if (width > i10) {
            i11 = (int) (i11 * (i10 / width));
            bitmapCreateScaledBitmap = Bitmap.createScaledBitmap(bitmap, i10, i11, true);
        } else {
            i10 = width;
        }
        LogUtils.d(Tag, "autoScreen finish--bitmapwidth = " + i10 + ", bitmapheight = " + i11);
        if (bitmapCreateScaledBitmap != bitmap) {
            bitmap.recycle();
            LogUtils.d(Tag, "autoScreen finish--recycle oldBitmap");
        }
        return bitmapCreateScaledBitmap;
    }

    public static Bitmap adjustBitmapRotation(Bitmap bitmap, int i10) {
        float height;
        float width;
        Matrix matrix = new Matrix();
        matrix.setRotate(i10, bitmap.getWidth() / 2.0f, bitmap.getHeight() / 2.0f);
        if (i10 == 90) {
            height = bitmap.getHeight();
            width = 0.0f;
        } else {
            height = bitmap.getHeight();
            width = bitmap.getWidth();
        }
        float[] fArr = new float[9];
        matrix.getValues(fArr);
        matrix.postTranslate(height - fArr[2], width - fArr[5]);
        Bitmap bitmapCreateBitmap = Bitmap.createBitmap(bitmap.getHeight(), bitmap.getWidth(), Bitmap.Config.ARGB_8888);
        new Canvas(bitmapCreateBitmap).drawBitmap(bitmap, matrix, new Paint());
        return bitmapCreateBitmap;
    }

    public static Bitmap getBitmap(String str, int i10, int i11) {
        if (i10 == 0 || i11 == 0) {
            return null;
        }
        BitmapFactory.Options options = new BitmapFactory.Options();
        options.inJustDecodeBounds = true;
        BitmapFactory.decodeFile(str, options);
        int i12 = options.outHeight;
        int i13 = options.outWidth / i10;
        int i14 = i12 / i11;
        if (i13 > i14 && i14 > 1) {
            options.inSampleSize = i13;
        }
        if (i14 > i13 && i13 > 1) {
            options.inSampleSize = i14;
        }
        options.inJustDecodeBounds = false;
        return BitmapFactory.decodeFile(str, options);
    }

    public static Bitmap getBitmapForResources(Resources resources, int i10, int i11, int i12) {
        BitmapFactory.Options options = new BitmapFactory.Options();
        options.inJustDecodeBounds = true;
        BitmapFactory.decodeResource(resources, i10, options);
        int i13 = options.outHeight;
        int i14 = options.outWidth / i11;
        int i15 = i13 / i12;
        if (i14 > i15 && i15 > 1) {
            options.inSampleSize = i14;
        }
        if (i15 > i14 && i14 > 1) {
            options.inSampleSize = i15;
        }
        options.inJustDecodeBounds = false;
        Bitmap bitmapDecodeResource = BitmapFactory.decodeResource(resources, i10, options);
        LogUtils.d(Tag, options.inSampleSize + " getBitmapForResources -- bitmapwidth = " + bitmapDecodeResource.getWidth() + ",bitmapheight = " + bitmapDecodeResource.getHeight());
        return bitmapDecodeResource;
    }

    public static Bitmap rotateBitmap(Bitmap bitmap, int i10, int i11) {
        if (bitmap == null) {
            return null;
        }
        int width = bitmap.getWidth();
        int height = bitmap.getHeight();
        LogUtils.e(Tag, "rotateBitmap-- screenWidth = " + i10 + ", screenHeight = " + i11 + ", bitmapwidth = " + width + ", bitmapheight = " + height);
        if (i10 >= i11) {
            return bitmap;
        }
        Matrix matrix = new Matrix();
        matrix.setRotate(90.0f);
        Bitmap bitmapCreateBitmap = Bitmap.createBitmap(bitmap, 0, 0, width, height, matrix, true);
        LogUtils.e(Tag, "rotateBitmap--newBM");
        return bitmapCreateBitmap;
    }
}
