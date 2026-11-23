package com.kwad.framework.filedownloader.download;

import android.os.SystemClock;
import com.kwad.framework.filedownloader.exception.FileDownloadGiveUpRetryException;
import com.kwad.framework.filedownloader.exception.FileDownloadNetworkPolicyException;
import java.io.Closeable;
import java.io.IOException;
import java.io.InputStream;

/* JADX INFO: loaded from: classes2.dex */
public final class e {
    private final int aAO;
    private final long aAW;
    long aAX;
    private final long aAY;
    private final f aBL;
    private final int aBN;
    private final com.kwad.framework.filedownloader.b.a aBd;
    private final boolean aBl;
    private final c aCd;
    private final com.kwad.framework.filedownloader.a.b aCe;
    private com.kwad.framework.filedownloader.e.a aCf;
    private volatile long aCg;
    private volatile long aCh;
    private final String apn;
    private final long contentLength;
    private volatile boolean nJ;

    public static class a {
        Integer aAU;
        com.kwad.framework.filedownloader.download.a aAV;
        Boolean aBI;
        f aBL;
        Integer aBP;
        com.kwad.framework.filedownloader.a.b aCe;
        c aCi;
        String apn;

        public final e CE() {
            com.kwad.framework.filedownloader.a.b bVar;
            com.kwad.framework.filedownloader.download.a aVar;
            Integer num;
            if (this.aBI == null || (bVar = this.aCe) == null || (aVar = this.aAV) == null || this.aBL == null || this.apn == null || (num = this.aAU) == null || this.aBP == null) {
                throw new IllegalArgumentException();
            }
            return new e(bVar, aVar, this.aCi, num.intValue(), this.aBP.intValue(), this.aBI.booleanValue(), this.aBL, this.apn, (byte) 0);
        }

        public final a a(c cVar) {
            this.aCi = cVar;
            return this;
        }

        public final a b(f fVar) {
            this.aBL = fVar;
            return this;
        }

        public final a bx(boolean z10) {
            this.aBI = Boolean.valueOf(z10);
            return this;
        }

        public final a c(com.kwad.framework.filedownloader.download.a aVar) {
            this.aAV = aVar;
            return this;
        }

        public final a cN(int i10) {
            this.aBP = Integer.valueOf(i10);
            return this;
        }

        public final a cO(int i10) {
            this.aAU = Integer.valueOf(i10);
            return this;
        }

        public final a ce(String str) {
            this.apn = str;
            return this;
        }

        public final a d(com.kwad.framework.filedownloader.a.b bVar) {
            this.aCe = bVar;
            return this;
        }
    }

    /* synthetic */ e(com.kwad.framework.filedownloader.a.b bVar, com.kwad.framework.filedownloader.download.a aVar, c cVar, int i10, int i11, boolean z10, f fVar, String str, byte b10) {
        this(bVar, aVar, cVar, i10, i11, z10, fVar, str);
    }

    private void CD() {
        long jElapsedRealtime = SystemClock.elapsedRealtime();
        if (com.kwad.framework.filedownloader.f.f.i(this.aAX - this.aCg, jElapsedRealtime - this.aCh)) {
            sync();
            this.aCg = this.aAX;
            this.aCh = jElapsedRealtime;
        }
    }

    private void sync() {
        boolean z10;
        long jUptimeMillis = SystemClock.uptimeMillis();
        try {
            this.aCf.Du();
            z10 = true;
        } catch (IOException e10) {
            if (com.kwad.framework.filedownloader.f.d.aDr) {
                com.kwad.framework.filedownloader.f.d.c(this, "Because of the system cannot guarantee that all the buffers have been synchronized with physical media, or write to filefailed, we just not flushAndSync process to database too %s", e10);
            }
            z10 = false;
        }
        if (z10) {
            if (this.aCd != null) {
                this.aBd.a(this.aAO, this.aBN, this.aAX);
            } else {
                this.aBL.Cm();
            }
            if (com.kwad.framework.filedownloader.f.d.aDr) {
                com.kwad.framework.filedownloader.f.d.c(this, "require flushAndSync id[%d] index[%d] offset[%d], consume[%d]", Integer.valueOf(this.aAO), Integer.valueOf(this.aBN), Long.valueOf(this.aAX), Long.valueOf(SystemClock.uptimeMillis() - jUptimeMillis));
            }
        }
    }

    public final void pause() {
        this.nJ = true;
    }

