package com.xinzhu.overmind.utils;

import java.io.BufferedInputStream;
import java.io.BufferedOutputStream;
import java.io.File;
import java.io.FileOutputStream;
import java.io.IOException;
import java.io.InputStream;
import java.io.OutputStream;
import java.util.Enumeration;
import java.util.zip.ZipEntry;
import java.util.zip.ZipFile;

/* JADX INFO: loaded from: classes8.dex */
public class t {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public static final String f90136a = "VirtualM";

    public static void a(File file, File file2, boolean z10) throws Exception {
        long jCurrentTimeMillis = System.currentTimeMillis();
        if (!file2.exists()) {
            file2.mkdirs();
        }
        try {
            ZipFile zipFile = new ZipFile(file.getAbsolutePath());
            try {
                if (z10) {
                    c(zipFile, com.xinzhu.overmind.a.f89175k, file2);
                } else {
                    if (c(zipFile, com.xinzhu.overmind.a.f89173i, file2)) {
                        zipFile.close();
                        StringBuilder sb2 = new StringBuilder();
                        sb2.append("Done! +");
                        sb2.append(System.currentTimeMillis() - jCurrentTimeMillis);
                        sb2.append("ms");
                        return;
                    }
                    c(zipFile, com.xinzhu.overmind.a.f89174j, file2);
                }
                zipFile.close();
                StringBuilder sb3 = new StringBuilder();
                sb3.append("Done! +");
                sb3.append(System.currentTimeMillis() - jCurrentTimeMillis);
                sb3.append("ms");
            } catch (Throwable th) {
                try {
                    zipFile.close();
                } catch (Throwable th2) {
                    th.addSuppressed(th2);
                }
                throw th;
            }
        } catch (Throwable th3) {
            StringBuilder sb4 = new StringBuilder();
            sb4.append("Done! +");
            sb4.append(System.currentTimeMillis() - jCurrentTimeMillis);
            sb4.append("ms");
            throw th3;
        }
    }

    private static void b(byte[] bArr, InputStream inputStream, OutputStream outputStream) throws IOException {
        BufferedInputStream bufferedInputStream = new BufferedInputStream(inputStream);
        BufferedOutputStream bufferedOutputStream = new BufferedOutputStream(outputStream);
        while (true) {
            int i10 = bufferedInputStream.read(bArr);
            if (i10 <= 0) {
                bufferedOutputStream.flush();
                bufferedOutputStream.close();
                outputStream.close();
                bufferedInputStream.close();
                inputStream.close();
                return;
            }
            bufferedOutputStream.write(bArr, 0, i10);
        }
    }

    private static boolean c(ZipFile zipFile, String str, File file) throws Exception {
        StringBuilder sb2 = new StringBuilder();
        sb2.append("Try to copy plugin's cup arch: ");
        sb2.append(str);
        String str2 = "lib/" + str + net.lingala.zip4j.util.e.F0;
        Enumeration<? extends ZipEntry> enumerationEntries = zipFile.entries();
        boolean z10 = false;
        byte[] bArr = null;
        boolean z11 = false;
        while (enumerationEntries.hasMoreElements()) {
            ZipEntry zipEntryNextElement = enumerationEntries.nextElement();
            String name = zipEntryNextElement.getName();
            if (z10 || name.startsWith("lib/")) {
                if (name.endsWith(".so") && name.startsWith(str2)) {
                    if (bArr == null) {
                        StringBuilder sb3 = new StringBuilder();
                        sb3.append("Found plugin's cup arch dir: ");
                        sb3.append(str);
                        bArr = new byte[8192];
                        z11 = true;
                    }
                    String strSubstring = name.substring(name.lastIndexOf(47) + 1);
                    StringBuilder sb4 = new StringBuilder();
                    sb4.append("verify so ");
                    sb4.append(strSubstring);
                    File file2 = new File(file, strSubstring);
                    if (file2.exists() && file2.length() == zipEntryNextElement.getSize()) {
                        StringBuilder sb5 = new StringBuilder();
                        sb5.append(strSubstring);
                        sb5.append(" skip copy");
                    } else {
                        FileOutputStream fileOutputStream = new FileOutputStream(file2);
                        StringBuilder sb6 = new StringBuilder();
                        sb6.append("copy so ");
                        sb6.append(zipEntryNextElement.getName());
                        sb6.append(" of ");
                        sb6.append(str);
                        b(bArr, zipFile.getInputStream(zipEntryNextElement), fileOutputStream);
                    }
                }
                z10 = true;
            }
        }
        if (z10) {
            return z11;
        }
        return true;
    }
}
