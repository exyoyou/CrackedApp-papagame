package com.sigmob.sdk.downloader.core.download;

import com.sigmob.sdk.downloader.core.exception.i;
import java.io.IOException;

/* JADX INFO: loaded from: classes3.dex */
public class b {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    com.sigmob.sdk.downloader.core.cause.b f80557a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private boolean f80558b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    private boolean f80559c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    private long f80560d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    private final com.sigmob.sdk.downloader.f f80561e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    private final com.sigmob.sdk.downloader.core.breakpoint.c f80562f;

    public b(com.sigmob.sdk.downloader.f task, com.sigmob.sdk.downloader.core.breakpoint.c info) {
        this.f80561e = task;
        this.f80562f = info;
    }

    public com.sigmob.sdk.downloader.core.cause.b a() {
        return this.f80557a;
    }

    public com.sigmob.sdk.downloader.core.cause.b b() {
        com.sigmob.sdk.downloader.core.cause.b bVar = this.f80557a;
        if (bVar != null) {
            return bVar;
        }
        throw new IllegalStateException("No cause find with resumable: " + this.f80559c);
    }

    public boolean c() {
        return this.f80559c;
    }

    public boolean d() {
        return this.f80558b;
    }

    public long e() {
        return this.f80560d;
    }

    public void f() throws IOException {
        g gVarG = com.sigmob.sdk.downloader.g.j().g();
        c cVarG = g();
        cVarG.a();
        boolean zC = cVarG.c();
        boolean zD = cVarG.d();
        long jB = cVarG.b();
        String strE = cVarG.e();
        String strF = cVarG.f();
        int iG = cVarG.g();
        gVarG.a(strF, this.f80561e, this.f80562f);
        this.f80562f.a(zD);
        this.f80562f.a(strE);
        if (com.sigmob.sdk.downloader.g.j().a().g(this.f80561e)) {
            throw com.sigmob.sdk.downloader.core.exception.b.f80625a;
        }
        com.sigmob.sdk.downloader.core.cause.b bVarA = gVarG.a(iG, this.f80562f.i() != 0, this.f80562f, strE);
        boolean z10 = bVarA == null;
        this.f80559c = z10;
        this.f80557a = bVarA;
        this.f80560d = jB;
        this.f80558b = zC;
        if (a(iG, jB, z10)) {
            return;
        }
        if (gVarG.a(iG, this.f80562f.i() != 0)) {
            throw new i(iG, this.f80562f.i());
        }
    }

    c g() {
        return new c(this.f80561e, this.f80562f);
    }

    public String toString() {
        return "acceptRange[" + this.f80558b + "] resumable[" + this.f80559c + "] failedCause[" + this.f80557a + "] instanceLength[" + this.f80560d + "] " + super.toString();
    }

    boolean a(int responseCode, long instanceLength, boolean isResumable) {
        return responseCode == 416 && instanceLength >= 0 && isResumable;
    }
}
