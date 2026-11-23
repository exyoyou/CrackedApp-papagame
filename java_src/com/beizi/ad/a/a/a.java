package com.beizi.ad.a.a;

import android.animation.Animator;
import android.animation.AnimatorSet;
import android.animation.ObjectAnimator;
import android.content.Context;
import android.graphics.Bitmap;
import android.hardware.Sensor;
import android.hardware.SensorEvent;
import android.hardware.SensorEventListener;
import android.hardware.SensorManager;
import android.os.Handler;
import android.text.TextUtils;
import android.view.ViewGroup;
import android.widget.FrameLayout;
import android.widget.ImageView;
import android.widget.LinearLayout;
import android.widget.RelativeLayout;
import com.beizi.ad.internal.e.h;
import com.beizi.ad.internal.e.l;
import com.beizi.ad.internal.e.t;
import com.beizi.ad.lance.a.n;
import com.beizi.ad.lance.a.q;
import com.beizi.fusion.R;
import com.beizi.fusion.model.AdSpacesBean;
import com.haima.hmcp.device.input.manager.TcMouseManager;
import com.umeng.analytics.pro.bm;
import com.windmill.sdk.point.PointType;
import java.util.ArrayList;
import java.util.List;

/* JADX INFO: loaded from: classes6.dex */
public class a {

    /* JADX INFO: renamed from: g, reason: collision with root package name */
    private static final String f8506g = "a";

    /* JADX INFO: renamed from: q, reason: collision with root package name */
    private static SensorManager f8507q;
    private float A;
    private InterfaceC0215a B;
    private String E;
    private AnimatorSet J;
    private boolean K;
    private String L;
    private float M;
    private float N;
    private float O;
    private float P;
    private float Q;
    private float R;

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    private Context f8514h;

    /* JADX INFO: renamed from: i, reason: collision with root package name */
    private AdSpacesBean.BuyerBean.EulerAngleViewBean f8515i;

    /* JADX INFO: renamed from: j, reason: collision with root package name */
    private AdSpacesBean.BuyerBean.EulerAngleViewBean f8516j;

    /* JADX INFO: renamed from: k, reason: collision with root package name */
    private AdSpacesBean.BuyerBean.EulerAngleViewRuleBean f8517k;

    /* JADX INFO: renamed from: l, reason: collision with root package name */
    private AdSpacesBean.BuyerBean.EulerAngleViewRuleBean f8518l;

    /* JADX INFO: renamed from: m, reason: collision with root package name */
    private AdSpacesBean.BuyerBean.EulerAngleViewRuleBean f8519m;

    /* JADX INFO: renamed from: n, reason: collision with root package name */
    private AdSpacesBean.BuyerBean.EulerAngleRenderBean f8520n;

    /* JADX INFO: renamed from: r, reason: collision with root package name */
    private Sensor f8523r;

    /* JADX INFO: renamed from: v, reason: collision with root package name */
    private String f8527v;

    /* JADX INFO: renamed from: w, reason: collision with root package name */
    private String f8528w;

    /* JADX INFO: renamed from: x, reason: collision with root package name */
    private String f8529x;

    /* JADX INFO: renamed from: o, reason: collision with root package name */
    private float f8521o = 1.0E-9f;

    /* JADX INFO: renamed from: p, reason: collision with root package name */
    private float[] f8522p = new float[3];

    /* JADX INFO: renamed from: s, reason: collision with root package name */
    private double f8524s = 0.0d;

    /* JADX INFO: renamed from: t, reason: collision with root package name */
    private double f8525t = 0.0d;

    /* JADX INFO: renamed from: u, reason: collision with root package name */
    private double f8526u = 0.0d;

    /* JADX INFO: renamed from: y, reason: collision with root package name */
    private boolean f8530y = false;

