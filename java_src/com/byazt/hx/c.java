package com.byazt.hx;

import com.byazt.eg.d;
import com.byazt.eg.gu;
import com.byazt.eg.h;
import com.byazt.eg.yv;
import com.byazt.iq.sp;
import com.byazt.mk.gt;
import com.byazt.mk.i;
import com.byazt.mk.my;
import com.byazt.mk.rh;
import com.byazt.mk.t;
import com.byazt.yx.sl;
import com.byazt.yx.x;
import com.bykv.vk.component.ttvideo.player.MediaPlayer;
import java.io.EOFException;
import java.io.IOException;
import java.net.ProtocolException;
import java.util.concurrent.TimeUnit;

/* JADX INFO: loaded from: classes6.dex */
@com.byazt.zqa.c(c = {0, 1, 731, 20})
public final class c implements com.byazt.yx.ve {

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final gu f15163c;
    public final sp tt;
    public final com.byazt.mk.uj uj;
    public final com.byazt.mk.n ve;

    /* JADX INFO: renamed from: n, reason: collision with root package name */
    public int f15164n = 0;

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public long f15162a = 262144;

    @com.byazt.zqa.c(c = {0, 1, 731, 744})
    private class a extends AbstractC0336c {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        public boolean f15165a;

        public a() {
            super();
        }

        @Override // com.byazt.hx.c.AbstractC0336c, com.byazt.mk.my
        public long c(com.byazt.mk.ve veVar, long j10) throws IOException {
            if (j10 < 0) {
                throw new IllegalArgumentException("byteCount < 0: ".concat(String.valueOf(j10)));
            }
            if (this.tt) {
                throw new IllegalStateException("closed");
            }
            if (this.f15165a) {
                return -1L;
            }
            long jC = super.c(veVar, j10);
            if (jC != -1) {
                return jC;
            }
            this.f15165a = true;
            c(true, (IOException) null);
            return -1L;
        }

        @Override // com.byazt.mk.my, java.io.Closeable, java.lang.AutoCloseable
        public void close() throws IOException {
            if (this.tt) {
                return;
            }
            if (!this.f15165a) {
                c(false, (IOException) null);
            }
            this.tt = true;
        }
    }

    /* JADX INFO: renamed from: com.byazt.hx.c$c, reason: collision with other inner class name */
    @com.byazt.zqa.c(c = {0, 1, 731, 44})
    private abstract class AbstractC0336c implements my {

        /* JADX INFO: renamed from: c, reason: collision with root package name */
        public final i f15167c;
        public boolean tt;
        public long ve;

        private AbstractC0336c() {
            this.f15167c = new i(c.this.ve.c());
            this.ve = 0L;
        }

        @Override // com.byazt.mk.my
        public gt c() {
            return this.f15167c;
        }

        @Override // com.byazt.mk.my
        public long c(com.byazt.mk.ve veVar, long j10) throws IOException {
            try {
                long jC = c.this.ve.c(veVar, j10);
                if (jC > 0) {
                    this.ve += jC;
                }
                return jC;
            } catch (IOException e10) {
                c(false, e10);
                throw e10;
            }
        }

        public final void c(boolean z10, IOException iOException) throws IOException {
            c cVar = c.this;
            int i10 = cVar.f15164n;
            if (i10 == 6) {
                return;
            }
            if (i10 == 5) {
                cVar.c(this.f15167c);
                c cVar2 = c.this;
                cVar2.f15164n = 6;
                sp spVar = cVar2.tt;
                if (spVar != null) {
                    spVar.c(!z10, cVar2, this.ve, iOException);
                    return;
                }
                return;
            }
            throw new IllegalStateException("state: " + c.this.f15164n);
        }
    }

    @com.byazt.zqa.c(c = {0, 1, 731, MediaPlayer.MEDIA_PLAYER_OPTION_LIVE_AVPH_READ_ERROR_EXIT})
    private class n extends AbstractC0336c {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        public long f15168a;

