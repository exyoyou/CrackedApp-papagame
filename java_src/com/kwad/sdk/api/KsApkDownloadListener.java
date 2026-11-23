package com.kwad.sdk.api;

import androidx.annotation.Keep;
import com.kwad.sdk.api.core.KsAdSdkApi;

/* JADX INFO: loaded from: classes2.dex */
@KsAdSdkApi
@Keep
public interface KsApkDownloadListener extends KsAppDownloadListener {
    @KsAdSdkApi
    @Keep
    void onPaused(int i10);
}
