package com.byazt.fdg;

import android.util.ArrayMap;
import android.util.Pair;
import android.util.SparseArray;
import androidx.annotation.RequiresApi;
import com.bykv.vk.component.ttvideo.mediakit.medialoader.AVMDLDataLoader;
import com.bykv.vk.component.ttvideo.player.MediaPlayer;
import java.io.FileDescriptor;
import java.io.IOException;
import java.io.RandomAccessFile;
import java.nio.BufferUnderflowException;
import java.nio.ByteBuffer;
import java.nio.ByteOrder;
import java.security.DigestException;
import java.security.MessageDigest;
import java.security.NoSuchAlgorithmException;
import java.security.spec.AlgorithmParameterSpec;
import java.security.spec.MGF1ParameterSpec;
import java.security.spec.PSSParameterSpec;
import java.util.Arrays;
import java.util.HashMap;
import java.util.HashSet;
import java.util.Iterator;
import java.util.Map;

/* JADX INFO: loaded from: classes6.dex */
@com.byazt.zqa.c(c = {0, 1, AVMDLDataLoader.KeyIsPreloadWaitListType, 34})
public final class a {

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public static final HashMap<String, SparseArray<u>> f14122c = new HashMap<>();

    @com.byazt.zqa.c(c = {0, 1, AVMDLDataLoader.KeyIsPreloadWaitListType, 464})
    private static class c implements da {

        /* JADX INFO: renamed from: c, reason: collision with root package name */
        public final MessageDigest[] f14123c;

        public c(MessageDigest[] messageDigestArr) {
            this.f14123c = messageDigestArr;
        }

        @Override // com.byazt.fdg.da
        public void c(ByteBuffer byteBuffer) {
            ByteBuffer byteBufferSlice = byteBuffer.slice();
            for (MessageDigest messageDigest : this.f14123c) {
                byteBufferSlice.position(0);
                messageDigest.update(byteBufferSlice);
            }
        }
    }

    @RequiresApi(api = 21)
    public static void c(Map<Integer, byte[]> map, RandomAccessFile randomAccessFile, u uVar) throws SecurityException {
        if (map.isEmpty()) {
            throw new SecurityException("No digests provided");
        }
        ArrayMap arrayMap = new ArrayMap();
        boolean z10 = true;
        if (map.containsKey(1)) {
            arrayMap.put(1, map.get(1));
        }
        if (map.containsKey(2)) {
            arrayMap.put(2, map.get(2));
        }
        boolean z11 = false;
        if (!arrayMap.isEmpty()) {
            try {
                c(arrayMap, randomAccessFile.getFD(), uVar);
                z10 = false;
            } catch (IOException e10) {
                throw new SecurityException("Cannot get FD", e10);
            }
        }
        if (map.containsKey(3)) {
            c(map.get(3), randomAccessFile, uVar);
        } else {
            z11 = z10;
        }
        if (z11) {
            throw new SecurityException("No known digest exists for integrity check");
        }
    }

    private static int n(int i10) {
        if (i10 == 1) {
            return 32;
        }
        if (i10 == 2) {
            return 64;
        }
        if (i10 == 3) {
            return 32;
        }
        throw new IllegalArgumentException("Unknown content digest algorthm: ".concat(String.valueOf(i10)));
    }

    private static int tt(int i10, int i11) {
        if (i10 == 1) {
            if (i11 == 1) {
                return 0;
            }
            if (i11 == 2 || i11 == 3) {
                return -1;
            }
            throw new IllegalArgumentException("Unknown digestAlgorithm2: ".concat(String.valueOf(i11)));
        }
        if (i10 == 2) {
            if (i11 != 1) {
                if (i11 == 2) {
                    return 0;
                }
                if (i11 != 3) {
                    throw new IllegalArgumentException("Unknown digestAlgorithm2: ".concat(String.valueOf(i11)));
                }
            }
            return 1;
        }
        if (i10 != 3) {
            throw new IllegalArgumentException("Unknown digestAlgorithm1: ".concat(String.valueOf(i10)));
        }
        if (i11 == 1) {
            return 1;
        }
        if (i11 == 2) {
            return -1;
        }
        if (i11 == 3) {
            return 0;
        }
        throw new IllegalArgumentException("Unknown digestAlgorithm2: ".concat(String.valueOf(i11)));
    }

