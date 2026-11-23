package com.beizi.fusion.tool;

import android.content.Context;
import android.graphics.Color;
import android.hardware.Sensor;
import android.hardware.SensorEvent;
import android.hardware.SensorEventListener;
import android.hardware.SensorManager;
import android.text.TextUtils;
import android.view.View;
import android.view.ViewGroup;
import android.widget.ImageView;
import android.widget.TextView;
import com.beizi.fusion.R;
import com.beizi.fusion.model.AdSpacesBean;
import com.beizi.fusion.widget.ShakeView;
import com.bykv.vk.component.ttvideo.player.MediaPlayer;

/* JADX INFO: loaded from: classes6.dex */
public class ad {

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private static SensorManager f10333b;
    private float A;
    private float D;
    private float E;
    private float F;
    private float G;
    private float H;
    private float I;
    private boolean J;
    private boolean K;
    private long L;

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    ShakeView f10334a;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    private Context f10335c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    private double f10336d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    private double f10337e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    private double f10338f;

    /* JADX INFO: renamed from: g, reason: collision with root package name */
    private int f10339g;

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    private int f10340h;

    /* JADX INFO: renamed from: t, reason: collision with root package name */
    private AdSpacesBean.BuyerBean.CoolShakeViewBean f10352t;

    /* JADX INFO: renamed from: u, reason: collision with root package name */
    private String f10353u;

    /* JADX INFO: renamed from: w, reason: collision with root package name */
    private boolean f10355w;

    /* JADX INFO: renamed from: y, reason: collision with root package name */
    private int f10357y;

    /* JADX INFO: renamed from: z, reason: collision with root package name */
    private Sensor f10358z;

    /* JADX INFO: renamed from: i, reason: collision with root package name */
    private int f10341i = 0;

    /* JADX INFO: renamed from: j, reason: collision with root package name */
    private int f10342j = 0;

    /* JADX INFO: renamed from: k, reason: collision with root package name */
    private float f10343k = -100.0f;

    /* JADX INFO: renamed from: l, reason: collision with root package name */
    private float f10344l = -100.0f;

    /* JADX INFO: renamed from: m, reason: collision with root package name */
    private float f10345m = -100.0f;

    /* JADX INFO: renamed from: n, reason: collision with root package name */
    private int f10346n = 0;

    /* JADX INFO: renamed from: o, reason: collision with root package name */
    private a f10347o = null;

    /* JADX INFO: renamed from: p, reason: collision with root package name */
    private boolean f10348p = false;

    /* JADX INFO: renamed from: q, reason: collision with root package name */
    private int f10349q = 200;

    /* JADX INFO: renamed from: r, reason: collision with root package name */
    private View f10350r = null;

    /* JADX INFO: renamed from: s, reason: collision with root package name */
    private long f10351s = 0;

    /* JADX INFO: renamed from: v, reason: collision with root package name */
    private boolean f10354v = false;

