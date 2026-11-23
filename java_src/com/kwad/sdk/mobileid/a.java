package com.kwad.sdk.mobileid;

import android.content.Context;
import android.os.Build;
import androidx.core.content.ContextCompat;
import com.kuaishou.weapon.p0.g;
import com.kwad.sdk.core.config.e;
import com.kwad.sdk.service.ServiceProvider;
import com.kwad.sdk.utils.ai;
import com.kwad.sdk.utils.aq;
import com.kwad.sdk.utils.be;
import com.kwad.sdk.utils.bf;
import com.kwad.sdk.utils.bi;
import com.kwad.sdk.utils.i;
import java.util.concurrent.TimeUnit;

/* JADX INFO: loaded from: classes2.dex */
public class a {
    private static String TAG = "MobileIdManager";
    public static com.kwad.sdk.mobileid.a.a.a biT;
    private static Context mContext;

    private static d Se() {
        d dVar;
        Context context = mContext;
        int iE = aq.e(context, bf.dT(context), be.useNetworkStateDisable());
        try {
            if (aq.isWifiConnected(mContext)) {
                boolean z10 = iE == 1;
                boolean z11 = !Sf();
                if (z10 && z11) {
                    dVar = new d(true, "uaidTokenCanRequestByWifi");
                    i.schedule(new bi() { // from class: com.kwad.sdk.mobileid.a.1
                        @Override // com.kwad.sdk.utils.bi
                        public final void doTask() {
                            a.cC(a.mContext);
                            com.kwad.sdk.core.d.c.w(a.TAG, "requestMobileIdChangeToyMobileData");
                            i.schedule(new bi() { // from class: com.kwad.sdk.mobileid.a.1.1
                                @Override // com.kwad.sdk.utils.bi
                                public final void doTask() {
                                    a.Sg();
                                    com.kwad.sdk.core.d.c.w(a.TAG, "schedule unbindNetwork");
                                }
                            }, 2L, TimeUnit.SECONDS);
                        }
                    }, e.KH(), TimeUnit.SECONDS);
                } else if (z10) {
                    dVar = new d(false, "noRequestByBrand");
                } else {
                    dVar = z11 ? new d(false, "noRequestByNoCMCC") : new d(false, "noRequestByBrandAndCMCC");
                }
            } else {
                dVar = new d(true, "uaidTokenCanRequest");
                new com.kwad.sdk.mobileid.a.a().cD(mContext);
                com.kwad.sdk.core.d.c.w(TAG, "requestMobileIdByMobileData");
            }
            return dVar;
        } catch (Exception e10) {
            d dVar2 = new d(false, "noRequestByException");
            dVar2.hb(e10.getMessage());
            ServiceProvider.reportSdkCaughtException(e10);
            return dVar2;
        }
    }

    private static boolean Sf() {
        String str = Build.MANUFACTURER;
        com.kwad.sdk.core.d.c.w(TAG, "isHuaweiOrHonorDevice manufacturer: " + str);
        return "HUAWEI".equalsIgnoreCase(str) || "HONOR".equalsIgnoreCase(str);
    }

    public static void Sg() {
        synchronized (a.class) {
            if (biT != null) {
                com.kwad.sdk.core.d.c.w(TAG, "unbindNetwork");
                biT.Sg();
            }
        }
    }

    private static d Sh() {
        String str;
        boolean zVg = ai.Vg();
        boolean z10 = zVg && !ai.Vs() && Si();
        if (!zVg) {
            str = "noRequestByUaidEnable";
        } else if (ai.Vs()) {
            str = "noRequestByUaidExist";
        } else {
            str = !Si() ? "noNetworkPermission" : "uaidTokenCanRequest";
        }
        return new d(z10, str);
    }

    private static boolean Si() {
        String[] strArr = {g.f74778b, g.f74780d, "android.permission.CHANGE_NETWORK_STATE", g.f74777a};
        for (int i10 = 0; i10 < 4; i10++) {
            if (ContextCompat.checkSelfPermission(ServiceProvider.getContext(), strArr[i10]) != 0) {
                return false;
            }
        }
        return true;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static void cC(final Context context) {
        if (biT == null) {
            biT = new com.kwad.sdk.mobileid.a.a.a();
        }
        c.b(context, new d(true, "uaidTokenCanRequestByWifiPre"));
        biT.a(context, new com.kwad.sdk.mobileid.a.a.a.InterfaceC0955a() { // from class: com.kwad.sdk.mobileid.a.2
            @Override // com.kwad.sdk.mobileid.a.a.a.InterfaceC0955a
            public final void Sl() {
                new com.kwad.sdk.mobileid.a.a().d(context, true);
            }
        });
    }

    public static void init(Context context) {
        mContext = context;
        d dVarSh = Sh();
        if (dVarSh.isSuccess()) {
            dVarSh = Se();
            com.kwad.sdk.core.d.c.d(TAG, "init success :" + dVarSh);
        } else {
            com.kwad.sdk.core.d.c.d(TAG, "init error: " + dVarSh.Sm());
        }
        c.a(context, dVarSh);
    }
}
