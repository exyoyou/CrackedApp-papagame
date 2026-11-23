package com.sigmob.sdk.base.network;

import com.czhj.sdk.common.track.AdTracker;
import com.czhj.sdk.common.track.TrackManager;
import com.czhj.sdk.logger.SigmobLogger;
import com.czhj.volley.NetworkResponse;
import com.czhj.volley.VolleyError;
import com.sigmob.sdk.Sigmob;
import com.sigmob.sdk.base.common.ad;
import com.sigmob.sdk.base.common.ah;
import com.sigmob.sdk.base.models.BaseAdUnit;
import com.sigmob.sdk.base.models.SigMacroCommon;
import com.sigmob.sdk.base.utils.t;
import java.util.List;

/* JADX INFO: loaded from: classes5.dex */
public class h {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private static final String f79624a = "h";

    public static void a(AdTracker tracker, BaseAdUnit adUnit, boolean isMulti) {
        a(tracker, adUnit, isMulti, true, true, null);
    }

    public static int b(BaseAdUnit adUnit, String event, boolean jsSend) {
        if (adUnit == null || t.a((CharSequence) event)) {
            return -1;
        }
        List<ah> adTracker = adUnit.getAdTracker(event);
        if (adTracker == null || adTracker.isEmpty()) {
            return -2;
        }
        for (ah ahVar : adTracker) {
            if (jsSend) {
                ahVar.setSource("js");
            }
            adUnit.getMacroCommon().addMarcoKey(SigMacroCommon._PLAYFIRSTFRAME_, "1");
            a((AdTracker) ahVar, adUnit, false);
        }
        return 0;
    }

    public static void a(AdTracker tracker, final BaseAdUnit adUnit, boolean isMulti, boolean inQueue, final boolean statistic, final TrackManager.Listener listener) {
        if (tracker == null) {
            return;
        }
        String source = tracker.getSource();
        String event = tracker.getEvent();
        String str = f79624a;
        com.sigmob.sdk.base.utils.k.b(str, "sendTracking: event = " + event, new Object[0]);
        if ((event.equals(com.sigmob.sdk.base.common.a.f78885s) || event.equals("click")) && (source.equals("js") || source.equals("native"))) {
            SigmobLogger.d(str, "sendTracking: source = " + source + ", event = " + event, new Object[0]);
        }
        if (tracker.getMessageType() == AdTracker.MessageType.TRACKING_URL) {
            if (!tracker.isTracked() || isMulti) {
                String url = tracker.getUrl();
                SigMacroCommon macroCommon = Sigmob.getInstance().getMacroCommon();
                final String strMacroProcess = adUnit == null ? macroCommon.macroProcess(url) : adUnit.getMacroCommon().macroProcess(url, macroCommon.getMacroMap());
                tracker.setUrl(strMacroProcess);
                TrackManager.sendTracking(tracker, null, isMulti, inQueue, new TrackManager.Listener() { // from class: com.sigmob.sdk.base.network.h.1
                    @Override // com.czhj.sdk.common.track.TrackManager.Listener
                    public void onErrorResponse(AdTracker tracker2, VolleyError error) {
                        if (statistic) {
                            ad.a(tracker2, strMacroProcess, adUnit, error);
                        }
                        TrackManager.Listener listener2 = listener;
                        if (listener2 != null) {
                            listener2.onErrorResponse(tracker2, error);
                        }
                    }

                    @Override // com.czhj.sdk.common.track.TrackManager.Listener
                    public void onSuccess(AdTracker tracker2, NetworkResponse response) {
                        if (statistic) {
                            ad.a(tracker2, strMacroProcess, adUnit, response, (ad.a) null);
                        }
                        TrackManager.Listener listener2 = listener;
                        if (listener2 != null) {
                            listener2.onSuccess(tracker2, response);
                        }
                    }
                });
            }
        }
    }

    public static void a(BaseAdUnit adUnit, String event) {
        a(adUnit, event, false);
    }

    public static void a(BaseAdUnit adUnit, String event, boolean isMulti) {
        List<ah> adTracker;
        if (adUnit == null || t.a((CharSequence) event) || (adTracker = adUnit.getAdTracker(event)) == null || adTracker.isEmpty()) {
            return;
        }
        for (ah ahVar : adTracker) {
            adUnit.getMacroCommon().addMarcoKey(SigMacroCommon._PLAYFIRSTFRAME_, "1");
            a(ahVar, adUnit, isMulti);
        }
    }
}
