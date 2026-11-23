package com.beizi.ad.a.a;

import android.animation.Animator;
import android.animation.AnimatorListenerAdapter;
import android.animation.ValueAnimator;
import android.content.Context;
import android.graphics.Color;
import android.text.TextUtils;
import android.view.MotionEvent;
import android.view.View;
import android.view.ViewGroup;
import android.widget.FrameLayout;
import android.widget.ImageView;
import android.widget.LinearLayout;
import android.widget.RelativeLayout;
import com.beizi.ad.internal.e.t;
import com.beizi.ad.lance.a.n;
import com.beizi.ad.lance.a.q;
import com.beizi.fusion.R;
import com.beizi.fusion.model.AdSpacesBean;
import com.beizi.fusion.widget.ScrollClickView;
import com.windmill.sdk.point.PointType;
import java.util.List;

/* JADX INFO: loaded from: classes6.dex */
public class d {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private Context f8578a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private AdSpacesBean.BuyerBean.ScrollClickBean f8579b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    private AdSpacesBean.BuyerBean.ScrollClickBean f8580c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    private AdSpacesBean.BuyerBean.ScrollClickPositionBean f8581d;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    private View f8583f;

    /* JADX INFO: renamed from: g, reason: collision with root package name */
    private String f8584g;

    /* JADX INFO: renamed from: l, reason: collision with root package name */
    private int f8589l;

    /* JADX INFO: renamed from: m, reason: collision with root package name */
    private ValueAnimator f8590m;

    /* JADX INFO: renamed from: n, reason: collision with root package name */
    private int f8591n;

    /* JADX INFO: renamed from: o, reason: collision with root package name */
    private ImageView f8592o;

    /* JADX INFO: renamed from: p, reason: collision with root package name */
    private ImageView f8593p;

    /* JADX INFO: renamed from: q, reason: collision with root package name */
    private ImageView f8594q;

    /* JADX INFO: renamed from: u, reason: collision with root package name */
    private LinearLayout f8598u;

    /* JADX INFO: renamed from: v, reason: collision with root package name */
    private boolean f8599v;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    private a f8582e = null;

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    private String f8585h = "up";

    /* JADX INFO: renamed from: i, reason: collision with root package name */
    private String f8586i = ScrollClickView.DIR_DOWN;

    /* JADX INFO: renamed from: j, reason: collision with root package name */
    private String f8587j = ScrollClickView.DIR_LEFT;

    /* JADX INFO: renamed from: k, reason: collision with root package name */
    private String f8588k = ScrollClickView.DIR_RIGHT;

    /* JADX INFO: renamed from: r, reason: collision with root package name */
    private String f8595r = "#9CBBFF";

    /* JADX INFO: renamed from: s, reason: collision with root package name */
    private String f8596s = "#C1D4FF";

    /* JADX INFO: renamed from: t, reason: collision with root package name */
    private String f8597t = "#FFFFFF";

    public interface a {
        void a(String str, String str2, String str3, String str4, String str5, String str6, String str7, String str8);

        void b(String str, String str2, String str3, String str4, String str5, String str6, String str7, String str8);
    }

    public d(Context context, AdSpacesBean.BuyerBean.ScrollClickBean scrollClickBean, String str, String str2) {
        try {
            this.f8578a = context;
            this.f8579b = scrollClickBean;
            AdSpacesBean.BuyerBean.OrderDataScrollViewOrderBean orderDataScrollViewOrderBeanA = a(scrollClickBean.getOrderData(), str2);
            if (orderDataScrollViewOrderBeanA != null && orderDataScrollViewOrderBeanA.getScrollClick() != null) {
                this.f8580c = orderDataScrollViewOrderBeanA.getScrollClick();
            }
            AdSpacesBean.BuyerBean.ScrollClickBean scrollClickBean2 = this.f8580c;
            if (scrollClickBean2 != null) {
                this.f8584g = scrollClickBean2.getScrollDirection();
                this.f8589l = this.f8580c.getScrollDistance();
                this.f8581d = this.f8580c.getPosition();
            } else {
                AdSpacesBean.BuyerBean.ScrollClickBean scrollClickBean3 = this.f8579b;
                if (scrollClickBean3 != null) {
                    this.f8584g = scrollClickBean3.getScrollDirection();
                    this.f8589l = this.f8579b.getScrollDistance();
                    this.f8581d = this.f8579b.getPosition();
                }
            }
        } catch (Exception e10) {
            e10.printStackTrace();
        }
    }

