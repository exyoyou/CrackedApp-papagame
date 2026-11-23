package com.facebook.imagepipeline.memory;

import androidx.annotation.VisibleForTesting;
import com.facebook.common.memory.PooledByteBuffer;
import com.facebook.common.references.CloseableReference;
import java.nio.ByteBuffer;
import javax.annotation.Nullable;
import javax.annotation.concurrent.GuardedBy;
import javax.annotation.concurrent.ThreadSafe;

/* JADX INFO: loaded from: classes9.dex */
@ThreadSafe
public class c0 implements PooledByteBuffer {

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private final int f28083b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    @GuardedBy("this")
    @VisibleForTesting
    CloseableReference<z> f28084c;

    public c0(CloseableReference<z> bufRef, int size) {
        com.facebook.common.internal.i.i(bufRef);
        com.facebook.common.internal.i.d(Boolean.valueOf(size >= 0 && size <= bufRef.j().getSize()));
        this.f28084c = bufRef.clone();
        this.f28083b = size;
    }

    @Override // com.facebook.common.memory.PooledByteBuffer
    public synchronized long A() throws UnsupportedOperationException {
        b();
        return this.f28084c.j().A();
    }

    @Override // com.facebook.common.memory.PooledByteBuffer
    public synchronized int B(int offset, byte[] buffer, int bufferOffset, int length) {
        b();
        com.facebook.common.internal.i.d(Boolean.valueOf(offset + length <= this.f28083b));
        return this.f28084c.j().B(offset, buffer, bufferOffset, length);
    }

    @Override // com.facebook.common.memory.PooledByteBuffer
    @Nullable
    public synchronized ByteBuffer C() {
        return this.f28084c.j().C();
    }

    @Override // com.facebook.common.memory.PooledByteBuffer
    public synchronized byte D(int offset) {
        b();
        boolean z10 = true;
        com.facebook.common.internal.i.d(Boolean.valueOf(offset >= 0));
        if (offset >= this.f28083b) {
            z10 = false;
        }
        com.facebook.common.internal.i.d(Boolean.valueOf(z10));
        return this.f28084c.j().D(offset);
    }

    synchronized void b() {
        if (isClosed()) {
            throw new PooledByteBuffer.ClosedException();
        }
    }

    @Override // com.facebook.common.memory.PooledByteBuffer, java.io.Closeable, java.lang.AutoCloseable
    public synchronized void close() {
        CloseableReference.h(this.f28084c);
        this.f28084c = null;
    }

    @GuardedBy("this")
    @VisibleForTesting
    CloseableReference<z> d() {
        return this.f28084c;
    }

    @Override // com.facebook.common.memory.PooledByteBuffer
    public synchronized boolean isClosed() {
        return !CloseableReference.p(this.f28084c);
    }

    @Override // com.facebook.common.memory.PooledByteBuffer
    public synchronized int size() {
        b();
        return this.f28083b;
    }
}
