package com.haima.hmcp.listeners;

import com.haima.hmcp.beans.PlayNotification;
import com.haima.hmcp.enums.CloudPlayerKeyboardStatus;
import com.haima.hmcp.enums.ErrorType;
import com.haima.hmcp.enums.NetWorkState;

/* JADX INFO: loaded from: classes5.dex */
public interface HmcpPlayerListener extends HmcpPlayerListenerPlatform {
    void HmcpPlayerStatusCallback(String str);

    void onAccProxyConnectStateChange(int i10);

    @Override // com.haima.hmcp.listeners.HmcpPlayerListenerPlatform
    void onCloudDeviceStatus(String str);

    @Override // com.haima.hmcp.listeners.HmcpPlayerListenerPlatform
    void onCloudPlayerKeyboardStatusChanged(CloudPlayerKeyboardStatus cloudPlayerKeyboardStatus);

    void onError(ErrorType errorType, String str);

    void onExitQueue();

    void onInputDevice(int i10, int i11);

    void onInputMessage(String str);

    @Override // com.haima.hmcp.listeners.HmcpPlayerListenerPlatform
    void onInterceptIntent(String str);

    void onMessage(String str);

    void onMiscResponse(String str);

    void onNetworkChanged(NetWorkState netWorkState);

    void onPermissionNotGranted(String str);

    void onPlayNotification(PlayNotification playNotification);

    void onPlayStatus(int i10, long j10, String str);

    void onPlayerError(String str, String str2);

    void onSceneChanged(String str);

    void onSuccess();

    void onSwitchConnectionCallback(int i10, int i11);

    void onUpdateCToken();
}
