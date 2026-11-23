package io.netty.buffer;

/* JADX INFO: loaded from: classes8.dex */
final class PoolSubpage<T> implements PoolSubpageMetric {
    static final /* synthetic */ boolean $assertionsDisabled = false;
    private final long[] bitmap;
    private int bitmapLength;
    final PoolChunk<T> chunk;
    boolean doNotDestroy;
    int elemSize;
    private int maxNumElems;
    private final int memoryMapIdx;
    PoolSubpage<T> next;
    private int nextAvail;
    private int numAvail;
    private final int pageSize;
    PoolSubpage<T> prev;
    private final int runOffset;

    PoolSubpage(int i10) {
        this.chunk = null;
        this.memoryMapIdx = -1;
        this.runOffset = -1;
        this.elemSize = -1;
        this.pageSize = i10;
        this.bitmap = null;
    }

    private void addToPool(PoolSubpage<T> poolSubpage) {
        this.prev = poolSubpage;
        PoolSubpage<T> poolSubpage2 = poolSubpage.next;
        this.next = poolSubpage2;
        poolSubpage2.prev = this;
        poolSubpage.next = this;
    }

    private int findNextAvail() {
        long[] jArr = this.bitmap;
        int i10 = this.bitmapLength;
        for (int i11 = 0; i11 < i10; i11++) {
            long j10 = jArr[i11];
            if ((~j10) != 0) {
                return findNextAvail0(i11, j10);
            }
        }
        return -1;
    }

    private int findNextAvail0(int i10, long j10) {
        int i11 = this.maxNumElems;
        int i12 = i10 << 6;
        for (int i13 = 0; i13 < 64; i13++) {
            if ((1 & j10) == 0) {
                int i14 = i12 | i13;
                if (i14 < i11) {
                    return i14;
                }
                return -1;
            }
            j10 >>>= 1;
        }
        return -1;
    }

    private int getNextAvail() {
        int i10 = this.nextAvail;
        if (i10 < 0) {
            return findNextAvail();
        }
        this.nextAvail = -1;
        return i10;
    }

    private void removeFromPool() {
        PoolSubpage<T> poolSubpage = this.prev;
        poolSubpage.next = this.next;
        this.next.prev = poolSubpage;
        this.next = null;
        this.prev = null;
    }

    private void setNextAvail(int i10) {
        this.nextAvail = i10;
    }

    private long toHandle(int i10) {
        return (((long) i10) << 32) | 4611686018427387904L | ((long) this.memoryMapIdx);
    }

    long allocate() {
        if (this.elemSize == 0) {
            return toHandle(0);
        }
        if (this.numAvail == 0 || !this.doNotDestroy) {
            return -1L;
        }
        int nextAvail = getNextAvail();
        int i10 = nextAvail >>> 6;
        long[] jArr = this.bitmap;
        jArr[i10] = jArr[i10] | (1 << (nextAvail & 63));
        int i11 = this.numAvail - 1;
        this.numAvail = i11;
        if (i11 == 0) {
            removeFromPool();
        }
        return toHandle(nextAvail);
    }

    void destroy() {
        PoolChunk<T> poolChunk = this.chunk;
        if (poolChunk != null) {
            poolChunk.destroy();
        }
    }

    @Override // io.netty.buffer.PoolSubpageMetric
    public int elementSize() {
        int i10;
        PoolChunk<T> poolChunk = this.chunk;
        if (poolChunk == null) {
            return -1;
        }
        synchronized (poolChunk.arena) {
            i10 = this.elemSize;
        }
        return i10;
    }

    boolean free(PoolSubpage<T> poolSubpage, int i10) {
        if (this.elemSize == 0) {
            return true;
        }
        int i11 = i10 >>> 6;
        long[] jArr = this.bitmap;
        jArr[i11] = jArr[i11] ^ (1 << (i10 & 63));
        setNextAvail(i10);
        int i12 = this.numAvail;
        int i13 = i12 + 1;
        this.numAvail = i13;
        if (i12 == 0) {
            addToPool(poolSubpage);
            return true;
        }
        if (i13 != this.maxNumElems || this.prev == this.next) {
            return true;
        }
        this.doNotDestroy = false;
        removeFromPool();
        return false;
    }

    void init(PoolSubpage<T> poolSubpage, int i10) {
        this.doNotDestroy = true;
        this.elemSize = i10;
        if (i10 != 0) {
            int i11 = this.pageSize / i10;
            this.numAvail = i11;
            this.maxNumElems = i11;
            this.nextAvail = 0;
            int i12 = i11 >>> 6;
            this.bitmapLength = i12;
            if ((i11 & 63) != 0) {
                this.bitmapLength = i12 + 1;
            }
            for (int i13 = 0; i13 < this.bitmapLength; i13++) {
                this.bitmap[i13] = 0;
            }
        }
        addToPool(poolSubpage);
    }

    @Override // io.netty.buffer.PoolSubpageMetric
    public int maxNumElements() {
        int i10;
        PoolChunk<T> poolChunk = this.chunk;
        if (poolChunk == null) {
            return 0;
        }
        synchronized (poolChunk.arena) {
            i10 = this.maxNumElems;
        }
        return i10;
    }

    @Override // io.netty.buffer.PoolSubpageMetric
    public int numAvailable() {
        int i10;
        PoolChunk<T> poolChunk = this.chunk;
        if (poolChunk == null) {
            return 0;
        }
        synchronized (poolChunk.arena) {
            i10 = this.numAvail;
        }
        return i10;
    }

    @Override // io.netty.buffer.PoolSubpageMetric
    public int pageSize() {
        return this.pageSize;
    }

    public String toString() {
        int i10;
        int i11;
        int i12;
        PoolChunk<T> poolChunk = this.chunk;
        int i13 = -1;
        boolean z10 = true;
        int i14 = 0;
        if (poolChunk == null) {
            i12 = 0;
        } else {
            synchronized (poolChunk.arena) {
                if (this.doNotDestroy) {
                    i13 = this.maxNumElems;
                    i10 = this.numAvail;
                    i11 = this.elemSize;
                } else {
                    z10 = false;
                    i10 = -1;
                    i11 = -1;
                }
            }
            i12 = i10;
            i14 = i13;
            i13 = i11;
        }
        if (!z10) {
            return "(" + this.memoryMapIdx + ": not in use)";
        }
        return "(" + this.memoryMapIdx + ": " + (i14 - i12) + '/' + i14 + ", offset: " + this.runOffset + ", length: " + this.pageSize + ", elemSize: " + i13 + ')';
    }

    PoolSubpage(PoolSubpage<T> poolSubpage, PoolChunk<T> poolChunk, int i10, int i11, int i12, int i13) {
        this.chunk = poolChunk;
        this.memoryMapIdx = i10;
        this.runOffset = i11;
        this.pageSize = i12;
        this.bitmap = new long[i12 >>> 10];
        init(poolSubpage, i13);
    }
}
