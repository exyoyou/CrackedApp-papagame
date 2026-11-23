package com.facebook.fresco.animation.bitmap.cache;

import android.graphics.Bitmap;
import android.util.SparseArray;
import androidx.annotation.VisibleForTesting;
import com.facebook.common.internal.i;
import com.facebook.common.references.CloseableReference;
import com.facebook.imagepipeline.image.h;
import com.facebook.infer.annotation.Nullsafe;
import javax.annotation.Nullable;
import javax.annotation.concurrent.GuardedBy;

/* JADX INFO: loaded from: classes9.dex */
@Nullsafe(Nullsafe.Mode.STRICT)
public class b implements u3.a {

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    private static final Class<?> f27419e = b.class;

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private final com.facebook.imagepipeline.animated.impl.c f27420a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private final boolean f27421b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    @GuardedBy("this")
    private final SparseArray<CloseableReference<com.facebook.imagepipeline.image.c>> f27422c = new SparseArray<>();

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    @GuardedBy("this")
    @Nullable
    private CloseableReference<com.facebook.imagepipeline.image.c> f27423d;

    public b(com.facebook.imagepipeline.animated.impl.c animatedFrameCache, boolean enableBitmapReusing) {
        this.f27420a = animatedFrameCache;
        this.f27421b = enableBitmapReusing;
    }

    @Nullable
    @VisibleForTesting
    static CloseableReference<Bitmap> i(@Nullable final CloseableReference<com.facebook.imagepipeline.image.c> closeableImage) {
        com.facebook.imagepipeline.image.d dVar;
        try {
            if (CloseableReference.p(closeableImage) && (closeableImage.j() instanceof com.facebook.imagepipeline.image.d) && (dVar = (com.facebook.imagepipeline.image.d) closeableImage.j()) != null) {
                return dVar.j();
            }
            return null;
        } finally {
            CloseableReference.h(closeableImage);
        }
    }

    @Nullable
    private static CloseableReference<com.facebook.imagepipeline.image.c> j(CloseableReference<Bitmap> bitmapReference) {
        return CloseableReference.q(new com.facebook.imagepipeline.image.d(bitmapReference, h.f28051d, 0));
    }

    private static int k(@Nullable CloseableReference<com.facebook.imagepipeline.image.c> imageReference) {
        if (CloseableReference.p(imageReference)) {
            return l(imageReference.j());
        }
        return 0;
    }

    private static int l(@Nullable com.facebook.imagepipeline.image.c image) {
        if (image instanceof com.facebook.imagepipeline.image.b) {
            return com.facebook.imageutils.a.g(((com.facebook.imagepipeline.image.b) image).h());
        }
        return 0;
    }

    private synchronized int m() {
        int iK;
        iK = 0;
        for (int i10 = 0; i10 < this.f27422c.size(); i10++) {
            iK += k(this.f27422c.valueAt(i10));
        }
        return iK;
    }

    private synchronized void n(int frameNumber) {
        CloseableReference<com.facebook.imagepipeline.image.c> closeableReference = this.f27422c.get(frameNumber);
        if (closeableReference != null) {
            this.f27422c.delete(frameNumber);
            CloseableReference.h(closeableReference);
            i3.a.W(f27419e, "removePreparedReference(%d) removed. Pending frames: %s", Integer.valueOf(frameNumber), this.f27422c);
        }
    }

    @Override // u3.a
    public synchronized int a() {
        return k(this.f27423d) + m();
    }

    @Override // u3.a
    public synchronized void b(int frameNumber, CloseableReference<Bitmap> bitmapReference, int frameType) {
        CloseableReference<com.facebook.imagepipeline.image.c> closeableReferenceJ;
        i.i(bitmapReference);
        n(frameNumber);
        try {
            closeableReferenceJ = j(bitmapReference);
            if (closeableReferenceJ != null) {
                try {
                    CloseableReference.h(this.f27423d);
                    this.f27423d = this.f27420a.a(frameNumber, closeableReferenceJ);
                } catch (Throwable th) {
                    th = th;
                    CloseableReference.h(closeableReferenceJ);
                    throw th;
                }
            }
            CloseableReference.h(closeableReferenceJ);
        } catch (Throwable th2) {
            th = th2;
            closeableReferenceJ = null;
        }
    }

    @Override // u3.a
    @Nullable
    public synchronized CloseableReference<Bitmap> c(int frameNumber) {
        return i(CloseableReference.f(this.f27423d));
    }

    @Override // u3.a
    public synchronized void clear() {
        CloseableReference.h(this.f27423d);
        this.f27423d = null;
        for (int i10 = 0; i10 < this.f27422c.size(); i10++) {
            CloseableReference.h(this.f27422c.valueAt(i10));
        }
        this.f27422c.clear();
    }

    @Override // u3.a
    public void d(u3.a.InterfaceC1250a frameCacheListener) {
    }

    @Override // u3.a
    public synchronized boolean e(int frameNumber) {
        return this.f27420a.b(frameNumber);
    }

    @Override // u3.a
    @Nullable
    public synchronized CloseableReference<Bitmap> f(int frameNumber) {
        return i(this.f27420a.c(frameNumber));
    }

    @Override // u3.a
    public synchronized void g(int frameNumber, CloseableReference<Bitmap> bitmapReference, int frameType) {
        CloseableReference<com.facebook.imagepipeline.image.c> closeableReferenceJ;
        i.i(bitmapReference);
        try {
            closeableReferenceJ = j(bitmapReference);
            if (closeableReferenceJ == null) {
                CloseableReference.h(closeableReferenceJ);
                return;
            }
            try {
                CloseableReference<com.facebook.imagepipeline.image.c> closeableReferenceA = this.f27420a.a(frameNumber, closeableReferenceJ);
                if (CloseableReference.p(closeableReferenceA)) {
                    CloseableReference.h(this.f27422c.get(frameNumber));
                    this.f27422c.put(frameNumber, closeableReferenceA);
                    i3.a.W(f27419e, "cachePreparedFrame(%d) cached. Pending frames: %s", Integer.valueOf(frameNumber), this.f27422c);
                }
                CloseableReference.h(closeableReferenceJ);
            } catch (Throwable th) {
                th = th;
                CloseableReference.h(closeableReferenceJ);
                throw th;
            }
        } catch (Throwable th2) {
            th = th2;
            closeableReferenceJ = null;
        }
    }

    @Override // u3.a
    @Nullable
    public synchronized CloseableReference<Bitmap> h(int frameNumber, int width, int height) {
        if (!this.f27421b) {
            return null;
        }
        return i(this.f27420a.d());
    }
}
