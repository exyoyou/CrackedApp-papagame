package com.aggmoread.sdk.z.a.u;

import android.content.Context;
import android.hardware.Sensor;
import android.hardware.SensorEvent;
import android.hardware.SensorEventListener;
import android.hardware.SensorManager;
import android.util.AttributeSet;
import android.view.View;
import android.widget.FrameLayout;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import java.util.concurrent.atomic.AtomicBoolean;

/* JADX INFO: loaded from: classes7.dex */
public class q extends FrameLayout {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    protected SensorManager f4187a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    protected AtomicBoolean f4188b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    private long f4189c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    protected double f4190d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    private int f4191e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    private long f4192f;

    /* JADX INFO: renamed from: g, reason: collision with root package name */
    private long f4193g;

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    private int f4194h;

    /* JADX INFO: renamed from: i, reason: collision with root package name */
    private long f4195i;

    /* JADX INFO: renamed from: j, reason: collision with root package name */
    private long f4196j;

    /* JADX INFO: renamed from: k, reason: collision with root package name */
    protected b f4197k;

    /* JADX INFO: renamed from: l, reason: collision with root package name */
    private float[] f4198l;

    /* JADX INFO: renamed from: m, reason: collision with root package name */
    private SensorEventListener f4199m;

    class a implements SensorEventListener {
        a() {
        }

        @Override // android.hardware.SensorEventListener
        public void onAccuracyChanged(Sensor sensor, int i10) {
        }

        @Override // android.hardware.SensorEventListener
        public void onSensorChanged(SensorEvent sensorEvent) {
            if (sensorEvent.sensor.getType() != 1) {
                if (sensorEvent.sensor.getType() == 9) {
                    float[] fArr = sensorEvent.values;
                    float f10 = fArr[0];
                    float f11 = fArr[1];
                    float f12 = fArr[2];
                    q.this.f4198l[0] = f10;
                    q.this.f4198l[1] = f11;
                    q.this.f4198l[2] = f12;
                    return;
                }
                return;
            }
            try {
                long jCurrentTimeMillis = System.currentTimeMillis();
                if (jCurrentTimeMillis - q.this.f4193g < 16) {
                    return;
                }
                q.this.f4193g = jCurrentTimeMillis;
                if (jCurrentTimeMillis - q.this.f4192f > q.this.f4189c) {
                    q.this.f4194h = 0;
                }
                float[] fArr2 = sensorEvent.values;
                double dB = q.this.b() ? q.this.b(fArr2) : q.this.a(fArr2);
                q qVar = q.this;
                if (dB >= qVar.f4190d) {
                    qVar.f4192f = jCurrentTimeMillis;
                    q.f(q.this);
                    com.aggmoread.sdk.z.c.a.a.e.e.a("shake result = " + dB + ", shakeCount " + q.this.f4194h + ", shakeThreshold2 " + q.this.f4190d);
                    if (q.this.f4194h >= q.this.f4191e) {
                        q.this.f4194h = 0;
                        q.this.f4192f = 0L;
                        if (jCurrentTimeMillis - q.this.f4196j >= q.this.f4195i) {
                            com.aggmoread.sdk.z.c.a.a.e.e.a("触发摇一摇 " + q.this.f4197k);
                            q.this.f4196j = jCurrentTimeMillis;
                            b bVar = q.this.f4197k;
                            if (bVar != null) {
                                bVar.a(fArr2);
                            }
                        }
                    }
                }
            } catch (Exception e10) {
                com.aggmoread.sdk.z.c.a.a.e.e.a("shake err " + e10.getMessage());
            }
        }
    }

    public interface b {
        void a(float[] fArr);
    }

    public q(@NonNull Context context) {
        this(context, null);
    }

    static /* synthetic */ int f(q qVar) {
        int i10 = qVar.f4194h;
        qVar.f4194h = i10 + 1;
        return i10;
    }

    @Override // android.view.ViewGroup, android.view.View
    protected void onDetachedFromWindow() {
        super.onDetachedFromWindow();
        com.aggmoread.sdk.z.c.a.a.e.e.a("onDetachedFromWindow ");
        f();
    }

    @Override // android.view.View
    protected void onVisibilityChanged(@NonNull View view, int i10) {
        super.onVisibilityChanged(view, i10);
        com.aggmoread.sdk.z.c.a.a.e.e.a("onVisibilityChanged " + i10);
        if (i10 != 0) {
            f();
        } else if (i10 == 0) {
            d();
        }
    }

    public q(@NonNull Context context, @Nullable AttributeSet attributeSet) {
        this(context, attributeSet, 0);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public double a(float[] fArr) {
        return Math.sqrt((Math.pow(fArr[0], 2.0d) + Math.pow(fArr[1], 2.0d)) + Math.pow(fArr[2] * 0.5f, 2.0d)) / 9.8d;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public double b(float[] fArr) {
        float[] fArr2 = (float[]) fArr.clone();
        float f10 = fArr2[0];
        float f11 = fArr2[1];
        float f12 = fArr2[2];
        float[] fArr3 = this.f4198l;
        float f13 = fArr3[0];
        float f14 = fArr3[1];
        float f15 = fArr3[2];
        double dSqrt = Math.sqrt(Math.pow(f10 - f13, 2.0d) + Math.pow(f11 - f14, 2.0d) + Math.pow(f12 - f15, 2.0d));
        if ((f13 == 0.0f && f14 == 0.0f && f15 == 0.0f) || (f10 == 0.0f && f11 == 0.0f && f12 == 0.0f)) {
            dSqrt -= 9.800000190734863d;
        }
        if (dSqrt > 50.0d) {
            return 0.0d;
        }
        return dSqrt;
    }

    public void c() {
    }

    protected void d() {
        try {
            if (this.f4187a == null || this.f4199m == null || !this.f4188b.compareAndSet(false, true)) {
                return;
            }
            this.f4187a.registerListener(this.f4199m, this.f4187a.getDefaultSensor(1), 1);
            if (b()) {
                this.f4187a.registerListener(this.f4199m, this.f4187a.getDefaultSensor(9), 1);
            }
        } catch (Exception unused) {
        }
    }

    public void e() {
    }

    protected void f() {
        if (this.f4187a == null || this.f4199m == null || !this.f4188b.compareAndSet(true, false)) {
            return;
        }
        this.f4187a.unregisterListener(this.f4199m);
    }

    public q(@NonNull Context context, @Nullable AttributeSet attributeSet, int i10) {
        super(context, attributeSet, i10);
        this.f4188b = new AtomicBoolean(false);
        this.f4189c = 1500L;
        this.f4190d = b() ? 30.0d : 1.5d;
        this.f4191e = 2;
        this.f4192f = 0L;
        this.f4193g = 0L;
        this.f4194h = 0;
        this.f4195i = 8000L;
        this.f4196j = 0L;
        this.f4197k = null;
        this.f4198l = new float[3];
        this.f4199m = new a();
        a();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public boolean b() {
        return com.aggmoread.sdk.z.a.h.a.d().f() == 1;
    }

    private void a() {
        this.f4187a = (SensorManager) getContext().getSystemService("sensor");
        setTag(com.aggmoread.sdk.z.a.i.c.f3495a);
    }

    public void a(double d10) {
        com.aggmoread.sdk.z.c.a.a.e.e.a("setShakeThreshold " + d10);
        if (d10 > 0.0d) {
            this.f4190d /= d10;
        }
    }

    public void a(b bVar) {
        this.f4197k = bVar;
    }
}
