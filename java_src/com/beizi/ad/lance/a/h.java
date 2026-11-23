package com.beizi.ad.lance.a;

import android.app.Activity;
import android.content.Context;
import android.content.res.Resources;
import android.graphics.Rect;
import android.view.View;
import android.view.ViewGroup;
import android.widget.FrameLayout;

/* JADX INFO: loaded from: classes6.dex */
public class h {
    public static View a(int i10, View view, View view2, String str) {
        if (view != null) {
            return a(i10, view2, view, str, true);
        }
        return null;
    }

    private static int b(Context context) {
        if (context instanceof Activity) {
            return ((Activity) context).getResources().getDisplayMetrics().heightPixels;
        }
        return 1920;
    }

    private static int c(Context context) {
        if (!(context instanceof Activity)) {
            return 0;
        }
        Resources resources = ((Activity) context).getResources();
        int dimensionPixelSize = resources.getDimensionPixelSize(resources.getIdentifier("status_bar_height", "dimen", "android"));
        n.c("BeiZisAd", "Status height:" + dimensionPixelSize);
        return dimensionPixelSize;
    }

    /* JADX WARN: Code duplicated, block: B:69:0x0382  */
    /* JADX WARN: Code duplicated, block: B:70:0x0385  */
    /* JADX WARN: Code duplicated, block: B:72:0x038d  */
    /* JADX WARN: Code duplicated, block: B:73:0x0390  */
    /* JADX WARN: Code duplicated, block: B:75:0x0393  */
    /* JADX WARN: Code duplicated, block: B:77:0x0399  */
    /* JADX WARN: Code duplicated, block: B:80:0x03d3  */
    /* JADX WARN: Code duplicated, block: B:82:0x03ef  */
    /* JADX WARN: Instruction removed from duplicated block: B:80:0x03d3, please report this as an issue */
    /* JADX WARN: Instruction removed from duplicated block: B:82:0x03ef, please report this as an issue */
    public static View a(int i10, View view, View view2, String str, boolean z10) {
        int iMax;
        int i11;
        int i12;
        int i13;
        int i14;
        int i15;
        int i16;
        int i17;
        View rootView;
        if (view == null || view2 == null) {
            return null;
        }
        int width = view2.getWidth();
        int height = view2.getHeight();
        double d10 = ((double) i10) / 100.0d;
        n.c("BeiZisAd", "width = " + width + ",height = " + height);
        Rect rect = new Rect();
        view2.getHitRect(rect);
        int[] iArr = new int[2];
        view2.getLocationOnScreen(iArr);
        int i18 = iArr[0];
        int i19 = iArr[1];
        n.c("BeiZisAd", "delegateLeft = " + i18 + ",delegateTop = " + i19);
        int iA = a(view2.getContext());
        int iB = b(view2.getContext()) + c(view2.getContext());
        n.c("BeiZisAd", "screenWidth = " + iA + ",screenHeight = " + iB);
        str.hashCode();
        String str2 = "BOTTOM";
        String str3 = "RIGHT";
        String str4 = "LEFT";
        String str5 = "TOP";
        switch (str) {
            case "BOTTOMLEFT":
                str4 = "LEFT";
                str3 = "RIGHT";
                str2 = "BOTTOM";
                str5 = "TOP";
                double dSqrt = Math.sqrt(d10) - 1.0d;
                int i20 = (int) (((double) width) * dSqrt);
                int iMax2 = Math.max(0, i19 + 0);
                iMax = Math.max(0, i18 - i20);
                i11 = iMax2;
                i12 = 0;
                i13 = 0;
                i14 = (int) (dSqrt * ((double) height));
                i15 = i20;
                break;
            case "TOPLEFT":
                double dSqrt2 = Math.sqrt(d10) - 1.0d;
                int i21 = (int) (((double) width) * dSqrt2);
                int i22 = (int) (dSqrt2 * ((double) height));
                int iMax3 = Math.max(0, i19 - i22);
                iMax = Math.max(0, i18 - i21);
                i11 = iMax3;
                i15 = i21;
                i14 = 0;
                i13 = i22;
                i12 = 0;
                break;
            case "TOPRIGHT":
                str4 = "LEFT";
                str3 = "RIGHT";
                i15 = 0;
                double dSqrt3 = Math.sqrt(d10) - 1.0d;
                int i23 = (int) (((double) width) * dSqrt3);
                int i24 = (int) (dSqrt3 * ((double) height));
                int iMax4 = Math.max(0, i19 - i24);
                i13 = i24;
                iMax = Math.max(0, i18 + 0);
                str5 = "TOP";
                i12 = i23;
                i14 = 0;
                str2 = "BOTTOM";
                i11 = iMax4;
                break;
            case "TOP":
                str4 = "LEFT";
                str3 = "RIGHT";
                i15 = 0;
                int i25 = (int) ((d10 - 1.0d) * ((double) height));
                int iMax5 = Math.max(0, i19 - i25);
                i13 = i25;
                iMax = Math.max(0, i18 + 0);
                str2 = "BOTTOM";
                str5 = "TOP";
                i11 = iMax5;
                i12 = 0;
                i14 = 0;
                break;
            case "LEFT":
                int i26 = (int) ((d10 - 1.0d) * ((double) width));
                int iMax6 = Math.max(0, i19 + 0);
                i15 = i26;
                iMax = Math.max(0, i18 - i26);
                i11 = iMax6;
                i12 = 0;
                i14 = 0;
                i13 = 0;
                break;
            case "RIGHT":
                i15 = 0;
                i12 = (int) ((d10 - 1.0d) * ((double) width));
                int iMax7 = Math.max(0, i19 + 0);
                iMax = Math.max(0, i18 + 0);
                i11 = iMax7;
                i14 = 0;
                i13 = 0;
                break;
            case "BOTTOMRIGHT":
                str4 = "LEFT";
                str3 = "RIGHT";
                double dSqrt4 = Math.sqrt(d10) - 1.0d;
                i13 = 0;
                int iMax8 = Math.max(0, i19 + 0);
                iMax = Math.max(0, i18 + 0);
                i12 = (int) (((double) width) * dSqrt4);
                str2 = "BOTTOM";
                str5 = "TOP";
                i11 = iMax8;
                i14 = (int) (dSqrt4 * ((double) height));
                i15 = 0;
                break;
            case "BOTTOM":
                int iMax9 = Math.max(0, i19 + 0);
                i14 = (int) ((d10 - 1.0d) * ((double) height));
                iMax = Math.max(0, i18 + 0);
                i15 = 0;
                i13 = 0;
                i11 = iMax9;
                i12 = 0;
                break;
            case "CENTER":
                double dSqrt5 = Math.sqrt(d10) - 1.0d;
                str4 = "LEFT";
                str3 = "RIGHT";
                int i27 = (int) ((((double) width) * dSqrt5) / 2.0d);
                int i28 = (int) ((dSqrt5 * ((double) height)) / 2.0d);
                n.c("BeiZisAd", "expandTop = " + i28);
                int iMax10 = Math.max(0, i19 - i28);
                iMax = Math.max(0, i18 - i27);
                n.c("BeiZisAd", "marginTop = " + iMax10 + ",marginLeft = " + iMax);
                i13 = i28;
                str5 = "TOP";
                i15 = i27;
                i12 = i15;
                str2 = "BOTTOM";
                i11 = iMax10;
                i14 = i13;
                break;
            default:
                str4 = "LEFT";
                str3 = "RIGHT";
                str2 = "BOTTOM";
                str5 = "TOP";
                i15 = 0;
                i12 = 0;
                i14 = 0;
                i13 = 0;
                iMax = 0;
                i11 = 0;
                break;
        }
        StringBuilder sb2 = new StringBuilder();
        CharSequence charSequence = str4;
        sb2.append("area = ");
        sb2.append(i10);
        sb2.append(",expandLeft = ");
        sb2.append(i15);
        sb2.append(",expandTop = ");
        sb2.append(i13);
        sb2.append(",expandRight = ");
        sb2.append(i12);
        sb2.append(",expandBottom = ");
        sb2.append(i14);
        n.c("BeiZisAd", sb2.toString());
        n.c("BeiZisAd", "delegateArea old = " + rect);
        int iMax11 = Math.max(iMax, 0);
        int iMin = Math.min(0, iA);
        int iMax12 = Math.max(i11, 0);
        int iMin2 = Math.min(0, iB);
        rect.left -= i15;
        rect.top -= i13;
        rect.right += i12;
        rect.bottom += i14;
        n.c("BeiZisAd", "delegateArea new = " + rect);
        FrameLayout frameLayout = new FrameLayout(view2.getContext());
        int iMin3 = rect.right - rect.left;
        int iMin4 = rect.bottom - rect.top;
        if (!str.contains(str5)) {
            if (str.contains(str2)) {
                i16 = iB - i19;
            } else {
                i16 = 0;
            }
            if (str.contains(charSequence)) {
                i17 = i18 + width;
            } else if (str.contains(str3)) {
                i17 = iA - i18;
            } else {
                i17 = 0;
            }
            if (i16 != 0) {
                iMin4 = Math.min(iMin4, i16);
            }
            if (i17 != 0) {
                iMin3 = Math.min(iMin3, i17);
            }
            n.c("BeiZisAd", "fHeight = " + iMin4 + ",remainHeight = " + i16 + ",fWidth = " + iMin3 + ",remainWidth = " + i17);
            frameLayout.setBackgroundColor(0);
            if (view instanceof ViewGroup) {
                rootView = view.getRootView();
                n.c("BeiZisAd", "rootView = " + rootView);
                if (rootView instanceof ViewGroup) {
                    FrameLayout.LayoutParams layoutParams = new FrameLayout.LayoutParams(iMin3, iMin4);
                    n.c("BeiZisAd", "marginLeft = " + iMax11 + ",marginTop = " + iMax12 + ",marginRight = " + iMin + ",marginBottom = " + iMin2);
                    layoutParams.setMargins(iMax11, iMax12, iMin, iMin2);
                    ((ViewGroup) rootView).addView(frameLayout, layoutParams);
                    StringBuilder sb3 = new StringBuilder();
                    sb3.append("fWidth = ");
                    sb3.append(iMin3);
                    sb3.append(",fHeight = ");
                    sb3.append(iMin4);
                    n.c("BeiZisAd", sb3.toString());
                }
            }
            return frameLayout;
        }
        i16 = i19 + height;
        if (str.contains(charSequence)) {
            i17 = i18 + width;
        } else if (str.contains(str3)) {
            i17 = iA - i18;
        } else {
            i17 = 0;
        }
        if (i16 != 0) {
            iMin4 = Math.min(iMin4, i16);
        }
        if (i17 != 0) {
            iMin3 = Math.min(iMin3, i17);
        }
        n.c("BeiZisAd", "fHeight = " + iMin4 + ",remainHeight = " + i16 + ",fWidth = " + iMin3 + ",remainWidth = " + i17);
        frameLayout.setBackgroundColor(0);
        if (view instanceof ViewGroup) {
            rootView = view.getRootView();
            n.c("BeiZisAd", "rootView = " + rootView);
            if (rootView instanceof ViewGroup) {
                FrameLayout.LayoutParams layoutParams2 = new FrameLayout.LayoutParams(iMin3, iMin4);
                n.c("BeiZisAd", "marginLeft = " + iMax11 + ",marginTop = " + iMax12 + ",marginRight = " + iMin + ",marginBottom = " + iMin2);
                layoutParams2.setMargins(iMax11, iMax12, iMin, iMin2);
                ((ViewGroup) rootView).addView(frameLayout, layoutParams2);
                StringBuilder sb4 = new StringBuilder();
                sb4.append("fWidth = ");
                sb4.append(iMin3);
                sb4.append(",fHeight = ");
                sb4.append(iMin4);
                n.c("BeiZisAd", sb4.toString());
            }
        }
        return frameLayout;
    }

    private static int a(Context context) {
        if (context instanceof Activity) {
            return ((Activity) context).getResources().getDisplayMetrics().widthPixels;
        }
        return 1080;
    }
}
