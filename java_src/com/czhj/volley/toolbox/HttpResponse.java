package com.czhj.volley.toolbox;

import com.czhj.volley.Header;
import java.io.InputStream;
import java.util.Collections;
import java.util.List;

/* JADX INFO: loaded from: classes9.dex */
public final class HttpResponse {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private final int f25795a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private final List<Header> f25796b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    private final int f25797c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    private final InputStream f25798d;

    public HttpResponse(int i10, List<Header> list) {
        this(i10, list, -1, null);
    }

    public final InputStream getContent() {
        return this.f25798d;
    }

    public final int getContentLength() {
        return this.f25797c;
    }

    public final List<Header> getHeaders() {
        return Collections.unmodifiableList(this.f25796b);
    }

    public final int getStatusCode() {
        return this.f25795a;
    }

    public HttpResponse(int i10, List<Header> list, int i11, InputStream inputStream) {
        this.f25795a = i10;
        this.f25796b = list;
        this.f25797c = i11;
        this.f25798d = inputStream;
    }
}
