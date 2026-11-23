package com.efs.sdk.pa;

/* JADX INFO: loaded from: classes9.dex */
public interface PATraceListener {
    void onAnrTrace();

    void onCheck(boolean z10);

    void onUnexcept(Object obj);
}
