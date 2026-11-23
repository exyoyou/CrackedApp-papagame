package com.byazt.jb;

import com.byazt.mk.gt;
import com.byazt.mk.my;
import java.io.Closeable;
import java.io.IOException;
import java.util.List;
import java.util.logging.Level;
import java.util.logging.Logger;

/* JADX INFO: loaded from: classes6.dex */
@com.byazt.zqa.c(c = {0, 1, 63, 71})
public final class x implements Closeable {

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public static final Logger f15802c = Logger.getLogger(n.class.getName());

    /* JADX INFO: renamed from: n, reason: collision with root package name */
    public final boolean f15803n;
    public final uj.c tt;
    public final c uj;
    public final com.byazt.mk.n ve;

    interface tt {
        void c(int i10, int i11, List<ve> list) throws IOException;

        void c(int i10, long j10);

        void c(int i10, com.byazt.jb.tt ttVar);

        void c(int i10, com.byazt.jb.tt ttVar, com.byazt.mk.a aVar);

        void c(boolean z10, int i10, int i11);

        void c(boolean z10, int i10, int i11, List<ve> list);

        void c(boolean z10, int i10, com.byazt.mk.n nVar, int i11) throws IOException;

        void c(boolean z10, yp ypVar);
    }

    public x(com.byazt.mk.n nVar, boolean z10) {
        this.ve = nVar;
        this.f15803n = z10;
        c cVar = new c(nVar);
        this.uj = cVar;
        this.tt = new uj.c(4096, cVar);
    }

    private void a(tt ttVar, int i10, byte b10, int i11) throws IOException {
        if (i11 == 0) {
            throw n.tt("PROTOCOL_ERROR: TYPE_PUSH_PROMISE streamId == 0", new Object[0]);
        }
        short sX = (b10 & 8) != 0 ? (short) (this.ve.x() & 255) : (short) 0;
        ttVar.c(i11, this.ve.da() & Integer.MAX_VALUE, c(c(i10 - 4, b10, sX), sX, b10, i11));
    }

    private void i(tt ttVar, int i10, byte b10, int i11) throws IOException {
        if (i10 != 4) {
            throw n.tt("TYPE_WINDOW_UPDATE length !=4: %s", Integer.valueOf(i10));
        }
        long jDa = ((long) this.ve.da()) & 2147483647L;
        if (jDa == 0) {
            throw n.tt("windowSizeIncrement was 0", Long.valueOf(jDa));
        }
        ttVar.c(i11, jDa);
    }

    private void n(tt ttVar, int i10, byte b10, int i11) throws IOException {
        if (i11 != 0) {
            throw n.tt("TYPE_SETTINGS streamId != 0", new Object[0]);
        }
        if ((b10 & 1) != 0) {
            if (i10 != 0) {
                throw n.tt("FRAME_SIZE_ERROR ack frame should be empty!", new Object[0]);
            }
            return;
        }
        if (i10 % 6 != 0) {
            throw n.tt("TYPE_SETTINGS length %% 6 != 0: %s", Integer.valueOf(i10));
        }
        yp ypVar = new yp();
        for (int i12 = 0; i12 < i10; i12 += 6) {
            short sI = this.ve.i();
            int iDa = this.ve.da();
            if (sI == 2) {
                if (iDa != 0 && iDa != 1) {
                    throw n.tt("PROTOCOL_ERROR SETTINGS_ENABLE_PUSH != 0 or 1", new Object[0]);
                }
            } else if (sI == 3) {
                sI = 4;
            } else if (sI != 4) {
                if (sI == 5 && (iDa < 16384 || iDa > 16777215)) {
                    throw n.tt("PROTOCOL_ERROR SETTINGS_MAX_FRAME_SIZE: %s", Integer.valueOf(iDa));
                }
            } else {
                if (iDa < 0) {
                    throw n.tt("PROTOCOL_ERROR SETTINGS_INITIAL_WINDOW_SIZE > 2^31 - 1", new Object[0]);
                }
                sI = 7;
            }
            ypVar.c(sI, iDa);
        }
        ttVar.c(false, ypVar);
    }

    private void sp(tt ttVar, int i10, byte b10, int i11) throws IOException {
        if (i10 != 8) {
            throw n.tt("TYPE_PING length != 8: %s", Integer.valueOf(i10));
        }
        if (i11 != 0) {
            throw n.tt("TYPE_PING streamId != 0", new Object[0]);
        }
        ttVar.c((b10 & 1) != 0, this.ve.da(), this.ve.da());
    }

