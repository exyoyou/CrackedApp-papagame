package com.kwad.framework.filedownloader.download;

import android.os.Process;
import com.kwad.framework.filedownloader.exception.FileDownloadGiveUpRetryException;
import java.io.IOException;
import java.net.SocketException;

/* JADX INFO: loaded from: classes2.dex */
public final class c implements Runnable {
    private final int aAO;
    private final ConnectTask aBK;
    private final f aBL;
    private e aBM;
    final int aBN;
    private final boolean aBl;
    private final String apn;
    private volatile boolean nJ;

    public static class a {
        private Boolean aBI;
        private f aBL;
        private final ConnectTask.a aBO = new ConnectTask.a();
        private Integer aBP;
        private String apn;

        public final c Cr() {
            if (this.aBL == null || this.apn == null || this.aBI == null || this.aBP == null) {
                throw new IllegalArgumentException(com.kwad.framework.filedownloader.f.f.c("%s %s %B", this.aBL, this.apn, this.aBI));
            }
            ConnectTask connectTaskBZ = this.aBO.BZ();
            return new c(connectTaskBZ.aAO, this.aBP.intValue(), connectTaskBZ, this.aBL, this.aBI.booleanValue(), this.apn, (byte) 0);
        }

        public final a a(f fVar) {
            this.aBL = fVar;
            return this;
        }

        public final a b(com.kwad.framework.filedownloader.download.a aVar) {
            this.aBO.a(aVar);
            return this;
        }

        public final a bv(boolean z10) {
            this.aBI = Boolean.valueOf(z10);
            return this;
        }

        public final a c(com.kwad.framework.filedownloader.d.b bVar) {
            this.aBO.a(bVar);
            return this;
        }

        public final a cL(int i10) {
            this.aBO.cK(i10);
            return this;
        }

        public final a cb(String str) {
            this.aBO.bY(str);
            return this;
        }

        public final a cc(String str) {
            this.aBO.bZ(str);
            return this;
        }

        public final a cd(String str) {
            this.apn = str;
            return this;
        }

        public final a i(Integer num) {
            this.aBP = num;
            return this;
        }
    }

    /* synthetic */ c(int i10, int i11, ConnectTask connectTask, f fVar, boolean z10, String str, byte b10) {
        this(i10, i11, connectTask, fVar, z10, str);
    }

    public final void Bw() {
        pause();
    }

    public final void pause() {
        this.nJ = true;
        e eVar = this.aBM;
        if (eVar != null) {
            eVar.pause();
        }
    }

    @Override // java.lang.Runnable
    public final void run() {
        boolean z10;
        Exception e10;
        Process.setThreadPriority(10);
        long j10 = this.aBK.BY().aAX;
        com.kwad.framework.filedownloader.a.b bVarBV = null;
        boolean z11 = false;
        while (!this.nJ) {
            try {
                try {
                    bVarBV = this.aBK.BV();
                    int responseCode = bVarBV.getResponseCode();
                    if (com.kwad.framework.filedownloader.f.d.aDr) {
                        com.kwad.framework.filedownloader.f.d.c(this, "the connection[%d] for %d, is connected %s with requestHttpCode[%d]", Integer.valueOf(this.aBN), Integer.valueOf(this.aAO), this.aBK.BY(), Integer.valueOf(responseCode));
                    }
                    if (responseCode != 206 && responseCode != 200) {
                        throw new SocketException(com.kwad.framework.filedownloader.f.f.c("Connection failed with request[%s] response[%s] http-state[%d] on task[%d-%d], which is changed after verify connection, so please try again.", this.aBK.getRequestHeader(), bVarBV.BP(), Integer.valueOf(responseCode), Integer.valueOf(this.aAO), Integer.valueOf(this.aBN)));
                    }
                    try {
                        e.a aVar = new e.a();
                        if (this.nJ) {
                            bVarBV.BQ();
                            return;
                        }
                        e eVarCE = aVar.cO(this.aAO).cN(this.aBN).b(this.aBL).a(this).bx(this.aBl).d(bVarBV).c(this.aBK.BY()).ce(this.apn).CE();
                        this.aBM = eVarCE;
                        eVarCE.run();
                        if (this.nJ) {
                            this.aBM.pause();
                        }
                        bVarBV.BQ();
                        return;
                    } catch (FileDownloadGiveUpRetryException | IOException | ArrayIndexOutOfBoundsException | IllegalAccessException | IllegalArgumentException e11) {
                        e10 = e11;
                        z10 = true;
                        try {
                            if (!this.aBL.a(e10)) {
                                this.aBL.b(e10);
                                if (bVarBV != null) {
                                    bVarBV.BQ();
                                    return;
                                }
                                return;
                            }
                            if (z10) {
                                e eVar = this.aBM;
                                if (eVar == null) {
                                    com.kwad.framework.filedownloader.f.d.d(this, "it is valid to retry and connection is valid but create fetch-data-task failed, so give up directly with %s", e10);
                                    this.aBL.b(e10);
                                    if (bVarBV != null) {
                                        bVarBV.BQ();
                                        return;
                                    }
                                    return;
                                }
                                this.aBL.a(e10, eVar.aAX - j10);
                            } else {
                                this.aBL.a(e10, 0L);
                            }
                            if (bVarBV != null) {
                                bVarBV.BQ();
                            }
                            z11 = z10;
                        } catch (Throwable th) {
                            if (bVarBV != null) {
                                bVarBV.BQ();
                            }
                            throw th;
                        }
                    }
                } catch (FileDownloadGiveUpRetryException | IOException | ArrayIndexOutOfBoundsException | IllegalAccessException | IllegalArgumentException e12) {
                    e10 = e12;
                    z10 = false;
                }
            } catch (FileDownloadGiveUpRetryException | IOException | ArrayIndexOutOfBoundsException | IllegalAccessException | IllegalArgumentException e13) {
                z10 = z11;
                e10 = e13;
            }
        }
        if (bVarBV != null) {
            bVarBV.BQ();
        }
    }

    private c(int i10, int i11, ConnectTask connectTask, f fVar, boolean z10, String str) {
        this.aAO = i10;
        this.aBN = i11;
        this.nJ = false;
        this.aBL = fVar;
        this.apn = str;
        this.aBK = connectTask;
        this.aBl = z10;
    }
}
