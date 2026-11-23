package com.kwad.components.ad.reward.check;

import androidx.annotation.NonNull;
import com.kwad.sdk.commercial.c;
import com.kwad.sdk.core.response.helper.e;
import com.kwad.sdk.core.response.model.AdTemplate;

/* JADX INFO: loaded from: classes2.dex */
public final class a {
    public static void a(@NonNull AdTemplate adTemplate, int i10, long j10, int i11, String str) {
        c.f(new RewardCheckMonitorInfo().setRequestStatus(2).setCheckType(i10).setEnviType(0).setDataLoadInterval(j10).setCode(i11).setErrorMsg(str).setCreativeId(com.kwad.sdk.core.response.helper.a.L(e.eO(adTemplate))).setAdTemplate(adTemplate));
    }

    public static void d(@NonNull AdTemplate adTemplate, int i10) {
        c.f(new RewardCheckMonitorInfo().setRequestStatus(1).setCheckType(i10).setEnviType(0).setCreativeId(com.kwad.sdk.core.response.helper.a.L(e.eO(adTemplate))).setAdTemplate(adTemplate));
    }
}
