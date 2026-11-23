package io.netty.buffer;

import io.netty.util.NettyRuntime;
import io.netty.util.concurrent.EventExecutor;
import io.netty.util.concurrent.FastThreadLocal;
import io.netty.util.concurrent.FastThreadLocalThread;
import io.netty.util.internal.ObjectUtil;
import io.netty.util.internal.PlatformDependent;
import io.netty.util.internal.StringUtil;
import io.netty.util.internal.SystemPropertyUtil;
import io.netty.util.internal.ThreadExecutorMap;
import io.netty.util.internal.logging.InternalLogger;
import io.netty.util.internal.logging.InternalLoggerFactory;
import java.nio.ByteBuffer;
import java.util.ArrayList;
import java.util.Collections;
import java.util.List;
import java.util.concurrent.TimeUnit;

/* JADX INFO: loaded from: classes8.dex */
public class PooledByteBufAllocator extends AbstractByteBufAllocator implements ByteBufAllocatorMetricProvider {
    static final /* synthetic */ boolean $assertionsDisabled = false;
    public static final PooledByteBufAllocator DEFAULT;
    private static final int DEFAULT_CACHE_TRIM_INTERVAL;
    private static final long DEFAULT_CACHE_TRIM_INTERVAL_MILLIS;
    private static final int DEFAULT_DIRECT_MEMORY_CACHE_ALIGNMENT;
    private static final int DEFAULT_MAX_CACHED_BUFFER_CAPACITY;
    static final int DEFAULT_MAX_CACHED_BYTEBUFFERS_PER_CHUNK;
    private static final int DEFAULT_MAX_ORDER;
    private static final int DEFAULT_NORMAL_CACHE_SIZE;
    private static final int DEFAULT_NUM_DIRECT_ARENA;
    private static final int DEFAULT_NUM_HEAP_ARENA;
    private static final int DEFAULT_PAGE_SIZE;
    private static final int DEFAULT_SMALL_CACHE_SIZE;
    private static final int DEFAULT_TINY_CACHE_SIZE;
    private static final boolean DEFAULT_USE_CACHE_FOR_ALL_THREADS;
    private static final int MAX_CHUNK_SIZE = 1073741824;
    private static final int MIN_PAGE_SIZE = 4096;
    private static final InternalLogger logger = InternalLoggerFactory.getInstance((Class<?>) PooledByteBufAllocator.class);
    private final int chunkSize;
    private final List<PoolArenaMetric> directArenaMetrics;
    private final PoolArena<ByteBuffer>[] directArenas;
    private final List<PoolArenaMetric> heapArenaMetrics;
    private final PoolArena<byte[]>[] heapArenas;
    private final PooledByteBufAllocatorMetric metric;
    private final int normalCacheSize;
    private final int smallCacheSize;
    private final PoolThreadLocalCache threadCache;
    private final int tinyCacheSize;
    private final Runnable trimTask;

    final class PoolThreadLocalCache extends FastThreadLocal<PoolThreadCache> {
        private final boolean useCacheForAllThreads;

        PoolThreadLocalCache(boolean z10) {
            this.useCacheForAllThreads = z10;
        }

        private <T> PoolArena<T> leastUsedArena(PoolArena<T>[] poolArenaArr) {
            if (poolArenaArr == null || poolArenaArr.length == 0) {
                return null;
            }
            PoolArena<T> poolArena = poolArenaArr[0];
            for (int i10 = 1; i10 < poolArenaArr.length; i10++) {
                PoolArena<T> poolArena2 = poolArenaArr[i10];
                if (poolArena2.numThreadCaches.get() < poolArena.numThreadCaches.get()) {
                    poolArena = poolArena2;
                }
            }
            return poolArena;
        }