    /* JADX INFO: renamed from: z, reason: collision with root package name */
    private int f8531z = 0;
    private boolean C = true;
    private boolean D = false;

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    String f8508a = "x";

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    String f8509b = "y";

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    String f8510c = bm.aH;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    String f8511d = "0";

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    String f8512e = "1";

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    String f8513f = "2";
    private int F = TcMouseManager.MOUSE_STARY;
    private float G = 60.0f;
    private float H = 60.0f;
    private float I = 30.0f;
    private SensorEventListener S = new SensorEventListener() { // from class: com.beizi.ad.a.a.a.4
        @Override // android.hardware.SensorEventListener
        public void onAccuracyChanged(Sensor sensor, int i10) {
        }

        @Override // android.hardware.SensorEventListener
        public void onSensorChanged(SensorEvent sensorEvent) {
            try {
                a.this.a(sensorEvent);
            } catch (Exception e10) {
                e10.printStackTrace();
            }
        }
    };

    /* JADX INFO: renamed from: com.beizi.ad.a.a.a$a, reason: collision with other inner class name */
    public interface InterfaceC0215a {
        void a();
    }

    public a(Context context, AdSpacesBean.BuyerBean.EulerAngleViewBean eulerAngleViewBean, String str, String str2) {
        this.E = null;
        this.K = false;
        this.f8514h = context;
        this.f8515i = eulerAngleViewBean;
        this.E = "beizi_cool_" + str;
        AdSpacesBean.BuyerBean.OrderDataEulerAngleViewBean orderDataEulerAngleViewBeanA = a(this.f8515i.getOrderData(), str2);
        if (orderDataEulerAngleViewBeanA != null && orderDataEulerAngleViewBeanA.getEulerAngleRule() != null) {
            this.f8516j = orderDataEulerAngleViewBeanA.getEulerAngleRule();
        }
        AdSpacesBean.BuyerBean.EulerAngleViewBean eulerAngleViewBean2 = this.f8515i;
        if (eulerAngleViewBean2 != null) {
            this.f8519m = eulerAngleViewBean2.getCoolRule();
        }
        AdSpacesBean.BuyerBean.EulerAngleViewBean eulerAngleViewBean3 = this.f8516j;
        if (eulerAngleViewBean3 != null) {
            this.f8518l = eulerAngleViewBean3.getNomalRule();
            this.f8520n = this.f8516j.getRender();
        } else {
            AdSpacesBean.BuyerBean.EulerAngleViewBean eulerAngleViewBean4 = this.f8515i;
            if (eulerAngleViewBean4 != null) {
                this.f8518l = eulerAngleViewBean4.getNomalRule();
                this.f8520n = this.f8515i.getRender();
            }
        }
        if (!e()) {
            this.K = false;
            return;
        }
        this.K = true;
        f();
        l();
    }

    private boolean e() {
        List<AdSpacesBean.BuyerBean.EulerAngleRuleBean> rules;
        AdSpacesBean.BuyerBean.EulerAngleViewRuleBean eulerAngleViewRuleBean = this.f8518l;
        if (eulerAngleViewRuleBean != null && (rules = eulerAngleViewRuleBean.getRules()) != null && rules.size() != 0) {
            for (AdSpacesBean.BuyerBean.EulerAngleRuleBean eulerAngleRuleBean : rules) {
                if (eulerAngleRuleBean != null) {
                    String axis = eulerAngleRuleBean.getAxis();
                    double angle = eulerAngleRuleBean.getAngle();
                    if (!TextUtils.isEmpty(axis) && angle > 0.0d) {
                        return true;
                    }
                }
            }
        }
        return false;
    }

    private void f() {
        try {
            if (!j() && !i()) {
                this.f8530y = false;
            } else if (h()) {
                this.f8530y = true;
            } else {
                this.f8530y = false;
            }
            if (this.f8530y) {
                this.f8517k = this.f8519m;
                g();
            } else {
                this.f8517k = this.f8518l;
                g();
            }
        } catch (Exception e10) {
            e10.printStackTrace();
        }
    }

