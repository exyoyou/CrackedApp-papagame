package org.apache.http.pool;

import org.apache.http.annotation.Immutable;

/* JADX INFO: loaded from: classes.dex */
@Immutable
public class PoolStats {
    private final int available;
    private final int leased;
    private final int max;
    private final int pending;

    public PoolStats(int i10, int i11, int i12, int i13) {
        this.leased = i10;
        this.pending = i11;
        this.available = i12;
        this.max = i13;
    }

    public int getAvailable() {
        return this.available;
    }

    public int getLeased() {
        return this.leased;
    }

    public int getMax() {
        return this.max;
    }

    public int getPending() {
        return this.pending;
    }

    public String toString() {
        return "[leased: " + this.leased + "; pending: " + this.pending + "; available: " + this.available + "; max: " + this.max + "]";
    }
}
