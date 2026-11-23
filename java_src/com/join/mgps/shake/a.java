package com.join.mgps.shake;

import android.content.Context;
import android.hardware.Sensor;
import android.hardware.SensorEvent;
import android.hardware.SensorEventListener;
import android.hardware.SensorManager;
import com.join.mgps.dto.FirstScreenAdInteractionBean;

/* JADX INFO: loaded from: classes3.dex */
public class a implements SensorEventListener {

    /* JADX INFO: renamed from: o, reason: collision with root package name */
    private static final int f72913o = 3000;

    /* JADX INFO: renamed from: p, reason: collision with root package name */
    private static final int f72914p = 70;

    /* JADX INFO: renamed from: q, reason: collision with root package name */
    private static final int f72915q = 0;

    /* JADX INFO: renamed from: r, reason: collision with root package name */
    private static final int f72916r = 1;

    /* JADX INFO: renamed from: s, reason: collision with root package name */
    private static final int f72917s = 2;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private SensorManager f72918b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    private Sensor f72919c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    private Sensor f72920d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    private InterfaceC0744a f72921e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    private Context f72922f;

    /* JADX INFO: renamed from: g, reason: collision with root package name */
    private long f72923g;

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    float[] f72924h = new float[3];

    /* JADX INFO: renamed from: i, reason: collision with root package name */
    float[] f72925i = new float[9];

    /* JADX INFO: renamed from: j, reason: collision with root package name */
    float[] f72926j = new float[3];

    /* JADX INFO: renamed from: k, reason: collision with root package name */
    float[] f72927k = new float[3];

    /* JADX INFO: renamed from: l, reason: collision with root package name */
    private int f72928l;

    /* JADX INFO: renamed from: m, reason: collision with root package name */
    private int f72929m;

    /* JADX INFO: renamed from: n, reason: collision with root package name */
    FirstScreenAdInteractionBean.ShakeConfBean f72930n;

    /* JADX INFO: renamed from: com.join.mgps.shake.a$a, reason: collision with other inner class name */
    public interface InterfaceC0744a {
        void a();
    }

    public a(Context context) {
        this.f72922f = context;
        d();
    }

    public double[] a() {
        if (!SensorManager.getRotationMatrix(this.f72925i, null, this.f72924h, this.f72926j)) {
            return new double[]{0.0d, 0.0d, 0.0d};
        }
        SensorManager.getOrientation(this.f72925i, this.f72927k);
        return new double[]{Math.toDegrees(this.f72927k[1]), Math.toDegrees(this.f72927k[2]), Math.toDegrees(this.f72927k[0])};
    }

    public void b(InterfaceC0744a listener) {
        this.f72921e = listener;
    }

    public void c(FirstScreenAdInteractionBean.ShakeConfBean shakeConfBean) {
        this.f72930n = shakeConfBean;
        if (shakeConfBean != null) {
            int acceleration = shakeConfBean.getAcceleration();
            this.f72928l = acceleration;
            if (acceleration < 5) {
                this.f72928l = 15;
            }
            this.f72929m = shakeConfBean.getRotation_angle();
        }
    }

    public void d() {
        SensorManager sensorManager = (SensorManager) this.f72922f.getSystemService("sensor");
        this.f72918b = sensorManager;
        if (sensorManager != null) {
            this.f72919c = sensorManager.getDefaultSensor(10);
            this.f72920d = this.f72918b.getDefaultSensor(2);
        }
        Sensor sensor = this.f72919c;
        if (sensor != null) {
            this.f72918b.registerListener(this, sensor, 2);
        }
        Sensor sensor2 = this.f72920d;
        if (sensor2 != null) {
            this.f72918b.registerListener(this, sensor2, 2);
        }
    }

    public void e() {
        this.f72918b.unregisterListener(this);
    }

    @Override // android.hardware.SensorEventListener
    public void onAccuracyChanged(Sensor sensor, int accuracy) {
    }

    @Override // android.hardware.SensorEventListener
    public void onSensorChanged(SensorEvent event) {
        long jCurrentTimeMillis = System.currentTimeMillis();
        if (jCurrentTimeMillis - this.f72923g < 70) {
            return;
        }
        this.f72923g = jCurrentTimeMillis;
        if (event.sensor.getType() == 2) {
            this.f72926j = event.values;
        }
        if (event.sensor.getType() == 10) {
            this.f72924h = event.values;
            double[] dArrA = a();
            double d10 = dArrA[0];
            double d11 = dArrA[1];
            double d12 = dArrA[2];
            float[] fArr = event.values;
            float f10 = fArr[0];
            float f11 = fArr[1];
            float f12 = fArr[2];
            if (Math.sqrt((f10 * f10) + (f11 * f11) + (f12 * f12)) >= this.f72928l) {
                if (Math.abs(d10) >= this.f72929m || Math.abs(d11) >= this.f72929m) {
                    this.f72921e.a();
                }
            }
        }
    }
}
