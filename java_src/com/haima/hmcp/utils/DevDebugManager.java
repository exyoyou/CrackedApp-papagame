package com.haima.hmcp.utils;

import com.haima.hmcp.beans.DevDebugConfig;

/* JADX INFO: loaded from: classes5.dex */
public class DevDebugManager {
    private static DevDebugManager mDevDebugManager;
    private DevDebugConfig mDevDebugConfig;

    private DevDebugManager() {
    }

    public static DevDebugManager getInstance() {
        if (mDevDebugManager == null) {
            synchronized (DevDebugManager.class) {
                if (mDevDebugManager == null) {
                    mDevDebugManager = new DevDebugManager();
                }
            }
        }
        return mDevDebugManager;
    }

    public DevDebugConfig getDevDebugConfig() {
        if (this.mDevDebugConfig == null) {
            this.mDevDebugConfig = new DevDebugConfig();
        }
        return this.mDevDebugConfig;
    }

    public void setDevDebugConfig(DevDebugConfig devDebugConfig) {
        this.mDevDebugConfig = devDebugConfig;
    }
}
