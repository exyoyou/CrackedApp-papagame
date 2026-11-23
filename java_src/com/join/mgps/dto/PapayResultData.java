package com.join.mgps.dto;

import java.util.List;

/* JADX INFO: loaded from: classes3.dex */
public class PapayResultData {

    /* JADX INFO: renamed from: ad, reason: collision with root package name */
    private PayAdinfo f68086ad;
    private PayAdinfo help;
    private List<PapayHistoryInfo> orders;
    private PapayInfo wallet;

    public PayAdinfo getAd() {
        return this.f68086ad;
    }

    public PayAdinfo getHelp() {
        return this.help;
    }

    public List<PapayHistoryInfo> getOrders() {
        return this.orders;
    }

    public PapayInfo getWallet() {
        return this.wallet;
    }

    public void setAd(PayAdinfo ad2) {
        this.f68086ad = ad2;
    }

    public void setHelp(PayAdinfo help) {
        this.help = help;
    }

    public void setOrders(List<PapayHistoryInfo> orders) {
        this.orders = orders;
    }

    public void setWallet(PapayInfo wallet) {
        this.wallet = wallet;
    }
}
