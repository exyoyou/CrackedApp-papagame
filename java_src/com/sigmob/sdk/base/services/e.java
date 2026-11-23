package com.sigmob.sdk.base.services;

import android.annotation.SuppressLint;
import android.location.Criteria;
import android.location.Location;
import android.location.LocationListener;
import android.location.LocationManager;
import android.os.Bundle;
import com.czhj.sdk.common.ClientMetadata;
import com.sigmob.sdk.base.utils.k;
import com.sigmob.sdk.base.utils.w;

/* JADX INFO: loaded from: classes5.dex */
public class e implements f.a {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private static final String f79686a = "e";

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    private static volatile LocationManager f79688c;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    private g f79690e = g.STOP;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private static final LocationListener f79687b = new LocationListener() { // from class: com.sigmob.sdk.base.services.e.1
        @Override // android.location.LocationListener
        public void onLocationChanged(Location location) {
            k.c(e.f79686a, "onLocationChanged: location = " + location.toString(), new Object[0]);
            ClientMetadata clientMetadata = ClientMetadata.getInstance();
            if (w.b(clientMetadata)) {
                clientMetadata.setLocation(location);
            }
        }

        @Override // android.location.LocationListener
        public void onProviderDisabled(String provider) {
        }

        @Override // android.location.LocationListener
        public void onProviderEnabled(String provider) {
        }

        @Override // android.location.LocationListener
        public void onStatusChanged(String provider, int status, Bundle extras) {
        }
    };

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    private static String f79689d = "network";

    e() {
        LocationManager locationManagerA;
        if (ClientMetadata.getInstance() == null || (locationManagerA = a()) == null) {
            return;
        }
        Criteria criteria = new Criteria();
        criteria.setAccuracy(2);
        criteria.setAltitudeRequired(false);
        criteria.setBearingRequired(false);
        criteria.setCostAllowed(false);
        criteria.setPowerRequirement(1);
        f79689d = locationManagerA.getBestProvider(criteria, false);
    }

    static LocationManager a() {
        if (f79688c == null) {
            synchronized (e.class) {
                if (f79688c == null) {
                    f79688c = ClientMetadata.getInstance().getLocationManager();
                }
            }
        }
        return f79688c;
    }

    @SuppressLint({"MissingPermission"})
    private void c() {
        try {
            if (w.b(f79688c)) {
                f79688c.removeUpdates(f79687b);
            }
            f79688c = null;
        } catch (Throwable th) {
            k.f(f79686a, "stopUpdateLocation: error = " + th.getMessage(), new Object[0]);
        }
    }

    @SuppressLint({"MissingPermission"})
    private void d() {
        String str;
        try {
            LocationManager locationManagerA = a();
            if (locationManagerA == null || (str = f79689d) == null || !locationManagerA.isProviderEnabled(str)) {
                return;
            }
            k.c(f79686a, "startUpdateLocation", new Object[0]);
            locationManagerA.requestLocationUpdates(f79689d, 10000L, 500.0f, f79687b);
            this.f79690e = g.RUNNING;
        } catch (Throwable th) {
            k.f(f79686a, "startUpdateLocation: error = " + th.getMessage(), new Object[0]);
        }
    }

    @Override // com.sigmob.sdk.base.services.f.a
    public boolean e() {
        if (this.f79690e == g.RUNNING) {
            return false;
        }
        d();
        return true;
    }

    @Override // com.sigmob.sdk.base.services.f.a
    public g f() {
        return this.f79690e;
    }

    @Override // com.sigmob.sdk.base.services.f.a
    public void g() {
        if (this.f79690e == g.RUNNING) {
            c();
            this.f79690e = g.STOP;
        }
    }

    @Override // com.sigmob.sdk.base.services.f.a
    public Error h() {
        return null;
    }
}
