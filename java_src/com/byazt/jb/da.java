package com.byazt.jb;

import java.io.Closeable;
import java.io.IOException;
import java.util.List;
import java.util.logging.Level;
import java.util.logging.Logger;

/* JADX INFO: loaded from: classes6.dex */
@com.byazt.zqa.c(c = {0, 1, 63, 72})
public final class da implements Closeable {
    public static final Logger tt = Logger.getLogger(n.class.getName());

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public int f15731a;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final uj.tt f15732c;

    /* JADX INFO: renamed from: n, reason: collision with root package name */
    public final com.byazt.mk.ve f15733n;
    public boolean sp;
    public final boolean uj;
    public final com.byazt.mk.uj ve;

    public da(com.byazt.mk.uj ujVar, boolean z10) {
        this.ve = ujVar;
        this.uj = z10;
        com.byazt.mk.ve veVar = new com.byazt.mk.ve();
        this.f15733n = veVar;
        this.f15732c = new uj.tt(veVar);
        this.f15731a = 16384;
    }

    public synchronized void c() throws IOException {
        if (this.sp) {
            throw new IOException("closed");
        }
        if (this.uj) {
            Logger logger = tt;
            if (logger.isLoggable(Level.FINE)) {
                logger.fine(com.byazt.kh.ve.c(">> CONNECTION %s", n.f15747c.n()));
            }
            this.ve.ve(n.f15747c.x());
            this.ve.flush();
        }
    }

    @Override // java.io.Closeable, java.lang.AutoCloseable
    public synchronized void close() throws IOException {
        this.sp = true;
        this.ve.close();
    }

    public synchronized void tt() throws IOException {
        if (this.sp) {
            throw new IOException("closed");
        }
        this.ve.flush();
    }

    public int ve() {
        return this.f15731a;
    }

    public synchronized void tt(yp ypVar) throws IOException {
        int i10;
        if (!this.sp) {
            int i11 = 0;
            c(0, ypVar.tt() * 6, (byte) 4, (byte) 0);
            while (i11 < 10) {
                if (ypVar.c(i11)) {
                    if (i11 == 4) {
                        i10 = 3;
                    } else {
                        i10 = i11 == 7 ? 4 : i11;
                    }
                    this.ve.x(i10);
                    this.ve.sp(ypVar.tt(i11));
                }
                i11++;
            }
            this.ve.flush();
        } else {
            throw new IOException("closed");
        }
    }

    public synchronized void c(yp ypVar) throws IOException {
        if (!this.sp) {
            this.f15731a = ypVar.uj(this.f15731a);
            if (ypVar.ve() != -1) {
                this.f15732c.c(ypVar.ve());
            }
            c(0, 0, (byte) 4, (byte) 1);
            this.ve.flush();
        } else {
            throw new IOException("closed");
        }
    }

    private void tt(int i10, long j10) throws IOException {
        while (j10 > 0) {
            int iMin = (int) Math.min(this.f15731a, j10);
            long j11 = iMin;
            j10 -= j11;
            c(i10, iMin, (byte) 9, j10 == 0 ? (byte) 4 : (byte) 0);
            this.ve.a_(this.f15733n, j11);
        }
    }

    public synchronized void c(int i10, int i11, List<ve> list) throws IOException {
        if (!this.sp) {
            this.f15732c.c(list);
            long jTt = this.f15733n.tt();
            int iMin = (int) Math.min(this.f15731a - 4, jTt);
            long j10 = iMin;
            c(i10, iMin + 4, (byte) 5, jTt == j10 ? (byte) 4 : (byte) 0);
            this.ve.sp(i11 & Integer.MAX_VALUE);
            this.ve.a_(this.f15733n, j10);
            if (jTt > j10) {
                tt(i10, jTt - j10);
            }
        } else {
            throw new IOException("closed");
        }
    }

    public synchronized void c(boolean z10, int i10, int i11, List<ve> list) throws IOException {
        if (!this.sp) {
            c(z10, i10, list);
        } else {
            throw new IOException("closed");
        }
    }

