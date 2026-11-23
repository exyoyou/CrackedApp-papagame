package com.haima.hmcp.business;

import android.text.TextUtils;
import com.haima.hmcp.beans.HMRemoteDeviceInfo;

/* JADX INFO: loaded from: classes5.dex */
public class RemoteDeviceInfoManager {
    private static final HMRemoteDeviceInfo REMOTE_DEVICE_INFO = new HMRemoteDeviceInfo();

    private RemoteDeviceInfoManager() {
    }

    public static HMRemoteDeviceInfo getRemoteDeviceInfo() {
        return REMOTE_DEVICE_INFO;
    }

    public static boolean isValid() {
        HMRemoteDeviceInfo hMRemoteDeviceInfo = REMOTE_DEVICE_INFO;
        return (TextUtils.isEmpty(hMRemoteDeviceInfo.getIp()) || hMRemoteDeviceInfo.getPort() == 0) ? false : true;
    }

    public static void reset() {
        HMRemoteDeviceInfo hMRemoteDeviceInfo = REMOTE_DEVICE_INFO;
        hMRemoteDeviceInfo.setPort(0);
        hMRemoteDeviceInfo.setIp("");
    }
}
