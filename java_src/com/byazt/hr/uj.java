package com.byazt.hr;

import android.text.TextUtils;

/* JADX INFO: loaded from: classes6.dex */
@com.byazt.zqa.c(c = {0, 1, 29, 15})
public abstract class uj {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public boolean f15082a;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public String f15083c;

    /* JADX INFO: renamed from: n, reason: collision with root package name */
    public int f15084n;
    public String tt;
    public String uj;
    public String ve;

    public uj(String str, String str2, String str3, String str4, int i10) {
        this.f15083c = str;
        this.ve = str3;
        this.f15084n = i10;
        this.tt = str2;
        this.f15082a = !TextUtils.isEmpty(str2);
        this.uj = str4;
    }

    public String a() {
        return this.uj;
    }

    public boolean c() {
        return this.f15082a;
    }

    public String n() {
        return this.ve;
    }

    public int sp() {
        return this.f15084n;
    }

    public String toString() {
        return "BaseIntervalBean{waterfallId='" + this.f15083c + "', showRulesVersion='" + this.ve + "', timingMode=" + this.f15084n + '}';
    }

    public String tt() {
        return this.f15083c;
    }

    public String uj() {
        if (TextUtils.isEmpty(this.tt)) {
            return this.f15083c;
        }
        return this.f15083c + "_" + this.tt;
    }

    public String ve() {
        return this.tt;
    }

    public boolean x() {
        return this.f15084n == 1;
    }
}
