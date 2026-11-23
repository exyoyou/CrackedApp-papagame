package com.kongzue.dialogx.util;

import android.content.Context;
import android.graphics.drawable.Drawable;
import android.graphics.drawable.GradientDrawable;
import android.graphics.drawable.InsetDrawable;

/* JADX INFO: loaded from: classes3.dex */
public class k {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private int f74195a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private int f74196b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    private int f74197c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    private int[] f74198d;

    public k() {
        this.f74197c = 1;
        this.f74198d = new int[]{-2104859, -12961222};
    }

    private int b(Context context, float f10) {
        return (int) ((f10 * context.getResources().getDisplayMetrics().density) + 0.5f);
    }

    public Drawable a(Context context, boolean z10) {
        GradientDrawable gradientDrawable = new GradientDrawable();
        gradientDrawable.setShape(0);
        gradientDrawable.setColor(c(z10));
        return new InsetDrawable((Drawable) gradientDrawable, b(context, this.f74195a), 0, b(context, this.f74196b), 0);
    }

    public int c(boolean z10) {
        return z10 ? this.f74198d[0] : this.f74198d[1];
    }

    public int d() {
        return this.f74195a;
    }

    public int e() {
        return this.f74196b;
    }

    public int f() {
        return this.f74197c;
    }

    public k g(int i10) {
        this.f74198d = new int[]{i10, i10};
        return this;
    }

    public k h(boolean z10, int i10) {
        if (z10) {
            this.f74198d[0] = i10;
        } else {
            this.f74198d[1] = i10;
        }
        return this;
    }

    public k i(int i10) {
        this.f74195a = i10;
        return this;
    }

    public k j(int i10) {
        this.f74196b = i10;
        return this;
    }

    public k k(int i10) {
        this.f74197c = i10;
        return this;
    }

    public String toString() {
        return "ItemDivider{left(dp)=" + this.f74195a + ", right(dp)=" + this.f74196b + ", width(px)=" + this.f74197c + ", color(light)=" + String.format("#%06X", Integer.valueOf(this.f74198d[0] & 16777215)) + ", color(night)=" + String.format("#%06X", Integer.valueOf(this.f74198d[1] & 16777215)) + '}';
    }

    public k(int i10, int i11, int i12) {
        this.f74198d = new int[]{-2104859, -12961222};
        this.f74195a = i10;
        this.f74196b = i11;
        this.f74197c = i12;
    }
}