    /* JADX INFO: renamed from: x, reason: collision with root package name */
    private final SensorEventListener f10356x = new SensorEventListener() { // from class: com.beizi.fusion.tool.ad.1
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
                    ad.this.a(sensorEvent);
                } else if (type == 4) {
                    ad.this.b(sensorEvent);
                }
            } catch (Exception e10) {
                e10.printStackTrace();
            }
        }
    };
    private float B = 1.0E-9f;
    private float[] C = new float[3];

    public interface a {
        void a();
    }

    public ad(Context context) {
        this.f10335c = context;
        f10333b = (SensorManager) context.getApplicationContext().getSystemService("sensor");
    }

    private void e() {
        try {
            SensorManager sensorManager = f10333b;
            if (sensorManager != null) {
                Sensor defaultSensor = sensorManager.getDefaultSensor(4);
                this.f10358z = defaultSensor;
                if (defaultSensor != null) {
                    f10333b.registerListener(this.f10356x, defaultSensor, 1);
                } else {
                    this.J = true;
                }
            }
        } catch (Exception e10) {
            e10.printStackTrace();
        }
    }

    public void c(double d10) {
        this.f10338f = d10;
    }

    public void d() {
        this.f10343k = -100.0f;
        this.f10344l = -100.0f;
        this.f10345m = -100.0f;
        this.f10346n = 0;
        this.f10349q = 200;
        this.f10341i = 0;
        this.f10342j = 0;
        this.f10348p = false;
        this.D = 0.0f;
        this.E = 0.0f;
        this.F = 0.0f;
        this.G = 0.0f;
        this.H = 0.0f;
        this.I = 0.0f;
        this.A = 0.0f;
        this.K = false;
        if (this.f10357y > 0) {
            this.J = false;
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void a(SensorEvent sensorEvent) {
        int i10;
        if (System.currentTimeMillis() - this.f10351s < 200) {
            return;
        }
        if (!aw.a(this.f10350r)) {
            d();
            return;
        }
        if (this.f10354v && this.f10352t != null && !TextUtils.isEmpty(this.f10353u) && ap.a().b(this.f10353u) > 0) {
            a(this.f10352t);
        }
        float[] fArr = sensorEvent.values;
        if (fArr == null || fArr.length < 3) {
            return;
        }
        float f10 = fArr[0];
        float f11 = fArr[1];
        float f12 = fArr[2];
        if (this.f10343k == -100.0f) {
            this.f10343k = f10;
        }
        if (this.f10344l == -100.0f) {
            this.f10344l = f11;
        }
        if (this.f10345m == -100.0f) {
            this.f10345m = f12;
        }
        double dAbs = ((double) Math.abs(f10 - this.f10343k)) / 9.8d;
        double dAbs2 = ((double) Math.abs(f11 - this.f10344l)) / 9.8d;
        double dAbs3 = ((double) Math.abs(f12 - this.f10345m)) / 9.8d;
        double d10 = this.f10338f;
        if (dAbs > d10) {
            this.f10342j++;
            this.f10343k = f10;
        }
        if (dAbs2 > d10) {
            this.f10342j++;
            this.f10344l = f11;
        }
        if (dAbs3 > d10) {
            this.f10342j++;
            this.f10345m = f12;
        }
        if (a(f10, f11, f12, this.f10336d)) {
            this.f10346n = 1;
        }
        if (this.f10346n == 1 && b(f10, f11, f12, this.f10337e)) {
            this.f10346n = 2;
            this.f10341i++;
        }
        int i11 = this.f10339g;
        if ((i11 > 0 && this.f10341i >= i11) || ((i10 = this.f10340h) > 0 && this.f10342j >= i10)) {
            this.K = true;
            ac.b("ShakeUtil", "mShakeCount = " + this.f10341i + ",dstShakeCount = " + this.f10339g + ",mRotateCount = " + this.f10342j + ",dstRotateCount = " + this.f10340h);
            if (this.K && this.J) {
                a();
            }
        }
        this.f10351s = System.currentTimeMillis();
    }

    public void b(double d10) {
        this.f10337e = d10;
    }

    public void c() {
        ac.a("BeiZis", "enter unRegisterShakeListenerAndSetDefault");
        SensorManager sensorManager = f10333b;
        if (sensorManager != null) {
            sensorManager.unregisterListener(this.f10356x);
        }
        d();
        ShakeView shakeView = this.f10334a;
        if (shakeView != null) {
            shakeView.stopShake();
        }
        this.f10347o = null;
        this.f10335c = null;
        this.f10334a = null;
    }

    public void b(int i10) {
        this.f10340h = i10;
    }

    public void b(AdSpacesBean.BuyerBean.CoolShakeViewBean coolShakeViewBean) {
        this.f10352t = coolShakeViewBean;
    }

    private boolean b(float f10, float f11, float f12, double d10) {
        return Math.sqrt((Math.pow(((double) f10) / 9.8d, 2.0d) + Math.pow(((double) f11) / 9.8d, 2.0d)) + Math.pow(((double) f12) / 9.8d, 2.0d)) < d10;
    }

    public void b() {
        SensorManager sensorManager = f10333b;
        if (sensorManager != null) {
            sensorManager.registerListener(this.f10356x, sensorManager.getDefaultSensor(1), 100000);
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void b(SensorEvent sensorEvent) {
        if (sensorEvent != null) {
            try {
                if (!this.f10348p && System.currentTimeMillis() - this.L >= 50) {
                    Sensor sensor = sensorEvent.sensor;
                    float[] fArr = sensorEvent.values;
                    int type = sensor.getType();
                    if (fArr != null && type == 4) {
                        this.L = System.currentTimeMillis();
                        float f10 = this.A;
                        if (f10 != 0.0f) {
                            float f11 = fArr[0];
                            float f12 = fArr[1];
                            float f13 = fArr[2];
                            float f14 = (sensorEvent.timestamp - f10) * this.B;
                            float[] fArr2 = this.C;
                            fArr2[0] = (float) (((double) fArr2[0]) + Math.toDegrees(f11 * f14));
                            float[] fArr3 = this.C;
                            fArr3[1] = (float) (((double) fArr3[1]) + Math.toDegrees(f12 * f14));
                            float[] fArr4 = this.C;
                            fArr4[2] = (float) (((double) fArr4[2]) + Math.toDegrees(f13 * f14));
                            float[] fArr5 = this.C;
                            float f15 = fArr5[0];
                            if (f15 > 0.0f) {
                                if (f15 > this.G) {
                                    this.G = f15;
                                }
                            } else if (f15 < this.D) {
                                this.D = f15;
                            }
                            float f16 = fArr5[1];
                            if (f16 > 0.0f) {
                                if (f16 > this.H) {
                                    this.H = f16;
                                }
                            } else if (f16 < this.E) {
                                this.E = f16;
                            }
                            float f17 = fArr5[2];
                            if (f17 > 0.0f) {
                                if (f17 > this.I) {
                                    this.I = f17;
                                }
                            } else if (f17 < this.F) {
                                this.F = f17;
                            }
                            if ((Math.abs(this.D) > this.f10357y && Math.abs(this.G) > this.f10357y) || ((Math.abs(this.E) > this.f10357y && Math.abs(this.H) > this.f10357y) || (Math.abs(this.F) > this.f10357y && Math.abs(this.I) > this.f10357y))) {
                                ac.a("ShakeUtil", "rotate  xMin: " + String.format("%.4f", Float.valueOf(this.D)) + ",xMax: " + String.format("%.4f", Float.valueOf(this.G)) + ",yMin: " + String.format("%.4f", Float.valueOf(this.E)) + ",yMax: " + String.format("%.4f", Float.valueOf(this.H)) + ",zMin: " + String.format("%.4f", Float.valueOf(this.F)) + ",zMax: " + String.format("%.4f", Float.valueOf(this.I)));
                                this.J = true;
                            }
                            if (this.K && this.J) {
                                a();
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

    public void c(int i10) {
        this.f10357y = i10;
        if (i10 > 0) {
            e();
        } else {
            this.J = true;
        }
    }

    public void a(AdSpacesBean.BuyerBean.ShakeViewBean shakeViewBean) {
        if (shakeViewBean == null) {
            return;
        }
        ac.a("BeiZis", "setShakeParams shakeCount:" + shakeViewBean.getShakeCount() + ";rotatCount:" + shakeViewBean.getRotatCount());
        try {
            this.f10354v = true;
            a(shakeViewBean.getShakeCount());
            a(shakeViewBean.getShakeStartAmplitude());
            b(shakeViewBean.getShakeEndAmplitude());
            c(shakeViewBean.getRotatAmplitude());
            b(shakeViewBean.getRotatCount());
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
            this.f10354v = false;
            a(coolShakeViewBean.getShakeCount());
            a(coolShakeViewBean.getShakeStartAmplitude());
            b(coolShakeViewBean.getShakeEndAmplitude());
            c(coolShakeViewBean.getRotatAmplitude());
            b(coolShakeViewBean.getRotatCount());
        } catch (Exception e10) {
            e10.printStackTrace();
        }
    }

    public void a(AdSpacesBean.BuyerBean.CoolShakeViewBean coolShakeViewBean, String str) {
        b(coolShakeViewBean);
        a(str);
    }

    public void a(double d10) {
        this.f10336d = d10;
    }

    public void a(int i10) {
        this.f10339g = i10;
    }

    public void a(a aVar) {
        this.f10347o = aVar;
    }

    public void a(String str) {
        this.f10353u = str;
    }

    private boolean a(float f10, float f11, float f12, double d10) {
        return Math.sqrt((Math.pow(((double) f10) / 9.8d, 2.0d) + Math.pow(((double) f11) / 9.8d, 2.0d)) + Math.pow(((double) f12) / 9.8d, 2.0d)) > d10;
    }

    protected synchronized void a() {
        StringBuilder sb2 = new StringBuilder();
        sb2.append("enter callBackShakeHappened and mShakeStateListener != null ? ");
        sb2.append(this.f10347o != null);
        sb2.append(",!isCallBack = ");
        sb2.append(this.f10348p ? false : true);
        ac.a("BeiZis", sb2.toString());
        if (this.f10347o != null && !this.f10348p) {
            ac.a("BeiZis", "callback onShakeHappened()");
            this.f10348p = true;
            this.f10347o.a();
        }
    }

    public void a(View view) {
        this.f10350r = view;
    }

    public View a(int i10, int i11, AdSpacesBean.BuyerBean.PercentPositionBean percentPositionBean) {
        int i12;
        int i13;
        int i14;
        int i15;
        ac.a("BeiZis", "enter getShakeView");
        if (this.f10335c == null || percentPositionBean == null) {
            return null;
        }
        this.f10334a = new ShakeView(this.f10335c);
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
        float fI = au.i(this.f10335c);
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
        int iA = au.a(this.f10335c, i16);
        int iA2 = au.a(this.f10335c, i15);
        int iA3 = au.a(this.f10335c, i12);
        int iA4 = au.a(this.f10335c, i13);
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
            iA4 = au.a(this.f10335c, i11) / 2;
        }
        if (iA3 == 0) {
            iA3 = au.a(this.f10335c, i10) / 2;
        }
        marginLayoutParams.topMargin = iA4 - (iA2 / 2);
        marginLayoutParams.leftMargin = iA3 - (iA / 2);
        this.f10334a.setLayoutParams(marginLayoutParams);
        ac.a("BeiZis", "topMargin = " + marginLayoutParams.topMargin + ",leftMargin = " + marginLayoutParams.leftMargin + ",widthInt = " + iA + ",heightInt = " + iA2);
        this.f10334a.setDownloadApp(Boolean.valueOf(this.f10355w));
        this.f10334a.startShake();
        b();
        return this.f10334a;
    }

    public View a(int i10, int i11, AdSpacesBean.BuyerBean.PercentPositionBean percentPositionBean, String str) {
        int i12;
        int i13;
        int i14;
        int i15;
        View view;
        ac.a("BeiZis", "enter getShakeView");
        if (this.f10335c == null || percentPositionBean == null) {
            return null;
        }
        String centerX = percentPositionBean.getCenterX();
        String centerY = percentPositionBean.getCenterY();
        String width = percentPositionBean.getWidth();
        String height = percentPositionBean.getHeight();
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
        float fI = au.i(this.f10335c);
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
        int iA = au.a(this.f10335c, i16);
        int iA2 = au.a(this.f10335c, i15);
        int iA3 = au.a(this.f10335c, i12);
        int iA4 = au.a(this.f10335c, i13);
        ac.a("BeiZis", "widthInt = " + iA + ",heightInt = " + iA2);
        if (iA == 0) {
            iA = MediaPlayer.MEDIA_PLAYER_OPTION_ENABLE_DEMUXER_STALL;
        }
        if (iA2 == 0) {
            iA2 = 108;
        }
        ViewGroup.MarginLayoutParams marginLayoutParams = new ViewGroup.MarginLayoutParams(iA, iA2);
        ac.a("BeiZis", "centerYInt = " + iA4 + ",centerXInt = " + iA3 + ",adWidthDp = " + i10 + ",adHeightDp = " + i11);
        float f10 = (float) i11;
        int iA5 = (au.a(this.f10335c, f10) - iA4) - iA2;
        if (iA5 < 0) {
            iA5 = au.a(this.f10335c, f10) / 4;
        }
        marginLayoutParams.topMargin = iA5;
        marginLayoutParams.leftMargin = iA3;
        if (TextUtils.isEmpty(str)) {
            ImageView imageView = new ImageView(this.f10335c);
            if (!this.f10355w) {
                imageView.setImageResource(R.drawable.beizi_icon_shake_native);
                view = imageView;
            } else {
                imageView.setImageResource(R.drawable.beizi_icon_shake_native_download);
                view = imageView;
            }
        } else {
            TextView textView = new TextView(this.f10335c);
            textView.setText(str);
            textView.setTextColor(Color.parseColor("#FFFFFFFF"));
            textView.setShadowLayer(5.0f, 4.0f, 4.0f, Color.parseColor("#8C000000"));
            view = textView;
        }
        view.setLayoutParams(marginLayoutParams);
        ac.a("BeiZis", "topMargin = " + marginLayoutParams.topMargin + ",leftMargin = " + marginLayoutParams.leftMargin + ",widthInt = " + iA + ",heightInt = " + iA2);
        b();
        return view;
    }

    public void a(Boolean bool) {
        this.f10355w = bool.booleanValue();
    }

    public void a(boolean z10) {
        this.f10348p = !z10;
    }
}
