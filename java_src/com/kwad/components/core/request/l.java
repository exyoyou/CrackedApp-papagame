package com.kwad.components.core.request;

import androidx.annotation.NonNull;
import androidx.annotation.WorkerThread;
import com.kwad.sdk.core.response.model.AdResultData;

/* JADX INFO: loaded from: classes2.dex */
public interface l<T extends AdResultData> {
    @WorkerThread
    void b(@NonNull T t10);

    @WorkerThread
    void onError(int i10, String str);
}
