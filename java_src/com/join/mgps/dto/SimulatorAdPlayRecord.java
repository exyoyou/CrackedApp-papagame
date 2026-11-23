package com.join.mgps.dto;

import java.util.Objects;

/* JADX INFO: loaded from: classes3.dex */
public class SimulatorAdPlayRecord extends BaseBean {
    private int adType;
    private int maxTimes;
    private int times;

    public SimulatorAdPlayRecord() {
    }

    public void add() {
        this.times++;
    }

    public boolean canPlay() {
        return this.times < this.maxTimes;
    }

    public boolean equals(Object o10) {
        if (this == o10) {
            return true;
        }
        return o10 != null && getClass() == o10.getClass() && this.adType == ((SimulatorAdPlayRecord) o10).adType;
    }

    public int getAdType() {
        return this.adType;
    }

    public int getMaxTimes() {
        return this.maxTimes;
    }

    public int getTimes() {
        return this.times;
    }

    public int hashCode() {
        return Objects.hash(Integer.valueOf(this.adType));
    }

    public void setAdType(int adType) {
        this.adType = adType;
    }

    public void setMaxTimes(int maxTimes) {
        this.maxTimes = maxTimes;
    }

    public void setTimes(int times) {
        this.times = times;
    }

    public boolean typeOf(int type) {
        return type == this.adType;
    }

    public SimulatorAdPlayRecord(int adType, int times, int maxTimes) {
        this.adType = adType;
        this.times = times;
        this.maxTimes = maxTimes;
    }
}
