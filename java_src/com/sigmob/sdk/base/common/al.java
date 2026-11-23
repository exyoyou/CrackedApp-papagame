package com.sigmob.sdk.base.common;

import android.content.Context;
import android.hardware.Sensor;
import android.hardware.SensorEvent;
import android.hardware.SensorEventListener;
import android.hardware.SensorManager;
import com.sigmob.sdk.base.models.SensorEntity;
import java.util.HashMap;
import java.util.Map;
import java.util.Timer;
import java.util.TimerTask;

/* JADX INFO: loaded from: classes5.dex */
public class al {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public static String f78945a = "al";

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private static af f78946b;

    /* JADX INFO: renamed from: com.sigmob.sdk.base.common.al$1, reason: invalid class name */
    static /* synthetic */ class AnonymousClass1 {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        static final /* synthetic */ int[] f78947a;

        static {
            int[] iArr = new int[d.values().length];
            f78947a = iArr;
            try {
                iArr[d.SLOPE.ordinal()] = 1;
            } catch (NoSuchFieldError unused) {
            }
            try {
                f78947a[d.SWING.ordinal()] = 2;
            } catch (NoSuchFieldError unused2) {
            }
            try {
                f78947a[d.WRING.ordinal()] = 3;
            } catch (NoSuchFieldError unused3) {
            }
        }
    }

    public static class a implements SensorEventListener {

        /* JADX INFO: renamed from: e, reason: collision with root package name */
        static int[] f78948e = {25, 60, 50, 45, 35, 25, 20, 15, 10, 5, 1};

        /* JADX INFO: renamed from: f, reason: collision with root package name */
        static float[] f78949f = {4.0f, 10.0f, 8.0f, 6.0f, 5.0f, 4.0f, 3.0f, 2.0f, 1.8f, 1.5f, 1.0f};

        /* JADX INFO: renamed from: g, reason: collision with root package name */
        static int[] f78950g = {15, 15, 13, 11, 10, 8, 6, 4, 3, 2, 1};

        /* JADX INFO: renamed from: h, reason: collision with root package name */
        static float[] f78951h = {35.0f, 35.0f, 30.0f, 25.0f, 20.0f, 15.0f, 12.0f, 8.0f, 5.0f, 2.0f, 1.0f};

        /* JADX INFO: renamed from: o, reason: collision with root package name */
        private static float f78952o = 40.0f;
        private boolean A;
        private float B;
        private long D;
        private Integer E;
        private boolean F;
        private boolean G;
        private Timer H;

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        public int f78954b;

        /* JADX INFO: renamed from: c, reason: collision with root package name */
        public int f78955c;

        /* JADX INFO: renamed from: d, reason: collision with root package name */
        public int f78956d;

        /* JADX INFO: renamed from: k, reason: collision with root package name */
        Float f78959k;

        /* JADX INFO: renamed from: l, reason: collision with root package name */
        private SensorEvent f78960l;

        /* JADX INFO: renamed from: m, reason: collision with root package name */
        private SensorEvent f78961m;

        /* JADX INFO: renamed from: n, reason: collision with root package name */
        private SensorEvent f78962n;

        /* JADX INFO: renamed from: p, reason: collision with root package name */
        private c f78963p;

        /* JADX INFO: renamed from: q, reason: collision with root package name */
        private float f78964q;

        /* JADX INFO: renamed from: r, reason: collision with root package name */
        private float f78965r;

        /* JADX INFO: renamed from: s, reason: collision with root package name */
        private float f78966s;

        /* JADX INFO: renamed from: t, reason: collision with root package name */
        private long f78967t;

        /* JADX INFO: renamed from: u, reason: collision with root package name */
        private boolean f78968u;

        /* JADX INFO: renamed from: v, reason: collision with root package name */
        private final d f78969v;

        /* JADX INFO: renamed from: w, reason: collision with root package name */
        private long f78970w;

        /* JADX INFO: renamed from: x, reason: collision with root package name */
        private float f78971x;

        /* JADX INFO: renamed from: y, reason: collision with root package name */
        private float f78972y;

        /* JADX INFO: renamed from: z, reason: collision with root package name */
        private float f78973z;

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        protected int f78953a = 0;

        /* JADX INFO: renamed from: i, reason: collision with root package name */
        float[] f78957i = new float[9];

