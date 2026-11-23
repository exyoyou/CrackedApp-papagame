package io.netty.buffer;

import java.nio.ByteBuffer;
import java.util.ArrayDeque;
import java.util.Deque;
import kotlinx.coroutines.internal.z;

/* JADX INFO: loaded from: classes8.dex */
final class PoolChunk<T> implements PoolChunkMetric {
    static final /* synthetic */ boolean $assertionsDisabled = false;
    private static final int INTEGER_SIZE_MINUS_ONE = 31;
    final PoolArena<T> arena;
    private final Deque<ByteBuffer> cachedNioBuffers;
    private final int chunkSize;
    private final byte[] depthMap;
    private int freeBytes;
    private final int log2ChunkSize;
    private final int maxOrder;
    private final int maxSubpageAllocs;
    final T memory;
    private final byte[] memoryMap;
    PoolChunk<T> next;
    final int offset;
    private final int pageShifts;
    private final int pageSize;
    PoolChunkList<T> parent;
    PoolChunk<T> prev;
    private final int subpageOverflowMask;
    private final PoolSubpage<T>[] subpages;
    final boolean unpooled;
    private final byte unusable;

    PoolChunk(PoolArena<T> poolArena, T t10, int i10, int i11, int i12, int i13, int i14) {
        this.unpooled = false;
        this.arena = poolArena;
        this.memory = t10;
        this.pageSize = i10;
        this.pageShifts = i12;
        this.maxOrder = i11;
        this.chunkSize = i13;
        this.offset = i14;
        this.unusable = (byte) (i11 + 1);
        this.log2ChunkSize = log2(i13);
        this.subpageOverflowMask = ~(i10 - 1);
        this.freeBytes = i13;
        int i15 = 1 << i11;
        this.maxSubpageAllocs = i15;
        byte[] bArr = new byte[i15 << 1];
        this.memoryMap = bArr;
        this.depthMap = new byte[bArr.length];
        int i16 = 1;
        for (int i17 = 0; i17 <= i11; i17++) {
            int i18 = 1 << i17;
            for (int i19 = 0; i19 < i18; i19++) {
                byte b10 = (byte) i17;
                this.memoryMap[i16] = b10;
                this.depthMap[i16] = b10;
                i16++;
            }
        }
        this.subpages = newSubpageArray(this.maxSubpageAllocs);
        this.cachedNioBuffers = new ArrayDeque(8);
    }

    private int allocateNode(int i10) {
        int i11 = 1;
        int i12 = -(1 << i10);
        byte bValue = value(1);
        if (bValue > i10) {
            return -1;
        }
        while (true) {
            if (bValue >= i10 && (i11 & i12) != 0) {
                value(i11);
                setValue(i11, this.unusable);
                updateParentsAlloc(i11);
                return i11;
            }
            i11 <<= 1;
            bValue = value(i11);
            if (bValue > i10) {
                i11 ^= 1;
                bValue = value(i11);
            }
        }
    }

    private long allocateRun(int i10) {
        int iAllocateNode = allocateNode(this.maxOrder - (log2(i10) - this.pageShifts));
        if (iAllocateNode < 0) {
            return iAllocateNode;
        }
        this.freeBytes -= runLength(iAllocateNode);
        return iAllocateNode;
    }

    private long allocateSubpage(int i10) {
        PoolSubpage<T> poolSubpageFindSubpagePoolHead = this.arena.findSubpagePoolHead(i10);
        int i11 = this.maxOrder;
        synchronized (poolSubpageFindSubpagePoolHead) {
            int iAllocateNode = allocateNode(i11);
            if (iAllocateNode < 0) {
                return iAllocateNode;
            }
            PoolSubpage<T>[] poolSubpageArr = this.subpages;
            int i12 = this.pageSize;
            this.freeBytes -= i12;
            int iSubpageIdx = subpageIdx(iAllocateNode);
            PoolSubpage<T> poolSubpage = poolSubpageArr[iSubpageIdx];
            if (poolSubpage == null) {
                PoolSubpage<T> poolSubpage2 = new PoolSubpage<>(poolSubpageFindSubpagePoolHead, this, iAllocateNode, runOffset(iAllocateNode), i12, i10);
                poolSubpageArr[iSubpageIdx] = poolSubpage2;
                poolSubpage = poolSubpage2;
            } else {
                poolSubpage.init(poolSubpageFindSubpagePoolHead, i10);
            }
            return poolSubpage.allocate();
        }
    }

    private static int bitmapIdx(long j10) {
        return (int) (j10 >>> 32);
    }

    private byte depth(int i10) {
        return this.depthMap[i10];
    }

    private static int log2(int i10) {
        return 31 - Integer.numberOfLeadingZeros(i10);
    }

    private static int memoryMapIdx(long j10) {
        return (int) j10;
    }

    private PoolSubpage<T>[] newSubpageArray(int i10) {
        return new PoolSubpage[i10];
    }

    private int runLength(int i10) {
        return 1 << (this.log2ChunkSize - depth(i10));
    }

    private int runOffset(int i10) {
        return ((1 << depth(i10)) ^ i10) * runLength(i10);
    }

    private void setValue(int i10, byte b10) {
        this.memoryMap[i10] = b10;
    }

    private int subpageIdx(int i10) {
        return i10 ^ this.maxSubpageAllocs;
    }

    private void updateParentsAlloc(int i10) {
        while (i10 > 1) {
            int i11 = i10 >>> 1;
            byte bValue = value(i10);
            byte bValue2 = value(i10 ^ 1);
            if (bValue >= bValue2) {
                bValue = bValue2;
            }
            setValue(i11, bValue);
            i10 = i11;
        }
    }

