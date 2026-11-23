package com.kwad.sdk.core.b.a;

import com.kwad.sdk.core.response.model.AdInfo;
import org.json.JSONObject;

/* JADX INFO: loaded from: classes2.dex */
public final class au implements com.kwad.sdk.core.d<AdInfo.AdStyleConfInfo> {
    @Override // com.kwad.sdk.core.d
    public final /* bridge */ /* synthetic */ void a(com.kwad.sdk.core.b bVar, JSONObject jSONObject) {
        a((AdInfo.AdStyleConfInfo) bVar, jSONObject);
    }

    @Override // com.kwad.sdk.core.d
    public final /* bridge */ /* synthetic */ JSONObject b(com.kwad.sdk.core.b bVar, JSONObject jSONObject) {
        return b((AdInfo.AdStyleConfInfo) bVar, jSONObject);
    }

    private static void a(AdInfo.AdStyleConfInfo adStyleConfInfo, JSONObject jSONObject) {
        if (jSONObject == null) {
            return;
        }
        adStyleConfInfo.fullScreenSkipShowTime = jSONObject.optInt("fullScreenSkipShowTime", new Integer("5").intValue());
        adStyleConfInfo.rewardSkipConfirmSwitch = jSONObject.optInt("rewardSkipConfirmSwitch", new Integer("1").intValue());
        adStyleConfInfo.closeDelaySeconds = jSONObject.optLong("closeDelaySeconds");
        AdInfo.SlideConvertInfo slideConvertInfo = new AdInfo.SlideConvertInfo();
        adStyleConfInfo.slideConvertInfo = slideConvertInfo;
        slideConvertInfo.parseJson(jSONObject.optJSONObject("slideConvertInfo"));
        adStyleConfInfo.playableCloseSeconds = jSONObject.optLong("playableCloseSeconds");
        adStyleConfInfo.rewardVideoInteractSwitch = jSONObject.optBoolean("rewardVideoInteractSwitch");
        AdInfo.AdShowVideoH5Info adShowVideoH5Info = new AdInfo.AdShowVideoH5Info();
        adStyleConfInfo.adShowVideoH5Info = adShowVideoH5Info;
        adShowVideoH5Info.parseJson(jSONObject.optJSONObject("adShowVideoH5Info"));
        adStyleConfInfo.adPushSwitch = jSONObject.optBoolean("adPushSwitch");
        adStyleConfInfo.adPushShowAfterTime = jSONObject.optInt("adPushShowAfterTime");
        adStyleConfInfo.adPushIntervalTime = jSONObject.optInt("adPushIntervalTime", new Integer("900").intValue());
        AdInfo.NativeAdInfo nativeAdInfo = new AdInfo.NativeAdInfo();
        adStyleConfInfo.nativeAdInfo = nativeAdInfo;
        nativeAdInfo.parseJson(jSONObject.optJSONObject("nativeAdInfo"));
        adStyleConfInfo.useNativeForOuterLiveAd = jSONObject.optBoolean("useNativeForOuterLiveAd");
        adStyleConfInfo.adPushDownloadJumpType = jSONObject.optInt("adPushDownloadJumpType");
        adStyleConfInfo.actionBarType = jSONObject.optInt("actionBarType");
        adStyleConfInfo.endCardType = jSONObject.optInt("endCardType");
        adStyleConfInfo.confirmCardType = jSONObject.optInt("confirmCardType");
        adStyleConfInfo.innerAdType = jSONObject.optInt("innerAdType");
    }

    private static JSONObject b(AdInfo.AdStyleConfInfo adStyleConfInfo, JSONObject jSONObject) {
        if (jSONObject == null) {
            jSONObject = new JSONObject();
        }
        com.kwad.sdk.utils.ac.putValue(jSONObject, "fullScreenSkipShowTime", adStyleConfInfo.fullScreenSkipShowTime);
        com.kwad.sdk.utils.ac.putValue(jSONObject, "rewardSkipConfirmSwitch", adStyleConfInfo.rewardSkipConfirmSwitch);
        long j10 = adStyleConfInfo.closeDelaySeconds;
        if (j10 != 0) {
            com.kwad.sdk.utils.ac.putValue(jSONObject, "closeDelaySeconds", j10);
        }
        com.kwad.sdk.utils.ac.a(jSONObject, "slideConvertInfo", adStyleConfInfo.slideConvertInfo);
        long j11 = adStyleConfInfo.playableCloseSeconds;
        if (j11 != 0) {
            com.kwad.sdk.utils.ac.putValue(jSONObject, "playableCloseSeconds", j11);
        }
        boolean z10 = adStyleConfInfo.rewardVideoInteractSwitch;
        if (z10) {
            com.kwad.sdk.utils.ac.putValue(jSONObject, "rewardVideoInteractSwitch", z10);
        }
        com.kwad.sdk.utils.ac.a(jSONObject, "adShowVideoH5Info", adStyleConfInfo.adShowVideoH5Info);
        boolean z11 = adStyleConfInfo.adPushSwitch;
        if (z11) {
            com.kwad.sdk.utils.ac.putValue(jSONObject, "adPushSwitch", z11);
        }
        int i10 = adStyleConfInfo.adPushShowAfterTime;
        if (i10 != 0) {
            com.kwad.sdk.utils.ac.putValue(jSONObject, "adPushShowAfterTime", i10);
        }
        com.kwad.sdk.utils.ac.putValue(jSONObject, "adPushIntervalTime", adStyleConfInfo.adPushIntervalTime);
        com.kwad.sdk.utils.ac.a(jSONObject, "nativeAdInfo", adStyleConfInfo.nativeAdInfo);
        boolean z12 = adStyleConfInfo.useNativeForOuterLiveAd;
        if (z12) {
            com.kwad.sdk.utils.ac.putValue(jSONObject, "useNativeForOuterLiveAd", z12);
        }
        int i11 = adStyleConfInfo.adPushDownloadJumpType;
        if (i11 != 0) {
            com.kwad.sdk.utils.ac.putValue(jSONObject, "adPushDownloadJumpType", i11);
        }
        int i12 = adStyleConfInfo.actionBarType;
        if (i12 != 0) {
            com.kwad.sdk.utils.ac.putValue(jSONObject, "actionBarType", i12);
        }
        int i13 = adStyleConfInfo.endCardType;
        if (i13 != 0) {
            com.kwad.sdk.utils.ac.putValue(jSONObject, "endCardType", i13);
        }
        int i14 = adStyleConfInfo.confirmCardType;
        if (i14 != 0) {
            com.kwad.sdk.utils.ac.putValue(jSONObject, "confirmCardType", i14);
        }
        int i15 = adStyleConfInfo.innerAdType;
        if (i15 != 0) {
            com.kwad.sdk.utils.ac.putValue(jSONObject, "innerAdType", i15);
        }
        return jSONObject;
    }
}
