package com.sigmob.sdk.base.network;

import com.czhj.sdk.common.network.Networking;
import com.czhj.sdk.common.network.SigmobRequestUtil;
import com.sigmob.sdk.base.models.BaseAdUnit;
import com.sigmob.sdk.base.models.LoadAdRequest;
import com.sigmob.sdk.base.utils.t;
import com.sigmob.windad.WindAdError;
import java.net.URL;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.Iterator;
import java.util.List;
import java.util.Map;

/* JADX INFO: loaded from: classes5.dex */
public class f {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private static final String f79618a = "f";

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private static final List<String> f79619b = new ArrayList<String>() { // from class: com.sigmob.sdk.base.network.f.1
        {
            add("998");
        }
    };

    public interface a {
        void a(int error, String message, String requestId, LoadAdRequest loadAdRequest);

        void a(List<BaseAdUnit> adUnit, LoadAdRequest loadAdRequest);
    }

    public static void a(LoadAdRequest loadAdRequest, a listener) {
        com.sigmob.sdk.base.utils.k.a(3, f79618a, "load", loadAdRequest, (Map<String, Object>) null);
        if (Networking.getSigRequestQueue() == null) {
            a(listener, WindAdError.ERROR_SIGMOB_NETWORK.getErrorCode(), "request queue is null.", null, loadAdRequest);
            return;
        }
        try {
            String bidToken = loadAdRequest.getBidToken();
            String placementId = loadAdRequest.getPlacementId();
            String adx_id = loadAdRequest.getAdx_id();
            boolean z10 = t.b(adx_id) && f79619b.contains(adx_id);
            com.sigmob.sdk.base.o oVarA = com.sigmob.sdk.base.o.a();
            String strC = loadAdRequest.getAdType() == 5 ? oVarA.c(z10) : oVarA.a(z10);
            try {
                if (t.b(bidToken)) {
                    strC = oVarA.b(z10);
                }
            } catch (Throwable th) {
                com.sigmob.sdk.base.utils.k.f(f79618a, "loadAd: placementId = " + placementId + ", error = " + th.getMessage(), new Object[0]);
            }
            if (t.a((CharSequence) strC)) {
                WindAdError windAdError = WindAdError.ERROR_SIGMOB_BAD_REQUEST;
                a(listener, windAdError.getErrorCode(), windAdError.getMessage(), null, loadAdRequest);
            } else if (SigmobRequestUtil.isConnection(new URL(strC).getHost())) {
                Networking.getSigRequestQueue().add(new com.sigmob.sdk.base.network.a(strC, loadAdRequest, listener));
            } else {
                a(listener, WindAdError.ERROR_SIGMOB_NETWORK.getErrorCode(), "network is disconnection.", null, loadAdRequest);
            }
        } catch (Throwable th2) {
            a(listener, WindAdError.ERROR_SIGMOB_NETWORK.getErrorCode(), th2.getMessage(), null, loadAdRequest);
        }
    }

    public static void a(a listener, int errCode, String errorMsg, String requestId, LoadAdRequest loadAdRequest) {
        HashMap map = new HashMap();
        map.put("code", Integer.valueOf(errCode));
        map.put("msg", errorMsg);
        com.sigmob.sdk.base.utils.k.a(6, f79618a, "load(failure)", loadAdRequest, map);
        if (listener == null) {
            return;
        }
        listener.a(errCode, errorMsg, requestId, loadAdRequest);
        com.sigmob.sdk.manager.d.a().a(loadAdRequest);
    }

    public static void a(a listener, List<BaseAdUnit> adUnits, LoadAdRequest loadAdRequest) {
        if (com.sigmob.sdk.base.utils.e.b(adUnits)) {
            Iterator<BaseAdUnit> it2 = adUnits.iterator();
            while (it2.hasNext()) {
                com.sigmob.sdk.base.utils.k.a(3, f79618a, u.c.f97428d, it2.next(), (Map<String, Object>) null);
            }
        }
        if (listener == null) {
            return;
        }
        listener.a(adUnits, loadAdRequest);
        com.sigmob.sdk.manager.d.a().a(loadAdRequest);
    }
}
