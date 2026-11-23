package com.sigmob.sdk.base.mta;

import android.location.Location;
import com.sigmob.sdk.base.o;

/* JADX INFO: loaded from: classes5.dex */
public class PointFiveEntity extends PointEntitySigmob {
    public String getLat() {
        try {
            if (o.a().R()) {
                return null;
            }
        } catch (Throwable unused) {
        }
        Location location = getDeviceContext().getLocation();
        return location == null ? "0" : String.valueOf(location.getLatitude());
    }

    public String getLng() {
        try {
            if (o.a().R()) {
                return null;
            }
        } catch (Throwable unused) {
        }
        Location location = getDeviceContext().getLocation();
        return location == null ? "0" : String.valueOf(location.getLongitude());
    }
}
