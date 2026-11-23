package com.beizi.fusion.tool;

import android.content.Context;
import android.hardware.Sensor;
import android.hardware.SensorEvent;
import android.hardware.SensorEventListener;
import android.hardware.SensorManager;
import android.os.Handler;
import android.text.TextUtils;
import android.view.ViewGroup;
import android.widget.FrameLayout;
import com.beizi.fusion.model.AdSpacesBean;
import com.beizi.fusion.widget.EulerAngleView;
import com.umeng.analytics.pro.bm;
import java.util.List;

/* JADX INFO: loaded from: classes6.dex */
public class s {

    /* JADX INFO: renamed from: j, reason: collision with root package name */
    private static SensorManager f10641j;
    private float A;
    private float B;
    private float C;
    private float D;
    private float E;

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private Context f10642a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private AdSpacesBean.BuyerBean.EulerAngleViewBean f10643b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    private AdSpacesBean.BuyerBean.EulerAngleViewBean f10644c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    private AdSpacesBean.BuyerBean.EulerAngleViewRuleBean f10645d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    private AdSpacesBean.BuyerBean.EulerAngleViewRuleBean f10646e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    private AdSpacesBean.BuyerBean.EulerAngleViewRuleBean f10647f;

    /* JADX INFO: renamed from: g, reason: collision with root package name */
    private AdSpacesBean.BuyerBean.EulerAngleRenderBean f10648g;

    /* JADX INFO: renamed from: k, reason: collision with root package name */
    private Sensor f10651k;

    /* JADX INFO: renamed from: o, reason: collision with root package name */
    private String f10655o;

    /* JADX INFO: renamed from: p, reason: collision with root package name */
    private String f10656p;

    /* JADX INFO: renamed from: q, reason: collision with root package name */
    private String f10657q;

    /* JADX INFO: renamed from: t, reason: collision with root package name */
    private float f10660t;

    /* JADX INFO: renamed from: u, reason: collision with root package name */
    private EulerAngleView f10661u;

    /* JADX INFO: renamed from: v, reason: collision with root package name */
    private a f10662v;

    /* JADX INFO: renamed from: x, reason: collision with root package name */
    private String f10664x;

    /* JADX INFO: renamed from: y, reason: collision with root package name */
    private Boolean f10665y;

    /* JADX INFO: renamed from: z, reason: collision with root package name */
    private float f10666z;

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    private float f10649h = 1.0E-9f;

    /* JADX INFO: renamed from: i, reason: collision with root package name */
    private float[] f10650i = new float[3];

    /* JADX INFO: renamed from: l, reason: collision with root package name */
    private double f10652l = 0.0d;

    /* JADX INFO: renamed from: m, reason: collision with root package name */
    private double f10653m = 0.0d;

    /* JADX INFO: renamed from: n, reason: collision with root package name */
    private double f10654n = 0.0d;

    /* JADX INFO: renamed from: r, reason: collision with root package name */
    private boolean f10658r = false;

    /* JADX INFO: renamed from: s, reason: collision with root package name */
    private int f10659s = 0;

    /* JADX INFO: renamed from: w, reason: collision with root package name */
    private boolean f10663w = false;
    private SensorEventListener F = new SensorEventListener() { // from class: com.beizi.fusion.tool.s.1
        @Override // android.hardware.SensorEventListener
        public void onAccuracyChanged(Sensor sensor, int i10) {
        }

        @Override // android.hardware.SensorEventListener
        public void onSensorChanged(SensorEvent sensorEvent) {
            try {
                s.this.a(sensorEvent);
            } catch (Exception unused) {
            }
        }
    };

    public interface a {
        void a();
    }

    public s(Context context, String str, AdSpacesBean.BuyerBean.EulerAngleViewBean eulerAngleViewBean, AdSpacesBean.BuyerBean.EulerAngleViewBean eulerAngleViewBean2) {
        this.f10664x = null;
        f10641j = (SensorManager) context.getApplicationContext().getSystemService("sensor");
        this.f10642a = context;
        this.f10643b = eulerAngleViewBean;
        this.f10644c = eulerAngleViewBean2;
        this.f10664x = "splash_cool_" + str;
        c();
        d();
    }