    private void tt(tt ttVar, int i10, byte b10, int i11) throws IOException {
        if (i11 == 0) {
            throw n.tt("PROTOCOL_ERROR: TYPE_DATA streamId == 0", new Object[0]);
        }
        boolean z10 = (b10 & 1) != 0;
        if ((b10 & 32) != 0) {
            throw n.tt("PROTOCOL_ERROR: FLAG_COMPRESSED without SETTINGS_COMPRESS_DATA", new Object[0]);
        }
        short sX = (b10 & 8) != 0 ? (short) (this.ve.x() & 255) : (short) 0;
        ttVar.c(z10, i11, this.ve, c(i10, b10, sX));
        this.ve.x(sX);
    }

    private void uj(tt ttVar, int i10, byte b10, int i11) throws IOException {
        if (i10 != 4) {
            throw n.tt("TYPE_RST_STREAM length: %d != 4", Integer.valueOf(i10));
        }
        if (i11 == 0) {
            throw n.tt("TYPE_RST_STREAM streamId == 0", new Object[0]);
        }
        int iDa = this.ve.da();
        com.byazt.jb.tt ttVarC = com.byazt.jb.tt.c(iDa);
        if (ttVarC == null) {
            throw n.tt("TYPE_RST_STREAM unexpected error code: %d", Integer.valueOf(iDa));
        }
        ttVar.c(i11, ttVarC);
    }

    private void ve(tt ttVar, int i10, byte b10, int i11) throws IOException {
        if (i10 != 5) {
            throw n.tt("TYPE_PRIORITY length: %d != 5", Integer.valueOf(i10));
        }
        if (i11 == 0) {
            throw n.tt("TYPE_PRIORITY streamId == 0", new Object[0]);
        }
        c(ttVar, i11);
    }

    private void x(tt ttVar, int i10, byte b10, int i11) throws IOException {
        if (i10 < 8) {
            throw n.tt("TYPE_GOAWAY length < 8: %s", Integer.valueOf(i10));
        }
        if (i11 != 0) {
            throw n.tt("TYPE_GOAWAY streamId != 0", new Object[0]);
        }
        int iDa = this.ve.da();
        int iDa2 = this.ve.da();
        int i12 = i10 - 8;
        com.byazt.jb.tt ttVarC = com.byazt.jb.tt.c(iDa2);
        if (ttVarC == null) {
            throw n.tt("TYPE_GOAWAY unexpected error code: %d", Integer.valueOf(iDa2));
        }
        com.byazt.mk.a aVarVe = com.byazt.mk.a.tt;
        if (i12 > 0) {
            aVarVe = this.ve.ve(i12);
        }
        ttVar.c(iDa, ttVarC, aVarVe);
    }

    public void c(tt ttVar) throws IOException {
        if (this.f15803n) {
            if (!c(true, ttVar)) {
                throw n.tt("Required SETTINGS preface not received", new Object[0]);
            }
            return;
        }
        com.byazt.mk.n nVar = this.ve;
        com.byazt.mk.a aVar = n.f15747c;
        com.byazt.mk.a aVarVe = nVar.ve(aVar.sp());
        Logger logger = f15802c;
        if (logger.isLoggable(Level.FINE)) {
            logger.fine(com.byazt.kh.ve.c("<< CONNECTION %s", aVarVe.n()));
        }
        if (!aVar.equals(aVarVe)) {
            throw n.tt("Expected a connection header but was %s", aVarVe.c());
        }
    }

    @Override // java.io.Closeable, java.lang.AutoCloseable
    public void close() throws IOException {
        this.ve.close();
    }

    @com.byazt.zqa.c(c = {0, 1, 63, 62})
    static final class c implements my {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        public final com.byazt.mk.n f15804a;

        /* JADX INFO: renamed from: c, reason: collision with root package name */
        public int f15805c;

        /* JADX INFO: renamed from: n, reason: collision with root package name */
        public short f15806n;
        public byte tt;
        public int uj;
        public int ve;

        public c(com.byazt.mk.n nVar) {
            this.f15804a = nVar;
        }

        private void tt() throws IOException {
            int i10 = this.ve;
            int iC = x.c(this.f15804a);
            this.uj = iC;
            this.f15805c = iC;
            byte bX = (byte) (this.f15804a.x() & 255);
            this.tt = (byte) (this.f15804a.x() & 255);
            Logger logger = x.f15802c;
            if (logger.isLoggable(Level.FINE)) {
                logger.fine(n.c(true, this.ve, this.f15805c, bX, this.tt));
            }
            int iDa = this.f15804a.da() & Integer.MAX_VALUE;
            this.ve = iDa;
            if (bX != 9) {
                throw n.tt("%s != TYPE_CONTINUATION", Byte.valueOf(bX));
            }
            if (iDa != i10) {
                throw n.tt("TYPE_CONTINUATION streamId changed", new Object[0]);
            }
        }

