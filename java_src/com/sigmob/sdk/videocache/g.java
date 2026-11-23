package com.sigmob.sdk.videocache;

import android.text.TextUtils;
import java.io.BufferedOutputStream;
import java.io.IOException;
import java.io.OutputStream;
import java.net.Socket;
import java.util.Locale;

/* JADX INFO: loaded from: classes3.dex */
class g extends o {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private static final float f81926a = 0.2f;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private final t f81927b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    private final com.sigmob.sdk.videocache.file.b f81928c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    private d f81929d;

    public g(t source, com.sigmob.sdk.videocache.file.b cache) {
        super(source, cache);
        this.f81928c = cache;
        this.f81927b = source;
    }

    private String a(String pattern, Object... args) {
        return String.format(Locale.US, pattern, args);
    }

    private String b(f request) throws p, IOException {
        String strC = this.f81927b.c();
        boolean z10 = !TextUtils.isEmpty(strC);
        long jA = this.f81928c.d() ? this.f81928c.a() : this.f81927b.a();
        boolean z11 = jA >= 0;
        boolean z12 = request.f81915c;
        long j10 = z12 ? jA - request.f81914b : jA;
        boolean z13 = z11 && z12;
        StringBuilder sb2 = new StringBuilder();
        sb2.append(request.f81915c ? "HTTP/1.1 206 PARTIAL CONTENT\n" : "HTTP/1.1 200 OK\n");
        sb2.append("Accept-Ranges: bytes\n");
        sb2.append(z11 ? a("Content-Length: %d\n", Long.valueOf(j10)) : "");
        sb2.append(z13 ? a("Content-Range: bytes %d-%d/%d\n", Long.valueOf(request.f81914b), Long.valueOf(jA - 1), Long.valueOf(jA)) : "");
        sb2.append(z10 ? a("Content-Type: %s\n", strC) : "");
        sb2.append("\n");
        return sb2.toString();
    }

    private String c(f request) {
        return "HTTP/1.1 404 Not Found\n";
    }

    private void b(OutputStream out, long offset) throws p, IOException {
        t tVarA = s.a(this.f81927b);
        try {
            tVarA.a((int) offset);
            byte[] bArr = new byte[8192];
            while (true) {
                int iA = tVarA.a(bArr);
                if (iA == -1) {
                    out.flush();
                    return;
                }
                out.write(bArr, 0, iA);
            }
        } finally {
            tVarA.b();
        }
    }

    @Override // com.sigmob.sdk.videocache.o
    protected void a(int percents) {
        d dVar = this.f81929d;
        if (dVar != null) {
            dVar.a(this.f81928c.f81917a, this.f81927b.g(), percents);
        }
    }

    public void a(d cacheListener) {
        this.f81929d = cacheListener;
    }

    public void a(f request, Socket socket) throws p, IOException {
        BufferedOutputStream bufferedOutputStream = new BufferedOutputStream(socket.getOutputStream());
        bufferedOutputStream.write(b(request).getBytes("UTF-8"));
        long j10 = request.f81914b;
        if (a(request)) {
            a(bufferedOutputStream, j10);
        } else {
            b(bufferedOutputStream, j10);
        }
    }

    private void a(OutputStream out, long offset) throws p, IOException {
        byte[] bArr = new byte[8192];
        while (true) {
            int iA = a(bArr, offset, 8192);
            if (iA == -1) {
                out.flush();
                return;
            } else {
                out.write(bArr, 0, iA);
                offset += (long) iA;
            }
        }
    }

    @Override // com.sigmob.sdk.videocache.o
    protected void a(Throwable throwable) {
        super.a(throwable);
        d dVar = this.f81929d;
        if (dVar != null) {
            dVar.a(this.f81927b.g(), throwable);
        }
    }

    private boolean a(f request) throws p {
        long jA = this.f81927b.a();
        return (((jA > 0L ? 1 : (jA == 0L ? 0 : -1)) > 0) && request.f81915c && ((float) request.f81914b) > ((float) this.f81928c.a()) + (((float) jA) * 0.2f)) ? false : true;
    }
}
