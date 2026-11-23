package com.byazt.vx;

import android.content.Context;
import android.location.Location;
import android.location.LocationListener;
import android.location.LocationManager;
import android.os.Bundle;
import android.os.Handler;
import android.os.Looper;
import android.text.TextUtils;
import androidx.annotation.Nullable;
import com.haima.hmcp.Constants;
import com.haima.hmcp.widgets.BaseVideoView;
import com.kuaishou.weapon.p0.g;
import java.util.concurrent.Callable;
import java.util.concurrent.FutureTask;
import java.util.concurrent.TimeUnit;

/* JADX INFO: loaded from: classes9.dex */
@com.byazt.zqa.c(c = {0, 1, 962, 34})
public class a {

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public static long f21398c = 1800000;
    public static Handler tt = new Handler(Looper.getMainLooper());

    @com.byazt.zqa.c(c = {0, 1, 962, 464})
    private static class c implements Callable<Location> {

        /* JADX INFO: renamed from: c, reason: collision with root package name */
        public LocationManager f21402c;
        public String tt;

        public c(LocationManager locationManager, String str) {
            this.f21402c = locationManager;
            this.tt = str;
        }

        /* JADX WARN: Can't rename method to resolve collision */
        @Override // java.util.concurrent.Callable
        public Location call() throws Exception {
            System.currentTimeMillis();
            Location lastKnownLocation = this.f21402c.getLastKnownLocation(this.tt);
            System.currentTimeMillis();
            return lastKnownLocation;
        }
    }

    private static boolean tt(Context context) {
        long j10 = com.byazt.vif.uj.c(null, "gm_tt_ad_mediation_sdk_sp").getLong("lbstime", -1L);
        return j10 == -1 || System.currentTimeMillis() - j10 > f21398c;
    }

    private static n uj(final Context context) {
        final LocationManager locationManager = (LocationManager) context.getSystemService("location");
        n nVar = null;
        if (locationManager != null) {
            try {
                Location locationC = c(locationManager);
                if (locationC != null && tt(locationC)) {
                    tt(context, locationC);
                    nVar = new n((float) locationC.getLatitude(), (float) locationC.getLongitude());
                }
                if (Looper.myLooper() != Looper.getMainLooper()) {
                    new Handler(Looper.getMainLooper()).post(new Runnable() { // from class: com.byazt.vx.a.1
                        @Override // java.lang.Runnable
                        public void run() {
                            a.tt(context, locationManager);
                        }
                    });
                } else {
                    tt(context, locationManager);
                }
            } catch (Throwable th) {
                if (com.byazt.eu.tt.tt()) {
                    com.byazt.nr.m.c(th);
                }
            }
        }
        return nVar;
    }

    @Nullable
    private static n ve(Context context) {
        com.byazt.it.ve veVarC = com.byazt.vif.uj.c(null, "gm_tt_ad_mediation_sdk_sp");
        float f10 = veVarC.getFloat(BaseVideoView.GPS_LATITUDE, -1.0f);
        float f11 = veVarC.getFloat(BaseVideoView.GPS_LONGITUDE, -1.0f);
        if (f10 == -1.0f || f11 == -1.0f) {
            return null;
        }
        return new n(f10, f11);
    }

    private static String tt(LocationManager locationManager) {
        if (locationManager.isProviderEnabled(Constants.WS_MESSAGE_TYPE_GPS)) {
            return Constants.WS_MESSAGE_TYPE_GPS;
        }
        if (locationManager.isProviderEnabled("network")) {
            return "network";
        }
        if (locationManager.isProviderEnabled("passive")) {
            return "passive";
        }
        return null;
    }

    @Nullable
    public static n c(Context context) {
        if (!com.byazt.bp.c.t().qy().c()) {
            return null;
        }
        Context context2 = context == null ? com.byazt.bp.tt.getContext() : context.getApplicationContext();
        if (context2 == null) {
            return null;
        }
        n nVarVe = ve(context2);
        if (!tt(context2)) {
            return nVarVe;
        }
        int iC = com.byazt.ka.tt.c(context2, g.f74783g);
        int iC2 = com.byazt.ka.tt.c(context2, g.f74784h);
        if (iC == 0 || iC2 == 0) {
            return uj(context2);
        }
        return null;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static void tt(final Context context, final LocationManager locationManager) {
        if (context == null || locationManager == null) {
            return;
        }
        final LocationListener locationListener = new LocationListener() { // from class: com.byazt.vx.a.2
            @Override // android.location.LocationListener
            public void onLocationChanged(Location location) {
                if (location != null && a.tt(location)) {
                    a.tt(context, location);
                }
                a.tt(locationManager, this);
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
        };
        try {
            String strTt = tt(locationManager);
            if (TextUtils.isEmpty(strTt)) {
                return;
            }
            locationManager.requestSingleUpdate(strTt, locationListener, Looper.getMainLooper());
            tt.postDelayed(new Runnable() { // from class: com.byazt.vx.a.3
                @Override // java.lang.Runnable
                public void run() {
                    a.tt(locationManager, locationListener);
                }
            }, 30000L);
        } catch (Throwable th) {
            if (com.byazt.eu.tt.tt()) {
                com.byazt.nr.m.c(th);
            }
            tt(locationManager, locationListener);
        }
    }

    private static Location c(LocationManager locationManager) {
        Location locationC = c(locationManager, Constants.WS_MESSAGE_TYPE_GPS);
        if (locationC == null) {
            locationC = c(locationManager, "network");
        }
        return locationC == null ? c(locationManager, "passive") : locationC;
    }

    private static Location c(LocationManager locationManager, String str) {
        try {
            FutureTask futureTask = new FutureTask(new c(locationManager, str));
            com.byazt.eu.n.uj(futureTask);
            return (Location) futureTask.get(1L, TimeUnit.SECONDS);
        } catch (Throwable unused) {
            return null;
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static void tt(LocationManager locationManager, LocationListener locationListener) {
        if (locationManager == null || locationListener == null) {
            return;
        }
        try {
            locationManager.removeUpdates(locationListener);
        } catch (Throwable th) {
            if (com.byazt.eu.tt.tt()) {
                com.byazt.nr.m.c(th);
            }
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static void tt(Context context, Location location) {
        if (tt(location)) {
            com.byazt.it.ve veVarC = com.byazt.vif.uj.c(null, "gm_tt_ad_mediation_sdk_sp");
            veVarC.put(BaseVideoView.GPS_LATITUDE, (float) location.getLatitude());
            veVarC.put(BaseVideoView.GPS_LONGITUDE, (float) location.getLongitude());
            veVarC.put("lbstime", System.currentTimeMillis());
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static boolean tt(Location location) {
        return (location.getLatitude() == 0.0d || location.getLongitude() == 0.0d) ? false : true;
    }
}
