package com.huaksj.vasdolly.common;

import com.huaksj.vasdolly.common.apk.SignatureNotFoundException;
import java.io.File;
import java.io.IOException;
import java.io.RandomAccessFile;
import java.nio.ByteBuffer;
import java.nio.ByteOrder;
import java.util.Iterator;
import java.util.LinkedHashMap;
import java.util.Map;

/* JADX INFO: loaded from: classes5.dex */
public class d {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public static final int f34403a = 1896449818;

    public static boolean a(File file) {
        try {
            return e(g(file)).containsKey(1896449818);
        } catch (SignatureNotFoundException unused) {
            System.out.println("APK : " + file.getAbsolutePath() + " not have apk v2 signature block");
            return false;
        } catch (IOException e10) {
            e10.printStackTrace();
            return false;
        }
    }

    public static c<ByteBuffer, Long> b(RandomAccessFile randomAccessFile, long j10, int i10) throws IOException {
        return c.a(h(randomAccessFile, j10, i10), Long.valueOf(j10));
    }

    public static c<ByteBuffer, Long> c(RandomAccessFile randomAccessFile, int i10) throws IOException {
        return c.a(h(randomAccessFile, 0L, i10), 0L);
    }

    public static ByteBuffer d(Map<Integer, ByteBuffer> map) {
        if (map == null || map.isEmpty()) {
            throw new RuntimeException("getNewApkV2SchemeBlock , id value pair is empty");
        }
        Iterator<Map.Entry<Integer, ByteBuffer>> it2 = map.entrySet().iterator();
        long jRemaining = 24;
        while (it2.hasNext()) {
            jRemaining += (long) (it2.next().getValue().remaining() + 12);
        }
        boolean zContainsKey = map.containsKey(Integer.valueOf(com.huaksj.vasdolly.common.apk.a.f34380c));
        System.out.println("generateApkSigningBlock , needPadding = " + zContainsKey);
        if (zContainsKey) {
            jRemaining -= (long) (map.get(Integer.valueOf(com.huaksj.vasdolly.common.apk.a.f34380c)).remaining() + 12);
            map.remove(Integer.valueOf(com.huaksj.vasdolly.common.apk.a.f34380c));
            int i10 = (int) ((jRemaining + 8) % 4096);
            if (i10 != 0) {
                int i11 = 4096 - i10;
                if (i11 < 12) {
                    i11 += 4096;
                }
                jRemaining += (long) i11;
                int i12 = (i11 - 8) - 4;
                map.put(Integer.valueOf(com.huaksj.vasdolly.common.apk.a.f34380c), ByteBuffer.allocate(i12).order(ByteOrder.LITTLE_ENDIAN));
                System.out.println("generateApkSigningBlock , final length = " + jRemaining + " padding = " + i11 + " bufferSize = " + i12);
            }
        }
        ByteBuffer byteBufferAllocate = ByteBuffer.allocate((int) (8 + jRemaining));
        byteBufferAllocate.order(ByteOrder.LITTLE_ENDIAN);
        byteBufferAllocate.putLong(jRemaining);
        for (Map.Entry<Integer, ByteBuffer> entry : map.entrySet()) {
            ByteBuffer value = entry.getValue();
            byteBufferAllocate.putLong(value.remaining() + 4);
            byteBufferAllocate.putInt(entry.getKey().intValue());
            byteBufferAllocate.put(value.array(), value.arrayOffset() + value.position(), value.remaining());
        }
        byteBufferAllocate.putLong(jRemaining);
        byteBufferAllocate.putLong(2334950737559900225L);
        byteBufferAllocate.putLong(3617552046287187010L);
        if (byteBufferAllocate.remaining() > 0) {
            throw new RuntimeException("generateNewApkV2SchemeBlock error");
        }
        byteBufferAllocate.flip();
        return byteBufferAllocate;
    }