        /* JADX INFO: Access modifiers changed from: protected */
        /* JADX WARN: Can't rename method to resolve collision */
        @Override // io.netty.util.concurrent.FastThreadLocal
        public synchronized PoolThreadCache initialValue() {
            EventExecutor eventExecutorCurrentExecutor;
            PoolArena poolArenaLeastUsedArena = leastUsedArena(PooledByteBufAllocator.this.heapArenas);
            PoolArena poolArenaLeastUsedArena2 = leastUsedArena(PooledByteBufAllocator.this.directArenas);
            Thread threadCurrentThread = Thread.currentThread();
            if (!this.useCacheForAllThreads && !(threadCurrentThread instanceof FastThreadLocalThread)) {
                return new PoolThreadCache(poolArenaLeastUsedArena, poolArenaLeastUsedArena2, 0, 0, 0, 0, 0);
            }
            PoolThreadCache poolThreadCache = new PoolThreadCache(poolArenaLeastUsedArena, poolArenaLeastUsedArena2, PooledByteBufAllocator.this.tinyCacheSize, PooledByteBufAllocator.this.smallCacheSize, PooledByteBufAllocator.this.normalCacheSize, PooledByteBufAllocator.DEFAULT_MAX_CACHED_BUFFER_CAPACITY, PooledByteBufAllocator.DEFAULT_CACHE_TRIM_INTERVAL);
            if (PooledByteBufAllocator.DEFAULT_CACHE_TRIM_INTERVAL_MILLIS > 0 && (eventExecutorCurrentExecutor = ThreadExecutorMap.currentExecutor()) != null) {
                eventExecutorCurrentExecutor.scheduleAtFixedRate(PooledByteBufAllocator.this.trimTask, PooledByteBufAllocator.DEFAULT_CACHE_TRIM_INTERVAL_MILLIS, PooledByteBufAllocator.DEFAULT_CACHE_TRIM_INTERVAL_MILLIS, TimeUnit.MILLISECONDS);
            }
            return poolThreadCache;
        }

        /* JADX INFO: Access modifiers changed from: protected */
        @Override // io.netty.util.concurrent.FastThreadLocal
        public void onRemoval(PoolThreadCache poolThreadCache) {
            poolThreadCache.free(false);
        }
    }

