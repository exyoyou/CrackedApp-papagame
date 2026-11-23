package com.byazt.mk;

import com.android.dx.io.Opcodes;
import com.bykv.vk.component.ttvideo.player.C;
import com.bykv.vk.component.ttvideo.player.MediaPlayer;
import com.fasterxml.jackson.core.json.ByteSourceJsonBootstrapper;
import com.sigmob.sdk.archives.tar.e;
import java.io.EOFException;
import java.io.IOException;
import java.io.InputStream;
import java.nio.ByteBuffer;
import java.nio.channels.ByteChannel;
import java.nio.charset.Charset;
import kotlin.text.Typography;
import okhttp3.internal.connection.RealConnection;

/* JADX INFO: loaded from: classes6.dex */
@com.byazt.zqa.c(c = {0, 1, MediaPlayer.MEDIA_PLAYER_OPTION_POSITION_UPDATE_INTERVAL, 54})
public final class ve implements n, uj, Cloneable, ByteChannel {
    public static final byte[] ve = {e.H, e.I, e.J, e.K, e.L, e.M, e.N, e.O, 56, 57, 97, 98, 99, 100, 101, 102};

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public z f16934c;
    public long tt;

    @Override // com.byazt.mk.n
    public InputStream a() {
        return new InputStream() { // from class: com.byazt.mk.ve.1
            @Override // java.io.InputStream
            public int available() {
                return (int) Math.min(ve.this.tt, 2147483647L);
            }

            @Override // java.io.InputStream, java.io.Closeable, java.lang.AutoCloseable
            public void close() {
            }

            @Override // java.io.InputStream
            public int read() {
                ve veVar = ve.this;
                if (veVar.tt > 0) {
                    return veVar.x() & 255;
                }
                return -1;
            }

            public String toString() {
                return ve.this + ".inputStream()";
            }

            @Override // java.io.InputStream
            public int read(byte[] bArr, int i10, int i11) {
                return ve.this.c(bArr, i10, i11);
            }
        };
    }

    @Override // com.byazt.mk.rh
    public void a_(ve veVar, long j10) {
        z zVar;
        if (veVar == null) {
            throw new IllegalArgumentException("source == null");
        }
        if (veVar == this) {
            throw new IllegalArgumentException("source == this");
        }
        rl.c(veVar.tt, 0L, j10);
        while (j10 > 0 && (zVar = veVar.f16934c) != null) {
            if (j10 < zVar.ve - zVar.tt) {
                z zVar2 = this.f16934c;
                z zVar3 = zVar2 != null ? zVar2.sp : null;
                if (zVar3 != null && zVar3.f16941n) {
                    if ((((long) zVar3.ve) + j10) - ((long) (zVar3.uj ? 0 : zVar3.tt)) <= 8192) {
                        zVar.c(zVar3, (int) j10);
                        veVar.tt -= j10;
                        this.tt += j10;
                        return;
                    }
                }
                veVar.f16934c = zVar.c((int) j10);
            }
            z zVar4 = veVar.f16934c;
            long j11 = zVar4.ve - zVar4.tt;
            veVar.f16934c = zVar4.tt();
            z zVar5 = this.f16934c;
            if (zVar5 == null) {
                this.f16934c = zVar4;
                zVar4.sp = zVar4;
                zVar4.f16939a = zVar4;
            } else {
                zVar5.sp.c(zVar4).ve();
            }
            veVar.tt -= j11;
            this.tt += j11;
            j10 -= j11;
        }
    }

    @Override // com.byazt.mk.n
    public void c(long j10) throws EOFException {
        if (this.tt < j10) {
            throw new EOFException();
        }
    }

    @Override // com.byazt.mk.my, java.io.Closeable, java.lang.AutoCloseable
    public void close() {
    }

