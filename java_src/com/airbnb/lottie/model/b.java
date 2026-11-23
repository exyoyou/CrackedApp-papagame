package com.airbnb.lottie.model;

import android.graphics.Typeface;
import androidx.annotation.Nullable;
import androidx.annotation.RestrictTo;

/* JADX INFO: loaded from: classes7.dex */
@RestrictTo({RestrictTo.Scope.LIBRARY})
public class b {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private final String f5743a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private final String f5744b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    private final String f5745c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    private final float f5746d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    @Nullable
    private Typeface f5747e;

    public b(String str, String str2, String str3, float f10) {
        this.f5743a = str;
        this.f5744b = str2;
        this.f5745c = str3;
        this.f5746d = f10;
    }

    float a() {
        return this.f5746d;
    }

    public String b() {
        return this.f5743a;
    }

    public String c() {
        return this.f5744b;
    }

    public String d() {
        return this.f5745c;
    }

    @Nullable
    public Typeface e() {
        return this.f5747e;
    }

    public void f(@Nullable Typeface typeface) {
        this.f5747e = typeface;
    }
}
