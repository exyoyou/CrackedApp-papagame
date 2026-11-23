package com.byazt.xe;

import com.byazt.uq.sp;
import java.io.Closeable;
import java.io.File;
import java.io.FileInputStream;
import java.io.IOException;
import java.nio.ByteBuffer;
import java.nio.ByteOrder;
import java.nio.channels.FileChannel;
import java.nio.charset.Charset;
import java.util.HashMap;
import java.util.Map;

/* JADX INFO: loaded from: classes9.dex */
@com.byazt.zqa.c(c = {0, 1, 1093, 34})
public class a implements Closeable {

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final FileInputStream f21807c;

    /* JADX INFO: renamed from: n, reason: collision with root package name */
    public final Map<String, ve> f21808n = new HashMap();
    public c tt;
    public ve[] uj;
    public tt[] ve;

    @com.byazt.zqa.c(c = {0, 1, 1093, 464})
    private static class c {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        public final long f21809a;

        /* JADX INFO: renamed from: c, reason: collision with root package name */
        public final byte[] f21810c;

        /* JADX INFO: renamed from: da, reason: collision with root package name */
        public final short f21811da;

        /* JADX INFO: renamed from: i, reason: collision with root package name */
        public final short f21812i;

        /* JADX INFO: renamed from: n, reason: collision with root package name */
        public final long f21813n;
        public final short sl;
        public final long sp;

        /* JADX INFO: renamed from: t, reason: collision with root package name */
        public final short f21814t;
        public final short tt;

        /* JADX INFO: renamed from: u, reason: collision with root package name */
        public final short f21815u;
        public final int uj;
        public final short ve;

        /* JADX INFO: renamed from: x, reason: collision with root package name */
        public final int f21816x;
        public final short yp;

        private c(FileChannel fileChannel) throws IOException {
            byte[] bArr = new byte[16];
            this.f21810c = bArr;
            fileChannel.position(0L);
            fileChannel.read(ByteBuffer.wrap(bArr));
            if (bArr[0] != 127 || bArr[1] != 69 || bArr[2] != 76 || bArr[3] != 70) {
                throw new IOException(String.format("bad elf magic: %x %x %x %x.", Byte.valueOf(bArr[0]), Byte.valueOf(bArr[1]), Byte.valueOf(bArr[2]), Byte.valueOf(bArr[3])));
            }
            a.tt(bArr[4], 1, 2, "bad elf class: " + ((int) bArr[4]));
            a.tt(bArr[5], 1, 2, "bad elf data encoding: " + ((int) bArr[5]));
            ByteBuffer byteBufferAllocate = ByteBuffer.allocate(bArr[4] == 1 ? 36 : 48);
            byteBufferAllocate.order(bArr[5] == 1 ? ByteOrder.LITTLE_ENDIAN : ByteOrder.BIG_ENDIAN);
            a.tt(fileChannel, byteBufferAllocate, "failed to read rest part of ehdr.");
            this.tt = byteBufferAllocate.getShort();
            this.ve = byteBufferAllocate.getShort();
            int i10 = byteBufferAllocate.getInt();
            this.uj = i10;
            a.tt(i10, 1, 1, "bad elf version: " + i10);
            byte b10 = bArr[4];
            if (b10 == 1) {
                this.f21813n = byteBufferAllocate.getInt();
                this.f21809a = byteBufferAllocate.getInt();
                this.sp = byteBufferAllocate.getInt();
            } else {
                if (b10 != 2) {
                    throw new IOException("Unexpected elf class: " + ((int) bArr[4]));
                }
                this.f21813n = byteBufferAllocate.getLong();
                this.f21809a = byteBufferAllocate.getLong();
                this.sp = byteBufferAllocate.getLong();
            }
            this.f21816x = byteBufferAllocate.getInt();
            this.f21812i = byteBufferAllocate.getShort();
            this.f21811da = byteBufferAllocate.getShort();
            this.sl = byteBufferAllocate.getShort();
            this.f21814t = byteBufferAllocate.getShort();
            this.f21815u = byteBufferAllocate.getShort();
            this.yp = byteBufferAllocate.getShort();
        }
    }

    @com.byazt.zqa.c(c = {0, 1, 1093, 480})
    private static class tt {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        public final long f21817a;

        /* JADX INFO: renamed from: c, reason: collision with root package name */
        public final int f21818c;

        /* JADX INFO: renamed from: n, reason: collision with root package name */
        public final long f21819n;
        public final long sp;
        public final int tt;
        public final long uj;
        public final long ve;

        /* JADX INFO: renamed from: x, reason: collision with root package name */
        public final long f21820x;

        private tt(ByteBuffer byteBuffer, int i10) throws IOException {
            if (i10 == 1) {
                this.f21818c = byteBuffer.getInt();
                this.ve = byteBuffer.getInt();
                this.uj = byteBuffer.getInt();
                this.f21819n = byteBuffer.getInt();
                this.f21817a = byteBuffer.getInt();
                this.sp = byteBuffer.getInt();
                this.tt = byteBuffer.getInt();
                this.f21820x = byteBuffer.getInt();
                return;
            }
            if (i10 != 2) {
                throw new IOException("Unexpected elf class: ".concat(String.valueOf(i10)));
            }
            this.f21818c = byteBuffer.getInt();
            this.tt = byteBuffer.getInt();
            this.ve = byteBuffer.getLong();
            this.uj = byteBuffer.getLong();
            this.f21819n = byteBuffer.getLong();
            this.f21817a = byteBuffer.getLong();
            this.sp = byteBuffer.getLong();
            this.f21820x = byteBuffer.getLong();
        }
    }

