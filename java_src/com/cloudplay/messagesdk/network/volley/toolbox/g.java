package com.cloudplay.messagesdk.network.volley.toolbox;

import java.io.ByteArrayInputStream;
import java.io.InputStream;
import java.util.Collections;
import java.util.List;

/* JADX INFO: loaded from: classes9.dex */
public final class g {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private final int f24090a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private final List<com.cloudplay.messagesdk.network.volley.d> f24091b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    private final int f24092c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    private final InputStream f24093d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    private final byte[] f24094e;

    public g(int i10, List<com.cloudplay.messagesdk.network.volley.d> list) {
        this(i10, list, -1, null);
    }

    public final InputStream a() {
        InputStream inputStream = this.f24093d;
        if (inputStream != null) {
            return inputStream;
        }
        byte[] bArr = this.f24094e;
        if (bArr != null) {
            return new ByteArrayInputStream(bArr);
        }
        return null;
    }

    public final int b() {
        return this.f24092c;
    }

    public final List<com.cloudplay.messagesdk.network.volley.d> c() {
        return Collections.unmodifiableList(this.f24091b);
    }

    public final int d() {
        return this.f24090a;
    }

    public g(int i10, List<com.cloudplay.messagesdk.network.volley.d> list, int i11, InputStream inputStream) {
        this.f24090a = i10;
        this.f24091b = list;
        this.f24092c = i11;
        this.f24093d = inputStream;
        this.f24094e = null;
    }
}