    public static Pair<String, ? extends AlgorithmParameterSpec> uj(int i10) {
        if (i10 != 513) {
            if (i10 == 514) {
                return Pair.create("SHA512withECDSA", null);
            }
            if (i10 != 769) {
                if (i10 != 1057) {
                    if (i10 != 1059) {
                        if (i10 != 1061) {
                            switch (i10) {
                                case 257:
                                    return Pair.create("SHA256withRSA/PSS", new PSSParameterSpec("SHA-256", "MGF1", MGF1ParameterSpec.SHA256, 32, 1));
                                case 258:
                                    return Pair.create("SHA512withRSA/PSS", new PSSParameterSpec("SHA-512", "MGF1", MGF1ParameterSpec.SHA512, 64, 1));
                                case MediaPlayer.MEDIA_PLAYER_OPTION_VIDEO_RANGE_TIME /* 259 */:
                                    break;
                                case MediaPlayer.MEDIA_PLAYER_OPTION_AUDIO_RANGE_TIME /* 260 */:
                                    return Pair.create("SHA512withRSA", null);
                                default:
                                    throw new IllegalArgumentException("Unknown signature algorithm: 0x" + Long.toHexString(i10 & (-1)));
                            }
                        }
                    }
                }
                return Pair.create("SHA256withRSA", null);
            }
            return Pair.create("SHA256withDSA", null);
        }
        return Pair.create("SHA256withECDSA", null);
    }

    public static String ve(int i10) {
        if (i10 == 513 || i10 == 514) {
            return "EC";
        }
        if (i10 == 769) {
            return "DSA";
        }
        if (i10 == 1057) {
            return "RSA";
        }
        if (i10 == 1059) {
            return "EC";
        }
        if (i10 == 1061) {
            return "DSA";
        }
        switch (i10) {
            case 257:
            case 258:
            case MediaPlayer.MEDIA_PLAYER_OPTION_VIDEO_RANGE_TIME /* 259 */:
            case MediaPlayer.MEDIA_PLAYER_OPTION_AUDIO_RANGE_TIME /* 260 */:
                return "RSA";
            default:
                throw new IllegalArgumentException("Unknown signature algorithm: 0x" + Long.toHexString(i10 & (-1)));
        }
    }

    private static void ve(ByteBuffer byteBuffer) {
        if (byteBuffer.order() != ByteOrder.LITTLE_ENDIAN) {
            throw new IllegalArgumentException("ByteBuffer byte order must be little endian");
        }
    }

    public static String tt(int i10) {
        if (i10 == 1) {
            return "SHA-256";
        }
        if (i10 == 2) {
            return "SHA-512";
        }
        if (i10 == 3) {
            return "SHA-256";
        }
        throw new IllegalArgumentException("Unknown content digest algorthm: ".concat(String.valueOf(i10)));
    }

    public static byte[] tt(ByteBuffer byteBuffer) throws IOException {
        int i10 = byteBuffer.getInt();
        if (i10 >= 0) {
            if (i10 <= byteBuffer.remaining()) {
                byte[] bArr = new byte[i10];
                byteBuffer.get(bArr);
                return bArr;
            }
            throw new IOException("Underflow while reading length-prefixed value. Length: " + i10 + ", available: " + byteBuffer.remaining());
        }
        throw new IOException("Negative length");
    }

    private static void c(Map<Integer, byte[]> map, FileDescriptor fileDescriptor, u uVar) throws SecurityException {
        t tVar = new t(fileDescriptor, 0L, uVar.tt);
        long j10 = uVar.ve;
        t tVar2 = new t(fileDescriptor, j10, uVar.uj - j10);
        ByteBuffer byteBufferDuplicate = uVar.f14135n.duplicate();
        byteBufferDuplicate.order(ByteOrder.LITTLE_ENDIAN);
        my.c(byteBufferDuplicate, uVar.tt);
        x xVar = new x(byteBufferDuplicate);
        int size = map.size();
        int[] iArr = new int[size];
        Iterator<Integer> it2 = map.keySet().iterator();
        int i10 = 0;
        while (it2.hasNext()) {
            iArr[i10] = it2.next().intValue();
            i10++;
        }
        try {
            byte[][] bArrC = c(iArr, new sl[]{tVar, tVar2, xVar});
            for (int i11 = 0; i11 < size; i11++) {
                int i12 = iArr[i11];
                if (!MessageDigest.isEqual(map.get(Integer.valueOf(i12)), bArrC[i11])) {
                    throw new SecurityException(tt(i12) + " digest of contents did not verify");
                }
            }
        } catch (DigestException e10) {
            throw new SecurityException("Failed to compute digest(s) of contents", e10);
        }
    }

