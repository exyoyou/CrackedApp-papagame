package com.kwad.components.offline.api;

import androidx.annotation.WorkerThread;

/* JADX INFO: loaded from: classes2.dex */
public interface InitCallBack {
    @WorkerThread
    void onError(int i10);

    @WorkerThread
    void onSuccess(boolean z10);
}
