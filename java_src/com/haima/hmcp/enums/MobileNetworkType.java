package com.haima.hmcp.enums;

/* JADX INFO: loaded from: classes5.dex */
public enum MobileNetworkType {
    UNKNOWN("unknown"),
    NETWORK_TYPE_2G("2G"),
    NETWORK_TYPE_2_5G("2.5G"),
    NETWORK_TYPE_3G("3G"),
    NETWORK_TYPE_4G("4G"),
    NETWORK_TYPE_5G("5G");

    final String networkTypeName;

    MobileNetworkType(String str) {
        this.networkTypeName = str;
    }

    public String getNetworkTypeName() {
        return this.networkTypeName;
    }
}
