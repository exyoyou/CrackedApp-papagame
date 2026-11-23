package com.join.android.app.common.http;

import java.util.List;

/* JADX INFO: loaded from: classes5.dex */
public class a {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private String f34541a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private int f34542b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    private int f34543c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    private List<String> f34544d;

    public String a() {
        return this.f34541a;
    }

    public List<String> b() {
        return this.f34544d;
    }

    public int c() {
        return this.f34543c;
    }

    public int d() {
        return this.f34542b;
    }

    public void e(String host) {
        this.f34541a = host;
    }

    public void f(List<String> ips) {
        this.f34544d = ips;
    }

    public void g(int origin_ttl) {
        this.f34543c = origin_ttl;
    }

    public void h(int ttl) {
        this.f34542b = ttl;
    }
}