    private void g() {
        List<AdSpacesBean.BuyerBean.EulerAngleRuleBean> rules;
        try {
            AdSpacesBean.BuyerBean.EulerAngleViewRuleBean eulerAngleViewRuleBean = this.f8517k;
            if (eulerAngleViewRuleBean != null && (rules = eulerAngleViewRuleBean.getRules()) != null && rules.size() != 0) {
                int passivationTime = this.f8517k.getPassivationTime();
                final double angle = 0.0d;
                final double angle2 = 0.0d;
                final double angle3 = 0.0d;
                for (AdSpacesBean.BuyerBean.EulerAngleRuleBean eulerAngleRuleBean : rules) {
                    if (eulerAngleRuleBean != null) {
                        if (this.f8508a.equalsIgnoreCase(eulerAngleRuleBean.getAxis())) {
                            if (passivationTime <= 0 || eulerAngleRuleBean.getPangle() <= 0.0d) {
                                this.f8524s = eulerAngleRuleBean.getAngle();
                            } else {
                                this.f8524s = eulerAngleRuleBean.getPangle();
                            }
                            angle = eulerAngleRuleBean.getAngle();
                            this.f8527v = eulerAngleRuleBean.getDirection();
                        } else if (this.f8509b.equalsIgnoreCase(eulerAngleRuleBean.getAxis())) {
                            if (passivationTime <= 0 || eulerAngleRuleBean.getPangle() <= 0.0d) {
                                this.f8525t = eulerAngleRuleBean.getAngle();
                            } else {
                                this.f8525t = eulerAngleRuleBean.getPangle();
                            }
                            angle2 = eulerAngleRuleBean.getAngle();
                            this.f8528w = eulerAngleRuleBean.getDirection();
                        } else if (this.f8510c.equalsIgnoreCase(eulerAngleRuleBean.getAxis())) {
                            if (passivationTime <= 0 || eulerAngleRuleBean.getPangle() <= 0.0d) {
                                this.f8526u = eulerAngleRuleBean.getAngle();
                            } else {
                                this.f8526u = eulerAngleRuleBean.getPangle();
                            }
                            angle3 = eulerAngleRuleBean.getAngle();
                            this.f8529x = eulerAngleRuleBean.getDirection();
                        }
                    }
                }
                if (passivationTime > 0) {
                    new Handler().postDelayed(new Runnable() { // from class: com.beizi.ad.a.a.a.1
                        @Override // java.lang.Runnable
                        public void run() {
                            try {
                                a.this.A = 0.0f;
                                a.this.f8522p[0] = 0.0f;
                                a.this.f8522p[1] = 0.0f;
                                a.this.f8522p[2] = 0.0f;
                                a.this.f8524s = angle;
                                a.this.f8525t = angle2;
                                a.this.f8526u = angle3;
                            } catch (Exception e10) {
                                e10.printStackTrace();
                            }
                        }
                    }, a(passivationTime));
                }
            }
        } catch (Exception e10) {
            e10.printStackTrace();
        }
    }

    private boolean h() {
        try {
            AdSpacesBean.BuyerBean.EulerAngleViewRuleBean eulerAngleViewRuleBean = this.f8519m;
            return (eulerAngleViewRuleBean == null || eulerAngleViewRuleBean == null || eulerAngleViewRuleBean.getRules() == null || this.f8519m.getRules().size() <= 0 || this.f8519m.getStyle() == null) ? false : true;
        } catch (Exception e10) {
            e10.printStackTrace();
        }
    }

    private boolean i() {
        try {
            AdSpacesBean.BuyerBean.EulerAngleViewRuleBean eulerAngleViewRuleBean = this.f8519m;
            if (eulerAngleViewRuleBean == null) {
                return false;
            }
            long coolTime = eulerAngleViewRuleBean.getCoolTime();
            long jLongValue = ((Long) l.d(this.f8514h, this.E, 0L)).longValue();
            return jLongValue != 0 && System.currentTimeMillis() - jLongValue < coolTime;
        } catch (Exception e10) {
            e10.printStackTrace();
            return false;
        }
    }

