package com.papa.gsyvideoplayer.model;

import java.io.File;
import java.util.Map;

/* JADX INFO: loaded from: classes2.dex */
public class a {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    String f76761a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    File f76762b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    Map<String, String> f76763c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    float f76764d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    boolean f76765e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    boolean f76766f;

    /* JADX INFO: renamed from: g, reason: collision with root package name */
    String f76767g;

    public a(String str, Map<String, String> map, boolean z10, float f10, boolean z11, File file, String str2) {
        this.f76761a = str;
        this.f76763c = map;
        this.f76765e = z10;
        this.f76764d = f10;
        this.f76766f = z11;
        this.f76762b = file;
        this.f76767g = str2;
    }

    public File a() {
        return this.f76762b;
    }

    public Map<String, String> b() {
        return this.f76763c;
    }

    public String c() {
        return this.f76767g;
    }

    public float d() {
        return this.f76764d;
    }

    public String e() {
        return this.f76761a;
    }

    public boolean f() {
        return this.f76766f;
    }

    public boolean g() {
        return this.f76765e;
    }

    public void h(boolean z10) {
        this.f76766f = z10;
    }

    public void i(File file) {
        this.f76762b = file;
    }

    public void j(boolean z10) {
        this.f76765e = z10;
    }

    public void k(Map<String, String> map) {
        this.f76763c = map;
    }

    public void l(String str) {
        this.f76767g = str;
    }

    public void m(float f10) {
        this.f76764d = f10;
    }

    public void n(String str) {
        this.f76761a = str;
    }
}
