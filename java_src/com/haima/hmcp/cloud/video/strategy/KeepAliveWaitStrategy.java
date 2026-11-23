package com.haima.hmcp.cloud.video.strategy;

import com.haima.hmcp.cloud.video.bean.DownloadConfig;
import java.util.Arrays;

/* JADX INFO: loaded from: classes5.dex */
public class KeepAliveWaitStrategy {
    private Long[] intervals;
    private int index = 0;
    private final boolean ignoreResponse = false;

    public KeepAliveWaitStrategy(DownloadConfig downloadConfig) {
        this.intervals = downloadConfig.keepAliveWaitStrategy;
    }

    public long getInterval() {
        int i10 = this.index;
        Long[] lArr = this.intervals;
        if (i10 >= lArr.length) {
            return -1L;
        }
        this.index = i10 + 1;
        return lArr[i10].longValue();
    }

    public boolean isValid() {
        return this.index < this.intervals.length;
    }

    public String toString() {
        return "KeepAliveWaitStrategy{INTERVALS=" + Arrays.toString(this.intervals) + ", index=" + this.index + ", ignoreResponse=false}";
    }
}
