package com.kwad.components.offline.api.core.adInnerEc;

import androidx.annotation.Keep;

/* JADX INFO: loaded from: classes2.dex */
@Keep
public interface IHostUploadListener {
    void onFailed(int i10, String str);

    void onProgress(float f10);

    void onSuccess(String str);
}
