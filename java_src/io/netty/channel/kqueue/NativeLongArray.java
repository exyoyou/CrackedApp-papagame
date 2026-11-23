package io.netty.channel.kqueue;

import io.netty.channel.unix.Buffer;
import io.netty.channel.unix.Limits;
import io.netty.util.internal.PlatformDependent;
import java.nio.ByteBuffer;

/* JADX INFO: loaded from: classes.dex */
final class NativeLongArray {
    private int capacity;
    private ByteBuffer memory;
    private long memoryAddress;
    private int size;

    NativeLongArray(int i10) {
        if (i10 < 1) {
            throw new IllegalArgumentException("capacity must be >= 1 but was " + i10);
        }
        ByteBuffer byteBufferAllocateDirectWithNativeOrder = Buffer.allocateDirectWithNativeOrder(calculateBufferCapacity(i10));
        this.memory = byteBufferAllocateDirectWithNativeOrder;
        this.memoryAddress = Buffer.memoryAddress(byteBufferAllocateDirectWithNativeOrder);
        this.capacity = i10;
    }

    private static int calculateBufferCapacity(int i10) {
        return i10 * Limits.SIZEOF_JLONG;
    }

    private static int idx(int i10) {
        return i10 * Limits.SIZEOF_JLONG;
    }

    private long memoryOffset(int i10) {
        return this.memoryAddress + ((long) idx(i10));
    }

    private void reallocIfNeeded() {
        int i10 = this.size;
        int i11 = this.capacity;
        if (i10 == i11) {
            int i12 = i11 <= 65536 ? i11 << 1 : (i11 + i11) >> 1;
            ByteBuffer byteBufferAllocateDirectWithNativeOrder = Buffer.allocateDirectWithNativeOrder(calculateBufferCapacity(i12));
            this.memory.position(0).limit(this.size);
            byteBufferAllocateDirectWithNativeOrder.put(this.memory);
            byteBufferAllocateDirectWithNativeOrder.position(0);
            Buffer.free(this.memory);
            this.memory = byteBufferAllocateDirectWithNativeOrder;
            this.memoryAddress = Buffer.memoryAddress(byteBufferAllocateDirectWithNativeOrder);
            this.capacity = i12;
        }
    }

    void add(long j10) {
        reallocIfNeeded();
        if (PlatformDependent.hasUnsafe()) {
            PlatformDependent.putLong(memoryOffset(this.size), j10);
        } else {
            this.memory.putLong(idx(this.size), j10);
        }
        this.size++;
    }

    void clear() {
        this.size = 0;
    }

    void free() {
        Buffer.free(this.memory);
        this.memoryAddress = 0L;
    }

    boolean isEmpty() {
        return this.size == 0;
    }

    long memoryAddress() {
        return this.memoryAddress;
    }

    long memoryAddressEnd() {
        return memoryOffset(this.size);
    }

    int size() {
        return this.size;
    }

    public String toString() {
        return "memoryAddress: " + this.memoryAddress + " capacity: " + this.capacity + " size: " + this.size;
    }
}
