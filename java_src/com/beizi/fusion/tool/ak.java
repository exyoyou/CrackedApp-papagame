package com.beizi.fusion.tool;

import android.content.Context;
import android.hardware.Sensor;
import android.hardware.SensorEvent;
import android.hardware.SensorEventListener;
import android.hardware.SensorManager;
import android.text.TextUtils;
import android.view.MotionEvent;
import android.view.View;
import android.view.ViewGroup;
import android.widget.FrameLayout;
import com.beizi.fusion.model.AdSpacesBean;
import com.beizi.fusion.widget.TwistView;

/* JADX INFO: loaded from: classes6.dex */
public class ak {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private static final String f10423a = "ak";

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    private static SensorManager f10424c;

    /* JADX INFO: renamed from: n, reason: collision with root package name */
    private static String f10425n;

    /* JADX INFO: renamed from: o, reason: collision with root package name */
    private static String f10426o;

    /* JADX INFO: renamed from: p, reason: collision with root package name */
    private static String f10427p;

    /* JADX INFO: renamed from: q, reason: collision with root package name */
    private static String f10428q;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private Context f10429b;

    /* JADX INFO: renamed from: j, reason: collision with root package name */
    private long f10436j;

    /* JADX INFO: renamed from: k, reason: collision with root package name */
    private double f10437k;

    /* JADX INFO: renamed from: l, reason: collision with root package name */
    private double f10438l;

    /* JADX INFO: renamed from: m, reason: collision with root package name */
    private TwistView f10439m;

    /* JADX INFO: renamed from: u, reason: collision with root package name */
    private Boolean f10443u;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    private long f10430d = 0;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    private double f10431e = -999.0d;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    private double f10432f = -999.0d;

    /* JADX INFO: renamed from: g, reason: collision with root package name */
    private boolean f10433g = false;

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    private boolean f10434h = false;

    /* JADX INFO: renamed from: i, reason: collision with root package name */
    private int f10435i = 0;

    /* JADX INFO: renamed from: r, reason: collision with root package name */
    private boolean f10440r = false;

    /* JADX INFO: renamed from: s, reason: collision with root package name */
    private boolean f10441s = false;

    /* JADX INFO: renamed from: t, reason: collision with root package name */
    private a f10442t = null;

