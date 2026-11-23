package io.netty.buffer;

import io.netty.util.internal.MathUtil;
import io.netty.util.internal.ObjectPool;
import io.netty.util.internal.ObjectUtil;
import io.netty.util.internal.PlatformDependent;
import io.netty.util.internal.logging.InternalLogger;
import io.netty.util.internal.logging.InternalLoggerFactory;
import java.nio.ByteBuffer;
import java.util.Queue;
import java.util.concurrent.atomic.AtomicBoolean;

/* JADX INFO: loaded from: classes8.dex */
final class PoolThreadCache {
    private static final InternalLogger logger = InternalLoggerFactory.getInstance((Class<?>) PoolThreadCache.class);
    private int allocations;
    final PoolArena<ByteBuffer> directArena;
    private final int freeSweepAllocationThreshold;
    private final AtomicBoolean freed = new AtomicBoolean();
    final PoolArena<byte[]> heapArena;
    private final MemoryRegionCache<ByteBuffer>[] normalDirectCaches;
    private final MemoryRegionCache<byte[]>[] normalHeapCaches;
    private final int numShiftsNormalDirect;
    private final int numShiftsNormalHeap;
    private final MemoryRegionCache<ByteBuffer>[] smallSubPageDirectCaches;
    private final MemoryRegionCache<byte[]>[] smallSubPageHeapCaches;
    private final MemoryRegionCache<ByteBuffer>[] tinySubPageDirectCaches;
    private final MemoryRegionCache<byte[]>[] tinySubPageHeapCaches;

    /* JADX INFO: renamed from: io.netty.buffer.PoolThreadCache$1, reason: invalid class name */
    static /* synthetic */ class AnonymousClass1 {
        static final /* synthetic */ int[] $SwitchMap$io$netty$buffer$PoolArena$SizeClass;

        static {
            int[] iArr = new int[PoolArena.SizeClass.values().length];
            $SwitchMap$io$netty$buffer$PoolArena$SizeClass = iArr;
            try {
                iArr[PoolArena.SizeClass.Normal.ordinal()] = 1;
            } catch (NoSuchFieldError unused) {
            }
            try {
                $SwitchMap$io$netty$buffer$PoolArena$SizeClass[PoolArena.SizeClass.Small.ordinal()] = 2;
            } catch (NoSuchFieldError unused2) {
            }
            try {
                $SwitchMap$io$netty$buffer$PoolArena$SizeClass[PoolArena.SizeClass.Tiny.ordinal()] = 3;
            } catch (NoSuchFieldError unused3) {
            }
        }
    }

    private static abstract class MemoryRegionCache<T> {
        private static final ObjectPool<Entry> RECYCLER = ObjectPool.newPool(new ObjectPool.ObjectCreator<Entry>() { // from class: io.netty.buffer.PoolThreadCache.MemoryRegionCache.1
            /* JADX WARN: Can't rename method to resolve collision */
            @Override // io.netty.util.internal.ObjectPool.ObjectCreator
            public Entry newObject(ObjectPool.Handle<Entry> handle) {
                return new Entry(handle);
            }
        });
        private int allocations;
        private final Queue<Entry<T>> queue;
        private final int size;
        private final PoolArena.SizeClass sizeClass;

        static final class Entry<T> {
            PoolChunk<T> chunk;
            long handle = -1;
            ByteBuffer nioBuffer;
            final ObjectPool.Handle<Entry<?>> recyclerHandle;

            Entry(ObjectPool.Handle<Entry<?>> handle) {
                this.recyclerHandle = handle;
            }

            void recycle() {
                this.chunk = null;
                this.nioBuffer = null;
                this.handle = -1L;
                this.recyclerHandle.recycle(this);
            }
        }

        MemoryRegionCache(int i10, PoolArena.SizeClass sizeClass) {
            int iSafeFindNextPositivePowerOfTwo = MathUtil.safeFindNextPositivePowerOfTwo(i10);
            this.size = iSafeFindNextPositivePowerOfTwo;
            this.queue = PlatformDependent.newFixedMpscQueue(iSafeFindNextPositivePowerOfTwo);
            this.sizeClass = sizeClass;
        }

        private void freeEntry(Entry entry, boolean z10) {
            PoolChunk<T> poolChunk = entry.chunk;
            long j10 = entry.handle;
            ByteBuffer byteBuffer = entry.nioBuffer;
            if (!z10) {
                entry.recycle();
            }
            poolChunk.arena.freeChunk(poolChunk, j10, this.sizeClass, byteBuffer, z10);
        }