        public n(long j10) throws IOException {
            super();
            this.f15168a = j10;
            if (j10 == 0) {
                c(true, (IOException) null);
            }
        }

        @Override // com.byazt.hx.c.AbstractC0336c, com.byazt.mk.my
        public long c(com.byazt.mk.ve veVar, long j10) throws IOException {
            if (j10 < 0) {
                throw new IllegalArgumentException("byteCount < 0: ".concat(String.valueOf(j10)));
            }
            if (this.tt) {
                throw new IllegalStateException("closed");
            }
            long j11 = this.f15168a;
            if (j11 == 0) {
                return -1L;
            }
            long jC = super.c(veVar, Math.min(j11, j10));
            if (jC == -1) {
                ProtocolException protocolException = new ProtocolException("unexpected end of stream");
                c(false, (IOException) protocolException);
                throw protocolException;
            }
            long j12 = this.f15168a - jC;
            this.f15168a = j12;
            if (j12 == 0) {
                c(true, (IOException) null);
            }
            return jC;
        }

        @Override // com.byazt.mk.my, java.io.Closeable, java.lang.AutoCloseable
        public void close() throws IOException {
            if (this.tt) {
                return;
            }
            if (this.f15168a != 0 && !com.byazt.kh.ve.c(this, 100, TimeUnit.MILLISECONDS)) {
                c(false, (IOException) null);
            }
            this.tt = true;
        }
    }

    @com.byazt.zqa.c(c = {0, 1, 731, 175})
    private final class tt implements rh {
        public final i tt;
        public boolean ve;

        public tt() {
            this.tt = new i(c.this.uj.c());
        }

        @Override // com.byazt.mk.rh
        public void a_(com.byazt.mk.ve veVar, long j10) throws IOException {
            if (this.ve) {
                throw new IllegalStateException("closed");
            }
            if (j10 == 0) {
                return;
            }
            c.this.uj.sl(j10);
            c.this.uj.tt("\r\n");
            c.this.uj.a_(veVar, j10);
            c.this.uj.tt("\r\n");
        }

        @Override // com.byazt.mk.rh
        public gt c() {
            return this.tt;
        }

        @Override // com.byazt.mk.rh, java.io.Closeable, java.lang.AutoCloseable
        public synchronized void close() throws IOException {
            if (this.ve) {
                return;
            }
            this.ve = true;
            c.this.uj.tt("0\r\n\r\n");
            c.this.c(this.tt);
            c.this.f15164n = 3;
        }

        @Override // com.byazt.mk.rh, java.io.Flushable
        public synchronized void flush() throws IOException {
            if (this.ve) {
                return;
            }
            c.this.uj.flush();
        }
    }

    @com.byazt.zqa.c(c = {0, 1, 731, 187})
    private final class uj implements rh {
        public final i tt;
        public long uj;
        public boolean ve;

        public uj(long j10) {
            this.tt = new i(c.this.uj.c());
            this.uj = j10;
        }

        @Override // com.byazt.mk.rh
        public void a_(com.byazt.mk.ve veVar, long j10) throws IOException {
            if (this.ve) {
                throw new IllegalStateException("closed");
            }
            com.byazt.kh.ve.c(veVar.tt(), 0L, j10);
            if (j10 <= this.uj) {
                c.this.uj.a_(veVar, j10);
                this.uj -= j10;
            } else {
                throw new ProtocolException("expected " + this.uj + " bytes but received " + j10);
            }
        }

        @Override // com.byazt.mk.rh
        public gt c() {
            return this.tt;
        }

        @Override // com.byazt.mk.rh, java.io.Closeable, java.lang.AutoCloseable
        public void close() throws IOException {
            if (this.ve) {
                return;
            }
            this.ve = true;
            if (this.uj > 0) {
                throw new ProtocolException("unexpected end of stream");
            }
            c.this.c(this.tt);
            c.this.f15164n = 3;
        }

