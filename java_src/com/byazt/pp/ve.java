package com.byazt.pp;

import android.text.TextUtils;
import androidx.annotation.Nullable;
import java.util.HashMap;
import java.util.Map;

/* JADX INFO: loaded from: classes6.dex */
@com.byazt.zqa.c(c = {0, 1, 1434, 54})
public class ve {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public String f18795a;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public int f18796c;

    /* JADX INFO: renamed from: da, reason: collision with root package name */
    public String f18797da;

    /* JADX INFO: renamed from: i, reason: collision with root package name */
    public String f18798i;

    /* JADX INFO: renamed from: m, reason: collision with root package name */
    public String f18799m;

    /* JADX INFO: renamed from: n, reason: collision with root package name */
    public String f18800n;
    public String nu;
    public final Map<String, String> rh = new HashMap();
    public String sl;
    public int sp;

    /* JADX INFO: renamed from: t, reason: collision with root package name */
    public String f18801t;
    public String tt;

    /* JADX INFO: renamed from: u, reason: collision with root package name */
    public String f18802u;
    public String uj;
    public String ve;

    /* JADX INFO: renamed from: x, reason: collision with root package name */
    public String f18803x;
    public String yp;

    /* JADX INFO: renamed from: z, reason: collision with root package name */
    public String f18804z;

    @Nullable
    public String a() {
        return this.yp;
    }

    public void c(Map<String, String> map) {
        if (map == null || map.isEmpty()) {
            return;
        }
        this.rh.clear();
        this.rh.putAll(map);
    }

    @Nullable
    public String da() {
        return this.ve;
    }

    @Nullable
    public String i() {
        return this.tt;
    }

    public int m() {
        return this.sp;
    }

    @Nullable
    public String n() {
        return this.f18802u;
    }

    @Nullable
    public String nu() {
        return this.f18803x;
    }

    @Nullable
    public String rh() {
        return this.f18798i;
    }

    @Nullable
    public String sl() {
        return this.uj;
    }

    @Nullable
    public String sp() {
        return this.f18804z;
    }

    @Nullable
    public String t() {
        return TextUtils.isEmpty(this.ve) ? this.tt : this.ve;
    }

    public String toString() {
        return "{mSdkNum='" + this.f18796c + "', mSlotId='" + this.uj + "', mLevelTag='" + this.f18800n + "', mEcpm=" + this.f18795a + ", mReqBiddingType=" + this.sp + "', mRequestId=" + this.f18798i + ", mSubRitType=" + this.sl + '}';
    }

    @Nullable
    public String tt() {
        return this.f18797da;
    }

    @Nullable
    public String u() {
        return this.f18795a;
    }

    @Nullable
    public String uj() {
        return this.f18801t;
    }

    @Nullable
    public String ve() {
        return this.sl;
    }

    @Nullable
    public String x() {
        return this.f18799m;
    }

    public String yp() {
        return this.nu;
    }

    @Nullable
    public String z() {
        return this.f18800n;
    }

    public void a(String str) {
        this.f18804z = str;
    }

    public void da(String str) {
        this.uj = str;
    }

    public void i(String str) {
        this.ve = str;
    }

    public void n(String str) {
        this.yp = str;
    }

    public void sl(String str) {
        this.f18795a = str;
    }

    public void sp(String str) {
        this.f18799m = str;
    }

    public void t(String str) {
        this.nu = str;
    }

    public void tt(String str) {
        this.sl = str;
    }

    public void u(String str) {
        this.f18800n = str;
    }

    public void uj(String str) {
        this.f18802u = str;
    }

    public void ve(String str) {
        this.f18801t = str;
    }

    public void x(String str) {
        this.tt = str;
    }

    public void yp(String str) {
        this.f18803x = str;
    }

    public void z(String str) {
        this.f18798i = str;
    }

    public void tt(int i10) {
        this.sp = i10;
    }

    public Map<String, String> c() {
        return this.rh;
    }

    public void c(String str) {
        this.f18797da = str;
    }

    public void c(int i10) {
        this.f18796c = i10;
    }
}
