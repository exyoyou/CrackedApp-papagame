package com.facebook.imagepipeline.memory;

import androidx.annotation.VisibleForTesting;
import com.facebook.common.references.CloseableReference;
import com.facebook.infer.annotation.Nullsafe;
import java.io.IOException;
import java.io.InputStream;
import javax.annotation.concurrent.ThreadSafe;

/* JADX INFO: loaded from: classes9.dex */
@ThreadSafe
@Nullsafe(Nullsafe.Mode.LOCAL)
public class d0 implements com.facebook.common.memory.g {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private final com.facebook.common.memory.j f28085a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private final a0 f28086b;

    public d0(a0 pool, com.facebook.common.memory.j pooledByteStreams) {
        this.f28086b = pool;
        this.f28085a = pooledByteStreams;
    }

    @VisibleForTesting
    c0 g(InputStream inputStream, MemoryPooledByteBufferOutputStream outputStream) throws IOException {
        this.f28085a.a(inputStream, outputStream);
        return outputStream.b();
    }

    @Override // com.facebook.common.memory.g
    /* JADX INFO: renamed from: h, reason: merged with bridge method [inline-methods] */
    public c0 f(int size) {
        com.facebook.common.internal.i.d(Boolean.valueOf(size > 0));
        CloseableReference closeableReferenceT = CloseableReference.t(this.f28086b.get(size), this.f28086b);
        try {
            return new c0(closeableReferenceT, size);
        } finally {
            closeableReferenceT.close();
        }
    }

    @Override // com.facebook.common.memory.g
    /* JADX INFO: renamed from: i, reason: merged with bridge method [inline-methods] */
    public c0 a(InputStream inputStream) throws IOException {
        MemoryPooledByteBufferOutputStream memoryPooledByteBufferOutputStream = new MemoryPooledByteBufferOutputStream(this.f28086b);
        try {
            return g(inputStream, memoryPooledByteBufferOutputStream);
        } finally {
            memoryPooledByteBufferOutputStream.close();
        }
    }

    @Override // com.facebook.common.memory.g
    /* JADX INFO: renamed from: j, reason: merged with bridge method [inline-methods] */
    public c0 e(InputStream inputStream, int initialCapacity) throws IOException {
        MemoryPooledByteBufferOutputStream memoryPooledByteBufferOutputStream = new MemoryPooledByteBufferOutputStream(this.f28086b, initialCapacity);
        try {
            return g(inputStream, memoryPooledByteBufferOutputStream);
        } finally {
            memoryPooledByteBufferOutputStream.close();
        }
    }

    @Override // com.facebook.common.memory.g
    /* JADX INFO: renamed from: k, reason: merged with bridge method [inline-methods] */
    public c0 c(byte[] bytes) {
        MemoryPooledByteBufferOutputStream memoryPooledByteBufferOutputStream = new MemoryPooledByteBufferOutputStream(this.f28086b, bytes.length);
        try {
            try {
                memoryPooledByteBufferOutputStream.write(bytes, 0, bytes.length);
                c0 c0VarF = memoryPooledByteBufferOutputStream.b();
                memoryPooledByteBufferOutputStream.close();
                return c0VarF;
            } catch (IOException e10) {
                throw com.facebook.common.internal.n.d(e10);
            }
        } catch (Throwable th) {
            memoryPooledByteBufferOutputStream.close();
            throw th;
        }
    }

    @Override // com.facebook.common.memory.g
    /* JADX INFO: renamed from: l, reason: merged with bridge method [inline-methods] */
    public MemoryPooledByteBufferOutputStream b() {
        return new MemoryPooledByteBufferOutputStream(this.f28086b);
    }

    @Override // com.facebook.common.memory.g
    /* JADX INFO: renamed from: m, reason: merged with bridge method [inline-methods] */
    public MemoryPooledByteBufferOutputStream d(int initialCapacity) {
        return new MemoryPooledByteBufferOutputStream(this.f28086b, initialCapacity);
    }
}
