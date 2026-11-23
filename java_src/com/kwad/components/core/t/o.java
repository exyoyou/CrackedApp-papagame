package com.kwad.components.core.t;

import android.content.Context;
import android.location.LocationManager;
import androidx.core.content.ContextCompat;
import com.haima.hmcp.Constants;

/* JADX INFO: loaded from: classes2.dex */
public final class o {
    public static boolean aP(Context context) {
        try {
            LocationManager locationManager = (LocationManager) context.getSystemService("location");
            return locationManager != null && locationManager.isProviderEnabled(Constants.WS_MESSAGE_TYPE_GPS);
        } catch (Exception unused) {
        }
    }

    private static boolean aQ(Context context) {
        try {
            return ContextCompat.checkSelfPermission(context, com.kuaishou.weapon.p0.g.f74783g) == 0 || ContextCompat.checkSelfPermission(context, com.kuaishou.weapon.p0.g.f74784h) == 0;
        } catch (Exception unused) {
            return false;
        }
    }
}
