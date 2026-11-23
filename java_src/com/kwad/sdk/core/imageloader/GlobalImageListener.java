package com.kwad.sdk.core.imageloader;

import com.kwad.sdk.core.response.model.AdTemplate;
import com.kwad.sdk.service.ServiceProvider;
import com.kwad.sdk.service.a.b;

/* JADX INFO: loaded from: classes2.dex */
public class GlobalImageListener implements OnRenderResultListener<AdTemplate> {
    @Override // com.kwad.sdk.core.imageloader.OnRenderResultListener
    public void onRenderResult(boolean z10, AdTemplate adTemplate, String str, String str2) {
        if (!z10) {
            ((b) ServiceProvider.get(b.class)).K(str, str2);
        }
        if (z10) {
            return;
        }
        ((b) ServiceProvider.get(b.class)).bm(adTemplate);
    }
}
