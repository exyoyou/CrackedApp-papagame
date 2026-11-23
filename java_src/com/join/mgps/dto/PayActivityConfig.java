package com.join.mgps.dto;

/* JADX INFO: loaded from: classes3.dex */
public class PayActivityConfig {
    private PayActivityResult config;

    public PayActivityConfig() {
    }

    public PayActivityResult getConfig() {
        return this.config;
    }

    public void setConfig(PayActivityResult config) {
        this.config = config;
    }

    public String toString() {
        return "PayActivityConfig{config=" + this.config + '}';
    }

    public PayActivityConfig(PayActivityResult config) {
        this.config = config;
    }
}
