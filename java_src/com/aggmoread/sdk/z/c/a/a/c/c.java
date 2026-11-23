package com.aggmoread.sdk.z.c.a.a.c;

import java.util.List;

/* JADX INFO: loaded from: classes7.dex */
public class c {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private String f4358a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private String f4359b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    private long f4360c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    private String f4361d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    private List<a> f4362e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    private String f4363f;

    /* JADX INFO: renamed from: g, reason: collision with root package name */
    private String f4364g;

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    private String f4365h;

    /* JADX INFO: renamed from: i, reason: collision with root package name */
    private String f4366i;

    /* JADX INFO: renamed from: j, reason: collision with root package name */
    private String f4367j;

    /* JADX INFO: renamed from: k, reason: collision with root package name */
    private String f4368k;

    public static class a {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        public String f4369a;

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        public String f4370b;

        public a(String str, String str2) {
            this.f4369a = str;
            this.f4370b = str2;
        }
    }

    private c(String str, String str2, long j10, String str3, String str4, String str5) {
        this.f4358a = str;
        this.f4359b = str2;
        this.f4360c = j10;
        this.f4361d = str3;
        this.f4363f = str4;
        this.f4364g = str5;
    }

    public static c a(String str, String str2, long j10, String str3, String str4, String str5) {
        return new c(str, str2, j10, str3, str4, str5);
    }

    public String b() {
        return this.f4359b;
    }

    public String c() {
        return this.f4366i;
    }

    public String d() {
        return this.f4367j;
    }

    public long e() {
        return this.f4360c;
    }

    public String f() {
        return this.f4365h;
    }

    public List<a> g() {
        return this.f4362e;
    }

    public String h() {
        return this.f4361d;
    }

    public String i() {
        return this.f4363f;
    }

    public String j() {
        return this.f4368k;
    }

    public String k() {
        return this.f4364g;
    }

    public static c a(String str, String str2, long j10, List<a> list, String str3, String str4) {
        c cVar = new c(str, str2, j10, null, str3, str4);
        cVar.f4362e = list;
        return cVar;
    }

    public void b(String str) {
        this.f4367j = str;
    }

    public void c(String str) {
        this.f4365h = str;
    }

    public void d(String str) {
        this.f4368k = str;
    }

    public String a() {
        return this.f4358a;
    }

    public void a(String str) {
        this.f4366i = str;
    }

    public void a(List<a> list) {
        this.f4362e = list;
    }
}
