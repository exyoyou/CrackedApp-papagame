package com.sdk.base.api;

/* JADX INFO: loaded from: classes2.dex */
public interface CallBack<T> {
    void onFailed(int i10, int i11, String str, String str2);

    void onSuccess(int i10, String str, int i11, T t10, String str2);
}
