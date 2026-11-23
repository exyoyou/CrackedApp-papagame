package com.beizi.ad.internal.a;

import com.beizi.ad.internal.e.n;

/* JADX INFO: loaded from: classes6.dex */
public class b extends com.beizi.ad.internal.b.a.a {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private String f8665a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private String f8666b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    private String f8667c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    private String f8668d;

    public String a() {
        return this.f8665a;
    }

    public long b() {
        return n.c(this.f8666b);
    }

    public long c() {
        return n.c(this.f8667c);
    }

    public String d() {
        return this.f8668d;
    }

    public String toString() {
        return "{\"spaceId\":\"" + this.f8665a + "\",\"cacheTime\":\"" + this.f8666b + "\",\"expireTime\":\"" + this.f8667c + "\",\"requestId\":\"" + this.f8668d + x.a.f97579g + '}';
    }

    public void a(String str) {
        this.f8665a = str;
    }

    public void b(long j10) {
        this.f8667c = String.valueOf(j10);
    }

    public void a(long j10) {
        this.f8666b = String.valueOf(j10);
    }

    public void b(String str) {
        this.f8668d = str;
    }
}