        @Override // com.byazt.mk.my
        public long c(com.byazt.mk.ve veVar, long j10) throws IOException {
            while (true) {
                int i10 = this.uj;
                if (i10 != 0) {
                    long jC = this.f15804a.c(veVar, Math.min(j10, i10));
                    if (jC == -1) {
                        return -1L;
                    }
                    this.uj = (int) (((long) this.uj) - jC);
                    return jC;
                }
                this.f15804a.x(this.f15806n);
                this.f15806n = (short) 0;
                if ((this.tt & 4) != 0) {
                    return -1L;
                }
                tt();
            }
        }

        @Override // com.byazt.mk.my, java.io.Closeable, java.lang.AutoCloseable
        public void close() throws IOException {
        }

        @Override // com.byazt.mk.my
        public gt c() {
            return this.f15804a.c();
        }
    }

    public boolean c(boolean z10, tt ttVar) throws IOException {
        try {
            this.ve.c(9L);
            int iC = c(this.ve);
            if (iC < 0 || iC > 16384) {
                throw n.tt("FRAME_SIZE_ERROR: %s", Integer.valueOf(iC));
            }
            byte bX = (byte) (this.ve.x() & 255);
            if (z10 && bX != 4) {
                throw n.tt("Expected a SETTINGS frame but was %s", Byte.valueOf(bX));
            }
            byte bX2 = (byte) (this.ve.x() & 255);
            int iDa = this.ve.da() & Integer.MAX_VALUE;
            Logger logger = f15802c;
            if (logger.isLoggable(Level.FINE)) {
                logger.fine(n.c(true, iDa, iC, bX, bX2));
            }
            switch (bX) {
                case 0:
                    tt(ttVar, iC, bX2, iDa);
                    return true;
                case 1:
                    c(ttVar, iC, bX2, iDa);
                    return true;
                case 2:
                    ve(ttVar, iC, bX2, iDa);
                    return true;
                case 3:
                    uj(ttVar, iC, bX2, iDa);
                    return true;
                case 4:
                    n(ttVar, iC, bX2, iDa);
                    return true;
                case 5:
                    a(ttVar, iC, bX2, iDa);
                    return true;
                case 6:
                    sp(ttVar, iC, bX2, iDa);
                    return true;
                case 7:
                    x(ttVar, iC, bX2, iDa);
                    return true;
                case 8:
                    i(ttVar, iC, bX2, iDa);
                    return true;
                default:
                    this.ve.x(iC);
                    return true;
            }
        } catch (IOException unused) {
            return false;
        }
    }

    private void c(tt ttVar, int i10, byte b10, int i11) throws IOException {
        if (i11 != 0) {
            boolean z10 = (b10 & 1) != 0;
            short sX = (b10 & 8) != 0 ? (short) (this.ve.x() & 255) : (short) 0;
            if ((b10 & 32) != 0) {
                c(ttVar, i11);
                i10 -= 5;
            }
            ttVar.c(z10, i11, -1, c(c(i10, b10, sX), sX, b10, i11));
            return;
        }
        throw n.tt("PROTOCOL_ERROR: TYPE_HEADERS streamId == 0", new Object[0]);
    }

    private List<ve> c(int i10, short s10, byte b10, int i11) throws IOException {
        c cVar = this.uj;
        cVar.uj = i10;
        cVar.f15805c = i10;
        cVar.f15806n = s10;
        cVar.tt = b10;
        cVar.ve = i11;
        this.tt.c();
        return this.tt.tt();
    }

    private void c(tt ttVar, int i10) throws IOException {
        this.ve.da();
        this.ve.x();
    }

    public static int c(com.byazt.mk.n nVar) throws IOException {
        return (nVar.x() & 255) | ((nVar.x() & 255) << 16) | ((nVar.x() & 255) << 8);
    }

    public static int c(int i10, byte b10, short s10) throws IOException {
        if ((b10 & 8) != 0) {
            i10--;
        }
        if (s10 <= i10) {
            return (short) (i10 - s10);
        }
        throw n.tt("PROTOCOL_ERROR padding %s > remaining length %s", Short.valueOf(s10), Integer.valueOf(i10));
    }
}
