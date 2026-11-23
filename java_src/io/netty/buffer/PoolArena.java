package io.netty.buffer;

import io.netty.util.internal.LongCounter;
import io.netty.util.internal.ObjectUtil;
import io.netty.util.internal.PlatformDependent;
import io.netty.util.internal.StringUtil;
import java.nio.ByteBuffer;
import java.util.ArrayList;
import java.util.Collections;
import java.util.Iterator;
import java.util.List;
import java.util.concurrent.atomic.AtomicInteger;

/* JADX INFO: loaded from: classes8.dex */
abstract class PoolArena<T> implements PoolArenaMetric {
    static final /* synthetic */ boolean $assertionsDisabled = false;
    static final boolean HAS_UNSAFE = PlatformDependent.hasUnsafe();
    static final int numTinySubpagePools = 32;
    private long allocationsNormal;
    private final List<PoolChunkListMetric> chunkListMetrics;
    final int chunkSize;
    private long deallocationsNormal;
    private long deallocationsSmall;
    private long deallocationsTiny;
    final int directMemoryCacheAlignment;
    final int directMemoryCacheAlignmentMask;
    private final int maxOrder;
    final int numSmallSubpagePools;
    final int pageShifts;
    final int pageSize;
    final PooledByteBufAllocator parent;
    private final PoolChunkList<T> q000;
    private final PoolChunkList<T> q025;
    private final PoolChunkList<T> q050;
    private final PoolChunkList<T> q075;
    private final PoolChunkList<T> q100;
    private final PoolChunkList<T> qInit;
    private final PoolSubpage<T>[] smallSubpagePools;
    final int subpageOverflowMask;
    private final LongCounter allocationsTiny = PlatformDependent.newLongCounter();
    private final LongCounter allocationsSmall = PlatformDependent.newLongCounter();
    private final LongCounter allocationsHuge = PlatformDependent.newLongCounter();
    private final LongCounter activeBytesHuge = PlatformDependent.newLongCounter();
    private final LongCounter deallocationsHuge = PlatformDependent.newLongCounter();
    final AtomicInteger numThreadCaches = new AtomicInteger();
    private final PoolSubpage<T>[] tinySubpagePools = newSubpagePoolArray(32);

    /* JADX INFO: renamed from: io.netty.buffer.PoolArena$1, reason: invalid class name */
    static /* synthetic */ class AnonymousClass1 {
        static final /* synthetic */ int[] $SwitchMap$io$netty$buffer$PoolArena$SizeClass;

        static {
            int[] iArr = new int[SizeClass.values().length];
            $SwitchMap$io$netty$buffer$PoolArena$SizeClass = iArr;
            try {
                iArr[SizeClass.Normal.ordinal()] = 1;
            } catch (NoSuchFieldError unused) {
            }
            try {
                $SwitchMap$io$netty$buffer$PoolArena$SizeClass[SizeClass.Small.ordinal()] = 2;
            } catch (NoSuchFieldError unused2) {
            }
            try {
                $SwitchMap$io$netty$buffer$PoolArena$SizeClass[SizeClass.Tiny.ordinal()] = 3;
            } catch (NoSuchFieldError unused3) {
            }
        }
    }

    static final class DirectArena extends PoolArena<ByteBuffer> {
        DirectArena(PooledByteBufAllocator pooledByteBufAllocator, int i10, int i11, int i12, int i13, int i14) {
            super(pooledByteBufAllocator, i10, i11, i12, i13, i14);
        }

        private static ByteBuffer allocateDirect(int i10) {
            return PlatformDependent.useDirectBufferNoCleaner() ? PlatformDependent.allocateDirectNoCleaner(i10) : ByteBuffer.allocateDirect(i10);
        }

        @Override // io.netty.buffer.PoolArena
        protected void destroyChunk(PoolChunk<ByteBuffer> poolChunk) {
            if (PlatformDependent.useDirectBufferNoCleaner()) {
                PlatformDependent.freeDirectNoCleaner(poolChunk.memory);
            } else {
                PlatformDependent.freeDirectBuffer(poolChunk.memory);
            }
        }

        @Override // io.netty.buffer.PoolArena
        boolean isDirect() {
            return true;
        }

