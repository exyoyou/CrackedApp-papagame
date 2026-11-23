package com.byazt.zb;

import android.content.Context;
import android.hardware.SensorEventListener;
import android.hardware.SensorManager;
import android.os.Vibrator;

/* JADX INFO: loaded from: classes9.dex */
@com.byazt.zqa.c(c = {0, 1, 184, 72})
public class da {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public static SensorManager f22650a;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public static c f22651c;
    public static final float[] tt = new float[3];
    public static final float[] ve = new float[3];
    public static final float[] uj = new float[9];

    /* JADX INFO: renamed from: n, reason: collision with root package name */
    public static final float[] f22652n = new float[3];

    private static int c(int i10) {
        if (i10 == 0 || i10 == 1 || i10 == 2 || i10 == 3) {
            return i10;
        }
        return 2;
    }

    public static void tt(Context context, SensorEventListener sensorEventListener, int i10) {
        if (sensorEventListener == null || context == null) {
            return;
        }
        try {
            if (c()) {
                return;
            }
            c cVar = f22651c;
            if (cVar == null || !cVar.ve()) {
                SensorManager sensorManagerC = c(context);
                sensorManagerC.registerListener(sensorEventListener, sensorManagerC.getDefaultSensor(4), c(i10));
            }
        } catch (Throwable th) {
            sp.c("SensorHub", "startListenGyroscope error", th);
        }
    }

    public static void uj(Context context, SensorEventListener sensorEventListener, int i10) {
        if (sensorEventListener == null || context == null) {
            return;
        }
        try {
            if (c()) {
                return;
            }
            c cVar = f22651c;
            if (cVar == null || !cVar.ve()) {
                SensorManager sensorManagerC = c(context);
                sensorManagerC.registerListener(sensorEventListener, sensorManagerC.getDefaultSensor(1), c(i10));
                sensorManagerC.registerListener(sensorEventListener, sensorManagerC.getDefaultSensor(2), c(i10));
            }
        } catch (Throwable th) {
            sp.c("SensorHub", "startListenRotationVector err", th);
        }
    }

    public static void ve(Context context, SensorEventListener sensorEventListener, int i10) {
        if (sensorEventListener == null || context == null) {
            return;
        }
        try {
            if (c()) {
                return;
            }
            c cVar = f22651c;
            if (cVar == null || !cVar.ve()) {
                SensorManager sensorManagerC = c(context);
                sensorManagerC.registerListener(sensorEventListener, sensorManagerC.getDefaultSensor(10), c(i10));
            }
        } catch (Throwable th) {
            sp.c("SensorHub", "startListenLinearAcceleration error", th);
        }
    }

    public static void c(c cVar) {
        f22651c = cVar;
    }

    private static SensorManager c(Context context) {
        if (f22650a == null) {
            synchronized (da.class) {
                if (f22650a == null) {
                    f22650a = (SensorManager) context.getSystemService("sensor");
                }
            }
        }
        return f22650a;
    }

    private static boolean c() {
        c cVar = f22651c;
        return cVar == null || !cVar.tt();
    }

    public static void c(Context context, SensorEventListener sensorEventListener, int i10) {
        if (sensorEventListener == null || context == null) {
            return;
        }
        try {
            if (c()) {
                return;
            }
            c cVar = f22651c;
            if (cVar == null || !cVar.ve()) {
                SensorManager sensorManagerC = c(context);
                sensorManagerC.registerListener(sensorEventListener, sensorManagerC.getDefaultSensor(1), c(i10));
            }
        } catch (Throwable th) {
            sp.c("SensorHub", "startListenAccelerometer error", th);
        }
    }

    public static void c(Context context, SensorEventListener sensorEventListener) {
        if (sensorEventListener == null || context == null) {
            return;
        }
        try {
            c(context).unregisterListener(sensorEventListener);
        } catch (Throwable th) {
            sp.c("SensorHub", "stopListen error", th);
        }
    }

    public static void c(Context context, long j10) {
        if (context == null) {
            return;
        }
        ((Vibrator) context.getSystemService("vibrator")).vibrate(j10);
    }
}
