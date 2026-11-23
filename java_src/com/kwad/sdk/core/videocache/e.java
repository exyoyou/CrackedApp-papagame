package com.kwad.sdk.core.videocache;

import android.text.TextUtils;
import java.io.BufferedOutputStream;
import java.io.IOException;
import java.io.OutputStream;
import java.net.Socket;
import java.util.Locale;

/* JADX INFO: loaded from: classes2.dex */
final class e extends k {
    private final p aZV;
    private final com.kwad.sdk.core.videocache.a.b aZW;
    private b aZX;

    public e(p pVar, com.kwad.sdk.core.videocache.a.b bVar) {
        super(pVar, bVar);
        this.aZW = bVar;
        this.aZV = pVar;
    }

    private String b(d dVar) {
        String strPf = this.aZV.Pf();
        boolean z10 = !TextUtils.isEmpty(strPf);
        long jOV = this.aZW.isCompleted() ? this.aZW.OV() : this.aZV.length();
        boolean z11 = jOV >= 0;
        boolean z12 = dVar.aZU;
        long j10 = z12 ? jOV - dVar.aZT : jOV;
        boolean z13 = z11 && z12;
        StringBuilder sb2 = new StringBuilder();
        sb2.append(dVar.aZU ? "HTTP/1.1 206 PARTIAL CONTENT\n" : "HTTP/1.1 200 OK\n");
        sb2.append("Accept-Ranges: bytes\n");
        sb2.append(z11 ? format("Content-Length: %d\n", Long.valueOf(j10)) : "");
        sb2.append(z13 ? format("Content-Range: bytes %d-%d/%d\n", Long.valueOf(dVar.aZT), Long.valueOf(jOV - 1), Long.valueOf(jOV)) : "");
        sb2.append(z10 ? format("Content-Type: %s\n", strPf) : "");
        sb2.append("\n");
        return sb2.toString();
    }

    private static String format(String str, Object... objArr) {
        return String.format(Locale.US, str, objArr);
    }

    public final void a(b bVar) {
        this.aZX = bVar;
    }

    @Override // com.kwad.sdk.core.videocache.k
    protected final void eM(int i10) {
        b bVar = this.aZX;
        if (bVar != null) {
            bVar.a(this.aZW.file, i10);
        }
    }

    public final void a(d dVar, Socket socket) throws IOException, ProxyCacheException {
        BufferedOutputStream bufferedOutputStream = new BufferedOutputStream(socket.getOutputStream());
        bufferedOutputStream.write(b(dVar).getBytes("UTF-8"));
        long j10 = dVar.aZT;
        if (a(dVar)) {
            a(bufferedOutputStream, j10);
        } else {
            b(bufferedOutputStream, j10);
        }
    }

    private boolean a(d dVar) {
        long length = this.aZV.length();
        return (((length > 0L ? 1 : (length == 0L ? 0 : -1)) > 0) && dVar.aZU && ((float) dVar.aZT) > ((float) this.aZW.OV()) + (((float) length) * 0.2f)) ? false : true;
    }

    private void a(OutputStream outputStream, long j10) throws ProxyCacheException, IOException {
        byte[] bArr = new byte[1024];
        while (true) {
            int iA = a(bArr, j10, 1024);
            if (iA == -1) {
                break;
            }
            try {
                outputStream.write(bArr, 0, iA);
                j10 += (long) iA;
            } catch (Exception unused) {
            }
        }
        outputStream.flush();
    }

    /* JADX WARN: Code duplicated, block: B:13:0x002b A[Catch: all -> 0x0037, LOOP:0: B:11:0x0024->B:13:0x002b, LOOP_END, TryCatch #0 {all -> 0x0037, blocks: (B:10:0x001d, B:11:0x0024, B:13:0x002b, B:14:0x0030), top: B:20:0x001d }] */
    /* JADX WARN: Code duplicated, block: B:22:0x0030 A[SYNTHETIC] */
    private void b(OutputStream outputStream, long j10) {
        p jVar;
        byte[] bArr;
        int i10;
        p pVar = this.aZV;
        try {
            if (pVar instanceof h) {
                jVar = new h((h) pVar);
            } else {
                if (pVar instanceof j) {
                    jVar = new j((j) pVar);
                }
                pVar.aP((int) j10);
                bArr = new byte[1024];
                while (true) {
                    i10 = pVar.read(bArr);
                    if (i10 != -1) {
                        outputStream.write(bArr, 0, i10);
                    } else {
                        outputStream.flush();
                        return;
                    }
                }
            }
            pVar.aP((int) j10);
            bArr = new byte[1024];
            while (true) {
                i10 = pVar.read(bArr);
                if (i10 != -1) {
                    outputStream.write(bArr, 0, i10);
                } else {
                    outputStream.flush();
                    return;
                }
            }
        } finally {
            pVar.close();
        }
        pVar = jVar;
    }
}
