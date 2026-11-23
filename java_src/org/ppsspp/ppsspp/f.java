package org.ppsspp.ppsspp;

import android.content.Context;
import android.location.Location;
import android.location.LocationListener;
import android.location.LocationManager;
import android.os.Bundle;
import com.haima.hmcp.Constants;

/* JADX INFO: loaded from: classes10.dex */
class f implements LocationListener {

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    private static final String f95940c = "LocationHelper";

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private LocationManager f95941a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private boolean f95942b = false;

    f(Context context) {
        this.f95941a = (LocationManager) context.getSystemService("location");
    }

    void a() {
        if (this.f95942b) {
            return;
        }
        try {
            this.f95941a.isProviderEnabled(Constants.WS_MESSAGE_TYPE_GPS);
            this.f95941a.isProviderEnabled("network");
            this.f95941a.requestLocationUpdates(Constants.WS_MESSAGE_TYPE_GPS, 1000L, 0.0f, this);
            this.f95941a.requestLocationUpdates("network", 1000L, 0.0f, this);
            this.f95942b = true;
        } catch (SecurityException e10) {
            StringBuilder sb2 = new StringBuilder();
            sb2.append("Cannot start location updates: ");
            sb2.append(e10.toString());
        }
    }

    void b() {
        if (this.f95942b) {
            this.f95942b = false;
            this.f95941a.removeUpdates(this);
        }
    }

    @Override // android.location.LocationListener
    public void onLocationChanged(Location location) {
        NativeApp.pushNewGpsData((float) location.getLatitude(), (float) location.getLongitude(), (float) location.getAltitude(), location.getSpeed(), location.getBearing(), location.getTime() / 1000);
    }

    @Override // android.location.LocationListener
    public void onProviderDisabled(String str) {
    }

    @Override // android.location.LocationListener
    public void onProviderEnabled(String str) {
    }

    @Override // android.location.LocationListener
    public void onStatusChanged(String str, int i10, Bundle bundle) {
    }
}
