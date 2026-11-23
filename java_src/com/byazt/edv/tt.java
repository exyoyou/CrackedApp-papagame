package com.byazt.edv;

import com.byazt.nr.m;
import java.io.ByteArrayInputStream;
import java.io.File;
import java.io.FileInputStream;
import java.io.FileOutputStream;
import java.io.InputStream;
import java.io.OutputStream;
import java.util.HashMap;
import java.util.Iterator;
import java.util.Set;
import java.util.zip.ZipEntry;
import java.util.zip.ZipOutputStream;
import net.lingala.zip4j.util.e;

/* JADX INFO: loaded from: classes6.dex */
@com.byazt.zqa.c(c = {0, 1, 1881, 13})
public class tt {
    public static int c(InputStream inputStream, OutputStream outputStream) {
        long jTt = tt(inputStream, outputStream);
        if (jTt > 2147483647L) {
            return -1;
        }
        return (int) jTt;
    }

    private static long tt(InputStream inputStream, OutputStream outputStream) {
        byte[] bArr = new byte[4096];
        long j10 = 0;
        while (true) {
            try {
                int i10 = inputStream.read(bArr);
                if (-1 == i10) {
                    return j10;
                }
                outputStream.write(bArr, 0, i10);
                j10 += (long) i10;
            } catch (Exception unused) {
                return 0L;
            }
        }
    }

    public static boolean c(HashMap<String, HashMap<String, byte[]>> map, String str) {
        try {
            Set<String> setKeySet = map.keySet();
            ZipOutputStream zipOutputStream = new ZipOutputStream(new FileOutputStream(str));
            byte[] bArr = new byte[4096];
            Iterator<String> it2 = setKeySet.iterator();
            while (it2.hasNext()) {
                HashMap<String, byte[]> map2 = map.get(it2.next());
                if (map2 != null) {
                    for (String str2 : map2.keySet()) {
                        byte[] bArr2 = map2.get(str2);
                        if (bArr2 != null) {
                            ByteArrayInputStream byteArrayInputStream = new ByteArrayInputStream(bArr2);
                            zipOutputStream.putNextEntry(new ZipEntry(str2));
                            while (true) {
                                int i10 = byteArrayInputStream.read(bArr);
                                if (i10 == -1) {
                                    break;
                                }
                                zipOutputStream.write(bArr, 0, i10);
                            }
                            byteArrayInputStream.close();
                        }
                    }
                }
            }
            zipOutputStream.close();
            return true;
        } catch (Exception e10) {
            m.c(e10);
            return false;
        }
    }

    public static void c(String str, String str2) {
        try {
            File file = new File(str);
            if (file.isDirectory()) {
                String[] list = file.list();
                byte[] bArr = new byte[4096];
                ZipOutputStream zipOutputStream = new ZipOutputStream(new FileOutputStream(str2));
                for (String str3 : list) {
                    File file2 = new File(file, str3);
                    if (!file2.isDirectory()) {
                        String path = file2.getPath();
                        int iLastIndexOf = path.lastIndexOf(e.F0);
                        if (iLastIndexOf != -1 && iLastIndexOf != path.length()) {
                            path = path.substring(iLastIndexOf + 1);
                        }
                        FileInputStream fileInputStream = new FileInputStream(file2);
                        zipOutputStream.putNextEntry(new ZipEntry(path));
                        while (true) {
                            int i10 = fileInputStream.read(bArr);
                            if (i10 == -1) {
                                break;
                            } else {
                                zipOutputStream.write(bArr, 0, i10);
                            }
                        }
                        fileInputStream.close();
                    }
                }
                zipOutputStream.close();
            }
        } catch (Exception e10) {
            m.c(e10);
        }
    }
}
