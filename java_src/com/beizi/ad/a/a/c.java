package com.beizi.ad.a.a;

import android.content.Context;
import android.graphics.Color;
import android.graphics.drawable.GradientDrawable;
import android.text.TextUtils;
import android.view.MotionEvent;
import android.view.View;
import android.view.ViewGroup;
import android.widget.FrameLayout;
import android.widget.LinearLayout;
import android.widget.RelativeLayout;
import android.widget.TextView;
import com.beizi.ad.internal.e.t;
import com.beizi.ad.lance.a.n;
import com.beizi.ad.lance.a.q;
import com.beizi.fusion.model.AdSpacesBean;
import java.util.List;

/* JADX INFO: loaded from: classes6.dex */
public class c {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private Context f8554a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private AdSpacesBean.BuyerBean.RegionalClickViewBean f8555b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    private AdSpacesBean.BuyerBean.RegionalClickViewBean f8556c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    private a f8557d = null;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    private AdSpacesBean.BuyerBean.PercentPositionBean f8558e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    private String f8559f;

    /* JADX INFO: renamed from: g, reason: collision with root package name */
    private String f8560g;

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    private double f8561h;

    /* JADX INFO: renamed from: i, reason: collision with root package name */
    private String f8562i;

    /* JADX INFO: renamed from: j, reason: collision with root package name */
    private int f8563j;

    public interface a {
        void a(String str, String str2, String str3, String str4, String str5, String str6, String str7, String str8);
    }

    public c(Context context, AdSpacesBean.BuyerBean.RegionalClickViewBean regionalClickViewBean, String str, boolean z10) {
        this.f8559f = null;
        this.f8560g = null;
        this.f8561h = 0.0d;
        this.f8562i = null;
        this.f8563j = 0;
        try {
            this.f8554a = context;
            this.f8555b = regionalClickViewBean;
            AdSpacesBean.BuyerBean.OrderDataRegionalClickViewBean orderDataRegionalClickViewBeanA = a(regionalClickViewBean.getOrderData(), str);
            if (orderDataRegionalClickViewBeanA != null && orderDataRegionalClickViewBeanA.getRegionalClickView() != null) {
                this.f8556c = orderDataRegionalClickViewBeanA.getRegionalClickView();
            }
            AdSpacesBean.BuyerBean.RegionalClickViewBean regionalClickViewBean2 = this.f8556c;
            if (regionalClickViewBean2 != null) {
                if (z10) {
                    String downloadTitle = regionalClickViewBean2.getDownloadTitle();
                    this.f8562i = downloadTitle;
                    if (TextUtils.isEmpty(downloadTitle)) {
                        this.f8562i = "点击下载应用";
                    }
                } else {
                    this.f8562i = regionalClickViewBean2.getTitle();
                }
                this.f8558e = this.f8556c.getPosition();
                this.f8559f = this.f8556c.getTitleColor();
                this.f8560g = this.f8556c.getBackgroundColor();
                this.f8561h = this.f8556c.getBackgroundAlpha();
                this.f8563j = this.f8556c.getIsDisableClick();
            } else {
                AdSpacesBean.BuyerBean.RegionalClickViewBean regionalClickViewBean3 = this.f8555b;
                if (regionalClickViewBean3 != null) {
                    if (z10) {
                        String downloadTitle2 = regionalClickViewBean3.getDownloadTitle();
                        this.f8562i = downloadTitle2;
                        if (TextUtils.isEmpty(downloadTitle2)) {
                            this.f8562i = "点击下载应用";
                        }
                    } else {
                        this.f8562i = regionalClickViewBean3.getTitle();
                    }
                    this.f8558e = this.f8555b.getPosition();
                    this.f8559f = this.f8555b.getTitleColor();
                    this.f8560g = this.f8555b.getBackgroundColor();
                    this.f8561h = this.f8555b.getBackgroundAlpha();
                    this.f8563j = this.f8555b.getIsDisableClick();
                }
            }
            if (TextUtils.isEmpty(this.f8562i)) {
                this.f8562i = "点击跳转网页或第三方应用";
            }
            if (TextUtils.isEmpty(this.f8560g)) {
                this.f8560g = "#3976FF";
            }
            if (TextUtils.isEmpty(this.f8559f)) {
                this.f8559f = "#FFFFFF";
            }
        } catch (Exception e10) {
            e10.printStackTrace();
        }
    }

