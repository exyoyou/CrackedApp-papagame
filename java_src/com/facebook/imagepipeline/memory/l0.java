package com.facebook.imagepipeline.memory;

import androidx.annotation.VisibleForTesting;
import com.facebook.common.memory.MemoryTrimType;
import com.facebook.common.references.CloseableReference;
import com.facebook.infer.annotation.Nullsafe;
import java.util.concurrent.Semaphore;
import javax.annotation.concurrent.ThreadSafe;

/* JADX INFO: loaded from: classes9.dex */
@ThreadSafe
@Nullsafe(Nullsafe.Mode.STRICT)
public class l0 implements com.facebook.common.memory.b {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    @VisibleForTesting
    final int f28166a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    @VisibleForTesting
    final int f28167b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    @VisibleForTesting
    final com.facebook.common.references.e<byte[]> f28168c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    @VisibleForTesting
    final Semaphore f28169d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    private final com.facebook.common.references.g<byte[]> f28170e;

    class a implements com.facebook.common.references.g<byte[]> {
        a() {
        }

        @Override // com.facebook.common.references.g
        /* JADX INFO: renamed from: a, reason: merged with bridge method [inline-methods] */
        public void release(byte[] unused) {
            l0.this.f28169d.release();
        }
    }

    public l0(com.facebook.common.memory.c memoryTrimmableRegistry, j0 params) {
        com.facebook.common.internal.i.i(memoryTrimmableRegistry);
        com.facebook.common.internal.i.d(Boolean.valueOf(params.f28148d > 0));
        com.facebook.common.internal.i.d(Boolean.valueOf(params.f28149e >= params.f28148d));
        this.f28167b = params.f28149e;
        this.f28166a = params.f28148d;
        this.f28168c = new com.facebook.common.references.e<>();
        this.f28169d = new Semaphore(1);
        this.f28170e = new a();
        memoryTrimmableRegistry.b(this);
    }

    private synchronized byte[] g(int size) {
        byte[] bArr;
        this.f28168c.a();
        bArr = new byte[size];
        this.f28168c.c(bArr);
        return bArr;
    }

    private byte[] t(int requestedSize) {
        int iS = s(requestedSize);
        byte[] bArrB = this.f28168c.b();
        return (bArrB == null || bArrB.length < iS) ? g(iS) : bArrB;
    }

    @Override // com.facebook.common.memory.b
    public void q(MemoryTrimType trimType) {
        if (this.f28169d.tryAcquire()) {
            try {
                this.f28168c.a();
            } finally {
                this.f28169d.release();
            }
        }
    }

    public CloseableReference<byte[]> r(int size) {
        com.facebook.common.internal.i.e(size > 0, "Size must be greater than zero");
        com.facebook.common.internal.i.e(size <= this.f28167b, "Requested size is too big");
        this.f28169d.acquireUninterruptibly();
        try {
            return CloseableReference.t(t(size), this.f28170e);
        } catch (Throwable th) {
            this.f28169d.release();
            throw com.facebook.common.internal.n.d(th);
        }
    }

    @VisibleForTesting
    int s(int size) {
        return Integer.highestOneBit(Math.max(size, this.f28166a) - 1) * 2;
    }
}