    private void d() {
        List<AdSpacesBean.BuyerBean.EulerAngleRuleBean> rules;
        try {
            AdSpacesBean.BuyerBean.EulerAngleViewRuleBean eulerAngleViewRuleBean = this.f10645d;
            if (eulerAngleViewRuleBean != null && (rules = eulerAngleViewRuleBean.getRules()) != null && rules.size() != 0) {
                int passivationTime = this.f10645d.getPassivationTime();
                final double angle = 0.0d;
                final double angle2 = 0.0d;
                final double angle3 = 0.0d;
                for (AdSpacesBean.BuyerBean.EulerAngleRuleBean eulerAngleRuleBean : rules) {
                    if (eulerAngleRuleBean != null) {
                        if ("x".equalsIgnoreCase(eulerAngleRuleBean.getAxis())) {
                            if (passivationTime <= 0 || eulerAngleRuleBean.getPangle() <= 0.0d) {
                                this.f10652l = eulerAngleRuleBean.getAngle();
                            } else {
                                this.f10652l = eulerAngleRuleBean.getPangle();
                            }
                            angle = eulerAngleRuleBean.getAngle();
                            this.f10655o = eulerAngleRuleBean.getDirection();
                        } else if ("y".equalsIgnoreCase(eulerAngleRuleBean.getAxis())) {
                            if (passivationTime <= 0 || eulerAngleRuleBean.getPangle() <= 0.0d) {
                                this.f10653m = eulerAngleRuleBean.getAngle();
                            } else {
                                this.f10653m = eulerAngleRuleBean.getPangle();
                            }
                            angle2 = eulerAngleRuleBean.getAngle();
                            this.f10656p = eulerAngleRuleBean.getDirection();
                        } else if (bm.aH.equalsIgnoreCase(eulerAngleRuleBean.getAxis())) {
                            if (passivationTime <= 0 || eulerAngleRuleBean.getPangle() <= 0.0d) {
                                this.f10654n = eulerAngleRuleBean.getAngle();
                            } else {
                                this.f10654n = eulerAngleRuleBean.getPangle();
                            }
                            angle3 = eulerAngleRuleBean.getAngle();
                            this.f10657q = eulerAngleRuleBean.getDirection();
                        }
                    }
                }
                if (passivationTime > 0) {
                    new Handler().postDelayed(new Runnable() { // from class: com.beizi.fusion.tool.s.2
                        @Override // java.lang.Runnable
                        public void run() {
                            try {
                                s.this.f10658r = true;
                                s.this.f10660t = 0.0f;
                                s.this.f10650i[0] = 0.0f;
                                s.this.f10650i[1] = 0.0f;
                                s.this.f10650i[2] = 0.0f;
                                s.this.f10652l = angle;
                                s.this.f10653m = angle2;
                                s.this.f10654n = angle3;
                            } catch (Exception unused) {
                            }
                        }
                    }, ai.b(passivationTime));
                }
            }
        } catch (Exception unused) {
        }
    }

