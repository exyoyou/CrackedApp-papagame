package com.byazt.utw;

import android.os.SystemClock;
import android.text.TextUtils;
import com.byazt.nr.m;
import com.bykv.vk.component.ttvideo.player.MediaPlayer;
import java.io.File;
import java.io.IOException;
import java.io.InputStream;
import java.net.SocketTimeoutException;
import java.util.List;
import net.lingala.zip4j.util.e;

/* JADX INFO: loaded from: classes9.dex */
@com.byazt.zqa.c(c = {0, 1, MediaPlayer.MEDIA_PLAYER_OPTION_CMAF_MPD_SOCKET_CONNECT_TIME, 13})
public class tt extends com.byazt.utw.c {

    /* JADX INFO: renamed from: t, reason: collision with root package name */
    public final Object f21011t;

    /* JADX INFO: renamed from: u, reason: collision with root package name */
    public final Object f21012u;
    public final int yp;

    /* JADX INFO: renamed from: z, reason: collision with root package name */
    public final InterfaceC0457tt f21013z;

    /* JADX INFO: renamed from: com.byazt.utw.tt$tt, reason: collision with other inner class name */
    public interface InterfaceC0457tt {
        void c(tt ttVar);
    }

    public tt(c cVar) {
        super(cVar.uj, cVar.f21017n);
        this.yp = cVar.sp;
        this.f21013z = cVar.f21018x;
        this.f21011t = this;
        this.sp = cVar.f21015c;
        this.f21008x = cVar.tt;
        this.f21002a = cVar.f21014a;
        this.f21005i = cVar.ve;
        this.f21012u = cVar.f21016i;
    }

    private void c(x.c cVar) throws Throwable {
        boolean z10;
        File fileVe = this.f21003c.ve(this.f21008x);
        long length = fileVe.length();
        int i10 = this.yp;
        if (i10 > 0 && length >= i10) {
            m.c("TAG_PROXY_DownloadTask", "no necessary to download for " + this.f21008x + ", cache file size: " + length + ", max: " + this.yp);
            return;
        }
        int iN = n();
        com.byazt.emg.c cVarQuery = this.tt.query(this.f21008x, iN);
        if (cVarQuery != null && length >= cVarQuery.ve) {
            if (uj.f21023n) {
                m.c("TAG_PROXY_DownloadTask", "file download complete, key: " + this.f21008x);
                return;
            }
            return;
        }
        uj();
        int i11 = (int) length;
        com.byazt.ydv.c cVarC = c(cVar, i11, this.yp, "GET");
        if (cVarC == null) {
            return;
        }
        n nVar = null;
        try {
            uj();
            String strC = com.byazt.nxx.c.c(cVarC, uj.sp, true);
            if (strC != null) {
                throw new com.byazt.ju.ve(strC + ", rawKey: " + this.sp + ", url: " + cVar);
            }
            int iC = com.byazt.nxx.c.c(cVarC);
            if (cVarQuery != null && cVarQuery.ve != iC) {
                if (uj.f21023n) {
                    m.uj("TAG_PROXY_DownloadTask", "Content-Length not match, old: " + cVarQuery.ve + ", " + iC + ", key: " + this.f21008x);
                }
                throw new com.byazt.ju.tt("Content-Length not match, old length: " + cVarQuery.ve + ", new length: " + iC + ", rawKey: " + this.sp + ", currentUrl: " + cVar + ", previousInfo: " + cVarQuery.f13524n);
            }
            com.byazt.nxx.c.c(cVarC, this.tt, this.f21008x, iN);
            com.byazt.emg.c cVarQuery2 = this.tt.query(this.f21008x, iN);
            int i12 = cVarQuery2 == null ? 0 : cVarQuery2.ve;
            InputStream inputStreamUj = cVarC.uj();
            n nVar2 = new n(fileVe, uj.f21019a ? "rwd" : e.f94694e0);
            try {
                nVar2.c(length);
                if (uj.f21023n) {
                    m.c("TAG_PROXY_DownloadTask", "preload start from: ".concat(String.valueOf(length)));
                }
                byte[] bArr = new byte[8192];
                while (true) {
                    int i13 = inputStreamUj.read(bArr);
                    if (i13 >= 0) {
                        uj();
                        if (i13 > 0) {
                            nVar2.c(bArr, 0, i13);
                            i11 += i13;
                            this.ve.addAndGet(i13);
                            c(i12, i11);
                        }
                        int i14 = this.yp;
                        if (i14 > 0 && i11 >= i14) {
                            boolean z11 = uj.f21023n;
                            if (z11) {
                                m.tt("TAG_PROXY_DownloadTask", "download, more data received, currentCacheFileSize: " + i11 + ", max: " + this.yp);
                            }
                            com.byazt.nxx.c.c(cVarC.uj());
                            nVar2.c();
                            c();
                            if (z11) {
                                m.tt("TAG_PROXY_DownloadTask", "cancel call");
                                return;
                            }
                            return;
                        }
                        uj();
                    } else {
                        try {
                            ve();
                            if (uj.f21023n) {
                                m.c("TAG_PROXY_DownloadTask", "download succeed, no need to cancel call");
                            }
                            com.byazt.nxx.c.c(cVarC.uj());
                            nVar2.c();
                            return;
                        } catch (Throwable th) {
                            th = th;
                            nVar = nVar2;
                            z10 = false;
                        }
                    }
                    com.byazt.nxx.c.c(cVarC.uj());
                    if (nVar != null) {
                        nVar.c();
                    }
                    if (z10) {
                        c();
                        if (uj.f21023n) {
                            m.tt("TAG_PROXY_DownloadTask", "cancel call");
                        }
                    }
                    throw th;
                }
            } catch (Throwable th2) {
                th = th2;
                nVar = nVar2;
                z10 = true;
            }
        } catch (Throwable th3) {
            th = th3;
        }
    }

