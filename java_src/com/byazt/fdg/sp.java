package com.byazt.fdg;

import androidx.constraintlayout.core.motion.utils.TypedValues;
import com.bykv.vk.component.ttvideo.mediakit.medialoader.AVMDLDataLoader;
import java.io.FileDescriptor;
import java.io.IOException;
import java.io.RandomAccessFile;
import java.nio.ByteBuffer;
import java.nio.ByteOrder;
import java.security.DigestException;
import java.security.MessageDigest;
import java.security.NoSuchAlgorithmException;
import java.util.ArrayList;

/* JADX INFO: loaded from: classes6.dex */
@com.byazt.zqa.c(c = {0, 1, AVMDLDataLoader.KeyIsPreloadWaitListType, 91})
public abstract class sp {

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public static final byte[] f14128c = new byte[8];

    @com.byazt.zqa.c(c = {0, 1, AVMDLDataLoader.KeyIsPreloadWaitListType, 180})
    static class c {

        /* JADX INFO: renamed from: c, reason: collision with root package name */
        public final ByteBuffer f14129c;
        public final byte[] tt;

        public c(ByteBuffer byteBuffer, byte[] bArr) {
            this.f14129c = byteBuffer;
            this.tt = bArr;
        }
    }

    @com.byazt.zqa.c(c = {0, 1, AVMDLDataLoader.KeyIsPreloadWaitListType, TypedValues.Custom.TYPE_BOOLEAN})
    private static class tt implements da {

        /* JADX INFO: renamed from: c, reason: collision with root package name */
        public int f14130c;

        /* JADX INFO: renamed from: n, reason: collision with root package name */
        public final byte[] f14131n;
        public final ByteBuffer tt;
        public final byte[] uj;
        public final MessageDigest ve;

        /* JADX INFO: Access modifiers changed from: private */
        public void tt() {
            int iPosition = this.tt.position() % 4096;
            if (iPosition == 0) {
                return;
            }
            this.tt.put(ByteBuffer.allocate(4096 - iPosition));
        }

        private tt(byte[] bArr, ByteBuffer byteBuffer) throws NoSuchAlgorithmException {
            this.uj = new byte[32];
            this.f14131n = bArr;
            this.tt = byteBuffer.slice();
            MessageDigest messageDigest = MessageDigest.getInstance("SHA-256");
            this.ve = messageDigest;
            messageDigest.update(bArr);
            this.f14130c = 0;
        }

        @Override // com.byazt.fdg.da
        public void c(ByteBuffer byteBuffer) throws DigestException {
            byteBuffer.position();
            int iRemaining = byteBuffer.remaining();
            while (iRemaining > 0) {
                int iMin = Math.min(iRemaining, 4096 - this.f14130c);
                byteBuffer.limit(byteBuffer.position() + iMin);
                this.ve.update(byteBuffer);
                iRemaining -= iMin;
                int i10 = this.f14130c + iMin;
                this.f14130c = i10;
                if (i10 == 4096) {
                    MessageDigest messageDigest = this.ve;
                    byte[] bArr = this.uj;
                    messageDigest.digest(bArr, 0, bArr.length);
                    this.tt.put(this.uj);
                    this.ve.update(this.f14131n);
                    this.f14130c = 0;
                }
            }
        }

        public void c() throws DigestException {
            if (this.f14130c == 0) {
                return;
            }
            throw new IllegalStateException("Buffer is not empty: " + this.f14130c);
        }
    }