    public final void run() throws Throwable {
        com.kwad.framework.filedownloader.e.a aVarCs;
        if (this.nJ) {
            return;
        }
        long jB = com.kwad.framework.filedownloader.f.f.b(this.aBN, this.aCe);
        int i10 = 0;
        if (jB == 0) {
            throw new FileDownloadGiveUpRetryException(com.kwad.framework.filedownloader.f.f.c("there isn't any content need to download on %d-%d with the content-length is 0", Integer.valueOf(this.aAO), Integer.valueOf(this.aBN)));
        }
        long j10 = this.contentLength;
        if (j10 > 0 && jB != j10) {
            throw new FileDownloadGiveUpRetryException(com.kwad.framework.filedownloader.f.f.c("require %s with contentLength(%d), but the backend response contentLength is %d on downloadId[%d]-connectionIndex[%d], please ask your backend dev to fix such problem.", this.aAY == 0 ? com.kwad.framework.filedownloader.f.f.c("range[%d-)", Long.valueOf(this.aAX)) : com.kwad.framework.filedownloader.f.f.c("range[%d-%d)", Long.valueOf(this.aAX), Long.valueOf(this.aAY)), Long.valueOf(this.contentLength), Long.valueOf(jB), Integer.valueOf(this.aAO), Integer.valueOf(this.aBN)));
        }
        long j11 = this.aAX;
        try {
            boolean zCe = b.Ca().Ce();
            if (this.aCd != null && !zCe) {
                throw new IllegalAccessException("can't using multi-download when the output stream can't support seek");
            }
            aVarCs = com.kwad.framework.filedownloader.f.f.cs(this.apn);
            try {
                this.aCf = aVarCs;
                if (zCe) {
                    aVarCs.seek(this.aAX);
                }
                if (com.kwad.framework.filedownloader.f.d.aDr) {
                    com.kwad.framework.filedownloader.f.d.c(this, "start fetch(%d): range [%d, %d), seek to[%d]", Integer.valueOf(this.aBN), Long.valueOf(this.aAW), Long.valueOf(this.aAY), Long.valueOf(this.aAX));
                }
                InputStream inputStream = this.aCe.getInputStream();
                byte[] bArr = new byte[4096];
                if (this.nJ) {
                    com.kwad.sdk.crash.utils.b.closeQuietly(inputStream);
                    com.kwad.sdk.crash.utils.b.closeQuietly(aVarCs);
                    return;
                }
                while (true) {
                    int i11 = inputStream.read(bArr);
                    if (i11 == -1) {
                        break;
                    }
                    aVarCs.write(bArr, i10, i11);
                    long j12 = i11;
                    this.aAX += j12;
                    this.aBL.onProgress(j12);
                    CD();
                    if (this.nJ) {
                        break;
                    }
                    if (this.aBl && com.kwad.framework.filedownloader.f.f.DE()) {
                        throw new FileDownloadNetworkPolicyException();
                    }
                    i10 = 0;
                }
                if (aVarCs != null) {
                    sync();
                }
                com.kwad.sdk.crash.utils.b.closeQuietly(inputStream);
                com.kwad.sdk.crash.utils.b.closeQuietly(aVarCs);
                long j13 = this.aAX - j11;
                if (jB != -1 && jB != j13) {
                    throw new FileDownloadGiveUpRetryException(com.kwad.framework.filedownloader.f.f.c("fetched length[%d] != content length[%d], range[%d, %d) offset[%d] fetch begin offset", Long.valueOf(j13), Long.valueOf(jB), Long.valueOf(this.aAW), Long.valueOf(this.aAY), Long.valueOf(this.aAX), Long.valueOf(j11)));
                }
                this.aBL.a(this.aCd, this.aAW, this.aAY);
            } catch (Throwable th) {
                th = th;
                com.kwad.sdk.crash.utils.b.closeQuietly((Closeable) null);
                com.kwad.sdk.crash.utils.b.closeQuietly(aVarCs);
                throw th;
            }
        } catch (Throwable th2) {
            th = th2;
            aVarCs = null;
        }
    }

    private e(com.kwad.framework.filedownloader.a.b bVar, com.kwad.framework.filedownloader.download.a aVar, c cVar, int i10, int i11, boolean z10, f fVar, String str) {
        this.aCg = 0L;
        this.aCh = 0L;
        this.aBL = fVar;
        this.apn = str;
        this.aCe = bVar;
        this.aBl = z10;
        this.aCd = cVar;
        this.aBN = i11;
        this.aAO = i10;
        this.aBd = b.Ca().Cc();
        this.aAW = aVar.aAW;
        this.aAY = aVar.aAY;
        this.aAX = aVar.aAX;
        this.contentLength = aVar.contentLength;
    }
}
