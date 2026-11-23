package com.join.mgps.event;

import com.join.mgps.dto.CloudListDataBean;

/* JADX INFO: loaded from: classes3.dex */
public class i {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private CloudListDataBean f68178a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private int f68179b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    private String f68180c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    private int f68181d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    private String f68182e;

    public i() {
        this.f68179b = 0;
    }

    public CloudListDataBean a() {
        return this.f68178a;
    }

    public String b() {
        return this.f68182e;
    }

    public String c() {
        return this.f68180c;
    }

    public int d() {
        return this.f68181d;
    }

    public int e() {
        return this.f68179b;
    }

    public void f(CloudListDataBean cloudListDataBean) {
        this.f68178a = cloudListDataBean;
    }

    public void g(String downSpeed) {
        this.f68182e = downSpeed;
    }

    public void h(String hasDownSize) {
        this.f68180c = hasDownSize;
    }

    public void i(int progress) {
        this.f68181d = progress;
    }

    public void j(int status) {
        this.f68179b = status;
    }

    public i(CloudListDataBean cloudListDataBean, int status) {
        this.f68178a = cloudListDataBean;
        this.f68179b = status;
    }

    public i(CloudListDataBean cloudListDataBean, int status, String hasDownSize, int progress, String downSpeed) {
        this.f68178a = cloudListDataBean;
        this.f68179b = status;
        this.f68180c = hasDownSize;
        this.f68181d = progress;
        this.f68182e = downSpeed;
    }
}
