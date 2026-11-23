package com.facebook.imagepipeline.image;

import android.graphics.Bitmap;
import com.facebook.common.references.CloseableReference;
import javax.annotation.Nullable;
import javax.annotation.concurrent.GuardedBy;
import javax.annotation.concurrent.ThreadSafe;

/* JADX INFO: loaded from: classes9.dex */
@ThreadSafe
public class d extends b implements com.facebook.common.references.c {

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    @GuardedBy("this")
    private CloseableReference<Bitmap> f28028e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    private volatile Bitmap f28029f;

    /* JADX INFO: renamed from: g, reason: collision with root package name */
    private final j f28030g;

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    private final int f28031h;

    /* JADX INFO: renamed from: i, reason: collision with root package name */
    private final int f28032i;

    public d(Bitmap bitmap, com.facebook.common.references.g<Bitmap> resourceReleaser, j qualityInfo, int rotationAngle) {
        this(bitmap, resourceReleaser, qualityInfo, rotationAngle, 0);
    }

    private synchronized CloseableReference<Bitmap> l() {
        CloseableReference<Bitmap> closeableReference;
        closeableReference = this.f28028e;
        this.f28028e = null;
        this.f28029f = null;
        return closeableReference;
    }

    private static int m(@Nullable Bitmap bitmap) {
        if (bitmap == null) {
            return 0;
        }
        return bitmap.getHeight();
    }

    private static int n(@Nullable Bitmap bitmap) {
        if (bitmap == null) {
            return 0;
        }
        return bitmap.getWidth();
    }

    @Override // com.facebook.imagepipeline.image.c, com.facebook.imagepipeline.image.g
    public j b() {
        return this.f28030g;
    }

    @Override // com.facebook.imagepipeline.image.c, java.io.Closeable, java.lang.AutoCloseable
    public void close() {
        CloseableReference<Bitmap> closeableReferenceL = l();
        if (closeableReferenceL != null) {
            closeableReferenceL.close();
        }
    }

    @Override // com.facebook.imagepipeline.image.c
    public int d() {
        return com.facebook.imageutils.a.g(this.f28029f);
    }

    @Override // com.facebook.imagepipeline.image.g
    public int getHeight() {
        int i10;
        return (this.f28031h % 180 != 0 || (i10 = this.f28032i) == 5 || i10 == 7) ? n(this.f28029f) : m(this.f28029f);
    }

    @Override // com.facebook.imagepipeline.image.g
    public int getWidth() {
        int i10;
        return (this.f28031h % 180 != 0 || (i10 = this.f28032i) == 5 || i10 == 7) ? m(this.f28029f) : n(this.f28029f);
    }

    @Override // com.facebook.imagepipeline.image.b
    public Bitmap h() {
        return this.f28029f;
    }

    @Override // com.facebook.imagepipeline.image.c
    public synchronized boolean isClosed() {
        return this.f28028e == null;
    }

    @Nullable
    public synchronized CloseableReference<Bitmap> j() {
        return CloseableReference.f(this.f28028e);
    }

    public synchronized CloseableReference<Bitmap> k() {
        com.facebook.common.internal.i.j(this.f28028e, "Cannot convert a closed static bitmap");
        return l();
    }

    public int o() {
        return this.f28032i;
    }

    public int p() {
        return this.f28031h;
    }

    public d(Bitmap bitmap, com.facebook.common.references.g<Bitmap> resourceReleaser, j qualityInfo, int rotationAngle, int exifOrientation) {
        this.f28029f = (Bitmap) com.facebook.common.internal.i.i(bitmap);
        this.f28028e = CloseableReference.t(this.f28029f, (com.facebook.common.references.g) com.facebook.common.internal.i.i(resourceReleaser));
        this.f28030g = qualityInfo;
        this.f28031h = rotationAngle;
        this.f28032i = exifOrientation;
    }

    public d(CloseableReference<Bitmap> bitmapReference, j qualityInfo, int rotationAngle) {
        this(bitmapReference, qualityInfo, rotationAngle, 0);
    }

    public d(CloseableReference<Bitmap> bitmapReference, j qualityInfo, int rotationAngle, int exifOrientation) {
        CloseableReference<Bitmap> closeableReference = (CloseableReference) com.facebook.common.internal.i.i(bitmapReference.e());
        this.f28028e = closeableReference;
        this.f28029f = closeableReference.j();
        this.f28030g = qualityInfo;
        this.f28031h = rotationAngle;
        this.f28032i = exifOrientation;
    }
}
