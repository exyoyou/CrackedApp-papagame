package com.efs.sdk.base.core.d;

/* JADX INFO: loaded from: classes9.dex */
public final class a {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public String f26334a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public byte f26335b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public int f26336c = 0;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    public String f26337d = "none";

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public int f26338e = 1;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    long f26339f = 0;

    /* JADX INFO: renamed from: g, reason: collision with root package name */
    int f26340g = 1;

    a(String str, byte b10) {
        this.f26335b = (byte) 2;
        this.f26334a = str;
        if (b10 <= 0 || 3 < b10) {
            throw new IllegalArgumentException("log protocol flag invalid : ".concat(String.valueOf((int) b10)));
        }
        this.f26335b = b10;
    }
}
