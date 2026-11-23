package com.beizi.fusion.tool;

import android.content.Context;
import android.hardware.Sensor;
import android.hardware.SensorEvent;
import android.hardware.SensorEventListener;
import android.hardware.SensorManager;
import android.text.TextUtils;
import android.util.Pair;
import android.view.View;
import android.view.ViewGroup;
import com.beizi.fusion.model.AdSpacesBean;
import com.beizi.fusion.update.ShakeArcView;
import com.beizi.fusion.widget.ShakeView;
import com.bytedance.sdk.openadsdk.TTAdConstant;
import com.umeng.analytics.pro.bm;
import java.math.BigDecimal;
import java.util.Arrays;
import java.util.Collections;
import java.util.HashMap;
import java.util.List;
import java.util.Map;
import java.util.Random;

/* JADX INFO: loaded from: classes6.dex */
public class aq {

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    private static SensorManager f10545c;
    private int A;
    private boolean B;
    private Map C;
    private boolean D;
    private double E;
    private float J;
    private int M;
    private Sensor N;
    private float O;
    private float R;
    private float S;
    private float T;
    private float U;
    private float V;
    private float W;
    private boolean X;
    private boolean Y;
    private long Z;

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    ShakeView f10546a;

    /* JADX INFO: renamed from: aa, reason: collision with root package name */
    private boolean f10547aa;

    /* JADX INFO: renamed from: ab, reason: collision with root package name */
    private int f10548ab;

    /* JADX INFO: renamed from: ac, reason: collision with root package name */
    private int f10549ac;

    /* JADX INFO: renamed from: ad, reason: collision with root package name */
    private String f10550ad;
    private long ae;
    private long af;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    private Context f10552d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    private double f10553e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    private double f10554f;

    /* JADX INFO: renamed from: g, reason: collision with root package name */
    private double f10555g;

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    private int f10556h;

    /* JADX INFO: renamed from: i, reason: collision with root package name */
    private int f10557i;

    /* JADX INFO: renamed from: j, reason: collision with root package name */
    private int f10558j;

    /* JADX INFO: renamed from: k, reason: collision with root package name */
    private int f10559k;

    /* JADX INFO: renamed from: x, reason: collision with root package name */
    private boolean f10572x;

    /* JADX INFO: renamed from: y, reason: collision with root package name */
    private double f10573y;

    /* JADX INFO: renamed from: z, reason: collision with root package name */
    private int f10574z;

    /* JADX INFO: renamed from: l, reason: collision with root package name */
    private int f10560l = 0;

    /* JADX INFO: renamed from: m, reason: collision with root package name */
    private int f10561m = 0;

    /* JADX INFO: renamed from: n, reason: collision with root package name */
    private float f10562n = -100.0f;

    /* JADX INFO: renamed from: o, reason: collision with root package name */
    private float f10563o = -100.0f;

    /* JADX INFO: renamed from: p, reason: collision with root package name */
    private float f10564p = -100.0f;

    /* JADX INFO: renamed from: q, reason: collision with root package name */
    private int f10565q = 0;

    /* JADX INFO: renamed from: r, reason: collision with root package name */
    private a f10566r = null;

    /* JADX INFO: renamed from: s, reason: collision with root package name */
    private boolean f10567s = false;

    /* JADX INFO: renamed from: t, reason: collision with root package name */
    private int f10568t = 200;

    /* JADX INFO: renamed from: u, reason: collision with root package name */
    private long f10569u = 0;

    /* JADX INFO: renamed from: v, reason: collision with root package name */
    private ShakeArcView f10570v = null;

    /* JADX INFO: renamed from: w, reason: collision with root package name */
    private int f10571w = 0;
    private float[] F = new float[3];
    private float[] G = new float[3];
    private final SensorEventListener H = new SensorEventListener() { // from class: com.beizi.fusion.tool.aq.1
        @Override // android.hardware.SensorEventListener
        public void onAccuracyChanged(Sensor sensor, int i10) {
        }

        @Override // android.hardware.SensorEventListener
        public void onSensorChanged(SensorEvent sensorEvent) {
            if (sensorEvent == null) {
                return;
            }
            try {
                Sensor sensor = sensorEvent.sensor;
                if (sensor == null) {
                    return;
                }
                int type = sensor.getType();
                if (type == 1) {
                    if (aq.this.n()) {
                        aq.this.c(sensorEvent);
                    } else {
                        aq.this.a(sensorEvent);
                    }
                } else if (type == 2) {
                    aq.this.G = (float[]) sensorEvent.values.clone();
                } else if (type == 4) {
                    if (aq.this.n()) {
                        aq.this.d(sensorEvent);
                    } else {
                        aq.this.b(sensorEvent);
                    }
                }
            } catch (Exception e10) {
                e10.printStackTrace();
            }
        }
    };
    private float I = 0.0f;
    private float K = 0.0f;
    private float L = 0.0f;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    final float f10551b = 0.85f;
    private float P = 1.0E-9f;
    private float[] Q = new float[3];
    private double ag = 0.35d;
    private float[] ah = new float[3];
    private Random ai = new Random();