    private static byte[][] c(int[] iArr, sl[] slVarArr) throws DigestException {
        String str;
        sl[] slVarArr2 = slVarArr;
        long j10 = 0;
        long jC = 0;
        for (sl slVar : slVarArr2) {
            jC += c(slVar.c());
        }
        if (jC < 2097151) {
            int i10 = (int) jC;
            byte[][] bArr = new byte[iArr.length][];
            for (int i11 = 0; i11 < iArr.length; i11++) {
                byte[] bArr2 = new byte[(n(iArr[i11]) * i10) + 5];
                bArr2[0] = 90;
                c(i10, bArr2, 1);
                bArr[i11] = bArr2;
            }
            byte[] bArr3 = new byte[5];
            bArr3[0] = -91;
            int length = iArr.length;
            MessageDigest[] messageDigestArr = new MessageDigest[length];
            int i12 = 0;
            while (true) {
                str = " digest not supported";
                if (i12 >= iArr.length) {
                    break;
                }
                String strTt = tt(iArr[i12]);
                try {
                    messageDigestArr[i12] = MessageDigest.getInstance(strTt);
                    i12++;
                } catch (NoSuchAlgorithmException e10) {
                    throw new RuntimeException(strTt + " digest not supported", e10);
                }
            }
            c cVar = new c(messageDigestArr);
            int length2 = slVarArr2.length;
            int i13 = 0;
            int i14 = 0;
            int i15 = 0;
            while (i13 < length2) {
                sl slVar2 = slVarArr2[i13];
                int i16 = length2;
                int i17 = i15;
                c cVar2 = cVar;
                String str2 = str;
                long jC2 = slVar2.c();
                long j11 = j10;
                while (jC2 > j10) {
                    int iMin = (int) Math.min(jC2, 1048576L);
                    c(iMin, bArr3, 1);
                    for (int i18 = 0; i18 < length; i18++) {
                        messageDigestArr[i18].update(bArr3);
                    }
                    c cVar3 = cVar2;
                    try {
                        slVar2.c(cVar3, j11, iMin);
                        cVar2 = cVar3;
                        int i19 = 0;
                        while (i19 < iArr.length) {
                            int i20 = iArr[i19];
                            byte[] bArr4 = bArr3;
                            byte[] bArr5 = bArr[i19];
                            int iN = n(i20);
                            sl slVar3 = slVar2;
                            MessageDigest messageDigest = messageDigestArr[i19];
                            int i21 = length;
                            int iDigest = messageDigest.digest(bArr5, (i17 * iN) + 5, iN);
                            if (iDigest != iN) {
                                throw new RuntimeException("Unexpected output size of " + messageDigest.getAlgorithm() + " digest: " + iDigest);
                            }
                            i19++;
                            bArr3 = bArr4;
                            slVar2 = slVar3;
                            length = i21;
                        }
                        long j12 = iMin;
                        j11 += j12;
                        jC2 -= j12;
                        i17++;
                        bArr3 = bArr3;
                        j10 = 0;
                    } catch (IOException e11) {
                        throw new DigestException("Failed to digest chunk #" + i17 + " of section #" + i14, e11);
                    }
                }
                i14++;
                i13++;
                slVarArr2 = slVarArr;
                i15 = i17;
                cVar = cVar2;
                str = str2;
                length2 = i16;
                j10 = 0;
            }
            String str3 = str;
            byte[][] bArr6 = new byte[iArr.length][];
            for (int i22 = 0; i22 < iArr.length; i22++) {
                int i23 = iArr[i22];
                byte[] bArr7 = bArr[i22];
                String strTt2 = tt(i23);
                try {
                    bArr6[i22] = MessageDigest.getInstance(strTt2).digest(bArr7);
                } catch (NoSuchAlgorithmException e12) {
                    throw new RuntimeException(strTt2 + str3, e12);
                }
            }
            return bArr6;
        }
        throw new DigestException("Too many chunks: ".concat(String.valueOf(jC)));
    }

    public static byte[] c(byte[] bArr, long j10, u uVar) throws SecurityException {
        if (bArr.length == 40) {
            ByteBuffer byteBufferOrder = ByteBuffer.wrap(bArr).order(ByteOrder.LITTLE_ENDIAN);
            byteBufferOrder.position(32);
            if (byteBufferOrder.getLong() == j10 - (uVar.ve - uVar.tt)) {
                return Arrays.copyOfRange(bArr, 0, 32);
            }
            throw new SecurityException("APK content size did not verify");
        }
        throw new SecurityException("Verity digest size is wrong: " + bArr.length);
    }

