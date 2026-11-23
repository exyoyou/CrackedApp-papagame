package com.join.mgps.event;

/* JADX INFO: loaded from: classes3.dex */
public class h {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    String f68175a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    String f68176b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    boolean f68177c;

    public h() {
    }

    public String a() {
        return this.f68175a;
    }

    public String b() {
        return this.f68176b;
    }

    public boolean c() {
        return this.f68177c;
    }

    public void d(String ip) {
        this.f68175a = ip;
    }

    public void e(String mac) {
        this.f68176b = mac;
    }

    public void f(boolean reabchable) {
        this.f68177c = reabchable;
    }

    public h(boolean isReabchable, String mac, String ip) {
        this.f68177c = isReabchable;
        this.f68176b = mac;
        this.f68175a = ip;
    }
}