    static /* synthetic */ int i(d dVar) {
        int i10 = dVar.f8591n;
        dVar.f8591n = i10 + 1;
        return i10;
    }

    private void b() {
        this.f8598u.setGravity(17);
        int i10 = this.f8598u.getLayoutParams().width;
        int i11 = this.f8598u.getLayoutParams().height;
        this.f8592o = new ImageView(this.f8578a);
        this.f8593p = new ImageView(this.f8578a);
        this.f8594q = new ImageView(this.f8578a);
        LinearLayout.LayoutParams layoutParams = new LinearLayout.LayoutParams(-2, -2);
        if (this.f8585h.equals(this.f8584g)) {
            this.f8598u.setOrientation(1);
            ImageView imageView = this.f8592o;
            int i12 = R.mipmap.beizi_interaction_icon_arrow_up;
            imageView.setImageResource(i12);
            this.f8593p.setImageResource(i12);
            this.f8594q.setImageResource(i12);
            this.f8592o.setColorFilter(Color.parseColor(this.f8595r));
            this.f8593p.setColorFilter(Color.parseColor(this.f8596s));
            this.f8594q.setColorFilter(Color.parseColor(this.f8597t));
            layoutParams.width = i10;
            layoutParams.height = i11 / 3;
        } else if (this.f8586i.equals(this.f8584g)) {
            this.f8598u.setOrientation(1);
            ImageView imageView2 = this.f8592o;
            int i13 = R.mipmap.beizi_interaction_icon_arrow_down;
            imageView2.setImageResource(i13);
            this.f8593p.setImageResource(i13);
            this.f8594q.setImageResource(i13);
            this.f8592o.setColorFilter(Color.parseColor(this.f8597t));
            this.f8593p.setColorFilter(Color.parseColor(this.f8596s));
            this.f8594q.setColorFilter(Color.parseColor(this.f8595r));
            layoutParams.width = i10;
            layoutParams.height = i11 / 3;
        } else if (this.f8587j.equals(this.f8584g)) {
            this.f8598u.setOrientation(0);
            ImageView imageView3 = this.f8592o;
            int i14 = R.mipmap.beizi_interaction_icon_arrow_left;
            imageView3.setImageResource(i14);
            this.f8593p.setImageResource(i14);
            this.f8594q.setImageResource(i14);
            this.f8592o.setColorFilter(Color.parseColor(this.f8595r));
            this.f8593p.setColorFilter(Color.parseColor(this.f8596s));
            this.f8594q.setColorFilter(Color.parseColor(this.f8597t));
            layoutParams.width = i10 / 3;
            layoutParams.height = i11;
        } else if (this.f8588k.equals(this.f8584g)) {
            this.f8598u.setOrientation(0);
            ImageView imageView4 = this.f8592o;
            int i15 = R.mipmap.beizi_interaction_icon_arrow_right;
            imageView4.setImageResource(i15);
            this.f8593p.setImageResource(i15);
            this.f8594q.setImageResource(i15);
            this.f8592o.setColorFilter(Color.parseColor(this.f8597t));
            this.f8593p.setColorFilter(Color.parseColor(this.f8596s));
            this.f8594q.setColorFilter(Color.parseColor(this.f8595r));
            layoutParams.width = i10 / 3;
            layoutParams.height = i11;
        }
        this.f8598u.addView(this.f8592o, layoutParams);
        this.f8598u.addView(this.f8593p, layoutParams);
        this.f8598u.addView(this.f8594q, layoutParams);
    }

