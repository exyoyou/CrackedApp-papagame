package com.facebook.imagepipeline.bitmaps;

import android.graphics.Bitmap;
import android.graphics.Canvas;
import android.graphics.Matrix;
import android.graphics.Paint;
import android.graphics.Rect;
import android.graphics.RectF;
import android.util.DisplayMetrics;
import com.facebook.common.internal.i;
import com.facebook.common.references.CloseableReference;
import com.facebook.infer.annotation.Nullsafe;
import javax.annotation.Nullable;

/* JADX INFO: loaded from: classes9.dex */
@Nullsafe(Nullsafe.Mode.STRICT)
public abstract class f {

    static /* synthetic */ class a {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        static final /* synthetic */ int[] f27623a;

        static {
            int[] iArr = new int[Bitmap.Config.values().length];
            f27623a = iArr;
            try {
                iArr[Bitmap.Config.RGB_565.ordinal()] = 1;
            } catch (NoSuchFieldError unused) {
            }
            try {
                f27623a[Bitmap.Config.ALPHA_8.ordinal()] = 2;
            } catch (NoSuchFieldError unused2) {
            }
            try {
                f27623a[Bitmap.Config.ARGB_4444.ordinal()] = 3;
            } catch (NoSuchFieldError unused3) {
            }
            try {
                f27623a[Bitmap.Config.ARGB_8888.ordinal()] = 4;
            } catch (NoSuchFieldError unused4) {
            }
        }
    }

    private static Bitmap.Config C(Bitmap source) {
        Bitmap.Config config = Bitmap.Config.ARGB_8888;
        Bitmap.Config config2 = source.getConfig();
        if (config2 == null) {
            return config;
        }
        int i10 = a.f27623a[config2.ordinal()];
        if (i10 != 1) {
            return i10 != 2 ? Bitmap.Config.ARGB_8888 : Bitmap.Config.ALPHA_8;
        }
        return Bitmap.Config.RGB_565;
    }

    private static void D(Bitmap source, Bitmap destination) {
        destination.setDensity(source.getDensity());
        destination.setHasAlpha(source.hasAlpha());
        destination.setPremultiplied(source.isPremultiplied());
    }

    private static void a(Bitmap source, int x10, int y10, int width, int height) {
        i.e(x10 + width <= source.getWidth(), "x + width must be <= bitmap.width()");
        i.e(y10 + height <= source.getHeight(), "y + height must be <= bitmap.height()");
    }

    private static void b(int width, int height) {
        i.e(width > 0, "width must be > 0");
        i.e(height > 0, "height must be > 0");
    }

    private static void c(int x10, int y10) {
        i.e(x10 >= 0, "x must be >= 0");
        i.e(y10 >= 0, "y must be >= 0");
    }

    private CloseableReference<Bitmap> g(int width, int height, Bitmap.Config config, boolean hasAlpha) {
        return h(width, height, config, hasAlpha, null);
    }

    private CloseableReference<Bitmap> h(int width, int height, Bitmap.Config config, boolean hasAlpha, @Nullable Object callerContext) {
        return s(null, width, height, config, hasAlpha, callerContext);
    }

    private CloseableReference<Bitmap> r(DisplayMetrics display, int width, int height, Bitmap.Config config, boolean hasAlpha) {
        return s(display, width, height, config, hasAlpha, null);
    }

    private CloseableReference<Bitmap> s(@Nullable DisplayMetrics display, int width, int height, Bitmap.Config config, boolean hasAlpha, @Nullable Object callerContext) {
        b(width, height);
        CloseableReference<Bitmap> closeableReferenceZ = z(width, height, config);
        Bitmap bitmapJ = closeableReferenceZ.j();
        if (display != null) {
            bitmapJ.setDensity(display.densityDpi);
        }
        bitmapJ.setHasAlpha(hasAlpha);
        if (config == Bitmap.Config.ARGB_8888 && !hasAlpha) {
            bitmapJ.eraseColor(-16777216);
        }
        return closeableReferenceZ;
    }

    public CloseableReference<Bitmap> A(Bitmap source, int destinationWidth, int destinationHeight, boolean filter) {
        return B(source, destinationWidth, destinationHeight, filter, null);
    }

    public CloseableReference<Bitmap> B(Bitmap source, int destinationWidth, int destinationHeight, boolean filter, @Nullable Object callerContext) {
        b(destinationWidth, destinationHeight);
        Matrix matrix = new Matrix();
        int width = source.getWidth();
        int height = source.getHeight();
        matrix.setScale(destinationWidth / width, destinationHeight / height);
        return m(source, 0, 0, width, height, matrix, filter, callerContext);
    }

    public CloseableReference<Bitmap> d(int width, int height) {
        return e(width, height, Bitmap.Config.ARGB_8888);
    }

    public CloseableReference<Bitmap> e(int width, int height, Bitmap.Config bitmapConfig) {
        return f(width, height, bitmapConfig, null);
    }