        @Override // io.netty.buffer.PoolArena
        protected PooledByteBuf<ByteBuffer> newByteBuf(int i10) {
            return PoolArena.HAS_UNSAFE ? PooledUnsafeDirectByteBuf.newInstance(i10) : PooledDirectByteBuf.newInstance(i10);
        }

        @Override // io.netty.buffer.PoolArena
        protected PoolChunk<ByteBuffer> newChunk(int i10, int i11, int i12, int i13) {
            int i14 = this.directMemoryCacheAlignment;
            if (i14 == 0) {
                return new PoolChunk<>(this, allocateDirect(i13), i10, i11, i12, i13, 0);
            }
            ByteBuffer byteBufferAllocateDirect = allocateDirect(i14 + i13);
            return new PoolChunk<>(this, byteBufferAllocateDirect, i10, i11, i12, i13, offsetCacheLine(byteBufferAllocateDirect));
        }

        @Override // io.netty.buffer.PoolArena
        protected PoolChunk<ByteBuffer> newUnpooledChunk(int i10) {
            int i11 = this.directMemoryCacheAlignment;
            if (i11 == 0) {
                return new PoolChunk<>(this, allocateDirect(i10), i10, 0);
            }
            ByteBuffer byteBufferAllocateDirect = allocateDirect(i11 + i10);
            return new PoolChunk<>(this, byteBufferAllocateDirect, i10, offsetCacheLine(byteBufferAllocateDirect));
        }

        int offsetCacheLine(ByteBuffer byteBuffer) {
            return this.directMemoryCacheAlignment - (PoolArena.HAS_UNSAFE ? (int) (PlatformDependent.directBufferAddress(byteBuffer) & ((long) this.directMemoryCacheAlignmentMask)) : 0);
        }

        /* JADX INFO: Access modifiers changed from: protected */
        @Override // io.netty.buffer.PoolArena
        public void memoryCopy(ByteBuffer byteBuffer, int i10, PooledByteBuf<ByteBuffer> pooledByteBuf, int i11) {
            if (i11 == 0) {
                return;
            }
            if (PoolArena.HAS_UNSAFE) {
                PlatformDependent.copyMemory(PlatformDependent.directBufferAddress(byteBuffer) + ((long) i10), PlatformDependent.directBufferAddress(pooledByteBuf.memory) + ((long) pooledByteBuf.offset), i11);
                return;
            }
            ByteBuffer byteBufferDuplicate = byteBuffer.duplicate();
            ByteBuffer byteBufferInternalNioBuffer = pooledByteBuf.internalNioBuffer();
            byteBufferDuplicate.position(i10).limit(i10 + i11);
            byteBufferInternalNioBuffer.position(pooledByteBuf.offset);
            byteBufferInternalNioBuffer.put(byteBufferDuplicate);
        }
    }

    static final class HeapArena extends PoolArena<byte[]> {
        HeapArena(PooledByteBufAllocator pooledByteBufAllocator, int i10, int i11, int i12, int i13, int i14) {
            super(pooledByteBufAllocator, i10, i11, i12, i13, i14);
        }

        private static byte[] newByteArray(int i10) {
            return PlatformDependent.allocateUninitializedArray(i10);
        }

        @Override // io.netty.buffer.PoolArena
        protected void destroyChunk(PoolChunk<byte[]> poolChunk) {
        }

        @Override // io.netty.buffer.PoolArena
        boolean isDirect() {
            return false;
        }

        @Override // io.netty.buffer.PoolArena
        protected PooledByteBuf<byte[]> newByteBuf(int i10) {
            return PoolArena.HAS_UNSAFE ? PooledUnsafeHeapByteBuf.newUnsafeInstance(i10) : PooledHeapByteBuf.newInstance(i10);
        }

        @Override // io.netty.buffer.PoolArena
        protected PoolChunk<byte[]> newChunk(int i10, int i11, int i12, int i13) {
            return new PoolChunk<>(this, newByteArray(i13), i10, i11, i12, i13, 0);
        }

        @Override // io.netty.buffer.PoolArena
        protected PoolChunk<byte[]> newUnpooledChunk(int i10) {
            return new PoolChunk<>(this, newByteArray(i10), i10, 0);
        }