        /* JADX INFO: renamed from: j, reason: collision with root package name */
        float[] f78958j = new float[3];
        private int C = 100;
        private final long I = -1;
        private long J = -1;

        public a(Context context, c motionListener, d type) {
            if (al.f78946b == null && com.sigmob.sdk.base.utils.w.b(context)) {
                af unused = al.f78946b = af.a(context);
            }
            this.f78963p = motionListener;
            this.f78969v = type;
        }

        private void d() {
            com.sigmob.sdk.base.utils.k.c(al.f78945a, "cancelTimer", new Object[0]);
            Timer timer = this.H;
            if (timer == null) {
                return;
            }
            timer.cancel();
            this.H = null;
        }

        public void b() {
            if (al.f78946b != null) {
                al.f78946b.b(this);
            }
            this.f78972y = 0.0f;
            this.f78973z = 0.0f;
            this.f78971x = 0.0f;
            this.f78970w = 0L;
            this.f78964q = 0.0f;
            this.f78965r = 0.0f;
            this.f78966s = 0.0f;
            this.B = 0.0f;
            this.D = 0L;
            this.f78959k = null;
        }

        public void c() {
            b();
            d();
            this.f78963p = null;
        }

        public void e(int widgetIntervalTime) {
            this.f78955c = widgetIntervalTime;
        }

        public void f(int shakeTimeThreshold) {
            this.f78956d = shakeTimeThreshold;
        }

        @Override // android.hardware.SensorEventListener
        public void onAccuracyChanged(Sensor sensor, int i10) {
        }