    /* JADX INFO: renamed from: v, reason: collision with root package name */
    private final SensorEventListener f10444v = new SensorEventListener() { // from class: com.beizi.fusion.tool.ak.1
        @Override // android.hardware.SensorEventListener
        public void onAccuracyChanged(Sensor sensor, int i10) {
        }

        @Override // android.hardware.SensorEventListener
        public void onSensorChanged(SensorEvent sensorEvent) {
            try {
                if (System.currentTimeMillis() - ak.this.f10430d < 80) {
                    return;
                }
                ak.this.f10430d = System.currentTimeMillis();
                float[] fArr = sensorEvent.values;
                double d10 = ((double) fArr[0]) / 9.8d;
                double d11 = ((double) fArr[1]) / 9.8d;
                double d12 = ((double) fArr[2]) / 9.8d;
                double degrees = Math.toDegrees(Math.atan2(d10, d11));
                double d13 = degrees <= 0.0d ? (-degrees) - 180.0d : 180.0d - degrees;
                double degrees2 = Math.toDegrees(Math.atan2(d10, d12));
                double d14 = degrees2 <= 0.0d ? (-degrees2) - 180.0d : 180.0d - degrees2;
                double degrees3 = Math.toDegrees(Math.atan2(d12, Math.sqrt((d10 * d10) + (d11 * d11)))) + 90.0d;
                if (degrees3 > 45.0d && degrees3 < 135.0d && (Math.abs((Math.sin(d11) / 3.141592653589793d) * 180.0d) >= 45.0d || !ak.this.f10433g)) {
                    if (ak.this.f10432f != -999.0d && ak.this.f10434h) {
                        if ((d13 >= ak.this.f10432f && d13 - ak.this.f10432f > ak.this.f10437k && d13 - ak.this.f10432f <= 180.0d) || (d13 < ak.this.f10432f && ak.this.f10432f > 0.0d && (360.0d - ak.this.f10432f) + d13 > ak.this.f10437k && (360.0d - ak.this.f10432f) + d13 <= 180.0d)) {
                            ac.c(ak.f10423a, "11111发生垂直状态滚动 rollStatus:" + ak.this.f10435i);
                            ak.this.f10435i = 1;
                            ak.this.i();
                            return;
                        }
                        if (d13 < ak.this.f10432f || ((d13 - ak.this.f10432f >= ak.this.f10438l || Math.abs(d13 - ak.this.f10432f) > 180.0d) && (Math.abs(d13 - ak.this.f10432f) < 180.0d || (-(360.0d - Math.abs(d13 - ak.this.f10432f))) >= ak.this.f10438l))) {
                            if (d13 >= ak.this.f10432f) {
                                return;
                            }
                            if ((d13 - ak.this.f10432f >= ak.this.f10438l || Math.abs(d13 - ak.this.f10432f) > 180.0d) && (Math.abs(d13 - ak.this.f10432f) < 180.0d || 360.0d - Math.abs(d13 - ak.this.f10432f) >= ak.this.f10438l)) {
                                return;
                            }
                        }
                        if (ak.this.f10435i == 1) {
                            ak.this.f10435i = 2;
                            ac.a(ak.f10423a, "发生垂直状态回滚");
                            ak.this.i();
                            return;
                        }
                        return;
                    }
                    ak.this.f10432f = d13;
                    ak.this.f10434h = true;
                    ak.this.f10433g = false;
                    return;
                }
                if (ak.this.f10431e != -999.0d && ak.this.f10433g) {
                    if ((d14 >= ak.this.f10431e && d14 - ak.this.f10431e > ak.this.f10437k && d14 - ak.this.f10431e <= 180.0d) || (d14 < ak.this.f10431e && ak.this.f10431e > 0.0d && (360.0d - ak.this.f10431e) + d14 > ak.this.f10437k && (360.0d - ak.this.f10431e) + d14 <= 180.0d)) {
                        ac.c(ak.f10423a, "11111发生水平状态滚动 rollStatus:" + ak.this.f10435i);
                        ak.this.f10435i = 1;
                        ak.this.i();
                        return;
                    }
                    if (d14 < ak.this.f10431e || ((d14 - ak.this.f10431e >= ak.this.f10438l || Math.abs(d14 - ak.this.f10431e) > 180.0d) && (Math.abs(d14 - ak.this.f10431e) < 180.0d || (-(360.0d - Math.abs(d14 - ak.this.f10431e))) >= ak.this.f10438l))) {
                        if (d14 >= ak.this.f10431e) {
                            return;
                        }
                        if ((d14 - ak.this.f10431e >= ak.this.f10438l || Math.abs(d14 - ak.this.f10431e) > 180.0d) && (Math.abs(d14 - ak.this.f10431e) < 180.0d || 360.0d - Math.abs(d14 - ak.this.f10431e) >= ak.this.f10438l)) {
                            return;
                        }
                    }
                    ac.a(ak.f10423a, "2222发生水平状态回滚 rollStatus:" + ak.this.f10435i);
                    if (ak.this.f10435i == 1) {
                        ak.this.f10435i = 2;
                        ac.a(ak.f10423a, "发生水平状态回滚");
                        ak.this.i();
                        return;
                    }
                    return;
                }
                ak.this.f10431e = d14;
                ak.this.f10433g = true;
                ak.this.f10434h = false;
            } catch (Exception e10) {
                e10.printStackTrace();
            }
        }
    };

    public interface a {
        void a();

