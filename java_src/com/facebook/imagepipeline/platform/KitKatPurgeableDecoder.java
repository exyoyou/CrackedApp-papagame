package com.facebook.imagepipeline.platform;

import android.annotation.TargetApi;
import android.graphics.Bitmap;
import android.graphics.BitmapFactory;
import com.facebook.common.internal.DoNotStrip;
import com.facebook.common.memory.PooledByteBuffer;
import com.facebook.common.references.CloseableReference;
import com.facebook.imagepipeline.memory.v;
import com.facebook.imagepipeline.nativecode.DalvikPurgeableDecoder;
import com.facebook.infer.annotation.Nullsafe;
import javax.annotation.concurrent.ThreadSafe;

/* JADX INFO: loaded from: classes9.dex */
@DoNotStrip
@ThreadSafe
@TargetApi(19)
@Nullsafe(Nullsafe.Mode.LOCAL)
public class KitKatPurgeableDecoder extends DalvikPurgeableDecoder {

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    private final v f28231c;

    @DoNotStrip
    public KitKatPurgeableDecoder(v flexByteArrayPool) {
        this.f28231c = flexByteArrayPool;
    }

    private static void j(byte[] imageBytes, int offset) {
        imageBytes[offset] = -1;
        imageBytes[offset + 1] = -39;
    }

    @Override // com.facebook.imagepipeline.nativecode.DalvikPurgeableDecoder
    protected Bitmap e(CloseableReference<PooledByteBuffer> bytesRef, BitmapFactory.Options options) {
        PooledByteBuffer pooledByteBufferJ = bytesRef.j();
        int size = pooledByteBufferJ.size();
        CloseableReference<byte[]> closeableReferenceA = this.f28231c.a(size);
        try {
            byte[] bArrJ = closeableReferenceA.j();
            pooledByteBufferJ.B(0, bArrJ, 0, size);
            return (Bitmap) com.facebook.common.internal.i.j(BitmapFactory.decodeByteArray(bArrJ, 0, size, options), "BitmapFactory returned null");
        } finally {
            CloseableReference.h(closeableReferenceA);
        }
    }

    @Override // com.facebook.imagepipeline.nativecode.DalvikPurgeableDecoder
    protected Bitmap f(CloseableReference<PooledByteBuffer> bytesRef, int length, BitmapFactory.Options options) {
        byte[] bArr = DalvikPurgeableDecoder.g(bytesRef, length) ? null : DalvikPurgeableDecoder.f28212b;
        PooledByteBuffer pooledByteBufferJ = bytesRef.j();
        com.facebook.common.internal.i.d(Boolean.valueOf(length <= pooledByteBufferJ.size()));
        int i10 = length + 2;
        CloseableReference<byte[]> closeableReferenceA = this.f28231c.a(i10);
        try {
            byte[] bArrJ = closeableReferenceA.j();
            pooledByteBufferJ.B(0, bArrJ, 0, length);
            if (bArr != null) {
                j(bArrJ, length);
                length = i10;
            }
            return (Bitmap) com.facebook.common.internal.i.j(BitmapFactory.decodeByteArray(bArrJ, 0, length, options), "BitmapFactory returned null");
        } finally {
            CloseableReference.h(closeableReferenceA);
        }
    }
}