    private boolean j() {
        try {
            AdSpacesBean.BuyerBean.EulerAngleViewRuleBean eulerAngleViewRuleBean = this.f8519m;
            if (eulerAngleViewRuleBean == null) {
                return false;
            }
            return System.currentTimeMillis() - q.a(this.f8514h) < eulerAngleViewRuleBean.getUserProtectTime();
        } catch (Exception e10) {
            e10.printStackTrace();
            return false;
        }
    }

    private void k() {
        this.A = 0.0f;
        float[] fArr = this.f8522p;
        fArr[0] = 0.0f;
        fArr[1] = 0.0f;
        fArr[2] = 0.0f;
        this.M = 0.0f;
        this.N = 0.0f;
        this.O = 0.0f;
        this.P = 0.0f;
        this.Q = 0.0f;
        this.R = 0.0f;
    }

    private void l() {
        try {
            if (f8507q == null) {
                f8507q = (SensorManager) this.f8514h.getApplicationContext().getSystemService("sensor");
            }
            if (this.f8523r == null) {
                this.f8523r = f8507q.getDefaultSensor(4);
            }
            f8507q.registerListener(this.S, this.f8523r, 1);
        } catch (Exception e10) {
            e10.printStackTrace();
        }
    }

    private void m() {
        try {
            n.a(f8506g, "enter unRegisterListener");
            SensorManager sensorManager = f8507q;
            if (sensorManager != null) {
                sensorManager.unregisterListener(this.S);
            }
        } catch (Exception e10) {
            e10.printStackTrace();
        }
    }

    private boolean n() {
        try {
            if (this.f8524s > 0.0d) {
                if (this.f8513f.equals(this.f8527v)) {
                    float f10 = this.f8522p[0];
                    if (f10 > 0.0f && Math.abs(f10) >= this.f8524s) {
                        return true;
                    }
                } else if (this.f8512e.equals(this.f8527v)) {
                    float f11 = this.f8522p[0];
                    if (f11 < 0.0f && Math.abs(f11) >= this.f8524s) {
                        return true;
                    }
                } else if (this.f8511d.equals(this.f8527v)) {
                    if (Math.abs(this.f8522p[0]) >= this.f8524s) {
                        return true;
                    }
                } else if ("3".equals(this.f8527v) && Math.abs(this.M) >= this.f8524s && Math.abs(this.P) > this.f8524s) {
                    return true;
                }
            }
            if (this.f8525t > 0.0d) {
                if (this.f8513f.equals(this.f8528w)) {
                    float f12 = this.f8522p[1];
                    if (f12 < 0.0f && Math.abs(f12) >= this.f8525t) {
                        return true;
                    }
                } else if (this.f8512e.equals(this.f8528w)) {
                    float f13 = this.f8522p[1];
                    if (f13 > 0.0f && Math.abs(f13) >= this.f8525t) {
                        return true;
                    }
                } else if (this.f8511d.equals(this.f8528w)) {
                    if (Math.abs(this.f8522p[1]) >= this.f8525t) {
                        return true;
                    }
                } else if ("3".equals(this.f8528w) && Math.abs(this.N) >= this.f8525t && Math.abs(this.Q) > this.f8525t) {
                    return true;
                }
            }
            if (this.f8526u > 0.0d) {
                if (this.f8513f.equals(this.f8529x)) {
                    float f14 = this.f8522p[2];
                    if (f14 > 0.0f && Math.abs(f14) >= this.f8526u) {
                        return true;
                    }
                } else if (this.f8512e.equals(this.f8529x)) {
                    float f15 = this.f8522p[2];
                    if (f15 < 0.0f && Math.abs(f15) >= this.f8526u) {
                        return true;
                    }
                } else if (this.f8511d.equals(this.f8529x)) {
                    if (Math.abs(this.f8522p[2]) >= this.f8526u) {
                        return true;
                    }
                } else if ("3".equals(this.f8529x) && Math.abs(this.O) >= this.f8526u && Math.abs(this.R) > this.f8526u) {
                    return true;
                }
            }
        } catch (Exception e10) {
            e10.printStackTrace();
        }
        return false;
    }

