package com.byazt.gf;

import android.hardware.Sensor;
import android.hardware.SensorEvent;
import android.hardware.SensorEventListener;
import android.hardware.SensorManager;
import com.byazt.bwm.sp;
import com.byazt.nr.rh;
import com.byazt.qi.a;
import com.haima.hmcp.Constants;
import com.umeng.analytics.pro.bm;
import com.umeng.umcrash.UMCrash;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.LinkedList;
import java.util.List;
import java.util.concurrent.atomic.AtomicInteger;
import org.json.JSONArray;
import org.json.JSONException;
import org.json.JSONObject;

/* JADX INFO: loaded from: classes6.dex */
@com.byazt.zqa.c(c = {0, 1, 914, 15})
public class uj implements SensorEventListener {

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public static volatile uj f14517c;
    public volatile c my;
    public Sensor yp;

    /* JADX INFO: renamed from: z, reason: collision with root package name */
    public Sensor f14526z;
    public volatile boolean tt = false;
    public final List<Float> ve = new ArrayList(1);
    public final List<Float> uj = new ArrayList(1);

    /* JADX INFO: renamed from: n, reason: collision with root package name */
    public final List<Float> f14522n = new ArrayList(1);

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final List<Float> f14518a = new ArrayList(1);
    public final List<Float> sp = new ArrayList(1);

    /* JADX INFO: renamed from: x, reason: collision with root package name */
    public final List<Float> f14525x = new ArrayList(1);

    /* JADX INFO: renamed from: i, reason: collision with root package name */
    public final int f14520i = 0;

    /* JADX INFO: renamed from: da, reason: collision with root package name */
    public final int f14519da = 1;
    public final int sl = 2;

    /* JADX INFO: renamed from: t, reason: collision with root package name */
    public final int f14523t = 16;

    /* JADX INFO: renamed from: u, reason: collision with root package name */
    public final int f14524u = 32;

    /* JADX INFO: renamed from: m, reason: collision with root package name */
    public long f14521m = 0;
    public volatile boolean nu = false;
    public volatile AtomicInteger rh = new AtomicInteger(0);
    public volatile int gt = 0;

    public interface c {
        void c(JSONObject jSONObject);
    }

    private uj() {
        this.yp = null;
        this.f14526z = null;
        SensorManager sensorManager = (SensorManager) a.ve().getApplicationContext().getSystemService("sensor");
        if (sensorManager != null) {
            try {
                this.yp = sensorManager.getDefaultSensor(1);
                this.f14526z = sensorManager.getDefaultSensor(2);
            } catch (Exception unused) {
            }
        }
    }

    @Override // android.hardware.SensorEventListener
    public void onAccuracyChanged(Sensor sensor, int i10) {
    }

    @Override // android.hardware.SensorEventListener
    public void onSensorChanged(SensorEvent sensorEvent) {
        Sensor sensor;
        this.rh.incrementAndGet();
        if (sensorEvent == null || (sensor = sensorEvent.sensor) == null) {
            return;
        }
        int type = sensor.getType();
        float[] fArr = sensorEvent.values;
        if (fArr == null || fArr.length < 3) {
            return;
        }
        if (type == 1) {
            if (this.ve.size() > 0) {
                a();
                return;
            }
            this.ve.add(Float.valueOf(sensorEvent.values[0]));
            this.uj.add(Float.valueOf(sensorEvent.values[1]));
            this.f14522n.add(Float.valueOf(sensorEvent.values[2]));
            return;
        }
        if (type != 2) {
            return;
        }
        if (this.f14518a.size() > 0) {
            a();
            return;
        }
        this.f14518a.add(Float.valueOf(sensorEvent.values[0]));
        this.sp.add(Float.valueOf(sensorEvent.values[1]));
        this.f14525x.add(Float.valueOf(sensorEvent.values[2]));
    }

