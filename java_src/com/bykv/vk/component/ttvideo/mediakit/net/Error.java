package com.bykv.vk.component.ttvideo.mediakit.net;

/* JADX INFO: loaded from: classes9.dex */
public class Error {
    int code;
    public String errStr;
    public String host;

    /* JADX INFO: renamed from: id, reason: collision with root package name */
    public String f23280id;

    public Error(int i10, String str, String str2) {
        this.code = i10;
        this.host = str;
        this.f23280id = str2;
        this.errStr = null;
    }

    public Error(int i10, String str, String str2, String str3) {
        this.code = i10;
        this.host = str;
        this.f23280id = str2;
        this.errStr = str3;
    }
}