    private boolean e() {
        try {
            if (this.f10652l > 0.0d) {
                if ("2".equals(this.f10655o)) {
                    float f10 = this.f10650i[0];
                    if (f10 > 0.0f && Math.abs(f10) >= this.f10652l) {
                        return true;
                    }
                } else if ("1".equals(this.f10655o)) {
                    float f11 = this.f10650i[0];
                    if (f11 < 0.0f && Math.abs(f11) >= this.f10652l) {
                        return true;
                    }
                } else if ("0".equals(this.f10655o)) {
                    if (Math.abs(this.f10650i[0]) >= this.f10652l) {
                        return true;
                    }
                } else if ("3".equals(this.f10655o) && Math.abs(this.f10666z) >= this.f10652l && Math.abs(this.C) > this.f10652l) {
                    return true;
                }
            }
            if (this.f10653m > 0.0d) {
                if ("2".equals(this.f10656p)) {
                    float f12 = this.f10650i[1];
                    if (f12 < 0.0f && Math.abs(f12) >= this.f10653m) {
                        return true;
                    }
                } else if ("1".equals(this.f10656p)) {
                    float f13 = this.f10650i[1];
                    if (f13 > 0.0f && Math.abs(f13) >= this.f10653m) {
                        return true;
                    }
                } else if ("0".equals(this.f10656p)) {
                    if (Math.abs(this.f10650i[1]) >= this.f10653m) {
                        return true;
                    }
                } else if ("3".equals(this.f10656p) && Math.abs(this.A) >= this.f10653m && Math.abs(this.D) > this.f10653m) {
                    return true;
                }
            }
            if (this.f10654n > 0.0d) {
                if ("2".equals(this.f10657q)) {
                    float f14 = this.f10650i[2];
                    if (f14 > 0.0f && Math.abs(f14) >= this.f10654n) {
                        return true;
                    }
                } else if ("1".equals(this.f10657q)) {
                    float f15 = this.f10650i[2];
                    if (f15 < 0.0f && Math.abs(f15) >= this.f10654n) {
                        return true;
                    }
                } else if ("0".equals(this.f10657q)) {
                    if (Math.abs(this.f10650i[2]) >= this.f10654n) {
                        return true;
                    }
                } else if ("3".equals(this.f10657q) && Math.abs(this.B) >= this.f10654n && Math.abs(this.E) > this.f10654n) {
                    return true;
                }
            }
        } catch (Exception e10) {
            e10.printStackTrace();
        }
        return false;
    }

    private void f() {
        try {
            if (this.f10662v == null || this.f10663w || !aw.b(this.f10661u)) {
                return;
            }
            this.f10663w = true;
            if (this.f10658r && this.f10647f != null) {
                as.a(this.f10642a, this.f10664x, (Object) Long.valueOf(System.currentTimeMillis()));
            }
            this.f10662v.a();
            b();
            ac.a("ShakeUtil", "onEulerAngleHappened");
        } catch (Exception e10) {
            e10.printStackTrace();
        }
    }

    private boolean b(long j10) {
        try {
            return System.currentTimeMillis() - au.p(this.f10642a).longValue() < j10;
        } catch (Exception unused) {
            return false;
        }
    }

    private void c() {
        try {
            AdSpacesBean.BuyerBean.EulerAngleViewBean eulerAngleViewBean = this.f10643b;
            if (eulerAngleViewBean != null) {
                this.f10647f = eulerAngleViewBean.getCoolRule();
            }
            AdSpacesBean.BuyerBean.EulerAngleViewBean eulerAngleViewBean2 = this.f10644c;
            if (eulerAngleViewBean2 != null) {
                this.f10646e = eulerAngleViewBean2.getNomalRule();
                this.f10648g = this.f10644c.getRender();
            } else {
                AdSpacesBean.BuyerBean.EulerAngleViewBean eulerAngleViewBean3 = this.f10643b;
                if (eulerAngleViewBean3 != null) {
                    this.f10646e = eulerAngleViewBean3.getNomalRule();
                    this.f10648g = this.f10643b.getRender();
                }
            }
            AdSpacesBean.BuyerBean.EulerAngleViewRuleBean eulerAngleViewRuleBean = this.f10647f;
            if (eulerAngleViewRuleBean == null) {
                this.f10658r = true;
                this.f10645d = this.f10646e;
            } else if (a(eulerAngleViewRuleBean.getCoolTime())) {
                this.f10658r = false;
                this.f10645d = this.f10647f;
            } else if (b(this.f10647f.getUserProtectTime())) {
                this.f10658r = false;
                this.f10645d = this.f10647f;
            } else {
                this.f10658r = true;
                this.f10645d = this.f10646e;
            }
        } catch (Exception unused) {
        }
    }

