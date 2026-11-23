package com.facebook.imagepipeline.memory;

import android.annotation.TargetApi;
import android.os.SharedMemory;
import android.system.ErrnoException;
import androidx.annotation.VisibleForTesting;
import com.facebook.infer.annotation.Nullsafe;
import java.io.Closeable;
import java.nio.ByteBuffer;
import javax.annotation.Nullable;

/* JADX INFO: loaded from: classes9.dex */
@TargetApi(27)
@Nullsafe(Nullsafe.Mode.LOCAL)
public class f implements z, Closeable {

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    private static final String f28088e = "AshmemMemoryChunk";

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    @Nullable
    private SharedMemory f28089b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    @Nullable
    private ByteBuffer f28090c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    private final long f28091d;

    public f(final int size) {
        com.facebook.common.internal.i.d(Boolean.valueOf(size > 0));
        try {
            SharedMemory sharedMemoryCreate = SharedMemory.create(f28088e, size);
            this.f28089b = sharedMemoryCreate;
            this.f28090c = sharedMemoryCreate.mapReadWrite();
            this.f28091d = System.identityHashCode(this);
        } catch (ErrnoException e10) {
            throw new RuntimeException("Fail to create AshmemMemory", e10);
        }
    }

    private void c(final int offset, final z other, final int otherOffset, final int count) {
        if (!(other instanceof f)) {
            throw new IllegalArgumentException("Cannot copy two incompatible MemoryChunks");
        }
        com.facebook.common.internal.i.o(!isClosed());
        com.facebook.common.internal.i.o(!other.isClosed());
        com.facebook.common.internal.i.i(this.f28090c);
        com.facebook.common.internal.i.i(other.C());
        b0.b(offset, other.getSize(), otherOffset, count, getSize());
        this.f28090c.position(offset);
        other.C().position(otherOffset);
        byte[] bArr = new byte[count];
        this.f28090c.get(bArr, 0, count);
        other.C().put(bArr, 0, count);
    }

    @Override // com.facebook.imagepipeline.memory.z
    public long A() {
        throw new UnsupportedOperationException("Cannot get the pointer of an  AshmemMemoryChunk");
    }

    @Override // com.facebook.imagepipeline.memory.z
    public synchronized int B(final int memoryOffset, final byte[] byteArray, final int byteArrayOffset, final int count) {
        int iA;
        com.facebook.common.internal.i.i(byteArray);
        com.facebook.common.internal.i.i(this.f28090c);
        iA = b0.a(memoryOffset, count, getSize());
        b0.b(memoryOffset, byteArray.length, byteArrayOffset, iA, getSize());
        this.f28090c.position(memoryOffset);
        this.f28090c.get(byteArray, byteArrayOffset, iA);
        return iA;
    }

    @Override // com.facebook.imagepipeline.memory.z
    @Nullable
    public ByteBuffer C() {
        return this.f28090c;
    }

    @Override // com.facebook.imagepipeline.memory.z
    public synchronized byte D(final int offset) {
        boolean z10 = true;
        com.facebook.common.internal.i.o(!isClosed());
        com.facebook.common.internal.i.d(Boolean.valueOf(offset >= 0));
        if (offset >= getSize()) {
            z10 = false;
        }
        com.facebook.common.internal.i.d(Boolean.valueOf(z10));
        com.facebook.common.internal.i.i(this.f28090c);
        return this.f28090c.get(offset);
    }

    @Override // com.facebook.imagepipeline.memory.z
    public synchronized int a(final int memoryOffset, final byte[] byteArray, final int byteArrayOffset, final int count) {
        int iA;
        com.facebook.common.internal.i.i(byteArray);
        com.facebook.common.internal.i.i(this.f28090c);
        iA = b0.a(memoryOffset, count, getSize());
        b0.b(memoryOffset, byteArray.length, byteArrayOffset, iA, getSize());
        this.f28090c.position(memoryOffset);
        this.f28090c.put(byteArray, byteArrayOffset, iA);
        return iA;
    }

    @Override // com.facebook.imagepipeline.memory.z
    public void b(final int offset, final z other, final int otherOffset, final int count) {
        com.facebook.common.internal.i.i(other);
        if (other.getUniqueId() == getUniqueId()) {
            StringBuilder sb2 = new StringBuilder();
            sb2.append("Copying from AshmemMemoryChunk ");
            sb2.append(Long.toHexString(getUniqueId()));
            sb2.append(" to AshmemMemoryChunk ");
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
        if (!isClosed()) {
            SharedMemory sharedMemory = this.f28089b;
            if (sharedMemory != null) {
                sharedMemory.close();
            }
            ByteBuffer byteBuffer = this.f28090c;
            if (byteBuffer != null) {
                SharedMemory.unmap(byteBuffer);
            }
            this.f28090c = null;
            this.f28089b = null;
        }
    }

    @Override // com.facebook.imagepipeline.memory.z
    public int getSize() {
        com.facebook.common.internal.i.i(this.f28089b);
        return this.f28089b.getSize();
    }

    @Override // com.facebook.imagepipeline.memory.z
    public long getUniqueId() {
        return this.f28091d;
    }

    @Override // com.facebook.imagepipeline.memory.z
    public synchronized boolean isClosed() {
        return this.f28090c == null || this.f28089b == null;
    }

    @VisibleForTesting
    public f() {
        this.f28089b = null;
        this.f28090c = null;
        this.f28091d = System.identityHashCode(this);
    }
}
