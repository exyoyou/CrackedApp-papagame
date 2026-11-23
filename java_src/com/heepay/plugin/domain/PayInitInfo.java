package com.heepay.plugin.domain;

/* JADX INFO: loaded from: classes5.dex */
public class PayInitInfo {
    private String agentBillIdCache;
    private boolean isReCommit;
    private String payType;
    private int payUrlType;
    private int sdkVersion;

    public PayInitInfo() {
        this.sdkVersion = 10;
    }

    public String getAgentBillIdCache() {
        return this.agentBillIdCache;
    }

    public String getPayType() {
        return this.payType;
    }

    public int getPayUrlType() {
        return this.payUrlType;
    }

    public int getSdkVersion() {
        return this.sdkVersion;
    }

    public boolean isReCommit() {
        return this.isReCommit;
    }

    public void setAgentBillIdCache(String str) {
        this.agentBillIdCache = str;
    }

    public void setPayType(String str) {
        this.payType = str;
    }

    public void setPayUrlType(int i10) {
        this.payUrlType = i10;
    }

    public void setReCommit(boolean z10) {
        this.isReCommit = z10;
    }

    public void setSdkVersion(int i10) {
        this.sdkVersion = i10;
    }

    public PayInitInfo(String str, int i10, int i11) {
        this.payType = str;
        this.sdkVersion = i10;
        this.payUrlType = i11;
    }
}
