package com.kwad.sdk.api;

import androidx.annotation.Keep;
import com.kwad.sdk.api.core.KsAdSdkApi;

/* JADX INFO: loaded from: classes2.dex */
@KsAdSdkApi
@Keep
public interface KsInitCallback {
    void onFail(int i10, String str);

    void onSuccess();
}
