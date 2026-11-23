package com.byazt.wi;

import java.util.List;

/* JADX INFO: loaded from: classes9.dex */
@com.byazt.zqa.c(c = {0, 1, 983, 20})
public final class c {
    public static long c(long j10, long j11, long j12) {
        if (j12 > 0 && j10 > j12) {
            j10 = j12;
        }
        return j10 < j11 ? j11 : j10;
    }

    public static long c(List<Long> list, int i10) {
        if (list == null || list.isEmpty()) {
            return 0L;
        }
        int iMax = Math.max(0, Math.min(100, i10));
        int size = list.size();
        return list.get(Math.max(0, Math.min(size - 1, ((int) Math.ceil((((double) iMax) / 100.0d) * ((double) size))) - 1))).longValue();
    }
}
