package com.facebook.imagepipeline.nativecode;

import android.annotation.TargetApi;
import android.graphics.Bitmap;
import android.graphics.BitmapFactory;
import android.graphics.ColorSpace;
import android.graphics.Rect;
import android.os.Build;
import androidx.annotation.VisibleForTesting;
import com.facebook.common.internal.DoNotStrip;
import com.facebook.common.internal.n;
import com.facebook.common.memory.PooledByteBuffer;
import com.facebook.common.references.CloseableReference;
import com.facebook.imagepipeline.common.TooManyBitmapsException;
import com.facebook.imagepipeline.memory.i;
import com.facebook.infer.annotation.Nullsafe;
import com.facebook.soloader.DoNotOptimize;
import java.util.Locale;
import javax.annotation.Nullable;

/* JADX INFO: loaded from: classes9.dex */
@DoNotStrip
@Nullsafe(Nullsafe.Mode.STRICT)
public abstract class DalvikPurgeableDecoder implements com.facebook.imagepipeline.platform.g {

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    protected static final byte[] f28212b;

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private final com.facebook.imagepipeline.memory.g f28213a = i.a();

    @DoNotOptimize
    private static class OreoUtils {
        private OreoUtils() {
        }

        @TargetApi(26)
        static void a(BitmapFactory.Options options, @Nullable ColorSpace colorSpace) {
            if (colorSpace == null) {
                colorSpace = ColorSpace.get(ColorSpace.Named.SRGB);
            }
            options.inPreferredColorSpace = colorSpace;
        }
    }

    static {
        c.a();
        f28212b = new byte[]{-1, -39};
    }

    protected DalvikPurgeableDecoder() {
    }

    @VisibleForTesting
    public static boolean g(CloseableReference<PooledByteBuffer> bytesRef, int length) {
        PooledByteBuffer pooledByteBufferJ = bytesRef.j();
        return length >= 2 && pooledByteBufferJ.D(length + (-2)) == -1 && pooledByteBufferJ.D(length - 1) == -39;
    }

    @VisibleForTesting
    public static BitmapFactory.Options h(int sampleSize, Bitmap.Config bitmapConfig) {
        BitmapFactory.Options options = new BitmapFactory.Options();
        options.inDither = true;
        options.inPreferredConfig = bitmapConfig;
        options.inPurgeable = true;
        options.inInputShareable = true;
        options.inSampleSize = sampleSize;
        options.inMutable = true;
        return options;
    }

    @DoNotStrip
    private static native void nativePinBitmap(Bitmap bitmap);

    @Override // com.facebook.imagepipeline.platform.g
    public CloseableReference<Bitmap> a(com.facebook.imagepipeline.image.e encodedImage, Bitmap.Config bitmapConfig, @Nullable Rect regionToDecode) {
        return c(encodedImage, bitmapConfig, regionToDecode, null);
    }

    @Override // com.facebook.imagepipeline.platform.g
    public CloseableReference<Bitmap> b(final com.facebook.imagepipeline.image.e encodedImage, Bitmap.Config bitmapConfig, @Nullable Rect regionToDecode, int length, @Nullable final ColorSpace colorSpace) {
        BitmapFactory.Options optionsH = h(encodedImage.v(), bitmapConfig);
        if (Build.VERSION.SDK_INT >= 26) {
            OreoUtils.a(optionsH, colorSpace);
        }
        CloseableReference<PooledByteBuffer> closeableReferenceF = encodedImage.f();
        com.facebook.common.internal.i.i(closeableReferenceF);
        try {
            return i(f(closeableReferenceF, length, optionsH));
        } finally {
            CloseableReference.h(closeableReferenceF);
        }
    }

    @Override // com.facebook.imagepipeline.platform.g
    public CloseableReference<Bitmap> c(final com.facebook.imagepipeline.image.e encodedImage, Bitmap.Config bitmapConfig, @Nullable Rect regionToDecode, @Nullable final ColorSpace colorSpace) {
        BitmapFactory.Options optionsH = h(encodedImage.v(), bitmapConfig);
        if (Build.VERSION.SDK_INT >= 26) {
            OreoUtils.a(optionsH, colorSpace);
        }
        CloseableReference<PooledByteBuffer> closeableReferenceF = encodedImage.f();
        com.facebook.common.internal.i.i(closeableReferenceF);
        try {
            return i(e(closeableReferenceF, optionsH));
        } finally {
            CloseableReference.h(closeableReferenceF);
        }
    }

    @Override // com.facebook.imagepipeline.platform.g
    public CloseableReference<Bitmap> d(com.facebook.imagepipeline.image.e encodedImage, Bitmap.Config bitmapConfig, @Nullable Rect regionToDecode, int length) {
        return b(encodedImage, bitmapConfig, regionToDecode, length, null);
    }

    protected abstract Bitmap e(CloseableReference<PooledByteBuffer> bytesRef, BitmapFactory.Options options);

    protected abstract Bitmap f(CloseableReference<PooledByteBuffer> bytesRef, int length, BitmapFactory.Options options);

    public CloseableReference<Bitmap> i(Bitmap bitmap) {
        com.facebook.common.internal.i.i(bitmap);
        try {
            nativePinBitmap(bitmap);
            if (this.f28213a.g(bitmap)) {
                return CloseableReference.t(bitmap, this.f28213a.e());
            }
            int iG = com.facebook.imageutils.a.g(bitmap);
            bitmap.recycle();
            throw new TooManyBitmapsException(String.format(Locale.US, "Attempted to pin a bitmap of size %d bytes. The current pool count is %d, the current pool size is %d bytes. The current pool max count is %d, the current pool max size is %d bytes.", Integer.valueOf(iG), Integer.valueOf(this.f28213a.b()), Long.valueOf(this.f28213a.f()), Integer.valueOf(this.f28213a.c()), Integer.valueOf(this.f28213a.d())));
        } catch (Exception e10) {
            bitmap.recycle();
            throw n.d(e10);
        }
    }
}
