package io.netty.buffer;

import io.netty.util.internal.LongCounter;
import io.netty.util.internal.PlatformDependent;
import io.netty.util.internal.StringUtil;
import java.nio.ByteBuffer;

/* JADX INFO: loaded from: classes8.dex */
public final class UnpooledByteBufAllocator extends AbstractByteBufAllocator implements ByteBufAllocatorMetricProvider {
    public static final UnpooledByteBufAllocator DEFAULT = new UnpooledByteBufAllocator(PlatformDependent.directBufferPreferred());
    private final boolean disableLeakDetector;
    private final UnpooledByteBufAllocatorMetric metric;
    private final boolean noCleaner;

    private static final class InstrumentedUnpooledDirectByteBuf extends UnpooledDirectByteBuf {
        InstrumentedUnpooledDirectByteBuf(UnpooledByteBufAllocator unpooledByteBufAllocator, int i10, int i11) {
            super(unpooledByteBufAllocator, i10, i11);
        }

        @Override // io.netty.buffer.UnpooledDirectByteBuf
        protected ByteBuffer allocateDirect(int i10) {
            ByteBuffer byteBufferAllocateDirect = super.allocateDirect(i10);
            ((UnpooledByteBufAllocator) alloc()).incrementDirect(byteBufferAllocateDirect.capacity());
            return byteBufferAllocateDirect;
        }

        @Override // io.netty.buffer.UnpooledDirectByteBuf
        protected void freeDirect(ByteBuffer byteBuffer) {
            int iCapacity = byteBuffer.capacity();
            super.freeDirect(byteBuffer);
            ((UnpooledByteBufAllocator) alloc()).decrementDirect(iCapacity);
        }
    }

    private static final class InstrumentedUnpooledHeapByteBuf extends UnpooledHeapByteBuf {
        InstrumentedUnpooledHeapByteBuf(UnpooledByteBufAllocator unpooledByteBufAllocator, int i10, int i11) {
            super(unpooledByteBufAllocator, i10, i11);
        }

        @Override // io.netty.buffer.UnpooledHeapByteBuf
        protected byte[] allocateArray(int i10) {
            byte[] bArrAllocateArray = super.allocateArray(i10);
            ((UnpooledByteBufAllocator) alloc()).incrementHeap(bArrAllocateArray.length);
            return bArrAllocateArray;
        }

        @Override // io.netty.buffer.UnpooledHeapByteBuf
        protected void freeArray(byte[] bArr) {
            int length = bArr.length;
            super.freeArray(bArr);
            ((UnpooledByteBufAllocator) alloc()).decrementHeap(length);
        }
    }

    private static final class InstrumentedUnpooledUnsafeDirectByteBuf extends UnpooledUnsafeDirectByteBuf {
        InstrumentedUnpooledUnsafeDirectByteBuf(UnpooledByteBufAllocator unpooledByteBufAllocator, int i10, int i11) {
            super(unpooledByteBufAllocator, i10, i11);
        }

        @Override // io.netty.buffer.UnpooledDirectByteBuf
        protected ByteBuffer allocateDirect(int i10) {
            ByteBuffer byteBufferAllocateDirect = super.allocateDirect(i10);
            ((UnpooledByteBufAllocator) alloc()).incrementDirect(byteBufferAllocateDirect.capacity());
            return byteBufferAllocateDirect;
        }

        @Override // io.netty.buffer.UnpooledDirectByteBuf
        protected void freeDirect(ByteBuffer byteBuffer) {
            int iCapacity = byteBuffer.capacity();
            super.freeDirect(byteBuffer);
            ((UnpooledByteBufAllocator) alloc()).decrementDirect(iCapacity);
        }
    }

    private static final class InstrumentedUnpooledUnsafeHeapByteBuf extends UnpooledUnsafeHeapByteBuf {
        InstrumentedUnpooledUnsafeHeapByteBuf(UnpooledByteBufAllocator unpooledByteBufAllocator, int i10, int i11) {
            super(unpooledByteBufAllocator, i10, i11);
        }

        @Override // io.netty.buffer.UnpooledUnsafeHeapByteBuf, io.netty.buffer.UnpooledHeapByteBuf
        protected byte[] allocateArray(int i10) {
            byte[] bArrAllocateArray = super.allocateArray(i10);
            ((UnpooledByteBufAllocator) alloc()).incrementHeap(bArrAllocateArray.length);
            return bArrAllocateArray;
        }

        @Override // io.netty.buffer.UnpooledHeapByteBuf
        protected void freeArray(byte[] bArr) {
            int length = bArr.length;
            super.freeArray(bArr);
            ((UnpooledByteBufAllocator) alloc()).decrementHeap(length);
        }
    }

    private static final class InstrumentedUnpooledUnsafeNoCleanerDirectByteBuf extends UnpooledUnsafeNoCleanerDirectByteBuf {
        InstrumentedUnpooledUnsafeNoCleanerDirectByteBuf(UnpooledByteBufAllocator unpooledByteBufAllocator, int i10, int i11) {
            super(unpooledByteBufAllocator, i10, i11);
        }

        @Override // io.netty.buffer.UnpooledUnsafeNoCleanerDirectByteBuf, io.netty.buffer.UnpooledDirectByteBuf
        protected ByteBuffer allocateDirect(int i10) {
            ByteBuffer byteBufferAllocateDirect = super.allocateDirect(i10);
            ((UnpooledByteBufAllocator) alloc()).incrementDirect(byteBufferAllocateDirect.capacity());
            return byteBufferAllocateDirect;
        }

