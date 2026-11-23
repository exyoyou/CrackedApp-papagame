package com.haima.hmcp.business;

import android.content.Context;
import android.graphics.Point;
import android.hardware.Sensor;
import android.hardware.SensorEvent;
import android.hardware.SensorEventListener;
import android.hardware.SensorManager;
import com.haima.hmcp.Constants;
import com.haima.hmcp.countly.CountlyUtil;
import com.haima.hmcp.enums.ScreenOrientation;
import com.haima.hmcp.utils.LogUtil;
import com.haima.hmcp.utils.LogUtils;
import java.util.concurrent.Executors;
import java.util.concurrent.ScheduledExecutorService;
import java.util.concurrent.ScheduledFuture;
import java.util.concurrent.ThreadFactory;
import java.util.concurrent.TimeUnit;

/* JADX INFO: loaded from: classes5.dex */
public class GyroscopeHelper implements SensorEventListener {
    private static final String TAG = "GyroscopeHelper";
    private AngleListener angleListener;
    private final Sensor gyroscopeSensor;
    private ScreenOrientation mScreenOrientation;
    private ScheduledExecutorService scheduledExecutor;
    private ScheduledFuture<?> scheduledTask;
    private final SensorManager sensorManager;
    public boolean isXAxisReverse = false;
    public boolean isYAxisReverse = false;
    private float[] rotationAngles = new float[3];
    private long lastTimestamp = 0;
    private volatile boolean isCallbackRunning = false;
    private float[] lastCallbackAngles = new float[3];

    public interface AngleListener {
        void onAngleChanged(float f10, float f11, float f12);
    }

