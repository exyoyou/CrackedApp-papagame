package com.haima.hmcp.beans;

import com.haima.hmcp.cloud.BaseCloudFileManager;
import java.io.Serializable;

/* JADX INFO: loaded from: classes5.dex */
public class DevDebugConfig implements Serializable {
    private boolean ignoreEndOrderAck = false;
    private boolean ignoreStartOrderAck = false;
    private long delayConnectWsServiceTime = BaseCloudFileManager.ACK_TIMEOUT;
    private boolean delayConnectWsService = false;
    private boolean notConnectWsService = false;

    public long getDelayConnectWsServiceTime() {
        return this.delayConnectWsServiceTime;
    }

    public boolean ignoreEndOrderAck() {
        return this.ignoreEndOrderAck;
    }

    public boolean ignoreStartOrderAck() {
        return this.ignoreStartOrderAck;
    }

    public boolean isDelayConnectWsService() {
        return this.delayConnectWsService;
    }

    public boolean isNotConnectWsService() {
        return this.notConnectWsService;
    }

    public void setDelayConnectWsService(boolean z10) {
        this.delayConnectWsService = z10;
    }

    public void setDelayConnectWsServiceTime(long j10) {
        this.delayConnectWsServiceTime = j10;
    }

    public void setIgnoreEndOrderAck(boolean z10) {
        this.ignoreEndOrderAck = z10;
    }

    public void setIgnoreStartOrderAck(boolean z10) {
        this.ignoreStartOrderAck = z10;
    }

    public void setNotConnectWsService(boolean z10) {
        this.notConnectWsService = z10;
    }
}
