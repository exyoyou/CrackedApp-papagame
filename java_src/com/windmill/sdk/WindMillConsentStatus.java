package com.windmill.sdk;

/* JADX INFO: loaded from: classes8.dex */
public enum WindMillConsentStatus {
    UNKNOWN(0),
    ACCEPT(1),
    DENIED(2);


    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private int f86536a;

    WindMillConsentStatus(int value) {
        this.f86536a = value;
    }

    public int getValue() {
        return this.f86536a;
    }
}
