package com.join.android.app.component.optimizetext;

import android.app.Activity;
import android.content.Context;
import android.graphics.Rect;
import android.util.DisplayMetrics;
import android.util.TypedValue;
import android.view.View;

/* JADX INFO: loaded from: classes5.dex */
public class a {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private static DisplayMetrics f34987a = null;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private static final int f34988b = 320;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    private static final int f34989c = 640;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    private static int f34990d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    private static int f34991e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    private static int f34992f;

    /* JADX INFO: renamed from: g, reason: collision with root package name */
    private static float f34993g;

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    private static int f34994h;

    public static int a(float dp) {
        return (int) ((f34987a.density * dp) + 0.5f);
    }

    public static int b() {
        return f34992f;
    }

    public static float c() {
        return f34993g;
    }

    public static int d() {
        return f34991e;
    }

    public static float e() {
        return f34987a.density;
    }

    public static int f() {
        return f34987a.heightPixels;
    }

    public static int g() {
        return f34987a.widthPixels;
    }

    public static int h() {
        return f34987a.densityDpi;
    }

    public static int i() {
        return f34994h;
    }

    public static int j(View view) {
        return view.getRootView().getHeight();
    }

    public static int k() {
        return f34990d;
    }

    public static int l(View view) {
        Rect rect = new Rect();
        view.getWindowVisibleDisplayFrame(rect);
        return rect.bottom - rect.top;
    }

    public static void m(Context context) {
        f34987a = context.getResources().getDisplayMetrics();
        int iA = a(320.0f);
        f34990d = iA;
        if (iA > 640) {
            f34990d = 640;
        }
    }

    public static int n(int px) {
        return (int) ((px / f34987a.density) + 0.5f);
    }

    public static void o(Activity activity) {
        if (f34994h == 0) {
            View decorView = activity.getWindow().getDecorView();
            f34991e = decorView.getWidth();
            int height = decorView.getHeight();
            f34992f = height;
            f34993g = f34991e / height;
            f34994h = height - l(decorView);
        }
    }

    public static void p(int height) {
        f34992f = height;
    }

    public static void q(float ratio) {
        f34993g = ratio;
    }

    public static void r(int width) {
        f34991e = width;
    }

    public static int s(int spValue) {
        return (int) TypedValue.applyDimension(2, spValue, f34987a);
    }
}