    private void o() {
        try {
            if (this.B != null && this.C) {
                n.a(f8506g, "onEulerAngleHappened");
                b();
                if (!this.f8530y) {
                    l.c(this.f8514h, this.E, Long.valueOf(System.currentTimeMillis()));
                }
                this.B.a();
            }
        } catch (Exception e10) {
            e10.printStackTrace();
        }
    }

    public void d() {
        try {
            m();
            this.f8515i = null;
            this.f8516j = null;
            this.f8517k = null;
            this.f8518l = null;
            this.f8519m = null;
            this.f8520n = null;
            this.f8514h = null;
            this.B = null;
            f8507q = null;
            this.f8523r = null;
            AnimatorSet animatorSet = this.J;
            if (animatorSet != null) {
                animatorSet.removeAllListeners();
            }
            this.J = null;
        } catch (Exception e10) {
            e10.printStackTrace();
        }
    }

    public String c() {
        return this.L;
    }

    public void b() {
        this.C = false;
        k();
        m();
    }

    private AdSpacesBean.BuyerBean.OrderDataEulerAngleViewBean a(List<AdSpacesBean.BuyerBean.OrderDataEulerAngleViewBean> list, String str) {
        if (list != null && str != null) {
            for (AdSpacesBean.BuyerBean.OrderDataEulerAngleViewBean orderDataEulerAngleViewBean : list) {
                List<String> orderList = orderDataEulerAngleViewBean.getOrderList();
                if (orderList != null && orderList.contains(str)) {
                    return orderDataEulerAngleViewBean;
                }
            }
        }
        return null;
    }

    private int[] b(ViewGroup viewGroup) {
        int i10;
        int i11;
        int i12;
        int[] iArr = new int[4];
        if (viewGroup != null) {
            try {
                AdSpacesBean.BuyerBean.EulerAngleRenderBean eulerAngleRenderBean = this.f8520n;
                if (eulerAngleRenderBean != null) {
                    String centerX = eulerAngleRenderBean.getCenterX();
                    String centerY = this.f8520n.getCenterY();
                    String width = this.f8520n.getWidth();
                    String height = this.f8520n.getHeight();
                    if (TextUtils.isEmpty(centerX) || "0".equals(centerX)) {
                        centerX = "10";
                    }
                    if (TextUtils.isEmpty(centerY) || "0".equals(centerY)) {
                        centerY = "10";
                    }
                    viewGroup.measure(0, 0);
                    int iB = t.b(this.f8514h, viewGroup.getMeasuredWidth());
                    int iB2 = t.b(this.f8514h, viewGroup.getMeasuredHeight());
                    if (iB <= 0) {
                        iB = q.h(this.f8514h);
                    }
                    String str = f8506g;
                    n.a(str, "position containerWidth:" + iB + ";containerHeight:" + iB2 + ";" + viewGroup.getLayoutParams().width + ";" + viewGroup.getLayoutParams().height);
                    if (TextUtils.isEmpty(width) || "0".equals(width)) {
                        width = PointType.WIND_ADAPTER;
                    }
                    if (TextUtils.isEmpty(height) || "0".equals(height)) {
                        height = PointType.WIND_ADAPTER;
                    }
                    if (centerX.endsWith("%")) {
                        i10 = (Integer.parseInt(centerX.substring(0, centerX.indexOf("%"))) * iB) / 100;
                    } else {
                        i10 = !TextUtils.isEmpty(centerX) ? Integer.parseInt(centerX) : 0;
                    }
                    if (centerY.endsWith("%")) {
                        i11 = (iB2 * Integer.parseInt(centerY.substring(0, centerY.indexOf("%")))) / 100;
                    } else {
                        i11 = !TextUtils.isEmpty(centerY) ? Integer.parseInt(centerY) : 0;
                    }
                    int i13 = 20;
                    if (width.endsWith("%")) {
                        i12 = (iB * Integer.parseInt(width.substring(0, width.indexOf("%")))) / 100;
                    } else {
                        i12 = !TextUtils.isEmpty(width) ? Integer.parseInt(width) : 20;
                    }
                    if (height.endsWith("%")) {
                        i13 = (Integer.parseInt(height.substring(0, height.indexOf("%"))) * i12) / 100;
                    } else if (!TextUtils.isEmpty(width)) {
                        i13 = Integer.parseInt(height);
                    }
                    int iA = t.a(this.f8514h, i12);
                    int iA2 = t.a(this.f8514h, i13);
                    int iA3 = t.a(this.f8514h, i10);
                    int iA4 = t.a(this.f8514h, i11);
                    iArr[0] = iA;
                    iArr[1] = iA2;
                    if (iA3 > 0) {
                        iArr[2] = iA3;
                    }
                    if (iA4 > 0) {
                        iArr[3] = iA4;
                    }
                    n.a(str, "position widthInt:" + iArr[0] + ";heightInt:" + iArr[1] + ";centerX:" + iArr[2] + ";centerY:" + iArr[3] + ";" + centerX + ";" + centerY);
                    return iArr;
                }
            } catch (Exception e10) {
                e10.printStackTrace();
            }
        }
        int iA5 = t.a(this.f8514h, 20.0f);
        int iA6 = t.a(this.f8514h, 10.0f);
        iArr[0] = iA5;
        iArr[1] = iA5;
        iArr[2] = iA6;
        iArr[3] = iA6;
        return iArr;
    }