    public interface a {
        void b();
    }

    public aq(Context context) {
        this.f10552d = context;
        f10545c = (SensorManager) context.getApplicationContext().getSystemService("sensor");
    }

    private void f() {
        int i10;
        ShakeArcView shakeArcView = this.f10570v;
        if (shakeArcView == null || (i10 = this.f10571w) == 0) {
            return;
        }
        if (i10 != 1) {
            if (i10 == 2) {
                shakeArcView.setMaxProgress(this.f10556h);
            }
        } else {
            if (this.f10557i > 0) {
                double d10 = this.f10555g;
                if (d10 > 0.0d) {
                    shakeArcView.setMaxProgress(d10);
                    return;
                }
            }
            shakeArcView.setMaxProgress(this.f10553e);
        }
    }

    private void g() {
        Pair<Integer, Boolean> pairF = f(this.f10559k);
        if (((Boolean) pairF.second).booleanValue()) {
            w.a(new Runnable() { // from class: com.beizi.fusion.tool.aq.2
                @Override // java.lang.Runnable
                public void run() {
                    aq.this.a();
                }
            }, this.f10558j + (((Integer) pairF.first).intValue() * 10));
        }
    }

    private Map h() {
        HashMap map = new HashMap();
        map.put("actionType", 1);
        Map map2 = this.C;
        if (map2 == null) {
            map.put("maxAcc", Double.valueOf(i().doubleValue()));
            if (this.B) {
                map.put("angle", Integer.valueOf(j()));
            }
            return map;
        }
        double dDoubleValue = map2.containsKey("maxAcc") ? ((Double) this.C.get("maxAcc")).doubleValue() : 0.0d;
        if (dDoubleValue <= 0.0d) {
            dDoubleValue = i().doubleValue();
        }
        map.put("maxAcc", Double.valueOf(dDoubleValue));
        if (this.B) {
            int iRound = this.C.containsKey("angle") ? (int) Math.round(((Double) this.C.get("angle")).doubleValue()) : 0;
            if (iRound > 0) {
                map.put("angle", Integer.valueOf(iRound));
            } else {
                map.put("angle", Integer.valueOf(j()));
            }
        }
        return map;
    }

    private Double i() {
        return Double.valueOf(Double.parseDouble(String.format("%.2f", Double.valueOf((((double) new Random().nextInt(TTAdConstant.STYLE_SIZE_RADIO_3_2)) / 100.0d) + 15.0d))));
    }

    private int j() {
        int iNextInt = this.A + new Random().nextInt(150 - this.A);
        return iNextInt > 120 ? iNextInt - new Random().nextInt(30) : iNextInt;
    }

    private Map k() {
        HashMap map = new HashMap();
        map.put("actionType", 1);
        map.put("maxAcc", Double.valueOf(Double.parseDouble(String.format("%.2f", Double.valueOf(this.f10573y)))));
        if (this.B) {
            map.put("angle", Long.valueOf(Math.round(this.E)));
        }
        return map;
    }

    private void l() {
        float[] fArr = new float[9];
        SensorManager.getRotationMatrix(fArr, null, this.F, this.G);
        float[] fArr2 = {degrees, 0.0f, 0.0f};
        SensorManager.getOrientation(fArr, fArr2);
        float degrees = (float) Math.toDegrees(fArr2[0]);
        if (degrees == 0.0f) {
            return;
        }
        float f10 = this.I;
        if (f10 == 0.0f) {
            this.I = degrees;
            return;
        }
        float f11 = degrees - f10;
        if (Math.abs(f11) > 180.0f) {
            this.I = fArr2[0];
            return;
        }
        float f12 = this.J + f11;
        this.J = f12;
        if (f12 < this.K) {
            this.K = f12;
        }
        if (f12 > this.L) {
            this.L = f12;
        }
        double dAbs = Math.abs(this.L - this.K);
        if (dAbs <= 360.0d) {
            if (dAbs > 180.0d) {
                this.E = 360.0d - dAbs;
            } else {
                this.E = dAbs;
            }
        }
        double d10 = this.E;
        if (d10 > 120.0d) {
            this.E = d10 - ((double) new Random().nextInt(30));
        }
        this.I = fArr2[0];
    }

