package com.byazt.ik;

import java.text.SimpleDateFormat;
import java.util.Date;

/* JADX INFO: loaded from: classes6.dex */
@com.byazt.zqa.c(c = {0, 1, 2058, 13})
public class tt {

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public String f15384c;

    /* JADX INFO: renamed from: n, reason: collision with root package name */
    public long f15385n;
    public String tt;
    public String uj;
    public String ve;

    public void c(String str) {
        this.f15384c = str;
    }

    public String toString() {
        return "MediationBehaviorDbData{primeRit='" + this.f15384c + "', adnRit='" + this.tt + "', adnName='" + this.ve + "', adAction='" + this.uj + "', timeStamp=" + new SimpleDateFormat("yyyy-MM-dd HH:mm:ss").format(new Date(this.f15385n)) + '}';
    }

    public void tt(String str) {
        this.tt = str;
    }

    public void uj(String str) {
        this.uj = str;
    }

    public void ve(String str) {
        this.ve = str;
    }

    public String c() {
        return this.uj;
    }

    public void c(long j10) {
        this.f15385n = j10;
    }
}
