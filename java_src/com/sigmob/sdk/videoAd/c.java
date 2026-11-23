package com.sigmob.sdk.videoAd;

/* JADX INFO: loaded from: classes3.dex */
public class c {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private String f81791a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private String f81792b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    private String f81793c;
    private String title;

    public c(String title, String context, String cancel, String close) {
        this.title = title;
        this.f81791a = context;
        this.f81792b = cancel;
        this.f81793c = close;
    }

    public String a() {
        return this.title;
    }

    public String b() {
        return this.f81791a;
    }

    public String c() {
        return this.f81792b;
    }

    public String d() {
        return this.f81793c;
    }

    public String toString() {
        return "DialogConfig{title='" + this.title + "', context='" + this.f81791a + "', cancelTxt='" + this.f81792b + "', closeTxtl='" + this.f81793c + "'}";
    }

    public void a(String title) {
        this.title = title;
    }

    public void b(String context) {
        this.f81791a = context;
    }

    public void c(String cancel) {
        this.f81792b = cancel;
    }

    public void d(String close) {
        this.f81793c = close;
    }
}
