package ms.bz.bd.c.Pgl;

import android.content.Context;
import android.hardware.Sensor;
import android.hardware.SensorEvent;
import android.hardware.SensorEventListener;
import android.hardware.SensorManager;
import io.netty.handler.codec.http.HttpConstants;
import io.netty.handler.codec.memcache.binary.BinaryMemcacheOpcodes;
import java.math.BigDecimal;
import java.text.DecimalFormat;
import java.util.ArrayList;
import java.util.List;
import org.json.JSONArray;

/* JADX INFO: loaded from: classes.dex */
public final class p1 implements SensorEventListener {

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    private static volatile p1 f94408c;
    private SensorManager tt;
    private int ve;
    private int uj = 0;

    /* JADX INFO: renamed from: n, reason: collision with root package name */
    private float[] f94410n = new float[3];

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private ArrayList f94409a = new ArrayList();

    static {
        new DecimalFormat((String) com.volcengine.mobsecBiz.matrix.pgla.a(16777217, 0, 0L, "798ae3", new byte[]{118, 117, 27}));
        f94408c = null;
    }

    private p1(Context context) {
        this.tt = null;
        Context applicationContext = context.getApplicationContext();
        if (applicationContext != null) {
            this.tt = (SensorManager) applicationContext.getSystemService((String) com.volcengine.mobsecBiz.matrix.pgla.a(16777217, 0, 0L, "e754d9", new byte[]{com.sigmob.sdk.archives.tar.e.T, com.sigmob.sdk.archives.tar.e.H, 72, com.sigmob.sdk.archives.tar.e.Q, 84, 60}));
        }
    }

    public static p1 c(Context context) {
        if (f94408c == null) {
            synchronized (p1.class) {
                if (f94408c == null) {
                    f94408c = new p1(context);
                }
            }
        }
        return f94408c;
    }

    private synchronized void n() {
        try {
            SensorManager sensorManager = this.tt;
            if (sensorManager != null) {
                int i10 = this.ve - 1;
                this.ve = i10;
                if (i10 == 0) {
                    sensorManager.unregisterListener(this);
                }
            }
        } catch (Exception unused) {
            com.volcengine.mobsecBiz.matrix.pgla.a(16777217, 0, 0L, "802a38", new byte[]{HttpConstants.COLON, BinaryMemcacheOpcodes.SASL_AUTH, 66, 42, BinaryMemcacheOpcodes.APPENDQ});
        }
    }

    private synchronized void uj() {
        try {
            SensorManager sensorManager = this.tt;
            if (sensorManager != null) {
                if (this.ve == 0) {
                    if (!this.tt.registerListener(this, sensorManager.getDefaultSensor(1), 3)) {
                        return;
                    }
                }
                this.ve++;
            }
        } catch (Exception unused) {
        }
    }

    @Override // android.hardware.SensorEventListener
    public final void onAccuracyChanged(Sensor sensor, int i10) {
    }

    @Override // android.hardware.SensorEventListener
    public final void onSensorChanged(SensorEvent sensorEvent) {
        this.f94410n = sensorEvent.values;
        this.uj = 1;
    }

    public final synchronized void tt() {
        JSONArray jSONArrayC = c();
        if (jSONArrayC == null) {
            return;
        }
        this.f94409a.add(jSONArrayC);
        try {
            int size = this.f94409a.size();
            if (size > 100) {
                ArrayList arrayList = new ArrayList(this.f94409a.subList(size - 50, size));
                this.f94409a.clear();
                this.f94409a = arrayList;
            }
        } catch (Throwable unused) {
        }
    }

    public final synchronized String ve() {
        StringBuilder sb2 = new StringBuilder();
        int size = this.f94409a.size();
        if (size <= 0) {
            return null;
        }
        try {
            ArrayList arrayList = this.f94409a;
            int i10 = size - 50;
            if (i10 <= 0) {
                i10 = 0;
            }
            List<JSONArray> listSubList = arrayList.subList(i10, size);
            if (listSubList.size() > 0) {
                for (JSONArray jSONArray : listSubList) {
                    if (jSONArray != null) {
                        sb2.append(jSONArray.get(0).toString());
                        sb2.append((String) com.volcengine.mobsecBiz.matrix.pgla.a(16777217, 0, 0L, "85f56d", new byte[]{101}));
                        sb2.append(jSONArray.get(1).toString());
                        sb2.append((String) com.volcengine.mobsecBiz.matrix.pgla.a(16777217, 0, 0L, "142404", new byte[]{108}));
                        sb2.append(jSONArray.get(2).toString());
                        sb2.append((String) com.volcengine.mobsecBiz.matrix.pgla.a(16777217, 0, 0L, "8435e7", new byte[]{com.sigmob.sdk.archives.tar.e.M}));
                    }
                }
            }
            if (sb2.length() > 0) {
                sb2.delete(sb2.length() - 1, sb2.length());
            }
        } catch (Throwable unused) {
        }
        return sb2.toString();
    }

    public final JSONArray c() {
        byte b10;
        JSONArray jSONArray;
        BigDecimal bigDecimal;
        try {
            b10 = pble.c() != null ? (byte) 1 : (byte) 0;
        } catch (Throwable unused) {
            b10 = -1;
        }
        if (b10 != 1) {
            return null;
        }
        uj();
        try {
            try {
                synchronized (this) {
                    int i10 = 0;
                    while (this.uj == 0 && i10 < 10) {
                        i10++;
                        wait(1000L);
                    }
                }
                jSONArray = new JSONArray();
                jSONArray.put(new BigDecimal(this.f94410n[0]).setScale(2, 4));
                jSONArray.put(new BigDecimal(this.f94410n[1]).setScale(2, 4));
                bigDecimal = new BigDecimal(this.f94410n[2]);
            } catch (Exception unused2) {
                com.volcengine.mobsecBiz.matrix.pgla.a(16777217, 0, 0L, "367a0c", new byte[]{com.sigmob.sdk.archives.tar.e.I, 39, 71, 42, 8});
                jSONArray = new JSONArray();
                jSONArray.put(new BigDecimal(this.f94410n[0]).setScale(2, 4));
                jSONArray.put(new BigDecimal(this.f94410n[1]).setScale(2, 4));
                bigDecimal = new BigDecimal(this.f94410n[2]);
            }
            jSONArray.put(bigDecimal.setScale(2, 4));
            n();
            this.uj = 0;
            return jSONArray;
        } catch (Throwable th) {
            JSONArray jSONArray2 = new JSONArray();
            jSONArray2.put(new BigDecimal(this.f94410n[0]).setScale(2, 4));
            jSONArray2.put(new BigDecimal(this.f94410n[1]).setScale(2, 4));
            jSONArray2.put(new BigDecimal(this.f94410n[2]).setScale(2, 4));
            n();
            this.uj = 0;
            throw th;
        }
    }
}
