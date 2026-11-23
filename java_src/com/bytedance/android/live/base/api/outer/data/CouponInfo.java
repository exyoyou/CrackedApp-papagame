package com.bytedance.android.live.base.api.outer.data;

/* JADX INFO: loaded from: classes9.dex */
public class CouponInfo {
    long amount;
    boolean applied;
    long threshold;
    long type;

    public CouponInfo(long j10, long j11, long j12, boolean z10) {
        this.type = j10;
        this.threshold = j11;
        this.amount = j12;
        this.applied = z10;
    }

    public long getAmount() {
        return this.amount;
    }

    public long getThreshold() {
        return this.threshold;
    }

    public long getType() {
        return this.type;
    }

    public boolean isApplied() {
        return this.applied;
    }
}
