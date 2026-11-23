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
import android.view.View;
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
import com.windmill.sdk.point.PointType;
import java.util.ArrayList;
import java.util.List;

/* JADX INFO: loaded from: classes6.dex */
public class e {
    private long A;
    private String D;
    private AnimatorSet G;
    private String H;
    private boolean I;
    private int K;
    private Sensor L;
    private float M;
    private float P;
    private float Q;
    private float R;
    private float S;
    private float T;
    private float U;
    private boolean V;
    private boolean W;
    private long X;
    private boolean Y;

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private Context f8609a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private AdSpacesBean.BuyerBean.ShakeViewBean f8610b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    private AdSpacesBean.BuyerBean.ShakeViewBean f8611c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    private AdSpacesBean.BuyerBean.AliaseShakeViewBean f8612d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    private AdSpacesBean.BuyerBean.CoolShakeViewBean f8613e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    private AdSpacesBean.BuyerBean.PercentPositionBean f8614f;

    /* JADX INFO: renamed from: l, reason: collision with root package name */
    private SensorManager f8620l;

    /* JADX INFO: renamed from: m, reason: collision with root package name */
    private Sensor f8621m;

    /* JADX INFO: renamed from: s, reason: collision with root package name */
    private double f8627s;

    /* JADX INFO: renamed from: t, reason: collision with root package name */
    private double f8628t;

    /* JADX INFO: renamed from: u, reason: collision with root package name */
    private double f8629u;

    /* JADX INFO: renamed from: v, reason: collision with root package name */
    private int f8630v;

    /* JADX INFO: renamed from: w, reason: collision with root package name */
    private int f8631w;

    /* JADX INFO: renamed from: g, reason: collision with root package name */
    private double f8615g = 9.8d;

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    private int f8616h = -100;

    /* JADX INFO: renamed from: i, reason: collision with root package name */
    private int f8617i = 0;

    /* JADX INFO: renamed from: j, reason: collision with root package name */
    private int f8618j = 1;

    /* JADX INFO: renamed from: k, reason: collision with root package name */
    private int f8619k = 2;

    /* JADX INFO: renamed from: n, reason: collision with root package name */
    private a f8622n = null;

    /* JADX INFO: renamed from: o, reason: collision with root package name */
    private float f8623o = -100;

    /* JADX INFO: renamed from: p, reason: collision with root package name */
    private float f8624p = -100;

    /* JADX INFO: renamed from: q, reason: collision with root package name */
    private float f8625q = -100;

    /* JADX INFO: renamed from: r, reason: collision with root package name */
    private int f8626r = 0;

    /* JADX INFO: renamed from: x, reason: collision with root package name */
    private int f8632x = 0;

    /* JADX INFO: renamed from: y, reason: collision with root package name */
    private int f8633y = 0;

    /* JADX INFO: renamed from: z, reason: collision with root package name */
    private boolean f8634z = true;
    private boolean B = false;
    private boolean C = false;
    private int E = 80;
    private float F = 30.0f;
    private final SensorEventListener J = new SensorEventListener() { // from class: com.beizi.ad.a.a.e.5
        @Override // android.hardware.SensorEventListener
        public void onAccuracyChanged(Sensor sensor, int i10) {
        }

        @Override // android.hardware.SensorEventListener
        public void onSensorChanged(SensorEvent sensorEvent) {
            Sensor sensor;
            if (sensorEvent == null || (sensor = sensorEvent.sensor) == null) {
                return;
            }
            int type = sensor.getType();
            if (type == 1) {
                e.this.a(sensorEvent);
            } else if (type == 4) {
                e.this.b(sensorEvent);
            }
        }
    };
    private float N = 1.0E-9f;
    private float[] O = new float[3];

    public interface a {
        void a();
    }

