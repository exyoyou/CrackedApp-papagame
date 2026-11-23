package com.sigmob.sdk.base.utils;

import android.annotation.SuppressLint;
import android.content.Context;
import android.content.res.Resources;
import android.graphics.Rect;
import android.view.View;
import android.view.ViewGroup;
import android.view.ViewTreeObserver;

/* JADX INFO: loaded from: classes5.dex */
public class a {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private int f79708a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private final View f79709b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    private final ViewGroup.LayoutParams f79710c;

    private a(View content) {
        this.f79709b = content;
        content.getViewTreeObserver().addOnGlobalLayoutListener(new ViewTreeObserver.OnGlobalLayoutListener() { // from class: com.sigmob.sdk.base.utils.a0
            @Override // android.view.ViewTreeObserver.OnGlobalLayoutListener
            public final void onGlobalLayout() {
                this.f79711b.a();
            }
        });
        this.f79710c = content.getLayoutParams();
    }

    private int b() {
        Rect rect = new Rect();
        this.f79709b.getWindowVisibleDisplayFrame(rect);
        return rect.bottom;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void a() {
        int iB = b();
        if (iB == this.f79708a) {
            return;
        }
        this.f79710c.height = iB;
        this.f79709b.requestLayout();
        this.f79708a = iB;
    }

    public static void a(View content) {
        new a(content);
    }

    @SuppressLint({"LongLogTag", "PrivateApi"})
    public static boolean a(Context context) {
        Resources resources = context.getResources();
        int identifier = resources.getIdentifier("config_showNavigationBar", "bool", "android");
        boolean z10 = false;
        boolean z11 = identifier > 0 ? resources.getBoolean(identifier) : false;
        try {
            Class<?> cls = Class.forName("android.os.SystemProperties");
            String str = (String) cls.getMethod("get", String.class).invoke(cls, "qemu.hw.mainkeys");
            if (!"1".equals(str)) {
                z10 = "0".equals(str) ? true : z11;
            }
            return z10;
        } catch (Exception unused) {
            return z11;
        }
    }
}
