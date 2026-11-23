package com.airbnb.lottie;

import android.graphics.Bitmap;
import androidx.annotation.Nullable;
import androidx.annotation.RestrictTo;

/* JADX INFO: loaded from: classes7.dex */
public class x0 {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private final int f6173a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private final int f6174b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    private final String f6175c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    private final String f6176d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    private final String f6177e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    @Nullable
    private Bitmap f6178f;

    @RestrictTo({RestrictTo.Scope.LIBRARY})
    public x0(int i10, int i11, String str, String str2, String str3) {
        this.f6173a = i10;
        this.f6174b = i11;
        this.f6175c = str;
        this.f6176d = str2;
        this.f6177e = str3;
    }

    @Nullable
    public Bitmap a() {
        return this.f6178f;
    }

    public String b() {
        return this.f6177e;
    }

    public String c() {
        return this.f6176d;
    }

    public int d() {
        return this.f6174b;
    }

    public String e() {
        return this.f6175c;
    }

    public int f() {
        return this.f6173a;
    }

    public boolean g() {
        return this.f6178f != null || (this.f6176d.startsWith("data:") && this.f6176d.indexOf("base64,") > 0);
    }

    public void h(@Nullable Bitmap bitmap) {
        this.f6178f = bitmap;
    }
}
