package com.bykv.vk.component.ttvideo.player;

import android.hardware.SensorEventListener;
import android.hardware.SensorManager;
import com.byazt.nr.m;

/* JADX INFO: loaded from: classes9.dex */
@Keep
public class SensorData {
    protected static final int Sensor_ACC_Data = 1;
    protected static final int Sensor_MAG_Data = 2;
    protected static final int Sensor_ROT_Data = 3;
    private long mHandle = 0;
    private SensorManager mSensorManager = null;
    private SensorEventListener mListener = null;
    private float[] magnet = new float[3];
    private float[] accel = new float[3];

    private static final native void _writeData(long j10, int i10, float f10, float f11, float f12);

    protected void finalize() {
        stop();
    }

    public Boolean initListeners() {
        return Boolean.FALSE;
    }

    @CalledByNative
    public void setHandle(long j10, TTPlayer tTPlayer) {
        this.mHandle = j10;
        tTPlayer.getContext();
    }

    @CalledByNative
    public int start() {
        return initListeners().booleanValue() ? 0 : -1;
    }

    @CalledByNative
    public void stop() {
        m.uj("ttmn", "stop sensor");
        this.mHandle = 0L;
    }
}
