package com.haima.hmcp.business.display;

import java.util.Arrays;

/* JADX INFO: loaded from: classes5.dex */
public class HmScreenMonitorConfig {
    private static final Integer[] DEFAULT_TIME_OUT = {3000, 3000, 3000};
    public static final int DISABLE = 0;
    public static final int ENABLE = 1;
    public static final int TIME_OUT_COUNTS_LIMIT = -1;
    public static final int TIME_OUT_MIN = 1000;
    private Integer[] timeout;
    private int timeoutIndex = 0;
    private int enable = 0;

    public HmScreenMonitorConfig() {
        setTimeout(DEFAULT_TIME_OUT);
    }

    public int getTimeout() {
        int i10;
        Integer[] numArr = this.timeout;
        if (numArr == null || numArr.length == 0 || (i10 = this.timeoutIndex) >= numArr.length) {
            return -1;
        }
        this.timeoutIndex = i10 + 1;
        return numArr[i10].intValue();
    }

    public boolean isEnable() {
        return this.enable == 1;
    }

    public void reset() {
        this.timeoutIndex = 0;
    }

    public void setEnable(int i10) {
        this.enable = i10;
    }

    public void setTimeout(Integer[] numArr) {
        reset();
        if (numArr == null || numArr.length == 0) {
            this.timeout = DEFAULT_TIME_OUT;
        } else {
            this.timeout = numArr;
        }
    }

    public String toString() {
        return "HmScreenMonitorConfig{enable=" + this.enable + ", timeout=" + Arrays.toString(this.timeout) + ", timeoutIndex=" + this.timeoutIndex + '}';
    }
}
