package com.facebook.imagepipeline.memory;

import com.facebook.infer.annotation.Nullsafe;
import java.io.Closeable;
import java.nio.ByteBuffer;
import javax.annotation.Nullable;

/* JADX INFO: loaded from: classes9.dex */
@Nullsafe(Nullsafe.Mode.LOCAL)
public class o implements z, Closeable {

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    private static final String f28179e = "BufferMemoryChunk";

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    @Nullable
    private ByteBuffer f28180b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    private final int f28181c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    private final long f28182d = System.identityHashCode(this);

    public o(final int size) {
        this.f28180b = ByteBuffer.allocateDirect(size);
        this.f28181c = size;
    }

    private void c(final int offset, final z other, final int otherOffset, final int count) {
        if (!(other instanceof o)) {
            throw new IllegalArgumentException("Cannot copy two incompatible MemoryChunks");
        }
        com.facebook.common.internal.i.o(!isClosed());
        com.facebook.common.internal.i.o(!other.isClosed());
        com.facebook.common.internal.i.i(this.f28180b);
        b0.b(offset, other.getSize(), otherOffset, count, this.f28181c);
        this.f28180b.position(offset);
        ByteBuffer byteBuffer = (ByteBuffer) com.facebook.common.internal.i.i(other.C());
        byteBuffer.position(otherOffset);
        byte[] bArr = new byte[count];
        this.f28180b.get(bArr, 0, count);
        byteBuffer.put(bArr, 0, count);
    }

    @Override // com.facebook.imagepipeline.memory.z
    public long A() {
        throw new UnsupportedOperationException("Cannot get the pointer of a BufferMemoryChunk");
    }

    @Override // com.facebook.imagepipeline.memory.z
    public synchronized int B(final int memoryOffset, final byte[] byteArray, final int byteArrayOffset, final int count) {
        int iA;
        com.facebook.common.internal.i.i(byteArray);
        com.facebook.common.internal.i.o(!isClosed());
        com.facebook.common.internal.i.i(this.f28180b);
        iA = b0.a(memoryOffset, count, this.f28181c);
        b0.b(memoryOffset, byteArray.length, byteArrayOffset, iA, this.f28181c);
        this.f28180b.position(memoryOffset);
        this.f28180b.get(byteArray, byteArrayOffset, iA);
        return iA;
    }

    @Override // com.facebook.imagepipeline.memory.z
    @Nullable
    public synchronized ByteBuffer C() {
        return this.f28180b;
    }

    @Override // com.facebook.imagepipeline.memory.z
    public synchronized byte D(final int offset) {
        boolean z10 = true;
        com.facebook.common.internal.i.o(!isClosed());
        com.facebook.common.internal.i.d(Boolean.valueOf(offset >= 0));
        if (offset >= this.f28181c) {
            z10 = false;
        }
        com.facebook.common.internal.i.d(Boolean.valueOf(z10));
        com.facebook.common.internal.i.i(this.f28180b);
        return this.f28180b.get(offset);
    }

    @Override // com.facebook.imagepipeline.memory.z
    public synchronized int a(final int memoryOffset, final byte[] byteArray, final int byteArrayOffset, final int count) {
        int iA;
        com.facebook.common.internal.i.i(byteArray);
        com.facebook.common.internal.i.o(!isClosed());
        com.facebook.common.internal.i.i(this.f28180b);
        iA = b0.a(memoryOffset, count, this.f28181c);
        b0.b(memoryOffset, byteArray.length, byteArrayOffset, iA, this.f28181c);
        this.f28180b.position(memoryOffset);
        this.f28180b.put(byteArray, byteArrayOffset, iA);
        return iA;
    }

    @Override // com.facebook.imagepipeline.memory.z
    public void b(final int offset, final z other, final int otherOffset, final int count) {
        com.facebook.common.internal.i.i(other);
        if (other.getUniqueId() == getUniqueId()) {
            StringBuilder sb2 = new StringBuilder();
            sb2.append("Copying from BufferMemoryChunk ");
            sb2.append(Long.toHexString(getUniqueId()));
            sb2.append(" to BufferMemoryChunk ");
            sb2.append(Long.toHexString(other.getUniqueId()));
            sb2.append(" which are the same ");
            com.facebook.common.internal.i.d(Boolean.FALSE);
        }
        if (other.getUniqueId() < getUniqueId()) {
            synchronized (other) {
                synchronized (this) {
                    c(offset, other, otherOffset, count);
                }
            }
        } else {
            synchronized (this) {
                synchronized (other) {
                    c(offset, other, otherOffset, count);
                }
            }
        }
    }

    @Override // com.facebook.imagepipeline.memory.z, java.io.Closeable, java.lang.AutoCloseable
    public synchronized void close() {
        this.f28180b = null;
    }

    @Override // com.facebook.imagepipeline.memory.z
    public int getSize() {
        return this.f28181c;
    }

    @Override // com.facebook.imagepipeline.memory.z
    public long getUniqueId() {
        return this.f28182d;
    }

    @Override // com.facebook.imagepipeline.memory.z
    public synchronized boolean isClosed() {
        return this.f28180b == null;
    }
}
