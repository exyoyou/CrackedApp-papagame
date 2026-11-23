package com.byazt.im;

import android.text.TextUtils;

/* JADX INFO: loaded from: classes6.dex */
@com.byazt.zqa.c(c = {0, 1, 1352, 91})
public class sp extends c {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public boolean f15398a;

    /* JADX INFO: renamed from: da, reason: collision with root package name */
    public long f15399da;

    /* JADX INFO: renamed from: i, reason: collision with root package name */
    public com.byazt.nc.tt f15400i;

    /* JADX INFO: renamed from: n, reason: collision with root package name */
    public String f15401n;
    public int sl;
    public int sp;
    public int uj;

    /* JADX INFO: renamed from: x, reason: collision with root package name */
    public boolean f15402x;

    public sp() {
        this.uj = -1;
        this.f15401n = "unknown";
        this.f15398a = false;
        this.f15402x = false;
        this.sl = -1;
    }

    public boolean a() {
        return this.f15398a;
    }

    public void c(String str) {
        this.f15401n = str;
    }

    public com.byazt.nc.tt i() {
        return this.f15400i;
    }

    public String n() {
        return TextUtils.isEmpty(this.f15401n) ? "unknown" : this.f15401n;
    }

    public int sp() {
        return this.sp;
    }

    public void tt(int i10) {
        this.uj = i10;
    }

    public int uj() {
        return this.uj;
    }

    public void ve(int i10) {
        this.sl = i10;
    }

    public boolean x() {
        return this.f15402x;
    }

    public void c(boolean z10) {
        this.f15398a = z10;
    }

    public void tt(boolean z10) {
        this.f15402x = z10;
    }

    public void uj(int i10) {
        this.sp = i10;
    }

    @Override // com.byazt.im.c
    public long ve() {
        return this.f15399da;
    }

    public void c(com.byazt.nc.tt ttVar) {
        this.f15400i = ttVar;
    }

    @Override // com.byazt.im.c
    public void c(long j10) {
        this.f15399da = j10;
    }

    public sp(int i10, String str, boolean z10) {
        this.f15398a = false;
        this.sl = -1;
        this.uj = i10;
        this.f15401n = str;
        this.f15402x = z10;
    }
}
