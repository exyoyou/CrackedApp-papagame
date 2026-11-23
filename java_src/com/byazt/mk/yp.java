package com.byazt.mk;

import com.bykv.vk.component.ttvideo.player.MediaPlayer;
import java.io.EOFException;
import java.io.IOException;
import java.io.InputStream;
import java.nio.ByteBuffer;
import java.nio.charset.Charset;
import kotlin.text.Typography;

/* JADX INFO: loaded from: classes6.dex */
@com.byazt.zqa.c(c = {0, 1, MediaPlayer.MEDIA_PLAYER_OPTION_POSITION_UPDATE_INTERVAL, 215})
public final class yp implements n {

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final ve f16937c = new ve();
    public final my tt;
    public boolean ve;

    public yp(my myVar) {
        if (myVar == null) {
            throw new NullPointerException("source == null");
        }
        this.tt = myVar;
    }

    @Override // com.byazt.mk.n
    public InputStream a() {
        return new InputStream() { // from class: com.byazt.mk.yp.1
            @Override // java.io.InputStream
            public int available() throws IOException {
                yp ypVar = yp.this;
                if (ypVar.ve) {
                    throw new IOException("closed");
                }
                return (int) Math.min(ypVar.f16937c.tt, 2147483647L);
            }

            @Override // java.io.InputStream, java.io.Closeable, java.lang.AutoCloseable
            public void close() throws IOException {
                yp.this.close();
            }

            @Override // java.io.InputStream
            public int read() throws IOException {
                yp ypVar = yp.this;
                if (ypVar.ve) {
                    throw new IOException("closed");
                }
                ve veVar = ypVar.f16937c;
                if (veVar.tt == 0 && ypVar.tt.c(veVar, 8192L) == -1) {
                    return -1;
                }
                return yp.this.f16937c.x() & 255;
            }

            public String toString() {
                return yp.this + ".inputStream()";
            }

            @Override // java.io.InputStream
            public int read(byte[] bArr, int i10, int i11) throws IOException {
                if (!yp.this.ve) {
                    rl.c(bArr.length, i10, i11);
                    yp ypVar = yp.this;
                    ve veVar = ypVar.f16937c;
                    if (veVar.tt == 0 && ypVar.tt.c(veVar, 8192L) == -1) {
                        return -1;
                    }
                    return yp.this.f16937c.c(bArr, i10, i11);
                }
                throw new IOException("closed");
            }
        };
    }

    @Override // com.byazt.mk.my
    public long c(ve veVar, long j10) throws IOException {
        if (veVar == null) {
            throw new IllegalArgumentException("sink == null");
        }
        if (j10 < 0) {
            throw new IllegalArgumentException("byteCount < 0: ".concat(String.valueOf(j10)));
        }
        if (this.ve) {
            throw new IllegalStateException("closed");
        }
        ve veVar2 = this.f16937c;
        if (veVar2.tt == 0 && this.tt.c(veVar2, 8192L) == -1) {
            return -1L;
        }
        return this.f16937c.c(veVar, Math.min(j10, this.f16937c.tt));
    }

    @Override // com.byazt.mk.my, java.io.Closeable, java.lang.AutoCloseable
    public void close() throws IOException {
        if (this.ve) {
            return;
        }
        this.ve = true;
        this.tt.close();
        this.f16937c.rh();
    }

    @Override // com.byazt.mk.n
    public int da() throws IOException {
        c(4L);
        return this.f16937c.da();
    }

    @Override // com.byazt.mk.n
    public short i() throws IOException {
        c(2L);
        return this.f16937c.i();
    }

    @Override // java.nio.channels.Channel
    public boolean isOpen() {
        return !this.ve;
    }

    @Override // com.byazt.mk.n
    public String m() throws IOException {
        return n(Long.MAX_VALUE);
    }

    @Override // com.byazt.mk.n
    public boolean n() throws IOException {
        if (this.ve) {
            throw new IllegalStateException("closed");
        }
        return this.f16937c.n() && this.tt.c(this.f16937c, 8192L) == -1;
    }

    @Override // com.byazt.mk.n
    public byte[] nu() throws IOException {
        this.f16937c.c(this.tt);
        return this.f16937c.nu();
    }

    @Override // java.nio.channels.ReadableByteChannel
    public int read(ByteBuffer byteBuffer) throws IOException {
        ve veVar = this.f16937c;
        if (veVar.tt == 0 && this.tt.c(veVar, 8192L) == -1) {
            return -1;
        }
        return this.f16937c.read(byteBuffer);
    }

    @Override // com.byazt.mk.n
    public short sl() throws IOException {
        c(2L);
        return this.f16937c.sl();
    }

    @Override // com.byazt.mk.n
    public byte[] sp(long j10) throws IOException {
        c(j10);
        return this.f16937c.sp(j10);
    }

    @Override // com.byazt.mk.n
    public int t() throws IOException {
        c(4L);
        return this.f16937c.t();
    }

    public String toString() {
        return "buffer(" + this.tt + ")";
    }

    public boolean tt(long j10) throws IOException {
        ve veVar;
        if (j10 < 0) {
            throw new IllegalArgumentException("byteCount < 0: ".concat(String.valueOf(j10)));
        }
        if (this.ve) {
            throw new IllegalStateException("closed");
        }
        do {
            veVar = this.f16937c;
            if (veVar.tt >= j10) {
                return true;
            }
        } while (this.tt.c(veVar, 8192L) != -1);
        return false;
    }

