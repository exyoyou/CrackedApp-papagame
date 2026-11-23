package com.byazt.hr;

import java.util.List;

/* JADX INFO: loaded from: classes6.dex */
@com.byazt.zqa.c(c = {0, 1, 29, 13})
public class tt {

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public List<String> f15077c;
    public List<String> tt;
    public long ve;

    public long c() {
        return this.ve;
    }

    public String toString() {
        return "AdnLoadFailShowConfigBean{ breadRequestErrorCode=" + this.f15077c + ",ritList=" + this.tt + ",breadRequestDuration=" + this.ve + " }";
    }

    public List<String> tt() {
        return this.f15077c;
    }

    public List<String> ve() {
        return this.tt;
    }

    public void c(long j10) {
        this.ve = j10;
    }

    public void tt(List<String> list) {
        this.tt = list;
    }

    public void c(List<String> list) {
        this.f15077c = list;
    }
}
