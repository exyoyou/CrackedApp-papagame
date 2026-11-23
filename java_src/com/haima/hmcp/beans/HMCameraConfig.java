package com.haima.hmcp.beans;

import org.webrtc.haima.beans.CameraConfig;

/* JADX INFO: loaded from: classes5.dex */
public class HMCameraConfig extends CameraConfig {
    public boolean permissionCheckEachTimeLocal = false;
    public boolean permissionCheckEachTimeServer = false;

    @Override // org.webrtc.haima.beans.CameraConfig
    public boolean allowPermissionCheck() {
        return this.permissionCheckEachTimeLocal && this.permissionCheckEachTimeServer;
    }
}