    public static c c(RandomAccessFile randomAccessFile, u uVar, i iVar) throws NoSuchAlgorithmException, DigestException, IOException, SecurityException {
        int[] iArrTt = tt(randomAccessFile.length() - (uVar.ve - uVar.tt));
        int i10 = iArrTt[iArrTt.length - 1];
        int i11 = i10 + 4096;
        ByteBuffer byteBufferC = iVar.c(i11);
        ByteOrder byteOrder = ByteOrder.LITTLE_ENDIAN;
        byteBufferC.order(byteOrder);
        ByteBuffer byteBufferC2 = c(byteBufferC, 0, i10);
        int i12 = i10 + 64;
        ByteBuffer byteBufferC3 = c(byteBufferC, i10, i12);
        ByteBuffer byteBufferC4 = c(byteBufferC, i12, i11);
        byte[] bArr = new byte[32];
        ByteBuffer byteBufferWrap = ByteBuffer.wrap(bArr);
        byteBufferWrap.order(byteOrder);
        c(randomAccessFile, uVar, byteBufferC2, byteBufferWrap, byteBufferC3, byteBufferC4);
        byteBufferC.position(i12 + byteBufferC4.limit());
        byteBufferC.putInt(byteBufferC4.limit() + 64 + 4);
        byteBufferC.flip();
        return new c(byteBufferC, bArr);
    }

    private static int[] tt(long j10) {
        ArrayList arrayList = new ArrayList();
        do {
            j10 = c(j10, 4096L) * 32;
            arrayList.add(Long.valueOf(c(j10, 4096L) * 4096));
        } while (j10 > 4096);
        int[] iArr = new int[arrayList.size() + 1];
        int i10 = 0;
        iArr[0] = 0;
        while (i10 < arrayList.size()) {
            int i11 = i10 + 1;
            iArr[i11] = iArr[i10] + c(((Long) arrayList.get((arrayList.size() - i10) - 1)).longValue());
            i10 = i11;
        }
        return iArr;
    }

    private static void c(RandomAccessFile randomAccessFile, u uVar, ByteBuffer byteBuffer, ByteBuffer byteBuffer2, ByteBuffer byteBuffer3, ByteBuffer byteBuffer4) throws NoSuchAlgorithmException, DigestException, IOException {
        c(uVar);
        long j10 = uVar.ve - uVar.tt;
        int[] iArrTt = tt(randomAccessFile.length() - j10);
        if (byteBuffer != null) {
            byte[] bArrC = c(randomAccessFile, uVar, f14128c, iArrTt, byteBuffer);
            if (byteBuffer2 != null) {
                byteBuffer2.put(bArrC);
                byteBuffer2.flip();
            }
        }
        if (byteBuffer3 != null) {
            byteBuffer3.order(ByteOrder.LITTLE_ENDIAN);
            c(byteBuffer3, randomAccessFile.length(), iArrTt.length - 1, f14128c);
        }
        if (byteBuffer4 != null) {
            byteBuffer4.order(ByteOrder.LITTLE_ENDIAN);
            c(byteBuffer4, uVar.tt, j10, uVar.uj);
        }
    }

    private static void c(da daVar, sl slVar, int i10) throws DigestException, IOException {
        long jC = slVar.c();
        long j10 = 0;
        while (jC > 0) {
            int iMin = (int) Math.min(jC, i10);
            slVar.c(daVar, j10, iMin);
            long j11 = iMin;
            j10 += j11;
            jC -= j11;
        }
    }

    private static void c(RandomAccessFile randomAccessFile, u uVar, byte[] bArr, ByteBuffer byteBuffer) throws NoSuchAlgorithmException, DigestException, IOException {
        tt ttVar = new tt(bArr, byteBuffer);
        c(ttVar, new t(randomAccessFile.getFD(), 0L, uVar.tt), 1048576);
        long j10 = uVar.uj + 16;
        FileDescriptor fd2 = randomAccessFile.getFD();
        long j11 = uVar.ve;
        c(ttVar, new t(fd2, j11, j10 - j11), 1048576);
        ByteBuffer byteBufferOrder = ByteBuffer.allocate(4).order(ByteOrder.LITTLE_ENDIAN);
        byteBufferOrder.putInt(c(uVar.tt));
        byteBufferOrder.flip();
        ttVar.c(byteBufferOrder);
        long j12 = j10 + 4;
        c(ttVar, new t(randomAccessFile.getFD(), j12, randomAccessFile.length() - j12), 1048576);
        int length = (int) (randomAccessFile.length() % 4096);
        if (length != 0) {
            ttVar.c(ByteBuffer.allocate(4096 - length));
        }
        ttVar.c();
        ttVar.tt();
    }

