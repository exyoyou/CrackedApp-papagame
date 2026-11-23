package com.kwad.components.ad.reward.monitor;

/* JADX INFO: loaded from: classes2.dex */
public final class b {
    private static String TAG = "LivePlayMonitor";

    public static void a(int i10, String str, String str2, Long l10, int i11, String str3) {
        if (l10 == null) {
            l10 = -1L;
        }
        com.kwad.sdk.commercial.c.b("ad_sdk_live_video_error_monitor", new LivePlayMonitorInfo().setScene(2).setAppId(str).setAuthorId(str2).setUserId(l10).setErrorCode(i11).setErrorMsg(str3));
        com.kwad.sdk.core.d.c.d(TAG, "reportAdLiveMonitorError, status:" + i11 + " scene:2 errMsg:" + str3 + " appId:" + str + " authorId" + str2 + " userId" + l10);
    }
}