    private void updateParentsFree(int i10) {
        int iDepth = depth(i10) + 1;
        while (i10 > 1) {
            int i11 = i10 >>> 1;
            byte bValue = value(i10);
            byte bValue2 = value(i10 ^ 1);
            iDepth--;
            if (bValue == iDepth && bValue2 == iDepth) {
                setValue(i11, (byte) (iDepth - 1));
            } else {
                if (bValue >= bValue2) {
                    bValue = bValue2;
                }
                setValue(i11, bValue);
            }
            i10 = i11;
        }
    }

    private byte value(int i10) {
        return this.memoryMap[i10];
    }

    boolean allocate(PooledByteBuf<T> pooledByteBuf, int i10, int i11) {
        long jAllocateRun = (this.subpageOverflowMask & i11) != 0 ? allocateRun(i11) : allocateSubpage(i11);
        if (jAllocateRun < 0) {
            return false;
        }
        Deque<ByteBuffer> deque = this.cachedNioBuffers;
        initBuf(pooledByteBuf, deque != null ? deque.pollLast() : null, jAllocateRun, i10);
        return true;
    }

    @Override // io.netty.buffer.PoolChunkMetric
    public int chunkSize() {
        return this.chunkSize;
    }

    void destroy() {
        this.arena.destroyChunk(this);
    }

    void free(long j10, ByteBuffer byteBuffer) {
        Deque<ByteBuffer> deque;
        int iMemoryMapIdx = memoryMapIdx(j10);
        int iBitmapIdx = bitmapIdx(j10);
        if (iBitmapIdx != 0) {
            PoolSubpage<T> poolSubpage = this.subpages[subpageIdx(iMemoryMapIdx)];
            PoolSubpage<T> poolSubpageFindSubpagePoolHead = this.arena.findSubpagePoolHead(poolSubpage.elemSize);
            synchronized (poolSubpageFindSubpagePoolHead) {
                if (poolSubpage.free(poolSubpageFindSubpagePoolHead, iBitmapIdx & z.f93551j)) {
                    return;
                }
            }
        }
        this.freeBytes += runLength(iMemoryMapIdx);
        setValue(iMemoryMapIdx, depth(iMemoryMapIdx));
        updateParentsFree(iMemoryMapIdx);
        if (byteBuffer == null || (deque = this.cachedNioBuffers) == null || deque.size() >= PooledByteBufAllocator.DEFAULT_MAX_CACHED_BYTEBUFFERS_PER_CHUNK) {
            return;
        }
        this.cachedNioBuffers.offer(byteBuffer);
    }

    @Override // io.netty.buffer.PoolChunkMetric
    public int freeBytes() {
        int i10;
        synchronized (this.arena) {
            i10 = this.freeBytes;
        }
        return i10;
    }

    void initBuf(PooledByteBuf<T> pooledByteBuf, ByteBuffer byteBuffer, long j10, int i10) {
        int iMemoryMapIdx = memoryMapIdx(j10);
        int iBitmapIdx = bitmapIdx(j10);
        if (iBitmapIdx != 0) {
            initBufWithSubpage(pooledByteBuf, byteBuffer, j10, iBitmapIdx, i10);
        } else {
            value(iMemoryMapIdx);
            pooledByteBuf.init(this, byteBuffer, j10, runOffset(iMemoryMapIdx) + this.offset, i10, runLength(iMemoryMapIdx), this.arena.parent.threadCache());
        }
    }

    void initBufWithSubpage(PooledByteBuf<T> pooledByteBuf, ByteBuffer byteBuffer, long j10, int i10) {
        initBufWithSubpage(pooledByteBuf, byteBuffer, j10, bitmapIdx(j10), i10);
    }

    public String toString() {
        int i10;
        synchronized (this.arena) {
            i10 = this.freeBytes;
        }
        return "Chunk(" + Integer.toHexString(System.identityHashCode(this)) + ": " + usage(i10) + "%, " + (this.chunkSize - i10) + '/' + this.chunkSize + ')';
    }

    @Override // io.netty.buffer.PoolChunkMetric
    public int usage() {
        int i10;
        synchronized (this.arena) {
            i10 = this.freeBytes;
        }
        return usage(i10);
    }

    private void initBufWithSubpage(PooledByteBuf<T> pooledByteBuf, ByteBuffer byteBuffer, long j10, int i10, int i11) {
        int iMemoryMapIdx = memoryMapIdx(j10);
        PoolSubpage<T> poolSubpage = this.subpages[subpageIdx(iMemoryMapIdx)];
        int iRunOffset = runOffset(iMemoryMapIdx);
        int i12 = poolSubpage.elemSize;
        pooledByteBuf.init(this, byteBuffer, j10, iRunOffset + ((1073741823 & i10) * i12) + this.offset, i11, i12, this.arena.parent.threadCache());
    }

    private int usage(int i10) {
        if (i10 == 0) {
            return 100;
        }
        int i11 = (int) ((((long) i10) * 100) / ((long) this.chunkSize));
        if (i11 == 0) {
            return 99;
        }
        return 100 - i11;
    }

    PoolChunk(PoolArena<T> poolArena, T t10, int i10, int i11) {
        this.unpooled = true;
        this.arena = poolArena;
        this.memory = t10;
        this.offset = i11;
        this.memoryMap = null;
        this.depthMap = null;
        this.subpages = null;
        this.subpageOverflowMask = 0;
        this.pageSize = 0;
        this.pageShifts = 0;
        this.maxOrder = 0;
        this.unusable = (byte) (1 + 0);
        this.chunkSize = i10;
        this.log2ChunkSize = log2(i10);
        this.maxSubpageAllocs = 0;
        this.cachedNioBuffers = null;
    }
}
