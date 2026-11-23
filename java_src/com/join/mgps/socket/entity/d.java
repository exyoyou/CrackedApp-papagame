package com.join.mgps.socket.entity;

/* JADX INFO: loaded from: classes3.dex */
public class d extends e {

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    long f73025c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    String f73026d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    String f73027e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    String f73028f;

    /* JADX INFO: renamed from: g, reason: collision with root package name */
    String f73029g;

    public d() {
    }

    public String a() {
        return this.f73026d;
    }

    public String b() {
        return this.f73027e;
    }

    public long c() {
        return this.f73025c;
    }

    public String d() {
        return this.f73029g;
    }

    public String e() {
        return this.f73028f;
    }

    public void f(String fileName) {
        this.f73026d = fileName;
    }

    public void g(String filePath) {
        this.f73027e = filePath;
    }

    public void h(long fileSize) {
        this.f73025c = fileSize;
    }

    public void i(String id2) {
        this.f73029g = id2;
    }

    public void j(String savePath) {
        this.f73028f = savePath;
    }

    public d(long fileSize, String fileName, String filePath, String savePath, String id2) {
        this.f73025c = fileSize;
        this.f73026d = fileName;
        this.f73027e = filePath;
        this.f73028f = savePath;
        this.f73029g = id2;
    }
}
