package com.kwad.sdk;

/* JADX INFO: loaded from: classes2.dex */
public final class e {
    public static final e aFN = new e(10000, "其他异常");
    public static final e aFO = new e(10001, "初始化参数异常");
    public static final e aFP = new e(11001, "SDK未调用init方法");
    public int code;
    public String msg;

    public e(int i10, String str) {
        this.code = i10;
        this.msg = str;
    }
}
