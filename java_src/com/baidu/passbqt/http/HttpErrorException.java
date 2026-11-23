package com.baidu.passbqt.http;

import com.baidu.passbqt.NoProguard;

/* JADX INFO: loaded from: classes6.dex */
public class HttpErrorException extends Exception implements NoProguard {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public int f8312a;

    public HttpErrorException() {
    }

    public HttpErrorException(int i10, String str) {
        super(str);
        this.f8312a = i10;
    }
}
