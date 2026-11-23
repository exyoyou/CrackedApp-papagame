package com.kwad.components.ad.reward.monitor;

import com.kwad.components.core.webview.tachikoma.TKRenderFailReason;
import com.kwad.sdk.core.response.model.AdInfo;
import com.kwad.sdk.core.response.model.AdTemplate;

/* JADX INFO: loaded from: classes2.dex */
public final class c {
    public static void a(boolean z10, AdTemplate adTemplate) {
        a(z10, z10 ? "ad_sdk_neo_video_cache_monitor" : "ad_sdk_fullscreen_video_cache_monitor", adTemplate, z10 ? 102001 : 103001);
    }

    public static void b(boolean z10, AdTemplate adTemplate) {
        a(z10, z10 ? "ad_sdk_neo_page_enter_monitor" : "ad_sdk_fullscreen_page_enter_monitor", adTemplate, z10 ? 102002 : 103002);
    }

    public static void c(boolean z10, int i10) {
        a(z10, z10 ? "ad_sdk_neo_request_monitor" : "ad_sdk_fullscreen_request_monitor", null, i10);
    }

    public static void a(AdTemplate adTemplate, TKRenderFailReason tKRenderFailReason) {
        int i10;
        boolean z10 = com.kwad.sdk.core.response.helper.e.eI(adTemplate) == 2;
        String str = z10 ? "ad_sdk_neo_page_native_monitor" : "ad_sdk_fullscreen_page_native_monitor";
        if (TKRenderFailReason.SWITCH_CLOSE.equals(tKRenderFailReason)) {
            i10 = z10 ? 102003 : 103003;
        } else if (TKRenderFailReason.TK_FILE_LOAD_ERROR.equals(tKRenderFailReason)) {
            i10 = z10 ? 102004 : 103004;
        } else {
            i10 = 102005;
        }
        a(z10, str, adTemplate, i10);
    }

    public static void c(boolean z10, AdTemplate adTemplate) {
        a(z10, z10 ? "ad_sdk_neo_video_play_monitor" : "ad_sdk_fullscreen_video_play_monitor", adTemplate, z10 ? 102007 : 103007);
    }

    private static void a(boolean z10, String str, AdTemplate adTemplate, int i10) {
        AdInfo adInfoEO;
        com.kwad.sdk.commercial.c.a(z10, str, new RewardMonitorInfo().setErrorCode(i10).setCreativeId((adTemplate == null || (adInfoEO = com.kwad.sdk.core.response.helper.e.eO(adTemplate)) == null) ? 0L : com.kwad.sdk.core.response.helper.a.L(adInfoEO)).setAdTemplate(adTemplate));
    }
}