    private static void c(byte[] bArr, RandomAccessFile randomAccessFile, u uVar) throws SecurityException {
        try {
            if (Arrays.equals(c(bArr, randomAccessFile.length(), uVar), sp.c(randomAccessFile, uVar, new i() { // from class: com.byazt.fdg.a.1
                @Override // com.byazt.fdg.i
                public ByteBuffer c(int i10) {
                    return ByteBuffer.allocate(i10);
                }
            }).tt)) {
            } else {
                throw new SecurityException("APK verity digest of contents did not verify");
            }
        } catch (IOException | DigestException | NoSuchAlgorithmException e10) {
            throw new SecurityException("Error during verification", e10);
        }
    }

    public static Pair<ByteBuffer, Long> c(RandomAccessFile randomAccessFile) throws yp, IOException {
        Pair<ByteBuffer, Long> pairC = my.c(randomAccessFile);
        if (pairC != null) {
            return pairC;
        }
        throw new yp("Not an APK file: ZIP End of Central Directory record not found");
    }

    public static long c(ByteBuffer byteBuffer, long j10) throws yp {
        long jC = my.c(byteBuffer);
        if (jC <= j10) {
            if (my.tt(byteBuffer) + jC == j10) {
                return jC;
            }
            throw new yp("ZIP Central Directory is not immediately followed by End of Central Directory");
        }
        throw new yp("ZIP Central Directory offset out of range: " + jC + ". ZIP End of Central Directory offset: " + j10);
    }

    private static long c(long j10) {
        return ((j10 + 1048576) - 1) / 1048576;
    }

    public static int c(int i10, int i11) {
        return tt(c(i10), c(i11));
    }

    public static int c(int i10) {
        if (i10 == 513) {
            return 1;
        }
        if (i10 == 514) {
            return 2;
        }
        if (i10 == 769) {
            return 1;
        }
        if (i10 == 1057 || i10 == 1059 || i10 == 1061) {
            return 3;
        }
        switch (i10) {
            case 257:
            case MediaPlayer.MEDIA_PLAYER_OPTION_VIDEO_RANGE_TIME /* 259 */:
                return 1;
            case 258:
            case MediaPlayer.MEDIA_PLAYER_OPTION_AUDIO_RANGE_TIME /* 260 */:
                return 2;
            default:
                throw new IllegalArgumentException("Unknown signature algorithm: 0x" + Long.toHexString(i10 & (-1)));
        }
    }

    public static ByteBuffer c(ByteBuffer byteBuffer, int i10, int i11) {
        if (i10 < 0) {
            throw new IllegalArgumentException("start: ".concat(String.valueOf(i10)));
        }
        if (i11 >= i10) {
            int iCapacity = byteBuffer.capacity();
            if (i11 <= byteBuffer.capacity()) {
                int iLimit = byteBuffer.limit();
                int iPosition = byteBuffer.position();
                try {
                    byteBuffer.position(0);
                    byteBuffer.limit(i11);
                    byteBuffer.position(i10);
                    ByteBuffer byteBufferSlice = byteBuffer.slice();
                    byteBufferSlice.order(byteBuffer.order());
                    return byteBufferSlice;
                } finally {
                    byteBuffer.position(0);
                    byteBuffer.limit(iLimit);
                    byteBuffer.position(iPosition);
                }
            }
            throw new IllegalArgumentException("end > capacity: " + i11 + " > " + iCapacity);
        }
        throw new IllegalArgumentException("end < start: " + i11 + " < " + i10);
    }

    public static ByteBuffer c(ByteBuffer byteBuffer, int i10) throws BufferUnderflowException {
        if (i10 >= 0) {
            int iLimit = byteBuffer.limit();
            int iPosition = byteBuffer.position();
            int i11 = i10 + iPosition;
            if (i11 >= iPosition && i11 <= iLimit) {
                byteBuffer.limit(i11);
                try {
                    ByteBuffer byteBufferSlice = byteBuffer.slice();
                    byteBufferSlice.order(byteBuffer.order());
                    byteBuffer.position(i11);
                    return byteBufferSlice;
                } finally {
                    byteBuffer.limit(iLimit);
                }
            }
            throw new BufferUnderflowException();
        }
        throw new IllegalArgumentException("size: ".concat(String.valueOf(i10)));
    }

    public static ByteBuffer c(ByteBuffer byteBuffer) throws IOException {
        if (byteBuffer.remaining() >= 4) {
            int i10 = byteBuffer.getInt();
            if (i10 >= 0) {
                if (i10 <= byteBuffer.remaining()) {
                    return c(byteBuffer, i10);
                }
                throw new IOException("Length-prefixed field longer than remaining buffer. Field length: " + i10 + ", remaining: " + byteBuffer.remaining());
            }
            throw new IllegalArgumentException("Negative length");
        }
        throw new IOException("Remaining buffer too short to contain length of length-prefixed field. Remaining: " + byteBuffer.remaining());
    }