    public void b() {
        try {
            ac.a("BeiZis", "enter unRegisterListener");
            SensorManager sensorManager = f10641j;
            if (sensorManager != null) {
                sensorManager.unregisterListener(this.F);
            }
            EulerAngleView eulerAngleView = this.f10661u;
            if (eulerAngleView != null) {
                eulerAngleView.onDestroy();
            }
            this.f10661u = null;
            this.f10642a = null;
            this.f10662v = null;
        } catch (Exception unused) {
        }
    }

    private boolean a(long j10) {
        try {
            long jLongValue = ((Long) as.b(this.f10642a, this.f10664x, 0L)).longValue();
            return jLongValue != 0 && System.currentTimeMillis() - jLongValue < j10;
        } catch (Exception unused) {
            return false;
        }
    }

    public void a() {
        try {
            SensorManager sensorManager = f10641j;
            if (sensorManager != null) {
                Sensor defaultSensor = sensorManager.getDefaultSensor(4);
                this.f10651k = defaultSensor;
                if (defaultSensor != null) {
                    f10641j.registerListener(this.F, defaultSensor, 1);
                }
            }
        } catch (Exception unused) {
        }
    }

    public void a(ViewGroup viewGroup, int i10, int i11) {
        AdSpacesBean.BuyerBean.EulerAngleRenderBean eulerAngleRenderBean;
        String centerX;
        String centerY;
        String width;
        String height;
        int iA;
        int iA2;
        int i12;
        int i13;
        try {
            if (this.f10642a != null && (eulerAngleRenderBean = this.f10648g) != null && viewGroup != null) {
                if (eulerAngleRenderBean != null) {
                    centerX = eulerAngleRenderBean.getCenterX();
                    centerY = this.f10648g.getCenterY();
                    width = this.f10648g.getWidth();
                    height = this.f10648g.getHeight();
                } else {
                    centerX = null;
                    centerY = null;
                    width = null;
                    height = null;
                }
                if (TextUtils.isEmpty(centerX) || "0".equals(centerX)) {
                    centerX = "85%";
                }
                if (TextUtils.isEmpty(centerY) || "0".equals(centerY)) {
                    centerY = "50%";
                }
                if (TextUtils.isEmpty(width) || "0".equals(width)) {
                    width = "120";
                }
                if (TextUtils.isEmpty(height) || "0".equals(height)) {
                    height = "120";
                }
                float fI = au.i(this.f10642a);
                int i14 = 100;
                if (centerX.endsWith("%")) {
                    iA = (Integer.parseInt(centerX.substring(0, centerX.indexOf("%"))) * i10) / 100;
                } else {
                    iA = Integer.parseInt(centerX);
                }
                if (centerY.endsWith("%")) {
                    iA2 = (Integer.parseInt(centerY.substring(0, centerY.indexOf("%"))) * i11) / 100;
                } else {
                    iA2 = Integer.parseInt(centerY);
                }
                if (width.endsWith("%")) {
                    i12 = (((int) fI) * Integer.parseInt(width.substring(0, width.indexOf("%")))) / 100;
                } else {
                    i12 = Integer.parseInt(width);
                }
                if (height.endsWith("%")) {
                    i13 = (Integer.parseInt(height.substring(0, height.indexOf("%"))) * i12) / 100;
                } else {
                    i13 = Integer.parseInt(height);
                }
                if (i12 == 0) {
                    i12 = 100;
                }
                if (i13 != 0) {
                    i14 = i13;
                }
                if (iA2 == 0) {
                    iA2 = au.a(this.f10642a, i11) / 2;
                }
                if (iA == 0) {
                    iA = au.a(this.f10642a, i10) / 2;
                }
                int iA3 = au.a(this.f10642a, i12);
                int iA4 = au.a(this.f10642a, i14);
                int iA5 = au.a(this.f10642a, iA);
                int iA6 = au.a(this.f10642a, iA2);
                FrameLayout.LayoutParams layoutParams = new FrameLayout.LayoutParams(-2, -2);
                EulerAngleView eulerAngleView = new EulerAngleView(this.f10642a);
                this.f10661u = eulerAngleView;
                eulerAngleView.setEulerAngleViewRuleBean(this.f10645d);
                this.f10661u.setEulerAngleRenderBean(this.f10648g);
                this.f10661u.setAnimationViewWidthAndHeight(iA3, iA4);
                this.f10661u.setDownloadApp(this.f10665y);
                this.f10661u.buildEulerAngleView();
                this.f10661u.measure(0, 0);
                int measuredWidth = this.f10661u.getMeasuredWidth();
                int measuredHeight = this.f10661u.getMeasuredHeight();
                ac.a("BeiZis", "centerYInt = " + iA6 + ",centerXInt = " + iA5 + ",adWidthDp = " + i10 + ",adHeightDp = " + i11 + ",widthInt = " + iA3 + ",heightInt = " + iA4 + ",viewWidth = " + measuredWidth + ",viewHeight = " + measuredHeight);
                layoutParams.topMargin = iA6 - (measuredHeight / 2);
                layoutParams.leftMargin = iA5 - (measuredWidth / 2);
                viewGroup.addView(this.f10661u, layoutParams);
                this.f10661u.startContinuousRotations();
            }
        } catch (NumberFormatException unused) {
        }
    }

