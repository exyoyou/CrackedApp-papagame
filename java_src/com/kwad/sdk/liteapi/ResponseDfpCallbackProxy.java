package com.kwad.sdk.liteapi;

import androidx.annotation.Keep;

/* JADX INFO: loaded from: classes2.dex */
@Keep
public interface ResponseDfpCallbackProxy {
    void onFailed(int i10, String str);

    void onSuccess(String str, String str2);
}
