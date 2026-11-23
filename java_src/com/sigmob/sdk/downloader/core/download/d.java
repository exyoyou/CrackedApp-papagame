package com.sigmob.sdk.downloader.core.download;

import com.sigmob.sdk.downloader.core.exception.i;
import java.io.IOException;
import java.net.SocketException;

/* JADX INFO: loaded from: classes3.dex */
public class d {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private String f80573a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private final com.sigmob.sdk.downloader.core.file.d f80574b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    private volatile boolean f80575c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    private volatile boolean f80576d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    private volatile boolean f80577e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    private volatile boolean f80578f;

    /* JADX INFO: renamed from: g, reason: collision with root package name */
    private volatile boolean f80579g;

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    private volatile boolean f80580h;

    /* JADX INFO: renamed from: i, reason: collision with root package name */
    private volatile IOException f80581i;

    static class a extends d {
        a(IOException realCause) {
            super(null);
            c(realCause);
        }
    }

    private d() {
        this.f80574b = null;
    }

    com.sigmob.sdk.downloader.core.file.d a() {
        com.sigmob.sdk.downloader.core.file.d dVar = this.f80574b;
        if (dVar != null) {
            return dVar;
        }
        throw new IllegalArgumentException();
    }

    String b() {
        return this.f80573a;
    }

    public void c(IOException realCause) {
        this.f80578f = true;
        this.f80581i = realCause;
    }

    public void d(IOException realCause) {
        this.f80580h = true;
        this.f80581i = realCause;
    }

    public void e(IOException e10) {
        if (d()) {
            return;
        }
        if (e10 instanceof com.sigmob.sdk.downloader.core.exception.f) {
            a(e10);
            return;
        }
        if (e10 instanceof i) {
            b(e10);
            return;
        }
        if (e10 == com.sigmob.sdk.downloader.core.exception.b.f80625a) {
            m();
            return;
        }
        if (e10 instanceof com.sigmob.sdk.downloader.core.exception.e) {
            d(e10);
            return;
        }
        if (e10 != com.sigmob.sdk.downloader.core.exception.c.f80626a) {
            c(e10);
            if (e10 instanceof SocketException) {
                return;
            }
            com.sigmob.sdk.downloader.core.c.b("DownloadCache", "catch unknown error " + e10);
        }
    }

    boolean f() {
        return this.f80578f;
    }

    boolean g() {
        return this.f80579g;
    }

    public boolean h() {
        return this.f80580h;
    }

    IOException i() {
        return this.f80581i;
    }

    com.sigmob.sdk.downloader.core.cause.b j() {
        return ((com.sigmob.sdk.downloader.core.exception.f) this.f80581i).a();
    }

    public boolean k() {
        return this.f80575c || this.f80576d || this.f80577e || this.f80578f || this.f80579g || this.f80580h;
    }

    void l() {
        this.f80576d = true;
    }

    public void m() {
        this.f80579g = true;
    }

    d(com.sigmob.sdk.downloader.core.file.d outputStream) {
        this.f80574b = outputStream;
    }

    public void a(IOException realCause) {
        this.f80575c = true;
        this.f80581i = realCause;
    }

    public void b(IOException realCause) {
        this.f80577e = true;
        this.f80581i = realCause;
    }

    boolean c() {
        return this.f80575c;
    }

    public boolean d() {
        return this.f80576d;
    }

    boolean e() {
        return this.f80577e;
    }

    void a(String redirectLocation) {
        this.f80573a = redirectLocation;
    }
}
