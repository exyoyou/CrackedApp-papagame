package com.byazt.tq;

import android.content.Context;
import androidx.core.app.NotificationCompat;
import com.byazt.dna.z;
import com.byazt.gqp.t;
import com.byazt.gqp.yp;
import com.byazt.jzl.a;
import com.byazt.nr.m;
import com.byazt.ut.uj;
import java.io.File;
import java.io.IOException;
import java.io.RandomAccessFile;
import java.net.SocketTimeoutException;
import java.nio.channels.FileLock;
import java.util.HashMap;
import java.util.concurrent.TimeUnit;
import java.util.concurrent.atomic.AtomicBoolean;
import net.lingala.zip4j.util.e;
import org.json.JSONObject;

/* JADX INFO: loaded from: classes6.dex */
@com.byazt.zqa.c(c = {0, 1, 1134, 13})
public class tt implements ve {

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public static final HashMap<String, tt> f20372c = new HashMap<>();

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public long f20373a;

    /* JADX INFO: renamed from: da, reason: collision with root package name */
    public RandomAccessFile f20374da;

    /* JADX INFO: renamed from: n, reason: collision with root package name */
    public File f20376n;
    public final a sl;

    /* JADX INFO: renamed from: t, reason: collision with root package name */
    public tt f20377t;
    public volatile long tt;

    /* JADX INFO: renamed from: u, reason: collision with root package name */
    public com.byazt.jzl.tt f20378u;
    public File uj;
    public final Object ve = new Object();
    public volatile long sp = -1;

    /* JADX INFO: renamed from: x, reason: collision with root package name */
    public volatile boolean f20379x = false;

    /* JADX INFO: renamed from: i, reason: collision with root package name */
    public volatile boolean f20375i = false;
    public AtomicBoolean yp = new AtomicBoolean(false);

    public tt(Context context, com.byazt.jzl.tt ttVar, a aVar) {
        this.tt = -2147483648L;
        this.f20373a = 0L;
        this.f20374da = null;
        this.sl = aVar;
        this.f20378u = ttVar;
        try {
            this.uj = com.byazt.vv.ve.tt(aVar.getCacheParentDir(), aVar.getFileNameKey());
            this.f20376n = com.byazt.vv.ve.ve(aVar.getCacheParentDir(), aVar.getFileNameKey());
            if (sp()) {
                this.f20374da = new RandomAccessFile(this.f20376n, "r");
            } else {
                this.f20374da = new RandomAccessFile(this.uj, e.f94694e0);
            }
            if (sp()) {
                return;
            }
            long length = this.uj.length();
            this.f20373a = length;
            if (length == aVar.getVideoSize() && this.f20373a != 0) {
                boolean zC = com.byazt.lt.c.c(com.byazt.lt.c.c(this.uj), aVar.getFileNameKey());
                aVar.getFileNameKey();
                if (zC) {
                    c(this.f20373a);
                    this.tt = this.f20373a;
                    return;
                }
            }
            if (!uj()) {
                com.byazt.lt.tt.tt("CSJ_MediaDLPlay", "no process lock, no download " + n());
            } else {
                synchronized (tt.class) {
                    if (a()) {
                        x();
                    } else {
                        tt ttVar2 = this.f20377t;
                        if (ttVar2 != null) {
                            this.tt = ttVar2.c();
                        }
                    }
                }
            }
        } catch (Throwable unused) {
            com.byazt.lt.tt.tt("CSJ_MediaDLPlay", "Error using file ", aVar.getUrl(), " as disc cache");
        }
    }

    private boolean a() {
        String strN = n();
        synchronized (tt.class) {
            HashMap<String, tt> map = f20372c;
            tt ttVar = map.get(strN);
            this.f20377t = ttVar;
            if (ttVar != null) {
                return false;
            }
            map.put(strN, this);
            return true;
        }
    }

    private long i() {
        return sp() ? this.f20376n.length() : this.uj.length();
    }

    private String n() {
        a aVar = this.sl;
        return aVar == null ? "" : aVar.getFileNameKey();
    }

    private boolean sp() {
        return this.f20376n.exists() && this.f20376n.length() > 0;
    }

    private boolean uj() {
        RandomAccessFile randomAccessFile = this.f20374da;
        if (randomAccessFile == null) {
            return false;
        }
        try {
            FileLock fileLockTryLock = randomAccessFile.getChannel().tryLock();
            if (fileLockTryLock == null) {
                if (fileLockTryLock != null) {
                    try {
                        fileLockTryLock.close();
                    } catch (IOException unused) {
                    }
                }
                return false;
            }
            try {
                fileLockTryLock.close();
                return true;
            } catch (IOException unused2) {
                return true;
            }
        } catch (IOException unused3) {
            return false;
        }
    }

