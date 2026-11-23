package com.byazt.zm;

import androidx.annotation.Nullable;

/* JADX INFO: loaded from: classes9.dex */
@com.byazt.zqa.c(c = {0, 1, 482, 20})
public class c {

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public int f22921c;
    public String tt;

    public c(int i10, String str) {
        this.f22921c = i10;
        this.tt = str;
    }

    public int c() {
        return this.f22921c;
    }

    public String toString() {
        return "GMCustomAdError{mCode=" + this.f22921c + ", mMessage='" + this.tt + "'}";
    }

    @Nullable
    public String tt() {
        return this.tt;
    }
}