    private void c() {
        View view = this.f8583f;
        if (view == null) {
            return;
        }
        view.setOnTouchListener(new View.OnTouchListener() { // from class: com.beizi.ad.a.a.d.1

            /* JADX INFO: renamed from: a, reason: collision with root package name */
            float f8600a;

            /* JADX INFO: renamed from: b, reason: collision with root package name */
            float f8601b;

            /* JADX INFO: renamed from: c, reason: collision with root package name */
            float f8602c;

            /* JADX INFO: renamed from: d, reason: collision with root package name */
            float f8603d;

            /* JADX INFO: renamed from: e, reason: collision with root package name */
            float f8604e;

            /* JADX INFO: renamed from: f, reason: collision with root package name */
            float f8605f;

            @Override // android.view.View.OnTouchListener
            public boolean onTouch(View view2, MotionEvent motionEvent) {
                int action = motionEvent.getAction();
                if (action == 0) {
                    this.f8600a = motionEvent.getX();
                    this.f8601b = motionEvent.getY();
                    this.f8602c = motionEvent.getX();
                    this.f8603d = motionEvent.getY();
                    this.f8604e = motionEvent.getRawX();
                    this.f8605f = motionEvent.getRawY();
                } else if (action == 1) {
                    n.b("BeiZisAd", "mCurPosX = " + this.f8602c + ",mCurPosY = " + this.f8603d + ",mPosX = " + this.f8600a + ",mPosY = " + this.f8601b);
                    float f10 = this.f8603d;
                    float f11 = this.f8601b;
                    if (f10 - f11 <= 0.0f || Math.abs(f10 - f11) <= d.this.f8589l) {
                        float f12 = this.f8603d;
                        float f13 = this.f8601b;
                        if (f12 - f13 >= 0.0f || Math.abs(f12 - f13) <= d.this.f8589l) {
                            float f14 = this.f8602c;
                            float f15 = this.f8600a;
                            if (f14 - f15 >= 0.0f || Math.abs(f14 - f15) <= d.this.f8589l) {
                                float f16 = this.f8602c;
                                float f17 = this.f8600a;
                                if (f16 - f17 <= 0.0f || Math.abs(f16 - f17) <= d.this.f8589l) {
                                    if (Math.abs(this.f8602c - this.f8600a) <= 15.0f && Math.abs(this.f8603d - this.f8601b) <= 15.0f && d.this.f8582e != null) {
                                        d.this.f8582e.b(this.f8600a + "", this.f8601b + "", this.f8604e + "", this.f8605f + "", this.f8600a + "", this.f8601b + "", this.f8604e + "", this.f8605f + "");
                                    }
                                } else if ((d.this.f8588k.equalsIgnoreCase(d.this.f8584g) || d.this.f8599v) && d.this.f8582e != null) {
                                    d.this.f8582e.a(this.f8600a + "", this.f8601b + "", this.f8604e + "", this.f8605f + "", motionEvent.getX() + "", motionEvent.getY() + "", motionEvent.getRawX() + "", motionEvent.getRawY() + "");
                                }
                            } else if ((d.this.f8587j.equalsIgnoreCase(d.this.f8584g) || d.this.f8599v) && d.this.f8582e != null) {
                                d.this.f8582e.a(this.f8600a + "", this.f8601b + "", this.f8604e + "", this.f8605f + "", motionEvent.getX() + "", motionEvent.getY() + "", motionEvent.getRawX() + "", motionEvent.getRawY() + "");
                            }
                        } else if ((d.this.f8585h.equalsIgnoreCase(d.this.f8584g) || d.this.f8599v) && d.this.f8582e != null) {
                            d.this.f8582e.a(this.f8600a + "", this.f8601b + "", this.f8604e + "", this.f8605f + "", motionEvent.getX() + "", motionEvent.getY() + "", motionEvent.getRawX() + "", motionEvent.getRawY() + "");
                        }
                    } else if ((d.this.f8586i.equalsIgnoreCase(d.this.f8584g) || d.this.f8599v) && d.this.f8582e != null) {
                        d.this.f8582e.a(this.f8600a + "", this.f8601b + "", this.f8604e + "", this.f8605f + "", motionEvent.getX() + "", motionEvent.getY() + "", motionEvent.getRawX() + "", motionEvent.getRawY() + "");
                    }
                } else if (action == 2) {
                    this.f8602c = motionEvent.getX();
                    this.f8603d = motionEvent.getY();
                }
                return true;
            }
        });
    }

