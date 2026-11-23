package com.kwad.components.core.request;

import androidx.annotation.NonNull;
import androidx.annotation.WorkerThread;
import com.kwad.sdk.core.response.model.AdResultData;

/* JADX INFO: loaded from: classes2.dex */
public abstract class c extends k {
    @WorkerThread
    public abstract void a(int i10, String str, boolean z10);

    @WorkerThread
    public abstract void a(@NonNull AdResultData adResultData, boolean z10);
}
