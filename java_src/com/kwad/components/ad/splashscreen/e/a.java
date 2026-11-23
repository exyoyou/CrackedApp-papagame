package com.kwad.components.ad.splashscreen.e;

import android.text.TextUtils;
import com.kwad.sdk.core.response.helper.e;
import com.kwad.sdk.core.response.model.AdInfo;
import com.kwad.sdk.core.response.model.AdTemplate;

/* JADX INFO: loaded from: classes2.dex */
public abstract class a extends com.kwad.sdk.core.download.a.a {
    private AdInfo mAdInfo;
    private AdTemplate mAdTemplate;

    public a(AdTemplate adTemplate) {
        this.mAdTemplate = adTemplate;
        this.mAdInfo = e.eO(adTemplate);
    }

    private void j(int i10, int i11) {
        String strA = com.kwad.components.ad.splashscreen.d.a(this.mAdTemplate, this.mAdInfo, i10, i11);
        if (TextUtils.isEmpty(strA)) {
            return;
        }
        k(i10, strA);
    }

    protected abstract void k(int i10, String str);

    @Override // com.kwad.sdk.api.KsAppDownloadListener
    public void onDownloadFailed() {
        j(7, 0);
    }

    @Override // com.kwad.sdk.api.KsAppDownloadListener
    public void onDownloadFinished() {
        j(8, 0);
    }

    @Override // com.kwad.sdk.api.KsAppDownloadListener
    public void onIdle() {
        j(0, 0);
    }

    @Override // com.kwad.sdk.api.KsAppDownloadListener
    public void onInstalled() {
        j(12, 0);
    }

    @Override // com.kwad.sdk.core.download.a.a
    public final void onPaused(int i10) {
        j(4, i10);
    }

    @Override // com.kwad.sdk.api.KsAppDownloadListener
    public void onProgressUpdate(int i10) {
        j(2, i10);
    }

    public final void setAdTemplate(AdTemplate adTemplate) {
        this.mAdTemplate = adTemplate;
    }
}
