package com.byazt.uy;

import com.uc.crashsdk.export.LogType;

/* JADX INFO: loaded from: classes9.dex */
public enum ve {
    LAUNCH("launch"),
    JAVA(LogType.JAVA_TYPE),
    NATIVE("native"),
    ANR(LogType.ANR_TYPE),
    BLOCK("block"),
    ENSURE("ensure"),
    DART("dart"),
    CUSTOM_JAVA("custom_java"),
    ALL("all");


    /* JADX INFO: renamed from: da, reason: collision with root package name */
    public String f21120da;

    ve(String str) {
        this.f21120da = str;
    }

    public String c() {
        return this.f21120da;
    }
}
