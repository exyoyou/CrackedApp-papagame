package com.join.mgps.aidl;

/* JADX INFO: loaded from: classes3.dex */
public class Client {
    private long lastResponseTime;
    private long lastSendTime;
    private int retry;
    private WifiServerThread.b sClient;
    private ClientStatus status = ClientStatus.UNBOUND;
    private String sync = "";
    private String uuid;

    public enum ClientStatus {
        BOUND,
        UNBOUND
    }

    public long getLastResponseTime() {
        return this.lastResponseTime;
    }

    public long getLastSendTime() {
        return this.lastSendTime;
    }

    public int getRetry() {
        return this.retry;
    }

    public ClientStatus getStatus() {
        return this.status;
    }

    public String getSync() {
        return this.sync;
    }

    public String getUuid() {
        return this.uuid;
    }

    public WifiServerThread.b getsClient() {
        return this.sClient;
    }

    public void setLastResponseTime(long lastResponseTime) {
        this.lastResponseTime = lastResponseTime;
    }

    public void setLastSendTime(long lastSendTime) {
        this.lastSendTime = lastSendTime;
    }

    public void setRetry(int retry) {
        this.retry = retry;
    }

    public void setStatus(ClientStatus status) {
        this.status = status;
    }

    public void setSync(String sync) {
        this.sync = sync;
    }

    public void setUuid(String uuid) {
        this.uuid = uuid;
    }

    public void setsClient(WifiServerThread.b sClient) {
        this.sClient = sClient;
    }
}