    @Override // com.byazt.mk.n
    public long u() throws IOException {
        c(1L);
        int i10 = 0;
        while (true) {
            int i11 = i10 + 1;
            if (!tt(i11)) {
                break;
            }
            byte bTt = this.f16937c.tt(i10);
            if ((bTt < 48 || bTt > 57) && ((bTt < 97 || bTt > 102) && (bTt < 65 || bTt > 70))) {
                if (i10 != 0) {
                    break;
                }
                throw new NumberFormatException(String.format("Expected leading [0-9a-fA-F] character but was %#x", Byte.valueOf(bTt)));
            }
            i10 = i11;
        }
        return this.f16937c.u();
    }

    @Override // com.byazt.mk.n, com.byazt.mk.uj
    public ve ve() {
        return this.f16937c;
    }

    @Override // com.byazt.mk.n
    public byte x() throws IOException {
        c(1L);
        return this.f16937c.x();
    }

    @Override // com.byazt.mk.n
    public a ve(long j10) throws IOException {
        c(j10);
        return this.f16937c.ve(j10);
    }

    @Override // com.byazt.mk.n
    public void x(long j10) throws IOException {
        if (this.ve) {
            throw new IllegalStateException("closed");
        }
        while (j10 > 0) {
            ve veVar = this.f16937c;
            if (veVar.tt == 0 && this.tt.c(veVar, 8192L) == -1) {
                throw new EOFException();
            }
            long jMin = Math.min(j10, this.f16937c.tt());
            this.f16937c.x(jMin);
            j10 -= jMin;
        }
    }

    @Override // com.byazt.mk.n
    public String n(long j10) throws IOException {
        if (j10 >= 0) {
            long j11 = j10 == Long.MAX_VALUE ? Long.MAX_VALUE : j10 + 1;
            long jC = c((byte) 10, 0L, j11);
            if (jC != -1) {
                return this.f16937c.a(jC);
            }
            if (j11 < Long.MAX_VALUE && tt(j11) && this.f16937c.tt(j11 - 1) == 13 && tt(1 + j11) && this.f16937c.tt(j11) == 10) {
                return this.f16937c.a(j11);
            }
            ve veVar = new ve();
            ve veVar2 = this.f16937c;
            veVar2.c(veVar, 0L, Math.min(32L, veVar2.tt()));
            throw new EOFException("\\n not found: limit=" + Math.min(this.f16937c.tt(), j10) + " content=" + veVar.yp().n() + Typography.ellipsis);
        }
        throw new IllegalArgumentException("limit < 0: ".concat(String.valueOf(j10)));
    }

    @Override // com.byazt.mk.n
    public void c(long j10) throws IOException {
        if (!tt(j10)) {
            throw new EOFException();
        }
    }

    @Override // com.byazt.mk.n
    public void c(byte[] bArr) throws IOException {
        try {
            c(bArr.length);
            this.f16937c.c(bArr);
        } catch (EOFException e10) {
            int i10 = 0;
            while (true) {
                ve veVar = this.f16937c;
                long j10 = veVar.tt;
                if (j10 > 0) {
                    int iC = veVar.c(bArr, i10, (int) j10);
                    if (iC == -1) {
                        throw new AssertionError();
                    }
                    i10 += iC;
                } else {
                    throw e10;
                }
            }
        }
    }

    @Override // com.byazt.mk.n
    public String c(Charset charset) throws IOException {
        if (charset != null) {
            this.f16937c.c(this.tt);
            return this.f16937c.c(charset);
        }
        throw new IllegalArgumentException("charset == null");
    }

    @Override // com.byazt.mk.n
    public long c(byte b10) throws IOException {
        return c(b10, 0L, Long.MAX_VALUE);
    }

    public long c(byte b10, long j10, long j11) throws IOException {
        if (this.ve) {
            throw new IllegalStateException("closed");
        }
        if (j10 < 0 || j11 < j10) {
            throw new IllegalArgumentException(String.format("fromIndex=%s toIndex=%s", Long.valueOf(j10), Long.valueOf(j11)));
        }
        while (j10 < j11) {
            long jC = this.f16937c.c(b10, j10, j11);
            if (jC != -1) {
                return jC;
            }
            ve veVar = this.f16937c;
            long j12 = veVar.tt;
            if (j12 >= j11 || this.tt.c(veVar, 8192L) == -1) {
                break;
            }
            j10 = Math.max(j10, j12);
        }
        return -1L;
    }

    @Override // com.byazt.mk.n
    public boolean c(long j10, a aVar) throws IOException {
        return c(j10, aVar, 0, aVar.sp());
    }

    public boolean c(long j10, a aVar, int i10, int i11) throws IOException {
        if (!this.ve) {
            if (j10 < 0 || i10 < 0 || i11 < 0 || aVar.sp() - i10 < i11) {
                return false;
            }
            for (int i12 = 0; i12 < i11; i12++) {
                long j11 = ((long) i12) + j10;
                if (!tt(1 + j11) || this.f16937c.tt(j11) != aVar.c(i10 + i12)) {
                    return false;
                }
            }
            return true;
        }
        throw new IllegalStateException("closed");
    }

    @Override // com.byazt.mk.my
    public gt c() {
        return this.tt.c();
    }
}