    private void x() {
        t.c cVarTt = com.byazt.oy.tt.ve() != null ? com.byazt.oy.tt.ve().tt() : new t.c("v_cache");
        long connectTimeOutMills = this.sl.getConnectTimeOutMills();
        TimeUnit timeUnit = TimeUnit.MILLISECONDS;
        cVarTt.c(connectTimeOutMills, timeUnit).tt(this.sl.getReadTimeOutMills(), timeUnit).ve(this.sl.getWriteTimeOutMills(), timeUnit);
        t tVarC = cVarTt.c();
        this.sl.getFileNameKey();
        tVarC.c(new yp.c().c("RANGE", "bytes=" + this.f20373a + "-").c(this.sl.getUrl()).c().tt()).c(new com.byazt.gqp.ve() { // from class: com.byazt.tq.tt.1
            @Override // com.byazt.gqp.ve
            public void onFailure(com.byazt.gqp.tt ttVar, IOException iOException) {
                tt.this.f20375i = false;
                tt.this.tt = -1L;
                tt.this.c(true);
            }

            /* JADX WARN: Code restructure failed: missing block: B:106:0x023e, code lost:
            
                r16.close();
             */
            /* JADX WARN: Code restructure failed: missing block: B:107:0x0241, code lost:
            
                if (r7 == null) goto L109;
             */
            /* JADX WARN: Code restructure failed: missing block: B:108:0x0243, code lost:
            
                r7.close();
             */
            /* JADX WARN: Code restructure failed: missing block: B:109:0x0246, code lost:
            
                r21.close();
                r2 = r19.f20380c.uj.length();
             */
            /* JADX WARN: Code restructure failed: missing block: B:110:0x0259, code lost:
            
                if (r19.f20380c.f20375i == false) goto L222;
             */
            /* JADX WARN: Code restructure failed: missing block: B:112:0x0263, code lost:
            
                if (r2 != r19.f20380c.tt) goto L223;
             */
            /* JADX WARN: Code restructure failed: missing block: B:114:0x0269, code lost:
            
                if (r2 <= 0) goto L224;
             */
            /* JADX WARN: Code restructure failed: missing block: B:115:0x026b, code lost:
            
                r0 = r19.f20380c;
                r0.c(r0.tt);
             */
            /* JADX WARN: Code restructure failed: missing block: B:116:0x0274, code lost:
            
                return;
             */
            /* JADX WARN: Code restructure failed: missing block: B:117:0x0275, code lost:
            
                r0 = move-exception;
             */
            /* JADX WARN: Code restructure failed: missing block: B:118:0x0276, code lost:
            
                com.byazt.lt.tt.tt("CSJ_MediaDLPlay", "close stream error", r0);
             */
            /* JADX WARN: Code restructure failed: missing block: B:119:0x027d, code lost:
            
                return;
             */
            /* JADX WARN: Code restructure failed: missing block: B:222:?, code lost:
            
                return;
             */
            /* JADX WARN: Code restructure failed: missing block: B:223:?, code lost:
            
                return;
             */
            /* JADX WARN: Code restructure failed: missing block: B:224:?, code lost:
            
                return;
             */
            @Override // com.byazt.gqp.ve
            /*
                Code decompiled incorrectly, please refer to instructions dump.
                To view partially-correct add '--show-bad-code' argument
            */
            public void onResponse(com.byazt.gqp.tt r20, com.byazt.gqp.m r21) throws java.io.IOException {
                /*
                    Method dump skipped, instruction units count: 953
                    To view this dump add '--comments-level debug' option
                */
                throw new UnsupportedOperationException("Method not decompiled: com.byazt.tq.tt.AnonymousClass1.onResponse(com.byazt.gqp.tt, com.byazt.gqp.m):void");
            }
        });
    }

