package com.sigmob.sdk.base.common;

import android.os.Parcel;

/* JADX INFO: loaded from: classes5.dex */
public class g {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private int f79068a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private int f79069b;

    public g(int width, int height) {
        this.f79068a = width;
        this.f79069b = height;
    }

    public int a() {
        return this.f79068a;
    }

    public int b() {
        return this.f79069b;
    }

    protected g(Parcel in2) {
        this.f79068a = in2.readInt();
        this.f79069b = in2.readInt();
    }

    public void a(int width) {
        this.f79068a = width;
    }

    public void b(int height) {
        this.f79069b = height;
    }
}
