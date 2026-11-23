package net.lingala.zip4j.util;

import java.io.File;
import java.io.FileInputStream;
import java.io.IOException;
import java.util.zip.CRC32;
import net.lingala.zip4j.exception.ZipException;

/* JADX INFO: loaded from: classes.dex */
public class d {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private static final int f94684a = 16384;

    public static long a(String str) throws ZipException {
        return b(str, null);
    }

    public static long b(String str, qc.a aVar) throws Throwable {
        if (!h.A(str)) {
            throw new ZipException("input file is null or empty, cannot calculate CRC for the file");
        }
        FileInputStream fileInputStream = null;
        try {
            try {
                h.d(str);
                FileInputStream fileInputStream2 = new FileInputStream(new File(str));
                try {
                    byte[] bArr = new byte[16384];
                    CRC32 crc32 = new CRC32();
                    while (true) {
                        int i10 = fileInputStream2.read(bArr);
                        if (i10 == -1) {
                            long value = crc32.getValue();
                            try {
                                fileInputStream2.close();
                                return value;
                            } catch (IOException unused) {
                                throw new ZipException("error while closing the file after calculating crc");
                            }
                        }
                        crc32.update(bArr, 0, i10);
                        if (aVar != null) {
                            aVar.w(i10);
                            if (aVar.m()) {
                                aVar.setResult(3);
                                aVar.u(0);
                                try {
                                    fileInputStream2.close();
                                    return 0L;
                                } catch (IOException unused2) {
                                    throw new ZipException("error while closing the file after calculating crc");
                                }
                            }
                        }
                    }
                } catch (IOException e10) {
                    e = e10;
                    throw new ZipException(e);
                } catch (Exception e11) {
                    e = e11;
                    throw new ZipException(e);
                } catch (Throwable th) {
                    th = th;
                    fileInputStream = fileInputStream2;
                    if (fileInputStream != null) {
                        try {
                            fileInputStream.close();
                        } catch (IOException unused3) {
                            throw new ZipException("error while closing the file after calculating crc");
                        }
                    }
                    throw th;
                }
            } catch (Throwable th2) {
                th = th2;
            }
        } catch (IOException e12) {
            e = e12;
        } catch (Exception e13) {
            e = e13;
        }
    }
}
