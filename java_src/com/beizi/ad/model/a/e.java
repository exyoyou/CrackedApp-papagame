package com.beizi.ad.model.a;

import android.text.TextUtils;

/* JADX INFO: loaded from: classes6.dex */
public class e {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private String f9305a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private String f9306b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    private String f9307c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    private String f9308d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    private int f9309e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    private String f9310f;

    /* JADX INFO: renamed from: g, reason: collision with root package name */
    private String f9311g;

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    private String f9312h;

    /* JADX INFO: renamed from: i, reason: collision with root package name */
    private String f9313i;

    /* JADX INFO: renamed from: j, reason: collision with root package name */
    private String f9314j;

    /* JADX INFO: renamed from: k, reason: collision with root package name */
    private String f9315k;

    /* JADX INFO: renamed from: l, reason: collision with root package name */
    private String f9316l;

    /* JADX INFO: renamed from: m, reason: collision with root package name */
    private String f9317m;

    /* JADX INFO: renamed from: n, reason: collision with root package name */
    private String f9318n;

    private boolean n() {
        if (TextUtils.isEmpty(this.f9310f) || TextUtils.isEmpty(this.f9311g) || TextUtils.isEmpty(this.f9312h) || TextUtils.isEmpty(this.f9315k) || TextUtils.isEmpty(this.f9316l)) {
            return false;
        }
        if (TextUtils.isEmpty(this.f9313i) && TextUtils.isEmpty(this.f9314j)) {
            return false;
        }
        int i10 = this.f9309e;
        return i10 == 2 || i10 == 5;
    }

    private boolean o() {
        int i10 = this.f9309e;
        if (i10 == 2) {
            return !TextUtils.isEmpty(this.f9317m) && this.f9317m.startsWith("http");
        }
        return i10 == 5 && !TextUtils.isEmpty(this.f9317m) && this.f9317m.contains("market://");
    }

    public String a() {
        return this.f9305a;
    }

    public String b() {
        return this.f9306b;
    }

    public String c() {
        return this.f9307c;
    }

    public String d() {
        return this.f9308d;
    }

    public boolean e() {
        return TextUtils.isEmpty(this.f9318n) && n() && o();
    }

    public int f() {
        return this.f9309e;
    }

    public String g() {
        return this.f9310f;
    }

    public String h() {
        return this.f9311g;
    }

    public String i() {
        return this.f9312h;
    }

    public String j() {
        return this.f9313i;
    }

    public String k() {
        return this.f9314j;
    }

    public String l() {
        return this.f9315k;
    }

    public String m() {
        return this.f9316l;
    }

    public void a(String str) {
        this.f9305a = str;
    }

    public void b(String str) {
        this.f9306b = str;
    }

    public void c(String str) {
        this.f9307c = str;
    }

    public void d(String str) {
        this.f9308d = str;
    }

    public void f(String str) {
        this.f9311g = str;
    }

    public void g(String str) {
        this.f9312h = str;
    }

    public void h(String str) {
        this.f9313i = str;
    }

    public void i(String str) {
        this.f9314j = str;
    }

    public void j(String str) {
        this.f9315k = str;
    }

    public void k(String str) {
        this.f9316l = str;
    }

    public void l(String str) {
        this.f9317m = str;
    }

    public void m(String str) {
        this.f9318n = str;
    }

    public void a(int i10) {
        this.f9309e = i10;
    }

    public void e(String str) {
        this.f9310f = str;
    }
}
