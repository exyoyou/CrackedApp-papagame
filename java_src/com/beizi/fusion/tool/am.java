package com.beizi.fusion.tool;

import android.content.Context;
import android.text.TextUtils;
import android.util.Pair;
import android.view.View;
import android.view.ViewTreeObserver;
import android.widget.FrameLayout;
import com.beizi.fusion.model.AdSpacesBean;
import com.beizi.fusion.widget.ScrollClickView;
import com.haima.hmcp.Constants;
import com.haima.hmcp.ConstantsInternal;

/* JADX INFO: loaded from: classes6.dex */
public class am {

    /* JADX INFO: renamed from: j, reason: collision with root package name */
    private static AdSpacesBean.BuyerBean.ScrollClickBean f10450j;

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    ScrollClickView f10451a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    int f10452b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    int f10453c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    private Context f10454d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    private int f10455e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    private int f10456f;

    /* JADX INFO: renamed from: g, reason: collision with root package name */
    private a f10457g = null;

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    private boolean f10458h = false;

    /* JADX INFO: renamed from: i, reason: collision with root package name */
    private int f10459i = 200;

    /* JADX INFO: renamed from: k, reason: collision with root package name */
    private Boolean f10460k;

    public interface a {
        void a_();

        void b(String str, String str2, String str3, String str4, String str5, String str6, String str7, String str8);
    }

    public am(Context context) {
        this.f10454d = context;
    }

    private void c() {
        Pair<Integer, Boolean> pairC = c(this.f10456f);
        if (((Boolean) pairC.second).booleanValue()) {
            w.a(new Runnable() { // from class: com.beizi.fusion.tool.am.1
                @Override // java.lang.Runnable
                public void run() {
                    am.this.a();
                }
            }, this.f10455e + (((Integer) pairC.first).intValue() * 10));
        }
    }

    public void b(int i10) {
        this.f10456f = i10;
        c();
    }

    public void a(AdSpacesBean.BuyerBean.ScrollClickBean scrollClickBean) {
        if (scrollClickBean == null) {
            return;
        }
        f10450j = scrollClickBean;
        a(scrollClickBean.getRandomClickTime());
        b(scrollClickBean.getRandomClickNum());
    }

    public void b() {
        this.f10458h = false;
        ScrollClickView scrollClickView = this.f10451a;
        if (scrollClickView != null) {
            scrollClickView.stopAnim();
        }
        this.f10457g = null;
        this.f10454d = null;
        this.f10451a = null;
        this.f10459i = 200;
    }

    public void a(int i10) {
        this.f10455e = i10;
    }

    public static Pair<Integer, Boolean> c(int i10) {
        int iRandom = (int) ((Math.random() * 100.0d) + 1.0d);
        if (iRandom <= i10) {
            return new Pair<>(Integer.valueOf(iRandom), Boolean.TRUE);
        }
        return new Pair<>(Integer.valueOf(iRandom), Boolean.FALSE);
    }

    public void a(a aVar) {
        this.f10457g = aVar;
    }

    protected void a() {
        StringBuilder sb2 = new StringBuilder();
        sb2.append("enter callBackShakeHappened and mShakeStateListener != null ? ");
        sb2.append(this.f10457g != null);
        sb2.append(",!isCallBack = ");
        sb2.append(!this.f10458h);
        ac.a("ScrollClickUtil", sb2.toString());
        if (this.f10457g == null || this.f10458h) {
            return;
        }
        ac.a("ScrollClickUtil", "callback onShakeHappened()");
        this.f10457g.b(Constants.ERRORCODE_SDK_PREFIX, ConstantsInternal.TAG_TO_VIRTUAL_GAME_PAD_SDK_SUCCESS, "105", "206", Constants.ERRORCODE_SDK_PREFIX, ConstantsInternal.TAG_TO_VIRTUAL_GAME_PAD_SDK_SUCCESS, "105", "206");
        this.f10458h = true;
        ScrollClickView scrollClickView = this.f10451a;
        if (scrollClickView != null) {
            scrollClickView.stopAnim();
        }
    }