        /* JADX INFO: Access modifiers changed from: protected */
        @Override // io.netty.buffer.PoolArena
        public void memoryCopy(byte[] bArr, int i10, PooledByteBuf<byte[]> pooledByteBuf, int i11) {
            if (i11 == 0) {
                return;
            }
            System.arraycopy(bArr, i10, pooledByteBuf.memory, pooledByteBuf.offset, i11);
        }
    }

    enum SizeClass {
        Tiny,
        Small,
        Normal
    }

    protected PoolArena(PooledByteBufAllocator pooledByteBufAllocator, int i10, int i11, int i12, int i13, int i14) {
        this.parent = pooledByteBufAllocator;
        this.pageSize = i10;
        this.maxOrder = i11;
        this.pageShifts = i12;
        this.chunkSize = i13;
        this.directMemoryCacheAlignment = i14;
        this.directMemoryCacheAlignmentMask = i14 - 1;
        this.subpageOverflowMask = ~(i10 - 1);
        int i15 = 0;
        int i16 = 0;
        while (true) {
            PoolSubpage<T>[] poolSubpageArr = this.tinySubpagePools;
            if (i16 >= poolSubpageArr.length) {
                break;
            }
            poolSubpageArr[i16] = newSubpagePoolHead(i10);
            i16++;
        }
        int i17 = i12 - 9;
        this.numSmallSubpagePools = i17;
        this.smallSubpagePools = newSubpagePoolArray(i17);
        while (true) {
            PoolSubpage<T>[] poolSubpageArr2 = this.smallSubpagePools;
            if (i15 >= poolSubpageArr2.length) {
                PoolChunkList<T> poolChunkList = new PoolChunkList<>(this, null, 100, Integer.MAX_VALUE, i13);
                this.q100 = poolChunkList;
                PoolChunkList<T> poolChunkList2 = new PoolChunkList<>(this, poolChunkList, 75, 100, i13);
                this.q075 = poolChunkList2;
                PoolChunkList<T> poolChunkList3 = new PoolChunkList<>(this, poolChunkList2, 50, 100, i13);
                this.q050 = poolChunkList3;
                PoolChunkList<T> poolChunkList4 = new PoolChunkList<>(this, poolChunkList3, 25, 75, i13);
                this.q025 = poolChunkList4;
                PoolChunkList<T> poolChunkList5 = new PoolChunkList<>(this, poolChunkList4, 1, 50, i13);
                this.q000 = poolChunkList5;
                PoolChunkList<T> poolChunkList6 = new PoolChunkList<>(this, poolChunkList5, Integer.MIN_VALUE, 25, i13);
                this.qInit = poolChunkList6;
                poolChunkList.prevList(poolChunkList2);
                poolChunkList2.prevList(poolChunkList3);
                poolChunkList3.prevList(poolChunkList4);
                poolChunkList4.prevList(poolChunkList5);
                poolChunkList5.prevList(null);
                poolChunkList6.prevList(poolChunkList6);
                ArrayList arrayList = new ArrayList(6);
                arrayList.add(poolChunkList6);
                arrayList.add(poolChunkList5);
                arrayList.add(poolChunkList4);
                arrayList.add(poolChunkList3);
                arrayList.add(poolChunkList2);
                arrayList.add(poolChunkList);
                this.chunkListMetrics = Collections.unmodifiableList(arrayList);
                return;
            }
            poolSubpageArr2[i15] = newSubpagePoolHead(i10);
            i15++;
        }
    }

    private void allocateHuge(PooledByteBuf<T> pooledByteBuf, int i10) {
        PoolChunk<T> poolChunkNewUnpooledChunk = newUnpooledChunk(i10);
        this.activeBytesHuge.add(poolChunkNewUnpooledChunk.chunkSize());
        pooledByteBuf.initUnpooled(poolChunkNewUnpooledChunk, i10);
        this.allocationsHuge.increment();
    }

    private void allocateNormal(PooledByteBuf<T> pooledByteBuf, int i10, int i11) {
        if (this.q050.allocate(pooledByteBuf, i10, i11) || this.q025.allocate(pooledByteBuf, i10, i11) || this.q000.allocate(pooledByteBuf, i10, i11) || this.qInit.allocate(pooledByteBuf, i10, i11) || this.q075.allocate(pooledByteBuf, i10, i11)) {
            return;
        }
        PoolChunk<T> poolChunkNewChunk = newChunk(this.pageSize, this.maxOrder, this.pageShifts, this.chunkSize);
        poolChunkNewChunk.allocate(pooledByteBuf, i10, i11);
        this.qInit.add(poolChunkNewChunk);
    }

