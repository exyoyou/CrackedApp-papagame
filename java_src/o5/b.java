package o5;

import com.huaksj.vasdolly.common.apk.SignatureNotFoundException;
import com.huaksj.vasdolly.common.apk.c;
import com.huaksj.vasdolly.common.d;
import java.io.File;
import java.io.IOException;
import java.io.RandomAccessFile;
import java.nio.ByteBuffer;
import java.nio.ByteOrder;
import java.util.Iterator;
import java.util.LinkedHashMap;
import java.util.List;
import java.util.Map;
import net.lingala.zip4j.util.e;

/* JADX INFO: loaded from: classes5.dex */
public class b {
    public static void a(com.huaksj.vasdolly.common.a aVar, File file, int i10, ByteBuffer byteBuffer) throws SignatureNotFoundException, IOException {
        LinkedHashMap linkedHashMap = new LinkedHashMap();
        linkedHashMap.put(Integer.valueOf(i10), byteBuffer);
        d(aVar, file, linkedHashMap);
    }

    public static void b(File file, int i10, byte[] bArr, boolean z10) throws SignatureNotFoundException, IOException {
        c(file, file, i10, bArr, z10);
    }

    public static void c(File file, File file2, int i10, byte[] bArr, boolean z10) throws SignatureNotFoundException, IOException {
        com.huaksj.vasdolly.common.a aVarG = g(file, z10);
        ByteBuffer byteBufferWrap = ByteBuffer.wrap(bArr);
        byteBufferWrap.order(ByteOrder.LITTLE_ENDIAN);
        a(aVarG, file2, i10, byteBufferWrap);
    }

    public static void d(com.huaksj.vasdolly.common.a aVar, File file, Map<Integer, ByteBuffer> map) throws Throwable {
        if (map == null || map.isEmpty()) {
            throw new RuntimeException("addIdValueByteBufferMap , id value pair is empty");
        }
        Map<Integer, ByteBuffer> mapE = d.e(aVar.f34375d.b());
        mapE.putAll(map);
        ByteBuffer byteBufferD = d.d(mapE);
        System.out.println("addIdValueByteBufferMap , oldApkSigningBlock size = " + aVar.f34375d.b().remaining() + " , newApkSigningBlock size = " + byteBufferD.remaining());
        ByteBuffer byteBufferB = aVar.f34376e.b();
        ByteBuffer byteBufferB2 = aVar.f34377f.b();
        long jLongValue = aVar.f34376e.c().longValue();
        long jRemaining = (long) (byteBufferD.remaining() - aVar.f34375d.b().remaining());
        c.k(byteBufferB2, jLongValue + jRemaining);
        long j10 = aVar.f34373b + jRemaining;
        RandomAccessFile randomAccessFile = null;
        try {
            RandomAccessFile randomAccessFile2 = new RandomAccessFile(file, e.f94694e0);
            try {
                if (aVar.c()) {
                    long jLongValue2 = aVar.f34375d.c().longValue();
                    System.out.println("seek to apk signing block pos:" + jLongValue2 + ",dest apk file len:" + randomAccessFile2.length());
                    randomAccessFile2.seek(jLongValue2);
                } else {
                    ByteBuffer byteBufferB3 = aVar.f34374c.b();
                    randomAccessFile2.seek(aVar.f34374c.c().longValue());
                    randomAccessFile2.write(byteBufferB3.array(), byteBufferB3.arrayOffset() + byteBufferB3.position(), byteBufferB3.remaining());
                }
                randomAccessFile2.write(byteBufferD.array(), byteBufferD.arrayOffset() + byteBufferD.position(), byteBufferD.remaining());
                randomAccessFile2.write(byteBufferB.array(), byteBufferB.arrayOffset() + byteBufferB.position(), byteBufferB.remaining());
                randomAccessFile2.write(byteBufferB2.array(), byteBufferB2.arrayOffset() + byteBufferB2.position(), byteBufferB2.remaining());
                if (randomAccessFile2.getFilePointer() != j10) {
                    throw new RuntimeException("after addIdValueByteBufferMap , file size wrong , FilePointer : " + randomAccessFile2.getFilePointer() + ", apkLength : " + j10);
                }
                randomAccessFile2.setLength(j10);
                System.out.println("addIdValueByteBufferMap , after add channel , new apk is " + file.getAbsolutePath() + " , length = " + file.length());
                c.k(byteBufferB2, jLongValue);
                randomAccessFile2.close();
            } catch (Throwable th) {
                th = th;
                randomAccessFile = randomAccessFile2;
                c.k(byteBufferB2, jLongValue);
                if (randomAccessFile != null) {
                    randomAccessFile.close();
                }
                throw th;
            }
        } catch (Throwable th2) {
            th = th2;
        }
    }

