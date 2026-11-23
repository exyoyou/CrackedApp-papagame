package com.papa.gsyvideoplayer.model;

/* JADX INFO: loaded from: classes2.dex */
public class c {

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    public static final int f76770f = 0;

    /* JADX INFO: renamed from: g, reason: collision with root package name */
    public static final int f76771g = 1;

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    int f76772a = 0;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    int f76773b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    int f76774c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    String f76775d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    String f76776e;

    public c(int i10, String str, int i11) {
        this.f76773b = i10;
        this.f76775d = str;
        this.f76774c = i11;
    }

    public int a() {
        return this.f76773b;
    }

    public String b() {
        return this.f76775d;
    }

    public int c() {
        return this.f76774c;
    }

    public String d() {
        return this.f76776e;
    }

    public int e() {
        return this.f76772a;
    }

    public void f(int i10) {
        this.f76773b = i10;
    }

    public void g(String str) {
        this.f76775d = str;
    }

    public void h(int i10) {
        this.f76774c = i10;
        this.f76772a = 0;
    }

    public void i(String str) {
        this.f76776e = str;
        this.f76772a = 1;
    }

    public void j(int i10) {
        this.f76772a = i10;
    }

    public c(int i10, String str, String str2) {
        this.f76773b = i10;
        this.f76775d = str;
        this.f76776e = str2;
    }
}
