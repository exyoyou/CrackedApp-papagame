package com.tencent.cos.task.slice;

import java.io.Serializable;

/* JADX INFO: loaded from: classes2.dex */
public class SlicePart implements Serializable {
    private static final long serialVersionUID = -8847711809744693626L;
    private long offset;
    private boolean overFlag;
    private int sliceSize;

    public long getOffset() {
        return this.offset;
    }

    public boolean getOverFlag() {
        return this.overFlag;
    }

    public int getSliceSize() {
        return this.sliceSize;
    }

    public void setOffset(long j10) {
        this.offset = j10;
    }

    public void setOverFlag(boolean z10) {
        this.overFlag = z10;
    }

    public void setSliceSize(int i10) {
        this.sliceSize = i10;
    }
}
