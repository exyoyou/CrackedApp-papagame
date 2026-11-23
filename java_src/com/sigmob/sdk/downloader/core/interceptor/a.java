package com.sigmob.sdk.downloader.core.interceptor;

import com.sigmob.sdk.downloader.core.download.f;
import com.sigmob.sdk.downloader.core.exception.g;
import java.io.IOException;
import java.util.regex.Matcher;
import java.util.regex.Pattern;

/* JADX INFO: loaded from: classes3.dex */
public class a implements c.a, c.b {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private static final String f80671a = "BreakpointInterceptor";

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private static final Pattern f80672b = Pattern.compile(".*\\d+ *- *(\\d+) */ *\\d+");

    /* JADX WARN: Code duplicated, block: B:7:0x001a  */
    long a(com.sigmob.sdk.downloader.core.connection.a.InterfaceC1025a connected) {
        long j10;
        String strC = connected.c("Content-Range");
        if (com.sigmob.sdk.downloader.core.c.a((CharSequence) strC)) {
            j10 = -1;
        } else {
            long jA = a(strC);
            if (jA > 0) {
                j10 = jA + 1;
            } else {
                j10 = -1;
            }
        }
        if (j10 >= 0) {
            return j10;
        }
        String strC2 = connected.c("Content-Length");
        return !com.sigmob.sdk.downloader.core.c.a((CharSequence) strC2) ? Long.parseLong(strC2) : j10;
    }

    @Override // com.sigmob.sdk.downloader.core.interceptor.c.b
    public long b(f chain) throws IOException {
        long jA = chain.a();
        int iE = chain.e();
        boolean z10 = jA != -1;
        com.sigmob.sdk.downloader.core.file.d dVarG = chain.g();
        long j10 = 0;
        while (true) {
            try {
                long jP = chain.p();
                if (jP == -1) {
                    break;
                }
                j10 += jP;
            } catch (Throwable th) {
                chain.j();
                if (!chain.f().d()) {
                    dVarG.a(iE);
                }
                throw th;
            }
        }
        chain.j();
        if (!chain.f().d()) {
            dVarG.a(iE);
        }
        if (z10) {
            dVarG.b(iE);
            if (j10 != jA) {
                throw new IOException("Fetch-length isn't equal to the response content-length, " + j10 + "!= " + jA);
            }
        }
        return j10;
    }

    static long a(String contentRange) {
        Matcher matcher = f80672b.matcher(contentRange);
        if (matcher.find()) {
            return Long.parseLong(matcher.group(1));
        }
        return -1L;
    }

    @Override // com.sigmob.sdk.downloader.core.interceptor.c.a
    public com.sigmob.sdk.downloader.core.connection.a.InterfaceC1025a a(f chain) throws IOException {
        com.sigmob.sdk.downloader.core.connection.a.InterfaceC1025a interfaceC1025aN = chain.n();
        com.sigmob.sdk.downloader.core.breakpoint.c cVarD = chain.d();
        if (chain.f().k()) {
            throw com.sigmob.sdk.downloader.core.exception.c.f80626a;
        }
        if (cVarD.g() == 1 && !cVarD.b()) {
            long jA = a(interfaceC1025aN);
            long j10 = cVarD.j();
            if (jA > 0 && jA != j10) {
                com.sigmob.sdk.downloader.core.c.b(f80671a, "SingleBlock special check: the response instance-length[" + jA + "] isn't equal to the instance length from trial-connection[" + j10 + "]");
                boolean z10 = cVarD.b(0).c() != 0;
                com.sigmob.sdk.downloader.core.breakpoint.a aVar = new com.sigmob.sdk.downloader.core.breakpoint.a(0L, jA);
                cVarD.f();
                cVarD.a(aVar);
                if (z10) {
                    com.sigmob.sdk.downloader.core.c.a(f80671a, "Discard breakpoint because of on this special case, we have to download from beginning");
                    throw new g("Discard breakpoint because of on this special case, we have to download from beginning");
                }
                com.sigmob.sdk.downloader.g.j().b().a().a(chain.c(), cVarD, com.sigmob.sdk.downloader.core.cause.b.CONTENT_LENGTH_CHANGED);
            }
        }
        try {
            if (chain.r().a(cVarD)) {
                return interfaceC1025aN;
            }
            throw new IOException("Update store failed!");
        } catch (Exception e10) {
            throw new IOException("Update store failed!", e10);
        }
    }
}