        /* JADX WARN: Code duplicated, block: B:114:0x027b  */
        /* JADX WARN: Code duplicated, block: B:115:0x027e  */
        /* JADX WARN: Code duplicated, block: B:118:0x028c  */
        /* JADX WARN: Code duplicated, block: B:120:0x0296  */
        /* JADX WARN: Code duplicated, block: B:123:0x02a2  */
        /* JADX WARN: Code duplicated, block: B:146:0x0344  */
        /* JADX WARN: Code duplicated, block: B:149:0x0354  */
        /* JADX WARN: Code duplicated, block: B:152:0x0364  */
        /* JADX WARN: Code duplicated, block: B:155:0x0377 A[RETURN] */
        /* JADX WARN: Code duplicated, block: B:156:0x0378  */
        /* JADX WARN: Code duplicated, block: B:158:0x037e  */
        /* JADX WARN: Code duplicated, block: B:159:0x0381  */
        /* JADX WARN: Code duplicated, block: B:162:0x038f  */
        /* JADX WARN: Code duplicated, block: B:164:0x0399  */
        /* JADX WARN: Code duplicated, block: B:167:0x03a5  */
        /* JADX WARN: Code duplicated, block: B:175:? A[RETURN, SYNTHETIC] */
        /* JADX WARN: Code duplicated, block: B:177:? A[RETURN, SYNTHETIC] */
        @Override // android.hardware.SensorEventListener
        public void onSensorChanged(SensorEvent event) {
            int iIntValue;
            float fAbs;
            float f10;
            float f11;
            int iIntValue2;
            float fAbs2;
            float f12;
            float f13;
            float fIntValue;
            int type = event.sensor.getType();
            d dVar = this.f78969v;
            d dVar2 = d.SHAKE;
            if (dVar == dVar2 && type == 10) {
                this.f78960l = event;
                a(event, this.f78962n);
                return;
            }
            if (dVar != dVar2 && type == 1) {
                this.f78960l = event;
            } else if (type == 2) {
                this.f78961m = event;
            } else if (type == 4) {
                this.f78962n = event;
            }
            if (a(this.f78960l, 3) || a(this.f78961m, 3)) {
                return;
            }
            SensorManager.getRotationMatrix(this.f78957i, null, this.f78960l.values, this.f78961m.values);
            SensorManager.getOrientation(this.f78957i, this.f78958j);
            float degrees = (float) Math.toDegrees(this.f78958j[0]);
            float degrees2 = (float) Math.toDegrees(this.f78958j[1]);
            float degrees3 = (float) Math.toDegrees(this.f78958j[2]);
            int i10 = AnonymousClass1.f78947a[this.f78969v.ordinal()];
            if (i10 != 1) {
                if (i10 != 2) {
                    if (i10 == 3 && !com.sigmob.sdk.base.utils.w.b(Boolean.valueOf(e()))) {
                        if (a(this.f78962n, 3)) {
                            com.sigmob.sdk.base.utils.k.e(al.f78945a, "onSensorChanged: Gyroscope event not available for WRING type.", new Object[0]);
                            return;
                        }
                        float[] fArr = this.f78962n.values;
                        float f14 = fArr[0];
                        float f15 = fArr[1];
                        float f16 = fArr[2];
                        if (Math.abs(f15) < 1.0f && !this.A) {
                            com.sigmob.sdk.base.utils.k.c(al.f78945a, "wring reset", new Object[0]);
                            this.f78970w = 0L;
                            return;
                        }
                        Integer num = this.E;
                        if (num == null) {
                            int i11 = this.f78953a;
                            fIntValue = (i11 <= 0 || i11 > 10) ? 4.0f : f78949f[i11];
                        } else {
                            fIntValue = num.intValue();
                        }
                        f78952o = fIntValue;
                        boolean z10 = ((double) Math.abs(f15)) > 0.1d;
                        this.A = z10;
                        if (this.f78970w == 0 && z10) {
                            this.f78970w = System.currentTimeMillis();
                            com.sigmob.sdk.base.utils.k.c(al.f78945a, "wring start", new Object[0]);
                            c cVar = this.f78963p;
                            if (cVar != null) {
                                cVar.a();
                                return;
                            }
                            return;
                        }
                        if (System.currentTimeMillis() - this.f78970w < 200) {
                            return;
                        }
                        if (Math.abs(this.f78972y) < Math.abs(degrees2)) {
                            this.f78972y = degrees2;
                        }
                        if (Math.abs(this.f78973z) < Math.abs(degrees)) {
                            this.f78973z = degrees;
                        }
                        if (Math.abs(this.f78971x) < Math.abs(degrees3)) {
                            this.f78971x = degrees3;
                        }
                        if (this.f78970w > 0) {
                            if (Math.abs(f14) > f78952o || Math.abs(f15) > f78952o || Math.abs(f16) > f78952o) {
                                this.D = System.currentTimeMillis();
                                HashMap map = new HashMap();
                                map.put("turn_x", Integer.valueOf((int) this.f78972y));
                                map.put("turn_y", Integer.valueOf((int) this.f78971x));
                                map.put("turn_z", Integer.valueOf((int) this.f78973z));
                                map.put("turn_time", Long.valueOf(this.D - this.f78970w));
                                a(map);
                                this.f78970w = 0L;
                                this.f78972y = 0.0f;
                                this.f78973z = 0.0f;
                                this.f78971x = 0.0f;
                                this.A = false;
                                return;
                            }
                            return;
                        }
                        return;
                    }
                    return;
                }
                if (com.sigmob.sdk.base.utils.w.b(Boolean.valueOf(e()))) {
                    return;
                }
                if (this.f78959k == null) {
                    this.f78959k = Float.valueOf(degrees3);
                    this.f78970w = System.currentTimeMillis();
                    if (com.sigmob.sdk.base.utils.w.b(this.f78963p)) {
                        this.f78963p.a();
                        return;
                    }
                    return;
                }
                if (a(this.f78962n, 3)) {
                    com.sigmob.sdk.base.utils.k.e(al.f78945a, "onSensorChanged: Gyroscope event not available for SWING type.", new Object[0]);
                    return;
                }
                float[] fArr2 = this.f78962n.values;
                float f17 = fArr2[0];
                float f18 = fArr2[1];
                float f19 = fArr2[2];
                if (Math.abs(this.f78964q) < Math.abs(f17)) {
                    this.f78964q = f17;
                }
                if (Math.abs(this.f78965r) < Math.abs(f18)) {
                    this.f78965r = f18;
                }
                if (Math.abs(this.f78966s) < Math.abs(f19)) {
                    this.f78966s = f19;
                }
                Integer num2 = this.E;
                if (num2 == null) {
                    int i12 = this.f78953a;
                    if (i12 <= 0 || i12 > 10) {
                        f78952o = 25.0f;
                    } else {
                        iIntValue2 = f78948e[i12];
                    }
                    fAbs2 = Math.abs(this.f78959k.floatValue() - degrees3);
                    f12 = f78952o;
                    if (fAbs2 > f12) {
                        f13 = 1.0f;
                    } else {
                        f13 = fAbs2 / f12;
                    }
                    if (((int) (this.B * 100.0f)) != ((int) (f13 * 100.0f))) {
                        this.B = f13;
                        if (com.sigmob.sdk.base.utils.w.b(this.f78963p)) {
                            this.f78963p.a(f13);
                        }
                    }
                    if (f13 > 0.98f) {
                        return;
                    }
                    this.D = System.currentTimeMillis();
                    HashMap map2 = new HashMap();
                    map2.put("x_max_acc", Float.valueOf(this.f78964q * this.C));
                    map2.put("y_max_acc", Float.valueOf(this.f78965r * this.C));
                    map2.put("z_max_acc", Float.valueOf(this.f78966s * this.C));
                    a(map2);
                    this.f78964q = 0.0f;
                    this.f78965r = 0.0f;
                    this.f78966s = 0.0f;
                } else {
                    iIntValue2 = num2.intValue();
                }
                f78952o = iIntValue2;
                fAbs2 = Math.abs(this.f78959k.floatValue() - degrees3);
                f12 = f78952o;
                if (fAbs2 > f12) {
                    f13 = 1.0f;
                } else {
                    f13 = fAbs2 / f12;
                }
                if (((int) (this.B * 100.0f)) != ((int) (f13 * 100.0f))) {
                    this.B = f13;
                    if (com.sigmob.sdk.base.utils.w.b(this.f78963p)) {
                        this.f78963p.a(f13);
                    }
                }
                if (f13 > 0.98f) {
                    return;
                }
                this.D = System.currentTimeMillis();
                HashMap map3 = new HashMap();
                map3.put("x_max_acc", Float.valueOf(this.f78964q * this.C));
                map3.put("y_max_acc", Float.valueOf(this.f78965r * this.C));
                map3.put("z_max_acc", Float.valueOf(this.f78966s * this.C));
                a(map3);
                this.f78964q = 0.0f;
                this.f78965r = 0.0f;
                this.f78966s = 0.0f;
            } else {
                if (com.sigmob.sdk.base.utils.w.b(Boolean.valueOf(e()))) {
                    return;
                }
                if (this.f78959k == null) {
                    this.f78959k = Float.valueOf(degrees2);
                    this.f78970w = System.currentTimeMillis();
                    if (com.sigmob.sdk.base.utils.w.b(this.f78963p)) {
                        this.f78963p.a();
                        return;
                    }
                    return;
                }
                Integer num3 = this.E;
                if (num3 == null) {
                    int i13 = this.f78953a;
                    if (i13 <= 0 || i13 > 10) {
                        f78952o = 25.0f;
                    } else {
                        iIntValue = f78948e[i13];
                    }
                    if (Math.abs(this.f78972y) < Math.abs(degrees2)) {
                        this.f78972y = degrees2;
                    }
                    if (Math.abs(this.f78973z) < Math.abs(degrees)) {
                        this.f78973z = degrees;
                    }
                    if (Math.abs(this.f78971x) < Math.abs(degrees3)) {
                        this.f78971x = degrees3;
                    }
                    fAbs = Math.abs(this.f78959k.floatValue() - degrees2);
                    if (fAbs < 5.0f) {
                        return;
                    }
                    f10 = f78952o;
                    if (fAbs > f10) {
                        f11 = 1.0f;
                    } else {
                        f11 = fAbs / f10;
                    }
                    if (((int) (this.B * 100.0f)) != ((int) (f11 * 100.0f))) {
                        this.B = f11;
                        if (com.sigmob.sdk.base.utils.w.b(this.f78963p)) {
                            this.f78963p.a(f11);
                        }
                    }
                    if (f11 > 0.98f) {
                        return;
                    }
                    HashMap map4 = new HashMap();
                    map4.put("turn_x", Integer.valueOf((int) this.f78972y));
                    map4.put("turn_y", Integer.valueOf((int) this.f78971x));
                    map4.put("turn_z", Integer.valueOf((int) this.f78973z));
                    long jCurrentTimeMillis = System.currentTimeMillis();
                    this.D = jCurrentTimeMillis;
                    map4.put("turn_time", Long.valueOf(jCurrentTimeMillis - this.f78970w));
                    a(map4);
                    this.f78970w = 0L;
                    this.f78972y = 0.0f;
                    this.f78973z = 0.0f;
                    this.f78971x = 0.0f;
                } else {
                    iIntValue = num3.intValue();
                }
                f78952o = iIntValue;
                if (Math.abs(this.f78972y) < Math.abs(degrees2)) {
                    this.f78972y = degrees2;
                }
                if (Math.abs(this.f78973z) < Math.abs(degrees)) {
                    this.f78973z = degrees;
                }
                if (Math.abs(this.f78971x) < Math.abs(degrees3)) {
                    this.f78971x = degrees3;
                }
                fAbs = Math.abs(this.f78959k.floatValue() - degrees2);
                if (fAbs < 5.0f) {
                    return;
                }
                f10 = f78952o;
                if (fAbs > f10) {
                    f11 = 1.0f;
                } else {
                    f11 = fAbs / f10;
                }
                if (((int) (this.B * 100.0f)) != ((int) (f11 * 100.0f))) {
                    this.B = f11;
                    if (com.sigmob.sdk.base.utils.w.b(this.f78963p)) {
                        this.f78963p.a(f11);
                    }
                }
                if (f11 > 0.98f) {
                    return;
                }
                HashMap map5 = new HashMap();
                map5.put("turn_x", Integer.valueOf((int) this.f78972y));
                map5.put("turn_y", Integer.valueOf((int) this.f78971x));
                map5.put("turn_z", Integer.valueOf((int) this.f78973z));
                long jCurrentTimeMillis2 = System.currentTimeMillis();
                this.D = jCurrentTimeMillis2;
                map5.put("turn_time", Long.valueOf(jCurrentTimeMillis2 - this.f78970w));
                a(map5);
                this.f78970w = 0L;
                this.f78972y = 0.0f;
                this.f78973z = 0.0f;
                this.f78971x = 0.0f;
            }
            this.B = 0.0f;
            this.f78959k = null;
        }

