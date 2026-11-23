package com.bykv.vk.openvk.api.proto;

import android.annotation.TargetApi;
import android.content.Context;

/* JADX INFO: loaded from: classes9.dex */
@TargetApi(24)
public interface Initializer {
    Manager getManager();

    void init(Context context, ValueSet valueSet);

    boolean isInitSuccess();
}