    static {
        Object obj;
        int i10 = SystemPropertyUtil.getInt("io.netty.allocator.pageSize", 8192);
        Object obj2 = null;
        try {
            validateAndCalculatePageShifts(i10);
            obj = null;
        } catch (Throwable th) {
            obj = th;
            i10 = 8192;
        }
        DEFAULT_PAGE_SIZE = i10;
        int i11 = 11;
        int i12 = SystemPropertyUtil.getInt("io.netty.allocator.maxOrder", 11);
        try {
            validateAndCalculateChunkSize(i10, i12);
            i11 = i12;
        } catch (Throwable th2) {
            obj2 = th2;
        }
        DEFAULT_MAX_ORDER = i11;
        Runtime runtime = Runtime.getRuntime();
        int iAvailableProcessors = NettyRuntime.availableProcessors() * 2;
        int i13 = DEFAULT_PAGE_SIZE;
        long j10 = iAvailableProcessors;
        long j11 = i13 << i11;
        int iMax = Math.max(0, SystemPropertyUtil.getInt("io.netty.allocator.numHeapArenas", (int) Math.min(j10, ((runtime.maxMemory() / j11) / 2) / 3)));
        DEFAULT_NUM_HEAP_ARENA = iMax;
        int iMax2 = Math.max(0, SystemPropertyUtil.getInt("io.netty.allocator.numDirectArenas", (int) Math.min(j10, ((PlatformDependent.maxDirectMemory() / j11) / 2) / 3)));
        DEFAULT_NUM_DIRECT_ARENA = iMax2;
        int i14 = SystemPropertyUtil.getInt("io.netty.allocator.tinyCacheSize", 512);
        DEFAULT_TINY_CACHE_SIZE = i14;
        int i15 = SystemPropertyUtil.getInt("io.netty.allocator.smallCacheSize", 256);
        DEFAULT_SMALL_CACHE_SIZE = i15;
        int i16 = SystemPropertyUtil.getInt("io.netty.allocator.normalCacheSize", 64);
        DEFAULT_NORMAL_CACHE_SIZE = i16;
        int i17 = SystemPropertyUtil.getInt("io.netty.allocator.maxCachedBufferCapacity", 32768);
        DEFAULT_MAX_CACHED_BUFFER_CAPACITY = i17;
        int i18 = SystemPropertyUtil.getInt("io.netty.allocator.cacheTrimInterval", 8192);
        DEFAULT_CACHE_TRIM_INTERVAL = i18;
        if (SystemPropertyUtil.contains("io.netty.allocation.cacheTrimIntervalMillis")) {
            logger.warn("-Dio.netty.allocation.cacheTrimIntervalMillis is deprecated, use -Dio.netty.allocator.cacheTrimIntervalMillis");
            if (SystemPropertyUtil.contains("io.netty.allocator.cacheTrimIntervalMillis")) {
                DEFAULT_CACHE_TRIM_INTERVAL_MILLIS = SystemPropertyUtil.getLong("io.netty.allocator.cacheTrimIntervalMillis", 0L);
            } else {
                DEFAULT_CACHE_TRIM_INTERVAL_MILLIS = SystemPropertyUtil.getLong("io.netty.allocation.cacheTrimIntervalMillis", 0L);
            }
        } else {
            DEFAULT_CACHE_TRIM_INTERVAL_MILLIS = SystemPropertyUtil.getLong("io.netty.allocator.cacheTrimIntervalMillis", 0L);
        }
        boolean z10 = SystemPropertyUtil.getBoolean("io.netty.allocator.useCacheForAllThreads", true);
        DEFAULT_USE_CACHE_FOR_ALL_THREADS = z10;
        DEFAULT_DIRECT_MEMORY_CACHE_ALIGNMENT = SystemPropertyUtil.getInt("io.netty.allocator.directMemoryCacheAlignment", 0);
        int i19 = SystemPropertyUtil.getInt("io.netty.allocator.maxCachedByteBuffersPerChunk", 1023);
        DEFAULT_MAX_CACHED_BYTEBUFFERS_PER_CHUNK = i19;
        InternalLogger internalLogger = logger;
        if (internalLogger.isDebugEnabled()) {
            internalLogger.debug("-Dio.netty.allocator.numHeapArenas: {}", Integer.valueOf(iMax));
            internalLogger.debug("-Dio.netty.allocator.numDirectArenas: {}", Integer.valueOf(iMax2));
            if (obj == null) {
                internalLogger.debug("-Dio.netty.allocator.pageSize: {}", Integer.valueOf(i13));
            } else {
                internalLogger.debug("-Dio.netty.allocator.pageSize: {}", Integer.valueOf(i13), obj);
            }
            if (obj2 == null) {
                internalLogger.debug("-Dio.netty.allocator.maxOrder: {}", Integer.valueOf(i11));
            } else {
                internalLogger.debug("-Dio.netty.allocator.maxOrder: {}", Integer.valueOf(i11), obj2);
            }
            internalLogger.debug("-Dio.netty.allocator.chunkSize: {}", Integer.valueOf(i13 << i11));
            internalLogger.debug("-Dio.netty.allocator.tinyCacheSize: {}", Integer.valueOf(i14));
            internalLogger.debug("-Dio.netty.allocator.smallCacheSize: {}", Integer.valueOf(i15));
            internalLogger.debug("-Dio.netty.allocator.normalCacheSize: {}", Integer.valueOf(i16));
            internalLogger.debug("-Dio.netty.allocator.maxCachedBufferCapacity: {}", Integer.valueOf(i17));
            internalLogger.debug("-Dio.netty.allocator.cacheTrimInterval: {}", Integer.valueOf(i18));
            internalLogger.debug("-Dio.netty.allocator.cacheTrimIntervalMillis: {}", Long.valueOf(DEFAULT_CACHE_TRIM_INTERVAL_MILLIS));
            internalLogger.debug("-Dio.netty.allocator.useCacheForAllThreads: {}", Boolean.valueOf(z10));
            internalLogger.debug("-Dio.netty.allocator.maxCachedByteBuffersPerChunk: {}", Integer.valueOf(i19));
        }
        DEFAULT = new PooledByteBufAllocator(PlatformDependent.directBufferPreferred());
    }