        private boolean e() {
            long j10 = this.J;
            return ((j10 > (-1L) ? 1 : (j10 == (-1L) ? 0 : -1)) == 0 || (j10 > ((long) this.f78955c) ? 1 : (j10 == ((long) this.f78955c) ? 0 : -1)) >= 0) && (((System.currentTimeMillis() - this.D) > 2000L ? 1 : ((System.currentTimeMillis() - this.D) == 2000L ? 0 : -1)) >= 0);
        }

        public void b(int sensitivity_raw) {
            this.E = Integer.valueOf(sensitivity_raw);
        }

        public void c(int level) {
            this.f78953a = level;
        }

        public void d(int shakeTriggerType) {
            this.f78954b = shakeTriggerType;
        }

        public void a() {
            if (al.f78946b != null) {
                al.f78946b.b(this);
                al.f78946b.a(this);
            }
            this.f78959k = null;
        }

        public void a(int factor) {
            if (factor > 0) {
                this.C = factor;
            }
        }

        private void a(SensorEvent event, SensorEvent gyroscopeEvent) {
            int iIntValue;
            int i10;
            if (a(event, 3) || a(gyroscopeEvent, 3)) {
                com.sigmob.sdk.base.utils.k.e(al.f78945a, "handleAccelerometerData: event is unavailable.", new Object[0]);
                return;
            }
            float[] fArr = event.values;
            float f10 = fArr[0];
            float f11 = fArr[1];
            float f12 = fArr[2];
            float[] fArr2 = gyroscopeEvent.values;
            float f13 = fArr2[0];
            float f14 = fArr2[1];
            float f15 = fArr2[2];
            double degrees = 0.0d;
            if (this.f78968u) {
                degrees = this.f78970w > 0 ? Math.toDegrees(((float) Math.sqrt(Math.pow(f13, 2.0d) + Math.pow(f14, 2.0d) + Math.pow(f15, 2.0d))) * (((gyroscopeEvent.timestamp - this.f78970w) * 1.0f) / 1.0E9f)) : 0.0d;
                this.f78970w = gyroscopeEvent.timestamp;
            } else {
                this.f78970w = 0L;
            }
            float fSqrt = (float) Math.sqrt(Math.pow(f10, 2.0d) + Math.pow(f11, 2.0d) + Math.pow(f12, 2.0d));
            long jCurrentTimeMillis = System.currentTimeMillis();
            long j10 = jCurrentTimeMillis - this.f78967t;
            if (Math.abs(this.f78964q) < Math.abs(f10)) {
                this.f78964q = f10;
            }
            if (Math.abs(this.f78965r) < Math.abs(f11)) {
                this.f78965r = f11;
            }
            if (Math.abs(this.f78966s) < Math.abs(f12)) {
                this.f78966s = f12;
            }
            Integer num = this.E;
            if (num == null) {
                int i11 = this.f78953a;
                if (i11 <= 0 || i11 > 10) {
                    this.f78953a = 1;
                }
                iIntValue = f78950g[this.f78953a];
            } else {
                iIntValue = num.intValue();
            }
            f78952o = iIntValue;
            if (fSqrt <= 0.1d) {
                this.f78967t = System.currentTimeMillis();
                return;
            }
            float f16 = f78951h[this.f78953a];
            boolean z10 = fSqrt > f78952o;
            if (!this.f78968u) {
                this.f78968u = true;
                this.f78967t = jCurrentTimeMillis;
                if (com.sigmob.sdk.base.utils.w.b(this.f78963p)) {
                    this.f78963p.a();
                    return;
                }
                return;
            }
            if (degrees <= f16 || !z10) {
                i10 = 1;
            } else if (f15 >= 0.0f) {
                i10 = 1;
                this.F = true;
            } else {
                i10 = 1;
                this.G = true;
            }
            if (com.sigmob.sdk.base.utils.w.b(Boolean.valueOf(e()))) {
                return;
            }
            int i12 = this.f78954b;
            if (((i12 == i10 && this.F && this.G) || (i12 == 0 && (this.F || this.G))) && z10 && j10 >= this.f78956d) {
                this.f78968u = false;
                com.sigmob.sdk.base.utils.k.c(al.f78945a, "handleAccelerometerData: shake end", new Object[0]);
                this.f78964q = 0.0f;
                this.f78965r = 0.0f;
                this.f78966s = 0.0f;
                this.F = false;
                this.G = false;
                HashMap map = new HashMap();
                map.put("x_max_acc", Float.valueOf(this.f78964q * this.C));
                map.put("y_max_acc", Float.valueOf(this.f78965r * this.C));
                map.put("z_max_acc", Float.valueOf(this.f78966s * this.C));
                a(map);
            }
        }

