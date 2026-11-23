package com.papa.sim.statistic;

/* JADX INFO: loaded from: classes2.dex */
public class StatRequest {

    /* JADX INFO: renamed from: ad, reason: collision with root package name */
    private int f77172ad;
    private int countType;
    private boolean debug;
    private String deviceId;
    private String event;

    /* JADX INFO: renamed from: id, reason: collision with root package name */
    private int f77173id;
    private String mac;
    private long time;
    private String version;
    private int uid = 0;
    private boolean isNew = false;
    private boolean isRequest = false;
    private Data data = new Data();
    private Ext ext = new Ext();

    public int getAd() {
        return this.f77172ad;
    }

    public int getCountType() {
        return this.countType;
    }

    public Data getData() {
        return this.data;
    }

    public String getDeviceId() {
        return this.deviceId;
    }

    public String getEvent() {
        return this.event;
    }

    public Ext getExt() {
        return this.ext;
    }

    public int getId() {
        return this.f77173id;
    }

    public String getMac() {
        return this.mac;
    }

    public long getTime() {
        return this.time;
    }

    public int getUid() {
        return this.uid;
    }

    public String getVersion() {
        return this.version;
    }

    public boolean isDebug() {
        return this.debug;
    }

    public boolean isNew() {
        return this.isNew;
    }

    public boolean isRequest() {
        return this.isRequest;
    }

    public void setAd(int i10) {
        this.f77172ad = i10;
    }

    public void setCountType(int i10) {
        this.countType = i10;
    }

    public void setData(Data data) {
        this.data = data;
    }

    public void setDebug(boolean z10) {
        this.debug = z10;
    }

    public void setDeviceId(String str) {
        this.deviceId = str;
    }

    public void setEvent(String str) {
        this.event = str;
    }

    public void setExt(Ext ext) {
        this.ext = ext;
    }

    public void setId(int i10) {
        this.f77173id = i10;
    }

    public void setMac(String str) {
        this.mac = str;
    }

    public void setNew(boolean z10) {
        this.isNew = z10;
    }

    public void setRequest(boolean z10) {
        this.isRequest = z10;
    }

    public void setTime(long j10) {
        this.time = j10;
    }

    public void setUid(int i10) {
        this.uid = i10;
    }

    public void setVersion(String str) {
        this.version = str;
    }
}