    private boolean sp() throws com.byazt.ju.c {
        while (this.f21005i.c()) {
            uj();
            x.c cVarTt = this.f21005i.tt();
            try {
                c(cVarTt);
                return true;
            } catch (com.byazt.ju.ve unused) {
                cVarTt.c();
                a();
            } catch (n.c unused2) {
                a();
                return false;
            } catch (IOException e10) {
                if (e10 instanceof SocketTimeoutException) {
                    cVarTt.tt();
                }
                if (!tt()) {
                    a();
                }
            } catch (Throwable unused3) {
                return false;
            }
        }
        return false;
    }

    @Override // java.lang.Runnable
    public void run() {
        this.f21003c.c(this.f21008x);
        long jElapsedRealtime = SystemClock.elapsedRealtime();
        try {
            sp();
        } catch (Throwable unused) {
        }
        this.uj.set(SystemClock.elapsedRealtime() - jElapsedRealtime);
        this.f21003c.tt(this.f21008x);
        InterfaceC0457tt interfaceC0457tt = this.f21013z;
        if (interfaceC0457tt != null) {
            interfaceC0457tt.c(this);
        }
    }

    @com.byazt.zqa.c(c = {0, 1, MediaPlayer.MEDIA_PLAYER_OPTION_CMAF_MPD_SOCKET_CONNECT_TIME, 194})
    static final class c {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        public List<a.tt> f21014a;

        /* JADX INFO: renamed from: c, reason: collision with root package name */
        public String f21015c;

        /* JADX INFO: renamed from: i, reason: collision with root package name */
        public Object f21016i;

        /* JADX INFO: renamed from: n, reason: collision with root package name */
        public com.byazt.emg.ve f21017n;
        public int sp;
        public String tt;
        public com.byazt.byh.c uj;
        public x ve;

        /* JADX INFO: renamed from: x, reason: collision with root package name */
        public InterfaceC0457tt f21018x;

        public c c(String str) {
            if (TextUtils.isEmpty(str)) {
                throw new IllegalArgumentException("rawKey == null");
            }
            this.f21015c = str;
            return this;
        }

        public c tt(String str) {
            if (TextUtils.isEmpty(str)) {
                throw new IllegalArgumentException("key == null");
            }
            this.tt = str;
            return this;
        }

        public c c(x xVar) {
            if (xVar != null) {
                this.ve = xVar;
                return this;
            }
            throw new IllegalArgumentException("urls is empty");
        }

        public c c(com.byazt.byh.c cVar) {
            if (cVar != null) {
                this.uj = cVar;
                return this;
            }
            throw new IllegalArgumentException("cache == null");
        }

        public c c(com.byazt.emg.ve veVar) {
            if (veVar != null) {
                this.f21017n = veVar;
                return this;
            }
            throw new IllegalArgumentException("db == null");
        }

        public c c(List<a.tt> list) {
            this.f21014a = list;
            return this;
        }

        public c c(int i10) {
            this.sp = i10;
            return this;
        }

        public c c(InterfaceC0457tt interfaceC0457tt) {
            this.f21018x = interfaceC0457tt;
            return this;
        }

        public c c(Object obj) {
            this.f21016i = obj;
            return this;
        }

        public tt c() {
            if (this.uj != null && this.f21017n != null && !TextUtils.isEmpty(this.f21015c) && !TextUtils.isEmpty(this.tt) && this.ve != null) {
                return new tt(this);
            }
            throw new IllegalArgumentException();
        }
    }
}
