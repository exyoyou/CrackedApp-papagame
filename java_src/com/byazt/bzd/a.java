package com.byazt.bzd;

import android.text.TextUtils;
import com.byazt.omf.gt;
import com.byazt.ukr.yp;
import dalvik.system.BaseDexClassLoader;
import java.io.File;
import java.io.IOException;
import java.io.RandomAccessFile;
import java.nio.ByteBuffer;
import java.nio.ByteOrder;
import java.util.HashMap;
import java.util.Map;
import java.util.concurrent.ConcurrentHashMap;
import java.util.zip.CRC32;
import kotlin.UShort;
import org.json.JSONException;
import org.json.JSONObject;

/* JADX INFO: loaded from: classes6.dex */
@com.byazt.zqa.c(c = {0, 1, 724, 34})
public class a {

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public static final Map<String, Long> f12196c;
    public static final Map<String, Long> tt;
    public static final ConcurrentHashMap<String, Boolean> ve;

    @com.byazt.zqa.c(c = {0, 1, 724, 464})
    private static class c {
        /* JADX INFO: Access modifiers changed from: private */
        public static tt tt(File file) throws IOException {
            int iVe;
            int iVe2;
            int iVe3;
            int iVe4;
            int iVe5;
            long jC;
            long jC2;
            long jTt;
            long j10;
            long j11;
            int i10;
            int i11;
            tt ttVar = new tt();
            RandomAccessFile randomAccessFile = new RandomAccessFile(file, "r");
            try {
                byte[] bArr = new byte[16];
                randomAccessFile.readFully(bArr);
                if (bArr[0] != 127 || bArr[1] != 69 || bArr[2] != 76 || bArr[3] != 70) {
                    throw new IOException("Not ELF");
                }
                boolean z10 = bArr[4] == 2;
                ByteOrder byteOrder = bArr[5] == 1 ? ByteOrder.LITTLE_ENDIAN : ByteOrder.BIG_ENDIAN;
                randomAccessFile.seek(18L);
                int iVe6 = ve(randomAccessFile, byteOrder);
                ttVar.f12198c = iVe6 == 40;
                ttVar.tt = iVe6 == 183;
                if (z10) {
                    randomAccessFile.seek(32L);
                    jC = c(randomAccessFile, byteOrder);
                    randomAccessFile.seek(40L);
                    jC2 = c(randomAccessFile, byteOrder);
                    randomAccessFile.seek(54L);
                    iVe = ve(randomAccessFile, byteOrder);
                    iVe2 = ve(randomAccessFile, byteOrder);
                    iVe3 = ve(randomAccessFile, byteOrder);
                    iVe4 = ve(randomAccessFile, byteOrder);
                    iVe5 = ve(randomAccessFile, byteOrder);
                } else {
                    randomAccessFile.seek(28L);
                    long jTt2 = tt(randomAccessFile, byteOrder);
                    randomAccessFile.seek(32L);
                    long jTt3 = tt(randomAccessFile, byteOrder);
                    randomAccessFile.seek(42L);
                    iVe = ve(randomAccessFile, byteOrder);
                    iVe2 = ve(randomAccessFile, byteOrder);
                    iVe3 = ve(randomAccessFile, byteOrder);
                    iVe4 = ve(randomAccessFile, byteOrder);
                    iVe5 = ve(randomAccessFile, byteOrder);
                    jC = jTt2;
                    jC2 = jTt3;
                }
                CRC32 crc32 = new CRC32();
                byte[] bArr2 = new byte[iVe];
                int i12 = 0;
                while (i12 < iVe2) {
                    long j12 = jC2;
                    int i13 = iVe2;
                    int i14 = iVe3;
                    randomAccessFile.seek((((long) i12) * ((long) iVe)) + jC);
                    randomAccessFile.readFully(bArr2);
                    ByteBuffer byteBufferOrder = ByteBuffer.wrap(bArr2).order(byteOrder);
                    if (z10) {
                        i10 = byteBufferOrder.getInt();
                        i11 = byteBufferOrder.getInt();
                    } else {
                        i10 = byteBufferOrder.getInt();
                        byteBufferOrder.getInt();
                        byteBufferOrder.position(byteBufferOrder.position() + 8);
                        byteBufferOrder.getInt();
                        byteBufferOrder.position(byteBufferOrder.position() + 4);
                        i11 = byteBufferOrder.getInt();
                    }
                    if (i10 == 1) {
                        ttVar.f12197a++;
                        if ((i11 & 1) != 0) {
                            ttVar.sp++;
                        }
                        c(crc32, i10);
                        c(crc32, i11);
                    }
                    i12++;
                    jC2 = j12;
                    iVe2 = i13;
                    iVe3 = i14;
                }
                long j13 = jC2;
                int i15 = iVe3;
                ttVar.ve = crc32.getValue();
                long j14 = i15;
                randomAccessFile.seek(j13 + (((long) iVe5) * j14));
                if (z10) {
                    randomAccessFile.skipBytes(24);
                    jTt = c(randomAccessFile, byteOrder);
                } else {
                    randomAccessFile.skipBytes(16);
                    jTt = tt(randomAccessFile, byteOrder);
                }
                byte[] bArr3 = new byte[i15];
                int i16 = 0;
                while (true) {
                    if (i16 >= iVe4) {
                        j10 = -1;
                        j11 = -1;
                        break;
                    }
                    randomAccessFile.seek(j13 + (((long) i16) * j14));
                    randomAccessFile.readFully(bArr3);
                    ByteBuffer byteBufferOrder2 = ByteBuffer.wrap(bArr3).order(byteOrder);
                    int i17 = byteBufferOrder2.getInt();
                    byteBufferOrder2.position(byteBufferOrder2.position() + 4);
                    byteBufferOrder2.position(byteBufferOrder2.position() + (z10 ? 8 : 4));
                    byteBufferOrder2.position(byteBufferOrder2.position() + (z10 ? 8 : 4));
                    long j15 = z10 ? byteBufferOrder2.getLong() : ((long) byteBufferOrder2.getInt()) & 4294967295L;
                    j11 = z10 ? byteBufferOrder2.getLong() : 4294967295L & ((long) byteBufferOrder2.getInt());
                    if (".text".equals(c(randomAccessFile, ((long) i17) + jTt))) {
                        j10 = j15;
                        break;
                    }
                    i16++;
                    byteOrder = byteOrder;
                    bArr3 = bArr3;
                }
                if (j10 < 0) {
                    throw new IOException(".text not found");
                }
                long jC3 = c(randomAccessFile, j10, j11);
                ttVar.uj = jC3;
                ttVar.f12199n = c(ttVar.ve, jC3);
                randomAccessFile.close();
                return ttVar;
            } catch (Throwable th) {
                try {
                    throw th;
                } catch (Throwable th2) {
                    try {
                        randomAccessFile.close();
                        throw th2;
                    } catch (Throwable th3) {
                        th.addSuppressed(th3);
                        throw th2;
                    }
                }
            }
        }

