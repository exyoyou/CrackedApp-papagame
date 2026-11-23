package com.kwad.components.ad;

import androidx.annotation.NonNull;
import com.kwad.sdk.api.model.AdExposureFailedReason;
import com.kwad.sdk.core.response.helper.e;
import com.kwad.sdk.core.response.model.AdResultData;
import com.kwad.sdk.core.response.model.AdTemplate;
import java.util.HashMap;
import java.util.Map;

/* JADX INFO: loaded from: classes2.dex */
public class b implements com.kwad.components.core.internal.api.a {
    public com.kwad.components.core.internal.api.c bz = new com.kwad.components.core.internal.api.c();

    @NonNull
    protected final AdResultData mAdResultData;

    @NonNull
    protected final AdTemplate mAdTemplate;

    public b(@NonNull AdResultData adResultData) {
        this.mAdResultData = adResultData;
        this.mAdTemplate = com.kwad.sdk.core.response.helper.c.r(adResultData);
    }

    @Override // com.kwad.components.core.internal.api.a
    public final void a(com.kwad.components.core.internal.api.b bVar) {
        this.bz.a(bVar);
    }

    @Override // com.kwad.components.core.internal.api.a
    public final void b(com.kwad.components.core.internal.api.b bVar) {
        this.bz.b(bVar);
    }

    @Override // com.kwad.components.core.internal.api.a
    public final AdTemplate getAdTemplate() {
        return this.mAdTemplate;
    }

    public int getECPM() {
        return com.kwad.sdk.core.response.helper.a.aX(e.eO(this.mAdTemplate));
    }

    public int getInteractionType() {
        return com.kwad.sdk.core.response.helper.a.aW(e.eO(this.mAdTemplate));
    }

    public int getMaterialType() {
        return com.kwad.sdk.core.response.helper.a.bk(e.eO(this.mAdTemplate));
    }

    public Map<String, Object> getMediaExtraInfo() {
        HashMap map = new HashMap();
        if (com.kwad.sdk.core.config.e.JP()) {
            map.put("llsid", Long.valueOf(this.mAdTemplate.llsid));
        }
        return map;
    }

    public boolean isVideo() {
        return com.kwad.sdk.core.response.helper.a.bi(e.eO(this.mAdTemplate));
    }

    public void reportAdExposureFailed(int i10, AdExposureFailedReason adExposureFailedReason) {
        com.kwad.sdk.core.adlog.c.a(this.mAdTemplate, i10, adExposureFailedReason);
    }

    public void setBidEcpm(int i10) {
        setBidEcpm(i10, -1L);
    }

    @Override // com.kwad.components.core.internal.api.a
    public final boolean supportPushAd() {
        return true;
    }

    public void setBidEcpm(long j10, long j11) {
        AdTemplate adTemplate = this.mAdTemplate;
        adTemplate.mBidEcpm = j10;
        com.kwad.sdk.core.adlog.c.m(adTemplate, j10);
    }
}
