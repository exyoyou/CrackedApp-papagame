package com.byazt.cv;

import android.text.TextUtils;

/* JADX INFO: loaded from: classes6.dex */
@com.byazt.zqa.c(c = {0, 1, 597, 67})
public class u extends com.byazt.nc.t {

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public String f12628c;
    public int tt;
    public int ve;

    public u(String str) {
        this.f12628c = str;
    }

    @Override // com.byazt.nc.t
    public double getDuration() {
        return 0.0d;
    }

    @Override // com.byazt.nc.t
    public int getHeight() {
        return this.ve;
    }

    @Override // com.byazt.nc.t
    public String getImageUrl() {
        return !TextUtils.isEmpty(this.f12628c) ? this.f12628c : "";
    }

    @Override // com.byazt.nc.t
    public int getWidth() {
        return this.tt;
    }

    @Override // com.byazt.nc.t
    public boolean isValid() {
        return !TextUtils.isEmpty(this.f12628c);
    }

    public u(String str, int i10, int i11) {
        this.f12628c = str;
        this.tt = i10;
        this.ve = i11;
    }
}
