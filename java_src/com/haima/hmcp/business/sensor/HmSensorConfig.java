package com.haima.hmcp.business.sensor;

/* JADX INFO: loaded from: classes5.dex */
public class HmSensorConfig {
    private int mSensorCountlyDataIntervalMs;
    private int mSensorCountlySwitch;
    private int mSensorSamplingMinUs;

    private static class SingletonHolder {
        private static HmSensorConfig INSTANCE = new HmSensorConfig();

        private SingletonHolder() {
        }
    }

    public static HmSensorConfig getInstance() {
        return SingletonHolder.INSTANCE;
    }

    public int getCountlyDataIntervalMs() {
        return this.mSensorCountlyDataIntervalMs;
    }

    public int getSensorCountlySwitch() {
        return this.mSensorCountlySwitch;
    }

    public int getSensorSamplingMinUs() {
        return this.mSensorSamplingMinUs;
    }

    public void setCountlyDataIntervalMs(int i10) {
        this.mSensorCountlyDataIntervalMs = i10;
    }

    public void setSensorCountlySwitch(int i10) {
        this.mSensorCountlySwitch = i10;
    }

    public void setSensorSamplingMinUs(int i10) {
        this.mSensorSamplingMinUs = i10;
    }

    private HmSensorConfig() {
        this.mSensorCountlySwitch = 0;
        this.mSensorCountlyDataIntervalMs = 10000;
        this.mSensorSamplingMinUs = 20000;
    }
}
