package com.byazt.u;

import android.annotation.SuppressLint;
import android.os.Process;
import com.byazt.hs.i;
import com.byazt.m.BaseException;
import com.byazt.nr.m;
import com.byazt.t.DownloadInfo;
import com.byazt.t.DownloadTask;
import com.byazt.zz.da;
import java.io.IOException;
import java.util.List;

/* JADX INFO: loaded from: classes7.dex */
@com.byazt.zqa.c(c = {0, 1, 67, 13})
public class tt implements Runnable {

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public static final String f20500c = "tt";

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public DownloadInfo f20501a;

    /* JADX INFO: renamed from: da, reason: collision with root package name */
    public volatile boolean f20502da;

    /* JADX INFO: renamed from: i, reason: collision with root package name */
    public da f20503i;

    /* JADX INFO: renamed from: n, reason: collision with root package name */
    public final DownloadTask f20504n;
    public volatile boolean sl;
    public final a sp;

    /* JADX INFO: renamed from: t, reason: collision with root package name */
    public boolean f20505t;
    public com.byazt.t.tt tt;
    public com.byazt.zz.n uj;
    public com.byazt.t.tt ve;

    /* JADX INFO: renamed from: x, reason: collision with root package name */
    public i f20506x;

    public tt(com.byazt.t.tt ttVar, DownloadTask downloadTask, a aVar) {
        this.f20505t = false;
        this.ve = ttVar;
        this.f20504n = downloadTask;
        if (downloadTask != null) {
            this.f20501a = downloadTask.getDownloadInfo();
        }
        this.sp = aVar;
        this.f20503i = com.byazt.zz.ve.zm();
        this.ve.c(this);
    }

    private boolean n() {
        return this.f20502da || this.sl;
    }

    private void uj() {
        i iVar = this.f20506x;
        if (iVar != null) {
            iVar.uj();
            this.f20506x = null;
        }
    }

    private String ve() {
        return this.f20501a.getConnectionUrl();
    }

    public void c(long j10, long j11) {
        com.byazt.zz.n nVar = this.uj;
        if (nVar == null) {
            return;
        }
        nVar.c(j10, j11);
    }

    @Override // java.lang.Runnable
    @SuppressLint({"DefaultLocale"})
    public void run() {
        Process.setThreadPriority(10);
        this.tt = this.ve;
        while (true) {
            try {
                this.tt.c(this);
                if (!c(this.tt)) {
                    this.tt.c(false);
                    break;
                }
                this.tt.c(false);
                if (n()) {
                    break;
                }
                this.tt = this.sp.c(this.tt.my());
                if (n() || this.tt == null) {
                    break;
                }
                try {
                    Thread.sleep(50L);
                } catch (Throwable th) {
                    m.c(th);
                }
            } catch (Throwable th2) {
                com.byazt.t.tt ttVar = this.tt;
                if (ttVar != null) {
                    ttVar.c(false);
                }
                uj();
                this.sp.c(this);
                throw th2;
            }
        }
        com.byazt.t.tt ttVar2 = this.tt;
        if (ttVar2 != null) {
            ttVar2.c(false);
        }
        uj();
        this.sp.c(this);
    }

    public void tt() {
        this.sl = true;
        com.byazt.zz.n nVar = this.uj;
        if (nVar != null) {
            nVar.ve();
        }
    }