    public PooledByteBufAllocator() {
        this(false);
    }

    public static int defaultMaxOrder() {
        return DEFAULT_MAX_ORDER;
    }

    public static int defaultNormalCacheSize() {
        return DEFAULT_NORMAL_CACHE_SIZE;
    }

    public static int defaultNumDirectArena() {
        return DEFAULT_NUM_DIRECT_ARENA;
    }

    public static int defaultNumHeapArena() {
        return DEFAULT_NUM_HEAP_ARENA;
    }

    public static int defaultPageSize() {
        return DEFAULT_PAGE_SIZE;
    }

    public static boolean defaultPreferDirect() {
        return PlatformDependent.directBufferPreferred();
    }

    public static int defaultSmallCacheSize() {
        return DEFAULT_SMALL_CACHE_SIZE;
    }

    public static int defaultTinyCacheSize() {
        return DEFAULT_TINY_CACHE_SIZE;
    }

    public static boolean defaultUseCacheForAllThreads() {
        return DEFAULT_USE_CACHE_FOR_ALL_THREADS;
    }

    public static boolean isDirectMemoryCacheAlignmentSupported() {
        return PlatformDependent.hasUnsafe();
    }

    private static <T> PoolArena<T>[] newArenaArray(int i10) {
        return new PoolArena[i10];
    }

    private static long usedMemory(PoolArena<?>[] poolArenaArr) {
        if (poolArenaArr == null) {
            return -1L;
        }
        long jNumActiveBytes = 0;
        for (PoolArena<?> poolArena : poolArenaArr) {
            jNumActiveBytes += poolArena.numActiveBytes();
            if (jNumActiveBytes < 0) {
                return Long.MAX_VALUE;
            }
        }
        return jNumActiveBytes;
    }

    private static int validateAndCalculateChunkSize(int i10, int i11) {
        if (i11 > 14) {
            throw new IllegalArgumentException("maxOrder: " + i11 + " (expected: 0-14)");
        }
        int i12 = i10;
        for (int i13 = i11; i13 > 0; i13--) {
            if (i12 > 536870912) {
                throw new IllegalArgumentException(String.format("pageSize (%d) << maxOrder (%d) must not exceed %d", Integer.valueOf(i10), Integer.valueOf(i11), 1073741824));
            }
            i12 <<= 1;
        }
        return i12;
    }

    private static int validateAndCalculatePageShifts(int i10) {
        if (i10 >= 4096) {
            if (((i10 - 1) & i10) == 0) {
                return 31 - Integer.numberOfLeadingZeros(i10);
            }
            throw new IllegalArgumentException("pageSize: " + i10 + " (expected: power of 2)");
        }
        throw new IllegalArgumentException("pageSize: " + i10 + " (expected: 4096)");
    }

    @Deprecated
    public final int chunkSize() {
        return this.chunkSize;
    }

    @Deprecated
    public List<PoolArenaMetric> directArenas() {
        return this.directArenaMetrics;
    }

    public String dumpStats() {
        PoolArena<byte[]>[] poolArenaArr = this.heapArenas;
        int length = poolArenaArr == null ? 0 : poolArenaArr.length;
        StringBuilder sb2 = new StringBuilder(512);
        sb2.append(length);
        sb2.append(" heap arena(s):");
        sb2.append(StringUtil.NEWLINE);
        if (length > 0) {
            for (PoolArena<byte[]> poolArena : this.heapArenas) {
                sb2.append(poolArena);
            }
        }
        PoolArena<ByteBuffer>[] poolArenaArr2 = this.directArenas;
        int length2 = poolArenaArr2 == null ? 0 : poolArenaArr2.length;
        sb2.append(length2);
        sb2.append(" direct arena(s):");
        sb2.append(StringUtil.NEWLINE);
        if (length2 > 0) {
            for (PoolArena<ByteBuffer> poolArena2 : this.directArenas) {
                sb2.append(poolArena2);
            }
        }
        return sb2.toString();
    }

    @Deprecated
    public void freeThreadLocalCache() {
        this.threadCache.remove();
    }

