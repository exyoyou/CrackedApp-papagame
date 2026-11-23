package com.byazt.yqr;

import android.content.Context;
import com.byazt.fk.da;
import com.byazt.fk.u;
import com.byazt.gqp.nu;
import com.byazt.gqp.t;
import com.byazt.gqp.yp;
import com.byazt.nr.m;
import java.io.Closeable;
import java.io.File;
import java.io.IOException;
import java.io.InputStream;
import java.io.RandomAccessFile;
import java.util.ArrayList;
import java.util.List;
import java.util.concurrent.TimeUnit;
import net.lingala.zip4j.util.e;

/* JADX INFO: loaded from: classes9.dex */
@com.byazt.zqa.c(c = {0, 1, 982, 13})
public class tt {

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public Context f22400c;

    /* JADX INFO: renamed from: n, reason: collision with root package name */
    public File f22401n;
    public u tt;
    public File uj;
    public volatile boolean ve = false;

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final List<da.c> f22399a = new ArrayList();
    public volatile boolean sp = false;

    public tt(Context context, u uVar) {
        this.uj = null;
        this.f22401n = null;
        this.f22400c = context;
        this.tt = uVar;
        this.uj = com.byazt.vv.ve.tt(uVar.getCacheParentDir(), uVar.getFileNameKey());
        this.f22401n = com.byazt.vv.ve.ve(uVar.getCacheParentDir(), uVar.getFileNameKey());
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void n() {
        try {
            if (this.uj.renameTo(this.f22401n)) {
                return;
            }
            throw new IOException("Error renaming file " + this.uj + " to " + this.f22401n + " for completion!");
        } catch (Throwable th) {
            m.c(th);
            com.byazt.lt.tt.c("VideoPreload", th.getMessage());
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void uj() {
        try {
            this.f22401n.delete();
            this.uj.delete();
        } catch (Throwable th) {
            m.c(th);
        }
    }

    private void ve() {
        t.c cVarTt = com.byazt.oy.tt.ve() != null ? com.byazt.oy.tt.ve().tt() : new t.c("v_preload");
        long connectTimeOutMills = this.tt.getConnectTimeOutMills();
        TimeUnit timeUnit = TimeUnit.MILLISECONDS;
        cVarTt.c(connectTimeOutMills, timeUnit).tt(this.tt.getReadTimeOutMills(), timeUnit).ve(this.tt.getWriteTimeOutMills(), timeUnit);
        t tVarC = cVarTt.c();
        yp.c cVar = new yp.c();
        final long length = this.uj.length();
        int preloadSize = this.tt.getPreloadSize();
        boolean zIsPreloadAll = this.tt.isPreloadAll();
        int pitayaCacheSize = this.tt.getPitayaCacheSize();
        if (pitayaCacheSize > 0) {
            if (pitayaCacheSize >= this.tt.getVideoSize()) {
                zIsPreloadAll = true;
            } else {
                preloadSize = pitayaCacheSize;
            }
        }
        if (zIsPreloadAll) {
            cVar.c("RANGE", "bytes=" + length + "-").c(this.tt.getUrl()).c().tt();
        } else {
            cVar.c("RANGE", "bytes=" + length + "-" + preloadSize).c(this.tt.getUrl()).c().tt();
        }
        tVarC.c(cVar.tt()).c(new com.byazt.gqp.ve() { // from class: com.byazt.yqr.tt.1
            @Override // com.byazt.gqp.ve
            public void onFailure(com.byazt.gqp.tt ttVar, IOException iOException) {
                tt ttVar2 = tt.this;
                ttVar2.c(ttVar2.tt, 601, iOException.getMessage());
                ve.c(tt.this.tt);
            }

            /* JADX WARN: Code duplicated, block: B:84:0x0254 A[Catch: all -> 0x029e, TryCatch #9 {all -> 0x029e, blocks: (B:82:0x0244, B:84:0x0254, B:85:0x0258), top: B:108:0x0244 }] */
            @Override // com.byazt.gqp.ve
            public void onResponse(com.byazt.gqp.tt ttVar, com.byazt.gqp.m mVar) throws IOException {
                String str;
                InputStream inputStream;
                int iVe;
                RandomAccessFile randomAccessFile;
                nu nuVarA;
                InputStream inputStreamVe;
                long jC;
                RandomAccessFile randomAccessFile2;
                long j10 = length;
                int i10 = 4;
                String str2 = "VideoPreload";
                nu nuVar = null;
                if (mVar != null) {
                    try {
                        boolean zUj = mVar.uj();
                        if (zUj) {
                            nu nuVarA2 = mVar.a();
                            try {
                                nuVarA = mVar.a();
                                if (!zUj || nuVarA == null) {
                                    inputStreamVe = null;
                                    jC = 0;
                                } else {
                                    try {
                                        jC = length + nuVarA.c();
                                        inputStreamVe = nuVarA.ve();
                                    } catch (Throwable th) {
                                        th = th;
                                        str = "VideoPreload";
                                        inputStream = null;
                                        randomAccessFile = null;
                                        nuVar = nuVarA;
                                        iVe = 601;
                                        m.c(th);
                                        tt.this.uj();
                                        tt ttVar2 = tt.this;
                                        u uVar = ttVar2.tt;
                                        if (mVar != null) {
                                            iVe = mVar.ve();
                                        }
                                        ttVar2.c(uVar, iVe, th.getMessage());
                                        tt.this.c(randomAccessFile);
                                        tt.this.c(inputStream);
                                        tt.this.c(nuVar);
                                        tt.this.c(mVar);
                                        com.byazt.lt.tt.c(str, "Pre finally ", tt.this.tt.getUrl(), " Preload size=", Integer.valueOf(tt.this.tt.getPreloadSize()));
                                    }
                                }
                                if (inputStreamVe == null) {
                                    try {
                                        tt ttVar3 = tt.this;
                                        ttVar3.c(ttVar3.tt, mVar.ve(), mVar.n());
                                        tt.this.c((Closeable) null);
                                        tt.this.c(inputStreamVe);
                                        tt.this.c(nuVarA);
                                        tt.this.c(mVar);
                                        com.byazt.lt.tt.c("VideoPreload", "Pre finally ", tt.this.tt.getUrl(), " Preload size=", Integer.valueOf(tt.this.tt.getPreloadSize()));
                                    } catch (Throwable th2) {
                                        th = th2;
                                        inputStream = inputStreamVe;
                                        str = "VideoPreload";
                                        randomAccessFile = null;
                                        nuVar = nuVarA;
                                        iVe = 601;
                                        m.c(th);
                                        tt.this.uj();
                                        tt ttVar4 = tt.this;
                                        u uVar2 = ttVar4.tt;
                                        if (mVar != null) {
                                            iVe = mVar.ve();
                                        }
                                        ttVar4.c(uVar2, iVe, th.getMessage());
                                        tt.this.c(randomAccessFile);
                                        tt.this.c(inputStream);
                                        tt.this.c(nuVar);
                                        tt.this.c(mVar);
                                        com.byazt.lt.tt.c(str, "Pre finally ", tt.this.tt.getUrl(), " Preload size=", Integer.valueOf(tt.this.tt.getPreloadSize()));
                                    }
                                } else {
                                    try {
                                        randomAccessFile = new RandomAccessFile(tt.this.uj, e.f94694e0);
                                        try {
                                            byte[] bArr = new byte[8192];
                                            long j11 = 0;
                                            int i11 = 0;
                                            while (true) {
                                                int i12 = inputStreamVe.read(bArr, i11, 8192 - i11);
                                                if (i12 == -1) {
                                                    str = str2;
                                                    if (tt.this.tt.isPreloadAll() && jC == tt.this.uj.length()) {
                                                        tt.this.n();
                                                    }
                                                    tt ttVar5 = tt.this;
                                                    ttVar5.c(ttVar5.tt, mVar.ve());
                                                    randomAccessFile2 = randomAccessFile;
                                                    break;
                                                }
                                                if (tt.this.ve) {
                                                    try {
                                                        tt ttVar6 = tt.this;
                                                        ttVar6.tt(ttVar6.tt, mVar.ve());
                                                        tt.this.c(randomAccessFile);
                                                        tt.this.c(inputStreamVe);
                                                        tt.this.c(nuVarA);
                                                        tt.this.c(mVar);
                                                        Object[] objArr = new Object[i10];
                                                        objArr[0] = "Pre finally ";
                                                        objArr[1] = tt.this.tt.getUrl();
                                                        objArr[2] = " Preload size=";
                                                        objArr[3] = Integer.valueOf(tt.this.tt.getPreloadSize());
                                                        com.byazt.lt.tt.c(str2, objArr);
                                                    } catch (Throwable th3) {
                                                        th = th3;
                                                        inputStream = inputStreamVe;
                                                        str = str2;
                                                        nuVar = nuVarA;
                                                        iVe = 601;
                                                        m.c(th);
                                                        tt.this.uj();
                                                        tt ttVar7 = tt.this;
                                                        u uVar3 = ttVar7.tt;
                                                        if (mVar != null) {
                                                            iVe = mVar.ve();
                                                        }
                                                        ttVar7.c(uVar3, iVe, th.getMessage());
                                                        tt.this.c(randomAccessFile);
                                                        tt.this.c(inputStream);
                                                        tt.this.c(nuVar);
                                                        tt.this.c(mVar);
                                                        com.byazt.lt.tt.c(str, "Pre finally ", tt.this.tt.getUrl(), " Preload size=", Integer.valueOf(tt.this.tt.getPreloadSize()));
                                                    }
                                                } else {
                                                    i11 += i12;
                                                    str = str2;
                                                    j11 += (long) i12;
                                                    try {
                                                        if (j11 % 8192 == 0 || j11 == jC - length) {
                                                            com.byazt.vv.ve.c(randomAccessFile, bArr, j10, i11);
                                                            j10 += (long) i11;
                                                            i11 = 0;
                                                        }
                                                        str2 = str;
                                                        i10 = 4;
                                                    } catch (Throwable th4) {
                                                        th = th4;
                                                    }
                                                }
                                                th = th4;
                                                inputStream = inputStreamVe;
                                                nuVar = nuVarA;
                                                str = str;
                                                iVe = 601;
                                                m.c(th);
                                                tt.this.uj();
                                                tt ttVar8 = tt.this;
                                                u uVar4 = ttVar8.tt;
                                                if (mVar != null) {
                                                    iVe = mVar.ve();
                                                }
                                                ttVar8.c(uVar4, iVe, th.getMessage());
                                                tt.this.c(randomAccessFile);
                                                tt.this.c(inputStream);
                                                tt.this.c(nuVar);
                                                tt.this.c(mVar);
                                                com.byazt.lt.tt.c(str, "Pre finally ", tt.this.tt.getUrl(), " Preload size=", Integer.valueOf(tt.this.tt.getPreloadSize()));
                                            }
                                            tt.this.c(randomAccessFile2);
                                            tt.this.c(inputStreamVe);
                                            tt.this.c(nuVarA);
                                            tt.this.c(mVar);
                                            com.byazt.lt.tt.c(str, "Pre finally ", tt.this.tt.getUrl(), " Preload size=", Integer.valueOf(tt.this.tt.getPreloadSize()));
                                        } catch (Throwable th5) {
                                            th = th5;
                                            str = str2;
                                        }
                                    } catch (Throwable th6) {
                                        th = th6;
                                        inputStream = inputStreamVe;
                                        nuVar = nuVarA;
                                        str = "VideoPreload";
                                        iVe = 601;
                                        randomAccessFile = null;
                                        m.c(th);
                                        tt.this.uj();
                                        tt ttVar9 = tt.this;
                                        u uVar5 = ttVar9.tt;
                                        if (mVar != null) {
                                            iVe = mVar.ve();
                                        }
                                        ttVar9.c(uVar5, iVe, th.getMessage());
                                        tt.this.c(randomAccessFile);
                                        tt.this.c(inputStream);
                                        tt.this.c(nuVar);
                                        tt.this.c(mVar);
                                        com.byazt.lt.tt.c(str, "Pre finally ", tt.this.tt.getUrl(), " Preload size=", Integer.valueOf(tt.this.tt.getPreloadSize()));
                                    }
                                }
                            } catch (Throwable th7) {
                                th = th7;
                                nuVar = nuVarA2;
                                str = "VideoPreload";
                                inputStream = null;
                            }
                        } else {
                            try {
                                tt ttVar10 = tt.this;
                                ttVar10.c(ttVar10.tt, mVar.ve(), mVar.n());
                                tt.this.c((Closeable) null);
                                tt.this.c((Closeable) null);
                                tt.this.c((Closeable) null);
                                tt.this.c(mVar);
                                com.byazt.lt.tt.c("VideoPreload", "Pre finally ", tt.this.tt.getUrl(), " Preload size=", Integer.valueOf(tt.this.tt.getPreloadSize()));
                            } catch (Throwable th8) {
                                th = th8;
                                str = "VideoPreload";
                                inputStream = null;
                                randomAccessFile = null;
                                iVe = 601;
                                try {
                                    m.c(th);
                                    tt.this.uj();
                                    tt ttVar11 = tt.this;
                                    u uVar6 = ttVar11.tt;
                                    if (mVar != null) {
                                        iVe = mVar.ve();
                                    }
                                    ttVar11.c(uVar6, iVe, th.getMessage());
                                    tt.this.c(randomAccessFile);
                                    tt.this.c(inputStream);
                                    tt.this.c(nuVar);
                                    tt.this.c(mVar);
                                    com.byazt.lt.tt.c(str, "Pre finally ", tt.this.tt.getUrl(), " Preload size=", Integer.valueOf(tt.this.tt.getPreloadSize()));
                                } finally {
                                    tt.this.c(randomAccessFile);
                                    tt.this.c(inputStream);
                                    tt.this.c(nuVar);
                                    tt.this.c(mVar);
                                    com.byazt.lt.tt.c(str, "Pre finally ", tt.this.tt.getUrl(), " Preload size=", Integer.valueOf(tt.this.tt.getPreloadSize()));
                                    ve.c(tt.this.tt);
                                }
                            }
                        }
                    } catch (Throwable th9) {
                        th = th9;
                        str = "VideoPreload";
                        inputStream = null;
                        iVe = 601;
                        randomAccessFile = null;
                        nuVar = null;
                    }
                } else {
                    str = "VideoPreload";
                    try {
                        tt ttVar12 = tt.this;
                        iVe = 601;
                        try {
                            ttVar12.c(ttVar12.tt, 601, "Network link failed.");
                            inputStreamVe = null;
                            randomAccessFile2 = null;
                            nuVarA = null;
                            tt.this.c(randomAccessFile2);
                            tt.this.c(inputStreamVe);
                            tt.this.c(nuVarA);
                            tt.this.c(mVar);
                            com.byazt.lt.tt.c(str, "Pre finally ", tt.this.tt.getUrl(), " Preload size=", Integer.valueOf(tt.this.tt.getPreloadSize()));
                        } catch (Throwable th10) {
                            th = th10;
                            inputStream = null;
                            randomAccessFile = null;
                            nuVar = null;
                            m.c(th);
                            tt.this.uj();
                            tt ttVar13 = tt.this;
                            u uVar7 = ttVar13.tt;
                            if (mVar != null) {
                                iVe = mVar.ve();
                            }
                            ttVar13.c(uVar7, iVe, th.getMessage());
                            tt.this.c(randomAccessFile);
                            tt.this.c(inputStream);
                            tt.this.c(nuVar);
                            tt.this.c(mVar);
                            com.byazt.lt.tt.c(str, "Pre finally ", tt.this.tt.getUrl(), " Preload size=", Integer.valueOf(tt.this.tt.getPreloadSize()));
                        }
                    } catch (Throwable th11) {
                        th = th11;
                        iVe = 601;
                    }
                }
            }
        });
    }

    private boolean tt() {
        if (this.f22401n.exists()) {
            return true;
        }
        if (!this.tt.isPreloadAll()) {
            if (this.uj.length() >= this.tt.getPreloadSize()) {
                return true;
            }
            if (this.tt.getPitayaCacheSize() > 0 && this.uj.length() >= this.tt.getPitayaCacheSize()) {
                return true;
            }
        }
        return false;
    }

    public void c(da.c cVar) {
        if (this.sp) {
            synchronized (da.c.class) {
                this.f22399a.add(cVar);
            }
            return;
        }
        this.f22399a.add(cVar);
        if (tt()) {
            com.byazt.lt.tt.c("VideoPreload", "Cache file is exist");
            this.tt.setSourceType(1);
            c(this.tt, 200);
            ve.c(this.tt);
            return;
        }
        this.sp = true;
        this.tt.setSourceType(0);
        ve();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void tt(u uVar, int i10) {
        synchronized (da.c.class) {
            for (da.c cVar : this.f22399a) {
                if (cVar != null) {
                    cVar.cancel(uVar, i10);
                }
            }
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void c(Closeable closeable) {
        if (closeable != null) {
            try {
                closeable.close();
            } catch (Exception unused) {
            }
        }
    }

    public u c() {
        return this.tt;
    }

    public void c(boolean z10) {
        this.ve = z10;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void c(u uVar, int i10) {
        synchronized (da.c.class) {
            for (da.c cVar : this.f22399a) {
                if (cVar != null) {
                    cVar.onVideoPreloadSuccess(uVar, i10);
                }
            }
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void c(u uVar, int i10, String str) {
        synchronized (da.c.class) {
            for (da.c cVar : this.f22399a) {
                if (cVar != null) {
                    cVar.onVideoPreloadFail(uVar, i10, str);
                }
            }
        }
    }
}
