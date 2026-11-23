package com.facebook.imagepipeline.bitmaps;

import android.annotation.TargetApi;
import android.graphics.Bitmap;
import android.graphics.BitmapFactory;
import com.facebook.common.internal.i;
import com.facebook.common.memory.PooledByteBuffer;
import com.facebook.common.references.CloseableReference;
import com.facebook.imagepipeline.memory.i0;
import com.facebook.imagepipeline.memory.v;
import com.facebook.infer.annotation.Nullsafe;

/* JADX INFO: loaded from: classes9.dex */
@Nullsafe(Nullsafe.Mode.LOCAL)
public class d implements m3.a {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private final b f27616a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private final v f27617b;

    public d(i0 poolFactory) {
        this.f27617b = poolFactory.d();
        this.f27616a = new b(poolFactory.h());
    }

    private static BitmapFactory.Options b(int sampleSize, Bitmap.Config bitmapConfig) {
        BitmapFactory.Options options = new BitmapFactory.Options();
        options.inDither = true;
        options.inPreferredConfig = bitmapConfig;
        options.inPurgeable = true;
        options.inInputShareable = true;
        options.inSampleSize = sampleSize;
        options.inMutable = true;
        return options;
    }

    @Override // m3.a
    @TargetApi(12)
    public Bitmap a(int width, int height, Bitmap.Config bitmapConfig) throws Throwable {
        com.facebook.imagepipeline.image.e eVar;
        CloseableReference<PooledByteBuffer> closeableReferenceA = this.f27616a.a((short) width, (short) height);
        CloseableReference<byte[]> closeableReferenceA2 = null;
        try {
            eVar = new com.facebook.imagepipeline.image.e(closeableReferenceA);
            try {
                eVar.g0(com.facebook.imageformat.b.f27532a);
                BitmapFactory.Options optionsB = b(eVar.v(), bitmapConfig);
                int size = closeableReferenceA.j().size();
                PooledByteBuffer pooledByteBufferJ = closeableReferenceA.j();
                closeableReferenceA2 = this.f27617b.a(size + 2);
                byte[] bArrJ = closeableReferenceA2.j();
                pooledByteBufferJ.B(0, bArrJ, 0, size);
                Bitmap bitmap = (Bitmap) i.i(BitmapFactory.decodeByteArray(bArrJ, 0, size, optionsB));
                bitmap.setHasAlpha(true);
                bitmap.eraseColor(0);
                CloseableReference.h(closeableReferenceA2);
                com.facebook.imagepipeline.image.e.d(eVar);
                CloseableReference.h(closeableReferenceA);
                return bitmap;
            } catch (Throwable th) {
                th = th;
                CloseableReference.h(closeableReferenceA2);
                com.facebook.imagepipeline.image.e.d(eVar);
                CloseableReference.h(closeableReferenceA);
                throw th;
            }
        } catch (Throwable th2) {
            th = th2;
            eVar = null;
        }
    }
}
