package lc;

import java.io.File;
import java.io.IOException;
import java.io.RandomAccessFile;
import java.io.UnsupportedEncodingException;
import java.nio.ByteBuffer;
import java.util.Arrays;
import java.util.LinkedHashMap;
import java.util.Map;
import java.util.logging.Level;
import java.util.logging.Logger;
import kwai.h.e;

/* JADX INFO: loaded from: classes.dex */
public final class d {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public static final Logger f94146a = Logger.getLogger("PayloadReader");

    public static String a(File file, int[] iArr) {
        try {
            Map<Integer, ByteBuffer> mapB = b(file);
            for (int i10 : iArr) {
                ByteBuffer byteBuffer = mapB.get(Integer.valueOf(i10));
                if (byteBuffer != null) {
                    try {
                        byte[] bArrArray = byteBuffer.array();
                        int iArrayOffset = byteBuffer.arrayOffset();
                        String str = new String(Arrays.copyOfRange(bArrArray, byteBuffer.position() + iArrayOffset, iArrayOffset + byteBuffer.limit()), "UTF-8");
                        if (!str.isEmpty() && str.contains("kwaiCallback")) {
                            return str;
                        }
                    } catch (UnsupportedEncodingException e10) {
                        f94146a.log(Level.SEVERE, e10.getMessage());
                    }
                }
            }
            return null;
        } catch (IOException | e e11) {
            Logger logger = f94146a;
            Level level = Level.WARNING;
            logger.log(level, "read v2/v3 payload failed");
            logger.log(level, e11.getMessage());
            return null;
        }
    }

    public static Map<Integer, ByteBuffer> b(File file) throws Throwable {
        RandomAccessFile randomAccessFile;
        try {
            randomAccessFile = new RandomAccessFile(file, "r");
            try {
                Map<Integer, ByteBuffer> mapC = a.c(a.d(randomAccessFile.getChannel()).f94144a);
                LinkedHashMap linkedHashMap = (LinkedHashMap) mapC;
                ByteBuffer byteBuffer = (ByteBuffer) linkedHashMap.get(1896449818);
                ByteBuffer byteBuffer2 = (ByteBuffer) linkedHashMap.get(Integer.valueOf(com.huaksj.vasdolly.common.e.f34404a));
                if (byteBuffer == null && byteBuffer2 == null) {
                    throw new e("No APK Signature Scheme v2/v3 block in APK Signing Block");
                }
                randomAccessFile.close();
                return mapC;
            } catch (Throwable th) {
                th = th;
                if (randomAccessFile != null) {
                    randomAccessFile.close();
                }
                throw th;
            }
        } catch (Throwable th2) {
            th = th2;
            randomAccessFile = null;
        }
    }
}