        /* JADX WARN: Multi-variable type inference failed */
        private static Entry newEntry(PoolChunk<?> poolChunk, ByteBuffer byteBuffer, long j10) {
            Entry entry = RECYCLER.get();
            entry.chunk = poolChunk;
            entry.nioBuffer = byteBuffer;
            entry.handle = j10;
            return entry;
        }

        public final boolean add(PoolChunk<T> poolChunk, ByteBuffer byteBuffer, long j10) {
            Entry<T> entryNewEntry = newEntry(poolChunk, byteBuffer, j10);
            boolean zOffer = this.queue.offer(entryNewEntry);
            if (!zOffer) {
                entryNewEntry.recycle();
            }
            return zOffer;
        }

        public final boolean allocate(PooledByteBuf<T> pooledByteBuf, int i10) {
            Entry<T> entryPoll = this.queue.poll();
            if (entryPoll == null) {
                return false;
            }
            initBuf(entryPoll.chunk, entryPoll.nioBuffer, entryPoll.handle, pooledByteBuf, i10);
            entryPoll.recycle();
            this.allocations++;
            return true;
        }

        public final int free(boolean z10) {
            return free(Integer.MAX_VALUE, z10);
        }

        protected abstract void initBuf(PoolChunk<T> poolChunk, ByteBuffer byteBuffer, long j10, PooledByteBuf<T> pooledByteBuf, int i10);

        public final void trim() {
            int i10 = this.size - this.allocations;
            this.allocations = 0;
            if (i10 > 0) {
                free(i10, false);
            }
        }

        private int free(int i10, boolean z10) {
            int i11 = 0;
            while (i11 < i10) {
                Entry<T> entryPoll = this.queue.poll();
                if (entryPoll == null) {
                    break;
                }
                freeEntry(entryPoll, z10);
                i11++;
            }
            return i11;
        }
    }

    private static final class NormalMemoryRegionCache<T> extends MemoryRegionCache<T> {
        NormalMemoryRegionCache(int i10) {
            super(i10, PoolArena.SizeClass.Normal);
        }

        @Override // io.netty.buffer.PoolThreadCache.MemoryRegionCache
        protected void initBuf(PoolChunk<T> poolChunk, ByteBuffer byteBuffer, long j10, PooledByteBuf<T> pooledByteBuf, int i10) {
            poolChunk.initBuf(pooledByteBuf, byteBuffer, j10, i10);
        }
    }

    private static final class SubPageMemoryRegionCache<T> extends MemoryRegionCache<T> {
        SubPageMemoryRegionCache(int i10, PoolArena.SizeClass sizeClass) {
            super(i10, sizeClass);
        }

        @Override // io.netty.buffer.PoolThreadCache.MemoryRegionCache
        protected void initBuf(PoolChunk<T> poolChunk, ByteBuffer byteBuffer, long j10, PooledByteBuf<T> pooledByteBuf, int i10) {
            poolChunk.initBufWithSubpage(pooledByteBuf, byteBuffer, j10, i10);
        }
    }

    PoolThreadCache(PoolArena<byte[]> poolArena, PoolArena<ByteBuffer> poolArena2, int i10, int i11, int i12, int i13, int i14) {
        ObjectUtil.checkPositiveOrZero(i13, "maxCachedBufferCapacity");
        this.freeSweepAllocationThreshold = i14;
        this.heapArena = poolArena;
        this.directArena = poolArena2;
        if (poolArena2 != null) {
            this.tinySubPageDirectCaches = createSubPageCaches(i10, 32, PoolArena.SizeClass.Tiny);
            this.smallSubPageDirectCaches = createSubPageCaches(i11, poolArena2.numSmallSubpagePools, PoolArena.SizeClass.Small);
            this.numShiftsNormalDirect = log2(poolArena2.pageSize);
            this.normalDirectCaches = createNormalCaches(i12, i13, poolArena2);
            poolArena2.numThreadCaches.getAndIncrement();
        } else {
            this.tinySubPageDirectCaches = null;
            this.smallSubPageDirectCaches = null;
            this.normalDirectCaches = null;
            this.numShiftsNormalDirect = -1;
        }
        if (poolArena != null) {
            this.tinySubPageHeapCaches = createSubPageCaches(i10, 32, PoolArena.SizeClass.Tiny);
            this.smallSubPageHeapCaches = createSubPageCaches(i11, poolArena.numSmallSubpagePools, PoolArena.SizeClass.Small);
            this.numShiftsNormalHeap = log2(poolArena.pageSize);
            this.normalHeapCaches = createNormalCaches(i12, i13, poolArena);
            poolArena.numThreadCaches.getAndIncrement();
        } else {
            this.tinySubPageHeapCaches = null;
            this.smallSubPageHeapCaches = null;
            this.normalHeapCaches = null;
            this.numShiftsNormalHeap = -1;
        }
        if (!(this.tinySubPageDirectCaches == null && this.smallSubPageDirectCaches == null && this.normalDirectCaches == null && this.tinySubPageHeapCaches == null && this.smallSubPageHeapCaches == null && this.normalHeapCaches == null) && i14 < 1) {
            throw new IllegalArgumentException("freeSweepAllocationThreshold: " + i14 + " (expected: > 0)");
        }
    }

