package com.haima.hmcp.cloud.video.strategy;

import com.haima.hmcp.cloud.video.bean.DownloadConfig;
import java.util.Arrays;

/* JADX INFO: loaded from: classes5.dex */
public class DownloadRetryStrategy {
    private int index = 0;
    private Long[] intervals;

    public DownloadRetryStrategy(DownloadConfig downloadConfig) {
        this.intervals = downloadConfig.downloadRetryStrategy;
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

    public boolean ignoreResponse() {
        return false;
    }

    public String toString() {
        return "DownloadRetryStrategy{intervals=" + Arrays.toString(this.intervals) + ", index=" + this.index + '}';
    }
}
