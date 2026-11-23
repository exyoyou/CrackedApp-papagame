package com.bykv.vk.openvk.api.proto;

import android.content.Context;

/* JADX INFO: loaded from: classes9.dex */
public interface Manager {
    Loader createLoader(Context context);

    Bridge getBridge(int i10);

    ValueSet values();
}