    private static void appendPoolSubPages(StringBuilder sb2, PoolSubpage<?>[] poolSubpageArr) {
        for (int i10 = 0; i10 < poolSubpageArr.length; i10++) {
            PoolSubpage<?> poolSubpage = poolSubpageArr[i10];
            if (poolSubpage.next != poolSubpage) {
                sb2.append(StringUtil.NEWLINE);
                sb2.append(i10);
                sb2.append(": ");
                PoolSubpage poolSubpage2 = poolSubpage.next;
                do {
                    sb2.append(poolSubpage2);
                    poolSubpage2 = poolSubpage2.next;
                } while (poolSubpage2 != poolSubpage);
            }
        }
    }

    private void destroyPoolChunkLists(PoolChunkList<T>... poolChunkListArr) {
        for (PoolChunkList<T> poolChunkList : poolChunkListArr) {
            poolChunkList.destroy(this);
        }
    }

    private static void destroyPoolSubPages(PoolSubpage<?>[] poolSubpageArr) {
        for (PoolSubpage<?> poolSubpage : poolSubpageArr) {
            poolSubpage.destroy();
        }
    }

    private void incTinySmallAllocation(boolean z10) {
        if (z10) {
            this.allocationsTiny.increment();
        } else {
            this.allocationsSmall.increment();
        }
    }

    static boolean isTiny(int i10) {
        return (i10 & (-512)) == 0;
    }

    private PoolSubpage<T>[] newSubpagePoolArray(int i10) {
        return new PoolSubpage[i10];
    }

    private PoolSubpage<T> newSubpagePoolHead(int i10) {
        PoolSubpage<T> poolSubpage = new PoolSubpage<>(i10);
        poolSubpage.prev = poolSubpage;
        poolSubpage.next = poolSubpage;
        return poolSubpage;
    }

    private SizeClass sizeClass(int i10) {
        if (isTinyOrSmall(i10)) {
            return isTiny(i10) ? SizeClass.Tiny : SizeClass.Small;
        }
        return SizeClass.Normal;
    }

    static int smallIdx(int i10) {
        int i11 = i10 >>> 10;
        int i12 = 0;
        while (i11 != 0) {
            i11 >>>= 1;
            i12++;
        }
        return i12;
    }

    private static List<PoolSubpageMetric> subPageMetricList(PoolSubpage<?>[] poolSubpageArr) {
        ArrayList arrayList = new ArrayList();
        for (PoolSubpage<?> poolSubpage : poolSubpageArr) {
            PoolSubpage poolSubpage2 = poolSubpage.next;
            if (poolSubpage2 != poolSubpage) {
                do {
                    arrayList.add(poolSubpage2);
                    poolSubpage2 = poolSubpage2.next;
                } while (poolSubpage2 != poolSubpage);
            }
        }
        return arrayList;
    }

    static int tinyIdx(int i10) {
        return i10 >>> 4;
    }

    int alignCapacity(int i10) {
        int i11 = this.directMemoryCacheAlignmentMask & i10;
        return i11 == 0 ? i10 : (i10 + this.directMemoryCacheAlignment) - i11;
    }

    PooledByteBuf<T> allocate(PoolThreadCache poolThreadCache, int i10, int i11) {
        PooledByteBuf<T> pooledByteBufNewByteBuf = newByteBuf(i11);
        allocate(poolThreadCache, pooledByteBufNewByteBuf, i10);
        return pooledByteBufNewByteBuf;
    }

    @Override // io.netty.buffer.PoolArenaMetric
    public List<PoolChunkListMetric> chunkLists() {
        return this.chunkListMetrics;
    }

    protected abstract void destroyChunk(PoolChunk<T> poolChunk);

