package com.kwad.components.offline.api.core.api;

import android.content.Context;
import android.hardware.Sensor;
import android.hardware.SensorEventListener;
import android.hardware.SensorManager;

/* JADX INFO: loaded from: classes2.dex */
public interface ISensorManagerProxy {
    @Deprecated
    SensorManager checkAndObtainSensorManager(Context context);

    Sensor getDefaultSensor(Context context, int i10);

    boolean registerListener(Context context, SensorEventListener sensorEventListener, Sensor sensor, int i10);

    void unregisterListener(SensorEventListener sensorEventListener);
}
