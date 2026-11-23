package com.join.mgps.ad;

import java.util.List;

/* JADX INFO: loaded from: classes5.dex */
public interface m<T> {
    void onADClick();

    void onADExpose();

    void onADLoaded(List<T> ads);

    void onError(int err, String msg);

    void onInitSuccess();
}