    private boolean allocate(MemoryRegionCache<?> memoryRegionCache, PooledByteBuf pooledByteBuf, int i10) {
        if (memoryRegionCache == null) {
            return false;
        }
        boolean zAllocate = memoryRegionCache.allocate(pooledByteBuf, i10);
        int i11 = this.allocations + 1;
        this.allocations = i11;
        if (i11 >= this.freeSweepAllocationThreshold) {
            this.allocations = 0;
            trim();
        }
        return zAllocate;
    }

    private MemoryRegionCache<?> cache(PoolArena<?> poolArena, int i10, PoolArena.SizeClass sizeClass) {
        int i11 = AnonymousClass1.$SwitchMap$io$netty$buffer$PoolArena$SizeClass[sizeClass.ordinal()];
        if (i11 == 1) {
            return cacheForNormal(poolArena, i10);
        }
        if (i11 == 2) {
            return cacheForSmall(poolArena, i10);
        }
        if (i11 == 3) {
            return cacheForTiny(poolArena, i10);
        }
        throw new Error();
    }

    private MemoryRegionCache<?> cacheForNormal(PoolArena<?> poolArena, int i10) {
        if (poolArena.isDirect()) {
            return cache(this.normalDirectCaches, log2(i10 >> this.numShiftsNormalDirect));
        }
        return cache(this.normalHeapCaches, log2(i10 >> this.numShiftsNormalHeap));
    }

    private MemoryRegionCache<?> cacheForSmall(PoolArena<?> poolArena, int i10) {
        int iSmallIdx = PoolArena.smallIdx(i10);
        return poolArena.isDirect() ? cache(this.smallSubPageDirectCaches, iSmallIdx) : cache(this.smallSubPageHeapCaches, iSmallIdx);
    }

    private MemoryRegionCache<?> cacheForTiny(PoolArena<?> poolArena, int i10) {
        int iTinyIdx = PoolArena.tinyIdx(i10);
        return poolArena.isDirect() ? cache(this.tinySubPageDirectCaches, iTinyIdx) : cache(this.tinySubPageHeapCaches, iTinyIdx);
    }

    private static <T> MemoryRegionCache<T>[] createNormalCaches(int i10, int i11, PoolArena<T> poolArena) {
        if (i10 <= 0 || i11 <= 0) {
            return null;
        }
        int iMax = Math.max(1, log2(Math.min(poolArena.chunkSize, i11) / poolArena.pageSize) + 1);
        MemoryRegionCache<T>[] memoryRegionCacheArr = new MemoryRegionCache[iMax];
        for (int i12 = 0; i12 < iMax; i12++) {
            memoryRegionCacheArr[i12] = new NormalMemoryRegionCache(i10);
        }
        return memoryRegionCacheArr;
    }

    private static <T> MemoryRegionCache<T>[] createSubPageCaches(int i10, int i11, PoolArena.SizeClass sizeClass) {
        if (i10 <= 0 || i11 <= 0) {
            return null;
        }
        MemoryRegionCache<T>[] memoryRegionCacheArr = new MemoryRegionCache[i11];
        for (int i12 = 0; i12 < i11; i12++) {
            memoryRegionCacheArr[i12] = new SubPageMemoryRegionCache(i10, sizeClass);
        }
        return memoryRegionCacheArr;
    }