    public int a(int i10) {
        return (int) ((Math.random() * ((double) i10)) + 1.0d);
    }

    public void a() {
        if (this.D || !this.K) {
            return;
        }
        this.C = true;
        k();
        f();
        l();
    }

    public void a(InterfaceC0215a interfaceC0215a) {
        this.B = interfaceC0215a;
    }

    public void a(ViewGroup viewGroup) {
        AdSpacesBean.BuyerBean.EulerAngleStyleBean style;
        List<String> imgs;
        if (viewGroup != null) {
            try {
                if (this.f8514h != null && this.K) {
                    final ImageView imageView = new ImageView(this.f8514h);
                    imageView.setVisibility(0);
                    imageView.setImageResource(R.mipmap.beizi_interaction_icon_euler_angle);
                    AdSpacesBean.BuyerBean.EulerAngleViewRuleBean eulerAngleViewRuleBean = this.f8517k;
                    if (eulerAngleViewRuleBean != null && (style = eulerAngleViewRuleBean.getStyle()) != null && (imgs = style.getImgs()) != null && imgs.size() > 0) {
                        this.L = imgs.get(0);
                    }
                    if (!TextUtils.isEmpty(this.L)) {
                        h.a(this.f8514h).b(this.L, new h.a() { // from class: com.beizi.ad.a.a.a.2
                            @Override // com.beizi.ad.internal.e.h.a
                            public void a() {
                            }

                            @Override // com.beizi.ad.internal.e.h.a
                            public void a(Bitmap bitmap) {
                                try {
                                    ImageView imageView2 = imageView;
                                    if (imageView2 == null || bitmap == null) {
                                        return;
                                    }
                                    imageView2.setImageBitmap(bitmap);
                                } catch (Exception e10) {
                                    e10.printStackTrace();
                                }
                            }
                        });
                    }
                    int[] iArrB = b(viewGroup);
                    if (viewGroup instanceof RelativeLayout) {
                        RelativeLayout.LayoutParams layoutParams = new RelativeLayout.LayoutParams(-1, -2);
                        int i10 = iArrB[0];
                        if (i10 > 0) {
                            layoutParams.width = i10;
                        }
                        int i11 = iArrB[1];
                        if (i11 > 0) {
                            layoutParams.height = i11;
                        }
                        layoutParams.leftMargin = iArrB[2];
                        layoutParams.topMargin = iArrB[3];
                        layoutParams.addRule(17);
                        viewGroup.addView(imageView, layoutParams);
                    } else if (viewGroup instanceof FrameLayout) {
                        FrameLayout.LayoutParams layoutParams2 = new FrameLayout.LayoutParams(-1, -2, 17);
                        int i12 = iArrB[0];
                        if (i12 > 0) {
                            layoutParams2.width = i12;
                        }
                        int i13 = iArrB[1];
                        if (i13 > 0) {
                            layoutParams2.height = i13;
                        }
                        layoutParams2.leftMargin = iArrB[2];
                        layoutParams2.topMargin = iArrB[3];
                        viewGroup.addView(imageView, layoutParams2);
                    } else if (viewGroup instanceof LinearLayout) {
                        LinearLayout.LayoutParams layoutParams3 = new LinearLayout.LayoutParams(-1, -2, 17.0f);
                        int i14 = iArrB[0];
                        if (i14 > 0) {
                            layoutParams3.width = i14;
                        }
                        int i15 = iArrB[1];
                        if (i15 > 0) {
                            layoutParams3.height = i15;
                        }
                        layoutParams3.leftMargin = iArrB[2];
                        layoutParams3.topMargin = iArrB[3];
                        viewGroup.addView(imageView, layoutParams3);
                    } else {
                        ViewGroup.LayoutParams layoutParams4 = new ViewGroup.LayoutParams(-1, -2);
                        int i16 = iArrB[0];
                        if (i16 > 0) {
                            layoutParams4.width = i16;
                        }
                        int i17 = iArrB[1];
                        if (i17 > 0) {
                            layoutParams4.height = i17;
                        }
                        viewGroup.addView(imageView, layoutParams4);
                    }
                    a(imageView);
                }
            } catch (Exception e10) {
                e10.printStackTrace();
            }
        }
    }