    public synchronized void c(int i10, tt ttVar) throws IOException {
        if (!this.sp) {
            if (ttVar.sp != -1) {
                c(i10, 4, (byte) 3, (byte) 0);
                this.ve.sp(ttVar.sp);
                this.ve.flush();
            } else {
                throw new IllegalArgumentException();
            }
        } else {
            throw new IOException("closed");
        }
    }

    public synchronized void c(boolean z10, int i10, com.byazt.mk.ve veVar, int i11) throws IOException {
        if (!this.sp) {
            c(i10, z10 ? (byte) 1 : (byte) 0, veVar, i11);
        } else {
            throw new IOException("closed");
        }
    }

    public void c(int i10, byte b10, com.byazt.mk.ve veVar, int i11) throws IOException {
        c(i10, i11, (byte) 0, b10);
        if (i11 > 0) {
            this.ve.a_(veVar, i11);
        }
    }

    public synchronized void c(boolean z10, int i10, int i11) throws IOException {
        if (!this.sp) {
            c(0, 8, (byte) 6, z10 ? (byte) 1 : (byte) 0);
            this.ve.sp(i10);
            this.ve.sp(i11);
            this.ve.flush();
        } else {
            throw new IOException("closed");
        }
    }

    public synchronized void c(int i10, tt ttVar, byte[] bArr) throws IOException {
        if (!this.sp) {
            if (ttVar.sp != -1) {
                c(0, bArr.length + 8, (byte) 7, (byte) 0);
                this.ve.sp(i10);
                this.ve.sp(ttVar.sp);
                if (bArr.length > 0) {
                    this.ve.ve(bArr);
                }
                this.ve.flush();
            } else {
                throw n.c("errorCode.httpCode == -1", new Object[0]);
            }
        } else {
            throw new IOException("closed");
        }
    }

    public synchronized void c(int i10, long j10) throws IOException {
        if (this.sp) {
            throw new IOException("closed");
        }
        if (j10 != 0 && j10 <= 2147483647L) {
            c(i10, 4, (byte) 8, (byte) 0);
            this.ve.sp((int) j10);
            this.ve.flush();
        } else {
            throw n.c("windowSizeIncrement == 0 || windowSizeIncrement > 0x7fffffffL: %s", Long.valueOf(j10));
        }
    }

    public void c(int i10, int i11, byte b10, byte b11) throws IOException {
        Logger logger = tt;
        if (logger.isLoggable(Level.FINE)) {
            logger.fine(n.c(false, i10, i11, b10, b11));
        }
        int i12 = this.f15731a;
        if (i11 > i12) {
            throw n.c("FRAME_SIZE_ERROR length > %d: %d", Integer.valueOf(i12), Integer.valueOf(i11));
        }
        if ((Integer.MIN_VALUE & i10) != 0) {
            throw n.c("reserved bit set: %s", Integer.valueOf(i10));
        }
        c(this.ve, i11);
        this.ve.i(b10 & 255);
        this.ve.i(b11 & 255);
        this.ve.sp(i10 & Integer.MAX_VALUE);
    }

    private static void c(com.byazt.mk.uj ujVar, int i10) throws IOException {
        ujVar.i((i10 >>> 16) & 255);
        ujVar.i((i10 >>> 8) & 255);
        ujVar.i(i10 & 255);
    }

    public void c(boolean z10, int i10, List<ve> list) throws IOException {
        if (!this.sp) {
            this.f15732c.c(list);
            long jTt = this.f15733n.tt();
            int iMin = (int) Math.min(this.f15731a, jTt);
            long j10 = iMin;
            byte b10 = jTt == j10 ? (byte) 4 : (byte) 0;
            if (z10) {
                b10 = (byte) (b10 | 1);
            }
            c(i10, iMin, (byte) 1, b10);
            this.ve.a_(this.f15733n, j10);
            if (jTt > j10) {
                tt(i10, jTt - j10);
                return;
            }
            return;
        }
        throw new IOException("closed");
    }
}
