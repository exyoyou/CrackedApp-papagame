package com.qq.e.comm.constants;

/* JADX INFO: loaded from: classes2.dex */
public enum LoginType {
    Unknow(0),
    WeiXin(1),
    QQ(2);


    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private int f78304a;

    LoginType(int i10) {
        this.f78304a = i10;
        ordinal();
    }

    public int getValue() {
        return this.f78304a;
    }
}
