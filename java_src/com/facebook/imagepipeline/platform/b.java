package com.facebook.imagepipeline.platform;

import android.annotation.TargetApi;
import android.graphics.Bitmap;
import android.graphics.BitmapFactory;
import android.graphics.BitmapRegionDecoder;
import android.graphics.ColorSpace;
import android.graphics.Rect;
import android.os.Build;
import androidx.annotation.VisibleForTesting;
import androidx.core.util.Pools;
import com.facebook.common.references.CloseableReference;
import com.facebook.imagepipeline.memory.j;
import java.io.IOException;
import java.io.InputStream;
import java.nio.ByteBuffer;
import javax.annotation.Nullable;
import javax.annotation.concurrent.ThreadSafe;

/* JADX INFO: loaded from: classes9.dex */
@ThreadSafe
@TargetApi(11)
public abstract class b implements g {

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    private static final int f28233e = 16384;

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private final j f28235a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    @Nullable
    private final PreverificationHelper f28236b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    @VisibleForTesting
    final Pools.SynchronizedPool<ByteBuffer> f28237c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    private static final Class<?> f28232d = b.class;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    private static final byte[] f28234f = {-1, -39};

    public b(j bitmapPool, int maxNumThreads, Pools.SynchronizedPool decodeBuffers) {
        this.f28236b = Build.VERSION.SDK_INT >= 26 ? new PreverificationHelper() : null;
        this.f28235a = bitmapPool;
        this.f28237c = decodeBuffers;
        for (int i10 = 0; i10 < maxNumThreads; i10++) {
            this.f28237c.release(ByteBuffer.allocate(16384));
        }
    }

    /* JADX WARN: Code duplicated, block: B:48:0x00a5  */
    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Type inference failed for: r0v1, types: [int] */
    /* JADX WARN: Type inference failed for: r0v7 */
    /* JADX WARN: Type inference failed for: r0v8 */
    private CloseableReference<Bitmap> e(InputStream inputStream, BitmapFactory.Options options, @Nullable Rect rect, @Nullable ColorSpace colorSpace) {
        Bitmap bitmap;
        BitmapRegionDecoder bitmapRegionDecoderNewInstance;
        Bitmap bitmapDecodeRegion;
        PreverificationHelper preverificationHelper;
        com.facebook.common.internal.i.i(inputStream);
        int i10 = options.outWidth;
        int iHeight = options.outHeight;
        ?? r10 = i10;
        if (rect != null) {
            int iWidth = rect.width() / options.inSampleSize;
            iHeight = rect.height() / options.inSampleSize;
            r10 = iWidth;
        }
        int i11 = Build.VERSION.SDK_INT;
        boolean z10 = i11 >= 26 && (preverificationHelper = this.f28236b) != null && preverificationHelper.shouldUseHardwareBitmapConfig(options.inPreferredConfig);
        BitmapRegionDecoder bitmapRegionDecoder = 0;
        if (rect == null && z10) {
            options.inMutable = false;
            bitmap = 0;
        } else {
            if (rect != null && z10) {
                options.inPreferredConfig = Bitmap.Config.ARGB_8888;
            }
            Bitmap bitmap2 = this.f28235a.get(g(r10, iHeight, options));
            bitmap = bitmap2;
            if (bitmap2 == null) {
                throw new NullPointerException("BitmapPool.get returned null");
            }
        }
        options.inBitmap = bitmap;
        if (i11 >= 26) {
            if (colorSpace == null) {
                colorSpace = ColorSpace.get(ColorSpace.Named.SRGB);
            }
            options.inPreferredColorSpace = colorSpace;
        }
        ByteBuffer byteBufferAcquire = this.f28237c.acquire();
        if (byteBufferAcquire == null) {
            byteBufferAcquire = ByteBuffer.allocate(16384);
        }
        try {
            try {
                options.inTempStorage = byteBufferAcquire.array();
                if (rect != null) {
                    try {
                        if (bitmap != 0) {
                            try {
                                bitmap.reconfigure(r10, iHeight, options.inPreferredConfig);
                                bitmapRegionDecoderNewInstance = BitmapRegionDecoder.newInstance(inputStream, true);
                                try {
                                    bitmapDecodeRegion = bitmapRegionDecoderNewInstance.decodeRegion(rect, options);
                                    bitmapRegionDecoderNewInstance.recycle();
                                } catch (IOException unused) {
                                    i3.a.s(f28232d, "Could not decode region %s, decoding full bitmap instead.", rect);
                                    if (bitmapRegionDecoderNewInstance != null) {
                                        bitmapRegionDecoderNewInstance.recycle();
                                    }
                                    bitmapDecodeRegion = null;
                                }
                            } catch (IOException unused2) {
                                bitmapRegionDecoderNewInstance = null;
                            } catch (Throwable th) {
                                th = th;
                                if (bitmapRegionDecoder != 0) {
                                    bitmapRegionDecoder.recycle();
                                }
                                throw th;
                            }
                        } else {
                            bitmapDecodeRegion = null;
                        }
                    } catch (Throwable th2) {
                        th = th2;
                        bitmapRegionDecoder = r10;
                    }
                } else {
                    bitmapDecodeRegion = null;
                }
                if (bitmapDecodeRegion == null) {
                    bitmapDecodeRegion = BitmapFactory.decodeStream(inputStream, null, options);
                }
                this.f28237c.release(byteBufferAcquire);
                if (bitmap == 0 || bitmap == bitmapDecodeRegion) {
                    return CloseableReference.t(bitmapDecodeRegion, this.f28235a);
                }
                this.f28235a.release(bitmap);
                bitmapDecodeRegion.recycle();
                throw new IllegalStateException();
            } catch (Throwable th3) {
                this.f28237c.release(byteBufferAcquire);
                throw th3;
            }
        } catch (IllegalArgumentException e10) {
            if (bitmap != 0) {
                this.f28235a.release(bitmap);
            }
            try {
                inputStream.reset();
                Bitmap bitmapDecodeStream = BitmapFactory.decodeStream(inputStream);
                if (bitmapDecodeStream == null) {
                    throw e10;
                }
                CloseableReference<Bitmap> closeableReferenceT = CloseableReference.t(bitmapDecodeStream, com.facebook.imagepipeline.bitmaps.h.a());
                this.f28237c.release(byteBufferAcquire);
                return closeableReferenceT;
            } catch (IOException unused3) {
                throw e10;
            }
        } catch (RuntimeException e11) {
            if (bitmap != 0) {
                this.f28235a.release(bitmap);
            }
            throw e11;
        }
    }

