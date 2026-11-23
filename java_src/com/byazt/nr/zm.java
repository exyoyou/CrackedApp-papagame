package com.byazt.nr;

import android.content.Context;
import android.hardware.Sensor;
import android.hardware.SensorEvent;
import android.hardware.SensorEventListener;
import com.bykv.vk.component.ttvideo.player.MediaPlayer;
import org.json.JSONObject;

/* JADX INFO: loaded from: classes6.dex */
@com.byazt.zqa.c(c = {0, 1, MediaPlayer.MEDIA_PLAYER_OPTION_AUDIO_REND_FIRST_FRAME_TIME, 482})
public class zm implements SensorEventListener {
    public static yv tx;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public ve f17607b;
    public JSONObject cu;
    public int gr;

    /* JADX INFO: renamed from: ic, reason: collision with root package name */
    public float f17614ic;
    public Context kk;

    /* JADX INFO: renamed from: m, reason: collision with root package name */
    public Sensor f17616m;
    public int my;

    /* JADX INFO: renamed from: n, reason: collision with root package name */
    public float f17617n;
    public Sensor nu;
    public float pf;

    /* JADX INFO: renamed from: q, reason: collision with root package name */
    public boolean f17620q;
    public float rh;
    public sl sl;
    public volatile long sp;
    public float sv;
    public volatile long tt;
    public float uj;

    /* JADX INFO: renamed from: v, reason: collision with root package name */
    public int f17623v;
    public float ve;
    public Sensor yp;
    public float yv;

    /* JADX INFO: renamed from: z, reason: collision with root package name */
    public Sensor f17625z;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final long f17608c = 2000;

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public boolean f17606a = false;

    /* JADX INFO: renamed from: x, reason: collision with root package name */
    public float f17624x = 13.0f;

    /* JADX INFO: renamed from: i, reason: collision with root package name */
    public float f17613i = 50.0f;

    /* JADX INFO: renamed from: da, reason: collision with root package name */
    public int f17610da = 0;

    /* JADX INFO: renamed from: t, reason: collision with root package name */
    public c f17621t = null;

    /* JADX INFO: renamed from: u, reason: collision with root package name */
    public tt f17622u = null;
    public final long gt = 500;
    public volatile long rl = 0;
    public volatile boolean qy = false;
    public volatile boolean gu = false;
    public final float zm = 1.0E-9f;

    /* JADX INFO: renamed from: p, reason: collision with root package name */
    public float[] f17619p = new float[3];
    public long md = 0;

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    public float f17611h = 0.0f;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    public float f17609d = 4.0f;
    public float eo = 0.0f;

    /* JADX INFO: renamed from: zb, reason: collision with root package name */
    public float[] f17626zb = new float[3];
    public final float or = 0.0f;
    public boolean qp = false;

    /* JADX INFO: renamed from: nb, reason: collision with root package name */
    public boolean f17618nb = false;
    public boolean bx = false;
    public boolean aw = false;

    /* JADX INFO: renamed from: hd, reason: collision with root package name */
    public int f17612hd = 0;
    public int bm = 0;
    public int lr = 0;

    /* JADX INFO: renamed from: l, reason: collision with root package name */
    public int f17615l = 0;
    public int lo = 0;
    public int pu = 0;
    public boolean lt = false;
    public int to = 0;
    public int tk = 0;
    public float kp = 0.0f;

    public interface c {
        void c(int i10);
    }

    public interface tt {
        void c(float f10, float f11, float f12);
    }

    public interface ve {
        void c();
    }

    public zm(Context context, int i10, boolean z10) {
        this.sl = null;
        this.f17620q = z10;
        this.gr = i10;
        if (context == null) {
            return;
        }
        Context applicationContext = context.getApplicationContext();
        this.kk = applicationContext;
        if (applicationContext == null) {
            return;
        }
        m.c("xgc_cus", "cus:" + z10);
        if (z10) {
            this.sl = n.c(context);
        }
    }

