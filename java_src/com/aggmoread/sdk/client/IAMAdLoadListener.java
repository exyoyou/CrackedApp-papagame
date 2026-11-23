package com.aggmoread.sdk.client;

import java.util.List;

/* JADX INFO: loaded from: classes7.dex */
public interface IAMAdLoadListener<T> {
    void onAdLoadFail(AMError aMError);

    void onAdLoaded(List<T> list);
}
