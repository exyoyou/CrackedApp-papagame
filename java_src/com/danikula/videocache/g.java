package com.danikula.videocache;

import android.text.TextUtils;
import java.io.BufferedOutputStream;
import java.io.IOException;
import java.io.OutputStream;
import java.net.Socket;
import java.util.Locale;

/* JADX INFO: loaded from: classes9.dex */
class g extends o {

    /* JADX INFO: renamed from: m, reason: collision with root package name */
    private static final float f26036m = 0.2f;

    /* JADX INFO: renamed from: j, reason: collision with root package name */
    private final k f26037j;

    /* JADX INFO: renamed from: k, reason: collision with root package name */
    private final com.danikula.videocache.file.b f26038k;

    /* JADX INFO: renamed from: l, reason: collision with root package name */
    private d f26039l;

    public g(k kVar, com.danikula.videocache.file.b bVar) {
        super(kVar, bVar);
        this.f26038k = bVar;
        this.f26037j = kVar;
    }

    private String p(String str, Object... objArr) {
        return String.format(Locale.US, str, objArr);
    }

    private boolean q(f fVar) throws ProxyCacheException {
        long length = this.f26037j.length();
        return (((length > 0L ? 1 : (length == 0L ? 0 : -1)) > 0) && fVar.f26025c && ((float) fVar.f26024b) > ((float) this.f26038k.available()) + (((float) length) * 0.2f)) ? false : true;
    }

    private String r(f fVar) throws IOException, ProxyCacheException {
        String strD = this.f26037j.d();
        boolean z10 = !TextUtils.isEmpty(strD);
        long jAvailable = this.f26038k.isCompleted() ? this.f26038k.available() : this.f26037j.length();
        boolean z11 = jAvailable >= 0;
        boolean z12 = fVar.f26025c;
        long j10 = z12 ? jAvailable - fVar.f26024b : jAvailable;
        boolean z13 = z11 && z12;
        StringBuilder sb2 = new StringBuilder();
        sb2.append(fVar.f26025c ? "HTTP/1.1 206 PARTIAL CONTENT\n" : "HTTP/1.1 200 OK\n");
        sb2.append("Accept-Ranges: bytes\n");
        sb2.append(z11 ? p("Content-Length: %d\n", Long.valueOf(j10)) : "");
        sb2.append(z13 ? p("Content-Range: bytes %d-%d/%d\n", Long.valueOf(fVar.f26024b), Long.valueOf(jAvailable - 1), Long.valueOf(jAvailable)) : "");
        sb2.append(z10 ? p("Content-Type: %s\n", strD) : "");
        sb2.append("\n");
        return sb2.toString();
    }

    private void u(OutputStream outputStream, long j10) throws IOException, ProxyCacheException {
        byte[] bArr = new byte[8192];
        while (true) {
            int iJ = j(bArr, j10, 8192);
            if (iJ == -1) {
                outputStream.flush();
                return;
            } else {
                outputStream.write(bArr, 0, iJ);
                j10 += (long) iJ;
            }
        }
    }

    private void v(OutputStream outputStream, long j10) throws IOException, ProxyCacheException {
        k kVar = new k(this.f26037j);
        try {
            kVar.a((int) j10);
            byte[] bArr = new byte[8192];
            while (true) {
                int i10 = kVar.read(bArr);
                if (i10 == -1) {
                    outputStream.flush();
                    return;
                }
                outputStream.write(bArr, 0, i10);
            }
        } finally {
            kVar.close();
        }
    }

    @Override // com.danikula.videocache.o
    protected void g(int i10) {
        d dVar = this.f26039l;
        if (dVar != null) {
            dVar.h(this.f26038k.f26028b, this.f26037j.e(), i10);
        }
    }

    public void s(f fVar, Socket socket) throws IOException, ProxyCacheException {
        BufferedOutputStream bufferedOutputStream = new BufferedOutputStream(socket.getOutputStream());
        bufferedOutputStream.write(r(fVar).getBytes("UTF-8"));
        long j10 = fVar.f26024b;
        if (q(fVar)) {
            u(bufferedOutputStream, j10);
        } else {
            v(bufferedOutputStream, j10);
        }
    }

    public void t(d dVar) {
        this.f26039l = dVar;
    }
}
