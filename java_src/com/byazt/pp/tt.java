package com.byazt.pp;

import androidx.annotation.Nullable;

/* JADX INFO: loaded from: classes6.dex */
@com.byazt.zqa.c(c = {0, 1, 1434, 13})
public class tt {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public String f18791a;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public String f18792c;

    /* JADX INFO: renamed from: n, reason: collision with root package name */
    public int f18793n;
    public String tt;
    public String uj;
    public String ve;

    @Nullable
    public String a() {
        return this.f18791a;
    }

    @Nullable
    public String c() {
        return this.uj;
    }

    public int n() {
        return this.f18793n;
    }

    public String toString() {
        return "{mediationRit='" + this.f18792c + "', adnName='" + this.tt + "', customAdnName='" + this.ve + "', adType='" + this.uj + "', errCode=" + this.f18793n + ", errMsg=" + this.f18791a + '}';
    }

    @Nullable
    public String tt() {
        return this.f18792c;
    }

    @Nullable
    public String uj() {
        return this.ve;
    }

    @Nullable
    public String ve() {
        return this.tt;
    }

    public tt c(String str) {
        this.uj = str;
        return this;
    }

    public tt n(String str) {
        this.f18791a = str;
        return this;
    }

    public tt tt(String str) {
        this.f18792c = str;
        return this;
    }

    public tt uj(String str) {
        this.ve = str;
        return this;
    }

    public tt ve(String str) {
        this.tt = str;
        return this;
    }

    public tt c(int i10) {
        this.f18793n = i10;
        return this;
    }
}