    public void a(ImageView imageView) {
        try {
            ArrayList arrayList = new ArrayList();
            if (!TextUtils.isEmpty(this.f8527v)) {
                if (this.f8513f.equals(this.f8527v)) {
                    a(imageView, arrayList, "rotationX", 0.0f, -this.G);
                    a(imageView, arrayList, "rotationX", -this.G, 0.0f);
                } else if (this.f8512e.equals(this.f8527v)) {
                    a(imageView, arrayList, "rotationX", 0.0f, this.G);
                    a(imageView, arrayList, "rotationX", this.G, 0.0f);
                } else {
                    a(imageView, arrayList, "rotationX", 0.0f, this.G);
                    a(imageView, arrayList, "rotationX", this.G, 0.0f);
                    a(imageView, arrayList, "rotationX", 0.0f, -this.G);
                    a(imageView, arrayList, "rotationX", -this.G, 0.0f);
                }
            }
            if (!TextUtils.isEmpty(this.f8528w)) {
                if (this.f8513f.equals(this.f8528w)) {
                    a(imageView, arrayList, "rotationY", 0.0f, -this.H);
                    a(imageView, arrayList, "rotationY", -this.H, 0.0f);
                } else if (this.f8512e.equals(this.f8528w)) {
                    a(imageView, arrayList, "rotationY", 0.0f, this.H);
                    a(imageView, arrayList, "rotationY", this.H, 0.0f);
                } else {
                    a(imageView, arrayList, "rotationY", 0.0f, this.H);
                    a(imageView, arrayList, "rotationY", this.H, 0.0f);
                    a(imageView, arrayList, "rotationY", 0.0f, -this.H);
                    a(imageView, arrayList, "rotationY", -this.H, 0.0f);
                }
            }
            if (!TextUtils.isEmpty(this.f8529x)) {
                if (this.f8513f.equals(this.f8529x)) {
                    a(imageView, arrayList, "rotation", 0.0f, -this.I);
                    a(imageView, arrayList, "rotation", -this.I, 0.0f);
                } else if (this.f8512e.equals(this.f8529x)) {
                    a(imageView, arrayList, "rotation", 0.0f, this.I);
                    a(imageView, arrayList, "rotation", this.I, 0.0f);
                } else {
                    a(imageView, arrayList, "rotation", 0.0f, this.I);
                    a(imageView, arrayList, "rotation", this.I, 0.0f);
                    a(imageView, arrayList, "rotation", 0.0f, -this.I);
                    a(imageView, arrayList, "rotation", -this.I, 0.0f);
                }
            }
            if (this.J != null) {
                this.J = null;
            }
            if (arrayList.size() > 0) {
                AnimatorSet animatorSet = new AnimatorSet();
                this.J = animatorSet;
                animatorSet.addListener(new Animator.AnimatorListener() { // from class: com.beizi.ad.a.a.a.3
                    @Override // android.animation.Animator.AnimatorListener
                    public void onAnimationCancel(Animator animator) {
                    }

                    @Override // android.animation.Animator.AnimatorListener
                    public void onAnimationEnd(Animator animator) {
                        try {
                            if (a.this.J != null) {
                                a.this.J.start();
                            }
                        } catch (Exception e10) {
                            e10.printStackTrace();
                        }
                    }

                    @Override // android.animation.Animator.AnimatorListener
                    public void onAnimationRepeat(Animator animator) {
                    }

                    @Override // android.animation.Animator.AnimatorListener
                    public void onAnimationStart(Animator animator) {
                    }
                });
                this.J.playSequentially(arrayList);
                this.J.start();
            }
        } catch (Exception e10) {
            e10.printStackTrace();
        }
    }