    @Deprecated
    public boolean hasThreadLocalCache() {
        return this.threadCache.isSet();
    }

    @Deprecated
    public List<PoolArenaMetric> heapArenas() {
        return this.heapArenaMetrics;
    }

    @Override // io.netty.buffer.ByteBufAllocator
    public boolean isDirectBufferPooled() {
        return this.directArenas != null;
    }

    @Override // io.netty.buffer.AbstractByteBufAllocator
    protected ByteBuf newDirectBuffer(int i10, int i11) {
        ByteBuf byteBufNewUnsafeDirectByteBuf;
        PoolThreadCache poolThreadCache = this.threadCache.get();
        PoolArena<ByteBuffer> poolArena = poolThreadCache.directArena;
        if (poolArena != null) {
            byteBufNewUnsafeDirectByteBuf = poolArena.allocate(poolThreadCache, i10, i11);
        } else {
            byteBufNewUnsafeDirectByteBuf = PlatformDependent.hasUnsafe() ? UnsafeByteBufUtil.newUnsafeDirectByteBuf(this, i10, i11) : new UnpooledDirectByteBuf(this, i10, i11);
        }
        return AbstractByteBufAllocator.toLeakAwareBuffer(byteBufNewUnsafeDirectByteBuf);
    }

    @Override // io.netty.buffer.AbstractByteBufAllocator
    protected ByteBuf newHeapBuffer(int i10, int i11) {
        ByteBuf unpooledUnsafeHeapByteBuf;
        PoolThreadCache poolThreadCache = this.threadCache.get();
        PoolArena<byte[]> poolArena = poolThreadCache.heapArena;
        if (poolArena != null) {
            unpooledUnsafeHeapByteBuf = poolArena.allocate(poolThreadCache, i10, i11);
        } else {
            unpooledUnsafeHeapByteBuf = PlatformDependent.hasUnsafe() ? new UnpooledUnsafeHeapByteBuf(this, i10, i11) : new UnpooledHeapByteBuf(this, i10, i11);
        }
        return AbstractByteBufAllocator.toLeakAwareBuffer(unpooledUnsafeHeapByteBuf);
    }

    @Deprecated
    public int normalCacheSize() {
        return this.normalCacheSize;
    }

    @Deprecated
    public int numDirectArenas() {
        return this.directArenaMetrics.size();
    }

    @Deprecated
    public int numHeapArenas() {
        return this.heapArenaMetrics.size();
    }

    @Deprecated
    public int numThreadLocalCaches() {
        PoolArena[] poolArenaArr = this.heapArenas;
        if (poolArenaArr == null) {
            poolArenaArr = this.directArenas;
        }
        if (poolArenaArr == null) {
            return 0;
        }
        int i10 = 0;
        for (PoolArena poolArena : poolArenaArr) {
            i10 += poolArena.numThreadCaches.get();
        }
        return i10;
    }

    @Deprecated
    public int smallCacheSize() {
        return this.smallCacheSize;
    }

    final PoolThreadCache threadCache() {
        return this.threadCache.get();
    }

    @Deprecated
    public int tinyCacheSize() {
        return this.tinyCacheSize;
    }

    public boolean trimCurrentThreadCache() {
        PoolThreadCache ifExists = this.threadCache.getIfExists();
        if (ifExists == null) {
            return false;
        }
        ifExists.trim();
        return true;
    }

    final long usedDirectMemory() {
        return usedMemory(this.directArenas);
    }

    final long usedHeapMemory() {
        return usedMemory(this.heapArenas);
    }

    public PooledByteBufAllocator(boolean z10) {
        this(z10, DEFAULT_NUM_HEAP_ARENA, DEFAULT_NUM_DIRECT_ARENA, DEFAULT_PAGE_SIZE, DEFAULT_MAX_ORDER);
    }

    @Override // io.netty.buffer.ByteBufAllocatorMetricProvider
    public PooledByteBufAllocatorMetric metric() {
        return this.metric;
    }

    public PooledByteBufAllocator(int i10, int i11, int i12, int i13) {
        this(false, i10, i11, i12, i13);
    }

