package org.cocos2dx.lib;

import android.content.Context;
import android.hardware.Sensor;
import android.hardware.SensorEvent;
import android.hardware.SensorEventListener;
import android.hardware.SensorManager;
import android.view.WindowManager;

/* JADX INFO: loaded from: classes10.dex */
public class Cocos2dxAccelerometer implements SensorEventListener {
    private static final String TAG = "Cocos2dxAccelerometer";
    private final Sensor mAccelerometer;
    private final Context mContext;
    private final int mNaturalOrientation;
    private final SensorManager mSensorManager;

    public Cocos2dxAccelerometer(Context context) {
        this.mContext = context;
        SensorManager sensorManager = (SensorManager) context.getSystemService("sensor");
        this.mSensorManager = sensorManager;
        this.mAccelerometer = sensorManager.getDefaultSensor(1);
        this.mNaturalOrientation = ((WindowManager) context.getSystemService("window")).getDefaultDisplay().getOrientation();
    }

    public static native void onSensorChanged(float f10, float f11, float f12, long j10);

    public void disable() {
        this.mSensorManager.unregisterListener(this);
    }

    public void enable() {
        this.mSensorManager.registerListener(this, this.mAccelerometer, 1);
    }

    @Override // android.hardware.SensorEventListener
    public void onAccuracyChanged(Sensor sensor, int i10) {
    }

    @Override // android.hardware.SensorEventListener
    public void onSensorChanged(SensorEvent sensorEvent) {
        if (sensorEvent.sensor.getType() != 1) {
            return;
        }
        float[] fArr = sensorEvent.values;
        float f10 = fArr[0];
        float f11 = fArr[1];
        float f12 = fArr[2];
        int i10 = this.mContext.getResources().getConfiguration().orientation;
        if (i10 == 2 && this.mNaturalOrientation != 0) {
            float f13 = -f11;
            f11 = f10;
            f10 = f13;
        } else if (i10 == 1 && this.mNaturalOrientation != 0) {
            f11 = -f10;
            f10 = f11;
        }
        Cocos2dxGLSurfaceView.queueAccelerometer(f10, f11, f12, sensorEvent.timestamp);
    }

    public void setInterval(float f10) {
        this.mSensorManager.registerListener(this, this.mAccelerometer, (int) (f10 * 100000.0f));
    }
}
