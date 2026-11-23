package com.haima.hmcp.utils;

import java.util.ArrayList;
import java.util.Collections;
import java.util.Iterator;
import java.util.List;

/* JADX INFO: loaded from: classes5.dex */
public class SpeedGather {
    private static final String TAG = "SpeedGather";
    private int gather;
    private URLInfo info;
    private long realTime;
    private long totalLen = 0;
    private List<Float> realSpeeds = new ArrayList();

    public static class URLInfo {
        public String url = "https://saassdk.haimawan.com/saas_test_20M.data";
        public int playTime = 3;
        public int skipNumber = 3;
        public float peakRateCoefficient = 1.0f;
        public float standardDeviationCoefficient = 0.8f;
        public float speedCoefficient = 1.0f;
    }

    public SpeedGather(int i10, long j10, URLInfo uRLInfo) {
        this.gather = i10;
        this.realTime = j10;
        this.info = uRLInfo;
    }

    public float avg() {
        Iterator<Float> it2 = this.realSpeeds.iterator();
        float fFloatValue = 0.0f;
        while (it2.hasNext()) {
            fFloatValue += it2.next().floatValue();
        }
        return fFloatValue / this.realSpeeds.size();
    }

    public List<Float> getList() {
        return this.realSpeeds;
    }

    public String getListString() {
        StringBuilder sb2 = new StringBuilder();
        for (Float f10 : this.realSpeeds) {
            sb2.append(",");
            sb2.append(f10);
        }
        return sb2.toString();
    }

    public float getMedian() {
        List<Float> list = this.realSpeeds;
        return list.get(list.size() / 2).floatValue();
    }

    public float getQuarter() {
        List<Float> list = this.realSpeeds;
        return list.get(list.size() / 4).floatValue();
    }

    public float getSpeed(float f10, float f11) {
        return f10;
    }

    public float myStd(float f10) {
        int i10 = this.info.skipNumber;
        Collections.sort(this.realSpeeds);
        float f11 = 0.0f;
        for (int i11 = i10; i11 < this.realSpeeds.size(); i11++) {
            float fFloatValue = this.realSpeeds.get(i11).floatValue();
            if (fFloatValue >= f10) {
                int i12 = i11 - i10;
                if (i12 >= 1) {
                    return f11 / i12;
                }
                return 0.0f;
            }
            f11 += f10 - fFloatValue;
        }
        return 0.0f;
    }

    public void speedTest(long j10, long j11) {
        long j12 = j10 - this.realTime;
        if (j12 >= this.gather) {
            long j13 = this.totalLen;
            this.totalLen = j11;
            this.realTime = j10;
            float f10 = ((j11 - j13) / (j12 / 1000.0f)) / 1000.0f;
            this.realSpeeds.add(Float.valueOf(f10));
            LogUtils.i(TAG, "CloudTest>> speed_test_time(" + this.gather + "): " + ((long) f10));
        }
    }
}