    private void a(ImageView imageView, List<Animator> list, String str, float f10, float f11) {
        try {
            ObjectAnimator objectAnimatorOfFloat = ObjectAnimator.ofFloat(imageView, str, f10, f11);
            objectAnimatorOfFloat.setDuration(this.F);
            list.add(objectAnimatorOfFloat);
        } catch (Exception e10) {
            e10.printStackTrace();
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void a(SensorEvent sensorEvent) {
        if (sensorEvent != null) {
            try {
                if (this.C) {
                    Sensor sensor = sensorEvent.sensor;
                    float[] fArr = sensorEvent.values;
                    int type = sensor.getType();
                    if (fArr != null && type == 4) {
                        float f10 = this.A;
                        if (f10 != 0.0f) {
                            float f11 = fArr[0];
                            float f12 = fArr[1];
                            float f13 = fArr[2];
                            float f14 = (sensorEvent.timestamp - f10) * this.f8521o;
                            float[] fArr2 = this.f8522p;
                            fArr2[0] = (float) (((double) fArr2[0]) + Math.toDegrees(f11 * f14));
                            float[] fArr3 = this.f8522p;
                            fArr3[1] = (float) (((double) fArr3[1]) + Math.toDegrees(f12 * f14));
                            float[] fArr4 = this.f8522p;
                            fArr4[2] = (float) (((double) fArr4[2]) + Math.toDegrees(f13 * f14));
                            float[] fArr5 = this.f8522p;
                            float f15 = fArr5[0];
                            if (f15 > 0.0f) {
                                if (f15 > this.P) {
                                    this.P = f15;
                                }
                            } else if (f15 < this.M) {
                                this.M = f15;
                            }
                            float f16 = fArr5[1];
                            if (f16 > 0.0f) {
                                if (f16 > this.Q) {
                                    this.Q = f16;
                                }
                            } else if (f16 < this.N) {
                                this.N = f16;
                            }
                            float f17 = fArr5[2];
                            if (f17 > 0.0f) {
                                if (f17 > this.R) {
                                    this.R = f17;
                                }
                            } else if (f17 < this.O) {
                                this.O = f17;
                            }
                            n.a(f8506g, "rotate  x: " + String.format("%.4f", Float.valueOf(this.f8522p[0])) + ",y: " + String.format("%.4f", Float.valueOf(this.f8522p[1])) + ",z: " + String.format("%.4f", Float.valueOf(this.f8522p[2])) + ",x : " + this.f8524s + ",y : " + this.f8525t + ",z : " + this.f8526u);
                            if (n()) {
                                o();
                            }
                        }
                        this.A = sensorEvent.timestamp;
                    }
                }
            } catch (Exception e10) {
                e10.printStackTrace();
            }
        }
    }
}