        @Override // io.netty.buffer.UnpooledUnsafeNoCleanerDirectByteBuf, io.netty.buffer.UnpooledDirectByteBuf
        protected void freeDirect(ByteBuffer byteBuffer) {
            int iCapacity = byteBuffer.capacity();
            super.freeDirect(byteBuffer);
            ((UnpooledByteBufAllocator) alloc()).decrementDirect(iCapacity);
        }

        @Override // io.netty.buffer.UnpooledUnsafeNoCleanerDirectByteBuf
        ByteBuffer reallocateDirect(ByteBuffer byteBuffer, int i10) {
            int iCapacity = byteBuffer.capacity();
            ByteBuffer byteBufferReallocateDirect = super.reallocateDirect(byteBuffer, i10);
            ((UnpooledByteBufAllocator) alloc()).incrementDirect(byteBufferReallocateDirect.capacity() - iCapacity);
            return byteBufferReallocateDirect;
        }
    }

    private static final class UnpooledByteBufAllocatorMetric implements ByteBufAllocatorMetric {
        final LongCounter directCounter;
        final LongCounter heapCounter;

        private UnpooledByteBufAllocatorMetric() {
            this.directCounter = PlatformDependent.newLongCounter();
            this.heapCounter = PlatformDependent.newLongCounter();
        }

        public String toString() {
            return StringUtil.simpleClassName(this) + "(usedHeapMemory: " + usedHeapMemory() + "; usedDirectMemory: " + usedDirectMemory() + ')';
        }

        @Override // io.netty.buffer.ByteBufAllocatorMetric
        public long usedDirectMemory() {
            return this.directCounter.value();
        }

        @Override // io.netty.buffer.ByteBufAllocatorMetric
        public long usedHeapMemory() {
            return this.heapCounter.value();
        }
    }

    public UnpooledByteBufAllocator(boolean z10) {
        this(z10, false);
    }

    @Override // io.netty.buffer.AbstractByteBufAllocator, io.netty.buffer.ByteBufAllocator
    public CompositeByteBuf compositeDirectBuffer(int i10) {
        CompositeByteBuf compositeByteBuf = new CompositeByteBuf(this, true, i10);
        return this.disableLeakDetector ? compositeByteBuf : AbstractByteBufAllocator.toLeakAwareBuffer(compositeByteBuf);
    }

    @Override // io.netty.buffer.AbstractByteBufAllocator, io.netty.buffer.ByteBufAllocator
    public CompositeByteBuf compositeHeapBuffer(int i10) {
        CompositeByteBuf compositeByteBuf = new CompositeByteBuf(this, false, i10);
        return this.disableLeakDetector ? compositeByteBuf : AbstractByteBufAllocator.toLeakAwareBuffer(compositeByteBuf);
    }

    void decrementDirect(int i10) {
        this.metric.directCounter.add(-i10);
    }

    void decrementHeap(int i10) {
        this.metric.heapCounter.add(-i10);
    }

    void incrementDirect(int i10) {
        this.metric.directCounter.add(i10);
    }

    void incrementHeap(int i10) {
        this.metric.heapCounter.add(i10);
    }

    @Override // io.netty.buffer.ByteBufAllocator
    public boolean isDirectBufferPooled() {
        return false;
    }

    @Override // io.netty.buffer.ByteBufAllocatorMetricProvider
    public ByteBufAllocatorMetric metric() {
        return this.metric;
    }

    @Override // io.netty.buffer.AbstractByteBufAllocator
    protected ByteBuf newDirectBuffer(int i10, int i11) {
        ByteBuf instrumentedUnpooledDirectByteBuf;
        if (PlatformDependent.hasUnsafe()) {
            instrumentedUnpooledDirectByteBuf = this.noCleaner ? new InstrumentedUnpooledUnsafeNoCleanerDirectByteBuf(this, i10, i11) : new InstrumentedUnpooledUnsafeDirectByteBuf(this, i10, i11);
        } else {
            instrumentedUnpooledDirectByteBuf = new InstrumentedUnpooledDirectByteBuf(this, i10, i11);
        }
        return this.disableLeakDetector ? instrumentedUnpooledDirectByteBuf : AbstractByteBufAllocator.toLeakAwareBuffer(instrumentedUnpooledDirectByteBuf);
    }

    @Override // io.netty.buffer.AbstractByteBufAllocator
    protected ByteBuf newHeapBuffer(int i10, int i11) {
        return PlatformDependent.hasUnsafe() ? new InstrumentedUnpooledUnsafeHeapByteBuf(this, i10, i11) : new InstrumentedUnpooledHeapByteBuf(this, i10, i11);
    }

    public UnpooledByteBufAllocator(boolean z10, boolean z11) {
        this(z10, z11, PlatformDependent.useDirectBufferNoCleaner());
    }

    public UnpooledByteBufAllocator(boolean z10, boolean z11, boolean z12) {
        super(z10);
        this.metric = new UnpooledByteBufAllocatorMetric();
        this.disableLeakDetector = z11;
        this.noCleaner = z12 && PlatformDependent.hasUnsafe() && PlatformDependent.hasDirectBufferNoCleanerConstructor();
    }
}
