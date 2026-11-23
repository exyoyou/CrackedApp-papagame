package com.join.android.app.component.album.lib;

import java.util.List;
import net.lingala.zip4j.util.e;

/* JADX INFO: loaded from: classes5.dex */
public class a {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private String f34956a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private String f34957b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    private String f34958c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    private String f34959d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    private int f34960e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    private List<String> f34961f;

    public List<String> a() {
        return this.f34961f;
    }

    public String b() {
        return this.f34959d;
    }

    public int c() {
        return this.f34960e;
    }

    public String d() {
        return this.f34956a;
    }

    public String e() {
        return this.f34957b;
    }

    public String f() {
        return this.f34958c;
    }

    public void g(List<String> allImages) {
        this.f34961f = allImages;
    }

    public void h(String bucketName) {
        this.f34959d = bucketName;
    }

    public void i(int count) {
        this.f34960e = count;
    }

    public void j(String dir) {
        this.f34956a = dir;
        this.f34958c = this.f34956a.substring(dir.lastIndexOf(e.F0) + 1);
    }

    public void k(String firstImagePath) {
        this.f34957b = firstImagePath;
    }

    public void l(String name) {
        this.f34958c = name;
    }

    public String toString() {
        return "ImageFolder{dir='" + this.f34956a + "', firstImagePath='" + this.f34957b + "', name='" + this.f34958c + "', count=" + this.f34960e + '}';
    }
}