    public CloseableReference<Bitmap> f(int width, int height, Bitmap.Config bitmapConfig, @Nullable Object callerContext) {
        return z(width, height, bitmapConfig);
    }

    public CloseableReference<Bitmap> i(int width, int height, @Nullable Object callerContext) {
        return f(width, height, Bitmap.Config.ARGB_8888, callerContext);
    }

    public CloseableReference<Bitmap> j(Bitmap source) {
        return o(source, null);
    }

    public CloseableReference<Bitmap> k(Bitmap source, int x10, int y10, int width, int height) {
        return n(source, x10, y10, width, height, null);
    }

    public CloseableReference<Bitmap> l(Bitmap source, int x10, int y10, int width, int height, @Nullable Matrix matrix, boolean filter) {
        return m(source, x10, y10, width, height, matrix, filter, null);
    }

    public CloseableReference<Bitmap> m(Bitmap source, int x10, int y10, int width, int height, @Nullable Matrix matrix, boolean filter, @Nullable Object callerContext) {
        CloseableReference<Bitmap> closeableReferenceH;
        Canvas canvas;
        Paint paint;
        i.j(source, "Source bitmap cannot be null");
        c(x10, y10);
        b(width, height);
        a(source, x10, y10, width, height);
        Rect rect = new Rect(x10, y10, x10 + width, y10 + height);
        RectF rectF = new RectF(0.0f, 0.0f, width, height);
        Bitmap.Config configC = C(source);
        if (matrix == null || matrix.isIdentity()) {
            closeableReferenceH = h(width, height, configC, source.hasAlpha(), callerContext);
            D(source, closeableReferenceH.j());
            canvas = new Canvas(closeableReferenceH.j());
            paint = null;
        } else {
            boolean z10 = !matrix.rectStaysRect();
            RectF rectF2 = new RectF();
            matrix.mapRect(rectF2, rectF);
            int iRound = Math.round(rectF2.width());
            int iRound2 = Math.round(rectF2.height());
            if (z10) {
                configC = Bitmap.Config.ARGB_8888;
            }
            closeableReferenceH = h(iRound, iRound2, configC, z10 || source.hasAlpha(), callerContext);
            D(source, closeableReferenceH.j());
            canvas = new Canvas(closeableReferenceH.j());
            canvas.translate(-rectF2.left, -rectF2.top);
            canvas.concat(matrix);
            paint = new Paint();
            paint.setFilterBitmap(filter);
            if (z10) {
                paint.setAntiAlias(true);
            }
        }
        canvas.drawBitmap(source, rect, rectF, paint);
        canvas.setBitmap(null);
        return closeableReferenceH;
    }

    public CloseableReference<Bitmap> n(Bitmap source, int x10, int y10, int width, int height, @Nullable Object callerContext) {
        return m(source, x10, y10, width, height, null, false, callerContext);
    }

    public CloseableReference<Bitmap> o(Bitmap source, @Nullable Object callerContext) {
        return n(source, 0, 0, source.getWidth(), source.getHeight(), callerContext);
    }

    public CloseableReference<Bitmap> p(DisplayMetrics display, int width, int height, Bitmap.Config config) {
        return q(display, width, height, config, null);
    }

    public CloseableReference<Bitmap> q(DisplayMetrics display, int width, int height, Bitmap.Config config, @Nullable Object callerContext) {
        return s(display, width, height, config, true, callerContext);
    }

    public CloseableReference<Bitmap> t(DisplayMetrics display, int[] colors, int offset, int stride, int width, int height, Bitmap.Config config) {
        return u(display, colors, offset, stride, width, height, config, null);
    }

    public CloseableReference<Bitmap> u(DisplayMetrics display, int[] colors, int offset, int stride, int width, int height, Bitmap.Config config, @Nullable Object callerContext) {
        CloseableReference<Bitmap> closeableReferenceQ = q(display, width, height, config, callerContext);
        closeableReferenceQ.j().setPixels(colors, offset, stride, 0, 0, width, height);
        return closeableReferenceQ;
    }

    public CloseableReference<Bitmap> v(DisplayMetrics display, int[] colors, int width, int height, Bitmap.Config config) {
        return w(display, colors, width, height, config, null);
    }

    public CloseableReference<Bitmap> w(DisplayMetrics display, int[] colors, int width, int height, Bitmap.Config config, @Nullable Object callerContext) {
        return u(display, colors, 0, width, width, height, config, callerContext);
    }

    public CloseableReference<Bitmap> x(int[] colors, int width, int height, Bitmap.Config config) {
        return y(colors, width, height, config, null);
    }

    public CloseableReference<Bitmap> y(int[] colors, int width, int height, Bitmap.Config config, @Nullable Object callerContext) {
        CloseableReference<Bitmap> closeableReferenceZ = z(width, height, config);
        closeableReferenceZ.j().setPixels(colors, 0, width, 0, 0, width, height);
        return closeableReferenceZ;
    }

    public abstract CloseableReference<Bitmap> z(int width, int height, Bitmap.Config bitmapConfig);
}