    private void d() {
        try {
            ValueAnimator valueAnimatorOfInt = ValueAnimator.ofInt(10, 0);
            this.f8590m = valueAnimatorOfInt;
            valueAnimatorOfInt.setDuration(500L);
            this.f8590m.addUpdateListener(new ValueAnimator.AnimatorUpdateListener() { // from class: com.beizi.ad.a.a.d.2
                @Override // android.animation.ValueAnimator.AnimatorUpdateListener
                public void onAnimationUpdate(ValueAnimator valueAnimator) {
                }
            });
            this.f8590m.addListener(new AnimatorListenerAdapter() { // from class: com.beizi.ad.a.a.d.3
                @Override // android.animation.AnimatorListenerAdapter, android.animation.Animator.AnimatorListener
                public void onAnimationEnd(Animator animator) {
                    n.c("ScrollUtil", "addScrollViewViewAnimation onAnimationEnd");
                    try {
                        d.i(d.this);
                        if (d.this.f8585h.equals(d.this.f8584g) || d.this.f8587j.equals(d.this.f8584g)) {
                            if (d.this.f8591n == 1) {
                                d.this.f8592o.setColorFilter(Color.parseColor(d.this.f8596s));
                                d.this.f8593p.setColorFilter(Color.parseColor(d.this.f8597t));
                                d.this.f8594q.setColorFilter(Color.parseColor(d.this.f8595r));
                            } else if (d.this.f8591n == 2) {
                                d.this.f8592o.setColorFilter(Color.parseColor(d.this.f8597t));
                                d.this.f8593p.setColorFilter(Color.parseColor(d.this.f8595r));
                                d.this.f8594q.setColorFilter(Color.parseColor(d.this.f8596s));
                            } else if (d.this.f8591n == 3) {
                                d.this.f8592o.setColorFilter(Color.parseColor(d.this.f8595r));
                                d.this.f8593p.setColorFilter(Color.parseColor(d.this.f8596s));
                                d.this.f8594q.setColorFilter(Color.parseColor(d.this.f8597t));
                            }
                        } else if (d.this.f8586i.equals(d.this.f8584g) || d.this.f8588k.equals(d.this.f8584g)) {
                            if (d.this.f8591n == 1) {
                                d.this.f8592o.setColorFilter(Color.parseColor(d.this.f8595r));
                                d.this.f8593p.setColorFilter(Color.parseColor(d.this.f8597t));
                                d.this.f8594q.setColorFilter(Color.parseColor(d.this.f8596s));
                            } else if (d.this.f8591n == 2) {
                                d.this.f8592o.setColorFilter(Color.parseColor(d.this.f8596s));
                                d.this.f8593p.setColorFilter(Color.parseColor(d.this.f8595r));
                                d.this.f8594q.setColorFilter(Color.parseColor(d.this.f8597t));
                            } else if (d.this.f8591n == 3) {
                                d.this.f8592o.setColorFilter(Color.parseColor(d.this.f8597t));
                                d.this.f8593p.setColorFilter(Color.parseColor(d.this.f8596s));
                                d.this.f8594q.setColorFilter(Color.parseColor(d.this.f8595r));
                            }
                        }
                        if (d.this.f8591n >= 3) {
                            d.this.f8591n = 0;
                        }
                        if (d.this.f8590m != null) {
                            d.this.f8590m.start();
                        }
                    } catch (Exception e10) {
                        e10.printStackTrace();
                    }
                }
            });
            ValueAnimator valueAnimator = this.f8590m;
            if (valueAnimator != null) {
                valueAnimator.start();
            }
        } catch (Exception e10) {
            e10.printStackTrace();
        }
    }

    public void a(boolean z10) {
        this.f8599v = z10;
    }

