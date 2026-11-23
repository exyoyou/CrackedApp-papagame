package com.czhj.sdk.common.mta;

/* JADX INFO: loaded from: classes9.dex */
public abstract class PointEntityCrash extends PointEntitySuper {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private String f25500a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private long f25501b = 0;

    public String getCrashMessage() {
        return this.f25500a;
    }

    public long getCrashTime() {
        return this.f25501b;
    }

    public void setCrashMessage(String str) {
        this.f25500a = str;
    }

    public void setCrashTime(long j10) {
        this.f25501b = j10;
    }
}
