package com.haima.hmcp.listeners;

import com.haima.hmcp.enums.CloudPlayerKeyboardStatus;

/* JADX INFO: loaded from: classes5.dex */
public interface HmcpPlayerListenerPlatform {
    void onCloudDeviceStatus(String str);

    void onCloudPlayerKeyboardStatusChanged(CloudPlayerKeyboardStatus cloudPlayerKeyboardStatus);

    void onInterceptIntent(String str);
}
