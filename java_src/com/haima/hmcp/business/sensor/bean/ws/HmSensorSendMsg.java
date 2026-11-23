package com.haima.hmcp.business.sensor.bean.ws;

/* JADX INFO: loaded from: classes5.dex */
public class HmSensorSendMsg {
    public int accuracy;
    public int sensorType;
    public float[] values;

    public HmSensorSendMsg(int i10, int i11, float[] fArr) {
        this.sensorType = i10;
        this.accuracy = i11;
        this.values = fArr;
    }
}