    @Override // com.byazt.mk.n
    public int da() {
        long j10 = this.tt;
        if (j10 < 4) {
            throw new IllegalStateException("size < 4: " + this.tt);
        }
        z zVar = this.f16934c;
        int i10 = zVar.tt;
        int i11 = zVar.ve;
        if (i11 - i10 < 4) {
            return ((x() & 255) << 24) | ((x() & 255) << 16) | ((x() & 255) << 8) | (x() & 255);
        }
        byte[] bArr = zVar.f16940c;
        int i12 = i10 + 1;
        int i13 = i12 + 1;
        int i14 = ((bArr[i10] & 255) << 24) | ((bArr[i12] & 255) << 16);
        int i15 = i13 + 1;
        int i16 = i14 | ((bArr[i13] & 255) << 8);
        int i17 = i15 + 1;
        int i18 = i16 | (bArr[i15] & 255);
        this.tt = j10 - 4;
        if (i17 == i11) {
            this.f16934c = zVar.tt();
            m.c(zVar);
        } else {
            zVar.tt = i17;
        }
        return i18;
    }

    public boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (!(obj instanceof ve)) {
            return false;
        }
        ve veVar = (ve) obj;
        long j10 = this.tt;
        if (j10 != veVar.tt) {
            return false;
        }
        long j11 = 0;
        if (j10 == 0) {
            return true;
        }
        z zVar = this.f16934c;
        z zVar2 = veVar.f16934c;
        int i10 = zVar.tt;
        int i11 = zVar2.tt;
        while (j11 < this.tt) {
            long jMin = Math.min(zVar.ve - i10, zVar2.ve - i11);
            int i12 = 0;
            while (i12 < jMin) {
                int i13 = i10 + 1;
                int i14 = i11 + 1;
                if (zVar.f16940c[i10] != zVar2.f16940c[i11]) {
                    return false;
                }
                i12++;
                i10 = i13;
                i11 = i14;
            }
            if (i10 == zVar.ve) {
                zVar = zVar.f16939a;
                i10 = zVar.tt;
            }
            if (i11 == zVar2.ve) {
                zVar2 = zVar2.f16939a;
                i11 = zVar2.tt;
            }
            j11 += jMin;
        }
        return true;
    }

    @Override // com.byazt.mk.uj, com.byazt.mk.rh, java.io.Flushable
    public void flush() {
    }

    public final a gt() {
        long j10 = this.tt;
        if (j10 <= 2147483647L) {
            return a((int) j10);
        }
        throw new IllegalArgumentException("size > Integer.MAX_VALUE: " + this.tt);
    }

    public int hashCode() {
        z zVar = this.f16934c;
        if (zVar == null) {
            return 0;
        }
        int i10 = 1;
        do {
            int i11 = zVar.ve;
            for (int i12 = zVar.tt; i12 < i11; i12++) {
                i10 = (i10 * 31) + zVar.f16940c[i12];
            }
            zVar = zVar.f16939a;
        } while (zVar != this.f16934c);
        return i10;
    }

    @Override // java.nio.channels.Channel
    public boolean isOpen() {
        return true;
    }

    @Override // com.byazt.mk.n
    public String m() throws EOFException {
        return n(Long.MAX_VALUE);
    }

    /* JADX INFO: renamed from: my, reason: merged with bridge method [inline-methods] */
    public ve clone() {
        ve veVar = new ve();
        if (this.tt == 0) {
            return veVar;
        }
        z zVarC = this.f16934c.c();
        veVar.f16934c = zVarC;
        zVarC.sp = zVarC;
        zVarC.f16939a = zVarC;
        z zVar = this.f16934c;
        while (true) {
            zVar = zVar.f16939a;
            if (zVar == this.f16934c) {
                veVar.tt = this.tt;
                return veVar;
            }
            veVar.f16934c.sp.c(zVar.c());
        }
    }

    @Override // com.byazt.mk.n
    public boolean n() {
        return this.tt == 0;
    }

    @Override // com.byazt.mk.n
    public byte[] nu() throws EOFException {
        return sp(this.tt);
    }

    @Override // java.nio.channels.ReadableByteChannel
    public int read(ByteBuffer byteBuffer) throws IOException {
        z zVar = this.f16934c;
        if (zVar == null) {
            return -1;
        }
        int iMin = Math.min(byteBuffer.remaining(), zVar.ve - zVar.tt);
        byteBuffer.put(zVar.f16940c, zVar.tt, iMin);
        int i10 = zVar.tt + iMin;
        zVar.tt = i10;
        this.tt -= (long) iMin;
        if (i10 == zVar.ve) {
            this.f16934c = zVar.tt();
            m.c(zVar);
        }
        return iMin;
    }

    public final void rh() {
        try {
            x(this.tt);
        } catch (EOFException e10) {
            throw new AssertionError(e10);
        }
    }

    public String toString() {
        return gt().toString();
    }

    @Override // com.byazt.mk.n
    public long u() {
        int i10;
        int i11;
        if (this.tt == 0) {
            throw new IllegalStateException("size == 0");
        }
        int i12 = 0;
        long j10 = 0;
        boolean z10 = false;
        do {
            z zVar = this.f16934c;
            byte[] bArr = zVar.f16940c;
            int i13 = zVar.tt;
            int i14 = zVar.ve;
            while (i13 < i14) {
                byte b10 = bArr[i13];
                if (b10 < 48 || b10 > 57) {
                    if (b10 >= 97 && b10 <= 102) {
                        i10 = b10 - 97;
                    } else {
                        if (b10 < 65 || b10 > 70) {
                            if (i12 != 0) {
                                z10 = true;
                                break;
                            }
                            throw new NumberFormatException("Expected leading [0-9a-fA-F] character but was 0x" + Integer.toHexString(b10));
                        }
                        i10 = b10 + ByteSourceJsonBootstrapper.UTF8_BOM_3;
                    }
                    i11 = i10 + 10;
                } else {
                    i11 = b10 - 48;
                }
                if (((-1152921504606846976L) & j10) != 0) {
                    throw new NumberFormatException("Number too large: " + new ve().sl(j10).i((int) b10).z());
                }
                j10 = (j10 << 4) | ((long) i11);
                i13++;
                i12++;
            }
            if (i13 == i14) {
                this.f16934c = zVar.tt();
                m.c(zVar);
            } else {
                zVar.tt = i13;
            }
            if (z10) {
                break;
            }
        } while (this.f16934c != null);
        this.tt -= (long) i12;
        return j10;
    }

    @Override // com.byazt.mk.uj
    /* JADX INFO: renamed from: uj, reason: merged with bridge method [inline-methods] */
    public ve rl() {
        return this;
    }

    @Override // com.byazt.mk.n, com.byazt.mk.uj
    public ve ve() {
        return this;
    }

    @Override // java.nio.channels.WritableByteChannel
    public int write(ByteBuffer byteBuffer) throws IOException {
        if (byteBuffer == null) {
            throw new IllegalArgumentException("source == null");
        }
        int iRemaining = byteBuffer.remaining();
        int i10 = iRemaining;
        while (i10 > 0) {
            z zVarN = n(1);
            int iMin = Math.min(i10, 8192 - zVarN.ve);
            byteBuffer.get(zVarN.f16940c, zVarN.ve, iMin);
            i10 -= iMin;
            zVarN.ve += iMin;
        }
        this.tt += (long) iRemaining;
        return iRemaining;
    }

    public a yp() throws EOFException {
        return new a(nu());
    }

    public String z() {
        try {
            return c(this.tt, rl.f16926c);
        } catch (EOFException e10) {
            throw new AssertionError(e10);
        }
    }

    public String a(long j10) throws EOFException {
        if (j10 > 0) {
            long j11 = j10 - 1;
            if (tt(j11) == 13) {
                String strUj = uj(j11);
                x(2L);
                return strUj;
            }
        }
        String strUj2 = uj(j10);
        x(1L);
        return strUj2;
    }

    public final ve c(ve veVar, long j10, long j11) {
        if (veVar == null) {
            throw new IllegalArgumentException("out == null");
        }
        rl.c(this.tt, j10, j11);
        if (j11 == 0) {
            return this;
        }
        veVar.tt += j11;
        z zVar = this.f16934c;
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
            z zVarC = zVar.c();
            int i12 = (int) (((long) zVarC.tt) + j10);
            zVarC.tt = i12;
            zVarC.ve = Math.min(i12 + ((int) j11), zVarC.ve);
            z zVar2 = veVar.f16934c;
            if (zVar2 == null) {
                zVarC.sp = zVarC;
                zVarC.f16939a = zVarC;
                veVar.f16934c = zVarC;
            } else {
                zVar2.sp.c(zVarC);
            }
            j11 -= (long) (zVarC.ve - zVarC.tt);
            zVar = zVar.f16939a;
            j10 = 0;
        }
        return this;
    }

    @Override // com.byazt.mk.n
    public short i() {
        long j10 = this.tt;
        if (j10 < 2) {
            throw new IllegalStateException("size < 2: " + this.tt);
        }
        z zVar = this.f16934c;
        int i10 = zVar.tt;
        int i11 = zVar.ve;
        if (i11 - i10 < 2) {
            return (short) (((x() & 255) << 8) | (x() & 255));
        }
        byte[] bArr = zVar.f16940c;
        int i12 = i10 + 1;
        int i13 = i12 + 1;
        int i14 = ((bArr[i10] & 255) << 8) | (bArr[i12] & 255);
        this.tt = j10 - 2;
        if (i13 == i11) {
            this.f16934c = zVar.tt();
            m.c(zVar);
        } else {
            zVar.tt = i13;
        }
        return (short) i14;
    }

    @Override // com.byazt.mk.n
    public String n(long j10) throws EOFException {
        if (j10 < 0) {
            throw new IllegalArgumentException("limit < 0: ".concat(String.valueOf(j10)));
        }
        long j11 = j10 != Long.MAX_VALUE ? j10 + 1 : Long.MAX_VALUE;
        long jC = c((byte) 10, 0L, j11);
        if (jC != -1) {
            return a(jC);
        }
        if (j11 < tt() && tt(j11 - 1) == 13 && tt(j11) == 10) {
            return a(j11);
        }
        ve veVar = new ve();
        c(veVar, 0L, Math.min(32L, tt()));
        throw new EOFException("\\n not found: limit=" + Math.min(tt(), j10) + " content=" + veVar.yp().n() + Typography.ellipsis);
    }

    @Override // com.byazt.mk.n
    public short sl() {
        return rl.c(i());
    }

    public final long sp() {
        long j10 = this.tt;
        if (j10 == 0) {
            return 0L;
        }
        z zVar = this.f16934c.sp;
        int i10 = zVar.ve;
        return (i10 >= 8192 || !zVar.f16941n) ? j10 : j10 - ((long) (i10 - zVar.tt));
    }

    @Override // com.byazt.mk.n
    public int t() {
        return rl.c(da());
    }

    public String uj(long j10) throws EOFException {
        return c(j10, rl.f16926c);
    }

    @Override // com.byazt.mk.n
    public byte x() {
        long j10 = this.tt;
        if (j10 == 0) {
            throw new IllegalStateException("size == 0");
        }
        z zVar = this.f16934c;
        int i10 = zVar.tt;
        int i11 = zVar.ve;
        int i12 = i10 + 1;
        byte b10 = zVar.f16940c[i10];
        this.tt = j10 - 1;
        if (i12 == i11) {
            this.f16934c = zVar.tt();
            m.c(zVar);
        } else {
            zVar.tt = i12;
        }
        return b10;
    }

    public final long tt() {
        return this.tt;
    }

    @Override // com.byazt.mk.uj
    /* JADX INFO: renamed from: uj, reason: merged with bridge method [inline-methods] */
    public ve sp(int i10) {
        z zVarN = n(4);
        byte[] bArr = zVarN.f16940c;
        int i11 = zVarN.ve;
        int i12 = i11 + 1;
        bArr[i11] = (byte) ((i10 >>> 24) & 255);
        int i13 = i12 + 1;
        bArr[i12] = (byte) ((i10 >>> 16) & 255);
        int i14 = i13 + 1;
        bArr[i13] = (byte) ((i10 >>> 8) & 255);
        bArr[i14] = (byte) (i10 & 255);
        zVarN.ve = i14 + 1;
        this.tt += 4;
        return this;
    }

    public final byte tt(long j10) {
        int i10;
        rl.c(this.tt, j10, 1L);
        long j11 = this.tt;
        if (j11 - j10 > j10) {
            z zVar = this.f16934c;
            while (true) {
                int i11 = zVar.ve;
                int i12 = zVar.tt;
                long j12 = i11 - i12;
                if (j10 < j12) {
                    return zVar.f16940c[i12 + ((int) j10)];
                }
                j10 -= j12;
                zVar = zVar.f16939a;
            }
        } else {
            long j13 = j10 - j11;
            try {
                z zVar2 = this.f16934c;
                do {
                    zVar2 = zVar2.sp;
                    int i13 = zVar2.ve;
                    i10 = zVar2.tt;
                    j13 += (long) (i13 - i10);
                } while (j13 < 0);
                return zVar2.f16940c[i10 + ((int) j13)];
            } catch (NullPointerException unused) {
                return (byte) 0;
            }
        }
    }

    @Override // com.byazt.mk.n
    public a ve(long j10) throws EOFException {
        return new a(sp(j10));
    }

    @Override // com.byazt.mk.uj
    /* JADX INFO: renamed from: ve, reason: merged with bridge method [inline-methods] */
    public ve x(int i10) {
        z zVarN = n(2);
        byte[] bArr = zVarN.f16940c;
        int i11 = zVarN.ve;
        int i12 = i11 + 1;
        bArr[i11] = (byte) ((i10 >>> 8) & 255);
        bArr[i12] = (byte) (i10 & 255);
        zVarN.ve = i12 + 1;
        this.tt += 2;
        return this;
    }

    @Override // com.byazt.mk.n
    public byte[] sp(long j10) throws EOFException {
        rl.c(this.tt, 0L, j10);
        if (j10 <= 2147483647L) {
            byte[] bArr = new byte[(int) j10];
            c(bArr);
            return bArr;
        }
        throw new IllegalArgumentException("byteCount > Integer.MAX_VALUE: ".concat(String.valueOf(j10)));
    }

    public final a a(int i10) {
        if (i10 == 0) {
            return a.tt;
        }
        return new nu(this, i10);
    }

    public z n(int i10) {
        if (i10 > 0 && i10 <= 8192) {
            z zVar = this.f16934c;
            if (zVar == null) {
                z zVarC = m.c();
                this.f16934c = zVarC;
                zVarC.sp = zVarC;
                zVarC.f16939a = zVarC;
                return zVarC;
            }
            z zVar2 = zVar.sp;
            return (zVar2.ve + i10 > 8192 || !zVar2.f16941n) ? zVar2.c(m.c()) : zVar2;
        }
        throw new IllegalArgumentException();
    }

    @Override // com.byazt.mk.uj
    /* JADX INFO: renamed from: tt, reason: merged with bridge method [inline-methods] */
    public ve ve(byte[] bArr) {
        if (bArr != null) {
            return ve(bArr, 0, bArr.length);
        }
        throw new IllegalArgumentException("source == null");
    }

    @Override // com.byazt.mk.n
    public void x(long j10) throws EOFException {
        z zVar;
        while (j10 > 0 && (zVar = this.f16934c) != null) {
            int iMin = (int) Math.min(j10, zVar.ve - zVar.tt);
            long j11 = iMin;
            this.tt -= j11;
            j10 -= j11;
            z zVar2 = this.f16934c;
            int i10 = zVar2.tt + iMin;
            zVar2.tt = i10;
            if (i10 == zVar2.ve) {
                this.f16934c = zVar2.tt();
                m.c(zVar2);
            }
        }
    }

    @Override // com.byazt.mk.n
    public String c(Charset charset) {
        try {
            return c(this.tt, charset);
        } catch (EOFException e10) {
            throw new AssertionError(e10);
        }
    }

    @Override // com.byazt.mk.uj
    /* JADX INFO: renamed from: i, reason: merged with bridge method [inline-methods] */
    public ve t(long j10) {
        boolean z10;
        if (j10 == 0) {
            return i(48);
        }
        int i10 = 1;
        if (j10 < 0) {
            j10 = -j10;
            if (j10 < 0) {
                return tt("-9223372036854775808");
            }
            z10 = true;
        } else {
            z10 = false;
        }
        if (j10 < 100000000) {
            if (j10 < 10000) {
                if (j10 >= 100) {
                    i10 = j10 < 1000 ? 3 : 4;
                } else if (j10 >= 10) {
                    i10 = 2;
                }
            } else if (j10 < C.MICROS_PER_SECOND) {
                i10 = j10 < 100000 ? 5 : 6;
            } else {
                i10 = j10 < 10000000 ? 7 : 8;
            }
        } else if (j10 < 1000000000000L) {
            if (j10 < RealConnection.IDLE_CONNECTION_HEALTHY_NS) {
                i10 = j10 < 1000000000 ? 9 : 10;
            } else {
                i10 = j10 < 100000000000L ? 11 : 12;
            }
        } else if (j10 < 1000000000000000L) {
            if (j10 < 10000000000000L) {
                i10 = 13;
            } else {
                i10 = j10 < 100000000000000L ? 14 : 15;
            }
        } else if (j10 < 100000000000000000L) {
            i10 = j10 < 10000000000000000L ? 16 : 17;
        } else {
            i10 = j10 < 1000000000000000000L ? 18 : 19;
        }
        if (z10) {
            i10++;
        }
        z zVarN = n(i10);
        byte[] bArr = zVarN.f16940c;
        int i11 = zVarN.ve + i10;
        while (j10 != 0) {
            i11--;
            bArr[i11] = ve[(int) (j10 % 10)];
            j10 /= 10;
        }
        if (z10) {
            bArr[i11 - 1] = 45;
        }
        zVarN.ve += i10;
        this.tt += (long) i10;
        return this;
    }

    @Override // com.byazt.mk.uj
    /* JADX INFO: renamed from: tt, reason: merged with bridge method [inline-methods] */
    public ve ve(byte[] bArr, int i10, int i11) {
        if (bArr != null) {
            long j10 = i11;
            rl.c(bArr.length, i10, j10);
            int i12 = i11 + i10;
            while (i10 < i12) {
                z zVarN = n(1);
                int iMin = Math.min(i12 - i10, 8192 - zVarN.ve);
                System.arraycopy(bArr, i10, zVarN.f16940c, zVarN.ve, iMin);
                i10 += iMin;
                zVarN.ve += iMin;
            }
            this.tt += j10;
            return this;
        }
        throw new IllegalArgumentException("source == null");
    }

    @Override // com.byazt.mk.uj
    /* JADX INFO: renamed from: da, reason: merged with bridge method [inline-methods] */
    public ve sl(long j10) {
        if (j10 == 0) {
            return i(48);
        }
        int iNumberOfTrailingZeros = (Long.numberOfTrailingZeros(Long.highestOneBit(j10)) / 4) + 1;
        z zVarN = n(iNumberOfTrailingZeros);
        byte[] bArr = zVarN.f16940c;
        int i10 = zVarN.ve;
        for (int i11 = (i10 + iNumberOfTrailingZeros) - 1; i11 >= i10; i11--) {
            bArr[i11] = ve[(int) (15 & j10)];
            j10 >>>= 4;
        }
        zVarN.ve += iNumberOfTrailingZeros;
        this.tt += (long) iNumberOfTrailingZeros;
        return this;
    }

    public String c(long j10, Charset charset) throws EOFException {
        rl.c(this.tt, 0L, j10);
        if (charset == null) {
            throw new IllegalArgumentException("charset == null");
        }
        if (j10 > 2147483647L) {
            throw new IllegalArgumentException("byteCount > Integer.MAX_VALUE: ".concat(String.valueOf(j10)));
        }
        if (j10 == 0) {
            return "";
        }
        z zVar = this.f16934c;
        int i10 = zVar.tt;
        if (((long) i10) + j10 > zVar.ve) {
            return new String(sp(j10), charset);
        }
        String str = new String(zVar.f16940c, i10, (int) j10, charset);
        int i11 = (int) (((long) zVar.tt) + j10);
        zVar.tt = i11;
        this.tt -= j10;
        if (i11 == zVar.ve) {
            this.f16934c = zVar.tt();
            m.c(zVar);
        }
        return str;
    }

    @Override // com.byazt.mk.uj
    /* JADX INFO: renamed from: tt, reason: merged with bridge method [inline-methods] */
    public ve i(int i10) {
        z zVarN = n(1);
        byte[] bArr = zVarN.f16940c;
        int i11 = zVarN.ve;
        zVarN.ve = i11 + 1;
        bArr[i11] = (byte) i10;
        this.tt++;
        return this;
    }

    @Override // com.byazt.mk.n
    public void c(byte[] bArr) throws EOFException {
        int i10 = 0;
        while (i10 < bArr.length) {
            int iC = c(bArr, i10, bArr.length - i10);
            if (iC == -1) {
                throw new EOFException();
            }
            i10 += iC;
        }
    }

    public int c(byte[] bArr, int i10, int i11) {
        rl.c(bArr.length, i10, i11);
        z zVar = this.f16934c;
        if (zVar == null) {
            return -1;
        }
        int iMin = Math.min(i11, zVar.ve - zVar.tt);
        System.arraycopy(zVar.f16940c, zVar.tt, bArr, i10, iMin);
        int i12 = zVar.tt + iMin;
        zVar.tt = i12;
        this.tt -= (long) iMin;
        if (i12 == zVar.ve) {
            this.f16934c = zVar.tt();
            m.c(zVar);
        }
        return iMin;
    }

    @Override // com.byazt.mk.uj
    /* JADX INFO: renamed from: c, reason: merged with bridge method [inline-methods] */
    public ve tt(a aVar) {
        if (aVar != null) {
            aVar.c(this);
            return this;
        }
        throw new IllegalArgumentException("byteString == null");
    }

    @Override // com.byazt.mk.uj
    /* JADX INFO: renamed from: c, reason: merged with bridge method [inline-methods] */
    public ve tt(String str) {
        return c(str, 0, str.length());
    }

    public ve c(String str, int i10, int i11) {
        char cCharAt;
        if (str == null) {
            throw new IllegalArgumentException("string == null");
        }
        if (i10 < 0) {
            throw new IllegalArgumentException("beginIndex < 0: ".concat(String.valueOf(i10)));
        }
        if (i11 >= i10) {
            if (i11 > str.length()) {
                throw new IllegalArgumentException("endIndex > string.length: " + i11 + " > " + str.length());
            }
            while (i10 < i11) {
                char cCharAt2 = str.charAt(i10);
                if (cCharAt2 < 128) {
                    z zVarN = n(1);
                    byte[] bArr = zVarN.f16940c;
                    int i12 = zVarN.ve - i10;
                    int iMin = Math.min(i11, 8192 - i12);
                    int i13 = i10 + 1;
                    bArr[i10 + i12] = (byte) cCharAt2;
                    while (true) {
                        i10 = i13;
                        if (i10 >= iMin || (cCharAt = str.charAt(i10)) >= 128) {
                            break;
                        }
                        i13 = i10 + 1;
                        bArr[i10 + i12] = (byte) cCharAt;
                    }
                    int i14 = zVarN.ve;
                    int i15 = (i12 + i10) - i14;
                    zVarN.ve = i14 + i15;
                    this.tt += (long) i15;
                } else {
                    if (cCharAt2 < 2048) {
                        i((cCharAt2 >> 6) | 192);
                        i((cCharAt2 & '?') | 128);
                    } else if (cCharAt2 >= 55296 && cCharAt2 <= 57343) {
                        int i16 = i10 + 1;
                        char cCharAt3 = i16 < i11 ? str.charAt(i16) : (char) 0;
                        if (cCharAt2 <= 56319 && cCharAt3 >= 56320 && cCharAt3 <= 57343) {
                            int i17 = (((cCharAt2 & 10239) << 10) | (9215 & cCharAt3)) + 65536;
                            i((i17 >> 18) | MediaPlayer.MEDIA_PLAYER_OPTION_GET_PLAY_WASTE_DATA);
                            i(((i17 >> 12) & 63) | 128);
                            i(((i17 >> 6) & 63) | 128);
                            i((i17 & 63) | 128);
                            i10 += 2;
                        } else {
                            i(63);
                            i10 = i16;
                        }
                    } else {
                        i((cCharAt2 >> '\f') | Opcodes.SHL_INT_LIT8);
                        i(((cCharAt2 >> 6) & 63) | 128);
                        i((cCharAt2 & '?') | 128);
                    }
                    i10++;
                }
            }
            return this;
        }
        throw new IllegalArgumentException("endIndex < beginIndex: " + i11 + " < " + i10);
    }

    public ve c(int i10) {
        if (i10 < 128) {
            i(i10);
        } else if (i10 < 2048) {
            i((i10 >> 6) | 192);
            i((i10 & 63) | 128);
        } else if (i10 < 65536) {
            if (i10 >= 55296 && i10 <= 57343) {
                i(63);
            } else {
                i((i10 >> 12) | Opcodes.SHL_INT_LIT8);
                i(((i10 >> 6) & 63) | 128);
                i((i10 & 63) | 128);
            }
        } else if (i10 <= 1114111) {
            i((i10 >> 18) | MediaPlayer.MEDIA_PLAYER_OPTION_GET_PLAY_WASTE_DATA);
            i(((i10 >> 12) & 63) | 128);
            i(((i10 >> 6) & 63) | 128);
            i((i10 & 63) | 128);
        } else {
            throw new IllegalArgumentException("Unexpected code point: " + Integer.toHexString(i10));
        }
        return this;
    }

    public ve c(String str, int i10, int i11, Charset charset) {
        if (str == null) {
            throw new IllegalArgumentException("string == null");
        }
        if (i10 < 0) {
            throw new IllegalAccessError("beginIndex < 0: ".concat(String.valueOf(i10)));
        }
        if (i11 >= i10) {
            if (i11 > str.length()) {
                throw new IllegalArgumentException("endIndex > string.length: " + i11 + " > " + str.length());
            }
            if (charset != null) {
                if (charset.equals(rl.f16926c)) {
                    return c(str, i10, i11);
                }
                byte[] bytes = str.substring(i10, i11).getBytes(charset);
                return ve(bytes, 0, bytes.length);
            }
            throw new IllegalArgumentException("charset == null");
        }
        throw new IllegalArgumentException("endIndex < beginIndex: " + i11 + " < " + i10);
    }

    public long c(my myVar) throws IOException {
        if (myVar == null) {
            throw new IllegalArgumentException("source == null");
        }
        long j10 = 0;
        while (true) {
            long jC = myVar.c(this, 8192L);
            if (jC == -1) {
                return j10;
            }
            j10 += jC;
        }
    }

    @Override // com.byazt.mk.my
    public long c(ve veVar, long j10) {
        if (veVar == null) {
            throw new IllegalArgumentException("sink == null");
        }
        if (j10 >= 0) {
            long j11 = this.tt;
            if (j11 == 0) {
                return -1L;
            }
            if (j10 > j11) {
                j10 = j11;
            }
            veVar.a_(this, j10);
            return j10;
        }
        throw new IllegalArgumentException("byteCount < 0: ".concat(String.valueOf(j10)));
    }

    @Override // com.byazt.mk.n
    public long c(byte b10) {
        return c(b10, 0L, Long.MAX_VALUE);
    }

    public long c(byte b10, long j10, long j11) {
        z zVar;
        long j12 = 0;
        if (j10 >= 0 && j11 >= j10) {
            long j13 = this.tt;
            long j14 = j11 > j13 ? j13 : j11;
            if (j10 == j14 || (zVar = this.f16934c) == null) {
                return -1L;
            }
            if (j13 - j10 < j10) {
                while (j13 > j10) {
                    zVar = zVar.sp;
                    j13 -= (long) (zVar.ve - zVar.tt);
                }
            } else {
                while (true) {
                    long j15 = ((long) (zVar.ve - zVar.tt)) + j12;
                    if (j15 >= j10) {
                        break;
                    }
                    zVar = zVar.f16939a;
                    j12 = j15;
                }
                j13 = j12;
            }
            long j16 = j10;
            while (j13 < j14) {
                byte[] bArr = zVar.f16940c;
                int iMin = (int) Math.min(zVar.ve, (((long) zVar.tt) + j14) - j13);
                for (int i10 = (int) ((((long) zVar.tt) + j16) - j13); i10 < iMin; i10++) {
                    if (bArr[i10] == b10) {
                        return ((long) (i10 - zVar.tt)) + j13;
                    }
                }
                j13 += (long) (zVar.ve - zVar.tt);
                zVar = zVar.f16939a;
                j16 = j13;
            }
            return -1L;
        }
        throw new IllegalArgumentException(String.format("size=%s fromIndex=%s toIndex=%s", Long.valueOf(this.tt), Long.valueOf(j10), Long.valueOf(j11)));
    }

    @Override // com.byazt.mk.n
    public boolean c(long j10, a aVar) {
        return c(j10, aVar, 0, aVar.sp());
    }

    public boolean c(long j10, a aVar, int i10, int i11) {
        if (j10 < 0 || i10 < 0 || i11 < 0 || this.tt - j10 < i11 || aVar.sp() - i10 < i11) {
            return false;
        }
        for (int i12 = 0; i12 < i11; i12++) {
            if (tt(((long) i12) + j10) != aVar.c(i10 + i12)) {
                return false;
            }
        }
        return true;
    }

    @Override // com.byazt.mk.my
    public gt c() {
        return gt.ve;
    }
}
