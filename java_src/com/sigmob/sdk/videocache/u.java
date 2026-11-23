package com.sigmob.sdk.videocache;

/* JADX INFO: loaded from: classes3.dex */
public class u {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final String f81989a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final long f81990b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final String f81991c;

    public u(String url, long length, String mime) {
        this.f81989a = url;
        this.f81990b = length;
        this.f81991c = mime;
    }

    public String toString() {
        return "SourceInfo{url='" + this.f81989a + "', length=" + this.f81990b + ", mime='" + this.f81991c + "'}";
    }
}