    @com.byazt.zqa.c(c = {0, 1, 1093, 471})
    private static class ve {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        public final long f21821a;

        /* JADX INFO: renamed from: c, reason: collision with root package name */
        public final int f21822c;

        /* JADX INFO: renamed from: da, reason: collision with root package name */
        public final long f21823da;

        /* JADX INFO: renamed from: i, reason: collision with root package name */
        public final long f21824i;

        /* JADX INFO: renamed from: n, reason: collision with root package name */
        public final long f21825n;
        public String sl;
        public final int sp;
        public final int tt;
        public final long uj;
        public final long ve;

        /* JADX INFO: renamed from: x, reason: collision with root package name */
        public final int f21826x;

        private ve(ByteBuffer byteBuffer, int i10) throws IOException {
            if (i10 == 1) {
                this.f21822c = byteBuffer.getInt();
                this.tt = byteBuffer.getInt();
                this.ve = byteBuffer.getInt();
                this.uj = byteBuffer.getInt();
                this.f21825n = byteBuffer.getInt();
                this.f21821a = byteBuffer.getInt();
                this.sp = byteBuffer.getInt();
                this.f21826x = byteBuffer.getInt();
                this.f21824i = byteBuffer.getInt();
                this.f21823da = byteBuffer.getInt();
            } else {
                if (i10 != 2) {
                    throw new IOException("Unexpected elf class: ".concat(String.valueOf(i10)));
                }
                this.f21822c = byteBuffer.getInt();
                this.tt = byteBuffer.getInt();
                this.ve = byteBuffer.getLong();
                this.uj = byteBuffer.getLong();
                this.f21825n = byteBuffer.getLong();
                this.f21821a = byteBuffer.getLong();
                this.sp = byteBuffer.getInt();
                this.f21826x = byteBuffer.getInt();
                this.f21824i = byteBuffer.getLong();
                this.f21823da = byteBuffer.getLong();
            }
            this.sl = null;
        }
    }

    private a(File file) throws IOException {
        ve[] veVarArr;
        this.tt = null;
        this.ve = null;
        this.uj = null;
        FileInputStream fileInputStream = new FileInputStream(file);
        this.f21807c = fileInputStream;
        FileChannel channel = fileInputStream.getChannel();
        this.tt = new c(channel);
        ByteBuffer byteBufferAllocate = ByteBuffer.allocate(128);
        byteBufferAllocate.limit(this.tt.f21811da);
        byteBufferAllocate.order(this.tt.f21810c[5] == 1 ? ByteOrder.LITTLE_ENDIAN : ByteOrder.BIG_ENDIAN);
        channel.position(this.tt.f21809a);
        this.ve = new tt[this.tt.sl];
        for (int i10 = 0; i10 < this.ve.length; i10++) {
            tt(channel, byteBufferAllocate, "failed to read phdr.");
            this.ve[i10] = new tt(byteBufferAllocate, this.tt.f21810c[4]);
        }
        channel.position(this.tt.sp);
        byteBufferAllocate.limit(this.tt.f21814t);
        this.uj = new ve[this.tt.f21815u];
        int i11 = 0;
        while (true) {
            veVarArr = this.uj;
            if (i11 >= veVarArr.length) {
                break;
            }
            tt(channel, byteBufferAllocate, "failed to read shdr.");
            this.uj[i11] = new ve(byteBufferAllocate, this.tt.f21810c[4]);
            i11++;
        }
        short s10 = this.tt.yp;
        if (s10 > 0) {
            ByteBuffer byteBufferC = c(veVarArr[s10]);
            for (ve veVar : this.uj) {
                byteBufferC.position(veVar.f21822c);
                String strC = c(byteBufferC);
                veVar.sl = strC;
                this.f21808n.put(strC, veVar);
            }
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static void tt(FileChannel fileChannel, ByteBuffer byteBuffer, String str) throws IOException {
        byteBuffer.rewind();
        int i10 = fileChannel.read(byteBuffer);
        if (i10 == byteBuffer.limit()) {
            byteBuffer.flip();
            return;
        }
        throw new IOException(str + " Rest bytes insufficient, expect to read " + byteBuffer.limit() + " bytes but only " + i10 + " bytes were read.");
    }

    @Override // java.io.Closeable, java.lang.AutoCloseable
    public void close() throws IOException {
        this.f21807c.close();
        this.f21808n.clear();
        this.ve = null;
        this.uj = null;
    }

    public static boolean c(File file) {
        try {
            sp.c(new a(file));
            return true;
        } catch (IOException unused) {
            sp.c((Closeable) null);
            return false;
        } catch (Throwable th) {
            sp.c((Closeable) null);
            throw th;
        }
    }

    private static String c(ByteBuffer byteBuffer) {
        byte[] bArrArray = byteBuffer.array();
        int iPosition = byteBuffer.position();
        while (byteBuffer.hasRemaining() && bArrArray[byteBuffer.position()] != 0) {
            byteBuffer.position(byteBuffer.position() + 1);
        }
        byteBuffer.position(byteBuffer.position() + 1);
        return new String(bArrArray, iPosition, (byteBuffer.position() - iPosition) - 1, Charset.forName("ASCII"));
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static void tt(int i10, int i11, int i12, String str) throws IOException {
        if (i10 < i11 || i10 > i12) {
            throw new IOException(str);
        }
    }

    private ByteBuffer c(ve veVar) throws IOException {
        ByteBuffer byteBufferAllocate = ByteBuffer.allocate((int) veVar.f21821a);
        this.f21807c.getChannel().position(veVar.f21825n);
        tt(this.f21807c.getChannel(), byteBufferAllocate, "failed to read section: " + veVar.sl);
        return byteBufferAllocate;
    }
}
