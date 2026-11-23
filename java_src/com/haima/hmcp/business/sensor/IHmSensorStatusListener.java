package com.haima.hmcp.business.sensor;

/* JADX INFO: loaded from: classes5.dex */
public interface IHmSensorStatusListener {
    public static final String FAILURE_KEY_SENSOR_TYPE = "sensorType";

    void onSensorFailure(String str);
}