    @Override // com.byazt.tq.ve
    public long ve() throws IOException {
        if (!sp()) {
            synchronized (this.ve) {
                int i10 = 0;
                do {
                    if (this.tt == -2147483648L) {
                        try {
                            tt ttVar = this.f20377t;
                            if (ttVar != null) {
                                this.tt = ttVar.c();
                            }
                            i10 += 15;
                            this.ve.wait(5L);
                        } catch (InterruptedException e10) {
                            m.c(e10);
                            throw new IOException("total length InterruptException");
                        }
                    }
                } while (i10 <= 10000);
                return -1L;
            }
        }
        this.tt = this.f20376n.length();
        com.byazt.lt.tt.c("CSJ_MediaDLPlay", "totalLength= ", Long.valueOf(this.tt));
        return this.tt;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void c(boolean z10) {
        String strN = n();
        synchronized (tt.class) {
            try {
                if (z10) {
                    f20372c.remove(strN);
                } else {
                    HashMap<String, tt> map = f20372c;
                    if (map.get(strN) == this) {
                        map.remove(strN);
                    }
                }
            } catch (Throwable th) {
                throw th;
            }
        }
    }

    @Override // com.byazt.tq.ve
    public void tt() {
        try {
            if (!this.f20379x) {
                this.f20374da.close();
            }
            File file = this.uj;
            if (file != null) {
                file.setLastModified(System.currentTimeMillis());
            }
            File file2 = this.f20376n;
            if (file2 != null) {
                file2.setLastModified(System.currentTimeMillis());
            }
        } catch (Throwable th) {
            try {
                com.byazt.lt.tt.tt("CSJ_MediaDLPlay", "close error", th);
            } catch (Throwable th2) {
                c(false);
                throw th2;
            }
        }
        c(false);
        synchronized (this.ve) {
            this.f20379x = true;
        }
    }

    public long c() {
        return this.tt;
    }

    private void c(long j10, long j11, long j12, long j13, boolean z10, long j14) {
        z zVar;
        if ((z10 || this.yp.compareAndSet(false, true)) && (zVar = (z) uj.getService(NotificationCompat.CATEGORY_EVENT)) != null) {
            JSONObject jSONObject = new JSONObject();
            com.byazt.jzl.tt ttVar = this.f20378u;
            if (ttVar != null) {
                jSONObject = ttVar.c();
            }
            try {
                jSONObject.put("totalLength", j10);
                jSONObject.put("position", j11);
                jSONObject.put("cacheLength", j12);
                jSONObject.put("waitTime", j13);
                a aVar = this.sl;
                if (aVar != null) {
                    jSONObject.put("videoUrl", aVar.getUrl());
                }
                jSONObject.put("startSaveLength", j14);
            } catch (Exception unused) {
            }
            zVar.onExceptionEvent("video_wait", jSONObject, null);
        }
    }

    /* JADX WARN: Unsupported multi-entry loop pattern (BACK_EDGE: B:47:? -> B:36:0x0092). Please report as a decompilation issue!!! */
    @Override // com.byazt.tq.ve
    public int c(long j10, byte[] bArr, int i10, int i11) throws IOException {
        long j11;
        try {
            if (j10 == this.tt) {
                return -1;
            }
            int i12 = 0;
            long j12 = -1;
            int i13 = 0;
            while (!this.f20379x) {
                Object obj = this.ve;
                synchronized (obj) {
                    try {
                        long jI = i();
                        j11 = j12 == -1 ? jI : j12;
                        try {
                            if (j10 < jI) {
                                this.f20374da.seek(j10);
                                i13 = this.f20374da.read(bArr, i10, i11);
                            } else {
                                i12 += 33;
                                this.ve.wait(33L);
                                if (i12 >= 4000) {
                                    c(this.tt, j10, jI, i12, false, j11);
                                }
                            }
                        } catch (Throwable th) {
                            th = th;
                            throw th;
                        }
                    } catch (Throwable th2) {
                        th = th2;
                        obj = obj;
                        throw th;
                    }
                }
                if (i13 > 0) {
                    return i13;
                }
                if (i12 >= 10000) {
                    c(this.tt, j10, i(), i12, true, j11);
                    throw new SocketTimeoutException();
                }
                j12 = j11;
            }
            return -1;
        } catch (Throwable th3) {
            if (th3 instanceof IOException) {
                throw th3;
            }
            throw new IOException();
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void c(long j10) throws IOException {
        synchronized (this.ve) {
            if (this.f20376n.exists() && this.f20376n.length() >= j10) {
                this.sl.getUrl();
                this.sl.getFileNameKey();
                return;
            }
            try {
                if (this.uj.renameTo(this.f20376n)) {
                    RandomAccessFile randomAccessFile = this.f20374da;
                    if (randomAccessFile != null) {
                        randomAccessFile.close();
                    }
                    if (!this.f20379x) {
                        this.f20374da = new RandomAccessFile(this.f20376n, e.f94694e0);
                    }
                    this.sl.getFileNameKey();
                    this.sl.getUrl();
                    return;
                }
                throw new IOException("Error renaming file " + this.uj + " to " + this.f20376n + " for completion!");
            } catch (Throwable th) {
                com.byazt.lt.tt.tt("CSJ_MediaDLPlay", "complete error", th);
            }
        }
    }
}
