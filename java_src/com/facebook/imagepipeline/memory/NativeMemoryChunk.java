package com.facebook.imagepipeline.memory;

import androidx.annotation.VisibleForTesting;
import com.facebook.common.internal.DoNotStrip;
import com.facebook.infer.annotation.Nullsafe;
import java.io.Closeable;
import java.nio.ByteBuffer;
import javax.annotation.Nullable;

/* JADX INFO: loaded from: classes9.dex */
@DoNotStrip
@Nullsafe(Nullsafe.Mode.STRICT)
public class NativeMemoryChunk implements z, Closeable {

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    private static final String f28078e = "NativeMemoryChunk";

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private final long f28079b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    private final int f28080c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    private boolean f28081d;

    static {
        r4.a.f(com.facebook.imagepipeline.nativecode.c.f28224a);
    }

    public NativeMemoryChunk(final int size) {
        com.facebook.common.internal.i.d(Boolean.valueOf(size > 0));
        this.f28080c = size;
        this.f28079b = nativeAllocate(size);
        this.f28081d = false;
    }

    private void c(final int offset, final z other, final int otherOffset, final int count) {
        if (!(other instanceof NativeMemoryChunk)) {
            throw new IllegalArgumentException("Cannot copy two incompatible MemoryChunks");
        }
        com.facebook.common.internal.i.o(!isClosed());
        com.facebook.common.internal.i.o(!other.isClosed());
        b0.b(offset, other.getSize(), otherOffset, count, this.f28080c);
        nativeMemcpy(other.A() + ((long) otherOffset), this.f28079b + ((long) offset), count);
    }

    @DoNotStrip
    private static native long nativeAllocate(int size);

    @DoNotStrip
    private static native void nativeCopyFromByteArray(long address, byte[] array, int offset, int count);

    @DoNotStrip
    private static native void nativeCopyToByteArray(long address, byte[] array, int offset, int count);

    @DoNotStrip
    private static native void nativeFree(long address);

    @DoNotStrip
    private static native void nativeMemcpy(long toPtr, long fromPtr, int count);

    @DoNotStrip
    private static native byte nativeReadByte(long fromPtr);

    @Override // com.facebook.imagepipeline.memory.z
    public long A() {
        return this.f28079b;
    }

    @Override // com.facebook.imagepipeline.memory.z
    public synchronized int B(final int memoryOffset, final byte[] byteArray, final int byteArrayOffset, final int count) {
        int iA;
        com.facebook.common.internal.i.i(byteArray);
        com.facebook.common.internal.i.o(!isClosed());
        iA = b0.a(memoryOffset, count, this.f28080c);
        b0.b(memoryOffset, byteArray.length, byteArrayOffset, iA, this.f28080c);
        nativeCopyToByteArray(this.f28079b + ((long) memoryOffset), byteArray, byteArrayOffset, iA);
        return iA;
    }

    @Override // com.facebook.imagepipeline.memory.z
    @Nullable
    public ByteBuffer C() {
        return null;
    }

    @Override // com.facebook.imagepipeline.memory.z
    public synchronized byte D(final int offset) {
        boolean z10 = true;
        com.facebook.common.internal.i.o(!isClosed());
        com.facebook.common.internal.i.d(Boolean.valueOf(offset >= 0));
        if (offset >= this.f28080c) {
            z10 = false;
        }
        com.facebook.common.internal.i.d(Boolean.valueOf(z10));
        return nativeReadByte(this.f28079b + ((long) offset));
    }

    @Override // com.facebook.imagepipeline.memory.z
    public synchronized int a(final int memoryOffset, final byte[] byteArray, final int byteArrayOffset, final int count) {
        int iA;
        com.facebook.common.internal.i.i(byteArray);
        com.facebook.common.internal.i.o(!isClosed());
        iA = b0.a(memoryOffset, count, this.f28080c);
        b0.b(memoryOffset, byteArray.length, byteArrayOffset, iA, this.f28080c);
        nativeCopyFromByteArray(this.f28079b + ((long) memoryOffset), byteArray, byteArrayOffset, iA);
        return iA;
    }

    @Override // com.facebook.imagepipeline.memory.z
    public void b(final int offset, final z other, final int otherOffset, final int count) {
        com.facebook.common.internal.i.i(other);
        if (other.getUniqueId() == getUniqueId()) {
            StringBuilder sb2 = new StringBuilder();
            sb2.append("Copying from NativeMemoryChunk ");
            sb2.append(Integer.toHexString(System.identityHashCode(this)));
            sb2.append(" to NativeMemoryChunk ");
            sb2.append(Integer.toHexString(System.identityHashCode(other)));
            sb2.append(" which share the same address ");
            sb2.append(Long.toHexString(this.f28079b));
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
        if (!this.f28081d) {
            this.f28081d = true;
            nativeFree(this.f28079b);
        }
    }

    protected void finalize() throws Throwable {
        if (isClosed()) {
            return;
        }
        StringBuilder sb2 = new StringBuilder();
        sb2.append("finalize: Chunk ");
        sb2.append(Integer.toHexString(System.identityHashCode(this)));
        sb2.append(" still active. ");
        try {
            close();
        } finally {
            super.finalize();
        }
    }

    @Override // com.facebook.imagepipeline.memory.z
    public int getSize() {
        return this.f28080c;
    }

    @Override // com.facebook.imagepipeline.memory.z
    public long getUniqueId() {
        return this.f28079b;
    }

    @Override // com.facebook.imagepipeline.memory.z
    public synchronized boolean isClosed() {
        return this.f28081d;
    }

    @VisibleForTesting
    public NativeMemoryChunk() {
        this.f28080c = 0;
        this.f28079b = 0L;
        this.f28081d = true;
    }
}
