package com.efs.sdk.net.a.a;

import java.io.ByteArrayOutputStream;

/* JADX INFO: loaded from: classes9.dex */
public final class h {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final f f26544a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public ByteArrayOutputStream f26545b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public a f26546c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    private final String f26547d;

    public h(f fVar, String str) {
        this.f26544a = fVar;
        this.f26547d = str;
    }

    public final boolean a() {
        return this.f26545b != null;
    }

    public final void b() {
        if (!a()) {
            throw new IllegalStateException("No body found; has createBodySink been called?");
        }
    }
}