        @Override // com.byazt.mk.rh, java.io.Flushable
        public void flush() throws IOException {
            if (this.ve) {
                return;
            }
            c.this.uj.flush();
        }
    }

    @com.byazt.zqa.c(c = {0, 1, 731, 132})
    private class ve extends AbstractC0336c {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        public final com.byazt.eg.my f15172a;
        public long sp;

        /* JADX INFO: renamed from: x, reason: collision with root package name */
        public boolean f15174x;

        public ve(com.byazt.eg.my myVar) {
            super();
            this.sp = -1L;
            this.f15174x = true;
            this.f15172a = myVar;
        }

        private void tt() throws IOException {
            if (this.sp != -1) {
                c.this.ve.m();
            }
            try {
                this.sp = c.this.ve.u();
                String strTrim = c.this.ve.m().trim();
                if (this.sp < 0 || !(strTrim.isEmpty() || strTrim.startsWith(";"))) {
                    throw new ProtocolException("expected chunk size and optional extensions but was \"" + this.sp + strTrim + x.a.f97579g);
                }
                if (this.sp == 0) {
                    this.f15174x = false;
                    com.byazt.yx.n.c(c.this.f15163c.a(), this.f15172a, c.this.uj());
                    c(true, (IOException) null);
                }
            } catch (NumberFormatException e10) {
                throw new ProtocolException(e10.getMessage());
            }
        }

        @Override // com.byazt.hx.c.AbstractC0336c, com.byazt.mk.my
        public long c(com.byazt.mk.ve veVar, long j10) throws IOException {
            if (j10 < 0) {
                throw new IllegalArgumentException("byteCount < 0: ".concat(String.valueOf(j10)));
            }
            if (this.tt) {
                throw new IllegalStateException("closed");
            }
            if (!this.f15174x) {
                return -1L;
            }
            long j11 = this.sp;
            if (j11 == 0 || j11 == -1) {
                tt();
                if (!this.f15174x) {
                    return -1L;
                }
            }
            long jC = super.c(veVar, Math.min(j10, this.sp));
            if (jC != -1) {
                this.sp -= jC;
                return jC;
            }
            ProtocolException protocolException = new ProtocolException("unexpected end of stream");
            c(false, (IOException) protocolException);
            throw protocolException;
        }

        @Override // com.byazt.mk.my, java.io.Closeable, java.lang.AutoCloseable
        public void close() throws IOException {
            if (this.tt) {
                return;
            }
            if (this.f15174x && !com.byazt.kh.ve.c(this, 100, TimeUnit.MILLISECONDS)) {
                c(false, (IOException) null);
            }
            this.tt = true;
        }
    }

    public c(gu guVar, sp spVar, com.byazt.mk.n nVar, com.byazt.mk.uj ujVar) {
        this.f15163c = guVar;
        this.tt = spVar;
        this.ve = nVar;
        this.uj = ujVar;
    }

    private String sp() throws IOException {
        String strN = this.ve.n(this.f15162a);
        this.f15162a -= (long) strN.length();
        return strN;
    }

    public my a() throws IOException {
        if (this.f15164n != 4) {
            throw new IllegalStateException("state: " + this.f15164n);
        }
        sp spVar = this.tt;
        if (spVar == null) {
            throw new IllegalStateException("streamAllocation == null");
        }
        this.f15164n = 5;
        spVar.uj();
        return new a();
    }

    @Override // com.byazt.yx.ve
    public rh c(yv yvVar, long j10) {
        if ("chunked".equalsIgnoreCase(yvVar.c("Transfer-Encoding"))) {
            return n();
        }
        if (j10 != -1) {
            return c(j10);
        }
        throw new IllegalStateException("Cannot stream a request body without chunked encoding or a known content length!");
    }

