package io.netty.channel.unix;

import io.netty.buffer.ByteBuf;
import io.netty.channel.ChannelOutboundBuffer;
import io.netty.util.internal.ObjectUtil;
import io.netty.util.internal.PlatformDependent;
import java.nio.ByteBuffer;

/* JADX INFO: loaded from: classes.dex */
public final class IovArray implements ChannelOutboundBuffer.MessageProcessor {
    static final /* synthetic */ boolean $assertionsDisabled = false;
    private static final int ADDRESS_SIZE;
    private static final int CAPACITY;
    private static final int IOV_SIZE;
    private int count;
    private long maxBytes = Limits.SSIZE_MAX;
    private final ByteBuffer memory;
    private final long memoryAddress;
    private long size;

    static {
        int iAddressSize = Buffer.addressSize();
        ADDRESS_SIZE = iAddressSize;
        int i10 = iAddressSize * 2;
        IOV_SIZE = i10;
        CAPACITY = Limits.IOV_MAX * i10;
    }

    public IovArray() {
        ByteBuffer byteBufferAllocateDirectWithNativeOrder = Buffer.allocateDirectWithNativeOrder(CAPACITY);
        this.memory = byteBufferAllocateDirectWithNativeOrder;
        this.memoryAddress = Buffer.memoryAddress(byteBufferAllocateDirectWithNativeOrder);
    }

    private static int idx(int i10) {
        return IOV_SIZE * i10;
    }

    @Deprecated
    public boolean add(ByteBuf byteBuf) {
        return add(byteBuf, byteBuf.readerIndex(), byteBuf.readableBytes());
    }

    public void clear() {
        this.count = 0;
        this.size = 0L;
    }

    public int count() {
        return this.count;
    }

    public void maxBytes(long j10) {
        this.maxBytes = Math.min(Limits.SSIZE_MAX, ObjectUtil.checkPositive(j10, "maxBytes"));
    }

    public long memoryAddress(int i10) {
        return this.memoryAddress + ((long) idx(i10));
    }

    @Override // io.netty.channel.ChannelOutboundBuffer.MessageProcessor
    public boolean processMessage(Object obj) throws Exception {
        if (!(obj instanceof ByteBuf)) {
            return false;
        }
        ByteBuf byteBuf = (ByteBuf) obj;
        return add(byteBuf, byteBuf.readerIndex(), byteBuf.readableBytes());
    }

    public void release() {
        Buffer.free(this.memory);
    }

    public long size() {
        return this.size;
    }

    public boolean add(ByteBuf byteBuf, int i10, int i11) {
        if (this.count == Limits.IOV_MAX) {
            return false;
        }
        if (byteBuf.nioBufferCount() == 1) {
            if (i11 == 0) {
                return true;
            }
            if (byteBuf.hasMemoryAddress()) {
                return add(byteBuf.memoryAddress() + ((long) i10), i11);
            }
            ByteBuffer byteBufferInternalNioBuffer = byteBuf.internalNioBuffer(i10, i11);
            return add(Buffer.memoryAddress(byteBufferInternalNioBuffer) + ((long) byteBufferInternalNioBuffer.position()), i11);
        }
        ByteBuffer[] byteBufferArrNioBuffers = byteBuf.nioBuffers(i10, i11);
        for (ByteBuffer byteBuffer : byteBufferArrNioBuffers) {
            int iRemaining = byteBuffer.remaining();
            if (iRemaining != 0 && (!add(Buffer.memoryAddress(byteBuffer) + ((long) byteBuffer.position()), iRemaining) || this.count == Limits.IOV_MAX)) {
                return false;
            }
        }
        return true;
    }

    public long maxBytes() {
        return this.maxBytes;
    }

    private boolean add(long j10, int i10) {
        long j11 = i10;
        if (this.maxBytes - j11 < this.size && this.count > 0) {
            return false;
        }
        int iIdx = idx(this.count);
        int i11 = ADDRESS_SIZE;
        int i12 = iIdx + i11;
        this.size += j11;
        this.count++;
        if (i11 == 8) {
            if (PlatformDependent.hasUnsafe()) {
                PlatformDependent.putLong(((long) iIdx) + this.memoryAddress, j10);
                PlatformDependent.putLong(((long) i12) + this.memoryAddress, j11);
            } else {
                this.memory.putLong(iIdx, j10);
                this.memory.putLong(i12, j11);
            }
        } else if (PlatformDependent.hasUnsafe()) {
            PlatformDependent.putInt(((long) iIdx) + this.memoryAddress, (int) j10);
            PlatformDependent.putInt(((long) i12) + this.memoryAddress, i10);
        } else {
            this.memory.putInt(iIdx, (int) j10);
            this.memory.putInt(i12, i10);
        }
        return true;
    }
}