        private static int ve(RandomAccessFile randomAccessFile, ByteOrder byteOrder) throws IOException {
            byte[] bArr = new byte[2];
            randomAccessFile.readFully(bArr);
            return ByteBuffer.wrap(bArr).order(byteOrder).getShort() & UShort.MAX_VALUE;
        }

        private static long c(long j10, long j11) {
            CRC32 crc32 = new CRC32();
            c(crc32, (int) j10);
            c(crc32, (int) j11);
            return crc32.getValue();
        }

        private static long c(RandomAccessFile randomAccessFile, long j10, long j11) throws IOException {
            int i10;
            randomAccessFile.seek(j10);
            CRC32 crc32 = new CRC32();
            byte[] bArr = new byte[8192];
            while (j11 > 0 && (i10 = randomAccessFile.read(bArr, 0, (int) Math.min(8192L, j11))) > 0) {
                crc32.update(bArr, 0, i10);
                j11 -= (long) i10;
            }
            return crc32.getValue();
        }

        private static void c(CRC32 crc32, int i10) {
            crc32.update((i10 >>> 24) & 255);
            crc32.update((i10 >>> 16) & 255);
            crc32.update((i10 >>> 8) & 255);
            crc32.update(i10 & 255);
        }

        private static String c(RandomAccessFile randomAccessFile, long j10) throws IOException {
            randomAccessFile.seek(j10);
            StringBuilder sb2 = new StringBuilder();
            while (true) {
                int i10 = randomAccessFile.read();
                if (i10 > 0) {
                    sb2.append((char) i10);
                } else {
                    return sb2.toString();
                }
            }
        }