    @Deprecated
    public PooledByteBufAllocator(boolean z10, int i10, int i11, int i12, int i13) {
        this(z10, i10, i11, i12, i13, DEFAULT_TINY_CACHE_SIZE, DEFAULT_SMALL_CACHE_SIZE, DEFAULT_NORMAL_CACHE_SIZE);
    }

    @Deprecated
    public PooledByteBufAllocator(boolean z10, int i10, int i11, int i12, int i13, int i14, int i15, int i16) {
        this(z10, i10, i11, i12, i13, i14, i15, i16, DEFAULT_USE_CACHE_FOR_ALL_THREADS, DEFAULT_DIRECT_MEMORY_CACHE_ALIGNMENT);
    }

    public PooledByteBufAllocator(boolean z10, int i10, int i11, int i12, int i13, int i14, int i15, int i16, boolean z11) {
        this(z10, i10, i11, i12, i13, i14, i15, i16, z11, DEFAULT_DIRECT_MEMORY_CACHE_ALIGNMENT);
    }

    public PooledByteBufAllocator(boolean z10, int i10, int i11, int i12, int i13, int i14, int i15, int i16, boolean z11, int i17) {
        super(z10);
        this.trimTask = new Runnable() { // from class: io.netty.buffer.PooledByteBufAllocator.1
            @Override // java.lang.Runnable
            public void run() {
                PooledByteBufAllocator.this.trimCurrentThreadCache();
            }
        };
        this.threadCache = new PoolThreadLocalCache(z11);
        this.tinyCacheSize = i14;
        this.smallCacheSize = i15;
        this.normalCacheSize = i16;
        this.chunkSize = validateAndCalculateChunkSize(i12, i13);
        ObjectUtil.checkPositiveOrZero(i10, "nHeapArena");
        ObjectUtil.checkPositiveOrZero(i11, "nDirectArena");
        ObjectUtil.checkPositiveOrZero(i17, "directMemoryCacheAlignment");
        if (i17 > 0 && !isDirectMemoryCacheAlignmentSupported()) {
            throw new IllegalArgumentException("directMemoryCacheAlignment is not supported");
        }
        if (((-i17) & i17) == i17) {
            int iValidateAndCalculatePageShifts = validateAndCalculatePageShifts(i12);
            if (i10 > 0) {
                PoolArena<byte[]>[] poolArenaArrNewArenaArray = newArenaArray(i10);
                this.heapArenas = poolArenaArrNewArenaArray;
                ArrayList arrayList = new ArrayList(poolArenaArrNewArenaArray.length);
                for (int i18 = 0; i18 < this.heapArenas.length; i18++) {
                    PoolArena.HeapArena heapArena = new PoolArena.HeapArena(this, i12, i13, iValidateAndCalculatePageShifts, this.chunkSize, i17);
                    this.heapArenas[i18] = heapArena;
                    arrayList.add(heapArena);
                }
                this.heapArenaMetrics = Collections.unmodifiableList(arrayList);
            } else {
                this.heapArenas = null;
                this.heapArenaMetrics = Collections.emptyList();
            }
            if (i11 > 0) {
                PoolArena<ByteBuffer>[] poolArenaArrNewArenaArray2 = newArenaArray(i11);
                this.directArenas = poolArenaArrNewArenaArray2;
                ArrayList arrayList2 = new ArrayList(poolArenaArrNewArenaArray2.length);
                for (int i19 = 0; i19 < this.directArenas.length; i19++) {
                    PoolArena.DirectArena directArena = new PoolArena.DirectArena(this, i12, i13, iValidateAndCalculatePageShifts, this.chunkSize, i17);
                    this.directArenas[i19] = directArena;
                    arrayList2.add(directArena);
                }
                this.directArenaMetrics = Collections.unmodifiableList(arrayList2);
            } else {
                this.directArenas = null;
                this.directArenaMetrics = Collections.emptyList();
            }
            this.metric = new PooledByteBufAllocatorMetric(this);
            return;
        }
        throw new IllegalArgumentException("directMemoryCacheAlignment: " + i17 + " (expected: power of two)");
    }
}
