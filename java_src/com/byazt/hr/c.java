package com.byazt.hr;

/* JADX INFO: loaded from: classes6.dex */
@com.byazt.zqa.c(c = {0, 1, 29, 20})
public class c {

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public String f15058c;
    public String tt;
    public String uj;
    public long ve;

    public c(String str, String str2, long j10) {
        this(str, str2, j10, null);
    }

    public long c() {
        return this.ve;
    }

    public String toString() {
        return "AdnLoadFailShowBean{slotId='" + this.f15058c + "', adnName='" + this.tt + "', effectiveTime=" + this.ve + '}';
    }

    public String tt() {
        return this.uj;
    }

    public c(String str, String str2, long j10, String str3) {
        this.f15058c = str2;
        this.tt = str;
        this.ve = j10;
        this.uj = str3;
    }
}