    private void m() {
        try {
            SensorManager sensorManager = f10545c;
            if (sensorManager != null) {
                Sensor defaultSensor = sensorManager.getDefaultSensor(4);
                this.N = defaultSensor;
                if (defaultSensor != null) {
                    f10545c.registerListener(this.H, defaultSensor, 1);
                } else {
                    this.X = true;
                }
            }
        } catch (Exception e10) {
            e10.printStackTrace();
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public boolean n() {
        return this.f10574z == 1 && this.f10547aa;
    }

    public void e(int i10) {
        this.f10557i = i10;
    }

    public void b(double d10) {
        this.f10554f = d10;
    }

    public void c(double d10) {
        this.f10555g = d10;
    }

    public void d(int i10) {
        this.f10559k = i10;
        if (i10 > 0) {
            g();
        }
    }

    public Map e() {
        int i10 = this.f10574z;
        if (i10 == 0) {
            return null;
        }
        if (i10 == 2) {
            return h();
        }
        if (i10 == 1) {
            return this.D ? k() : h();
        }
        return null;
    }

    public void b(int i10) {
        this.f10556h = i10;
    }

    public void c(int i10) {
        this.f10558j = i10;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void a(SensorEvent sensorEvent) {
        float[] fArr;
        int i10;
        if (sensorEvent == null || (fArr = sensorEvent.values) == null || fArr.length < 3) {
            return;
        }
        float f10 = fArr[0];
        float f11 = fArr[1];
        float f12 = fArr[2];
        if (this.f10562n == -100.0f) {
            this.f10562n = f10;
        }
        if (this.f10563o == -100.0f) {
            this.f10563o = f11;
        }
        if (this.f10564p == -100.0f) {
            this.f10564p = f12;
        }
        double dAbs = ((double) Math.abs(f10 - this.f10562n)) / 9.8d;
        double dAbs2 = ((double) Math.abs(f11 - this.f10563o)) / 9.8d;
        double dAbs3 = ((double) Math.abs(f12 - this.f10564p)) / 9.8d;
        double d10 = this.f10555g;
        if (dAbs > d10) {
            this.f10561m++;
            this.f10562n = f10;
        }
        if (dAbs2 > d10) {
            this.f10561m++;
            this.f10563o = f11;
        }
        if (dAbs3 > d10) {
            this.f10561m++;
            this.f10564p = f12;
        }
        if (this.D && this.B) {
            float[] fArr2 = (float[]) sensorEvent.values.clone();
            this.F = fArr2;
            float f13 = fArr2[0] * 0.85f;
            float[] fArr3 = sensorEvent.values;
            fArr2[0] = f13 + (fArr3[0] * 0.14999998f);
            fArr2[1] = (fArr2[1] * 0.85f) + (fArr3[1] * 0.14999998f);
            fArr2[2] = (fArr2[2] * 0.85f) + (fArr3[2] * 0.14999998f);
            l();
        }
        double dA = a(f10, f11, f12, this.f10553e);
        if (dA > this.f10553e) {
            if (this.D && this.f10565q == 0) {
                double dA2 = a(f10, f11, f12);
                if (this.f10573y < dA2) {
                    this.f10573y = dA2;
                }
            }
            this.f10565q = 1;
        }
        if (this.f10565q == 1 && b(f10, f11, f12, this.f10554f)) {
            this.f10565q = 2;
            this.f10560l++;
        }
        a(dAbs, dAbs2, dAbs3, dA);
        int i11 = this.f10556h;
        if ((i11 <= 0 || this.f10560l < i11) && ((i10 = this.f10557i) <= 0 || this.f10561m < i10)) {
            return;
        }
        if (this.D && this.B && this.E < this.A) {
            this.f10560l--;
            return;
        }
        ac.b("ShakeUtil", "mShakeCount = " + this.f10560l + ",dstShakeCount = " + this.f10556h + ",mRotateCount = " + this.f10561m + ",dstRotateCount = " + this.f10557i);
        this.Y = true;
        if (this.X) {
            a();
        }
    }

    private boolean b(float f10, float f11, float f12, double d10) {
        return Math.sqrt((Math.pow(((double) f10) / 9.8d, 2.0d) + Math.pow(((double) f11) / 9.8d, 2.0d)) + Math.pow(((double) f12) / 9.8d, 2.0d)) < d10;
    }

    public void c() {
        ac.a("BeiZis", "enter unRegisterShakeListenerAndSetDefault");
        SensorManager sensorManager = f10545c;
        if (sensorManager != null) {
            sensorManager.unregisterListener(this.H);
        }
        d();
        ShakeView shakeView = this.f10546a;
        if (shakeView != null) {
            shakeView.stopShake();
        }
    }

    protected void d() {
        this.f10567s = false;
        this.f10560l = 0;
        this.f10561m = 0;
        this.f10562n = -100.0f;
        this.f10563o = -100.0f;
        this.f10564p = -100.0f;
        this.f10565q = 0;
        this.f10566r = null;
        this.f10552d = null;
        this.f10546a = null;
        this.f10568t = 200;
        this.f10570v = null;
        this.R = 0.0f;
        this.S = 0.0f;
        this.T = 0.0f;
        this.U = 0.0f;
        this.V = 0.0f;
        this.W = 0.0f;
        this.O = 0.0f;
        this.Y = false;
        if (this.M > 0) {
            this.X = false;
        }
    }

    public void b() {
        SensorManager sensorManager = f10545c;
        if (sensorManager != null) {
            sensorManager.registerListener(this.H, sensorManager.getDefaultSensor(1), 100000);
        }
    }

    public static Pair<Integer, Boolean> f(int i10) {
        int iRandom = (int) ((Math.random() * 100.0d) + 1.0d);
        if (iRandom <= i10) {
            return new Pair<>(Integer.valueOf(iRandom), Boolean.TRUE);
        }
        return new Pair<>(Integer.valueOf(iRandom), Boolean.FALSE);
    }

    public void g(int i10) {
        this.f10568t = i10;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void b(SensorEvent sensorEvent) {
        if (sensorEvent != null) {
            try {
                if (!this.f10567s && System.currentTimeMillis() - this.Z >= 50) {
                    Sensor sensor = sensorEvent.sensor;
                    float[] fArr = sensorEvent.values;
                    int type = sensor.getType();
                    if (fArr != null && type == 4) {
                        this.Z = System.currentTimeMillis();
                        float f10 = this.O;
                        if (f10 != 0.0f) {
                            float f11 = fArr[0];
                            float f12 = fArr[1];
                            float f13 = fArr[2];
                            float f14 = (sensorEvent.timestamp - f10) * this.P;
                            float[] fArr2 = this.Q;
                            fArr2[0] = (float) (((double) fArr2[0]) + Math.toDegrees(f11 * f14));
                            float[] fArr3 = this.Q;
                            fArr3[1] = (float) (((double) fArr3[1]) + Math.toDegrees(f12 * f14));
                            float[] fArr4 = this.Q;
                            fArr4[2] = (float) (((double) fArr4[2]) + Math.toDegrees(f13 * f14));
                            float[] fArr5 = this.Q;
                            float f15 = fArr5[0];
                            if (f15 > 0.0f) {
                                if (f15 > this.U) {
                                    this.U = f15;
                                }
                            } else if (f15 < this.R) {
                                this.R = f15;
                            }
                            float f16 = fArr5[1];
                            if (f16 > 0.0f) {
                                if (f16 > this.V) {
                                    this.V = f16;
                                }
                            } else if (f16 < this.S) {
                                this.S = f16;
                            }
                            float f17 = fArr5[2];
                            if (f17 > 0.0f) {
                                if (f17 > this.W) {
                                    this.W = f17;
                                }
                            } else if (f17 < this.T) {
                                this.T = f17;
                            }
                            if ((Math.abs(this.R) > this.M && Math.abs(this.U) > this.M) || ((Math.abs(this.S) > this.M && Math.abs(this.V) > this.M) || (Math.abs(this.T) > this.M && Math.abs(this.W) > this.M))) {
                                ac.a("ShakeUtil", "rotate  xMin: " + String.format("%.4f", Float.valueOf(this.R)) + ",xMax: " + String.format("%.4f", Float.valueOf(this.U)) + ",yMin: " + String.format("%.4f", Float.valueOf(this.S)) + ",yMax: " + String.format("%.4f", Float.valueOf(this.V)) + ",zMin: " + String.format("%.4f", Float.valueOf(this.T)) + ",zMax: " + String.format("%.4f", Float.valueOf(this.W)));
                                this.X = true;
                            }
                            if (this.Y && this.X) {
                                a();
                            }
                        }
                        this.O = sensorEvent.timestamp;
                    }
                }
            } catch (Exception e10) {
                e10.printStackTrace();
            }
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void c(SensorEvent sensorEvent) {
        if (sensorEvent == null) {
            return;
        }
        try {
            float[] fArr = sensorEvent.values;
            if (fArr != null && fArr.length >= 3) {
                double dA = a(fArr[0], fArr[1], fArr[2]);
                if (dA > 10.7d && this.ae > 0) {
                    this.af += System.currentTimeMillis() - this.ae;
                }
                this.ae = System.currentTimeMillis();
                if (this.f10573y < dA) {
                    this.f10573y = dA;
                }
                if (dA > this.f10549ac) {
                    ac.b("ShakeUtil", "tempShakeAcc:" + dA + ";shakeMaxAngle:" + this.E + ";mShakeDurationTime:" + this.af + ";mDirection:" + this.f10550ad);
                }
                if (this.f10573y >= this.f10549ac && this.E >= this.A && this.af >= this.f10548ab) {
                    this.Y = true;
                    if (this.X) {
                        a();
                    }
                }
            }
        } catch (Exception e10) {
            e10.printStackTrace();
        }
    }

    public void h(int i10) {
        this.M = i10;
        if (i10 > 0) {
            m();
        } else {
            this.X = true;
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void d(SensorEvent sensorEvent) {
        if (sensorEvent != null) {
            try {
                if (!this.f10567s && System.currentTimeMillis() - this.Z >= 50) {
                    Sensor sensor = sensorEvent.sensor;
                    float[] fArr = sensorEvent.values;
                    int type = sensor.getType();
                    if (fArr != null && type == 4) {
                        this.Z = System.currentTimeMillis();
                        float f10 = this.O;
                        if (f10 != 0.0f) {
                            float f11 = fArr[0];
                            float f12 = fArr[1];
                            float f13 = fArr[2];
                            double d10 = this.ag;
                            double d11 = ((double) f11) * d10;
                            float[] fArr2 = this.ah;
                            float f14 = (float) (d11 + ((1.0d - d10) * ((double) fArr2[0])));
                            fArr2[0] = f14;
                            float f15 = (float) ((d10 * ((double) f12)) + ((1.0d - d10) * ((double) fArr2[1])));
                            fArr2[1] = f15;
                            float f16 = (float) ((d10 * ((double) f13)) + ((1.0d - d10) * ((double) fArr2[2])));
                            fArr2[2] = f16;
                            float f17 = (sensorEvent.timestamp - f10) * this.P;
                            float[] fArr3 = this.Q;
                            fArr3[0] = (float) (((double) fArr3[0]) + Math.toDegrees(f14 * f17));
                            float[] fArr4 = this.Q;
                            fArr4[1] = (float) (((double) fArr4[1]) + Math.toDegrees(f15 * f17));
                            float[] fArr5 = this.Q;
                            fArr5[2] = (float) (((double) fArr5[2]) + Math.toDegrees(f16 * f17));
                            float[] fArr6 = this.Q;
                            float f18 = fArr6[0];
                            if (f18 > 0.0f) {
                                if (f18 > this.U) {
                                    this.U = f18;
                                }
                            } else if (f18 < this.R) {
                                this.R = f18;
                            }
                            float f19 = fArr6[1];
                            if (f19 > 0.0f) {
                                if (f19 > this.V) {
                                    this.V = f19;
                                }
                            } else if (f19 < this.S) {
                                this.S = f19;
                            }
                            float f20 = fArr6[2];
                            if (f20 > 0.0f) {
                                if (f20 > this.W) {
                                    this.W = f20;
                                }
                            } else if (f20 < this.T) {
                                this.T = f20;
                            }
                            if (n() && ((Math.abs(this.R) > this.A && Math.abs(this.U) > this.A) || ((Math.abs(this.S) > this.A && Math.abs(this.V) > this.A) || (Math.abs(this.T) > this.A && Math.abs(this.W) > this.A)))) {
                                List listAsList = Arrays.asList(Float.valueOf(Math.abs(this.R)), Float.valueOf(Math.abs(this.U)), Float.valueOf(Math.abs(this.S)), Float.valueOf(Math.abs(this.V)), Float.valueOf(Math.abs(this.T)), Float.valueOf(Math.abs(this.W)));
                                Float f21 = (Float) Collections.max(listAsList);
                                int iIndexOf = listAsList.indexOf(f21);
                                if (this.E < f21.floatValue() && (this.f10573y < this.f10549ac || this.E < this.A)) {
                                    this.E = f21.floatValue();
                                    if (iIndexOf == 0 || iIndexOf == 1) {
                                        this.f10550ad = "x";
                                    } else if (iIndexOf == 2 || iIndexOf == 3) {
                                        this.f10550ad = "y";
                                    } else if (iIndexOf == 4 || iIndexOf == 5) {
                                        this.f10550ad = bm.aH;
                                    }
                                }
                            }
                            if (this.M > 0) {
                                if ((Math.abs(this.R) > this.M && Math.abs(this.U) > this.M) || ((Math.abs(this.S) > this.M && Math.abs(this.V) > this.M) || (Math.abs(this.T) > this.M && Math.abs(this.W) > this.M))) {
                                    ac.a("ShakeUtil", "rotate  xMin: " + String.format("%.4f", Float.valueOf(this.R)) + ",xMax: " + String.format("%.4f", Float.valueOf(this.U)) + ",yMin: " + String.format("%.4f", Float.valueOf(this.S)) + ",yMax: " + String.format("%.4f", Float.valueOf(this.V)) + ",zMin: " + String.format("%.4f", Float.valueOf(this.T)) + ",zMax: " + String.format("%.4f", Float.valueOf(this.W)));
                                    this.X = true;
                                }
                                if (this.Y && this.X) {
                                    a();
                                }
                            }
                        }
                        this.O = sensorEvent.timestamp;
                    }
                }
            } catch (Exception e10) {
                e10.printStackTrace();
            }
        }
    }

    public void a(AdSpacesBean.BuyerBean.ShakeViewBean shakeViewBean) {
        if (shakeViewBean == null) {
            return;
        }
        ac.c("ShakeUtil", "setShakeParams mShakeCount:" + shakeViewBean.getShakeCount() + ";mRotateCount:" + shakeViewBean.getRotatCount());
        try {
            this.f10562n = -100.0f;
            this.f10563o = -100.0f;
            this.f10564p = -100.0f;
            this.f10560l = 0;
            this.f10561m = 0;
            this.f10565q = 0;
            b(shakeViewBean.getShakeCount());
            a(shakeViewBean.getShakeStartAmplitude());
            b(shakeViewBean.getShakeEndAmplitude());
            c(shakeViewBean.getRotatAmplitude());
            e(shakeViewBean.getRotatCount());
            c(shakeViewBean.getRandomClickTime());
            d(shakeViewBean.getRandomClickNum());
            g(shakeViewBean.getAnimationInterval());
            f();
        } catch (Exception e10) {
            e10.printStackTrace();
        }
    }

    public void a(AdSpacesBean.BuyerBean.CoolShakeViewBean coolShakeViewBean) {
        if (coolShakeViewBean == null) {
            return;
        }
        ac.c("ShakeUtil", "setShakeCoolParams mShakeCount:" + coolShakeViewBean.getShakeCount() + ";mRotateCount:" + coolShakeViewBean.getRotatCount());
        try {
            b(coolShakeViewBean.getShakeCount());
            a(coolShakeViewBean.getShakeStartAmplitude());
            b(coolShakeViewBean.getShakeEndAmplitude());
            c(coolShakeViewBean.getRotatAmplitude());
            e(coolShakeViewBean.getRotatCount());
        } catch (Exception e10) {
            e10.printStackTrace();
        }
    }

    public void a(AdSpacesBean.BuyerBean.AliaseShakeViewBean aliaseShakeViewBean) {
        if (aliaseShakeViewBean == null) {
            return;
        }
        ac.c("ShakeUtil", "setShakeAliaseParams mShakeCount:" + aliaseShakeViewBean.getShakeCount() + ";mRotateCount:" + aliaseShakeViewBean.getRotatCount());
        try {
            b(aliaseShakeViewBean.getShakeCount());
            a(aliaseShakeViewBean.getShakeStartAmplitude());
            b(aliaseShakeViewBean.getShakeEndAmplitude());
            c(aliaseShakeViewBean.getRotatAmplitude());
            e(aliaseShakeViewBean.getRotatCount());
        } catch (Exception e10) {
            e10.printStackTrace();
        }
    }

    public void a(ShakeArcView shakeArcView, int i10) {
        ac.c("ShakeUtil", "setShakeFeedback feedback:" + i10);
        a(shakeArcView);
        a(i10);
        f();
    }

    private void a(double d10, double d11, double d12, double d13) {
        double d14;
        ShakeArcView shakeArcView = this.f10570v;
        if (shakeArcView == null) {
            return;
        }
        if (this.f10571w == 2) {
            shakeArcView.setCurrentProgress(this.f10560l);
            return;
        }
        if (this.f10557i > 0 && this.f10555g > 0.0d) {
            if (d10 >= d11 && d10 >= d12) {
                d14 = d10;
            } else if (d11 < d10 || d11 < d12) {
                d14 = (d12 < d10 || d12 < d11) ? 0.0d : d12;
            } else {
                d14 = d11;
            }
            double dDoubleValue = new BigDecimal(d14).setScale(2, 4).doubleValue();
            if (dDoubleValue >= 0.1d) {
                this.f10570v.setCurrentProgress(dDoubleValue);
                return;
            } else {
                if (dDoubleValue < 0.1d) {
                    this.f10570v.setCurrentProgress(0.0d);
                    return;
                }
                return;
            }
        }
        int i10 = this.f10556h;
        if (i10 > 0 && this.f10560l >= i10) {
            shakeArcView.setCurrentProgress(this.f10553e);
            return;
        }
        double dDoubleValue2 = new BigDecimal(d13).setScale(2, 4).doubleValue();
        if (dDoubleValue2 >= 1.1d) {
            this.f10570v.setCurrentProgress(dDoubleValue2);
        } else if (dDoubleValue2 < 1.1d) {
            this.f10570v.setCurrentProgress(0.0d);
        }
    }

    public void a(int i10) {
        this.f10571w = i10;
    }

    public void a(double d10) {
        this.f10553e = d10;
    }

    public void a(a aVar) {
        this.f10566r = aVar;
    }

    public void a(ShakeArcView shakeArcView) {
        this.f10570v = shakeArcView;
    }

    private double a(float f10, float f11, float f12, double d10) {
        return Math.sqrt(Math.pow(((double) f10) / 9.8d, 2.0d) + Math.pow(((double) f11) / 9.8d, 2.0d) + Math.pow(((double) f12) / 9.8d, 2.0d));
    }

    protected synchronized void a() {
        StringBuilder sb2 = new StringBuilder();
        sb2.append("enter callBackShakeHappened and mShakeStateListener != null ? ");
        sb2.append(this.f10566r != null);
        sb2.append(",!isCallBack = ");
        sb2.append(!this.f10567s);
        ac.a("BeiZis", sb2.toString());
        if (this.f10566r != null && !this.f10567s) {
            ac.a("BeiZis", "callback onShakeHappened()");
            ShakeArcView shakeArcView = this.f10570v;
            if (shakeArcView != null && !aw.b(shakeArcView)) {
                ac.b("ShakeUtil", "mShakeCount onShakeHappened mShakeArcView is not show");
                this.f10562n = -100.0f;
                this.f10563o = -100.0f;
                this.f10564p = -100.0f;
                this.f10560l = 0;
                this.f10561m = 0;
                this.f10565q = 0;
                return;
            }
            this.f10567s = true;
            this.f10566r.b();
            ShakeView shakeView = this.f10546a;
            if (shakeView != null) {
                shakeView.stopShake();
                c();
            }
        }
    }

    public View a(int i10, int i11, AdSpacesBean.BuyerBean.PercentPositionBean percentPositionBean) {
        int i12;
        int i13;
        int i14;
        int i15;
        ac.a("BeiZis", "enter getShakeView");
        if (this.f10552d == null || percentPositionBean == null) {
            return null;
        }
        this.f10546a = new ShakeView(this.f10552d);
        String centerX = percentPositionBean.getCenterX();
        String centerY = percentPositionBean.getCenterY();
        String width = percentPositionBean.getWidth();
        String height = percentPositionBean.getHeight();
        if (TextUtils.isEmpty(centerX) || "0".equals(centerX)) {
            centerX = "50%";
        }
        if (TextUtils.isEmpty(centerY) || "0".equals(centerY)) {
            centerY = "50%";
        }
        if (TextUtils.isEmpty(width) || "0".equals(width)) {
            width = "180";
        }
        if (TextUtils.isEmpty(height) || "0".equals(height)) {
            height = "180";
        }
        float fI = au.i(this.f10552d);
        if (centerX.endsWith("%")) {
            i12 = (Integer.parseInt(centerX.substring(0, centerX.indexOf("%"))) * i10) / 100;
        } else {
            i12 = Integer.parseInt(centerX);
        }
        if (centerY.endsWith("%")) {
            i13 = (Integer.parseInt(centerY.substring(0, centerY.indexOf("%"))) * i11) / 100;
        } else {
            i13 = Integer.parseInt(centerY);
        }
        int i16 = 400;
        if (width.endsWith("%")) {
            int i17 = Integer.parseInt(width.substring(0, width.indexOf("%")));
            if (fI >= 400.0f) {
                i14 = (i17 * 400) / 100;
                i16 = i14;
            } else {
                i16 = (((int) fI) * i17) / 100;
            }
        } else {
            i14 = Integer.parseInt(width);
            if (i14 < 400) {
                i16 = i14;
            }
        }
        if (height.endsWith("%")) {
            i15 = (Integer.parseInt(height.substring(0, height.indexOf("%"))) * i16) / 100;
        } else {
            i15 = Integer.parseInt(height);
        }
        int iA = au.a(this.f10552d, i16);
        int iA2 = au.a(this.f10552d, i15);
        int iA3 = au.a(this.f10552d, i12);
        int iA4 = au.a(this.f10552d, i13);
        ac.a("BeiZis", "widthInt = " + iA + ",heightInt = " + iA2);
        if (iA == 0) {
            iA = 180;
        }
        if (iA2 == 0) {
            iA2 = iA;
        }
        ViewGroup.MarginLayoutParams marginLayoutParams = new ViewGroup.MarginLayoutParams(iA, iA2);
        ac.a("BeiZis", "centerYInt = " + iA4 + ",centerXInt = " + iA3 + ",adWidthDp = " + i10 + ",adHeightDp = " + i11);
        if (iA4 == 0) {
            iA4 = au.a(this.f10552d, i11) / 2;
        }
        if (iA3 == 0) {
            iA3 = au.a(this.f10552d, i10) / 2;
        }
        marginLayoutParams.topMargin = iA4 - (iA2 / 2);
        marginLayoutParams.leftMargin = iA3 - (iA / 2);
        this.f10546a.setLayoutParams(marginLayoutParams);
        ac.a("BeiZis", "topMargin = " + marginLayoutParams.topMargin + ",leftMargin = " + marginLayoutParams.leftMargin + ",widthInt = " + iA + ",heightInt = " + iA2);
        this.f10546a.setDownloadApp(Boolean.valueOf(this.f10572x));
        this.f10546a.startShake();
        b();
        return this.f10546a;
    }

    public void a(int i10, int i11, boolean z10, Map map) {
        Sensor defaultSensor;
        try {
            this.f10574z = i10;
            this.A = i11;
            this.B = z10;
            this.C = map;
            if (i11 <= 0) {
                this.A = 35;
            }
            if (i10 == 1) {
                if (map == null) {
                    this.D = true;
                    return;
                } else if (!map.containsKey("forceUnreal")) {
                    this.D = true;
                    return;
                } else {
                    Object obj = map.get("forceUnreal");
                    if (!(obj instanceof Boolean ? ((Boolean) obj).booleanValue() : false)) {
                        this.D = true;
                    }
                }
            }
            if (this.D && z10 && (defaultSensor = f10545c.getDefaultSensor(2)) != null) {
                f10545c.registerListener(this.H, defaultSensor, 1);
            }
        } catch (Exception e10) {
            e10.printStackTrace();
        }
    }

    private double a(float f10, float f11, float f12) {
        return Math.sqrt(Math.pow(f10, 2.0d) + Math.pow(f11, 2.0d) + Math.pow(f12, 2.0d));
    }

    public void a(Boolean bool) {
        this.f10572x = bool.booleanValue();
    }
}
