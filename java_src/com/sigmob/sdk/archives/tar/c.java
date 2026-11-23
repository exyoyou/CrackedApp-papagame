package com.sigmob.sdk.archives.tar;

/* JADX INFO: loaded from: classes9.dex */
public class c implements e {

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private boolean f78730b;

    public c(byte[] headerBuf) {
        this.f78730b = f.a(headerBuf, 504);
    }

    public boolean a() {
        return this.f78730b;
    }
}
