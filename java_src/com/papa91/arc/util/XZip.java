package com.papa91.arc.util;

import android.os.Build;
import com.join.mgps.Util.o0;
import com.join.mgps.Util.r3;
import java.io.BufferedInputStream;
import java.io.BufferedOutputStream;
import java.io.File;
import java.io.FileInputStream;
import java.io.FileOutputStream;
import java.io.IOException;
import java.io.InputStream;
import java.nio.charset.Charset;
import java.util.Collection;
import java.util.Enumeration;
import java.util.Iterator;
import java.util.zip.ZipEntry;
import java.util.zip.ZipFile;
import java.util.zip.ZipOutputStream;
import net.lingala.zip4j.util.e;

/* JADX INFO: loaded from: classes2.dex */
public class XZip {
    private static final int BUFF_SIZE = 10240;

    public static String getDPKRomPath(File file, String str) throws IOException {
        ZipFile zipFile;
        try {
            Charset charsetForName = Charset.forName("GBK");
            if (Build.VERSION.SDK_INT >= 24) {
                r3.a();
                zipFile = d6.a.a(file, charsetForName);
            } else {
                zipFile = new ZipFile(file);
            }
            Enumeration<? extends ZipEntry> enumerationEntries = zipFile.entries();
            while (enumerationEntries.hasMoreElements()) {
                ZipEntry zipEntryNextElement = enumerationEntries.nextElement();
                if (!zipEntryNextElement.isDirectory()) {
                    String str2 = new String((str + File.separator + zipEntryNextElement.getName()).getBytes("8859_1"), "UTF-8");
                    if (str2.endsWith(".apk") || str2.endsWith(".APK")) {
                        return str2;
                    }
                }
            }
            return "";
        } catch (IOException e10) {
            e10.printStackTrace();
            throw new IOException(e10);
        }
    }

    public static String getRomPath(File file, String str, String str2) throws IOException {
        ZipFile zipFile;
        try {
            Charset charsetForName = Charset.forName("GBK");
            if (Build.VERSION.SDK_INT >= 24) {
                r3.a();
                zipFile = d6.a.a(file, charsetForName);
            } else {
                zipFile = new ZipFile(file);
            }
            Enumeration<? extends ZipEntry> enumerationEntries = zipFile.entries();
            while (enumerationEntries.hasMoreElements()) {
                ZipEntry zipEntryNextElement = enumerationEntries.nextElement();
                if (!zipEntryNextElement.isDirectory()) {
                    String str3 = new String((str + File.separator + zipEntryNextElement.getName()).getBytes("8859_1"), "UTF-8");
                    if (!str3.endsWith(str2 + ".zip")) {
                        if (!str3.endsWith(str2 + ".iso")) {
                            if (!str3.endsWith(str2 + ".ISO")) {
                                if (!str3.endsWith(str2 + ".bin")) {
                                    if (!str3.endsWith(str2 + ".cue")) {
                                        if (!str3.endsWith(str2 + ".pbp")) {
                                            if (!str3.endsWith(str2 + ".img")) {
                                                if (!str3.endsWith(str2 + ".mdf")) {
                                                    if (!str3.endsWith(str2 + ".wsc")) {
                                                        if (!str3.endsWith(str2 + ".ws")) {
                                                            if (!str3.endsWith(str2 + ".nds")) {
                                                                if (!str3.endsWith(str2 + ".z64")) {
                                                                    if (!str3.endsWith(str2 + ".n64")) {
                                                                        if (!str3.endsWith(str2 + ".cdi")) {
                                                                            if (!str3.endsWith(str2 + ".CDI")) {
                                                                                if (!str3.endsWith(str2 + ".gdi")) {
                                                                                    if (!str3.endsWith(str2 + ".chd")) {
                                                                                        if (!str3.endsWith(str2 + ".mds")) {
                                                                                            if (!str3.endsWith(str2 + ".cci")) {
                                                                                                if (!str3.endsWith(str2 + ".cia")) {
                                                                                                    if (str3.endsWith(str2 + ".3ds")) {
                                                                                                    }
                                                                                                }
                                                                                            }
                                                                                        }
                                                                                    }
                                                                                }
                                                                            }
                                                                        }
                                                                    }
                                                                }
                                                            }
                                                        }
                                                    }
                                                }
                                            }
                                        }
                                    }
                                }
                            }
                        }
                    }
                    zipFile.close();
                    return str3;
                }
            }
            zipFile.close();
            return "";
        } catch (IOException e10) {
            e10.printStackTrace();
            throw new IOException(e10);
        }
    }

