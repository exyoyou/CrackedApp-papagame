package com.bytedance.sdk.openadsdk;

import com.byazt.zqa.c;

/* JADX INFO: loaded from: classes9.dex */
@c(c = {0, 80, 81, 82, 2481})
public class TTLocation implements LocationProvider {

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    private double f23367c;
    private double tt;

    public TTLocation(double d10, double d11) {
        this.f23367c = d10;
        this.tt = d11;
    }

    @Override // com.bytedance.sdk.openadsdk.LocationProvider
    public double getLatitude() {
        return this.f23367c;
    }

    @Override // com.bytedance.sdk.openadsdk.LocationProvider
    public double getLongitude() {
        return this.tt;
    }

    public void setLatitude(double d10) {
        this.f23367c = d10;
    }

    public void setLongitude(double d10) {
        this.tt = d10;
    }
}