        private static long c(RandomAccessFile randomAccessFile, ByteOrder byteOrder) throws IOException {
            byte[] bArr = new byte[8];
            randomAccessFile.readFully(bArr);
            return ByteBuffer.wrap(bArr).order(byteOrder).getLong();
        }

        private static long tt(RandomAccessFile randomAccessFile, ByteOrder byteOrder) throws IOException {
            byte[] bArr = new byte[4];
            randomAccessFile.readFully(bArr);
            return ((long) ByteBuffer.wrap(bArr).order(byteOrder).getInt()) & 4294967295L;
        }
    }

    @com.byazt.zqa.c(c = {0, 1, 724, 480})
    static class tt {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        public int f12197a;

        /* JADX INFO: renamed from: c, reason: collision with root package name */
        public boolean f12198c;

        /* JADX INFO: renamed from: n, reason: collision with root package name */
        public long f12199n;
        public int sp;
        public boolean tt;
        public long uj;
        public long ve;
    }

    @com.byazt.zqa.c(c = {0, 1, 724, 471})
    public static class ve extends UnsatisfiedLinkError {
        public ve(String str) {
            super(str);
        }
    }

    static {
        HashMap map = new HashMap();
        f12196c = map;
        HashMap map2 = new HashMap();
        tt = map2;
        ve = new ConcurrentHashMap<>();
        map.put("pangleflipped", 2108457691L);
        map2.put("pangleflipped", 1987010392L);
        map2.put("panglearmor", 199833129L);
        map2.put("tt_ugen_layout", 4099492101L);
        map2.put("avmdl_lite", 2580523452L);
        map2.put("Pglbizssdk_ml", 2636633674L);
        map2.put("ttmplayer_lite", 2952398659L);
        map2.put("tobEmbedEncrypt", 1277933986L);
    }

    public static boolean c(String str) {
        Boolean bool = Boolean.TRUE;
        ConcurrentHashMap<String, Boolean> concurrentHashMap = ve;
        if (bool.equals(concurrentHashMap.get(str))) {
            return true;
        }
        Map<String, Long> map = tt;
        if (map.get(str) == null) {
            return true;
        }
        try {
            File fileTt = tt(str);
            if (fileTt != null && fileTt.exists()) {
                long jCurrentTimeMillis = System.currentTimeMillis();
                tt ttVarTt = c.tt(fileTt);
                long jCurrentTimeMillis2 = System.currentTimeMillis() - jCurrentTimeMillis;
                if (!ttVarTt.tt) {
                    map = f12196c;
                }
                long jLongValue = map.get(str).longValue();
                long j10 = ttVarTt.f12199n;
                if (j10 == jLongValue && j10 != 0) {
                    concurrentHashMap.put(str, bool);
                    c(str, jCurrentTimeMillis2, ttVarTt, jLongValue, 1);
                    return true;
                }
                if (j10 == 0) {
                    c(str, jCurrentTimeMillis2, ttVarTt, jLongValue, -2);
                    return true;
                }
                c(str, jCurrentTimeMillis2, ttVarTt, jLongValue, -1);
                return false;
            }
        } catch (Throwable unused) {
        }
        return true;
    }

    private static File tt(String str) {
        try {
            String strFindLibrary = ((BaseDexClassLoader) sp.class.getClassLoader()).findLibrary(str);
            if (!TextUtils.isEmpty(strFindLibrary)) {
                return new File(strFindLibrary);
            }
            String str2 = gt.getContext().getApplicationInfo().nativeLibraryDir;
            if (!TextUtils.isEmpty(str2)) {
                File file = new File(str2, "lib" + str + ".so");
                if (file.exists()) {
                    return file;
                }
            }
            return null;
        } catch (Throwable unused) {
        }
    }

    private static void c(String str, long j10, tt ttVar, long j11, int i10) {
        JSONObject jSONObject = new JSONObject();
        try {
            jSONObject.putOpt("lib", str);
            jSONObject.put("isV8", ttVar.tt ? 1 : 0);
            jSONObject.put("phdrCrc", ttVar.ve);
            jSONObject.put("textCrc", ttVar.uj);
            jSONObject.put("finalCrc", ttVar.f12199n);
            jSONObject.put("expected", j11);
            jSONObject.put("loadCount", ttVar.f12197a);
            jSONObject.put("execCount", ttVar.sp);
            jSONObject.put("checkResult", i10);
            jSONObject.put("cost", j10);
        } catch (JSONException unused) {
        }
        yp.c().tt("so_security_check", jSONObject);
    }
}
