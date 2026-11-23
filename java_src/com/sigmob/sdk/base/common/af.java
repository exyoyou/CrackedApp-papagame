package com.sigmob.sdk.base.common;

import android.content.Context;
import android.hardware.Sensor;
import android.hardware.SensorEvent;
import android.hardware.SensorEventListener;
import android.hardware.SensorManager;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;
import java.util.Set;
import java.util.concurrent.CopyOnWriteArraySet;

/* JADX INFO: loaded from: classes5.dex */
public class af implements SensorEventListener {

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    private static final String f78914c = "SensorManagerHelper";

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    private static volatile af f78915d = null;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    private static volatile boolean f78916e = true;

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final Set<SensorEventListener> f78917a = new CopyOnWriteArraySet();

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public boolean f78918b = false;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    private final SensorManager f78919f;

    private af(Context context) {
        this.f78919f = (SensorManager) context.getSystemService("sensor");
    }

    public static af a(Context context) {
        if (f78915d == null) {
            synchronized (af.class) {
                if (f78915d == null) {
                    f78915d = new af(context.getApplicationContext());
                }
            }
        }
        return f78915d;
    }

    private void b() {
        if (this.f78918b || this.f78917a.isEmpty()) {
            return;
        }
        this.f78919f.unregisterListener(this);
        try {
            com.sigmob.sdk.base.utils.k.c(f78914c, "startListeningIfNeeded: registeredSensors = " + a(new int[]{4, 1, 10, 2}), new Object[0]);
            this.f78918b = true;
        } catch (Exception unused) {
        }
    }

    private void c() {
        if (this.f78918b && this.f78917a.isEmpty()) {
            this.f78919f.unregisterListener(this);
            this.f78918b = false;
        }
    }

    @Override // android.hardware.SensorEventListener
    public void onAccuracyChanged(Sensor sensor, int accuracy) {
        Iterator<SensorEventListener> it2 = this.f78917a.iterator();
        while (it2.hasNext()) {
            it2.next().onAccuracyChanged(sensor, accuracy);
        }
    }

    @Override // android.hardware.SensorEventListener
    public void onSensorChanged(SensorEvent event) {
        Iterator<SensorEventListener> it2 = this.f78917a.iterator();
        while (it2.hasNext()) {
            it2.next().onSensorChanged(event);
        }
    }

    private List<Integer> a(int[] typeArr) {
        if (this.f78919f == null || typeArr == null) {
            return new ArrayList();
        }
        ArrayList arrayList = new ArrayList();
        for (int i10 : typeArr) {
            Sensor defaultSensor = this.f78919f.getDefaultSensor(i10);
            if (defaultSensor == null) {
                StringBuilder sb2 = new StringBuilder();
                sb2.append("Sensor type ");
                sb2.append(i10);
                sb2.append(" not found on this device.");
            } else {
                this.f78919f.registerListener(this, defaultSensor, 3);
                arrayList.add(Integer.valueOf(i10));
            }
        }
        return arrayList;
    }

    public void b(SensorEventListener listener) {
        if (this.f78917a.remove(listener)) {
            c();
        }
    }

    public void a() {
        if (this.f78918b) {
            this.f78919f.unregisterListener(this);
            this.f78918b = false;
        }
        this.f78917a.clear();
        f78915d = null;
    }

    public void a(SensorEventListener listener) {
        if (f78916e && this.f78917a.add(listener)) {
            b();
        }
    }

    public static void a(boolean able) {
        f78916e = able;
    }
}