    /* JADX WARN: Code duplicated, block: B:48:0x0116 A[Catch: all -> 0x0122, IOException -> 0x0124, TRY_ENTER, TryCatch #2 {IOException -> 0x0124, blocks: (B:17:0x0039, B:18:0x003d, B:20:0x0043, B:23:0x0053, B:24:0x007d, B:26:0x00ad, B:27:0x00d4, B:29:0x00da, B:31:0x00e4, B:32:0x00e7, B:33:0x00ea, B:40:0x0100, B:48:0x0116, B:49:0x0119, B:50:0x011c), top: B:64:0x0039, outer: #1 }] */
    public static boolean upZipFile(File file, String str) throws IOException {
        ZipFile zipFile;
        if (file == null || !file.exists()) {
            return false;
        }
        File file2 = new File(str);
        if (!file2.exists()) {
            file2.mkdirs();
        }
        try {
            Charset charsetForName = Charset.forName("GBK");
            if (Build.VERSION.SDK_INT >= 24) {
                r3.a();
                zipFile = d6.a.a(file, charsetForName);
            } else {
                zipFile = new ZipFile(file);
            }
        } catch (IOException e10) {
            e10.printStackTrace();
            zipFile = null;
        }
        try {
            try {
                Enumeration<? extends ZipEntry> enumerationEntries = zipFile.entries();
                while (enumerationEntries.hasMoreElements()) {
                    ZipEntry zipEntryNextElement = enumerationEntries.nextElement();
                    if (zipEntryNextElement.isDirectory()) {
                        new File(new String((str + File.separator + zipEntryNextElement.getName()).getBytes("8859_1"), "UTF-8")).mkdirs();
                    } else {
                        InputStream inputStream = zipFile.getInputStream(zipEntryNextElement);
                        File file3 = new File(new String((str + File.separator + zipEntryNextElement.getName()).getBytes("8859_1"), "UTF-8"));
                        if (file3.exists()) {
                            File file4 = new File(file3.getParent() + e.F0 + System.currentTimeMillis());
                            file3.renameTo(file4);
                            file4.delete();
                        }
                        if (!file3.exists()) {
                            File parentFile = file3.getParentFile();
                            if (!parentFile.exists()) {
                                parentFile.mkdirs();
                            }
                            file3.createNewFile();
                        }
                        FileOutputStream fileOutputStream = new FileOutputStream(file3);
                        try {
                            try {
                                byte[] bArr = new byte[4096];
                                while (true) {
                                    int i10 = inputStream.read(bArr);
                                    if (i10 <= 0) {
                                        break;
                                    }
                                    fileOutputStream.write(bArr, 0, i10);
                                    fileOutputStream.flush();
                                    if (inputStream != null) {
                                        inputStream.close();
                                    }
                                    fileOutputStream.close();
                                    throw th;
                                }
                                inputStream.close();
                                fileOutputStream.close();
                            } catch (IOException e11) {
                                e11.printStackTrace();
                                throw new IOException(e11);
                            }
                        } catch (Throwable th) {
                            if (inputStream != null) {
                                inputStream.close();
                            }
                            fileOutputStream.close();
                            throw th;
                        }
                    }
                }
                zipFile.close();
                return true;
            } catch (IOException e12) {
                e12.printStackTrace();
                throw new IOException(e12);
            }
        } catch (Throwable th2) {
            if (zipFile != null) {
                zipFile.close();
            }
            throw th2;
        }
    }

