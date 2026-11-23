package org.webrtc.haima.beans;

/* JADX INFO: loaded from: classes10.dex */
public class CameraConfig {
    public boolean permissionCheckEachTimeLocal;
    public boolean permissionCheckEachTimeServer;

    public boolean allowPermissionCheck() {
        return this.permissionCheckEachTimeLocal && this.permissionCheckEachTimeServer;
    }
}
