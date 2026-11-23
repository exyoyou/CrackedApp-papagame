package io.netty.channel.epoll;

import io.netty.channel.unix.Buffer;
import io.netty.util.internal.PlatformDependent;
import java.nio.ByteBuffer;

/* JADX INFO: loaded from: classes.dex */
final class EpollEventArray {
    private int length;
    private ByteBuffer memory;
    private long memoryAddress;
    private static final int EPOLL_EVENT_SIZE = Native.sizeofEpollEvent();
    private static final int EPOLL_DATA_OFFSET = Native.offsetofEpollData();

    EpollEventArray(int i10) {
        if (i10 < 1) {
            throw new IllegalArgumentException("length must be >= 1 but was " + i10);
        }
        this.length = i10;
        ByteBuffer byteBufferAllocateDirectWithNativeOrder = Buffer.allocateDirectWithNativeOrder(calculateBufferCapacity(i10));
        this.memory = byteBufferAllocateDirectWithNativeOrder;
        this.memoryAddress = Buffer.memoryAddress(byteBufferAllocateDirectWithNativeOrder);
    }

    private static int calculateBufferCapacity(int i10) {
        return i10 * EPOLL_EVENT_SIZE;
    }

    private int getInt(int i10, int i11) {
        return PlatformDependent.hasUnsafe() ? PlatformDependent.getInt(this.memoryAddress + ((long) (i10 * EPOLL_EVENT_SIZE)) + ((long) i11)) : this.memory.getInt((i10 * EPOLL_EVENT_SIZE) + i11);
    }

    int events(int i10) {
        return getInt(i10, 0);
    }

    int fd(int i10) {
        return getInt(i10, EPOLL_DATA_OFFSET);
    }

    void free() {
        Buffer.free(this.memory);
        this.memoryAddress = 0L;
    }

    void increase() {
        int i10 = this.length << 1;
        this.length = i10;
        ByteBuffer byteBufferAllocateDirectWithNativeOrder = Buffer.allocateDirectWithNativeOrder(calculateBufferCapacity(i10));
        Buffer.free(this.memory);
        this.memory = byteBufferAllocateDirectWithNativeOrder;
        this.memoryAddress = Buffer.memoryAddress(byteBufferAllocateDirectWithNativeOrder);
    }

    int length() {
        return this.length;
    }

    long memoryAddress() {
        return this.memoryAddress;
    }
}