    public View a(final int i10, final int i11, AdSpacesBean.BuyerBean.ScrollClickPositionBean scrollClickPositionBean) {
        String downloadDetails;
        int i12;
        int i13;
        ac.a("ScrollClickUtil", "enter getScrollClick");
        if (this.f10454d == null || scrollClickPositionBean == null) {
            return null;
        }
        ScrollClickView scrollClickView = new ScrollClickView(this.f10454d);
        this.f10451a = scrollClickView;
        try {
            AdSpacesBean.BuyerBean.ScrollClickBean scrollClickBean = f10450j;
            if (scrollClickBean != null) {
                scrollClickView.setScrollDirection(scrollClickBean.getScrollDirection());
                this.f10451a.setTitleText(f10450j.getTitle());
                this.f10451a.setTitleFont(f10450j.getTitleFont());
                if (!this.f10460k.booleanValue()) {
                    downloadDetails = f10450j.getDetails();
                } else {
                    downloadDetails = f10450j.getDownloadDetails();
                    if (TextUtils.isEmpty(downloadDetails)) {
                        downloadDetails = "下载应用";
                    }
                }
                this.f10451a.setDetailText(downloadDetails);
                this.f10451a.setDetailsFont(f10450j.getDetailsFont());
                AdSpacesBean.BuyerBean.ScrollClickPositionBean position = f10450j.getPosition();
                String width = position.getWidth();
                String height = position.getHeight();
                if (width.endsWith("%")) {
                    i12 = (Integer.parseInt(width.substring(0, width.indexOf("%"))) * i10) / 100;
                } else {
                    i12 = Integer.parseInt(width);
                }
                if (height.endsWith("%")) {
                    i13 = (Integer.parseInt(height.substring(0, height.indexOf("%"))) * i12) / 100;
                } else {
                    i13 = Integer.parseInt(height);
                }
                this.f10451a.setHandWidth(i12);
                this.f10451a.setScrollbarHeight(i13);
                this.f10451a.buildRealView();
            }
            String top = scrollClickPositionBean.getTop();
            String centerX = scrollClickPositionBean.getCenterX();
            if (TextUtils.isEmpty(centerX) || "0".equals(centerX)) {
                centerX = "50%";
            }
            if (TextUtils.isEmpty(top) || "0".equals(top)) {
                top = "50%";
            }
            au.i(this.f10454d);
            if (centerX.endsWith("%")) {
                this.f10452b = (Integer.parseInt(centerX.substring(0, centerX.indexOf("%"))) * i10) / 100;
            } else {
                this.f10452b = Integer.parseInt(centerX);
            }
            if (top.endsWith("%")) {
                this.f10453c = (Integer.parseInt(top.substring(0, top.indexOf("%"))) * i11) / 100;
            } else {
                this.f10453c = Integer.parseInt(top);
            }
            this.f10452b = au.a(this.f10454d, this.f10452b);
            this.f10453c = au.a(this.f10454d, this.f10453c);
            final FrameLayout.LayoutParams layoutParams = new FrameLayout.LayoutParams(-2, -2);
            ac.a("ScrollClickUtil", "topInt = " + this.f10453c + ",centerXInt = " + this.f10452b + ",adWidthDp = " + i10 + ",adHeightDp = " + i11);
            this.f10451a.getViewTreeObserver().addOnGlobalLayoutListener(new ViewTreeObserver.OnGlobalLayoutListener() { // from class: com.beizi.fusion.tool.am.2
                @Override // android.view.ViewTreeObserver.OnGlobalLayoutListener
                public void onGlobalLayout() {
                    ScrollClickView scrollClickView2 = am.this.f10451a;
                    if (scrollClickView2 == null) {
                        return;
                    }
                    scrollClickView2.getViewTreeObserver().removeGlobalOnLayoutListener(this);
                    int measuredWidth = am.this.f10451a.getMeasuredWidth();
                    am amVar = am.this;
                    if (amVar.f10453c == 0) {
                        amVar.f10453c = au.a(amVar.f10454d, i11) / 2;
                    }
                    am amVar2 = am.this;
                    if (amVar2.f10452b == 0) {
                        amVar2.f10452b = au.a(amVar2.f10454d, i10) / 2;
                    }
                    FrameLayout.LayoutParams layoutParams2 = layoutParams;
                    am amVar3 = am.this;
                    layoutParams2.topMargin = amVar3.f10453c;
                    layoutParams2.leftMargin = amVar3.f10452b - (measuredWidth / 2);
                    amVar3.f10451a.setLayoutParams(layoutParams2);
                    ac.a("ScrollClickUtil", "topMargin = " + layoutParams.topMargin + ",leftMargin = " + layoutParams.leftMargin + ",scrollViewWidthInt = " + measuredWidth);
                }
            });
            this.f10451a.setLayoutParams(layoutParams);
            this.f10451a.postDelayed(new Runnable() { // from class: com.beizi.fusion.tool.am.3
                @Override // java.lang.Runnable
                public void run() {
                    try {
                        ScrollClickView scrollClickView2 = am.this.f10451a;
                        if (scrollClickView2 != null) {
                            scrollClickView2.startAnim();
                        }
                    } catch (Exception unused) {
                    }
                }
            }, 10L);
        } catch (NumberFormatException unused) {
        }
        return this.f10451a;
    }

    public void a(Boolean bool) {
        this.f10460k = bool;
    }
}