    public static Map<Integer, ByteBuffer> e(ByteBuffer byteBuffer) throws SignatureNotFoundException {
        com.huaksj.vasdolly.common.apk.a.a(byteBuffer);
        ByteBuffer byteBufferH = com.huaksj.vasdolly.common.apk.a.h(byteBuffer, 8, byteBuffer.capacity() - 24);
        LinkedHashMap linkedHashMap = new LinkedHashMap();
        int i10 = 0;
        while (byteBufferH.hasRemaining()) {
            i10++;
            if (byteBufferH.remaining() < 8) {
                throw new SignatureNotFoundException("Insufficient data to read size of APK Signing Block entry #" + i10);
            }
            long j10 = byteBufferH.getLong();
            if (j10 < 4 || j10 > 2147483647L) {
                throw new SignatureNotFoundException("APK Signing Block entry #" + i10 + " size out of range: " + j10);
            }
            int i11 = (int) j10;
            int iPosition = byteBufferH.position() + i11;
            if (i11 > byteBufferH.remaining()) {
                throw new SignatureNotFoundException("APK Signing Block entry #" + i10 + " size out of range: " + i11 + ", available: " + byteBufferH.remaining());
            }
            linkedHashMap.put(Integer.valueOf(byteBufferH.getInt()), com.huaksj.vasdolly.common.apk.a.e(byteBufferH, i11 - 4));
            byteBufferH.position(iPosition);
        }
        if (!linkedHashMap.isEmpty()) {
            return linkedHashMap;
        }
        throw new SignatureNotFoundException("not have Id-Value Pair in APK Signing Block entry #" + i10);
    }

    public static a f(File file, boolean z10) throws Throwable {
        RandomAccessFile randomAccessFile = null;
        try {
            RandomAccessFile randomAccessFile2 = new RandomAccessFile(file, "r");
            try {
                c<ByteBuffer, Long> cVarG = com.huaksj.vasdolly.common.apk.a.g(randomAccessFile2);
                ByteBuffer byteBufferB = cVarG.b();
                long jLongValue = cVarG.c().longValue();
                if (com.huaksj.vasdolly.common.apk.c.i(randomAccessFile2, jLongValue)) {
                    throw new SignatureNotFoundException("ZIP64 APK not supported");
                }
                long jF = com.huaksj.vasdolly.common.apk.a.f(byteBufferB, jLongValue);
                c<ByteBuffer, Long> cVarC = com.huaksj.vasdolly.common.apk.a.c(randomAccessFile2, jF);
                c<ByteBuffer, Long> cVarB = b(randomAccessFile2, jF, (int) (jLongValue - jF));
                a aVar = new a();
                aVar.f34373b = file.length();
                aVar.e(z10);
                if (aVar.f34373b > a.f34371g) {
                    aVar.e(true);
                }
                if (!aVar.c()) {
                    aVar.f34374c = c(randomAccessFile2, (int) cVarC.c().longValue());
                }
                aVar.f34375d = cVarC;
                aVar.f34376e = cVarB;
                aVar.f34377f = cVarG;
                aVar.b();
                System.out.println("baseApk : " + file.getAbsolutePath() + "\nApkSectionInfo = " + aVar);
                randomAccessFile2.close();
                return aVar;
            } catch (Throwable th) {
                th = th;
                randomAccessFile = randomAccessFile2;
                if (randomAccessFile != null) {
                    randomAccessFile.close();
                }
                throw th;
            }
        } catch (Throwable th2) {
            th = th2;
        }
    }

    public static ByteBuffer g(File file) throws Throwable {
        RandomAccessFile randomAccessFile = null;
        if (file == null || !file.exists() || !file.isFile()) {
            return null;
        }
        try {
            RandomAccessFile randomAccessFile2 = new RandomAccessFile(file, "r");
            try {
                c<ByteBuffer, Long> cVarG = com.huaksj.vasdolly.common.apk.a.g(randomAccessFile2);
                ByteBuffer byteBufferB = cVarG.b();
                long jLongValue = cVarG.c().longValue();
                if (com.huaksj.vasdolly.common.apk.c.i(randomAccessFile2, jLongValue)) {
                    throw new SignatureNotFoundException("ZIP64 APK not supported");
                }
                ByteBuffer byteBufferB2 = com.huaksj.vasdolly.common.apk.a.c(randomAccessFile2, com.huaksj.vasdolly.common.apk.a.f(byteBufferB, jLongValue)).b();
                randomAccessFile2.close();
                return byteBufferB2;
            } catch (Throwable th) {
                th = th;
                randomAccessFile = randomAccessFile2;
                if (randomAccessFile != null) {
                    randomAccessFile.close();
                }
                throw th;
            }
        } catch (Throwable th2) {
            th = th2;
        }
    }

    private static ByteBuffer h(RandomAccessFile randomAccessFile, long j10, int i10) throws IOException {
        ByteBuffer byteBufferAllocate = ByteBuffer.allocate(i10);
        byteBufferAllocate.order(ByteOrder.LITTLE_ENDIAN);
        randomAccessFile.seek(j10);
        randomAccessFile.readFully(byteBufferAllocate.array(), byteBufferAllocate.arrayOffset(), byteBufferAllocate.capacity());
        return byteBufferAllocate;
    }
}
