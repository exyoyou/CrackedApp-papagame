package com.byazt.mk;

import com.bykv.vk.component.ttvideo.player.MediaPlayer;
import java.io.EOFException;
import java.io.IOException;
import java.util.zip.DataFormatException;
import java.util.zip.Inflater;

/* JADX INFO: loaded from: classes6.dex */
@com.byazt.zqa.c(c = {0, 1, MediaPlayer.MEDIA_PLAYER_OPTION_POSITION_UPDATE_INTERVAL, 158})
public final class sl implements my {

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final n f16927c;
    public final Inflater tt;
    public boolean uj;
    public int ve;

    public sl(n nVar, Inflater inflater) {
        if (nVar == null) {
            throw new IllegalArgumentException("source == null");
        }
        if (inflater == null) {
            throw new IllegalArgumentException("inflater == null");
        }
        this.f16927c = nVar;
        this.tt = inflater;
    }

    private void ve() throws IOException {
        int i10 = this.ve;
        if (i10 == 0) {
            return;
        }
        int remaining = i10 - this.tt.getRemaining();
        this.ve -= remaining;
        this.f16927c.x(remaining);
    }

    @Override // com.byazt.mk.my
    public long c(ve veVar, long j10) throws IOException {
        boolean zTt;
        if (j10 < 0) {
            throw new IllegalArgumentException("byteCount < 0: ".concat(String.valueOf(j10)));
        }
        if (this.uj) {
            throw new IllegalStateException("closed");
        }
        if (j10 == 0) {
            return 0L;
        }
        do {
            zTt = tt();
            try {
                z zVarN = veVar.n(1);
                int iInflate = this.tt.inflate(zVarN.f16940c, zVarN.ve, (int) Math.min(j10, 8192 - zVarN.ve));
                if (iInflate > 0) {
                    zVarN.ve += iInflate;
                    long j11 = iInflate;
                    veVar.tt += j11;
                    return j11;
                }
                if (!this.tt.finished() && !this.tt.needsDictionary()) {
                }
                ve();
                if (zVarN.tt != zVarN.ve) {
                    return -1L;
                }
                veVar.f16934c = zVarN.tt();
                m.c(zVarN);
                return -1L;
            } catch (DataFormatException e10) {
                throw new IOException(e10);
            }
        } while (!zTt);
        throw new EOFException("source exhausted prematurely");
    }

    @Override // com.byazt.mk.my, java.io.Closeable, java.lang.AutoCloseable
    public void close() throws IOException {
        if (this.uj) {
            return;
        }
        this.tt.end();
        this.uj = true;
        this.f16927c.close();
    }

    public final boolean tt() throws IOException {
        if (!this.tt.needsInput()) {
            return false;
        }
        ve();
        if (this.tt.getRemaining() != 0) {
            throw new IllegalStateException("?");
        }
        if (this.f16927c.n()) {
            return true;
        }
        z zVar = this.f16927c.ve().f16934c;
        int i10 = zVar.ve;
        int i11 = zVar.tt;
        int i12 = i10 - i11;
        this.ve = i12;
        this.tt.setInput(zVar.f16940c, i11, i12);
        return false;
    }

    @Override // com.byazt.mk.my
    public gt c() {
        return this.f16927c.c();
    }
}
