package com.byazt.mk;

import com.bykv.vk.component.ttvideo.player.MediaPlayer;
import java.io.EOFException;
import java.io.IOException;
import java.util.zip.CRC32;
import java.util.zip.Inflater;

/* JADX INFO: loaded from: classes6.dex */
@com.byazt.zqa.c(c = {0, 1, MediaPlayer.MEDIA_PLAYER_OPTION_POSITION_UPDATE_INTERVAL, 72})
public final class da implements my {

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public int f16920c = 0;

    /* JADX INFO: renamed from: n, reason: collision with root package name */
    public final CRC32 f16921n = new CRC32();
    public final n tt;
    public final sl uj;
    public final Inflater ve;

    public da(my myVar) {
        if (myVar == null) {
            throw new IllegalArgumentException("source == null");
        }
        Inflater inflater = new Inflater(true);
        this.ve = inflater;
        n nVarC = t.c(myVar);
        this.tt = nVarC;
        this.uj = new sl(nVarC, inflater);
    }

    private void tt() throws IOException {
        this.tt.c(10L);
        byte bTt = this.tt.ve().tt(3L);
        boolean z10 = ((bTt >> 1) & 1) == 1;
        if (z10) {
            c(this.tt.ve(), 0L, 10L);
        }
        c("ID1ID2", 8075, this.tt.i());
        this.tt.x(8L);
        if (((bTt >> 2) & 1) == 1) {
            this.tt.c(2L);
            if (z10) {
                c(this.tt.ve(), 0L, 2L);
            }
            long jSl = this.tt.ve().sl();
            this.tt.c(jSl);
            if (z10) {
                c(this.tt.ve(), 0L, jSl);
            }
            this.tt.x(jSl);
        }
        if (((bTt >> 3) & 1) == 1) {
            long jC = this.tt.c((byte) 0);
            if (jC == -1) {
                throw new EOFException();
            }
            if (z10) {
                c(this.tt.ve(), 0L, jC + 1);
            }
            this.tt.x(jC + 1);
        }
        if (((bTt >> 4) & 1) == 1) {
            long jC2 = this.tt.c((byte) 0);
            if (jC2 == -1) {
                throw new EOFException();
            }
            if (z10) {
                c(this.tt.ve(), 0L, jC2 + 1);
            }
            this.tt.x(jC2 + 1);
        }
        if (z10) {
            c("FHCRC", this.tt.sl(), (short) this.f16921n.getValue());
            this.f16921n.reset();
        }
    }

    private void ve() throws IOException {
        c("CRC", this.tt.t(), (int) this.f16921n.getValue());
        c("ISIZE", this.tt.t(), (int) this.ve.getBytesWritten());
    }

    @Override // com.byazt.mk.my
    public long c(ve veVar, long j10) throws IOException {
        if (j10 < 0) {
            throw new IllegalArgumentException("byteCount < 0: ".concat(String.valueOf(j10)));
        }
        if (j10 == 0) {
            return 0L;
        }
        if (this.f16920c == 0) {
            tt();
            this.f16920c = 1;
        }
        if (this.f16920c == 1) {
            long j11 = veVar.tt;
            long jC = this.uj.c(veVar, j10);
            if (jC != -1) {
                c(veVar, j11, jC);
                return jC;
            }
            this.f16920c = 2;
        }
        if (this.f16920c == 2) {
            ve();
            this.f16920c = 3;
            if (!this.tt.n()) {
                throw new IOException("gzip finished without exhausting source");
            }
        }
        return -1L;
    }

    @Override // com.byazt.mk.my, java.io.Closeable, java.lang.AutoCloseable
    public void close() throws IOException {
        this.uj.close();
    }

    @Override // com.byazt.mk.my
    public gt c() {
        return this.tt.c();
    }

    private void c(ve veVar, long j10, long j11) {
        z zVar = veVar.f16934c;
        while (true) {
            int i10 = zVar.ve;
            int i11 = zVar.tt;
            if (j10 < i10 - i11) {
                break;
            }
            j10 -= (long) (i10 - i11);
            zVar = zVar.f16939a;
        }
        while (j11 > 0) {
            int i12 = (int) (((long) zVar.tt) + j10);
            int iMin = (int) Math.min(zVar.ve - i12, j11);
            this.f16921n.update(zVar.f16940c, i12, iMin);
            j11 -= (long) iMin;
            zVar = zVar.f16939a;
            j10 = 0;
        }
    }

    private void c(String str, int i10, int i11) throws IOException {
        if (i11 != i10) {
            throw new IOException(String.format("%s: actual 0x%08x != expected 0x%08x", str, Integer.valueOf(i11), Integer.valueOf(i10)));
        }
    }
}
