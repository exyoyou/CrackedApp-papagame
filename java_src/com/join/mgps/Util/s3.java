package com.join.mgps.Util;

import android.os.Build;
import com.join.mgps.dto.UNZipPathBackBean;
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

/* JADX INFO: loaded from: classes4.dex */
public class s3 {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private static final int f50025a = 10240;

    public static boolean a(File zipFile, String packageName) throws IOException {
        ZipFile zipFile2;
        try {
            Charset charsetForName = Charset.forName("GBK");
            if (Build.VERSION.SDK_INT >= 24) {
                r3.a();
                zipFile2 = d6.a.a(zipFile, charsetForName);
            } else {
                zipFile2 = new ZipFile(zipFile);
            }
            Enumeration<? extends ZipEntry> enumerationEntries = zipFile2.entries();
            boolean z10 = false;
            boolean z11 = false;
            while (enumerationEntries.hasMoreElements()) {
                ZipEntry zipEntryNextElement = enumerationEntries.nextElement();
                if (zipEntryNextElement.isDirectory()) {
                    if (zipEntryNextElement.getName().equalsIgnoreCase("obb/" + packageName)) {
                        z10 = true;
                    }
                    if (zipEntryNextElement.getName().equalsIgnoreCase("data/" + packageName)) {
                        z11 = true;
                    }
                }
            }
            return z10 || z11;
        } catch (IOException e10) {
            e10.printStackTrace();
            throw new IOException(e10);
        }
    }

    public static String b(File zipFile, String folderPath) throws IOException {
        ZipFile zipFile2;
        try {
            Charset charsetForName = Charset.forName("GBK");
            if (Build.VERSION.SDK_INT >= 24) {
                r3.a();
                zipFile2 = d6.a.a(zipFile, charsetForName);
            } else {
                zipFile2 = new ZipFile(zipFile);
            }
            Enumeration<? extends ZipEntry> enumerationEntries = zipFile2.entries();
            while (enumerationEntries.hasMoreElements()) {
                ZipEntry zipEntryNextElement = enumerationEntries.nextElement();
                if (!zipEntryNextElement.isDirectory()) {
                    String str = new String((folderPath + File.separator + zipEntryNextElement.getName()).getBytes("8859_1"), "UTF-8");
                    if (str.endsWith(".apk") || str.endsWith(".APK")) {
                        return str;
                    }
                }
            }
            return "";
        } catch (IOException e10) {
            e10.printStackTrace();
            throw new IOException(e10);
        }
    }