    public void a(ViewGroup viewGroup) {
        if (viewGroup != null) {
            try {
                if (this.f8578a == null) {
                    return;
                }
                this.f8598u = new LinearLayout(this.f8578a);
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
                    viewGroup.addView(this.f8598u, layoutParams);
                } else if (viewGroup instanceof FrameLayout) {
                    FrameLayout.LayoutParams layoutParams2 = new FrameLayout.LayoutParams(-1, -2);
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
                    viewGroup.addView(this.f8598u, layoutParams2);
                } else if (viewGroup instanceof LinearLayout) {
                    LinearLayout.LayoutParams layoutParams3 = new LinearLayout.LayoutParams(-1, -2);
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
                    viewGroup.addView(this.f8598u, layoutParams3);
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
                    viewGroup.addView(this.f8598u, layoutParams4);
                }
                b();
                d();
            } catch (Exception e10) {
                e10.printStackTrace();
            }
        }
    }

    public void a(View view, a aVar) {
        this.f8583f = view;
        this.f8582e = aVar;
        c();
    }

    private AdSpacesBean.BuyerBean.OrderDataScrollViewOrderBean a(List<AdSpacesBean.BuyerBean.OrderDataScrollViewOrderBean> list, String str) {
        if (list != null && str != null) {
            for (AdSpacesBean.BuyerBean.OrderDataScrollViewOrderBean orderDataScrollViewOrderBean : list) {
                List<String> orderList = orderDataScrollViewOrderBean.getOrderList();
                if (orderList != null && orderList.contains(str)) {
                    return orderDataScrollViewOrderBean;
                }
            }
        }
        return null;
    }

    public void a() {
        try {
            this.f8583f = null;
            this.f8582e = null;
            this.f8580c = null;
            this.f8579b = null;
            ValueAnimator valueAnimator = this.f8590m;
            if (valueAnimator != null) {
                valueAnimator.removeAllUpdateListeners();
                this.f8590m.removeAllListeners();
            }
            this.f8590m = null;
            this.f8592o = null;
            this.f8593p = null;
            this.f8594q = null;
        } catch (Exception e10) {
            e10.printStackTrace();
        }
    }

    private int[] b(ViewGroup viewGroup) {
        int i10;
        int i11;
        int i12;
        int[] iArr = new int[4];
        if (viewGroup != null) {
            try {
                AdSpacesBean.BuyerBean.ScrollClickPositionBean scrollClickPositionBean = this.f8581d;
                if (scrollClickPositionBean != null) {
                    String centerX = scrollClickPositionBean.getCenterX();
                    String top = this.f8581d.getTop();
                    String width = this.f8581d.getWidth();
                    String height = this.f8581d.getHeight();
                    if (TextUtils.isEmpty(centerX) || "0".equals(centerX)) {
                        centerX = "10";
                    }
                    if (TextUtils.isEmpty(top) || "0".equals(top)) {
                        top = "10";
                    }
                    viewGroup.measure(0, 0);
                    int iB = t.b(this.f8578a, viewGroup.getMeasuredWidth());
                    int iB2 = t.b(this.f8578a, viewGroup.getMeasuredHeight());
                    if (iB <= 0) {
                        iB = q.h(this.f8578a);
                    }
                    n.a("ScrollUtil", "position containerWidth:" + iB + ";containerHeight:" + iB2 + ";" + viewGroup.getLayoutParams().width + ";" + viewGroup.getLayoutParams().height);
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
                    if (top.endsWith("%")) {
                        i11 = (iB2 * Integer.parseInt(top.substring(0, top.indexOf("%")))) / 100;
                    } else {
                        i11 = !TextUtils.isEmpty(top) ? Integer.parseInt(top) : 0;
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
                    int iA = t.a(this.f8578a, i12);
                    int iA2 = t.a(this.f8578a, i13);
                    int iA3 = t.a(this.f8578a, i10);
                    int iA4 = t.a(this.f8578a, i11);
                    iArr[0] = iA;
                    iArr[1] = iA2;
                    if (iA3 > 0) {
                        iArr[2] = iA3;
                    }
                    if (iA4 > 0) {
                        iArr[3] = iA4;
                    }
                    n.a("ScrollUtil", "position widthInt:" + iArr[0] + ";heightInt:" + iArr[1] + ";centerX:" + iArr[2] + ";centerY:" + iArr[3] + ";" + centerX + ";" + top);
                    return iArr;
                }
            } catch (Exception e10) {
                e10.printStackTrace();
            }
        }
        int iA5 = t.a(this.f8578a, 20.0f);
        int iA6 = t.a(this.f8578a, 10.0f);
        iArr[0] = iA5;
        iArr[1] = iA5;
        iArr[2] = iA6;
        iArr[3] = iA6;
        return iArr;
    }
}