    private int[] b(ViewGroup viewGroup) {
        int i10;
        int i11;
        int i12;
        int i13;
        int[] iArr = new int[4];
        if (viewGroup != null) {
            try {
                AdSpacesBean.BuyerBean.PercentPositionBean percentPositionBean = this.f8558e;
                if (percentPositionBean != null) {
                    String centerX = percentPositionBean.getCenterX();
                    String centerY = this.f8558e.getCenterY();
                    String width = this.f8558e.getWidth();
                    String height = this.f8558e.getHeight();
                    if (TextUtils.isEmpty(centerX) || "0".equals(centerX)) {
                        centerX = "0";
                    }
                    if (TextUtils.isEmpty(centerY) || "0".equals(centerY)) {
                        centerY = "0";
                    }
                    viewGroup.measure(0, 0);
                    int iB = t.b(this.f8554a, viewGroup.getMeasuredWidth());
                    int iB2 = t.b(this.f8554a, viewGroup.getMeasuredHeight());
                    if (iB <= 0) {
                        iB = q.h(this.f8554a);
                    }
                    n.a("RegionClickUtil", "position containerWidth:" + iB + ";containerHeight:" + iB2 + ";" + viewGroup.getLayoutParams().width + ";" + viewGroup.getLayoutParams().height);
                    if (TextUtils.isEmpty(width) || "0".equals(width)) {
                        width = String.valueOf(iB);
                    }
                    if (TextUtils.isEmpty(height) || "0".equals(height)) {
                        height = "40";
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
                    if (width.endsWith("%")) {
                        i12 = (iB * Integer.parseInt(width.substring(0, width.indexOf("%")))) / 100;
                    } else {
                        i12 = !TextUtils.isEmpty(width) ? Integer.parseInt(width) : 0;
                    }
                    if (height.endsWith("%")) {
                        i13 = (Integer.parseInt(height.substring(0, height.indexOf("%"))) * i12) / 100;
                    } else {
                        i13 = !TextUtils.isEmpty(width) ? Integer.parseInt(height) : 40;
                    }
                    int iA = t.a(this.f8554a, i12);
                    int iA2 = t.a(this.f8554a, i13);
                    int iA3 = t.a(this.f8554a, i10);
                    int iA4 = t.a(this.f8554a, i11);
                    iArr[0] = iA;
                    iArr[1] = iA2;
                    if (iA3 > 0) {
                        iArr[2] = iA3;
                    }
                    if (iA4 > 0) {
                        iArr[3] = iA4;
                    }
                    n.a("RegionClickUtil", "position widthInt:" + iArr[0] + ";heightInt:" + iArr[1] + ";centerX:" + iArr[2] + ";centerY:" + iArr[3] + ";" + centerX + ";" + centerY);
                    return iArr;
                }
            } catch (Exception e10) {
                e10.printStackTrace();
            }
        }
        int i14 = viewGroup.getLayoutParams().width;
        int iA5 = t.a(this.f8554a, 40.0f);
        iArr[0] = i14;
        iArr[1] = iA5;
        iArr[2] = 0;
        iArr[3] = 0;
        return iArr;
    }

    public void a(ViewGroup viewGroup) {
        if (viewGroup != null) {
            try {
                if (this.f8554a == null) {
                    return;
                }
                TextView textView = new TextView(this.f8554a);
                textView.setVisibility(0);
                textView.setLines(1);
                textView.setGravity(17);
                textView.setMaxLines(1);
                textView.setEllipsize(TextUtils.TruncateAt.END);
                if (this.f8563j == 0) {
                    textView.setOnTouchListener(new View.OnTouchListener() { // from class: com.beizi.ad.a.a.c.1

                        /* JADX INFO: renamed from: a, reason: collision with root package name */
                        float f8564a;

                        /* JADX INFO: renamed from: b, reason: collision with root package name */
                        float f8565b;

                        /* JADX INFO: renamed from: c, reason: collision with root package name */
                        float f8566c;

                        /* JADX INFO: renamed from: d, reason: collision with root package name */
                        float f8567d;

                        /* JADX INFO: renamed from: e, reason: collision with root package name */
                        float f8568e;

                        /* JADX INFO: renamed from: f, reason: collision with root package name */
                        float f8569f;

                        @Override // android.view.View.OnTouchListener
                        public boolean onTouch(View view, MotionEvent motionEvent) {
                            int action = motionEvent.getAction();
                            if (action == 0) {
                                this.f8564a = motionEvent.getX();
                                this.f8565b = motionEvent.getY();
                                this.f8566c = motionEvent.getRawX();
                                this.f8567d = motionEvent.getRawY();
                                this.f8568e = motionEvent.getX();
                                this.f8569f = motionEvent.getY();
                            } else if (action != 1) {
                                if (action == 2) {
                                    this.f8568e = motionEvent.getX();
                                    this.f8569f = motionEvent.getY();
                                }
                            } else if (Math.abs(this.f8568e - this.f8564a) <= 15.0f && Math.abs(this.f8569f - this.f8565b) <= 15.0f && c.this.f8557d != null) {
                                c.this.f8557d.a(String.valueOf(this.f8564a), String.valueOf(this.f8565b), String.valueOf(this.f8566c), String.valueOf(this.f8567d), String.valueOf(this.f8564a), String.valueOf(this.f8565b), String.valueOf(this.f8566c), String.valueOf(this.f8567d));
                            }
                            return true;
                        }
                    });
                }
                if (!TextUtils.isEmpty(this.f8562i)) {
                    textView.setText(this.f8562i);
                }
                if (TextUtils.isEmpty(this.f8559f)) {
                    this.f8559f = "#FFFFFF";
                }
                if (!TextUtils.isEmpty(this.f8559f) && this.f8559f.startsWith("#")) {
                    textView.setTextColor(Color.parseColor(this.f8559f));
                }
                if (TextUtils.isEmpty(this.f8560g)) {
                    this.f8560g = "#80000000";
                }
                GradientDrawable gradientDrawable = new GradientDrawable();
                if (!TextUtils.isEmpty(this.f8560g) && this.f8560g.startsWith("#")) {
                    gradientDrawable.setColor(Color.parseColor(this.f8560g));
                }
                double d10 = this.f8561h;
                if (d10 > 0.0d) {
                    gradientDrawable.setAlpha((int) (d10 * 255.0d));
                }
                gradientDrawable.setCornerRadius(t.a(this.f8554a, 7.0f));
                textView.setBackgroundDrawable(gradientDrawable);
                int[] iArrB = b(viewGroup);
                try {
                    int i10 = iArrB[1];
                    textView.setTextSize(2, (float) (i10 > 0 ? t.b(this.f8554a, i10) / 3 : 14.0d));
                } catch (Exception e10) {
                    e10.printStackTrace();
                }
                if (viewGroup instanceof RelativeLayout) {
                    RelativeLayout.LayoutParams layoutParams = new RelativeLayout.LayoutParams(-1, -2);
                    int i11 = iArrB[0];
                    if (i11 > 0) {
                        layoutParams.width = i11;
                    }
                    int i12 = iArrB[1];
                    if (i12 > 0) {
                        layoutParams.height = i12;
                    }
                    layoutParams.leftMargin = iArrB[2];
                    layoutParams.topMargin = iArrB[3];
                    layoutParams.addRule(17);
                    viewGroup.addView(textView, layoutParams);
                    return;
                }
                if (viewGroup instanceof FrameLayout) {
                    FrameLayout.LayoutParams layoutParams2 = new FrameLayout.LayoutParams(-1, -2);
                    int i13 = iArrB[0];
                    if (i13 > 0) {
                        layoutParams2.width = i13;
                    }
                    int i14 = iArrB[1];
                    if (i14 > 0) {
                        layoutParams2.height = i14;
                    }
                    layoutParams2.leftMargin = iArrB[2];
                    layoutParams2.topMargin = iArrB[3];
                    viewGroup.addView(textView, layoutParams2);
                    return;
                }
                if (!(viewGroup instanceof LinearLayout)) {
                    ViewGroup.LayoutParams layoutParams3 = new ViewGroup.LayoutParams(-1, -2);
                    int i15 = iArrB[0];
                    if (i15 > 0) {
                        layoutParams3.width = i15;
                    }
                    int i16 = iArrB[1];
                    if (i16 > 0) {
                        layoutParams3.height = i16;
                    }
                    viewGroup.addView(textView, layoutParams3);
                    return;
                }
                LinearLayout.LayoutParams layoutParams4 = new LinearLayout.LayoutParams(-1, -2);
                int i17 = iArrB[0];
                if (i17 > 0) {
                    layoutParams4.width = i17;
                }
                int i18 = iArrB[1];
                if (i18 > 0) {
                    layoutParams4.height = i18;
                }
                layoutParams4.leftMargin = iArrB[2];
                layoutParams4.topMargin = iArrB[3];
                viewGroup.addView(textView, layoutParams4);
            } catch (Exception e11) {
                e11.printStackTrace();
            }
        }
    }

    public void b() {
        this.f8555b = null;
        this.f8556c = null;
        this.f8558e = null;
        this.f8557d = null;
        this.f8554a = null;
    }

    public void a(LinearLayout linearLayout, TextView textView) {
        if (linearLayout == null || textView == null) {
            return;
        }
        try {
            if (!TextUtils.isEmpty(this.f8562i)) {
                textView.setText(this.f8562i);
            }
            if (this.f8563j != 0) {
                return;
            }
            linearLayout.setOnTouchListener(new View.OnTouchListener() { // from class: com.beizi.ad.a.a.c.2

                /* JADX INFO: renamed from: a, reason: collision with root package name */
                float f8571a;

                /* JADX INFO: renamed from: b, reason: collision with root package name */
                float f8572b;

                /* JADX INFO: renamed from: c, reason: collision with root package name */
                float f8573c;

                /* JADX INFO: renamed from: d, reason: collision with root package name */
                float f8574d;

                /* JADX INFO: renamed from: e, reason: collision with root package name */
                float f8575e;

                /* JADX INFO: renamed from: f, reason: collision with root package name */
                float f8576f;

                @Override // android.view.View.OnTouchListener
                public boolean onTouch(View view, MotionEvent motionEvent) {
                    int action = motionEvent.getAction();
                    if (action == 0) {
                        this.f8571a = motionEvent.getX();
                        this.f8572b = motionEvent.getY();
                        this.f8573c = motionEvent.getRawX();
                        this.f8574d = motionEvent.getRawY();
                        this.f8575e = motionEvent.getX();
                        this.f8576f = motionEvent.getY();
                    } else if (action != 1) {
                        if (action == 2) {
                            this.f8575e = motionEvent.getX();
                            this.f8576f = motionEvent.getY();
                        }
                    } else if (Math.abs(this.f8575e - this.f8571a) <= 15.0f && Math.abs(this.f8576f - this.f8572b) <= 15.0f && c.this.f8557d != null) {
                        c.this.f8557d.a(String.valueOf(this.f8571a), String.valueOf(this.f8572b), String.valueOf(this.f8573c), String.valueOf(this.f8574d), String.valueOf(this.f8571a), String.valueOf(this.f8572b), String.valueOf(this.f8573c), String.valueOf(this.f8574d));
                    }
                    return true;
                }
            });
        } catch (Exception e10) {
            e10.printStackTrace();
        }
    }

    public void a(a aVar) {
        this.f8557d = aVar;
    }

    private AdSpacesBean.BuyerBean.OrderDataRegionalClickViewBean a(List<AdSpacesBean.BuyerBean.OrderDataRegionalClickViewBean> list, String str) {
        if (list != null && str != null) {
            for (AdSpacesBean.BuyerBean.OrderDataRegionalClickViewBean orderDataRegionalClickViewBean : list) {
                List<String> orderList = orderDataRegionalClickViewBean.getOrderList();
                if (orderList != null && orderList.contains(str)) {
                    return orderDataRegionalClickViewBean;
                }
            }
        }
        return null;
    }

    public String a() {
        return this.f8560g;
    }
}