    private int a(float f10) {
        return f10 < 0.0f ? 1 : 2;
    }

    private float c(double d10) {
        if (d10 <= 0.0d || d10 > 180.0d) {
            d10 = 50.0d;
        }
        return (float) d10;
    }

    private void da() {
        gr.c().ve(this.f17623v);
    }

    private int getType() {
        return this.gr == 2 ? 2 : 1;
    }

    private void i() {
        sp(1);
        this.rl = 0L;
        this.gu = false;
    }

    private void n() {
        sl slVar = this.sl;
        if (slVar == null) {
            return;
        }
        slVar.c(this);
    }

    private void sp() {
        this.f17612hd = 0;
        this.bm = 0;
        this.lr = 0;
    }

    private boolean tt() {
        sl slVar = this.sl;
        if (slVar == null) {
            return false;
        }
        try {
            if (this.f17610da == 4) {
                return ve();
            }
            if (this.yp == null) {
                this.yp = slVar.c(1);
            }
            boolean zC = this.sl.c(this, this.yp, 3);
            a();
            return zC;
        } catch (Throwable unused) {
            return false;
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public boolean uj() {
        if (this.sl == null || this.lt) {
            return false;
        }
        int i10 = this.gr;
        if (i10 == 1) {
            return tt();
        }
        if (i10 == 2) {
            return ve();
        }
        return false;
    }

    private boolean ve() {
        int i10;
        sl slVar = this.sl;
        boolean zC = false;
        if (slVar == null) {
            return false;
        }
        try {
            if (this.my == 0) {
                if (this.f17625z == null) {
                    this.f17625z = slVar.c(15);
                }
                this.f17606a = false;
                zC = this.sl.c(this, this.f17625z, 1);
            }
            int i11 = this.my;
            if (i11 == 3 || i11 == 2 || i11 == 4 || i11 == 7) {
                if (this.f17616m == null) {
                    this.f17616m = this.sl.c(4);
                }
                float f10 = this.f17609d;
                if (f10 != 0.0f && ((i10 = this.my) == 2 || i10 == 4)) {
                    this.kp = (float) Math.pow(f10, 2.0d);
                    if (this.nu == null) {
                        this.nu = this.sl.c(10);
                    }
                    this.sl.c(this, this.nu, 1);
                }
                zC = this.sl.c(this, this.f17616m, 1);
            }
            sp();
        } catch (Throwable unused) {
        }
        return zC;
    }

    private boolean x() {
        return this.rh > this.f17624x;
    }

    @Override // android.hardware.SensorEventListener
    public void onAccuracyChanged(Sensor sensor, int i10) {
    }

    @Override // android.hardware.SensorEventListener
    public void onSensorChanged(SensorEvent sensorEvent) {
        ve veVar = this.f17607b;
        if (veVar != null) {
            veVar.c();
        }
        int type = sensorEvent.sensor.getType();
        float[] fArr = sensorEvent.values;
        if (fArr == null || fArr.length < 3) {
            return;
        }
        float fAbs = Math.abs(fArr[0]);
        float fAbs2 = Math.abs(fArr[1]);
        float fAbs3 = Math.abs(fArr[2]);
        if (type == 1) {
            if (this.f17621t == null || System.currentTimeMillis() - this.tt <= 2000) {
                return;
            }
            int i10 = this.f17610da;
            if (i10 == 1) {
                double dSqrt = Math.sqrt(Math.pow(fAbs, 2.0d) + Math.pow(fAbs2, 2.0d) + Math.pow(fAbs3, 2.0d));
                c(dSqrt > ((double) this.f17624x), dSqrt, sensorEvent);
                return;
            } else if (i10 == 2) {
                tt(Math.sqrt((Math.pow((double) fAbs, 2.0d) + Math.pow((double) fAbs2, 2.0d)) + Math.pow((double) fAbs3, 2.0d)) > ((double) this.f17624x), sensorEvent);
                return;
            } else if (i10 == 3) {
                c(Math.sqrt((Math.pow((double) fAbs, 2.0d) + Math.pow((double) fAbs2, 2.0d)) + Math.pow((double) fAbs3, 2.0d)) > ((double) this.f17624x), sensorEvent);
                return;
            } else {
                double dC = c(fAbs, fAbs2, fAbs3);
                c(dC > ((double) this.f17624x), dC, sensorEvent);
                return;
            }
        }
        if (type == 4) {
            int i11 = this.my;
            if (i11 == 3) {
                tt(sensorEvent);
                return;
            } else {
                if (i11 == 2 || i11 == 4 || i11 == 7) {
                    c(sensorEvent);
                    return;
                }
                return;
            }
        }
        if (type == 10) {
            float[] fArr2 = sensorEvent.values;
            this.eo = (float) (Math.pow(fArr2[0], 2.0d) + Math.pow(fArr2[1], 2.0d) + Math.pow(fArr2[2], 2.0d));
            return;
        }
        if (type != 15) {
            return;
        }
        float fAbs4 = Math.abs(fArr[0]);
        float fAbs5 = Math.abs(fArr[1]);
        float fAbs6 = Math.abs(fArr[2]);
        tt ttVar = this.f17622u;
        if (ttVar != null) {
            ttVar.c(fArr[0], fArr[1], fArr[2]);
        }
        if (fAbs4 == 0.0f && fAbs5 == 0.0f && fAbs6 == 0.0f) {
            return;
        }
        if (!this.f17606a) {
            this.f17606a = true;
            this.ve = fAbs4;
            this.uj = fAbs5;
            this.f17617n = fAbs6;
            return;
        }
        float fAbs7 = Math.abs(fAbs4 - this.ve) * 180.0f;
        float fAbs8 = Math.abs(fAbs5 - this.uj) * 180.0f;
        float fAbs9 = Math.abs(fAbs6 - this.f17617n) * 180.0f;
        float[] fArr3 = {fAbs7, fAbs8, fAbs9};
        if (!this.qp) {
            float f10 = this.f17613i;
            if ((fAbs7 > f10 || fAbs8 > f10 || fAbs9 > f10) && this.f17621t != null && System.currentTimeMillis() - this.sp > 2000) {
                c(2, fArr3);
                x(11);
                this.f17621t.c(getType());
                this.sp = System.currentTimeMillis();
                this.f17606a = false;
                return;
            }
            return;
        }
        boolean z10 = this.f17618nb && fAbs7 > this.pf;
        boolean z11 = this.bx && fAbs8 > this.sv;
        boolean z12 = this.aw && fAbs9 > this.f17614ic;
        if ((z10 || z11 || z12) && this.f17621t != null && System.currentTimeMillis() - this.sp > 2000) {
            c(2, fArr3);
            x(11);
            this.f17621t.c(getType());
            this.sp = System.currentTimeMillis();
            this.f17606a = false;
        }
    }

    private void a() {
        this.rl = 0L;
        this.qy = false;
        this.gu = false;
        this.f17612hd = 0;
        this.bm = 0;
        this.lr = 0;
        this.f17615l = 0;
        this.lo = 0;
        this.pu = 0;
    }

    private boolean c(float f10, float f11) {
        return f11 > 0.0f && f10 > f11;
    }

    private void x(int i10) {
        gr.c().c(this.f17623v, i10);
    }

    private boolean c(int i10, int i11) {
        return (i10 | i11) == 3;
    }

    public void n(int i10) {
        this.f17610da = i10;
    }

    private boolean c(int i10, int i11, int i12) {
        return i11 == 3 && (i10 | i12) == 3;
    }

    private void i(int i10) {
        try {
            this.f17623v = i10;
            gr.c().c(this.f17623v, "calculation_method", Integer.valueOf(this.f17610da));
            gr.c().c(this.f17623v, "calculation_method_twist", Integer.valueOf(this.my));
            gr.c().c(this.f17623v, "shake_threshold", Float.valueOf(this.f17624x));
            gr.c().c(this.f17623v, "twist_threshold", Float.valueOf(this.f17613i));
            gr.c().c(this.f17623v, "twist_single_threshold", Boolean.valueOf(this.qp));
            gr.c().c(this.f17623v, "twist_x_threshold", Float.valueOf(this.pf));
            gr.c().c(this.f17623v, "twist_y_threshold", Float.valueOf(this.sv));
            gr.c().c(this.f17623v, "twist_z_threshold", Float.valueOf(this.f17614ic));
        } catch (Throwable unused) {
        }
    }

    private void n(float f10) {
        if (System.currentTimeMillis() - this.rl >= 500) {
            this.qy = false;
            i();
        } else if (f10 >= this.rh) {
            this.qy = true;
            i();
        }
    }

    private void sp(int i10) {
        if (this.f17621t != null) {
            x(i10);
            this.f17621t.c(getType());
        }
        this.tt = System.currentTimeMillis();
    }

    public void c(boolean z10) {
        Context context;
        StringBuilder sb2 = new StringBuilder("cus:");
        sb2.append(z10);
        sb2.append(" m:");
        sb2.append(this.f17620q);
        sb2.append(" equ:");
        sb2.append(this.sl != null);
        m.c("xgcc", sb2.toString());
        if (!z10) {
            sl slVar = this.sl;
            if (slVar != null) {
                slVar.c(this);
                this.sl = null;
                return;
            }
            return;
        }
        if (this.f17620q || this.sl != null || (context = this.kk) == null) {
            return;
        }
        this.sl = n.c(context);
    }

    public void uj(int i10) {
        this.lt = true;
        tt(i10);
    }

    private void sp(float f10) {
        if (!c(this.my == 7, f10) || System.currentTimeMillis() - this.sp <= 2000) {
            return;
        }
        tt(false);
        if (this.f17621t != null) {
            x(13);
            this.f17621t.c(getType());
        }
        this.sp = System.currentTimeMillis();
    }

    private void uj(float f10) {
        boolean z10 = this.my == 4;
        if (!c(z10, f10) || System.currentTimeMillis() - this.sp <= 2000) {
            return;
        }
        if (this.f17621t != null) {
            x(z10 ? 12 : 11);
            this.f17621t.c(getType());
        }
        this.sp = System.currentTimeMillis();
    }

    public void tt(int i10) {
        n();
        this.f17623v = i10;
        yv yvVar = tx;
        if (yvVar != null) {
            yvVar.c(i10, hashCode());
        }
        da();
    }

    public void a(int i10) {
        sl slVar = this.sl;
        if (slVar == null) {
            return;
        }
        if (i10 == 3 || i10 == 2 || i10 == 4 || i10 == 7) {
            if (this.f17616m == null && slVar != null) {
                this.f17616m = slVar.c(4);
            }
            if (this.f17616m != null) {
                this.my = i10;
                return;
            }
        }
        this.my = 0;
    }

    public void c(c cVar) {
        this.f17621t = cVar;
    }

    /* JADX WARN: Code duplicated, block: B:35:0x00b6  */
    private void tt(SensorEvent sensorEvent) {
        boolean z10;
        float f10 = this.yv;
        if (f10 != 0.0f) {
            float f11 = (sensorEvent.timestamp - f10) * 1.0E-9f;
            float[] fArr = this.f17619p;
            float f12 = fArr[0];
            float[] fArr2 = sensorEvent.values;
            float f13 = f12 + (fArr2[0] * f11);
            fArr[0] = f13;
            fArr[1] = fArr[1] + (fArr2[1] * f11);
            fArr[2] = fArr[2] + (fArr2[2] * f11);
            float fAbs = Math.abs((float) Math.toDegrees(f13));
            float fAbs2 = Math.abs((float) Math.toDegrees(this.f17619p[1]));
            float fAbs3 = Math.abs((float) Math.toDegrees(this.f17619p[2]));
            if (this.qp) {
                boolean z11 = this.f17618nb && c(fAbs, this.pf);
                boolean z12 = this.bx && c(fAbs2, this.sv);
                boolean z13 = this.aw && c(fAbs3, this.f17614ic);
                if (z11 || z12 || z13) {
                    c(2, this.f17619p);
                    float[] fArr3 = this.f17619p;
                    fArr3[0] = 0.0f;
                    fArr3[1] = 0.0f;
                    fArr3[2] = 0.0f;
                    z10 = true;
                } else {
                    z10 = false;
                }
            } else if (c(fAbs, this.f17613i) || c(fAbs2, this.f17613i) || c(fAbs3, this.f17613i)) {
                c(2, this.f17619p);
                float[] fArr4 = this.f17619p;
                fArr4[0] = 0.0f;
                fArr4[1] = 0.0f;
                fArr4[2] = 0.0f;
                z10 = true;
            } else {
                z10 = false;
            }
            if (z10 && System.currentTimeMillis() - this.sp > 2000) {
                if (this.f17621t != null) {
                    x(11);
                    this.f17621t.c(getType());
                }
                this.sp = System.currentTimeMillis();
            }
            tt ttVar = this.f17622u;
            if (ttVar != null) {
                float[] fArr5 = this.f17619p;
                ttVar.c(fArr5[0], fArr5[1], fArr5[2]);
            }
        }
        this.yv = sensorEvent.timestamp;
    }

    public void c(tt ttVar) {
        this.f17622u = ttVar;
    }

    public static void c(yv yvVar) {
        tx = yvVar;
    }

    public boolean c(int i10) {
        yv yvVar;
        i(i10);
        if (i10 > 0 && (yvVar = tx) != null && !yvVar.c(i10)) {
            tx.c(i10, hashCode(), new Runnable() { // from class: com.byazt.nr.zm.1
                @Override // java.lang.Runnable
                public void run() {
                    zm.this.uj();
                }
            });
            return true;
        }
        return uj();
    }

    public void ve(int i10) {
        this.lt = false;
        c(i10);
    }

    private void c(SensorEvent sensorEvent) {
        long j10 = this.md;
        if (j10 != 0) {
            float[] fArr = sensorEvent.values;
            float f10 = fArr[0];
            float f11 = fArr[1];
            float f12 = fArr[2];
            float f13 = (sensorEvent.timestamp - j10) * 1.0E-9f;
            float f14 = this.f17611h;
            if (f14 != 0.0f) {
                if (tt(f14, f10) && tt(this.f17611h, f11) && tt(this.f17611h, f12)) {
                    c(f10, f11, f12, f13);
                } else {
                    tt(true);
                }
            } else {
                float f15 = this.kp;
                if (f15 != 0.0f && this.eo >= f15) {
                    tt(true);
                } else {
                    c(f10, f11, f12, f13);
                }
            }
            if (this.my == 7) {
                sp(this.f17613i);
            } else {
                uj(this.f17613i);
            }
            tt ttVar = this.f17622u;
            if (ttVar != null) {
                float[] fArr2 = this.f17626zb;
                ttVar.c(fArr2[0], fArr2[1], fArr2[2]);
            }
        }
        this.md = sensorEvent.timestamp;
    }

    public void ve(JSONObject jSONObject) {
        if (this.gr != 1) {
            return;
        }
        if (jSONObject == null) {
            this.to = 0;
            this.tk = 0;
        } else {
            this.to = jSONObject.optInt("double_direct_conf", 0);
            this.tk = jSONObject.optInt("double_direct_match", 0);
        }
    }

    public void ve(float f10) {
        this.rh = f10;
    }

    private boolean c(boolean z10, float f10) {
        float fAbs = Math.abs((float) Math.toDegrees(this.f17626zb[0]));
        float fAbs2 = Math.abs((float) Math.toDegrees(this.f17626zb[1]));
        float fAbs3 = Math.abs((float) Math.toDegrees(this.f17626zb[2]));
        if (this.qp) {
            boolean z11 = this.f17618nb && c(fAbs, this.pf);
            boolean z12 = this.bx && c(fAbs2, this.sv);
            boolean z13 = this.aw && c(fAbs3, this.f17614ic);
            if (!z11 && !z12 && !z13) {
                return false;
            }
            c(2, this.f17626zb);
            return c(z10, z11, z12, z13);
        }
        boolean zC = c(fAbs, f10);
        boolean zC2 = c(fAbs2, f10);
        boolean zC3 = c(fAbs3, f10);
        if (!zC && !zC2 && !zC3) {
            return false;
        }
        c(2, this.f17626zb);
        return c(z10, zC, zC2, zC3);
    }

    private boolean tt(float f10, float f11) {
        return Math.abs(f11) < f10;
    }

    private void tt(boolean z10) {
        float[] fArr = this.f17626zb;
        fArr[0] = 0.0f;
        fArr[1] = 0.0f;
        fArr[2] = 0.0f;
    }

    public void tt(float f10) {
        this.f17613i = f10;
    }

    public void tt(JSONObject jSONObject) {
        if (this.gr != 2) {
            return;
        }
        if (jSONObject == null) {
            this.tk = 0;
        } else {
            this.tk = jSONObject.optInt("double_direct_match", 0);
        }
    }

    private void tt(boolean z10, SensorEvent sensorEvent) {
        if (z10) {
            float[] fArr = sensorEvent.values;
            int iC = c(fArr[0], this.f17612hd);
            int iC2 = c(fArr[1], this.bm);
            int iC3 = c(fArr[2], this.lr);
            if (tt(iC, iC2, iC3, true)) {
                c(iC, iC2, iC3, true);
                sp(2);
            } else if (this.tk == 1) {
                this.f17612hd = iC;
                this.bm = iC2;
                this.lr = iC3;
            } else {
                this.f17612hd = iC | this.f17612hd;
                this.bm |= iC2;
                this.lr = iC3 | this.lr;
            }
            c(1, sensorEvent.values);
        }
    }

    private void c(float f10, float f11, float f12, float f13) {
        float[] fArr = this.f17626zb;
        fArr[0] = fArr[0] + (f10 * f13);
        fArr[1] = fArr[1] + (f11 * f13);
        fArr[2] = fArr[2] + (f12 * f13);
    }

    public void c(float f10) {
        this.f17624x = f10;
    }

    public void c(ve veVar) {
        this.f17607b = veVar;
    }

    public void c(JSONObject jSONObject) {
        if (this.gr != 2) {
            return;
        }
        this.cu = jSONObject;
        if (jSONObject == null) {
            this.f17618nb = false;
            this.bx = false;
            this.aw = false;
        } else {
            this.f17618nb = jSONObject.has("x_threshold");
            this.pf = c(this.cu.optDouble("x_threshold", 50.0d));
            this.bx = this.cu.has("y_threshold");
            this.sv = c(this.cu.optDouble("y_threshold", 50.0d));
            this.aw = this.cu.has("z_threshold");
            this.f17614ic = c(this.cu.optDouble("z_threshold", 50.0d));
        }
        this.qp = this.f17618nb || this.bx || this.aw;
    }

    private boolean tt(int i10, int i11, int i12, boolean z10) {
        boolean zC;
        boolean zC2;
        boolean zC3;
        boolean zC4;
        int i13 = this.to;
        if (i13 == 1) {
            int i14 = this.lr;
            zC = z10 ? c(i12, i14) : c(i12, i14, this.pu);
        } else if (i13 == 2) {
            int i15 = this.bm;
            zC = z10 ? c(i11, i15) : c(i11, i15, this.lo);
        } else {
            if (i13 != 4) {
                if (i13 != 7) {
                    if (z10) {
                        zC2 = c(i10, this.f17612hd);
                        zC3 = c(i11, this.bm);
                        zC4 = c(i12, this.lr);
                    } else {
                        zC2 = c(i10, this.f17612hd, this.f17615l);
                        zC3 = c(i11, this.bm, this.lo);
                        zC4 = c(i12, this.lr, this.pu);
                    }
                    if (zC2 || zC3 || zC4) {
                        return true;
                    }
                } else if (z10) {
                    if (c(i10, this.f17612hd) && c(i11, this.bm) && c(i12, this.lr)) {
                        return true;
                    }
                } else if (c(i10, this.f17612hd, this.f17615l) && c(i11, this.bm, this.lo) && c(i12, this.lr, this.pu)) {
                    return true;
                }
                return false;
            }
            int i16 = this.f17612hd;
            zC = z10 ? c(i10, i16) : c(i10, i16, this.f17615l);
        }
        return zC;
    }

    public boolean c() {
        return this.qy;
    }

    private float c(float f10, float f11, float f12) {
        return Math.max(Math.max(f11, f10), f12);
    }

    private void c(boolean z10, double d10, SensorEvent sensorEvent) {
        if (!x() && z10) {
            sp(1);
        } else if (z10) {
            this.rl = System.currentTimeMillis();
            this.gu = true;
            n((float) d10);
        } else if (this.gu && System.currentTimeMillis() - this.rl >= 500) {
            this.qy = false;
            i();
        }
        if (z10) {
            c(1, sensorEvent.values);
        }
    }

    private void c(boolean z10, SensorEvent sensorEvent) {
        if (z10) {
            float[] fArr = sensorEvent.values;
            int iC = c(fArr[0], this.f17612hd);
            int iC2 = c(fArr[1], this.bm);
            int iC3 = c(fArr[2], this.lr);
            if (tt(iC, iC2, iC3, false)) {
                c(iC, iC2, iC3, true);
                sp(3);
            } else {
                this.f17612hd |= iC;
                if (iC <= 0) {
                    iC = this.f17615l;
                }
                this.f17615l = iC;
                this.bm |= iC2;
                if (iC2 <= 0) {
                    iC2 = this.lo;
                }
                this.lo = iC2;
                this.lr |= iC3;
                if (iC3 <= 0) {
                    iC3 = this.pu;
                }
                this.pu = iC3;
            }
            c(1, sensorEvent.values);
        }
    }

    private boolean c(boolean z10, boolean z11, boolean z12, boolean z13) {
        if (!z10) {
            tt(false);
            return true;
        }
        int iA = z11 ? a(this.f17626zb[0]) : 0;
        int iA2 = z12 ? a(this.f17626zb[1]) : 0;
        int iA3 = z13 ? a(this.f17626zb[2]) : 0;
        if (this.my != 7) {
            tt(false);
        }
        if (!c(iA, this.f17612hd) && !c(iA2, this.bm) && !c(iA3, this.lr)) {
            if (this.tk != 1) {
                c(iA, iA2, iA3, false);
            } else if (z11 || z12 || z13) {
                this.f17612hd = iA;
                this.bm = iA2;
                this.lr = iA3;
            }
            return false;
        }
        c(iA, iA2, iA3, true);
        return true;
    }

    private void c(int i10, int i11, int i12, boolean z10) {
        if (z10) {
            this.f17612hd = 0;
            this.bm = 0;
            this.lr = 0;
            this.f17615l = 0;
            this.lo = 0;
            this.pu = 0;
            return;
        }
        if (i10 == 0) {
            i10 = this.f17612hd;
        }
        this.f17612hd = i10;
        if (i11 == 0) {
            i11 = this.bm;
        }
        this.bm = i11;
        if (i12 == 0) {
            i12 = this.lr;
        }
        this.lr = i12;
    }

    private int c(float f10, int i10) {
        if (f10 != 0.0f) {
            return a(f10);
        }
        if (i10 == 0) {
            return 0;
        }
        return i10 == 2 ? 1 : 2;
    }

    private void c(int i10, float[] fArr) {
        gr.c().c(this.f17623v, i10, fArr);
    }
}
