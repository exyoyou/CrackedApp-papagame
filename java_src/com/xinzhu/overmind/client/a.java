package com.xinzhu.overmind.client;

import android.graphics.Bitmap;

/* JADX INFO: loaded from: classes8.dex */
public abstract class a {
    public abstract String getHostPackageName();

    public abstract String getMainAuthorityPrefix();

    public abstract String getMainPackageName();

    public abstract Bitmap getNotificationLargeIcon();

    public abstract int getNotificationSmallIcon();

    public abstract String getPluginAuthorityPrefix();

    public abstract String getPluginPackageName();

    public abstract boolean ifDisableDaemonService();

    public abstract boolean ifDisablePluginPackageAutoManage();

    public abstract boolean ifDisableVirtualDeviceForPackage(String str, int i10);

    public boolean isHideRoot() {
        return true;
    }

    public boolean isHideXposed() {
        return false;
    }

    public abstract boolean isPluginValid();

    public boolean isUseGlobalFakePath() {
        return false;
    }

    public abstract boolean use32BitMainPackage();

    public abstract boolean useRandomGeneratedVirtualDevice();
}
