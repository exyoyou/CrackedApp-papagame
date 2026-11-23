package com.facebook.imagepipeline.bitmaps;

import android.annotation.TargetApi;
import android.graphics.Bitmap;
import com.facebook.common.memory.PooledByteBuffer;
import com.facebook.common.references.CloseableReference;
import com.facebook.infer.annotation.Nullsafe;
import javax.annotation.concurrent.ThreadSafe;

/* JADX INFO: loaded from: classes9.dex */
@ThreadSafe
@TargetApi(11)
@Nullsafe(Nullsafe.Mode.LOCAL)
public class e extends f {

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    private static final String f27618e = "e";

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private final b f27619a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private final com.facebook.imagepipeline.platform.g f27620b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    private final com.facebook.imagepipeline.core.a f27621c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    private boolean f27622d;

    public e(b jpegGenerator, com.facebook.imagepipeline.platform.g purgeableDecoder, com.facebook.imagepipeline.core.a closeableReferenceFactory) {
        this.f27619a = jpegGenerator;
        this.f27620b = purgeableDecoder;
        this.f27621c = closeableReferenceFactory;
    }

    private CloseableReference<Bitmap> E(int width, int height, Bitmap.Config bitmapConfig) {
        return this.f27621c.c(Bitmap.createBitmap(width, height, bitmapConfig), h.a());
    }

    @Override // com.facebook.imagepipeline.bitmaps.f
    @TargetApi(12)
    public CloseableReference<Bitmap> z(int width, int height, Bitmap.Config bitmapConfig) throws Throwable {
        if (this.f27622d) {
            return E(width, height, bitmapConfig);
        }
        CloseableReference<PooledByteBuffer> closeableReferenceA = this.f27619a.a((short) width, (short) height);
        try {
            com.facebook.imagepipeline.image.e eVar = new com.facebook.imagepipeline.image.e(closeableReferenceA);
            eVar.g0(com.facebook.imageformat.b.f27532a);
            try {
                CloseableReference<Bitmap> closeableReferenceD = this.f27620b.d(eVar, bitmapConfig, null, closeableReferenceA.j().size());
                if (closeableReferenceD.j().isMutable()) {
                    closeableReferenceD.j().setHasAlpha(true);
                    closeableReferenceD.j().eraseColor(0);
                    com.facebook.imagepipeline.image.e.d(eVar);
                    closeableReferenceA.close();
                    return closeableReferenceD;
                }
                CloseableReference.h(closeableReferenceD);
                this.f27622d = true;
                i3.a.w0(f27618e, "Immutable bitmap returned by decoder");
                CloseableReference<Bitmap> closeableReferenceE = E(width, height, bitmapConfig);
                com.facebook.imagepipeline.image.e.d(eVar);
                closeableReferenceA.close();
                return closeableReferenceE;
            } catch (Throwable th) {
                com.facebook.imagepipeline.image.e.d(eVar);
                throw th;
            }
        } catch (Throwable th2) {
            closeableReferenceA.close();
            throw th2;
        }
    }
}
