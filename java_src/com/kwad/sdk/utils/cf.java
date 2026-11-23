package com.kwad.sdk.utils;

import android.content.Context;
import android.os.Build;
import androidx.annotation.Nullable;
import androidx.core.content.ContextCompat;
import com.join.mgps.activity.BuildQRCodeActivity_;
import com.kwad.sdk.service.ServiceProvider;
import java.util.ArrayList;
import java.util.List;
import java.util.concurrent.CopyOnWriteArrayList;
import org.json.JSONObject;

/* JADX INFO: loaded from: classes2.dex */
public final class cf {
    private static boolean brE;
    private static final List<a> brF = new CopyOnWriteArrayList();

    public static class a implements com.kwad.sdk.core.b {
        public String brG;
        public String brH;
        public int level;

        @Override // com.kwad.sdk.core.b
        public final void parseJson(@Nullable JSONObject jSONObject) {
            if (jSONObject != null) {
                this.level = jSONObject.optInt("level", 0);
                this.brG = jSONObject.optString(BuildQRCodeActivity_.SSID_EXTRA, "");
                this.brH = jSONObject.optString("bssid", "");
            }
        }

        @Override // com.kwad.sdk.core.b
        public final JSONObject toJson() {
            JSONObject jSONObject = new JSONObject();
            ac.putValue(jSONObject, "level", this.level);
            ac.putValue(jSONObject, BuildQRCodeActivity_.SSID_EXTRA, this.brG);
            ac.putValue(jSONObject, "bssid", this.brH);
            return jSONObject;
        }
    }

    public static boolean eG(Context context) {
        if (context.getApplicationInfo().targetSdkVersion < 29 || Build.VERSION.SDK_INT < 29) {
            return Build.VERSION.SDK_INT >= 23 && ContextCompat.checkSelfPermission(context, com.kuaishou.weapon.p0.g.f74783g) == -1 && ContextCompat.checkSelfPermission(context, com.kuaishou.weapon.p0.g.f74784h) == -1;
        }
        return ContextCompat.checkSelfPermission(context, com.kuaishou.weapon.p0.g.f74783g) == -1;
    }

    public static List<a> o(Context context, int i10) {
        if (be.useNetworkStateDisable()) {
            return new ArrayList();
        }
        if (!brE && ServiceProvider.getSDKConfig().canReadNearbyWifiList()) {
            List<a> list = brF;
            if (list.isEmpty() && context != null) {
                if (((com.kwad.sdk.service.a.h) ServiceProvider.get(com.kwad.sdk.service.a.h.class)).ao(32L)) {
                    return list;
                }
                try {
                    if (eG(context)) {
                        return list;
                    }
                    List<a> listP = com.kwad.sdk.utils.c.d.p(context, i10);
                    if (listP != null) {
                        list.addAll(listP);
                    }
                } catch (Exception e10) {
                    brE = true;
                    com.kwad.sdk.core.d.c.printStackTraceOnly(e10);
                }
                return brF;
            }
        }
        return brF;
    }
}
