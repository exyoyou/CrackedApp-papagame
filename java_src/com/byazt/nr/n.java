package com.byazt.nr;

import android.content.Context;
import android.hardware.Sensor;
import android.hardware.SensorEvent;
import android.hardware.SensorEventListener;
import android.hardware.SensorManager;
import com.bykv.vk.component.ttvideo.player.MediaPlayer;
import java.util.Map;
import java.util.concurrent.ConcurrentHashMap;
import java.util.concurrent.CopyOnWriteArraySet;

/* JADX INFO: loaded from: classes6.dex */
@com.byazt.zqa.c(c = {0, 1, MediaPlayer.MEDIA_PLAYER_OPTION_AUDIO_REND_FIRST_FRAME_TIME, 46})
public final class n implements sl {

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public static volatile n f17581c;

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public volatile Sensor f17582a;

    /* JADX INFO: renamed from: n, reason: collision with root package name */
    public volatile Sensor f17583n;
    public final SensorManager tt;
    public volatile Sensor uj;
    public volatile Sensor ve;
    public final ConcurrentHashMap<Sensor, CopyOnWriteArraySet<SensorEventListener>> sp = new ConcurrentHashMap<>();

    /* JADX INFO: renamed from: x, reason: collision with root package name */
    public final SensorEventListener f17584x = new SensorEventListener() { // from class: com.byazt.nr.n.1
        @Override // android.hardware.SensorEventListener
        public void onAccuracyChanged(Sensor sensor, int i10) {
        }

        @Override // android.hardware.SensorEventListener
        public void onSensorChanged(SensorEvent sensorEvent) {
            CopyOnWriteArraySet<SensorEventListener> copyOnWriteArraySet;
            if (sensorEvent == null || sensorEvent.sensor == null || (copyOnWriteArraySet = (CopyOnWriteArraySet) n.this.sp.get(sensorEvent.sensor)) == null) {
                return;
            }
            for (SensorEventListener sensorEventListener : copyOnWriteArraySet) {
                if (sensorEventListener != null) {
                    sensorEventListener.onSensorChanged(sensorEvent);
                }
            }
        }
    };

    private n(Context context) {
        this.tt = (SensorManager) context.getSystemService("sensor");
    }

    private Sensor n() {
        if (this.f17582a == null) {
            synchronized (n.class) {
                if (this.f17582a == null) {
                    this.f17582a = this.tt.getDefaultSensor(10);
                }
            }
        }
        return this.f17582a;
    }

    private Sensor tt() {
        if (this.ve == null) {
            synchronized (n.class) {
                if (this.ve == null) {
                    this.ve = this.tt.getDefaultSensor(1);
                }
            }
        }
        return this.ve;
    }

    private Sensor uj() {
        if (this.f17583n == null) {
            synchronized (n.class) {
                if (this.f17583n == null) {
                    this.f17583n = this.tt.getDefaultSensor(4);
                }
            }
        }
        return this.f17583n;
    }

    private Sensor ve() {
        if (this.uj == null) {
            synchronized (n.class) {
                if (this.uj == null) {
                    this.uj = this.tt.getDefaultSensor(15);
                }
            }
        }
        return this.uj;
    }

    public static n c(Context context) {
        if (f17581c == null) {
            synchronized (n.class) {
                if (f17581c == null) {
                    f17581c = new n(context);
                }
            }
        }
        return f17581c;
    }

    @Override // com.byazt.nr.sl
    public Sensor c(int i10) {
        if (i10 == 1) {
            return tt();
        }
        if (i10 == 4) {
            return uj();
        }
        if (i10 == 10) {
            return n();
        }
        if (i10 != 15) {
            return null;
        }
        return ve();
    }

    @Override // com.byazt.nr.sl
    public boolean c(SensorEventListener sensorEventListener, Sensor sensor, int i10) {
        boolean zRegisterListener;
        if (sensorEventListener == null || sensor == null) {
            return false;
        }
        CopyOnWriteArraySet<SensorEventListener> copyOnWriteArraySet = this.sp.get(sensor);
        if (copyOnWriteArraySet == null || copyOnWriteArraySet.isEmpty()) {
            zRegisterListener = this.tt.registerListener(this.f17584x, sensor, i10);
            m.c("TMe", "--==--- new reg sys: " + zRegisterListener + ", " + sensor.getName() + ", " + sensorEventListener.hashCode());
        } else {
            zRegisterListener = true;
        }
        if (zRegisterListener) {
            if (copyOnWriteArraySet == null) {
                copyOnWriteArraySet = new CopyOnWriteArraySet<>();
                this.sp.put(sensor, copyOnWriteArraySet);
            }
            copyOnWriteArraySet.add(sensorEventListener);
            m.c("TMe", "--==--- new reg: " + sensor.getName() + ", " + sensorEventListener.hashCode());
        }
        return zRegisterListener;
    }

    @Override // com.byazt.nr.sl
    public void c(SensorEventListener sensorEventListener) {
        if (sensorEventListener == null) {
            return;
        }
        for (Map.Entry<Sensor, CopyOnWriteArraySet<SensorEventListener>> entry : this.sp.entrySet()) {
            if (entry != null) {
                Sensor key = entry.getKey();
                CopyOnWriteArraySet<SensorEventListener> value = entry.getValue();
                if (value != null && value.contains(sensorEventListener)) {
                    value.remove(sensorEventListener);
                    StringBuilder sb2 = new StringBuilder("--==---- new unreg sensor: ");
                    sb2.append(key != null ? key.getName() : "sensorNull");
                    sb2.append(", ");
                    sb2.append(sensorEventListener.hashCode());
                    m.c("TMe", sb2.toString());
                    if (value.isEmpty() && key != null) {
                        try {
                            this.tt.unregisterListener(this.f17584x, key);
                        } catch (Throwable th) {
                            m.c(th);
                        }
                        m.c("TMe", "--==---- new unreg sys sensor: " + key.getName());
                    }
                }
            }
        }
        m.c("TMe", "--==---- new unreg shake size: " + c());
    }

    public int c() {
        CopyOnWriteArraySet<SensorEventListener> value;
        int size = 0;
        for (Map.Entry<Sensor, CopyOnWriteArraySet<SensorEventListener>> entry : this.sp.entrySet()) {
            if (entry != null && (value = entry.getValue()) != null) {
                size += value.size();
            }
        }
        return size;
    }
}