    public static void e(File file, File file2, Map<Integer, byte[]> map, boolean z10) throws Throwable {
        if (map == null || map.isEmpty()) {
            throw new RuntimeException("addIdValueByteMap , idValueByteMap is empty");
        }
        com.huaksj.vasdolly.common.a aVarG = g(file, z10);
        LinkedHashMap linkedHashMap = new LinkedHashMap();
        for (Integer num : map.keySet()) {
            ByteBuffer byteBufferWrap = ByteBuffer.wrap(map.get(num));
            byteBufferWrap.order(ByteOrder.LITTLE_ENDIAN);
            linkedHashMap.put(num, byteBufferWrap);
        }
        d(aVarG, file2, linkedHashMap);
    }

    public static void f(File file, Map<Integer, byte[]> map, boolean z10) throws Throwable {
        e(file, file, map, z10);
    }

    public static com.huaksj.vasdolly.common.a g(File file, boolean z10) throws SignatureNotFoundException, IOException {
        if (file != null && file.exists() && file.isFile()) {
            return d.f(file, z10);
        }
        return null;
    }

    public static void h(com.huaksj.vasdolly.common.a aVar, File file, List<Integer> list) throws SignatureNotFoundException, IOException {
        if (aVar == null || file == null || !file.isFile() || !file.exists() || list == null || list.isEmpty()) {
            return;
        }
        Map<Integer, ByteBuffer> mapE = d.e(aVar.f34375d.b());
        int size = mapE.size();
        System.out.println("removeIdValue , existed IdValueMap = " + mapE);
        Iterator<Integer> it2 = list.iterator();
        while (it2.hasNext()) {
            mapE.remove(it2.next());
        }
        if (size == mapE.size()) {
            System.out.println("removeIdValue , No idValue was deleted");
            return;
        }
        System.out.println("removeIdValue , final IdValueMap = " + mapE);
        ByteBuffer byteBufferD = d.d(mapE);
        System.out.println("removeIdValue , oldApkSigningBlock size = " + aVar.f34375d.b().remaining() + " , newApkSigningBlock size = " + byteBufferD.remaining());
        ByteBuffer byteBufferB = aVar.f34376e.b();
        ByteBuffer byteBufferB2 = aVar.f34377f.b();
        long jLongValue = aVar.f34376e.c().longValue();
        long jRemaining = (long) (byteBufferD.remaining() - aVar.f34375d.b().remaining());
        c.k(byteBufferB2, jLongValue + jRemaining);
        long j10 = aVar.f34373b + jRemaining;
        RandomAccessFile randomAccessFile = null;
        try {
            RandomAccessFile randomAccessFile2 = new RandomAccessFile(file, e.f94694e0);
            try {
                if (aVar.c()) {
                    long jLongValue2 = aVar.f34375d.c().longValue();
                    System.out.println("seek to apk signing block pos:" + jLongValue2);
                    randomAccessFile2.seek(jLongValue2);
                } else {
                    ByteBuffer byteBufferB3 = aVar.f34374c.b();
                    randomAccessFile2.seek(aVar.f34374c.c().longValue());
                    randomAccessFile2.write(byteBufferB3.array(), byteBufferB3.arrayOffset() + byteBufferB3.position(), byteBufferB3.remaining());
                }
                randomAccessFile2.write(byteBufferD.array(), byteBufferD.arrayOffset() + byteBufferD.position(), byteBufferD.remaining());
                randomAccessFile2.write(byteBufferB.array(), byteBufferB.arrayOffset() + byteBufferB.position(), byteBufferB.remaining());
                randomAccessFile2.write(byteBufferB2.array(), byteBufferB2.arrayOffset() + byteBufferB2.position(), byteBufferB2.remaining());
                if (randomAccessFile2.getFilePointer() != j10) {
                    throw new RuntimeException("after removeIdValue , file size wrong , FilePointer : " + randomAccessFile2.getFilePointer() + ", apkLength : " + j10);
                }
                randomAccessFile2.setLength(j10);
                System.out.println("removeIdValue , after remove channel , apk is " + file.getAbsolutePath() + " , length = " + file.length());
                c.k(byteBufferB2, jLongValue);
                randomAccessFile2.close();
            } catch (Throwable th) {
                th = th;
                randomAccessFile = randomAccessFile2;
                c.k(byteBufferB2, jLongValue);
                if (randomAccessFile != null) {
                    randomAccessFile.close();
                }
                throw th;
            }
        } catch (Throwable th2) {
            th = th2;
        }
    }

    public static void i(File file, int i10) {
    }
}
