package com.windmill.sdk;

/* JADX INFO: loaded from: classes8.dex */
public enum WindMillUserAgeStatus {
    WindAgeRestrictedStatusUnknown(0),
    WindAgeRestrictedStatusYES(1),
    WindAgeRestrictedStatusNO(2);


    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private int f86540a;

    WindMillUserAgeStatus(int value) {
        this.f86540a = value;
    }

    public int getValue() {
        return this.f86540a;
    }
}