    private static byte[] c(RandomAccessFile randomAccessFile, u uVar, byte[] bArr, int[] iArr, ByteBuffer byteBuffer) throws NoSuchAlgorithmException, DigestException, IOException {
        c(randomAccessFile, uVar, bArr, c(byteBuffer, iArr[iArr.length - 2], iArr[iArr.length - 1]));
        int length = iArr.length - 3;
        while (true) {
            if (length >= 0) {
                int i10 = length + 1;
                ByteBuffer byteBufferC = c(byteBuffer, iArr[i10], iArr[length + 2]);
                ByteBuffer byteBufferC2 = c(byteBuffer, iArr[length], iArr[i10]);
                x xVar = new x(byteBufferC);
                tt ttVar = new tt(bArr, byteBufferC2);
                c(ttVar, xVar, 4096);
                ttVar.c();
                ttVar.tt();
                length--;
            } else {
                byte[] bArr2 = new byte[32];
                tt ttVar2 = new tt(bArr, ByteBuffer.wrap(bArr2));
                ttVar2.c(c(byteBuffer, 0, 4096));
                ttVar2.c();
                return bArr2;
            }
        }
    }

    private static ByteBuffer c(ByteBuffer byteBuffer, long j10, int i10, byte[] bArr) {
        if (bArr.length == 8) {
            byteBuffer.put("TrueBrew".getBytes());
            byteBuffer.put((byte) 1);
            byteBuffer.put((byte) 0);
            byteBuffer.put((byte) 12);
            byteBuffer.put((byte) 7);
            byteBuffer.putShort((short) 1);
            byteBuffer.putShort((short) 1);
            byteBuffer.putInt(0);
            byteBuffer.putInt(0);
            byteBuffer.putLong(j10);
            byteBuffer.put((byte) 2);
            byteBuffer.put((byte) 0);
            byteBuffer.put(bArr);
            c(byteBuffer, 22);
            byteBuffer.flip();
            return byteBuffer;
        }
        throw new IllegalArgumentException("salt is not 8 bytes long");
    }

    private static ByteBuffer c(ByteBuffer byteBuffer, long j10, long j11, long j12) {
        byteBuffer.putInt(24);
        byteBuffer.putShort((short) 1);
        c(byteBuffer, 2);
        byteBuffer.putLong(j10);
        byteBuffer.putLong(j11);
        byteBuffer.putInt(20);
        byteBuffer.putShort((short) 2);
        c(byteBuffer, 2);
        byteBuffer.putLong(j12 + 16);
        byteBuffer.putInt(c(j10));
        c(byteBuffer, 4);
        byteBuffer.flip();
        return byteBuffer;
    }

    private static void c(u uVar) {
        long j10 = uVar.tt;
        if (j10 % 4096 != 0) {
            throw new IllegalArgumentException("APK Signing Block does not start at the page  boundary: " + uVar.tt);
        }
        if ((uVar.ve - j10) % 4096 == 0) {
            return;
        }
        throw new IllegalArgumentException("Size of APK Signing Block is not a multiple of 4096: " + (uVar.ve - uVar.tt));
    }

    private static ByteBuffer c(ByteBuffer byteBuffer, int i10, int i11) {
        ByteBuffer byteBufferDuplicate = byteBuffer.duplicate();
        byteBufferDuplicate.position(0);
        byteBufferDuplicate.limit(i11);
        byteBufferDuplicate.position(i10);
        return byteBufferDuplicate.slice();
    }

    private static void c(ByteBuffer byteBuffer, int i10) {
        byteBuffer.position(byteBuffer.position() + i10);
    }

    private static long c(long j10, long j11) {
        return ((j10 + j11) - 1) / j11;
    }

    public static int c(long j10) {
        int i10 = (int) j10;
        if (i10 == j10) {
            return i10;
        }
        throw new ArithmeticException("integer overflow");
    }
}