    public static String upZipFileSource(File file, String str) throws IOException {
        ZipFile zipFile;
        File file2 = new File(str);
        if (!file2.exists()) {
            file2.mkdirs();
        }
        try {
            Charset charsetForName = Charset.forName("GBK");
            if (Build.VERSION.SDK_INT >= 24) {
                r3.a();
                zipFile = d6.a.a(file, charsetForName);
            } else {
                zipFile = new ZipFile(file);
            }
        } catch (IOException e10) {
            e10.printStackTrace();
            zipFile = null;
        }
        Enumeration<? extends ZipEntry> enumerationEntries = zipFile.entries();
        String parent = "";
        while (enumerationEntries.hasMoreElements()) {
            ZipEntry zipEntryNextElement = enumerationEntries.nextElement();
            if (zipEntryNextElement.isDirectory()) {
                new File(new String((str + File.separator + zipEntryNextElement.getName()).getBytes("8859_1"), "UTF-8")).mkdirs();
            } else {
                InputStream inputStream = zipFile.getInputStream(zipEntryNextElement);
                File file3 = new File(new String((str + File.separator + zipEntryNextElement.getName()).getBytes("8859_1"), "UTF-8"));
                if (file3.exists()) {
                    File file4 = new File(file3.getParent() + e.F0 + System.currentTimeMillis());
                    file3.renameTo(file4);
                    file4.delete();
                }
                if (!file3.exists()) {
                    File parentFile = file3.getParentFile();
                    if (!parentFile.exists()) {
                        parentFile.mkdirs();
                    }
                    file3.createNewFile();
                }
                FileOutputStream fileOutputStream = new FileOutputStream(file3);
                try {
                    try {
                        byte[] bArr = new byte[10240];
                        while (true) {
                            int i10 = inputStream.read(bArr);
                            if (i10 <= 0) {
                                break;
                            }
                            fileOutputStream.write(bArr, 0, i10);
                            fileOutputStream.flush();
                        }
                        inputStream.close();
                        fileOutputStream.close();
                        parent = file3.getParent();
                    } catch (IOException e11) {
                        e11.printStackTrace();
                        throw new IOException(e11);
                    }
                } catch (Throwable th) {
                    if (inputStream != null) {
                        inputStream.close();
                    }
                    fileOutputStream.close();
                    throw th;
                }
            }
        }
        zipFile.close();
        return parent;
    }

    public static void zipDirectoryFile(File file, File file2) throws IOException {
        ZipOutputStream zipOutputStream = new ZipOutputStream(new BufferedOutputStream(new FileOutputStream(file2), 1024000));
        zipFile(file, zipOutputStream, "");
        zipOutputStream.close();
    }

    private static void zipFile(File file, ZipOutputStream zipOutputStream, String str) throws IOException {
        StringBuilder sb2 = new StringBuilder();
        sb2.append(str);
        sb2.append(str.trim().length() == 0 ? "" : File.separator);
        sb2.append(file.getName());
        String str2 = new String(sb2.toString().getBytes("8859_1"), "utf-8");
        if (file.isDirectory()) {
            for (File file2 : file.listFiles()) {
                zipFile(file2, zipOutputStream, str2);
            }
            return;
        }
        byte[] bArr = new byte[10240];
        BufferedInputStream bufferedInputStream = new BufferedInputStream(new FileInputStream(file), 1024000);
        zipOutputStream.putNextEntry(new ZipEntry(str2));
        while (true) {
            int i10 = bufferedInputStream.read(bArr);
            if (i10 == -1) {
                bufferedInputStream.close();
                zipOutputStream.flush();
                zipOutputStream.closeEntry();
                return;
            }
            zipOutputStream.write(bArr, 0, i10);
        }
    }

    public static void zipFiles(Collection<File> collection, File file) throws IOException {
        ZipOutputStream zipOutputStream = new ZipOutputStream(new BufferedOutputStream(new FileOutputStream(file), 1024000));
        Iterator<File> it2 = collection.iterator();
        while (it2.hasNext()) {
            zipFile(it2.next(), zipOutputStream, "");
        }
        zipOutputStream.close();
    }

    public static void zipFilesNew(Collection<File> collection, File file, String str) throws IOException {
        ZipOutputStream zipOutputStream = new ZipOutputStream(new BufferedOutputStream(new FileOutputStream(file), 1024000));
        Iterator<File> it2 = collection.iterator();
        while (it2.hasNext()) {
            zipFile(it2.next(), zipOutputStream, "");
        }
        zipOutputStream.setComment(str);
        zipOutputStream.close();
    }

    public static void zipFiles(Collection<File> collection, File file, String str) throws IOException {
        ZipOutputStream zipOutputStream = new ZipOutputStream(new BufferedOutputStream(new FileOutputStream(file), 1024000));
        for (File file2 : collection) {
            String name = file2.getName();
            boolean z10 = false;
            for (int i10 = 0; i10 <= 10; i10++) {
                if (!name.endsWith(o0.f49827a + i10)) {
                    if (!name.endsWith(o0.f49827a + i10 + ".png")) {
                    }
                }
                z10 = true;
            }
            if (!z10) {
                zipFile(file2, zipOutputStream, "");
            }
        }
        zipOutputStream.setComment(str);
        zipOutputStream.close();
    }
}