        public void a(SensorEntity entity) {
            this.f78953a = entity == null ? 0 : entity.level;
            this.f78954b = entity == null ? 0 : entity.shakeTriggerType;
            this.f78955c = entity == null ? 0 : entity.widgetIntervalTime;
            this.f78956d = entity != null ? entity.shakeTimeThreshold : 0;
        }

        private void a(Map<String, Number> map) {
            c cVar = this.f78963p;
            if (cVar == null || map == null) {
                return;
            }
            cVar.a(map);
            this.J = 0L;
            d();
            if (this.f78955c <= 0) {
                return;
            }
            Timer timer = new Timer();
            this.H = timer;
            timer.schedule(new TimerTask() { // from class: com.sigmob.sdk.base.common.al.a.1
                @Override // java.util.TimerTask, java.lang.Runnable
                public void run() {
                    if (com.sigmob.sdk.manager.a.c()) {
                        a.this.J += 1000;
                    }
                }
            }, 2000L, 1000L);
        }

        private boolean a(SensorEvent event, int length) {
            float[] fArr;
            return event == null || (fArr = event.values) == null || fArr.length < length;
        }
    }

    public static class b implements c {
        @Override // com.sigmob.sdk.base.common.al.c
        public void a() {
        }

        @Override // com.sigmob.sdk.base.common.al.c
        public void a(float progress) {
        }

        @Override // com.sigmob.sdk.base.common.al.c
        public void a(Map<String, Number> info) {
        }
    }

    public interface c {
        void a();

        void a(float progress);

        void a(Map<String, Number> info);
    }

    public enum d {
        SWING,
        WRING,
        SLOPE,
        SHAKE
    }
}
