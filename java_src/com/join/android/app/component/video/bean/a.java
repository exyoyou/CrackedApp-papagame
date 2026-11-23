package com.join.android.app.component.video.bean;

import com.join.mgps.Util.IntentDateBean;

/* JADX INFO: loaded from: classes5.dex */
public class a {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    int f35179a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    String f35180b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    String f35181c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    IntentDateBean f35182d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    String f35183e;

    public a(int position, String url, String cover, IntentDateBean intentDateBean) {
        this.f35179a = position;
        this.f35180b = url;
        this.f35181c = cover;
        this.f35182d = intentDateBean;
    }

    public String a() {
        return this.f35181c;
    }

    public IntentDateBean b() {
        return this.f35182d;
    }

    public int c() {
        return this.f35179a;
    }

    public String d() {
        return this.f35183e;
    }

    public String e() {
        return this.f35180b;
    }

    public void f(String cover) {
        this.f35181c = cover;
    }

    public void g(IntentDateBean intentDateBean) {
        this.f35182d = intentDateBean;
    }

    public void h(int position) {
        this.f35179a = position;
    }

    public void i(String positionDesc) {
        this.f35183e = positionDesc;
    }

    public void j(String url) {
        this.f35180b = url;
    }

    public a(int position, String url, String cover) {
        this.f35179a = position;
        this.f35180b = url;
        this.f35181c = cover;
    }
}