    private static int log2(int i10) {
        int i11 = 0;
        while (i10 > 1) {
            i10 >>= 1;
            i11++;
        }
        return i11;
    }

    boolean add(PoolArena<?> poolArena, PoolChunk poolChunk, ByteBuffer byteBuffer, long j10, int i10, PoolArena.SizeClass sizeClass) {
        MemoryRegionCache<?> memoryRegionCacheCache = cache(poolArena, i10, sizeClass);
        if (memoryRegionCacheCache == null) {
            return false;
        }
        return memoryRegionCacheCache.add(poolChunk, byteBuffer, j10);
    }

    boolean allocateNormal(PoolArena<?> poolArena, PooledByteBuf<?> pooledByteBuf, int i10, int i11) {
        return allocate(cacheForNormal(poolArena, i11), pooledByteBuf, i10);
    }

    boolean allocateSmall(PoolArena<?> poolArena, PooledByteBuf<?> pooledByteBuf, int i10, int i11) {
        return allocate(cacheForSmall(poolArena, i11), pooledByteBuf, i10);
    }

    boolean allocateTiny(PoolArena<?> poolArena, PooledByteBuf<?> pooledByteBuf, int i10, int i11) {
        return allocate(cacheForTiny(poolArena, i11), pooledByteBuf, i10);
    }

    protected void finalize() throws Throwable {
        try {
            super.finalize();
        } finally {
            free(true);
        }
    }

    void free(boolean z10) {
        if (this.freed.compareAndSet(false, true)) {
            int iFree = free(this.tinySubPageDirectCaches, z10) + free(this.smallSubPageDirectCaches, z10) + free(this.normalDirectCaches, z10) + free((MemoryRegionCache<?>[]) this.tinySubPageHeapCaches, z10) + free((MemoryRegionCache<?>[]) this.smallSubPageHeapCaches, z10) + free((MemoryRegionCache<?>[]) this.normalHeapCaches, z10);
            if (iFree > 0) {
                InternalLogger internalLogger = logger;
                if (internalLogger.isDebugEnabled()) {
                    internalLogger.debug("Freed {} thread-local buffer(s) from thread: {}", Integer.valueOf(iFree), Thread.currentThread().getName());
                }
            }
            PoolArena<ByteBuffer> poolArena = this.directArena;
            if (poolArena != null) {
                poolArena.numThreadCaches.getAndDecrement();
            }
            PoolArena<byte[]> poolArena2 = this.heapArena;
            if (poolArena2 != null) {
                poolArena2.numThreadCaches.getAndDecrement();
            }
        }
    }

    void trim() {
        trim(this.tinySubPageDirectCaches);
        trim(this.smallSubPageDirectCaches);
        trim(this.normalDirectCaches);
        trim((MemoryRegionCache<?>[]) this.tinySubPageHeapCaches);
        trim((MemoryRegionCache<?>[]) this.smallSubPageHeapCaches);
        trim((MemoryRegionCache<?>[]) this.normalHeapCaches);
    }

    private static <T> MemoryRegionCache<T> cache(MemoryRegionCache<T>[] memoryRegionCacheArr, int i10) {
        if (memoryRegionCacheArr == null || i10 > memoryRegionCacheArr.length - 1) {
            return null;
        }
        return memoryRegionCacheArr[i10];
    }

    private static void trim(MemoryRegionCache<?>[] memoryRegionCacheArr) {
        if (memoryRegionCacheArr == null) {
            return;
        }
        for (MemoryRegionCache<?> memoryRegionCache : memoryRegionCacheArr) {
            trim(memoryRegionCache);
        }
    }

    private static void trim(MemoryRegionCache<?> memoryRegionCache) {
        if (memoryRegionCache == null) {
            return;
        }
        memoryRegionCache.trim();
    }

    private static int free(MemoryRegionCache<?>[] memoryRegionCacheArr, boolean z10) {
        if (memoryRegionCacheArr == null) {
            return 0;
        }
        int iFree = 0;
        for (MemoryRegionCache<?> memoryRegionCache : memoryRegionCacheArr) {
            iFree += free(memoryRegionCache, z10);
        }
        return iFree;
    }

    private static int free(MemoryRegionCache<?> memoryRegionCache, boolean z10) {
        if (memoryRegionCache == null) {
            return 0;
        }
        return memoryRegionCache.free(z10);
    }
}
