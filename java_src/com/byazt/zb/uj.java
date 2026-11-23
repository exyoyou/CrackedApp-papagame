package com.byazt.zb;

import com.efs.sdk.base.core.util.NetworkUtil;

/* JADX INFO: loaded from: classes9.dex */
public enum uj {
    TYPE_2G(NetworkUtil.NETWORK_CLASS_2G),
    TYPE_3G(NetworkUtil.NETWORK_CLASS_3G),
    TYPE_4G(NetworkUtil.NETWORK_CLASS_4G),
    TYPE_5G(NetworkUtil.NETWORK_CLASS_5G),
    TYPE_WIFI(NetworkUtil.NETWORK_TYPE_WIFI),
    TYPE_MOBILE("mobile"),
    TYPE_UNKNOWN("unknown");


    /* JADX INFO: renamed from: x, reason: collision with root package name */
    public String f22667x;

    uj(String str) {
        this.f22667x = str;
    }

    @Override // java.lang.Enum
    public String toString() {
        return this.f22667x;
    }
}