    public e(Context context, AdSpacesBean.BuyerBean.ShakeViewBean shakeViewBean, String str, String str2) {
        this.D = null;
        this.I = false;
        try {
            this.f8609a = context;
            this.f8610b = shakeViewBean;
            if (!TextUtils.isEmpty(str)) {
                this.D = "beizi_cool_" + str;
            }
            AdSpacesBean.BuyerBean.OrderDataShakeViewBean orderDataShakeViewBeanA = a(shakeViewBean.getOrderData(), str2);
            if (orderDataShakeViewBeanA != null && orderDataShakeViewBeanA.getShakeView() != null) {
                this.f8611c = orderDataShakeViewBeanA.getShakeView();
            }
            AdSpacesBean.BuyerBean.ShakeViewBean shakeViewBean2 = this.f8610b;
            if (shakeViewBean2 != null) {
                this.f8613e = shakeViewBean2.getCoolShakeView();
                this.K = shakeViewBean.getRegulatoryAngle();
            }
            AdSpacesBean.BuyerBean.ShakeViewBean shakeViewBean3 = this.f8611c;
            if (shakeViewBean3 != null) {
                this.f8612d = shakeViewBean3.getAliaseShakeView();
                this.f8614f = this.f8611c.getPosition();
                List<String> imageURL = this.f8611c.getImageURL();
                if (imageURL != null && imageURL.size() > 0) {
                    this.H = imageURL.get(0);
                }
                this.K = this.f8611c.getRegulatoryAngle();
            } else {
                AdSpacesBean.BuyerBean.ShakeViewBean shakeViewBean4 = this.f8610b;
                if (shakeViewBean4 != null) {
                    this.f8612d = shakeViewBean4.getAliaseShakeView();
                    this.f8614f = this.f8610b.getPosition();
                    List<String> imageURL2 = this.f8610b.getImageURL();
                    if (imageURL2 != null && imageURL2.size() > 0) {
                        this.H = imageURL2.get(0);
                    }
                }
            }
            if (!f()) {
                this.I = false;
                return;
            }
            this.I = true;
            i();
            o();
            e();
        } catch (Exception e10) {
            e10.printStackTrace();
        }
    }

    private boolean f() {
        double shakeStartAmplitude;
        double shakeEndAmplitude;
        int shakeCount;
        AdSpacesBean.BuyerBean.ShakeViewBean shakeViewBean = this.f8611c;
        if (shakeViewBean != null) {
            shakeStartAmplitude = shakeViewBean.getShakeStartAmplitude();
            shakeEndAmplitude = this.f8611c.getShakeEndAmplitude();
            shakeCount = this.f8611c.getShakeCount();
        } else {
            AdSpacesBean.BuyerBean.ShakeViewBean shakeViewBean2 = this.f8610b;
            if (shakeViewBean2 != null) {
                shakeStartAmplitude = shakeViewBean2.getShakeStartAmplitude();
                shakeEndAmplitude = this.f8610b.getShakeEndAmplitude();
                shakeCount = this.f8610b.getShakeCount();
            } else {
                shakeStartAmplitude = 0.0d;
                shakeEndAmplitude = 0.0d;
                shakeCount = 0;
            }
        }
        return shakeStartAmplitude > 0.0d && shakeEndAmplitude > 0.0d && shakeCount > 0;
    }

    private boolean g() {
        try {
            AdSpacesBean.BuyerBean.CoolShakeViewBean coolShakeViewBean = this.f8613e;
            if (coolShakeViewBean == null) {
                return false;
            }
            if (coolShakeViewBean.getShakeCount() > 0 || this.f8613e.getRotatCount() > 0) {
                return true;
            }
        } catch (Exception e10) {
            e10.printStackTrace();
        }
        return false;
    }

    private boolean h() {
        try {
            AdSpacesBean.BuyerBean.AliaseShakeViewBean aliaseShakeViewBean = this.f8612d;
            return aliaseShakeViewBean != null && aliaseShakeViewBean != null && aliaseShakeViewBean.getPassivationTime() > 0 && (this.f8612d.getShakeCount() > 0 || this.f8612d.getRotatCount() > 0);
        } catch (Exception e10) {
            e10.printStackTrace();
        }
    }