    public static void c(int i10, byte[] bArr, int i11) {
        bArr[i11] = (byte) (i10 & 255);
        bArr[i11 + 1] = (byte) ((i10 >>> 8) & 255);
        bArr[i11 + 2] = (byte) ((i10 >>> 16) & 255);
        bArr[i11 + 3] = (byte) ((i10 >>> 24) & 255);
    }

    public static Pair<ByteBuffer, Long> c(RandomAccessFile randomAccessFile, long j10) throws yp, IOException {
        if (j10 >= 32) {
            ByteBuffer byteBufferAllocate = ByteBuffer.allocate(24);
            ByteOrder byteOrder = ByteOrder.LITTLE_ENDIAN;
            byteBufferAllocate.order(byteOrder);
            randomAccessFile.seek(j10 - ((long) byteBufferAllocate.capacity()));
            randomAccessFile.readFully(byteBufferAllocate.array(), byteBufferAllocate.arrayOffset(), byteBufferAllocate.capacity());
            if (byteBufferAllocate.getLong(8) != 2334950737559900225L || byteBufferAllocate.getLong(16) != 3617552046287187010L) {
                return null;
            }
            long j11 = byteBufferAllocate.getLong(0);
            if (j11 < byteBufferAllocate.capacity() || j11 > 2147483639) {
                throw new yp("APK Signing Block size out of range: ".concat(String.valueOf(j11)));
            }
            int i10 = (int) (8 + j11);
            long j12 = j10 - ((long) i10);
            if (j12 >= 0) {
                ByteBuffer byteBufferAllocate2 = ByteBuffer.allocate(i10);
                byteBufferAllocate2.order(byteOrder);
                randomAccessFile.seek(j12);
                randomAccessFile.readFully(byteBufferAllocate2.array(), byteBufferAllocate2.arrayOffset(), byteBufferAllocate2.capacity());
                long j13 = byteBufferAllocate2.getLong(0);
                if (j13 == j11) {
                    return Pair.create(byteBufferAllocate2, Long.valueOf(j12));
                }
                throw new yp("APK Signing Block sizes in header and footer do not match: " + j13 + " vs " + j11);
            }
            throw new yp("APK Signing Block offset out of range: ".concat(String.valueOf(j12)));
        }
        throw new yp("APK too small for APK Signing Block. ZIP Central Directory offset: ".concat(String.valueOf(j10)));
    }

    public static void c(String str, RandomAccessFile randomAccessFile, int... iArr) throws yp, IOException {
        ByteBuffer byteBuffer;
        String str2 = str;
        f14122c.put(str2, new SparseArray<>());
        Pair<ByteBuffer, Long> pairC = c(randomAccessFile);
        ByteBuffer byteBuffer2 = (ByteBuffer) pairC.first;
        long jLongValue = ((Long) pairC.second).longValue();
        if (!my.c(randomAccessFile, jLongValue)) {
            long jC = c(byteBuffer2, jLongValue);
            Pair<ByteBuffer, Long> pairC2 = c(randomAccessFile, jC);
            if (pairC2 == null) {
                return;
            }
            ByteBuffer byteBuffer3 = (ByteBuffer) pairC2.first;
            long jLongValue2 = ((Long) pairC2.second).longValue();
            ve(byteBuffer3);
            int i10 = 8;
            ByteBuffer byteBufferC = c(byteBuffer3, 8, byteBuffer3.capacity() - 24);
            HashSet hashSet = new HashSet();
            for (int i11 : iArr) {
                hashSet.add(Integer.valueOf(i11));
            }
            while (byteBufferC.hasRemaining() && byteBufferC.remaining() >= i10) {
                long j10 = byteBufferC.getLong();
                if (j10 < 4 || j10 > 2147483647L) {
                    return;
                }
                int i12 = (int) j10;
                int iPosition = byteBufferC.position() + i12;
                if (i12 > byteBufferC.remaining()) {
                    return;
                }
                int i13 = byteBufferC.getInt();
                if (hashSet.contains(Integer.valueOf(i13))) {
                    f14122c.get(str2).put(i13, new u(c(byteBufferC, i12 - 4), jLongValue2, jC, jLongValue, byteBuffer2));
                    byteBuffer = byteBufferC;
                } else {
                    byteBuffer = byteBufferC;
                }
                byteBuffer.position(iPosition);
                hashSet = hashSet;
                byteBufferC = byteBuffer;
                jC = jC;
                i10 = 8;
                str2 = str;
            }
            return;
        }
        throw new yp("ZIP64 APK not supported");
    }
}
