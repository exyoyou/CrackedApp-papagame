package com.baidu.mobads.sdk.internal;

/* JADX INFO: loaded from: classes6.dex */
public enum br {
    INTERFACE_USE_PROBLEM(1010001, "接口使用问题"),
    SHOW_STANDARD_UNFIT(3040001, "容器大小不达标");


    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public static final String f7619c = "msg";

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    private int f7621d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    private String f7622e;

    br(int i10, String str) {
        this.f7621d = i10;
        this.f7622e = str;
    }

    public int b() {
        return this.f7621d;
    }

    public String c() {
        return this.f7622e;
    }
}