    public GyroscopeHelper(Context context, AngleListener angleListener, ScreenOrientation screenOrientation) {
        SensorManager sensorManager = (SensorManager) context.getSystemService("sensor");
        this.sensorManager = sensorManager;
        this.gyroscopeSensor = sensorManager.getDefaultSensor(4);
        this.angleListener = angleListener;
        this.mScreenOrientation = screenOrientation;
        resetAngles();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void checkAngleChangesAndCallback() {
        if (!this.isCallbackRunning || this.angleListener == null) {
            return;
        }
        float degrees = (float) Math.toDegrees(this.rotationAngles[0]);
        float degrees2 = (float) Math.toDegrees(this.rotationAngles[1]);
        float degrees3 = (float) Math.toDegrees(this.rotationAngles[2]);
        float fAbs = Math.abs(degrees - this.lastCallbackAngles[0]);
        float fAbs2 = Math.abs(degrees2 - this.lastCallbackAngles[1]);
        Math.abs(degrees3 - this.lastCallbackAngles[2]);
        float f10 = Constants.CONFIG_GYROSCOPE_SENSOR_DEGREE_THRESHOLD;
        String str = TAG;
        LogUtils.d(str, "checkAngleChangesAndCallback===rollChange=" + fAbs + " pitchChange=" + fAbs);
        if (fAbs > f10 || fAbs2 > f10) {
            if (this.mScreenOrientation == ScreenOrientation.PORTRAIT) {
                this.angleListener.onAngleChanged(degrees2, degrees, degrees3);
            } else {
                this.angleListener.onAngleChanged(degrees, degrees2, degrees3);
            }
            LogUtils.d(str, "Gravity change detected, calling listener");
            float[] fArr = this.lastCallbackAngles;
            fArr[0] = degrees;
            fArr[1] = degrees2;
            fArr[2] = degrees3;
        }
    }

    public static Point convertAngleToScreenCoords(float f10, float f11, int i10, int i11) {
        float f12 = f10 / 180.0f;
        float f13 = f11 / 180.0f;
        String str = TAG;
        LogUtils.d(str, "nx=" + f12 + " ny=" + f13);
        float f14 = (f12 + 1.0f) * ((float) i10) * 0.5f;
        float f15 = (f13 + 1.0f) * ((float) i11) * 0.5f;
        LogUtils.d(str, "mappedX=" + f14 + " mappedY=" + f15);
        return new Point((int) f14, (int) f15);
    }

    private void createScheduledTask() {
        ScheduledExecutorService scheduledExecutorServiceNewSingleThreadScheduledExecutor = Executors.newSingleThreadScheduledExecutor(new ThreadFactory() { // from class: com.haima.hmcp.business.a
            @Override // java.util.concurrent.ThreadFactory
            public final Thread newThread(Runnable runnable) {
                return GyroscopeHelper.lambda$createScheduledTask$0(runnable);
            }
        });
        this.scheduledExecutor = scheduledExecutorServiceNewSingleThreadScheduledExecutor;
        this.scheduledTask = scheduledExecutorServiceNewSingleThreadScheduledExecutor.scheduleAtFixedRate(new Runnable() { // from class: com.haima.hmcp.business.GyroscopeHelper.1
            @Override // java.lang.Runnable
            public void run() {
                if (GyroscopeHelper.this.isCallbackRunning) {
                    GyroscopeHelper.this.checkAngleChangesAndCallback();
                }
            }
        }, 0L, Constants.CONFIG_SENSOR_SEND_INTERVAL_MS, TimeUnit.MILLISECONDS);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static /* synthetic */ Thread lambda$createScheduledTask$0(Runnable runnable) {
        return new Thread(runnable, "GravitySensorCallback");
    }

    public boolean isXAxisReverse() {
        return this.isXAxisReverse;
    }

    public boolean isYAxisReverse() {
        return this.isYAxisReverse;
    }

    @Override // android.hardware.SensorEventListener
    public void onAccuracyChanged(Sensor sensor, int i10) {
    }

    @Override // android.hardware.SensorEventListener
    public void onSensorChanged(SensorEvent sensorEvent) {
        if (sensorEvent.sensor.getType() != 4) {
            return;
        }
        if (this.lastTimestamp == 0) {
            this.lastTimestamp = sensorEvent.timestamp;
            return;
        }
        LogUtils.d(TAG, "=sensorSampling=onSensorChanged===values[0]" + sensorEvent.values[0] + " values[1]=" + sensorEvent.values[1]);
        long j10 = sensorEvent.timestamp;
        float f10 = ((float) (j10 - this.lastTimestamp)) * 1.0E-9f;
        this.lastTimestamp = j10;
        float[] fArr = this.rotationAngles;
        float f11 = fArr[0];
        float[] fArr2 = sensorEvent.values;
        fArr[0] = f11 + (fArr2[0] * f10);
        fArr[1] = fArr[1] + (fArr2[1] * f10);
        fArr[2] = fArr[2] + (fArr2[2] * f10);
    }

    public void resetAngles() {
        for (int i10 = 0; i10 < 3; i10++) {
            this.lastCallbackAngles[i10] = 0.0f;
            this.rotationAngles[i10] = 0.0f;
        }
    }

    public void setXAxisReverse(boolean z10) {
        this.isXAxisReverse = z10;
    }

    public void setYAxisReverse(boolean z10) {
        this.isYAxisReverse = z10;
    }

    public void startDetection() {
        Sensor sensor;
        SensorManager sensorManager = this.sensorManager;
        if (sensorManager == null || (sensor = this.gyroscopeSensor) == null) {
            CountlyUtil.recordEvent(Constants.COUNTLY_SENSOR_START_FAILURE);
            LogUtil.e(TAG, "device not support, start gravitySensor failure!");
            return;
        }
        sensorManager.registerListener(this, sensor, Constants.CONFIG_SENSOR_SAMPLING_INTERVAL_US);
        this.isCallbackRunning = true;
        createScheduledTask();
        LogUtils.d(TAG, "Started detection with ScheduledExecutorService, interval: " + Constants.CONFIG_SENSOR_SEND_INTERVAL_MS + "ms");
        CountlyUtil.recordEvent(Constants.COUNTLY_SENSOR_START_SUCCESS);
    }

    public void stopDetection() {
        SensorManager sensorManager = this.sensorManager;
        if (sensorManager != null) {
            sensorManager.unregisterListener(this);
        }
        this.isCallbackRunning = false;
        ScheduledFuture<?> scheduledFuture = this.scheduledTask;
        if (scheduledFuture != null) {
            scheduledFuture.cancel(true);
            this.scheduledTask = null;
        }
        ScheduledExecutorService scheduledExecutorService = this.scheduledExecutor;
        if (scheduledExecutorService != null) {
            scheduledExecutorService.shutdown();
            this.scheduledExecutor = null;
        }
        resetAngles();
    }
}
