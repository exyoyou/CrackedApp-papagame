package com.facebook.imageutils;

import android.annotation.SuppressLint;
import android.graphics.Bitmap;
import android.graphics.BitmapFactory;
import android.net.Uri;
import android.os.Build;
import android.util.Pair;
import androidx.core.util.Pools;
import com.facebook.common.internal.i;
import com.facebook.infer.annotation.Nullsafe;
import java.io.ByteArrayInputStream;
import java.io.InputStream;
import java.nio.ByteBuffer;
import javax.annotation.Nullable;

/* JADX INFO: loaded from: classes9.dex */
@Nullsafe(Nullsafe.Mode.STRICT)
public final class a {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private static final int f28758a = 16384;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private static final int f28759b = 12;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    private static final Pools.SynchronizedPool<ByteBuffer> f28760c = new Pools.SynchronizedPool<>(12);

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    public static final int f28761d = 1;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public static final int f28762e = 2;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    public static final int f28763f = 4;

    /* JADX INFO: renamed from: g, reason: collision with root package name */
    public static final int f28764g = 2;

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    public static final int f28765h = 8;

    /* JADX INFO: renamed from: i, reason: collision with root package name */
    public static final float f28766i = 2048.0f;

    /* JADX INFO: renamed from: com.facebook.imageutils.a$a, reason: collision with other inner class name */
    static /* synthetic */ class C0582a {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        static final /* synthetic */ int[] f28767a;

        static {
            int[] iArr = new int[Bitmap.Config.values().length];
            f28767a = iArr;
            try {
                iArr[Bitmap.Config.ARGB_8888.ordinal()] = 1;
            } catch (NoSuchFieldError unused) {
            }
            try {
                f28767a[Bitmap.Config.ALPHA_8.ordinal()] = 2;
            } catch (NoSuchFieldError unused2) {
            }
            try {
                f28767a[Bitmap.Config.ARGB_4444.ordinal()] = 3;
            } catch (NoSuchFieldError unused3) {
            }
            try {
                f28767a[Bitmap.Config.RGB_565.ordinal()] = 4;
            } catch (NoSuchFieldError unused4) {
            }
            try {
                f28767a[Bitmap.Config.RGBA_F16.ordinal()] = 5;
            } catch (NoSuchFieldError unused5) {
            }
            try {
                f28767a[Bitmap.Config.HARDWARE.ordinal()] = 6;
            } catch (NoSuchFieldError unused6) {
            }
        }
    }

    @Nullable
    public static Pair<Integer, Integer> a(Uri uri) {
        i.i(uri);
        BitmapFactory.Options options = new BitmapFactory.Options();
        options.inJustDecodeBounds = true;
        BitmapFactory.decodeFile(uri.getPath(), options);
        if (options.outWidth == -1 || options.outHeight == -1) {
            return null;
        }
        return new Pair<>(Integer.valueOf(options.outWidth), Integer.valueOf(options.outHeight));
    }

    @Nullable
    public static Pair<Integer, Integer> b(InputStream is) {
        i.i(is);
        ByteBuffer byteBufferAcquire = f28760c.acquire();
        if (byteBufferAcquire == null) {
            byteBufferAcquire = ByteBuffer.allocate(16384);
        }
        BitmapFactory.Options options = new BitmapFactory.Options();
        options.inJustDecodeBounds = true;
        try {
            options.inTempStorage = byteBufferAcquire.array();
            Pair<Integer, Integer> pair = null;
            BitmapFactory.decodeStream(is, null, options);
            if (options.outWidth != -1 && options.outHeight != -1) {
                pair = new Pair<>(Integer.valueOf(options.outWidth), Integer.valueOf(options.outHeight));
            }
            return pair;
        } finally {
            f28760c.release(byteBufferAcquire);
        }
    }

    @Nullable
    public static Pair<Integer, Integer> c(byte[] bytes) {
        return b(new ByteArrayInputStream(bytes));
    }

    public static d d(InputStream is) {
        i.i(is);
        ByteBuffer byteBufferAcquire = f28760c.acquire();
        if (byteBufferAcquire == null) {
            byteBufferAcquire = ByteBuffer.allocate(16384);
        }
        BitmapFactory.Options options = new BitmapFactory.Options();
        options.inJustDecodeBounds = true;
        try {
            options.inTempStorage = byteBufferAcquire.array();
            BitmapFactory.decodeStream(is, null, options);
            return new d(options.outWidth, options.outHeight, Build.VERSION.SDK_INT >= 26 ? options.outColorSpace : null);
        } finally {
            f28760c.release(byteBufferAcquire);
        }
    }

    public static int e(Bitmap.Config bitmapConfig) {
        switch (C0582a.f28767a[bitmapConfig.ordinal()]) {
            case 1:
                return 4;
            case 2:
                return 1;
            case 3:
            case 4:
                return 2;
            case 5:
                return 8;
            case 6:
                return 4;
            default:
                throw new UnsupportedOperationException("The provided Bitmap.Config is not supported");
        }
    }

    public static int f(int width, int height, Bitmap.Config bitmapConfig) {
        return width * height * e(bitmapConfig);
    }

    @SuppressLint({"NewApi"})
    public static int g(@Nullable Bitmap bitmap) {
        if (bitmap == null) {
            return 0;
        }
        try {
            return bitmap.getAllocationByteCount();
        } catch (NullPointerException unused) {
            return bitmap.getByteCount();
        }
    }
}