    protected final void finalize() throws Throwable {
        try {
            super.finalize();
            destroyPoolSubPages(this.smallSubpagePools);
            destroyPoolSubPages(this.tinySubpagePools);
            destroyPoolChunkLists(this.qInit, this.q000, this.q025, this.q050, this.q075, this.q100);
        } catch (Throwable th) {
            destroyPoolSubPages(this.smallSubpagePools);
            destroyPoolSubPages(this.tinySubpagePools);
            destroyPoolChunkLists(this.qInit, this.q000, this.q025, this.q050, this.q075, this.q100);
            throw th;
        }
    }

    PoolSubpage<T> findSubpagePoolHead(int i10) {
        PoolSubpage<T>[] poolSubpageArr;
        int i11;
        if (isTiny(i10)) {
            i11 = i10 >>> 4;
            poolSubpageArr = this.tinySubpagePools;
        } else {
            int i12 = i10 >>> 10;
            int i13 = 0;
            while (i12 != 0) {
                i12 >>>= 1;
                i13++;
            }
            int i14 = i13;
            poolSubpageArr = this.smallSubpagePools;
            i11 = i14;
        }
        return poolSubpageArr[i11];
    }

    void free(PoolChunk<T> poolChunk, ByteBuffer byteBuffer, long j10, int i10, PoolThreadCache poolThreadCache) {
        if (poolChunk.unpooled) {
            int iChunkSize = poolChunk.chunkSize();
            destroyChunk(poolChunk);
            this.activeBytesHuge.add(-iChunkSize);
            this.deallocationsHuge.increment();
            return;
        }
        SizeClass sizeClass = sizeClass(i10);
        if (poolThreadCache == null || !poolThreadCache.add(this, poolChunk, byteBuffer, j10, i10, sizeClass)) {
            freeChunk(poolChunk, j10, sizeClass, byteBuffer, false);
        }
    }

    void freeChunk(PoolChunk<T> poolChunk, long j10, SizeClass sizeClass, ByteBuffer byteBuffer, boolean z10) {
        boolean z11;
        synchronized (this) {
            z11 = true;
            if (!z10) {
                int i10 = AnonymousClass1.$SwitchMap$io$netty$buffer$PoolArena$SizeClass[sizeClass.ordinal()];
                if (i10 == 1) {
                    this.deallocationsNormal++;
                } else if (i10 == 2) {
                    this.deallocationsSmall++;
                } else {
                    if (i10 != 3) {
                        throw new Error();
                    }
                    this.deallocationsTiny++;
                }
            }
            if (poolChunk.parent.free(poolChunk, j10, byteBuffer)) {
                z11 = false;
            }
        }
        if (z11) {
            destroyChunk(poolChunk);
        }
    }

    abstract boolean isDirect();

    boolean isTinyOrSmall(int i10) {
        return (i10 & this.subpageOverflowMask) == 0;
    }

    protected abstract void memoryCopy(T t10, int i10, PooledByteBuf<T> pooledByteBuf, int i11);

    protected abstract PooledByteBuf<T> newByteBuf(int i10);

    protected abstract PoolChunk<T> newChunk(int i10, int i11, int i12, int i13);

    protected abstract PoolChunk<T> newUnpooledChunk(int i10);

    int normalizeCapacity(int i10) {
        ObjectUtil.checkPositiveOrZero(i10, "reqCapacity");
        if (i10 >= this.chunkSize) {
            return this.directMemoryCacheAlignment == 0 ? i10 : alignCapacity(i10);
        }
        if (isTiny(i10)) {
            if (this.directMemoryCacheAlignment > 0) {
                return alignCapacity(i10);
            }
            return (i10 & 15) == 0 ? i10 : (i10 & (-16)) + 16;
        }
        int i11 = i10 - 1;
        int i12 = i11 | (i11 >>> 1);
        int i13 = i12 | (i12 >>> 2);
        int i14 = i13 | (i13 >>> 4);
        int i15 = i14 | (i14 >>> 8);
        int i16 = (i15 | (i15 >>> 16)) + 1;
        return i16 < 0 ? i16 >>> 1 : i16;
    }

    @Override // io.netty.buffer.PoolArenaMetric
    public long numActiveAllocations() {
        long j10;
        long jValue = ((this.allocationsTiny.value() + this.allocationsSmall.value()) + this.allocationsHuge.value()) - this.deallocationsHuge.value();
        synchronized (this) {
            j10 = jValue + (this.allocationsNormal - ((this.deallocationsTiny + this.deallocationsSmall) + this.deallocationsNormal));
        }
        return Math.max(j10, 0L);
    }