    public static String c(File zipFile, String folderPath, String packageName) throws IOException {
        ZipFile zipFile2;
        try {
            Charset charsetForName = Charset.forName("GBK");
            if (Build.VERSION.SDK_INT >= 24) {
                r3.a();
                zipFile2 = d6.a.a(zipFile, charsetForName);
            } else {
                zipFile2 = new ZipFile(zipFile);
            }
            Enumeration<? extends ZipEntry> enumerationEntries = zipFile2.entries();
            while (enumerationEntries.hasMoreElements()) {
                ZipEntry zipEntryNextElement = enumerationEntries.nextElement();
                if (!zipEntryNextElement.isDirectory()) {
                    String str = new String((folderPath + File.separator + zipEntryNextElement.getName()).getBytes("8859_1"), "UTF-8");
                    if (!str.endsWith(packageName + ".zip")) {
                        if (!str.endsWith(packageName + ".iso")) {
                            if (!str.endsWith(packageName + ".ISO")) {
                                if (!str.endsWith(packageName + ".bin")) {
                                    if (!str.endsWith(packageName + ".cue")) {
                                        if (!str.endsWith(packageName + ".pbp")) {
                                            if (!str.endsWith(packageName + ".img")) {
                                                if (!str.endsWith(packageName + ".mdf")) {
                                                    if (!str.endsWith(packageName + ".wsc")) {
                                                        if (!str.endsWith(packageName + ".ws")) {
                                                            if (!str.endsWith(packageName + ".nds")) {
                                                                if (!str.endsWith(packageName + ".z64")) {
                                                                    if (!str.endsWith(packageName + ".n64")) {
                                                                        if (!str.endsWith(packageName + ".cdi")) {
                                                                            if (!str.endsWith(packageName + ".CDI")) {
                                                                                if (!str.endsWith(packageName + ".gdi")) {
                                                                                    if (!str.endsWith(packageName + ".chd")) {
                                                                                        if (!str.endsWith(packageName + ".mds")) {
                                                                                            if (!str.endsWith(packageName + ".cci")) {
                                                                                                if (!str.endsWith(packageName + ".cia")) {
                                                                                                    if (str.endsWith(packageName + ".3ds")) {
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
                    zipFile2.close();
                    return str;
                }
            }
            zipFile2.close();
            return "";
        } catch (IOException e10) {
            e10.printStackTrace();
            throw new IOException(e10);
        }
    }

    public static String d(com.join.mgps.task.e unAndroidZIPThread, File zipFile, String folderPath) throws IOException {
        ZipFile zipFile2;
        int i10;
        ZipFile zipFile3 = null;
        try {
            try {
                File file = new File(folderPath);
                String str = "";
                if (!file.exists()) {
                    file.mkdirs();
                }
                try {
                    Charset charsetForName = Charset.forName("GBK");
                    if (Build.VERSION.SDK_INT >= 24) {
                        r3.a();
                        zipFile2 = d6.a.a(zipFile, charsetForName);
                    } else {
                        zipFile2 = new ZipFile(zipFile);
                    }
                    Enumeration<? extends ZipEntry> enumerationEntries = zipFile2.entries();
                    while (enumerationEntries.hasMoreElements()) {
                        ZipEntry zipEntryNextElement = enumerationEntries.nextElement();
                        if (zipEntryNextElement.isDirectory()) {
                            new File(new String((folderPath + File.separator + zipEntryNextElement.getName()).getBytes("8859_1"), "UTF-8")).mkdirs();
                        } else {
                            InputStream inputStream = zipFile2.getInputStream(zipEntryNextElement);
                            String str2 = new String((folderPath + File.separator + zipEntryNextElement.getName()).getBytes("8859_1"), "UTF-8");
                            if (str2.endsWith(".apk") || str2.endsWith(".APK")) {
                                str = str2;
                            }
                            File file2 = new File(str2);
                            if (file2.exists()) {
                                File file3 = new File(file2.getParent() + net.lingala.zip4j.util.e.F0 + System.currentTimeMillis());
                                file2.renameTo(file3);
                                file3.delete();
                            }
                            if (!file2.exists()) {
                                File parentFile = file2.getParentFile();
                                if (!parentFile.exists()) {
                                    parentFile.mkdirs();
                                }
                                file2.createNewFile();
                            }
                            FileOutputStream fileOutputStream = new FileOutputStream(file2);
                            byte[] bArr = new byte[10240];
                            while (unAndroidZIPThread.f73203e && (i10 = inputStream.read(bArr)) > 0) {
                                try {
                                    try {
                                        fileOutputStream.write(bArr, 0, i10);
                                        fileOutputStream.flush();
                                    } catch (Throwable th) {
                                        if (inputStream != null) {
                                            inputStream.close();
                                        }
                                        fileOutputStream.close();
                                        throw th;
                                    }
                                } catch (Exception e10) {
                                    e10.printStackTrace();
                                    throw new IOException(e10);
                                }
                            }
                            if (inputStream != null) {
                                inputStream.close();
                            }
                            fileOutputStream.close();
                        }
                    }
                    zipFile2.close();
                    zipFile2.close();
                    return str;
                } catch (IOException e11) {
                    e11.printStackTrace();
                    throw new IOException(e11);
                }
            } catch (Exception e12) {
                e12.printStackTrace();
                throw new IOException(e12);
            }
        } catch (Throwable th2) {
            if (0 != 0) {
                zipFile3.close();
            }
            throw th2;
        }
    }

    /* JADX WARN: Code duplicated, block: B:62:0x027c  */
    /* JADX WARN: Code duplicated, block: B:95:0x032d A[Catch: all -> 0x0338, IOException -> 0x033a, TRY_ENTER, TryCatch #1 {IOException -> 0x033a, blocks: (B:12:0x002e, B:14:0x0034, B:16:0x003a, B:19:0x004a, B:20:0x0074, B:22:0x00b0, B:24:0x00c7, B:26:0x00de, B:28:0x00f5, B:30:0x010c, B:32:0x0123, B:34:0x013a, B:36:0x0151, B:38:0x0168, B:40:0x017f, B:42:0x0196, B:44:0x01ad, B:46:0x01c4, B:48:0x01db, B:50:0x01f2, B:52:0x0209, B:54:0x0220, B:56:0x0237, B:58:0x024e, B:60:0x0265, B:63:0x027d, B:66:0x028a, B:68:0x029b, B:70:0x02ba, B:71:0x02bd, B:73:0x02c3, B:74:0x02ea, B:76:0x02f0, B:78:0x02fa, B:79:0x02fd, B:80:0x0300, B:87:0x0317, B:95:0x032d, B:96:0x0330, B:97:0x0333), top: B:109:0x002e, outer: #3 }] */
    public static String e(File zipFile, String folderPath, String packageName) throws IOException {
        ZipFile zipFile2;
        File file = new File(folderPath);
        if (!file.exists()) {
            file.mkdirs();
        }
        try {
            Charset charsetForName = Charset.forName("GBK");
            if (Build.VERSION.SDK_INT >= 24) {
                r3.a();
                zipFile2 = d6.a.a(zipFile, charsetForName);
            } else {
                zipFile2 = new ZipFile(zipFile);
            }
        } catch (IOException e10) {
            e10.printStackTrace();
            zipFile2 = null;
        }
        try {
            try {
                Enumeration<? extends ZipEntry> enumerationEntries = zipFile2.entries();
                String str = "";
                while (enumerationEntries.hasMoreElements()) {
                    ZipEntry zipEntryNextElement = enumerationEntries.nextElement();
                    if (zipEntryNextElement.isDirectory()) {
                        new File(new String((folderPath + File.separator + zipEntryNextElement.getName()).getBytes("8859_1"), "UTF-8")).mkdirs();
                    } else {
                        InputStream inputStream = zipFile2.getInputStream(zipEntryNextElement);
                        StringBuilder sb2 = new StringBuilder();
                        sb2.append(folderPath);
                        String str2 = File.separator;
                        sb2.append(str2);
                        sb2.append(zipEntryNextElement.getName());
                        String str3 = new String(sb2.toString().getBytes("8859_1"), "UTF-8");
                        if (str3.endsWith(packageName + ".zip")) {
                            str = str3;
                        } else {
                            if (str3.endsWith(packageName + ".iso")) {
                                str = str3;
                            } else {
                                if (str3.endsWith(packageName + ".ISO")) {
                                    str = str3;
                                } else {
                                    if (str3.endsWith(packageName + ".bin")) {
                                        str = str3;
                                    } else {
                                        if (str3.endsWith(packageName + ".cue")) {
                                            str = str3;
                                        } else {
                                            if (str3.endsWith(packageName + ".pbp")) {
                                                str = str3;
                                            } else {
                                                if (str3.endsWith(packageName + ".img")) {
                                                    str = str3;
                                                } else {
                                                    if (str3.endsWith(packageName + ".mdf")) {
                                                        str = str3;
                                                    } else {
                                                        if (str3.endsWith(packageName + ".wsc")) {
                                                            str = str3;
                                                        } else {
                                                            if (str3.endsWith(packageName + ".ws")) {
                                                                str = str3;
                                                            } else {
                                                                if (str3.endsWith(packageName + ".nds")) {
                                                                    str = str3;
                                                                } else {
                                                                    if (str3.endsWith(packageName + ".z64")) {
                                                                        str = str3;
                                                                    } else {
                                                                        if (str3.endsWith(packageName + ".n64")) {
                                                                            str = str3;
                                                                        } else {
                                                                            if (str3.endsWith(packageName + ".cdi")) {
                                                                                str = str3;
                                                                            } else {
                                                                                if (str3.endsWith(packageName + ".CDI")) {
                                                                                    str = str3;
                                                                                } else {
                                                                                    if (str3.endsWith(packageName + ".gdi")) {
                                                                                        str = str3;
                                                                                    } else {
                                                                                        if (str3.endsWith(packageName + ".chd")) {
                                                                                            str = str3;
                                                                                        } else {
                                                                                            if (str3.endsWith(packageName + ".mds")) {
                                                                                                str = str3;
                                                                                            } else {
                                                                                                if (str3.endsWith(packageName + ".cci")) {
                                                                                                    str = str3;
                                                                                                } else {
                                                                                                    if (str3.endsWith(packageName + ".cia")) {
                                                                                                        str = str3;
                                                                                                    } else {
                                                                                                        if (str3.endsWith(packageName + ".3ds")) {
                                                                                                            str = str3;
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
                        if (zipEntryNextElement.getName().equals("nscript.dat")) {
                            str = folderPath;
                        }
                        File file2 = new File(str3);
                        if (zipEntryNextElement.getName().equals("pad_setting.json")) {
                            File file3 = new File(folderPath + str2 + "pad_diy_setting.json");
                            if (file3.exists()) {
                                UtilsMy.delete(file3);
                            }
                        }
                        if (file2.exists()) {
                            File file4 = new File(file2.getParent() + net.lingala.zip4j.util.e.F0 + System.currentTimeMillis());
                            file2.renameTo(file4);
                            file4.delete();
                        }
                        if (!file2.exists()) {
                            File parentFile = file2.getParentFile();
                            if (!parentFile.exists()) {
                                parentFile.mkdirs();
                            }
                            file2.createNewFile();
                        }
                        FileOutputStream fileOutputStream = new FileOutputStream(file2);
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
                zipFile2.close();
                return str;
            } catch (IOException e12) {
                e12.printStackTrace();
                throw new IOException(e12);
            }
        } catch (Throwable th2) {
            if (zipFile2 != null) {
                zipFile2.close();
            }
            throw th2;
        }
    }

    public static boolean f(File zipFile, String folderPath) throws IOException {
        ZipFile zipFile2;
        File file = new File(folderPath);
        if (!file.exists()) {
            file.mkdirs();
        } else if (!file.isDirectory()) {
            file.delete();
            file.mkdirs();
        }
        try {
            Charset charsetForName = Charset.forName("GBK");
            if (Build.VERSION.SDK_INT >= 24) {
                r3.a();
                zipFile2 = d6.a.a(zipFile, charsetForName);
            } else {
                zipFile2 = new ZipFile(zipFile);
            }
        } catch (IOException e10) {
            e10.printStackTrace();
            zipFile2 = null;
        }
        try {
            try {
                Enumeration<? extends ZipEntry> enumerationEntries = zipFile2.entries();
                while (enumerationEntries.hasMoreElements()) {
                    ZipEntry zipEntryNextElement = enumerationEntries.nextElement();
                    if (zipEntryNextElement.isDirectory()) {
                        new File(new String((folderPath + File.separator + zipEntryNextElement.getName()).getBytes("8859_1"), "UTF-8")).mkdirs();
                    } else {
                        InputStream inputStream = zipFile2.getInputStream(zipEntryNextElement);
                        File file2 = new File(new String((folderPath + File.separator + zipEntryNextElement.getName()).getBytes("8859_1"), "UTF-8"));
                        if (file2.exists()) {
                            File file3 = new File(file2.getParent() + net.lingala.zip4j.util.e.F0 + System.currentTimeMillis());
                            file2.renameTo(file3);
                            file3.delete();
                        }
                        if (!file2.exists()) {
                            File parentFile = file2.getParentFile();
                            if (!parentFile.exists()) {
                                parentFile.mkdirs();
                            }
                            StringBuilder sb2 = new StringBuilder();
                            sb2.append("createFile ");
                            sb2.append(file2.getAbsolutePath());
                            file2.createNewFile();
                        }
                        FileOutputStream fileOutputStream = new FileOutputStream(file2);
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
                zipFile2.close();
                return true;
            } catch (IOException e12) {
                e12.printStackTrace();
                throw new IOException(e12);
            }
        } catch (Throwable th2) {
            if (zipFile2 != null) {
                zipFile2.close();
            }
            throw th2;
        }
    }

    public static UNZipPathBackBean g(com.join.mgps.task.h unzipThread, File zipFile, String folderPath, String packageName) throws IOException {
        ZipFile zipFile2;
        int i10;
        UNZipPathBackBean uNZipPathBackBean = new UNZipPathBackBean();
        File file = new File(folderPath);
        if (!file.exists()) {
            file.mkdirs();
        }
        try {
            Charset charsetForName = Charset.forName("GBK");
            if (Build.VERSION.SDK_INT >= 24) {
                r3.a();
                zipFile2 = d6.a.a(zipFile, charsetForName);
            } else {
                zipFile2 = new ZipFile(zipFile);
            }
            try {
                try {
                    Enumeration<? extends ZipEntry> enumerationEntries = zipFile2.entries();
                    while (enumerationEntries.hasMoreElements()) {
                        ZipEntry zipEntryNextElement = enumerationEntries.nextElement();
                        if (zipEntryNextElement.isDirectory()) {
                            new File(new String((folderPath + File.separator + zipEntryNextElement.getName()).getBytes("8859_1"), "UTF-8")).mkdirs();
                        } else {
                            InputStream inputStream = zipFile2.getInputStream(zipEntryNextElement);
                            String str = new String((folderPath + File.separator + zipEntryNextElement.getName()).getBytes("8859_1"), "UTF-8");
                            boolean z10 = true;
                            String[] strArr = {".zip", ".iso", ".bin", ".cue", ".pbp", ".img", ".mdf", ".wsc", ".ws", ".nds", ".z64", ".n64", ".cdi", ".gdi", ".chd", ".mds", ".cci", ".cia", ".3ds"};
                            int i11 = 0;
                            while (true) {
                                if (i11 >= 19) {
                                    z10 = false;
                                    break;
                                }
                                if (str.substring(str.lastIndexOf(o0.f49827a)).equalsIgnoreCase(strArr[i11])) {
                                    break;
                                }
                                i11++;
                            }
                            if (z10) {
                                uNZipPathBackBean.setGameZipPath(str);
                                File file2 = new File(str);
                                uNZipPathBackBean.setSoucePath(file2.getParent() + "/img");
                                File file3 = new File(file2.getParent() + "/img");
                                File file4 = new File(file2.getParent() + "/img/.nomedia");
                                if (file3.exists() && !file3.isDirectory()) {
                                    UtilsMy.delete(file3);
                                }
                                if (!file3.exists()) {
                                    file3.mkdirs();
                                    file4.createNewFile();
                                } else if (!file4.exists()) {
                                    file4.createNewFile();
                                }
                            }
                            File file5 = new File(str);
                            if (file5.getName().equals("arc.nsa")) {
                                uNZipPathBackBean.setGameZipPath(file5.getParent());
                            }
                            if (zipEntryNextElement.getName().equals("pad_setting.json")) {
                                File file6 = new File(folderPath + File.separator + "pad_diy_setting.json");
                                if (file6.exists()) {
                                    UtilsMy.delete(file6);
                                }
                            }
                            if (file5.exists() && file5.isFile()) {
                                File file7 = new File(file5.getParent() + net.lingala.zip4j.util.e.F0 + System.currentTimeMillis());
                                file5.renameTo(file7);
                                file7.delete();
                            }
                            if (!file5.exists()) {
                                File parentFile = file5.getParentFile();
                                if (!parentFile.exists()) {
                                    parentFile.mkdirs();
                                }
                                file5.createNewFile();
                            }
                            FileOutputStream fileOutputStream = new FileOutputStream(file5);
                            try {
                                try {
                                    byte[] bArr = new byte[10240];
                                    while (unzipThread.f73235d && (i10 = inputStream.read(bArr)) > 0) {
                                        fileOutputStream.write(bArr, 0, i10);
                                        fileOutputStream.flush();
                                    }
                                    if (inputStream != null) {
                                        inputStream.close();
                                    }
                                    fileOutputStream.close();
                                } catch (Exception e10) {
                                    e10.printStackTrace();
                                    throw new IOException(e10);
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
                    zipFile2.close();
                    return uNZipPathBackBean;
                } catch (Exception e11) {
                    e11.printStackTrace();
                    throw new IOException(e11);
                }
            } catch (Throwable th2) {
                zipFile2.close();
                throw th2;
            }
        } catch (IOException e12) {
            e12.printStackTrace();
            throw new IOException(e12);
        }
    }

    public static String h(File zipFile, String folderPath) throws IOException {
        ZipFile zipFile2;
        File file = new File(folderPath);
        if (!file.exists()) {
            file.mkdirs();
        }
        try {
            Charset charsetForName = Charset.forName("GBK");
            if (Build.VERSION.SDK_INT >= 24) {
                r3.a();
                zipFile2 = d6.a.a(zipFile, charsetForName);
            } else {
                zipFile2 = new ZipFile(zipFile);
            }
        } catch (IOException e10) {
            e10.printStackTrace();
            zipFile2 = null;
        }
        Enumeration<? extends ZipEntry> enumerationEntries = zipFile2.entries();
        String parent = "";
        while (enumerationEntries.hasMoreElements()) {
            ZipEntry zipEntryNextElement = enumerationEntries.nextElement();
            if (zipEntryNextElement.isDirectory()) {
                new File(new String((folderPath + File.separator + zipEntryNextElement.getName()).getBytes("8859_1"), "UTF-8")).mkdirs();
            } else {
                InputStream inputStream = zipFile2.getInputStream(zipEntryNextElement);
                File file2 = new File(new String((folderPath + File.separator + zipEntryNextElement.getName()).getBytes("8859_1"), "UTF-8"));
                if (file2.exists()) {
                    File file3 = new File(file2.getParent() + net.lingala.zip4j.util.e.F0 + System.currentTimeMillis());
                    file2.renameTo(file3);
                    file3.delete();
                }
                if (!file2.exists()) {
                    File parentFile = file2.getParentFile();
                    if (!parentFile.exists()) {
                        parentFile.mkdirs();
                    }
                    file2.createNewFile();
                }
                FileOutputStream fileOutputStream = new FileOutputStream(file2);
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
                        parent = file2.getParent();
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
        zipFile2.close();
        return parent;
    }

    public static void i(File resFile, File zipFile) throws IOException {
        ZipOutputStream zipOutputStream = new ZipOutputStream(new BufferedOutputStream(new FileOutputStream(zipFile), 1024000));
        j(resFile, zipOutputStream, "");
        zipOutputStream.close();
    }

    private static void j(File resFile, ZipOutputStream zipout, String rootpath) throws IOException {
        StringBuilder sb2 = new StringBuilder();
        sb2.append(rootpath);
        sb2.append(rootpath.trim().length() == 0 ? "" : File.separator);
        sb2.append(resFile.getName());
        String str = new String(sb2.toString().getBytes("8859_1"), "utf-8");
        if (resFile.isDirectory()) {
            for (File file : resFile.listFiles()) {
                j(file, zipout, str);
            }
            return;
        }
        byte[] bArr = new byte[10240];
        BufferedInputStream bufferedInputStream = new BufferedInputStream(new FileInputStream(resFile), 1024000);
        zipout.putNextEntry(new ZipEntry(str));
        while (true) {
            int i10 = bufferedInputStream.read(bArr);
            if (i10 == -1) {
                bufferedInputStream.close();
                zipout.flush();
                zipout.closeEntry();
                return;
            }
            zipout.write(bArr, 0, i10);
        }
    }

    public static void k(Collection<File> resFileList, File zipFile) throws IOException {
        ZipOutputStream zipOutputStream = new ZipOutputStream(new BufferedOutputStream(new FileOutputStream(zipFile), 1024000));
        Iterator<File> it2 = resFileList.iterator();
        while (it2.hasNext()) {
            j(it2.next(), zipOutputStream, "");
        }
        zipOutputStream.close();
    }

    public static void l(Collection<File> resFileList, File zipFile, String comment) throws IOException {
        ZipOutputStream zipOutputStream = new ZipOutputStream(new BufferedOutputStream(new FileOutputStream(zipFile), 1024000));
        for (File file : resFileList) {
            String name = file.getName();
            boolean z10 = false;
            for (int i10 = 0; i10 <= 10; i10++) {
                if (!name.endsWith(o0.f49827a + i10)) {
                    if (!name.endsWith(o0.f49827a + i10 + ".png")) {
                    }
                }
                z10 = true;
            }
            if (!z10) {
                j(file, zipOutputStream, "");
            }
        }
        zipOutputStream.setComment(comment);
        zipOutputStream.close();
    }

    public static void m(Collection<File> resFileList, File zipFile, String comment) throws IOException {
        ZipOutputStream zipOutputStream = new ZipOutputStream(new BufferedOutputStream(new FileOutputStream(zipFile), 1024000));
        Iterator<File> it2 = resFileList.iterator();
        while (it2.hasNext()) {
            j(it2.next(), zipOutputStream, "");
        }
        zipOutputStream.setComment(comment);
        zipOutputStream.close();
    }
}
