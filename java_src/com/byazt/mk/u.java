package com.byazt.mk;

import com.bykv.vk.component.ttvideo.player.MediaPlayer;
import java.io.IOException;
import java.nio.ByteBuffer;

/* JADX INFO: loaded from: classes6.dex */
@com.byazt.zqa.c(c = {0, 1, MediaPlayer.MEDIA_PLAYER_OPTION_POSITION_UPDATE_INTERVAL, 67})
public final class u implements uj {

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final ve f16933c = new ve();
    public final rh tt;
    public boolean ve;

    public u(rh rhVar) {
        if (rhVar == null) {
            throw new NullPointerException("sink == null");
        }
        this.tt = rhVar;
    }

    @Override // com.byazt.mk.rh
    public void a_(ve veVar, long j10) throws IOException {
        if (this.ve) {
            throw new IllegalStateException("closed");
        }
        this.f16933c.a_(veVar, j10);
        rl();
    }

    @Override // com.byazt.mk.rh
    public gt c() {
        return this.tt.c();
    }

    @Override // com.byazt.mk.rh, java.io.Closeable, java.lang.AutoCloseable
    public void close() throws Throwable {
        if (this.ve) {
            return;
        }
        ve veVar = this.f16933c;
        long j10 = veVar.tt;
        if (j10 > 0) {
            this.tt.a_(veVar, j10);
        }
        th = null;
        try {
            this.tt.close();
        } catch (Throwable th) {
            if (th == null) {
                th = th;
            }
        }
        this.ve = true;
        if (th != null) {
            rl.c(th);
        }
    }

    @Override // com.byazt.mk.uj, com.byazt.mk.rh, java.io.Flushable
    public void flush() throws IOException {
        if (this.ve) {
            throw new IllegalStateException("closed");
        }
        ve veVar = this.f16933c;
        long j10 = veVar.tt;
        if (j10 > 0) {
            this.tt.a_(veVar, j10);
        }
        this.tt.flush();
    }

    @Override // com.byazt.mk.uj
    public uj i(int i10) throws IOException {
        if (this.ve) {
            throw new IllegalStateException("closed");
        }
        this.f16933c.i(i10);
        return rl();
    }

    @Override // java.nio.channels.Channel
    public boolean isOpen() {
        return !this.ve;
    }

    @Override // com.byazt.mk.uj
    public uj rl() throws IOException {
        if (this.ve) {
            throw new IllegalStateException("closed");
        }
        long jSp = this.f16933c.sp();
        if (jSp > 0) {
            this.tt.a_(this.f16933c, jSp);
        }
        return this;
    }

    @Override // com.byazt.mk.uj
    public uj sl(long j10) throws IOException {
        if (this.ve) {
            throw new IllegalStateException("closed");
        }
        this.f16933c.sl(j10);
        return rl();
    }

    @Override // com.byazt.mk.uj
    public uj sp(int i10) throws IOException {
        if (this.ve) {
            throw new IllegalStateException("closed");
        }
        this.f16933c.sp(i10);
        return rl();
    }

    @Override // com.byazt.mk.uj
    public uj t(long j10) throws IOException {
        if (this.ve) {
            throw new IllegalStateException("closed");
        }
        this.f16933c.t(j10);
        return rl();
    }

    public String toString() {
        return "buffer(" + this.tt + ")";
    }

    @Override // com.byazt.mk.uj
    public uj tt(a aVar) throws IOException {
        if (this.ve) {
            throw new IllegalStateException("closed");
        }
        this.f16933c.tt(aVar);
        return rl();
    }

    @Override // com.byazt.mk.uj
    public ve ve() {
        return this.f16933c;
    }

    @Override // java.nio.channels.WritableByteChannel
    public int write(ByteBuffer byteBuffer) throws IOException {
        if (this.ve) {
            throw new IllegalStateException("closed");
        }
        int iWrite = this.f16933c.write(byteBuffer);
        rl();
        return iWrite;
    }

    @Override // com.byazt.mk.uj
    public uj x(int i10) throws IOException {
        if (this.ve) {
            throw new IllegalStateException("closed");
        }
        this.f16933c.x(i10);
        return rl();
    }

    @Override // com.byazt.mk.uj
    public uj ve(byte[] bArr) throws IOException {
        if (this.ve) {
            throw new IllegalStateException("closed");
        }
        this.f16933c.ve(bArr);
        return rl();
    }

    @Override // com.byazt.mk.uj
    public uj tt(String str) throws IOException {
        if (!this.ve) {
            this.f16933c.tt(str);
            return rl();
        }
        throw new IllegalStateException("closed");
    }

    @Override // com.byazt.mk.uj
    public uj ve(byte[] bArr, int i10, int i11) throws IOException {
        if (!this.ve) {
            this.f16933c.ve(bArr, i10, i11);
            return rl();
        }
        throw new IllegalStateException("closed");
    }
}