    /* JADX WARN: Code duplicated, block: B:213:0x0106 A[EXC_TOP_SPLITTER, SYNTHETIC] */
    /* JADX WARN: Code duplicated, block: B:218:0x00fa A[SYNTHETIC] */
    /* JADX WARN: Code duplicated, block: B:219:0x0175 A[SYNTHETIC] */
    /* JADX WARN: Code duplicated, block: B:66:0x00fe A[Catch: all -> 0x01b1, BaseException -> 0x01cd, TRY_ENTER, TryCatch #7 {all -> 0x01b1, blocks: (B:22:0x004e, B:26:0x0058, B:30:0x0063, B:35:0x00b2, B:37:0x00b6, B:45:0x00cb, B:62:0x00f4, B:66:0x00fe, B:68:0x0102, B:79:0x0130, B:76:0x0128, B:78:0x012f, B:51:0x00da, B:53:0x00de), top: B:205:0x004e }] */
    /* JADX WARN: Code duplicated, block: B:68:0x0102 A[Catch: all -> 0x01b1, BaseException -> 0x01cd, TRY_LEAVE, TryCatch #7 {all -> 0x01b1, blocks: (B:22:0x004e, B:26:0x0058, B:30:0x0063, B:35:0x00b2, B:37:0x00b6, B:45:0x00cb, B:62:0x00f4, B:66:0x00fe, B:68:0x0102, B:79:0x0130, B:76:0x0128, B:78:0x012f, B:51:0x00da, B:53:0x00de), top: B:205:0x004e }] */
    /* JADX WARN: Code duplicated, block: B:72:0x0110  */
    /* JADX WARN: Code duplicated, block: B:73:0x0111 A[Catch: all -> 0x0127, BaseException -> 0x012e, TryCatch #17 {BaseException -> 0x012e, all -> 0x0127, blocks: (B:70:0x0106, B:73:0x0111, B:74:0x0126), top: B:213:0x0106 }] */
    /* JADX WARN: Code duplicated, block: B:83:0x0146 A[Catch: all -> 0x01ad, BaseException -> 0x01af, TryCatch #5 {all -> 0x01ad, blocks: (B:81:0x013f, B:83:0x0146, B:87:0x0152, B:88:0x0158, B:89:0x0169, B:95:0x0177, B:96:0x0185, B:104:0x0190, B:106:0x0194, B:114:0x01a9, B:115:0x01ac), top: B:202:0x006c }] */
    private boolean c(com.byazt.t.tt ttVar) {
        com.byazt.t.tt ttVarN;
        long j10;
        boolean z10;
        long jC;
        com.byazt.m.x xVarC;
        Throwable th;
        i iVar;
        i iVar2;
        int iTt;
        long jVe;
        while (true) {
            if (!ttVar.uj() || !ttVar.a() || (ttVarN = ttVar.n()) == null || ttVarN.my() != ttVar.my()) {
                ttVarN = null;
            }
            com.byazt.t.tt ttVar2 = ttVarN;
            if (ttVar2 != null && ttVar2.i()) {
                return true;
            }
            long jYp = ttVar.yp();
            long jM = ttVar.m();
            long jYp2 = ttVar.yp();
            if (ttVar2 != null) {
                jYp2 = ttVar2.yp();
                jYp = ttVar2.yp();
                jM = ttVar2.m();
            }
            long j11 = jYp;
            long j12 = jM;
            long jC2 = 0;
            boolean z11 = false;
            try {
                try {
                    if (n()) {
                        uj();
                        return false;
                    }
                    String strVe = ve();
                    boolean z12 = this.f20506x != null;
                    this.f20505t = z12;
                    ttVar.tt(z12);
                    try {
                        try {
                            try {
                                try {
                                    if (!this.f20505t) {
                                        List<com.byazt.t.ve> listC = com.byazt.w.a.c(this.f20501a.getExtraHeaders(), this.f20501a.geteTag(), j11, j12);
                                        listC.add(new com.byazt.t.ve("Chunk-Index", String.valueOf(ttVar.my())));
                                        com.byazt.w.a.c(listC, this.f20501a);
                                        com.byazt.w.a.tt(listC, this.f20501a);
                                        this.f20506x = com.byazt.zz.ve.c(this.f20501a.isNeedDefaultHttpServiceBackUp(), this.f20501a.getMaxBytes(), strVe, listC);
                                    }
                                    i iVar3 = this.f20506x;
                                    if (iVar3 != null && this.sp != null) {
                                        try {
                                            int iTt2 = iVar3.tt();
                                            if (iTt2 < 200 || iTt2 >= 300) {
                                                this.sp.c(this.f20506x);
                                            }
                                        } catch (Throwable th2) {
                                            th = th2;
                                            m.c(th);
                                        }
                                    }
                                } catch (Throwable th3) {
                                    th = th3;
                                    if (n()) {
                                        uj();
                                        return true;
                                    }
                                    try {
                                        com.byazt.w.a.c(th, "downloadChunkInner");
                                    } catch (BaseException e10) {
                                        this.sp.tt(e10);
                                    }
                                    uj();
                                    return z10;
                                }
                            } catch (BaseException e11) {
                                e = e11;
                                j10 = jYp2;
                                z10 = false;
                            }
                        } catch (BaseException e12) {
                            try {
                                throw e12;
                            } catch (Throwable th4) {
                                th = th4;
                                th = th;
                                iVar = this.f20506x;
                                if (iVar == null) {
                                    throw th;
                                }
                                throw th;
                            }
                        } catch (Throwable th5) {
                            try {
                                com.byazt.w.a.c(th5, "ChunkRunnableConnection");
                                i iVar4 = this.f20506x;
                                if (iVar4 != null && this.sp != null) {
                                    try {
                                        int iTt3 = iVar4.tt();
                                        if (iTt3 < 200 || iTt3 >= 300) {
                                            this.sp.c(this.f20506x);
                                        }
                                    } catch (Throwable th6) {
                                        th = th6;
                                        m.c(th);
                                    }
                                }
                                if (n()) {
                                    uj();
                                    return false;
                                }
                                iVar2 = this.f20506x;
                                if (iVar2 != null) {
                                    if (!this.f20505t) {
                                        try {
                                            iTt = iVar2.tt();
                                            if (com.byazt.w.a.uj(iTt)) {
                                                throw new BaseException(1002, String.format("Http response error , code is : %s ", String.valueOf(iTt)));
                                            }
                                        } catch (BaseException e13) {
                                            throw e13;
                                        } catch (Throwable th7) {
                                            com.byazt.w.a.c(th7, "ChunkRunnableGetResponseCode");
                                        }
                                    }
                                    z10 = false;
                                    j10 = jYp2;
                                    this.uj = new com.byazt.zz.n(this.f20501a, strVe, this.f20506x, ttVar, this.sp);
                                    if (ttVar2 != null) {
                                        jVe = ttVar2.ve(false);
                                        if (j12 != 0) {
                                            jVe = (j12 - j11) + 1;
                                        }
                                        this.uj.c(ttVar2.yp(), ttVar2.m(), jVe);
                                    }
                                    try {
                                        this.uj.uj();
                                        uj();
                                        return true;
                                    } catch (BaseException e14) {
                                        e = e14;
                                        z11 = true;
                                    }
                                } else {
                                    throw new BaseException(1022, new IOException("download can't continue, chunk connection is null"));
                                }
                            } catch (Throwable th8) {
                                th = th8;
                                th = th;
                                iVar = this.f20506x;
                                if (iVar == null && this.sp != null) {
                                    try {
                                        int iTt4 = iVar.tt();
                                        if (iTt4 < 200 || iTt4 >= 300) {
                                            this.sp.c(this.f20506x);
                                            throw th;
                                        }
                                        throw th;
                                    } catch (Throwable th9) {
                                        m.c(th9);
                                        throw th;
                                    }
                                }
                                throw th;
                            }
                            z11 = false;
                        }
                        if (n()) {
                            uj();
                            return false;
                        }
                        iVar2 = this.f20506x;
                        if (iVar2 != null) {
                            if (!this.f20505t) {
                                iTt = iVar2.tt();
                                if (com.byazt.w.a.uj(iTt)) {
                                    throw new BaseException(1002, String.format("Http response error , code is : %s ", String.valueOf(iTt)));
                                }
                            }
                            z10 = false;
                            j10 = jYp2;
                            this.uj = new com.byazt.zz.n(this.f20501a, strVe, this.f20506x, ttVar, this.sp);
                            if (ttVar2 != null) {
                                jVe = ttVar2.ve(false);
                                if (j12 != 0 && j12 >= j11) {
                                    jVe = (j12 - j11) + 1;
                                }
                                this.uj.c(ttVar2.yp(), ttVar2.m(), jVe);
                            }
                            this.uj.uj();
                            uj();
                            return true;
                        }
                        throw new BaseException(1022, new IOException("download can't continue, chunk connection is null"));
                    } catch (BaseException e15) {
                        e = e15;
                        z11 = false;
                    }
                } catch (Throwable th10) {
                    th = th10;
                    z10 = false;
                }
            } catch (BaseException e16) {
                e = e16;
                j10 = jYp2;
                z10 = false;
            }
            z11 = false;
            try {
                if (n()) {
                    uj();
                    return true;
                }
                if (com.byazt.w.a.tt(e)) {
                    this.sp.c(e, z10);
                    uj();
                    return z10;
                }
                if (this.sp.c(e)) {
                    if (com.byazt.w.a.c(e)) {
                        this.sp.c(e, true);
                        uj();
                        return z10;
                    }
                    if (!z11) {
                        jC = jC2;
                    } else if (this.uj != null) {
                        if (com.byazt.w.c.c(32)) {
                            jC = this.uj.c() - this.uj.n();
                            if (jC > 0) {
                                c(ttVar, this.uj.n());
                            } else if (jC < 0) {
                            }
                        } else {
                            jC2 = this.uj.c() - j10;
                            c(ttVar, j10);
                        }
                        jC = jC2;
                    } else {
                        this.sp.tt(e);
                        uj();
                        return z10;
                    }
                    if (com.byazt.w.c.c(16)) {
                        xVarC = this.sp.c(ttVar, e, jC);
                    } else {
                        xVarC = this.sp.c(e, jC);
                    }
                    if (xVarC == com.byazt.m.x.RETURN) {
                        uj();
                        return z10;
                    }
                    ttVar.tt(z10);
                    uj();
                    uj();
                } else {
                    if (this.f20501a.isNeedChunkDowngradeRetry() && !this.f20501a.isChunkDowngradeRetryUsed() && this.f20501a.getChunkCount() > 1 && com.byazt.w.a.c(e, this.f20501a)) {
                        this.sp.ve(e);
                        uj();
                        return z10;
                    }
                    this.sp.tt(e);
                    uj();
                    return z10;
                }
            } catch (Throwable th11) {
                uj();
                throw th11;
            }
        }
    }

    public tt(com.byazt.t.tt ttVar, DownloadTask downloadTask, i iVar, a aVar) {
        this(ttVar, downloadTask, aVar);
        this.f20506x = iVar;
    }

    private void c(com.byazt.t.tt ttVar, long j10) {
        com.byazt.t.tt ttVarN = ttVar.uj() ? ttVar.n() : ttVar;
        if (ttVarN != null) {
            if (ttVarN.x()) {
                this.f20503i.c(ttVarN.sl(), ttVarN.tt(), j10);
            }
            ttVarN.tt(j10);
            this.f20503i.c(ttVarN.sl(), ttVarN.my(), ttVarN.tt(), j10);
            return;
        }
        if (ttVar.uj()) {
            this.f20503i.c(ttVar.sl(), ttVar.my(), j10);
        }
    }

    public void c() {
        this.f20502da = true;
        com.byazt.zz.n nVar = this.uj;
        if (nVar != null) {
            nVar.tt();
        }
    }
}