    private static BitmapFactory.Options h(com.facebook.imagepipeline.image.e encodedImage, Bitmap.Config bitmapConfig) {
        BitmapFactory.Options options = new BitmapFactory.Options();
        options.inSampleSize = encodedImage.v();
        options.inJustDecodeBounds = true;
        BitmapFactory.decodeStream(encodedImage.p(), null, options);
        if (options.outWidth == -1 || options.outHeight == -1) {
            throw new IllegalArgumentException();
        }
        options.inJustDecodeBounds = false;
        options.inDither = true;
        options.inPreferredConfig = bitmapConfig;
        options.inMutable = true;
        return options;
    }

    @Override // com.facebook.imagepipeline.platform.g
    public CloseableReference<Bitmap> a(com.facebook.imagepipeline.image.e encodedImage, Bitmap.Config bitmapConfig, @Nullable Rect regionToDecode) {
        return c(encodedImage, bitmapConfig, regionToDecode, null);
    }

    @Override // com.facebook.imagepipeline.platform.g
    public CloseableReference<Bitmap> b(com.facebook.imagepipeline.image.e encodedImage, Bitmap.Config bitmapConfig, @Nullable Rect regionToDecode, int length, @Nullable final ColorSpace colorSpace) {
        boolean zL = encodedImage.L(length);
        BitmapFactory.Options optionsH = h(encodedImage, bitmapConfig);
        InputStream inputStreamP = encodedImage.p();
        com.facebook.common.internal.i.i(inputStreamP);
        if (encodedImage.y() > length) {
            inputStreamP = new k3.a(inputStreamP, length);
        }
        if (!zL) {
            inputStreamP = new k3.b(inputStreamP, f28234f);
        }
        boolean z10 = optionsH.inPreferredConfig != Bitmap.Config.ARGB_8888;
        try {
            try {
                CloseableReference<Bitmap> closeableReferenceE = e(inputStreamP, optionsH, regionToDecode, colorSpace);
                try {
                    inputStreamP.close();
                } catch (IOException e10) {
                    e10.printStackTrace();
                }
                return closeableReferenceE;
            } catch (RuntimeException e11) {
                if (!z10) {
                    throw e11;
                }
                CloseableReference<Bitmap> closeableReferenceB = b(encodedImage, Bitmap.Config.ARGB_8888, regionToDecode, length, colorSpace);
                try {
                    inputStreamP.close();
                } catch (IOException e12) {
                    e12.printStackTrace();
                }
                return closeableReferenceB;
            }
        } catch (Throwable th) {
            try {
                inputStreamP.close();
            } catch (IOException e13) {
                e13.printStackTrace();
            }
            throw th;
        }
    }

    @Override // com.facebook.imagepipeline.platform.g
    public CloseableReference<Bitmap> c(com.facebook.imagepipeline.image.e encodedImage, Bitmap.Config bitmapConfig, @Nullable Rect regionToDecode, @Nullable final ColorSpace colorSpace) {
        BitmapFactory.Options optionsH = h(encodedImage, bitmapConfig);
        boolean z10 = optionsH.inPreferredConfig != Bitmap.Config.ARGB_8888;
        try {
            return e((InputStream) com.facebook.common.internal.i.i(encodedImage.p()), optionsH, regionToDecode, colorSpace);
        } catch (RuntimeException e10) {
            if (z10) {
                return c(encodedImage, Bitmap.Config.ARGB_8888, regionToDecode, colorSpace);
            }
            throw e10;
        }
    }

    @Override // com.facebook.imagepipeline.platform.g
    public CloseableReference<Bitmap> d(com.facebook.imagepipeline.image.e encodedImage, Bitmap.Config bitmapConfig, @Nullable Rect regionToDecode, int length) {
        return b(encodedImage, bitmapConfig, regionToDecode, length, null);
    }

    protected CloseableReference<Bitmap> f(InputStream inputStream, BitmapFactory.Options options, @Nullable Rect regionToDecode) {
        return e(inputStream, options, regionToDecode, null);
    }

    public abstract int g(final int width, final int height, final BitmapFactory.Options options);
}
