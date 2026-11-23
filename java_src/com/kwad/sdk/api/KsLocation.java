package com.kwad.sdk.api;

import androidx.annotation.Keep;
import com.kwad.sdk.api.core.KsAdSdkApi;

/* JADX INFO: loaded from: classes2.dex */
@KsAdSdkApi
@Keep
public class KsLocation {
    private double mLatitude;
    private double mLongitude;
    private double mAltitude = 0.0d;
    private float mSpeed = 0.0f;
    private float mBearing = 0.0f;

    public KsLocation(double d10, double d11) {
        this.mLatitude = d10;
        this.mLongitude = d11;
    }

    public double getAltitude() {
        return this.mAltitude;
    }

    public float getBearing() {
        return this.mBearing;
    }

    public double getLatitude() {
        return this.mLatitude;
    }

    public double getLongitude() {
        return this.mLongitude;
    }

    public float getSpeed() {
        return this.mSpeed;
    }

    public void setAltitude(double d10) {
        this.mAltitude = d10;
    }

    public void setBearing(float f10) {
        this.mBearing = f10;
    }

    public void setLatitude(double d10) {
        this.mLatitude = d10;
    }

    public void setLongitude(double d10) {
        this.mLongitude = d10;
    }

    public void setSpeed(float f10) {
        this.mSpeed = f10;
    }
}
