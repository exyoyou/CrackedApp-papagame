package com.facebook.fresco.animation.bitmap.preparation;

import android.graphics.Bitmap;
import android.util.SparseArray;
import com.facebook.common.references.CloseableReference;
import com.facebook.imagepipeline.bitmaps.f;
import com.facebook.infer.annotation.Nullsafe;
import java.util.concurrent.ExecutorService;
import javax.annotation.Nullable;

/* JADX INFO: loaded from: classes9.dex */
@Nullsafe(Nullsafe.Mode.LOCAL)
public class c implements b {

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    private static final Class<?> f27428f = c.class;

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private final f f27429a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private final u3.b f27430b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    private final Bitmap.Config f27431c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    private final ExecutorService f27432d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    private final SparseArray<Runnable> f27433e = new SparseArray<>();

    private class a implements Runnable {

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        private final u3.a f27434b;

        /* JADX INFO: renamed from: c, reason: collision with root package name */
        private final com.facebook.fresco.animation.backend.a f27435c;

        /* JADX INFO: renamed from: d, reason: collision with root package name */
        private final int f27436d;

        /* JADX INFO: renamed from: e, reason: collision with root package name */
        private final int f27437e;

        public a(com.facebook.fresco.animation.backend.a animationBackend, u3.a bitmapFrameCache, int frameNumber, int hashCode) {
            this.f27435c = animationBackend;
            this.f27434b = bitmapFrameCache;
            this.f27436d = frameNumber;
            this.f27437e = hashCode;
        }

        private boolean a(int frameNumber, int frameType) {
            CloseableReference<Bitmap> closeableReferenceH;
            int i10 = 2;
            try {
                if (frameType == 1) {
                    closeableReferenceH = this.f27434b.h(frameNumber, this.f27435c.d(), this.f27435c.e());
                } else {
                    if (frameType != 2) {
                        CloseableReference.h(null);
                        return false;
                    }
                    closeableReferenceH = c.this.f27429a.e(this.f27435c.d(), this.f27435c.e(), c.this.f27431c);
                    i10 = -1;
                }
                boolean zB = b(frameNumber, closeableReferenceH, frameType);
                CloseableReference.h(closeableReferenceH);
                return (zB || i10 == -1) ? zB : a(frameNumber, i10);
            } catch (RuntimeException e10) {
                i3.a.l0(c.f27428f, "Failed to create frame bitmap", e10);
                return false;
            } finally {
                CloseableReference.h(null);
            }
        }

        private boolean b(int frameNumber, @Nullable CloseableReference<Bitmap> bitmapReference, int frameType) {
            if (!CloseableReference.p(bitmapReference) || !c.this.f27430b.a(frameNumber, bitmapReference.j())) {
                return false;
            }
            i3.a.V(c.f27428f, "Frame %d ready.", Integer.valueOf(this.f27436d));
            synchronized (c.this.f27433e) {
                this.f27434b.g(this.f27436d, bitmapReference, frameType);
            }
            return true;
        }

        @Override // java.lang.Runnable
        public void run() {
            try {
                if (this.f27434b.e(this.f27436d)) {
                    i3.a.V(c.f27428f, "Frame %d is cached already.", Integer.valueOf(this.f27436d));
                    synchronized (c.this.f27433e) {
                        c.this.f27433e.remove(this.f27437e);
                    }
                    return;
                }
                if (a(this.f27436d, 1)) {
                    i3.a.V(c.f27428f, "Prepared frame frame %d.", Integer.valueOf(this.f27436d));
                } else {
                    i3.a.s(c.f27428f, "Could not prepare frame %d.", Integer.valueOf(this.f27436d));
                }
                synchronized (c.this.f27433e) {
                    c.this.f27433e.remove(this.f27437e);
                }
            } catch (Throwable th) {
                synchronized (c.this.f27433e) {
                    c.this.f27433e.remove(this.f27437e);
                    throw th;
                }
            }
        }
    }

    public c(f platformBitmapFactory, u3.b bitmapFrameRenderer, Bitmap.Config bitmapConfig, ExecutorService executorService) {
        this.f27429a = platformBitmapFactory;
        this.f27430b = bitmapFrameRenderer;
        this.f27431c = bitmapConfig;
        this.f27432d = executorService;
    }

    private static int g(com.facebook.fresco.animation.backend.a backend, int frameNumber) {
        return (backend.hashCode() * 31) + frameNumber;
    }

    @Override // com.facebook.fresco.animation.bitmap.preparation.b
    public boolean a(u3.a bitmapFrameCache, com.facebook.fresco.animation.backend.a animationBackend, int frameNumber) {
        int iG = g(animationBackend, frameNumber);
        synchronized (this.f27433e) {
            if (this.f27433e.get(iG) != null) {
                i3.a.V(f27428f, "Already scheduled decode job for frame %d", Integer.valueOf(frameNumber));
                return true;
            }
            if (bitmapFrameCache.e(frameNumber)) {
                i3.a.V(f27428f, "Frame %d is cached already.", Integer.valueOf(frameNumber));
                return true;
            }
            a aVar = new a(animationBackend, bitmapFrameCache, frameNumber, iG);
            this.f27433e.put(iG, aVar);
            this.f27432d.execute(aVar);
            return true;
        }
    }
}