    @Override // io.netty.buffer.PoolArenaMetric
    public long numActiveBytes() {
        long jValue = this.activeBytesHuge.value();
        synchronized (this) {
            for (int i10 = 0; i10 < this.chunkListMetrics.size(); i10++) {
                Iterator<PoolChunkMetric> it2 = this.chunkListMetrics.get(i10).iterator();
                while (it2.hasNext()) {
                    jValue += (long) it2.next().chunkSize();
                }
            }
        }
        return Math.max(0L, jValue);
    }

    @Override // io.netty.buffer.PoolArenaMetric
    public long numActiveHugeAllocations() {
        return Math.max(numHugeAllocations() - numHugeDeallocations(), 0L);
    }

    @Override // io.netty.buffer.PoolArenaMetric
    public long numActiveNormalAllocations() {
        long j10;
        synchronized (this) {
            j10 = this.allocationsNormal - this.deallocationsNormal;
        }
        return Math.max(j10, 0L);
    }

    @Override // io.netty.buffer.PoolArenaMetric
    public long numActiveSmallAllocations() {
        return Math.max(numSmallAllocations() - numSmallDeallocations(), 0L);
    }

    @Override // io.netty.buffer.PoolArenaMetric
    public long numActiveTinyAllocations() {
        return Math.max(numTinyAllocations() - numTinyDeallocations(), 0L);
    }

    @Override // io.netty.buffer.PoolArenaMetric
    public long numAllocations() {
        long j10;
        synchronized (this) {
            j10 = this.allocationsNormal;
        }
        return this.allocationsTiny.value() + this.allocationsSmall.value() + j10 + this.allocationsHuge.value();
    }

    @Override // io.netty.buffer.PoolArenaMetric
    public int numChunkLists() {
        return this.chunkListMetrics.size();
    }

    @Override // io.netty.buffer.PoolArenaMetric
    public long numDeallocations() {
        long j10;
        synchronized (this) {
            j10 = this.deallocationsTiny + this.deallocationsSmall + this.deallocationsNormal;
        }
        return j10 + this.deallocationsHuge.value();
    }

    @Override // io.netty.buffer.PoolArenaMetric
    public long numHugeAllocations() {
        return this.allocationsHuge.value();
    }

    @Override // io.netty.buffer.PoolArenaMetric
    public long numHugeDeallocations() {
        return this.deallocationsHuge.value();
    }

    @Override // io.netty.buffer.PoolArenaMetric
    public synchronized long numNormalAllocations() {
        return this.allocationsNormal;
    }

    @Override // io.netty.buffer.PoolArenaMetric
    public synchronized long numNormalDeallocations() {
        return this.deallocationsNormal;
    }

    @Override // io.netty.buffer.PoolArenaMetric
    public long numSmallAllocations() {
        return this.allocationsSmall.value();
    }

    @Override // io.netty.buffer.PoolArenaMetric
    public synchronized long numSmallDeallocations() {
        return this.deallocationsSmall;
    }

    @Override // io.netty.buffer.PoolArenaMetric
    public int numSmallSubpages() {
        return this.smallSubpagePools.length;
    }

    @Override // io.netty.buffer.PoolArenaMetric
    public int numThreadCaches() {
        return this.numThreadCaches.get();
    }

    @Override // io.netty.buffer.PoolArenaMetric
    public long numTinyAllocations() {
        return this.allocationsTiny.value();
    }

    @Override // io.netty.buffer.PoolArenaMetric
    public synchronized long numTinyDeallocations() {
        return this.deallocationsTiny;
    }

    @Override // io.netty.buffer.PoolArenaMetric
    public int numTinySubpages() {
        return this.tinySubpagePools.length;
    }