    public void a(a aVar) {
        this.f10662v = aVar;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void a(SensorEvent sensorEvent) {
        if (sensorEvent != null) {
            try {
                if (this.f10663w) {
                    return;
                }
                Sensor sensor = sensorEvent.sensor;
                float[] fArr = sensorEvent.values;
                int type = sensor.getType();
                if (fArr != null && type == 4) {
                    float f10 = this.f10660t;
                    if (f10 != 0.0f) {
                        float f11 = fArr[0];
                        float f12 = fArr[1];
                        float f13 = fArr[2];
                        float f14 = (sensorEvent.timestamp - f10) * this.f10649h;
                        float[] fArr2 = this.f10650i;
                        fArr2[0] = (float) (((double) fArr2[0]) + Math.toDegrees(f11 * f14));
                        float[] fArr3 = this.f10650i;
                        fArr3[1] = (float) (((double) fArr3[1]) + Math.toDegrees(f12 * f14));
                        float[] fArr4 = this.f10650i;
                        fArr4[2] = (float) (((double) fArr4[2]) + Math.toDegrees(f13 * f14));
                        float[] fArr5 = this.f10650i;
                        float f15 = fArr5[0];
                        if (f15 > 0.0f) {
                            if (f15 > this.C) {
                                this.C = f15;
                            }
                        } else if (f15 < this.f10666z) {
                            this.f10666z = f15;
                        }
                        float f16 = fArr5[1];
                        if (f16 > 0.0f) {
                            if (f16 > this.D) {
                                this.D = f16;
                            }
                        } else if (f16 < this.A) {
                            this.A = f16;
                        }
                        float f17 = fArr5[2];
                        if (f17 > 0.0f) {
                            if (f17 > this.E) {
                                this.E = f17;
                            }
                        } else if (f17 < this.B) {
                            this.B = f17;
                        }
                        EulerAngleView eulerAngleView = this.f10661u;
                        if (eulerAngleView != null) {
                            eulerAngleView.setAngle(this.f10652l, this.f10653m, this.f10654n);
                            EulerAngleView eulerAngleView2 = this.f10661u;
                            float[] fArr6 = this.f10650i;
                            eulerAngleView2.setCurrentProgress(fArr6[0], fArr6[1], fArr6[2]);
                        }
                        ac.a("ShakeUtil", "rotate  x: " + String.format("%.4f", Float.valueOf(this.f10650i[0])) + ",y: " + String.format("%.4f", Float.valueOf(this.f10650i[1])) + ",z: " + String.format("%.4f", Float.valueOf(this.f10650i[2])) + ",x : " + this.f10652l + ",y : " + this.f10653m + ",z : " + this.f10654n);
                        if (e()) {
                            f();
                        }
                    }
                    this.f10660t = sensorEvent.timestamp;
                }
            } catch (Exception e10) {
                e10.printStackTrace();
            }
        }
    }

    public void a(Boolean bool) {
        this.f10665y = bool;
    }
}