    private synchronized void a() {
        if (!this.tt && this.ve.size() > 0 && this.f14518a.size() > 0) {
            this.tt = true;
            n();
            com.byazt.bwm.n.tt(new sp("har") { // from class: com.byazt.gf.uj.1
                @Override // java.lang.Runnable
                public void run() {
                    JSONObject jSONObject = new JSONObject();
                    try {
                        float[] fArrC = ve.c(uj.this.ve, uj.this.uj, uj.this.f14522n, uj.this.f14518a, uj.this.sp, uj.this.f14525x);
                        uj.this.c(fArrC);
                        long jCurrentTimeMillis = System.currentTimeMillis();
                        long jA = n.c().a();
                        long jSp = n.c().sp();
                        int iVe = (int) (((n.c().ve() / 1000) / 60) / 60);
                        if (iVe <= 0) {
                            iVe = 1;
                        }
                        jSONObject.put("azimuth_unit", jA);
                        jSONObject.put("angle_unit", jSp);
                        LinkedList<JSONObject> linkedListC = tt.c().c(0L);
                        jSONObject.put("active", Arrays.toString(ve.c(linkedListC, iVe)));
                        com.byazt.gf.c.c().c(iVe);
                        jSONObject.put(Constants.WS_MESSAGE_TYPE_SCREEN, Arrays.toString(com.byazt.gf.c.c().ve()));
                        jSONObject.put("network", Arrays.toString(com.byazt.gf.c.c().tt()));
                        jSONObject.put("support_net", com.byazt.gf.c.c().uj());
                        jSONObject.put("sim_status", com.byazt.gf.c.c().n());
                        int[][] iArrC = ve.c(linkedListC, jA, jSp);
                        jSONObject.put("ax", Arrays.toString(iArrC[0]));
                        jSONObject.put("ay", Arrays.toString(iArrC[1]));
                        jSONObject.put("az", Arrays.toString(iArrC[2]));
                        int[][] iArrC2 = ve.c(tt.c().c(10800000L), jA, jSp);
                        jSONObject.put("ax3", Arrays.toString(iArrC2[0]));
                        jSONObject.put("ay3", Arrays.toString(iArrC2[1]));
                        jSONObject.put("az3", Arrays.toString(iArrC2[2]));
                        int[][] iArrC3 = ve.c(tt.c().c(21600000L), jA, jSp);
                        jSONObject.put("ax6", Arrays.toString(iArrC3[0]));
                        jSONObject.put("ay6", Arrays.toString(iArrC3[1]));
                        jSONObject.put("az6", Arrays.toString(iArrC3[2]));
                        jSONObject.put("angleAvg", Arrays.toString(fArrC));
                        jSONObject.put(UMCrash.SP_KEY_TIMESTAMP, jCurrentTimeMillis);
                    } catch (Exception unused) {
                        jSONObject = null;
                    }
                    if (uj.this.my != null) {
                        uj.this.my.c(jSONObject);
                    }
                    uj.this.sp();
                    uj.this.nu = false;
                }
            });
        } else {
            if (this.rh.get() > 3) {
                n();
                sp();
                this.nu = false;
            }
        }
    }

    private void n() {
        this.rh = new AtomicInteger(0);
        SensorManager sensorManager = (SensorManager) a.ve().getApplicationContext().getSystemService("sensor");
        if (sensorManager != null) {
            Sensor sensor = this.yp;
            if (sensor != null) {
                sensorManager.unregisterListener(this, sensor);
            }
            Sensor sensor2 = this.f14526z;
            if (sensor2 != null) {
                sensorManager.unregisterListener(this, sensor2);
            }
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void sp() {
        this.ve.clear();
        this.uj.clear();
        this.f14522n.clear();
        this.f14518a.clear();
        this.sp.clear();
        this.f14525x.clear();
    }

    public synchronized boolean tt() {
        int i10;
        int i11;
        this.gt = 0;
        if (this.nu) {
            return false;
        }
        if (this.yp == null || this.f14526z == null) {
            this.gt |= this.yp == null ? 2 : 0;
            int i12 = this.gt;
            if (this.f14526z == null) {
                i10 = i12;
                i11 = 16;
            } else {
                i10 = i12;
                i11 = 0;
            }
        } else {
            this.nu = false;
            SensorManager sensorManager = (SensorManager) a.ve().getApplicationContext().getSystemService("sensor");
            i11 = 1;
            if (sensorManager != null) {
                try {
                    boolean zRegisterListener = sensorManager.registerListener(this, this.yp, 1);
                    boolean zRegisterListener2 = sensorManager.registerListener(this, this.f14526z, 1);
                    if (zRegisterListener && zRegisterListener2) {
                        this.nu = true;
                        this.tt = false;
                    } else {
                        this.gt |= 32;
                        n();
                        sp();
                    }
                } catch (Exception unused) {
                    i10 = this.gt;
                    i11 = 32;
                    this.gt = i10 | i11;
                }
                return this.nu;
            }
            i10 = this.gt;
        }
        this.gt = i10 | i11;
        return this.nu;
    }

    public long uj() {
        return this.f14521m;
    }

    public boolean ve() {
        return this.nu;
    }

    public static uj c() {
        if (f14517c == null) {
            synchronized (uj.class) {
                if (f14517c == null) {
                    f14517c = new uj();
                }
            }
        }
        return f14517c;
    }

    public void c(c cVar) {
        this.my = cVar;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void c(float[] fArr) {
        this.f14521m = System.currentTimeMillis();
        try {
            JSONObject jSONObject = new JSONObject();
            jSONObject.put(bm.aM, uj());
            jSONObject.put("val", new JSONArray(fArr));
            tt.c().c(jSONObject, "sp_angle");
            tt.c().c(rh.ve(a.ve()));
        } catch (JSONException e10) {
            throw new RuntimeException(e10);
        }
    }
}
