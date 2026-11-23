package com.byazt.pik;

import androidx.constraintlayout.core.motion.utils.TypedValues;

/* JADX INFO: loaded from: classes6.dex */
@com.byazt.zqa.c(c = {0, 1, TypedValues.Custom.TYPE_STRING, 46})
public class n {

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public String f18709c;
    public long tt;
    public long ve;

    public void c(String str) {
        this.f18709c = str;
    }

    public String getType() {
        return this.f18709c;
    }

    public long tt() {
        return this.ve;
    }

    public boolean ve() {
        return "time".equals(this.f18709c);
    }

    public long c() {
        return this.tt;
    }

    public void tt(long j10) {
        this.ve = j10;
    }

    public void c(long j10) {
        this.tt = j10;
    }
}
