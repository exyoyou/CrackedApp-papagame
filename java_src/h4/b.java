package h4;

import android.graphics.Bitmap;
import com.facebook.common.internal.i;
import com.facebook.infer.annotation.Nullsafe;

/* JADX INFO: loaded from: classes9.dex */
@Nullsafe(Nullsafe.Mode.STRICT)
public abstract class b {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private static final String f91386a = "IterativeBoxBlurFilter";

    private static int a(int x10, int l10, int h10) {
        if (x10 < l10) {
            return l10;
        }
        return x10 > h10 ? h10 : x10;
    }

    public static void b(final Bitmap bitmap, final int iterations, final int radius) {
        i.i(bitmap);
        i.d(Boolean.valueOf(bitmap.isMutable()));
        i.d(Boolean.valueOf(((float) bitmap.getHeight()) <= 2048.0f));
        i.d(Boolean.valueOf(((float) bitmap.getWidth()) <= 2048.0f));
        i.d(Boolean.valueOf(radius > 0 && radius <= 25));
        i.d(Boolean.valueOf(iterations > 0));
        try {
            c(bitmap, iterations, radius);
        } catch (OutOfMemoryError e10) {
            i3.a.u(f91386a, String.format(null, "OOM: %d iterations on %dx%d with %d radius", Integer.valueOf(iterations), Integer.valueOf(bitmap.getWidth()), Integer.valueOf(bitmap.getHeight()), Integer.valueOf(radius)));
            throw e10;
        }
    }

    private static void c(final Bitmap bitmap, final int iterations, final int radius) {
        int width = bitmap.getWidth();
        int height = bitmap.getHeight();
        int[] iArr = new int[width * height];
        bitmap.getPixels(iArr, 0, width, 0, 0, width, height);
        int i10 = radius + 1;
        int i11 = i10 + radius;
        int[] iArr2 = new int[i11 * 256];
        int i12 = 1;
        while (true) {
            if (i12 > 255) {
                break;
            }
            for (int i13 = 0; i13 < i11; i13++) {
                iArr2[i10] = i12;
                i10++;
            }
            i12++;
        }
        int[] iArr3 = new int[Math.max(width, height)];
        for (int i14 = 0; i14 < iterations; i14++) {
            for (int i15 = 0; i15 < height; i15++) {
                d(iArr, iArr3, width, i15, i11, iArr2);
                System.arraycopy(iArr3, 0, iArr, i15 * width, width);
            }
            int i16 = 0;
            while (i16 < width) {
                int i17 = i16;
                e(iArr, iArr3, width, height, i16, i11, iArr2);
                int i18 = i17;
                for (int i19 = 0; i19 < height; i19++) {
                    iArr[i18] = iArr3[i19];
                    i18 += width;
                }
                i16 = i17 + 1;
            }
        }
        bitmap.setPixels(iArr, 0, width, 0, 0, width, height);
    }

    private static void d(int[] pixels, int[] outRow, int w10, int row, int diameter, int[] div) {
        int i10 = w10 * row;
        int i11 = ((row + 1) * w10) - 1;
        int i12 = diameter >> 1;
        int i13 = 0;
        int i14 = 0;
        int i15 = 0;
        int i16 = 0;
        for (int i17 = -i12; i17 < w10 + i12; i17++) {
            int i18 = pixels[a(i10 + i17, i10, i11)];
            i13 += (i18 >> 16) & 255;
            i14 += (i18 >> 8) & 255;
            i15 += i18 & 255;
            i16 += i18 >>> 24;
            if (i17 >= i12) {
                outRow[i17 - i12] = (div[i16] << 24) | (div[i13] << 16) | (div[i14] << 8) | div[i15];
                int i19 = pixels[a((i17 - (diameter - 1)) + i10, i10, i11)];
                i13 -= (i19 >> 16) & 255;
                i14 -= (i19 >> 8) & 255;
                i15 -= i19 & 255;
                i16 -= i19 >>> 24;
            }
        }
    }

    private static void e(int[] pixels, int[] outCol, int w10, int h10, int col, int diameter, int[] div) {
        int i10 = ((h10 - 1) * w10) + col;
        int i11 = (diameter >> 1) * w10;
        int i12 = (diameter - 1) * w10;
        int i13 = col - i11;
        int i14 = 0;
        int i15 = 0;
        int i16 = 0;
        int i17 = 0;
        int i18 = 0;
        while (i13 <= i10 + i11) {
            int i19 = pixels[a(i13, col, i10)];
            i14 += (i19 >> 16) & 255;
            i15 += (i19 >> 8) & 255;
            i16 += i19 & 255;
            i17 += i19 >>> 24;
            if (i13 - i11 >= col) {
                outCol[i18] = (div[i17] << 24) | (div[i14] << 16) | (div[i15] << 8) | div[i16];
                i18++;
                int i20 = pixels[a(i13 - i12, col, i10)];
                i14 -= (i20 >> 16) & 255;
                i15 -= (i20 >> 8) & 255;
                i16 -= i20 & 255;
                i17 -= i20 >>> 24;
            }
            i13 += w10;
        }
    }
}