    public rh n() {
        if (this.f15164n == 1) {
            this.f15164n = 2;
            return new tt();
        }
        throw new IllegalStateException("state: " + this.f15164n);
    }

    @Override // com.byazt.yx.ve
    public void tt() throws IOException {
        this.uj.flush();
    }

    public com.byazt.eg.rh uj() throws IOException {
        com.byazt.eg.rh.c cVar = new com.byazt.eg.rh.c();
        while (true) {
            String strSp = sp();
            if (strSp.length() == 0) {
                return cVar.c();
            }
            com.byazt.kh.c.f16261c.c(cVar, strSp);
        }
    }

    @Override // com.byazt.yx.ve
    public void ve() {
        com.byazt.iq.ve veVarTt = this.tt.tt();
        if (veVarTt != null) {
            veVarTt.tt();
        }
    }

    public my tt(long j10) throws IOException {
        if (this.f15164n == 4) {
            this.f15164n = 5;
            return new n(j10);
        }
        throw new IllegalStateException("state: " + this.f15164n);
    }

    @Override // com.byazt.yx.ve
    public void c(yv yvVar) throws IOException {
        c(yvVar.ve(), com.byazt.yx.i.c(yvVar, this.tt.tt().c().tt().type()));
    }

    @Override // com.byazt.yx.ve
    public d c(h hVar) throws IOException {
        String strC = hVar.c("Content-Type");
        if (!com.byazt.yx.n.ve(hVar)) {
            return new x(strC, 0L, t.c(tt(0L)));
        }
        if ("chunked".equalsIgnoreCase(hVar.c("Transfer-Encoding"))) {
            return new x(strC, -1L, t.c(c(hVar.c().c())));
        }
        long jC = com.byazt.yx.n.c(hVar);
        if (jC != -1) {
            return new x(strC, jC, t.c(tt(jC)));
        }
        return new x(strC, -1L, t.c(a()));
    }

    @Override // com.byazt.yx.ve
    public void c() throws IOException {
        this.uj.flush();
    }

    public void c(com.byazt.eg.rh rhVar, String str) throws IOException {
        if (this.f15164n == 0) {
            this.uj.tt(str).tt("\r\n");
            int iC = rhVar.c();
            for (int i10 = 0; i10 < iC; i10++) {
                this.uj.tt(rhVar.c(i10)).tt(": ").tt(rhVar.tt(i10)).tt("\r\n");
            }
            this.uj.tt("\r\n");
            this.f15164n = 1;
            return;
        }
        throw new IllegalStateException("state: " + this.f15164n);
    }

    @Override // com.byazt.yx.ve
    public h.c c(boolean z10) throws IOException {
        int i10 = this.f15164n;
        if (i10 != 1 && i10 != 3) {
            throw new IllegalStateException("state: " + this.f15164n);
        }
        try {
            sl slVarC = sl.c(sp());
            h.c cVarC = new h.c().c(slVarC.f22469c).c(slVarC.tt).c(slVarC.ve).c(uj());
            if (z10 && slVarC.tt == 100) {
                return null;
            }
            this.f15164n = 4;
            return cVarC;
        } catch (EOFException e10) {
            IOException iOException = new IOException("unexpected end of stream on " + this.tt);
            iOException.initCause(e10);
            throw iOException;
        }
    }

    public rh c(long j10) {
        if (this.f15164n == 1) {
            this.f15164n = 2;
            return new uj(j10);
        }
        throw new IllegalStateException("state: " + this.f15164n);
    }

    public my c(com.byazt.eg.my myVar) throws IOException {
        if (this.f15164n == 4) {
            this.f15164n = 5;
            return new ve(myVar);
        }
        throw new IllegalStateException("state: " + this.f15164n);
    }

    public void c(i iVar) {
        gt gtVarC = iVar.c();
        iVar.c(gt.ve);
        gtVarC.a();
        gtVarC.n();
    }
}