    void reallocate(PooledByteBuf<T> pooledByteBuf, int i10, boolean z10) {
        int i11 = pooledByteBuf.length;
        if (i11 == i10) {
            return;
        }
        PoolChunk<T> poolChunk = pooledByteBuf.chunk;
        ByteBuffer byteBuffer = pooledByteBuf.tmpNioBuf;
        long j10 = pooledByteBuf.handle;
        T t10 = pooledByteBuf.memory;
        int i12 = pooledByteBuf.offset;
        int i13 = pooledByteBuf.maxLength;
        allocate(this.parent.threadCache(), pooledByteBuf, i10);
        if (i10 > i11) {
            i10 = i11;
        } else {
            pooledByteBuf.trimIndicesToCapacity(i10);
        }
        memoryCopy(t10, i12, pooledByteBuf, i10);
        if (z10) {
            free(poolChunk, byteBuffer, j10, i13, pooledByteBuf.cache);
        }
    }

    @Override // io.netty.buffer.PoolArenaMetric
    public List<PoolSubpageMetric> smallSubpages() {
        return subPageMetricList(this.smallSubpagePools);
    }

    @Override // io.netty.buffer.PoolArenaMetric
    public List<PoolSubpageMetric> tinySubpages() {
        return subPageMetricList(this.tinySubpagePools);
    }

    public synchronized String toString() {
        StringBuilder sb2;
        sb2 = new StringBuilder();
        sb2.append("Chunk(s) at 0~25%:");
        String str = StringUtil.NEWLINE;
        sb2.append(str);
        sb2.append(this.qInit);
        sb2.append(str);
        sb2.append("Chunk(s) at 0~50%:");
        sb2.append(str);
        sb2.append(this.q000);
        sb2.append(str);
        sb2.append("Chunk(s) at 25~75%:");
        sb2.append(str);
        sb2.append(this.q025);
        sb2.append(str);
        sb2.append("Chunk(s) at 50~100%:");
        sb2.append(str);
        sb2.append(this.q050);
        sb2.append(str);
        sb2.append("Chunk(s) at 75~100%:");
        sb2.append(str);
        sb2.append(this.q075);
        sb2.append(str);
        sb2.append("Chunk(s) at 100%:");
        sb2.append(str);
        sb2.append(this.q100);
        sb2.append(str);
        sb2.append("tiny subpages:");
        appendPoolSubPages(sb2, this.tinySubpagePools);
        sb2.append(str);
        sb2.append("small subpages:");
        appendPoolSubPages(sb2, this.smallSubpagePools);
        sb2.append(str);
        return sb2.toString();
    }

    private void allocate(PoolThreadCache poolThreadCache, PooledByteBuf<T> pooledByteBuf, int i10) {
        int iSmallIdx;
        PoolSubpage<T>[] poolSubpageArr;
        int iNormalizeCapacity = normalizeCapacity(i10);
        if (isTinyOrSmall(iNormalizeCapacity)) {
            boolean zIsTiny = isTiny(iNormalizeCapacity);
            if (zIsTiny) {
                if (poolThreadCache.allocateTiny(this, pooledByteBuf, i10, iNormalizeCapacity)) {
                    return;
                }
                iSmallIdx = tinyIdx(iNormalizeCapacity);
                poolSubpageArr = this.tinySubpagePools;
            } else {
                if (poolThreadCache.allocateSmall(this, pooledByteBuf, i10, iNormalizeCapacity)) {
                    return;
                }
                iSmallIdx = smallIdx(iNormalizeCapacity);
                poolSubpageArr = this.smallSubpagePools;
            }
            PoolSubpage<T> poolSubpage = poolSubpageArr[iSmallIdx];
            synchronized (poolSubpage) {
                PoolSubpage<T> poolSubpage2 = poolSubpage.next;
                if (poolSubpage2 != poolSubpage) {
                    poolSubpage2.chunk.initBufWithSubpage(pooledByteBuf, null, poolSubpage2.allocate(), i10);
                    incTinySmallAllocation(zIsTiny);
                    return;
                } else {
                    synchronized (this) {
                        allocateNormal(pooledByteBuf, i10, iNormalizeCapacity);
                    }
                    incTinySmallAllocation(zIsTiny);
                    return;
                }
            }
        }
        if (iNormalizeCapacity <= this.chunkSize) {
            if (poolThreadCache.allocateNormal(this, pooledByteBuf, i10, iNormalizeCapacity)) {
                return;
            }
            synchronized (this) {
                allocateNormal(pooledByteBuf, i10, iNormalizeCapacity);
                this.allocationsNormal++;
            }
            return;
        }
        allocateHuge(pooledByteBuf, i10);
    }
}