    private void i() {
        try {
            q();
            if (!n() && !m()) {
                this.B = false;
            } else if (g()) {
                this.B = true;
            } else {
                this.B = false;
            }
            if (this.B) {
                l();
            } else if (h()) {
                k();
            } else {
                j();
            }
        } catch (Exception e10) {
            e10.printStackTrace();
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void j() {
        try {
            n.a("ShakeUtil", "setShakeSensitivityNormal");
            q();
            AdSpacesBean.BuyerBean.ShakeViewBean shakeViewBean = this.f8611c;
            if (shakeViewBean != null) {
                b(shakeViewBean.getShakeCount());
                a(this.f8611c.getShakeStartAmplitude());
                b(this.f8611c.getShakeEndAmplitude());
                c(this.f8611c.getRotatAmplitude());
                c(this.f8611c.getRotatCount());
                return;
            }
            AdSpacesBean.BuyerBean.ShakeViewBean shakeViewBean2 = this.f8610b;
            if (shakeViewBean2 != null) {
                b(shakeViewBean2.getShakeCount());
                a(this.f8610b.getShakeStartAmplitude());
                b(this.f8610b.getShakeEndAmplitude());
                c(this.f8610b.getRotatAmplitude());
                c(this.f8610b.getRotatCount());
            }
        } catch (Exception e10) {
            e10.printStackTrace();
        }
    }

    private void k() {
        try {
            if (this.f8612d == null) {
                return;
            }
            n.a("ShakeUtil", "setShakeSensitivityAliase");
            b(this.f8612d.getShakeCount());
            a(this.f8612d.getShakeStartAmplitude());
            b(this.f8612d.getShakeEndAmplitude());
            c(this.f8612d.getRotatAmplitude());
            c(this.f8612d.getRotatCount());
            new Handler().postDelayed(new Runnable() { // from class: com.beizi.ad.a.a.e.1
                @Override // java.lang.Runnable
                public void run() {
                    e.this.j();
                }
            }, a(this.f8612d.getPassivationTime()));
        } catch (Exception e10) {
            e10.printStackTrace();
        }
    }

    private void l() {
        try {
            if (this.f8613e == null) {
                return;
            }
            n.a("ShakeUtil", "setShakeSensitivityCool");
            b(this.f8613e.getShakeCount());
            a(this.f8613e.getShakeStartAmplitude());
            b(this.f8613e.getShakeEndAmplitude());
            c(this.f8613e.getRotatAmplitude());
            c(this.f8613e.getRotatCount());
        } catch (Exception e10) {
            e10.printStackTrace();
        }
    }

    private boolean m() {
        try {
            if (this.f8613e == null || TextUtils.isEmpty(this.D)) {
                return false;
            }
            long coolTime = this.f8613e.getCoolTime();
            long jLongValue = ((Long) l.d(this.f8609a, this.D, 0L)).longValue();
            return jLongValue != 0 && System.currentTimeMillis() - jLongValue < coolTime;
        } catch (Exception e10) {
            e10.printStackTrace();
            return false;
        }
    }

    private boolean n() {
        try {
            AdSpacesBean.BuyerBean.CoolShakeViewBean coolShakeViewBean = this.f8613e;
            if (coolShakeViewBean == null) {
                return false;
            }
            return System.currentTimeMillis() - q.a(this.f8609a) < coolShakeViewBean.getUserProtectTime();
        } catch (Exception e10) {
            e10.printStackTrace();
            return false;
        }
    }

    private void o() {
        try {
            n.a("ShakeUtil", "registerShakeListener");
            this.C = true;
            q();
            if (this.f8620l == null) {
                this.f8620l = (SensorManager) this.f8609a.getApplicationContext().getSystemService("sensor");
            }
            if (this.f8621m == null) {
                this.f8621m = this.f8620l.getDefaultSensor(1);
            }
            this.f8620l.registerListener(this.J, this.f8621m, 2);
        } catch (Exception e10) {
            e10.printStackTrace();
        }
    }

    private void p() {
        try {
            n.a("ShakeUtil", "unRegisterShakeListener");
            this.C = false;
            SensorManager sensorManager = this.f8620l;
            if (sensorManager != null) {
                sensorManager.unregisterListener(this.J);
            }
        } catch (Exception e10) {
            e10.printStackTrace();
        }
    }

    private void q() {
        this.f8632x = 0;
        this.f8633y = 0;
        int i10 = this.f8616h;
        this.f8623o = i10;
        this.f8624p = i10;
        this.f8625q = i10;
        this.f8626r = this.f8617i;
        this.P = 0.0f;
        this.Q = 0.0f;
        this.R = 0.0f;
        this.S = 0.0f;
        this.T = 0.0f;
        this.U = 0.0f;
        this.M = 0.0f;
        this.W = false;
        if (this.K > 0) {
            this.V = false;
        }
        this.Y = false;
    }

    private synchronized void r() {
        try {
            if (this.f8622n != null && this.f8634z) {
                if (this.Y) {
                    return;
                }
                this.Y = true;
                n.a("ShakeUtil", "callBackResult");
                b();
                if (!this.B && !TextUtils.isEmpty(this.D)) {
                    l.c(this.f8609a, this.D, Long.valueOf(System.currentTimeMillis()));
                }
                this.f8622n.a();
            }
        } catch (Exception e10) {
            e10.printStackTrace();
        }
    }

    private void s() {
        try {
            SensorManager sensorManager = this.f8620l;
            if (sensorManager != null) {
                Sensor defaultSensor = sensorManager.getDefaultSensor(4);
                this.L = defaultSensor;
                if (defaultSensor != null) {
                    this.f8620l.registerListener(this.J, defaultSensor, 1);
                } else {
                    this.V = true;
                }
            }
        } catch (Exception e10) {
            e10.printStackTrace();
        }
    }

    public String c() {
        return this.H;
    }

    public void d() {
        try {
            p();
            this.f8610b = null;
            this.f8611c = null;
            this.f8613e = null;
            this.f8612d = null;
            this.f8614f = null;
            this.f8609a = null;
            this.f8620l = null;
            this.f8621m = null;
            this.f8622n = null;
            AnimatorSet animatorSet = this.G;
            if (animatorSet != null) {
                animatorSet.removeAllListeners();
            }
            this.G = null;
        } catch (Exception e10) {
            e10.printStackTrace();
        }
    }

    public void e() {
        if (this.K > 0) {
            s();
        } else {
            this.V = true;
        }
    }

    private int[] c(ViewGroup viewGroup) {
        int i10;
        int i11;
        int i12;
        int[] iArr = new int[4];
        if (viewGroup != null) {
            try {
                AdSpacesBean.BuyerBean.PercentPositionBean percentPositionBean = this.f8614f;
                if (percentPositionBean != null) {
                    String centerX = percentPositionBean.getCenterX();
                    String centerY = this.f8614f.getCenterY();
                    String width = this.f8614f.getWidth();
                    String height = this.f8614f.getHeight();
                    if (TextUtils.isEmpty(centerX) || "0".equals(centerX)) {
                        centerX = "10";
                    }
                    if (TextUtils.isEmpty(centerY) || "0".equals(centerY)) {
                        centerY = "10";
                    }
                    viewGroup.measure(0, 0);
                    int iB = t.b(this.f8609a, viewGroup.getMeasuredWidth());
                    int iB2 = t.b(this.f8609a, viewGroup.getMeasuredHeight());
                    if (iB <= 0) {
                        iB = q.h(this.f8609a);
                    }
                    n.a("ShakeUtil", "position containerWidth:" + iB + ";containerHeight:" + iB2 + ";" + viewGroup.getLayoutParams().width + ";" + viewGroup.getLayoutParams().height);
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
                    int iA = t.a(this.f8609a, i12);
                    int iA2 = t.a(this.f8609a, i13);
                    int iA3 = t.a(this.f8609a, i10);
                    int iA4 = t.a(this.f8609a, i11);
                    iArr[0] = iA;
                    iArr[1] = iA2;
                    if (iA3 > 0) {
                        iArr[2] = iA3;
                    }
                    if (iA4 > 0) {
                        iArr[3] = iA4;
                    }
                    n.a("ShakeUtil", "position widthInt:" + iArr[0] + ";heightInt:" + iArr[1] + ";centerX:" + iArr[2] + ";centerY:" + iArr[3] + ";" + centerX + ";" + centerY);
                    return iArr;
                }
            } catch (Exception e10) {
                e10.printStackTrace();
            }
        }
        int iA5 = t.a(this.f8609a, 20.0f);
        int iA6 = t.a(this.f8609a, 10.0f);
        iArr[0] = iA5;
        iArr[1] = iA5;
        iArr[2] = iA6;
        iArr[3] = iA6;
        return iArr;
    }

    public void a(AdSpacesBean.BuyerBean.ShakeViewBean shakeViewBean) {
        this.f8610b = shakeViewBean;
    }

    public void b() {
        try {
            this.f8634z = false;
            p();
            q();
        } catch (Exception e10) {
            e10.printStackTrace();
        }
    }

    public void a() {
        try {
            if (!this.C && this.I) {
                this.f8634z = true;
                i();
                o();
                e();
            }
        } catch (Exception e10) {
            e10.printStackTrace();
        }
    }

    public View b(ViewGroup viewGroup) {
        if (viewGroup != null) {
            try {
                if (this.f8609a != null && this.I) {
                    final ImageView imageView = new ImageView(this.f8609a);
                    imageView.setVisibility(0);
                    imageView.setImageResource(R.drawable.beizi_icon_shake_native);
                    if (!TextUtils.isEmpty(this.H)) {
                        h.a(this.f8609a).b(this.H, new h.a() { // from class: com.beizi.ad.a.a.e.3
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
                    int[] iArrD = d(viewGroup);
                    if (viewGroup instanceof RelativeLayout) {
                        RelativeLayout.LayoutParams layoutParams = new RelativeLayout.LayoutParams(-1, -2);
                        int i10 = iArrD[0];
                        if (i10 > 0) {
                            layoutParams.width = i10;
                        }
                        int i11 = iArrD[1];
                        if (i11 > 0) {
                            layoutParams.height = i11;
                        }
                        layoutParams.leftMargin = iArrD[2];
                        layoutParams.topMargin = iArrD[3];
                        layoutParams.addRule(83);
                        viewGroup.addView(imageView, layoutParams);
                    } else if (viewGroup instanceof FrameLayout) {
                        FrameLayout.LayoutParams layoutParams2 = new FrameLayout.LayoutParams(-1, -2, 83);
                        int i12 = iArrD[0];
                        if (i12 > 0) {
                            layoutParams2.width = i12;
                        }
                        int i13 = iArrD[1];
                        if (i13 > 0) {
                            layoutParams2.height = i13;
                        }
                        viewGroup.addView(imageView, layoutParams2);
                    } else if (viewGroup instanceof LinearLayout) {
                        LinearLayout.LayoutParams layoutParams3 = new LinearLayout.LayoutParams(-1, -2, 83.0f);
                        int i14 = iArrD[0];
                        if (i14 > 0) {
                            layoutParams3.width = i14;
                        }
                        int i15 = iArrD[1];
                        if (i15 > 0) {
                            layoutParams3.height = i15;
                        }
                        layoutParams3.leftMargin = iArrD[2];
                        layoutParams3.topMargin = iArrD[3];
                        viewGroup.addView(imageView, layoutParams3);
                    } else {
                        ViewGroup.LayoutParams layoutParams4 = new ViewGroup.LayoutParams(-1, -2);
                        int i16 = iArrD[0];
                        if (i16 > 0) {
                            layoutParams4.width = i16;
                        }
                        int i17 = iArrD[1];
                        if (i17 > 0) {
                            layoutParams4.height = i17;
                        }
                        viewGroup.addView(imageView, layoutParams4);
                    }
                    return imageView;
                }
            } catch (Exception e10) {
                e10.printStackTrace();
            }
        }
        return null;
    }

    private AdSpacesBean.BuyerBean.OrderDataShakeViewBean a(List<AdSpacesBean.BuyerBean.OrderDataShakeViewBean> list, String str) {
        if (list != null && str != null) {
            for (AdSpacesBean.BuyerBean.OrderDataShakeViewBean orderDataShakeViewBean : list) {
                List<String> orderList = orderDataShakeViewBean.getOrderList();
                if (orderList != null && orderList.contains(str)) {
                    return orderDataShakeViewBean;
                }
            }
        }
        return null;
    }

    public void a(ViewGroup viewGroup) {
        if (viewGroup != null) {
            try {
                if (this.f8609a != null && this.I) {
                    final ImageView imageView = new ImageView(this.f8609a);
                    imageView.setVisibility(0);
                    imageView.setImageResource(R.mipmap.beizi_interaction_icon_shake);
                    if (!TextUtils.isEmpty(this.H)) {
                        h.a(this.f8609a).b(this.H, new h.a() { // from class: com.beizi.ad.a.a.e.2
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
                    int[] iArrC = c(viewGroup);
                    if (viewGroup instanceof RelativeLayout) {
                        RelativeLayout.LayoutParams layoutParams = new RelativeLayout.LayoutParams(-1, -2);
                        int i10 = iArrC[0];
                        if (i10 > 0) {
                            layoutParams.width = i10;
                        }
                        int i11 = iArrC[1];
                        if (i11 > 0) {
                            layoutParams.height = i11;
                        }
                        layoutParams.leftMargin = iArrC[2];
                        layoutParams.topMargin = iArrC[3];
                        layoutParams.addRule(17);
                        viewGroup.addView(imageView, layoutParams);
                    } else if (viewGroup instanceof FrameLayout) {
                        FrameLayout.LayoutParams layoutParams2 = new FrameLayout.LayoutParams(-1, -2, 17);
                        int i12 = iArrC[0];
                        if (i12 > 0) {
                            layoutParams2.width = i12;
                        }
                        int i13 = iArrC[1];
                        if (i13 > 0) {
                            layoutParams2.height = i13;
                        }
                        layoutParams2.leftMargin = iArrC[2];
                        layoutParams2.topMargin = iArrC[3];
                        viewGroup.addView(imageView, layoutParams2);
                    } else if (viewGroup instanceof LinearLayout) {
                        LinearLayout.LayoutParams layoutParams3 = new LinearLayout.LayoutParams(-1, -2, 17.0f);
                        int i14 = iArrC[0];
                        if (i14 > 0) {
                            layoutParams3.width = i14;
                        }
                        int i15 = iArrC[1];
                        if (i15 > 0) {
                            layoutParams3.height = i15;
                        }
                        layoutParams3.leftMargin = iArrC[2];
                        layoutParams3.topMargin = iArrC[3];
                        viewGroup.addView(imageView, layoutParams3);
                    } else {
                        ViewGroup.LayoutParams layoutParams4 = new ViewGroup.LayoutParams(-1, -2);
                        int i16 = iArrC[0];
                        if (i16 > 0) {
                            layoutParams4.width = i16;
                        }
                        int i17 = iArrC[1];
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

    private int[] d(ViewGroup viewGroup) {
        int i10;
        int i11;
        int i12;
        int[] iArr = new int[4];
        if (viewGroup != null) {
            try {
                AdSpacesBean.BuyerBean.PercentPositionBean percentPositionBean = this.f8614f;
                if (percentPositionBean != null) {
                    String centerX = percentPositionBean.getCenterX();
                    String centerY = this.f8614f.getCenterY();
                    String width = this.f8614f.getWidth();
                    String height = this.f8614f.getHeight();
                    if (TextUtils.isEmpty(centerX) || "0".equals(centerX)) {
                        centerX = "0";
                    }
                    if (TextUtils.isEmpty(centerY) || "0".equals(centerY)) {
                        centerY = "0";
                    }
                    if (TextUtils.isEmpty(width) || "0".equals(width)) {
                        width = "120";
                    }
                    if (TextUtils.isEmpty(height) || "0".equals(height)) {
                        height = "36";
                    }
                    viewGroup.measure(0, 0);
                    int iB = t.b(this.f8609a, viewGroup.getMeasuredWidth());
                    int iB2 = t.b(this.f8609a, viewGroup.getMeasuredHeight());
                    if (iB <= 0) {
                        iB = q.h(this.f8609a);
                    }
                    n.a("ShakeUtil", "position containerWidth:" + iB + ";containerHeight:" + iB2 + ";" + viewGroup.getLayoutParams().width + ";" + viewGroup.getLayoutParams().height);
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
                    int iA = t.a(this.f8609a, i12);
                    int iA2 = t.a(this.f8609a, i13);
                    int iA3 = t.a(this.f8609a, i10);
                    int iA4 = t.a(this.f8609a, i11);
                    iArr[0] = iA;
                    iArr[1] = iA2;
                    if (iA3 > 0) {
                        iArr[2] = iA3;
                    }
                    if (iA4 > 0) {
                        iArr[3] = iA4;
                    }
                    n.a("ShakeUtil", "position widthInt:" + iArr[0] + ";heightInt:" + iArr[1] + ";centerX:" + iArr[2] + ";centerY:" + iArr[3] + ";" + centerX + ";" + centerY);
                    return iArr;
                }
            } catch (Exception e10) {
                e10.printStackTrace();
            }
        }
        int iA5 = t.a(this.f8609a, 120.0f);
        int iA6 = t.a(this.f8609a, 36.0f);
        iArr[0] = iA5;
        iArr[1] = iA6;
        iArr[2] = 0;
        iArr[3] = 0;
        return iArr;
    }

    public void c(double d10) {
        this.f8629u = d10;
    }

    public void c(int i10) {
        this.f8631w = i10;
    }

    public void b(double d10) {
        this.f8628t = d10;
    }

    public void b(int i10) {
        this.f8630v = i10;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void b(SensorEvent sensorEvent) {
        if (sensorEvent != null) {
            try {
                if (!this.Y && System.currentTimeMillis() - this.X >= 50) {
                    Sensor sensor = sensorEvent.sensor;
                    float[] fArr = sensorEvent.values;
                    int type = sensor.getType();
                    if (fArr != null && type == 4) {
                        this.X = System.currentTimeMillis();
                        float f10 = this.M;
                        if (f10 != 0.0f) {
                            float f11 = fArr[0];
                            float f12 = fArr[1];
                            float f13 = fArr[2];
                            float f14 = (sensorEvent.timestamp - f10) * this.N;
                            float[] fArr2 = this.O;
                            fArr2[0] = (float) (((double) fArr2[0]) + Math.toDegrees(f11 * f14));
                            float[] fArr3 = this.O;
                            fArr3[1] = (float) (((double) fArr3[1]) + Math.toDegrees(f12 * f14));
                            float[] fArr4 = this.O;
                            fArr4[2] = (float) (((double) fArr4[2]) + Math.toDegrees(f13 * f14));
                            float[] fArr5 = this.O;
                            float f15 = fArr5[0];
                            if (f15 > 0.0f) {
                                if (f15 > this.S) {
                                    this.S = f15;
                                }
                            } else if (f15 < this.P) {
                                this.P = f15;
                            }
                            float f16 = fArr5[1];
                            if (f16 > 0.0f) {
                                if (f16 > this.T) {
                                    this.T = f16;
                                }
                            } else if (f16 < this.Q) {
                                this.Q = f16;
                            }
                            float f17 = fArr5[2];
                            if (f17 > 0.0f) {
                                if (f17 > this.U) {
                                    this.U = f17;
                                }
                            } else if (f17 < this.R) {
                                this.R = f17;
                            }
                            if ((Math.abs(this.P) > this.K && Math.abs(this.S) > this.K) || ((Math.abs(this.Q) > this.K && Math.abs(this.T) > this.K) || (Math.abs(this.R) > this.K && Math.abs(this.U) > this.K))) {
                                n.a("ShakeUtil", "rotate  xMin: " + String.format("%.4f", Float.valueOf(this.P)) + ",xMax: " + String.format("%.4f", Float.valueOf(this.S)) + ",yMin: " + String.format("%.4f", Float.valueOf(this.Q)) + ",yMax: " + String.format("%.4f", Float.valueOf(this.T)) + ",zMin: " + String.format("%.4f", Float.valueOf(this.R)) + ",zMax: " + String.format("%.4f", Float.valueOf(this.U)));
                                this.V = true;
                            }
                            if (this.W && this.V) {
                                r();
                            }
                        }
                        this.M = sensorEvent.timestamp;
                    }
                }
            } catch (Exception e10) {
                e10.printStackTrace();
            }
        }
    }

    public void a(ImageView imageView) {
        try {
            ArrayList arrayList = new ArrayList();
            a(imageView, arrayList, "rotation", 0.0f, this.F);
            a(imageView, arrayList, "rotation", this.F, 0.0f);
            a(imageView, arrayList, "rotation", 0.0f, -this.F);
            a(imageView, arrayList, "rotation", -this.F, 0.0f);
            if (arrayList.size() > 0) {
                AnimatorSet animatorSet = new AnimatorSet();
                this.G = animatorSet;
                animatorSet.addListener(new Animator.AnimatorListener() { // from class: com.beizi.ad.a.a.e.4
                    @Override // android.animation.Animator.AnimatorListener
                    public void onAnimationCancel(Animator animator) {
                    }

                    @Override // android.animation.Animator.AnimatorListener
                    public void onAnimationEnd(Animator animator) {
                        try {
                            if (e.this.G != null) {
                                e.this.G.start();
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
                this.G.playSequentially(arrayList);
                this.G.start();
            }
        } catch (Exception e10) {
            e10.printStackTrace();
        }
    }

    private void a(ImageView imageView, List<Animator> list, String str, float f10, float f11) {
        try {
            ObjectAnimator objectAnimatorOfFloat = ObjectAnimator.ofFloat(imageView, str, f10, f11);
            objectAnimatorOfFloat.setDuration(this.E);
            list.add(objectAnimatorOfFloat);
        } catch (Exception e10) {
            e10.printStackTrace();
        }
    }

    public int a(int i10) {
        return (int) ((Math.random() * ((double) i10)) + 1.0d);
    }

    public void a(double d10) {
        this.f8627s = d10;
    }

    public void a(a aVar) {
        this.f8622n = aVar;
    }

    private double a(float f10, float f11, float f12) {
        try {
            return Math.sqrt(Math.pow(((double) f10) / this.f8615g, 2.0d) + Math.pow(((double) f11) / this.f8615g, 2.0d) + Math.pow(((double) f12) / this.f8615g, 2.0d));
        } catch (Exception e10) {
            e10.printStackTrace();
            return 0.0d;
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void a(SensorEvent sensorEvent) {
        float[] fArr;
        try {
            if (System.currentTimeMillis() - this.A >= 100 && sensorEvent != null && this.f8634z && (fArr = sensorEvent.values) != null && fArr.length >= 3) {
                this.A = System.currentTimeMillis();
                double dA = a(fArr[0], fArr[1], fArr[2]);
                if (dA > this.f8627s) {
                    this.f8626r = this.f8618j;
                }
                if (dA <= this.f8628t && this.f8626r == this.f8618j) {
                    this.f8626r = this.f8619k;
                    this.f8632x++;
                }
                int i10 = this.f8630v;
                if (i10 <= 0 || this.f8632x < i10) {
                    return;
                }
                this.W = true;
                n.b("ShakeUtil", " current: " + String.format("%.4f", Double.valueOf(dA)) + ", execute: " + this.f8632x + ", count: " + this.f8630v + "_" + this.f8631w + ", shake: " + this.f8627s + "_" + this.f8628t);
                if (this.W && this.V) {
                    r();
                }
            }
        } catch (Exception e10) {
            e10.printStackTrace();
        }
    }
}
