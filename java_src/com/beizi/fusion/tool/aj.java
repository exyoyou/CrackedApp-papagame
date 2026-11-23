package com.beizi.fusion.tool;

import android.content.Context;
import android.text.TextUtils;
import android.view.MotionEvent;
import android.view.View;
import android.view.ViewGroup;
import androidx.annotation.NonNull;
import com.beizi.fusion.model.AdSpacesBean;
import com.beizi.fusion.widget.RegionClickView;

/* JADX INFO: loaded from: classes6.dex */
public class aj {

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    private static String f10413d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    private static String f10414e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    private static String f10415f;

    /* JADX INFO: renamed from: g, reason: collision with root package name */
    private static String f10416g;

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private Context f10417a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private a f10418b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    private AdSpacesBean.BuyerBean.RegionalClickViewBean f10419c = null;

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    private Boolean f10420h;

    public interface a {
        void a(String str, String str2, String str3, String str4, String str5, String str6, String str7, String str8);
    }

    public aj(Context context) {
        this.f10417a = context;
    }

    public void a(AdSpacesBean.BuyerBean.RegionalClickViewBean regionalClickViewBean) {
        this.f10419c = regionalClickViewBean;
    }

    public View a(int i10, int i11, AdSpacesBean.BuyerBean.PercentPositionBean percentPositionBean, boolean z10) {
        if (this.f10417a == null || percentPositionBean == null) {
            return null;
        }
        ac.c("BeiZis", "adWidthDp = " + i10 + ",adHeightDp = " + i11);
        RegionClickView regionClickView = new RegionClickView(this.f10417a);
        if (this.f10419c != null) {
            regionClickView.setDownloadApp(this.f10420h);
            regionClickView.setRegionalClickViewBean(this.f10419c);
        }
        regionClickView.setLayoutParams(a(i10, i11, percentPositionBean));
        if (z10) {
            regionClickView.setOnClickListener(new View.OnClickListener() { // from class: com.beizi.fusion.tool.aj.1
                @Override // android.view.View.OnClickListener
                public void onClick(View view) {
                    if (aj.this.f10418b != null) {
                        aj.this.f10418b.a(aj.f10413d, aj.f10414e, aj.f10415f, aj.f10416g, aj.f10413d, aj.f10414e, aj.f10415f, aj.f10416g);
                    }
                }
            });
            regionClickView.setOnTouchListener(new View.OnTouchListener() { // from class: com.beizi.fusion.tool.aj.2
                @Override // android.view.View.OnTouchListener
                public boolean onTouch(View view, MotionEvent motionEvent) {
                    try {
                        if (motionEvent.getAction() != 0) {
                            return false;
                        }
                        String unused = aj.f10413d = motionEvent.getX() + "";
                        String unused2 = aj.f10414e = motionEvent.getY() + "";
                        String unused3 = aj.f10415f = motionEvent.getRawX() + "";
                        String unused4 = aj.f10416g = motionEvent.getRawY() + "";
                        return false;
                    } catch (Exception e10) {
                        e10.printStackTrace();
                        return false;
                    }
                }
            });
        }
        return regionClickView;
    }

    @NonNull
    private ViewGroup.MarginLayoutParams a(int i10, int i11, AdSpacesBean.BuyerBean.PercentPositionBean percentPositionBean) {
        int i12;
        int i13;
        int i14;
        int i15;
        String centerX = percentPositionBean.getCenterX();
        String centerY = percentPositionBean.getCenterY();
        String width = percentPositionBean.getWidth();
        String height = percentPositionBean.getHeight();
        float fJ = au.j(this.f10417a);
        if (TextUtils.isEmpty(centerX) || "0".equals(centerX)) {
            centerX = "50%";
        }
        if (TextUtils.isEmpty(centerY) || "0".equals(centerY)) {
            ac.a("BeiZis", "screenHeightDp = " + fJ + ",adHeightDp = " + i11);
            centerY = fJ > ((float) i11) ? "63" : "188";
        }
        if (TextUtils.isEmpty(width) || "0".equals(width)) {
            width = "325";
        }
        if (TextUtils.isEmpty(height) || "0".equals(height)) {
            height = "65";
        }
        float fI = au.i(this.f10417a);
        if (centerX.endsWith("%")) {
            i12 = (Integer.parseInt(centerX.substring(0, centerX.indexOf("%"))) * i10) / 100;
        } else {
            i12 = Integer.parseInt(centerX);
        }
        if (centerY.endsWith("%")) {
            i13 = (Integer.parseInt(centerY.substring(0, centerY.indexOf("%"))) * i11) / 100;
        } else {
            i13 = i11 - Integer.parseInt(centerY);
            ac.a("BeiZis", "adHeightDp = " + i11 + ", centerYInt = " + i13);
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
        int iA = au.a(this.f10417a, i16);
        int iA2 = au.a(this.f10417a, i15);
        int iA3 = au.a(this.f10417a, i12);
        int iA4 = au.a(this.f10417a, i13);
        ac.a("BeiZis", "widthInt = " + iA + ",heightInt = " + iA2);
        ViewGroup.MarginLayoutParams marginLayoutParams = new ViewGroup.MarginLayoutParams(iA, iA2);
        ac.a("BeiZis", "centerYInt = " + iA4 + ",centerXInt = " + iA3 + ",adWidthDp = " + i10 + ",adHeightDp = " + i11);
        marginLayoutParams.topMargin = iA4 - (iA2 / 2);
        marginLayoutParams.leftMargin = iA3 - (iA / 2);
        return marginLayoutParams;
    }

    public void a(a aVar) {
        this.f10418b = aVar;
    }

    public void a() {
        this.f10417a = null;
        this.f10419c = null;
    }

    public void a(Boolean bool) {
        this.f10420h = bool;
    }
}
