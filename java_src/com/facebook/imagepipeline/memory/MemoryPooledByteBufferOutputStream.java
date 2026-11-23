package com.facebook.imagepipeline.memory;

import androidx.annotation.VisibleForTesting;
import com.facebook.common.references.CloseableReference;
import com.facebook.infer.annotation.Nullsafe;
import java.io.IOException;
import javax.annotation.Nullable;
import javax.annotation.concurrent.NotThreadSafe;

/* JADX INFO: loaded from: classes9.dex */
@NotThreadSafe
@Nullsafe(Nullsafe.Mode.LOCAL)
public class MemoryPooledByteBufferOutputStream extends com.facebook.common.memory.i {

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private final a0 f28075b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    @Nullable
    private CloseableReference<z> f28076c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    private int f28077d;

    public static class InvalidStreamException extends RuntimeException {
        public InvalidStreamException() {
            super("OutputStream no longer valid");
        }
    }

    public MemoryPooledByteBufferOutputStream(a0 pool) {
        this(pool, pool.R());
    }

    private void d() {
        if (!CloseableReference.p(this.f28076c)) {
            throw new InvalidStreamException();
        }
    }

    @Override // com.facebook.common.memory.i, java.io.OutputStream, java.io.Closeable, java.lang.AutoCloseable
    public void close() {
        CloseableReference.h(this.f28076c);
        this.f28076c = null;
        this.f28077d = -1;
        super.close();
    }

    @VisibleForTesting
    void e(int newLength) throws Throwable {
        d();
        com.facebook.common.internal.i.i(this.f28076c);
        if (newLength <= this.f28076c.j().getSize()) {
            return;
        }
        z zVar = this.f28075b.get(newLength);
        com.facebook.common.internal.i.i(this.f28076c);
        this.f28076c.j().b(0, zVar, 0, this.f28077d);
        this.f28076c.close();
        this.f28076c = CloseableReference.t(zVar, this.f28075b);
    }

    @Override // com.facebook.common.memory.i
    /* JADX INFO: renamed from: f, reason: merged with bridge method [inline-methods] */
    public c0 b() {
        d();
        return new c0((CloseableReference) com.facebook.common.internal.i.i(this.f28076c), this.f28077d);
    }

    @Override // com.facebook.common.memory.i
    public int size() {
        return this.f28077d;
    }

    @Override // java.io.OutputStream
    public void write(int oneByte) throws IOException {
        write(new byte[]{(byte) oneByte});
    }

    public MemoryPooledByteBufferOutputStream(a0 pool, int initialCapacity) {
        com.facebook.common.internal.i.d(Boolean.valueOf(initialCapacity > 0));
        a0 a0Var = (a0) com.facebook.common.internal.i.i(pool);
        this.f28075b = a0Var;
        this.f28077d = 0;
        this.f28076c = CloseableReference.t(a0Var.get(initialCapacity), a0Var);
    }

    @Override // java.io.OutputStream
    public void write(byte[] buffer, int offset, int count) throws Throwable {
        if (offset >= 0 && count >= 0 && offset + count <= buffer.length) {
            d();
            e(this.f28077d + count);
            ((z) ((CloseableReference) com.facebook.common.internal.i.i(this.f28076c)).j()).a(this.f28077d, buffer, offset, count);
            this.f28077d += count;
            return;
        }
        throw new ArrayIndexOutOfBoundsException("length=" + buffer.length + "; regionStart=" + offset + "; regionLength=" + count);
    }
}