        void a(String str, String str2, String str3, String str4, String str5, String str6, String str7, String str8);
    }

    public ak(Context context) {
        this.f10429b = context;
        f10424c = (SensorManager) context.getApplicationContext().getSystemService("sensor");
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void i() {
        TwistView twistView = this.f10439m;
        if (twistView != null) {
            twistView.updateRollStatus(this.f10435i);
        }
    }

    public void c() {
        this.f10441s = false;
    }

    public void b() {
        SensorManager sensorManager = f10424c;
        if (sensorManager != null) {
            sensorManager.unregisterListener(this.f10444v);
        }
        TwistView twistView = this.f10439m;
        if (twistView != null) {
            twistView.destroyView();
            this.f10439m = null;
        }
        this.f10441s = false;
        this.f10440r = false;
    }

    public void a(ViewGroup viewGroup, int i10, int i11, AdSpacesBean.BuyerBean.RollViewBean rollViewBean) {
        AdSpacesBean.BuyerBean.PercentPositionBean position;
        int i12;
        int i13;
        int i14;
        int i15;
        String downloadSubTitle;
        ac.a("BeiZis", "enter addRollView");
        if (this.f10429b == null || viewGroup == null || rollViewBean == null || (position = rollViewBean.getPosition()) == null) {
            return;
        }
        this.f10439m = new TwistView(this.f10429b);
        String centerX = position.getCenterX();
        String centerY = position.getCenterY();
        String width = position.getWidth();
        String height = position.getHeight();
        if (TextUtils.isEmpty(centerX) || "0".equals(centerX)) {
            centerX = "85%";
        }
        if (TextUtils.isEmpty(centerY) || "0".equals(centerY)) {
            centerY = "50%";
        }
        if (TextUtils.isEmpty(width) || "0".equals(width)) {
            width = "340";
        }
        if (TextUtils.isEmpty(height) || "0".equals(height)) {
            height = "70";
        }
        float fI = au.i(this.f10429b);
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
        int iA = au.a(this.f10429b, i16);
        int iA2 = au.a(this.f10429b, i15 + 95);
        int iA3 = au.a(this.f10429b, i12);
        int iA4 = au.a(this.f10429b, i13);
        ac.a("BeiZis", "widthInt = " + iA + ",heightInt = " + iA2);
        int iA5 = au.a(this.f10429b, 340.0f);
        int iA6 = au.a(this.f10429b, 165.0f);
        FrameLayout.LayoutParams layoutParams = new FrameLayout.LayoutParams(iA5, iA6);
        ac.a("BeiZis", "centerYInt = " + iA4 + ",centerXInt = " + iA3 + ",adWidthDp = " + i10 + ",adHeightDp = " + i11);
        if (iA4 == 0) {
            iA4 = au.a(this.f10429b, i11) / 2;
        }
        if (iA3 == 0) {
            iA3 = au.a(this.f10429b, i10) / 2;
        }
        layoutParams.topMargin = iA4 - (iA6 / 2);
        layoutParams.leftMargin = iA3 - (iA5 / 2);
        this.f10439m.setTwistTotalLayoutWidthAndHeight(iA5, iA6);
        this.f10439m.setLayoutParams(layoutParams);
        this.f10439m.setTwistTotalLayoutBg(rollViewBean.getBgColor());
        this.f10439m.setMainTitleText(rollViewBean.getTitle());
        if (!this.f10443u.booleanValue()) {
            downloadSubTitle = rollViewBean.getSubTitle();
        } else {
            downloadSubTitle = rollViewBean.getDownloadSubTitle();
            if (TextUtils.isEmpty(downloadSubTitle)) {
                downloadSubTitle = "下载应用";
            }
        }
        this.f10439m.setDescribeText(downloadSubTitle);
        this.f10439m.setJumpClickListener(new View.OnClickListener() { // from class: com.beizi.fusion.tool.ak.2
            @Override // android.view.View.OnClickListener
            public void onClick(View view) {
                if (ak.this.f10441s) {
                    return;
                }
                ak.this.f10441s = true;
                if (ak.this.f10442t != null) {
                    ak.this.f10442t.a(ak.f10425n, ak.f10426o, ak.f10427p, ak.f10428q, ak.f10425n, ak.f10426o, ak.f10427p, ak.f10428q);
                }
            }
        });
        this.f10439m.setJumpOnTouchListener(new View.OnTouchListener() { // from class: com.beizi.fusion.tool.ak.3
            @Override // android.view.View.OnTouchListener
            public boolean onTouch(View view, MotionEvent motionEvent) {
                try {
                    if (motionEvent.getAction() != 0) {
                        return false;
                    }
                    String unused = ak.f10425n = motionEvent.getX() + "";
                    String unused2 = ak.f10426o = motionEvent.getY() + "";
                    String unused3 = ak.f10427p = motionEvent.getRawX() + "";
                    String unused4 = ak.f10428q = motionEvent.getRawY() + "";
                    return false;
                } catch (Exception e10) {
                    e10.printStackTrace();
                    return false;
                }
            }
        });
        this.f10439m.setRotationEndCallback(new TwistView.a() { // from class: com.beizi.fusion.tool.ak.4
            @Override // com.beizi.fusion.widget.TwistView.a
            public void a() {
                if (ak.this.f10440r) {
                    return;
                }
                ak.this.f10440r = true;
                if (ak.this.f10442t != null) {
                    ak.this.f10442t.a();
                }
            }
        });
        viewGroup.addView(this.f10439m, layoutParams);
    }

    public void b(double d10) {
        this.f10438l = d10;
    }

    public void a() {
        SensorManager sensorManager = f10424c;
        if (sensorManager != null) {
            sensorManager.registerListener(this.f10444v, sensorManager.getDefaultSensor(1), 100000);
        }
    }

    public void a(AdSpacesBean.BuyerBean.RollViewBean rollViewBean) {
        if (rollViewBean == null) {
            return;
        }
        try {
            ac.a(f10423a, "setRollParams getRollTime:" + rollViewBean.getRollTime() + ";getRollPlusAmplitude:" + rollViewBean.getRollPlusAmplitude() + ";getRollMinusAmplitude:" + rollViewBean.getRollMinusAmplitude());
            a(rollViewBean.getRollTime());
            a(rollViewBean.getRollPlusAmplitude());
            b(rollViewBean.getRollMinusAmplitude());
            TwistView twistView = this.f10439m;
            if (twistView != null) {
                twistView.setDurationAnimation(rollViewBean.getRollTime());
            }
        } catch (Exception e10) {
            e10.printStackTrace();
        }
    }

    public void a(AdSpacesBean.BuyerBean.CoolRollViewBean coolRollViewBean) {
        if (coolRollViewBean == null) {
            return;
        }
        try {
            ac.a(f10423a, "setRollCoolParams getRollTime:" + coolRollViewBean.getRollTime() + ";getRollPlusAmplitude:" + coolRollViewBean.getRollPlusAmplitude() + ";getRollMinusAmplitude:" + coolRollViewBean.getRollMinusAmplitude());
            a(coolRollViewBean.getRollTime());
            a(coolRollViewBean.getRollPlusAmplitude());
            b(coolRollViewBean.getRollMinusAmplitude());
            TwistView twistView = this.f10439m;
            if (twistView != null) {
                twistView.setDurationAnimation(coolRollViewBean.getRollTime());
            }
        } catch (Exception e10) {
            e10.printStackTrace();
        }
    }

    public void a(long j10) {
        this.f10436j = j10;
    }

    public void a(double d10) {
        this.f10437k = d10;
    }

    public void a(a aVar) {
        this.f10442t = aVar;
    }

    public void a(Boolean bool) {
        this.f10443u = bool;
    }
}
