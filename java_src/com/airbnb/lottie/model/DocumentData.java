package com.airbnb.lottie.model;

import android.graphics.PointF;
import androidx.annotation.ColorInt;
import androidx.annotation.Nullable;
import androidx.annotation.RestrictTo;

/* JADX INFO: loaded from: classes7.dex */
@RestrictTo({RestrictTo.Scope.LIBRARY})
public class DocumentData {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public String f5709a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public String f5710b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public float f5711c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    public Justification f5712d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public int f5713e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    public float f5714f;

    /* JADX INFO: renamed from: g, reason: collision with root package name */
    public float f5715g;

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    @ColorInt
    public int f5716h;

    /* JADX INFO: renamed from: i, reason: collision with root package name */
    @ColorInt
    public int f5717i;

    /* JADX INFO: renamed from: j, reason: collision with root package name */
    public float f5718j;

    /* JADX INFO: renamed from: k, reason: collision with root package name */
    public boolean f5719k;

    /* JADX INFO: renamed from: l, reason: collision with root package name */
    @Nullable
    public PointF f5720l;

    /* JADX INFO: renamed from: m, reason: collision with root package name */
    @Nullable
    public PointF f5721m;

    public enum Justification {
        LEFT_ALIGN,
        RIGHT_ALIGN,
        CENTER
    }

    public DocumentData(String str, String str2, float f10, Justification justification, int i10, float f11, float f12, @ColorInt int i11, @ColorInt int i12, float f13, boolean z10, PointF pointF, PointF pointF2) {
        a(str, str2, f10, justification, i10, f11, f12, i11, i12, f13, z10, pointF, pointF2);
    }

    public void a(String str, String str2, float f10, Justification justification, int i10, float f11, float f12, @ColorInt int i11, @ColorInt int i12, float f13, boolean z10, PointF pointF, PointF pointF2) {
        this.f5709a = str;
        this.f5710b = str2;
        this.f5711c = f10;
        this.f5712d = justification;
        this.f5713e = i10;
        this.f5714f = f11;
        this.f5715g = f12;
        this.f5716h = i11;
        this.f5717i = i12;
        this.f5718j = f13;
        this.f5719k = z10;
        this.f5720l = pointF;
        this.f5721m = pointF2;
    }

    public int hashCode() {
        int iHashCode = (((((int) ((((this.f5709a.hashCode() * 31) + this.f5710b.hashCode()) * 31) + this.f5711c)) * 31) + this.f5712d.ordinal()) * 31) + this.f5713e;
        long jFloatToRawIntBits = Float.floatToRawIntBits(this.f5714f);
        return (((iHashCode * 31) + ((int) (jFloatToRawIntBits ^ (jFloatToRawIntBits >>> 32)))) * 31) + this.f5716h;
    }

    public DocumentData() {
    }
}
