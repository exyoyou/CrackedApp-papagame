package com.join.mgps.Util;

import android.annotation.TargetApi;
import android.content.ContentUris;
import android.content.Context;
import android.database.Cursor;
import android.net.Uri;
import android.os.Build;
import android.os.Environment;
import android.provider.DocumentsContract;
import android.provider.MediaStore;
import android.text.TextUtils;
import java.io.BufferedInputStream;
import java.io.BufferedOutputStream;
import java.io.BufferedReader;
import java.io.ByteArrayInputStream;
import java.io.Closeable;
import java.io.File;
import java.io.FileInputStream;
import java.io.FileNotFoundException;
import java.io.FileOutputStream;
import java.io.FileWriter;
import java.io.IOException;
import java.io.InputStream;
import java.io.InputStreamReader;
import java.io.OutputStream;
import java.nio.file.CopyOption;
import java.nio.file.Files;
import java.nio.file.Path;
import java.util.ArrayList;
import java.util.LinkedHashSet;
import java.util.List;
import java.util.Set;
import org.apache.http.conn.ssl.TokenParser;

/* JADX INFO: loaded from: classes4.dex */
public class o0 {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public static final String f49827a = ".";

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private static final int f49828b = 16384;

    private o0() {
        throw new AssertionError();
    }

    private static boolean A(String relativePath) {
        if (TextUtils.isEmpty(relativePath)) {
            return true;
        }
        String strTrim = relativePath.replace(TokenParser.ESCAPE, '/').trim();
        if (strTrim.isEmpty()) {
            return true;
        }
        String str = Environment.DIRECTORY_DOWNLOADS;
        if (str.equalsIgnoreCase(strTrim)) {
            return true;
        }
        if (!strTrim.endsWith(net.lingala.zip4j.util.e.F0)) {
            strTrim = strTrim + net.lingala.zip4j.util.e.F0;
        }
        return (str + net.lingala.zip4j.util.e.F0).equalsIgnoreCase(strTrim);
    }

    public static boolean B(Uri uri) {
        return "com.android.providers.downloads.documents".equals(uri.getAuthority());
    }

    public static boolean C(Uri uri) {
        return "com.android.externalstorage.documents".equals(uri.getAuthority());
    }

    public static boolean D(String filePath) {
        if (t2.h(filePath)) {
            return false;
        }
        File file = new File(filePath);
        return file.exists() && file.isFile();
    }

    public static boolean E(String directoryPath) {
        if (t2.h(directoryPath)) {
            return false;
        }
        File file = new File(directoryPath);
        return file.exists() && file.isDirectory();
    }

    public static boolean F(Uri uri) {
        return "com.google.android.apps.photos.content".equals(uri.getAuthority());
    }

    public static boolean G(Uri uri) {
        return "com.android.providers.media.documents".equals(uri.getAuthority());
    }

    private static boolean H(String path) {
        File externalStoragePublicDirectory;
        if (TextUtils.isEmpty(path) || (externalStoragePublicDirectory = Environment.getExternalStoragePublicDirectory(Environment.DIRECTORY_DOWNLOADS)) == null) {
            return false;
        }
        try {
            if (new File(path).getCanonicalPath().equalsIgnoreCase(externalStoragePublicDirectory.getCanonicalPath())) {
                return true;
            }
        } catch (IOException unused) {
        }
        String strU = U(path);
        String strU2 = U(externalStoragePublicDirectory.getAbsolutePath());
        if (strU.equalsIgnoreCase(strU2)) {
            return true;
        }
        try {
            return new File(strU).getAbsolutePath().equalsIgnoreCase(new File(strU2).getAbsolutePath());
        } catch (Exception unused2) {
        }
    }

    private static boolean I(String fileName) {
        if (fileName == null || fileName.length() < 4) {
            return false;
        }
        return fileName.regionMatches(true, fileName.length() - 4, ".zip", 0, 4);
    }

    private static boolean J(String path) {
        if (TextUtils.isEmpty(path)) {
            return false;
        }
        String strTrim = path.replace(TokenParser.ESCAPE, '/').trim();
        while (strTrim.endsWith(net.lingala.zip4j.util.e.F0)) {
            strTrim = strTrim.length() > 1 ? strTrim.substring(0, strTrim.length() - 1) : "";
        }
        int iLastIndexOf = strTrim.lastIndexOf(47);
        if (iLastIndexOf >= 0) {
            strTrim = strTrim.substring(iLastIndexOf + 1);
        }
        return Environment.DIRECTORY_DOWNLOADS.equalsIgnoreCase(strTrim);
    }

    public static boolean K(String filePath) {
        String strW = w(filePath);
        if (t2.h(strW)) {
            return false;
        }
        File file = new File(strW);
        return (file.exists() && file.isDirectory()) || file.mkdirs();
    }

    public static boolean L(String filePath) {
        return K(filePath);
    }

    public static boolean M(File source, File target) {
        boolean zK;
        System.currentTimeMillis();
        if (target.exists() && target.isDirectory() && (target.list() == null || target.list().length == 0)) {
            target.delete();
        }
        if (Build.VERSION.SDK_INT >= 26) {
            Path path = source.toPath();
            Path path2 = target.toPath();
            if (target.exists()) {
                zK = k(source, target);
            } else {
                try {
                    Files.move(path, path2, new CopyOption[0]);
                    zK = true;
                } catch (IOException e10) {
                    e10.printStackTrace();
                    zK = k(source, target);
                }
            }
        } else {
            zK = target.exists() ? k(source, target) : source.renameTo(target);
        }
        System.currentTimeMillis();
        return zK;
    }

    public static void N(File srcFile, File destFile) {
        if (srcFile.renameTo(destFile)) {
            return;
        }
        f(srcFile.getAbsolutePath(), destFile.getAbsolutePath());
        m(srcFile.getAbsolutePath());
    }

    public static void O(String sourceFilePath, String destFilePath) {
        if (TextUtils.isEmpty(sourceFilePath) || TextUtils.isEmpty(destFilePath)) {
            throw new RuntimeException("Both sourceFilePath and destFilePath cannot be null.");
        }
        N(new File(sourceFilePath), new File(destFilePath));
    }

    public static String P(InputStream inputStream) {
        BufferedReader bufferedReader = new BufferedReader(new InputStreamReader(inputStream));
        StringBuffer stringBuffer = new StringBuffer("");
        while (true) {
            try {
                String line = bufferedReader.readLine();
                if (line == null) {
                    break;
                }
                stringBuffer.append(line.trim());
            } catch (IOException e10) {
                e10.printStackTrace();
            }
        }
        return stringBuffer.toString();
    }

    public static StringBuilder Q(String filePath, String charsetName) throws Throwable {
        File file = new File(filePath);
        StringBuilder sb2 = new StringBuilder("");
        BufferedReader bufferedReader = null;
        try {
            if (!file.isFile()) {
                return null;
            }
            try {
                BufferedReader bufferedReader2 = new BufferedReader(new InputStreamReader(new FileInputStream(file), charsetName));
                while (true) {
                    try {
                        String line = bufferedReader2.readLine();
                        if (line == null) {
                            bufferedReader2.close();
                            try {
                                bufferedReader2.close();
                                return sb2;
                            } catch (IOException e10) {
                                throw new RuntimeException("IOException occurred. ", e10);
                            }
                        }
                        if (!sb2.toString().equals("")) {
                            sb2.append("\r\n");
                        }
                        sb2.append(line);
                    } catch (IOException e11) {
                        e = e11;
                        throw new RuntimeException("IOException occurred. ", e);
                    } catch (Throwable th) {
                        th = th;
                        bufferedReader = bufferedReader2;
                        if (bufferedReader != null) {
                            try {
                                bufferedReader.close();
                            } catch (IOException e12) {
                                throw new RuntimeException("IOException occurred. ", e12);
                            }
                        }
                        throw th;
                    }
                }
            } catch (IOException e13) {
                e = e13;
            }
        } catch (Throwable th2) {
            th = th2;
        }
    }

    public static List<String> R(String filePath, String charsetName) throws Throwable {
        File file = new File(filePath);
        ArrayList arrayList = new ArrayList();
        BufferedReader bufferedReader = null;
        try {
            if (!file.isFile()) {
                return null;
            }
            try {
                BufferedReader bufferedReader2 = new BufferedReader(new InputStreamReader(new FileInputStream(file), charsetName));
                while (true) {
                    try {
                        String line = bufferedReader2.readLine();
                        if (line == null) {
                            bufferedReader2.close();
                            try {
                                bufferedReader2.close();
                                return arrayList;
                            } catch (IOException e10) {
                                throw new RuntimeException("IOException occurred. ", e10);
                            }
                        }
                        arrayList.add(line);
                    } catch (IOException e11) {
                        e = e11;
                        throw new RuntimeException("IOException occurred. ", e);
                    } catch (Throwable th) {
                        th = th;
                        bufferedReader = bufferedReader2;
                        if (bufferedReader != null) {
                            try {
                                bufferedReader.close();
                            } catch (IOException e12) {
                                throw new RuntimeException("IOException occurred. ", e12);
                            }
                        }
                        throw th;
                    }
                }
            } catch (IOException e13) {
                e = e13;
            }
        } catch (Throwable th2) {
            th = th2;
        }
    }

    public static void S(File sourceDir, File destDir) throws Throwable {
        for (File file : sourceDir.listFiles()) {
            File file2 = new File(destDir, file.getName());
            if (file.isDirectory()) {
                if (!file2.exists() && !file2.mkdirs()) {
                    throw new IOException(String.format("Could not create directory %s", file2.getAbsolutePath()));
                }
                h(file.getAbsolutePath(), file2.getAbsolutePath());
            } else if (file.isFile()) {
                e(file, file2);
            }
        }
    }

    public static File T() {
        return Environment.getExternalStorageDirectory();
    }

    private static String U(String p10) {
        if (p10 == null) {
            return "";
        }
        String strTrim = p10.trim();
        while (strTrim.length() > 1 && (strTrim.endsWith(net.lingala.zip4j.util.e.F0) || strTrim.endsWith("\\"))) {
            strTrim = strTrim.substring(0, strTrim.length() - 1);
        }
        return strTrim;
    }

    public static boolean V(File file, InputStream stream) {
        return W(file, stream, false);
    }

    public static boolean W(File file, InputStream stream, boolean append) throws Throwable {
        FileOutputStream fileOutputStream = null;
        try {
            try {
                K(file.getAbsolutePath());
                FileOutputStream fileOutputStream2 = new FileOutputStream(file, append);
                try {
                    byte[] bArr = new byte[1024];
                    while (true) {
                        int i10 = stream.read(bArr);
                        if (i10 == -1) {
                            fileOutputStream2.flush();
                            try {
                                fileOutputStream2.close();
                                stream.close();
                                return true;
                            } catch (IOException e10) {
                                throw new RuntimeException("IOException occurred. ", e10);
                            }
                        }
                        fileOutputStream2.write(bArr, 0, i10);
                    }
                } catch (FileNotFoundException e11) {
                    e = e11;
                    throw new RuntimeException("FileNotFoundException occurred. ", e);
                } catch (IOException e12) {
                    e = e12;
                    throw new RuntimeException("IOException occurred. ", e);
                } catch (Exception e13) {
                    e = e13;
                    e.printStackTrace();
                    throw new RuntimeException("Exception occurred. ", e);
                } catch (Throwable th) {
                    th = th;
                    fileOutputStream = fileOutputStream2;
                    if (fileOutputStream != null) {
                        try {
                            fileOutputStream.close();
                            stream.close();
                        } catch (IOException e14) {
                            throw new RuntimeException("IOException occurred. ", e14);
                        }
                    }
                    throw th;
                }
            } catch (Throwable th2) {
                th = th2;
            }
        } catch (FileNotFoundException e15) {
            e = e15;
        } catch (IOException e16) {
            e = e16;
        } catch (Exception e17) {
            e = e17;
        }
    }

    public static boolean X(String filePath, InputStream stream) {
        return Y(filePath, stream, false);
    }

    public static boolean Y(String filePath, InputStream stream, boolean append) {
        return W(filePath != null ? new File(filePath) : null, stream, append);
    }

    public static boolean Z(String filePath, String content) {
        return a0(filePath, content, false);
    }

    public static void a(Closeable closeable) {
        if (closeable != null) {
            try {
                closeable.close();
            } catch (IOException unused) {
            }
        }
    }

    public static boolean a0(String filePath, String content, boolean append) throws Throwable {
        if (t2.h(content)) {
            return false;
        }
        FileWriter fileWriter = null;
        try {
            try {
                K(filePath);
                FileWriter fileWriter2 = new FileWriter(filePath, append);
                try {
                    fileWriter2.write(content);
                    fileWriter2.close();
                    try {
                        fileWriter2.close();
                        return true;
                    } catch (IOException e10) {
                        throw new RuntimeException("IOException occurred. ", e10);
                    }
                } catch (IOException e11) {
                    e = e11;
                    throw new RuntimeException("IOException occurred. ", e);
                } catch (Throwable th) {
                    th = th;
                    fileWriter = fileWriter2;
                    if (fileWriter != null) {
                        try {
                            fileWriter.close();
                        } catch (IOException e12) {
                            throw new RuntimeException("IOException occurred. ", e12);
                        }
                    }
                    throw th;
                }
            } catch (Throwable th2) {
                th = th2;
            }
        } catch (IOException e13) {
            e = e13;
        }
    }

    private static void b(String path, Set<String> out) {
        File[] fileArrListFiles;
        if (TextUtils.isEmpty(path)) {
            return;
        }
        File file = new File(path);
        if (file.exists() && file.isDirectory() && (fileArrListFiles = file.listFiles()) != null) {
            for (File file2 : fileArrListFiles) {
                if (file2.isFile()) {
                    String name = file2.getName();
                    if (I(name) && !z(name)) {
                        out.add(name);
                    }
                }
            }
        }
    }

    public static boolean b0(String filePath, List<String> contentList) {
        return c0(filePath, contentList, false);
    }

    private static void c(Context context, Set<String> out) throws Throwable {
        if (context == null) {
            return;
        }
        Cursor cursor = null;
        try {
            try {
                Cursor cursorQuery = context.getContentResolver().query(MediaStore.Downloads.EXTERNAL_CONTENT_URI, new String[]{"_display_name", "is_pending", "relative_path"}, null, null, null);
                if (cursorQuery == null) {
                    if (cursorQuery != null) {
                        cursorQuery.close();
                        return;
                    }
                    return;
                }
                try {
                    try {
                        int columnIndex = cursorQuery.getColumnIndex("_display_name");
                        int columnIndex2 = cursorQuery.getColumnIndex("is_pending");
                        int columnIndex3 = cursorQuery.getColumnIndex("relative_path");
                        if (columnIndex < 0) {
                            cursorQuery.close();
                            return;
                        }
                        while (cursorQuery.moveToNext()) {
                            if (columnIndex2 >= 0) {
                                try {
                                    if (cursorQuery.getInt(columnIndex2) == 1) {
                                    }
                                } catch (Exception unused) {
                                }
                            }
                            if (A(columnIndex3 >= 0 ? cursorQuery.getString(columnIndex3) : null)) {
                                String string = cursorQuery.getString(columnIndex);
                                if (I(string) && !z(string)) {
                                    out.add(string);
                                }
                            }
                        }
                        cursorQuery.close();
                    } catch (Exception e10) {
                        e = e10;
                        cursor = cursorQuery;
                        StringBuilder sb2 = new StringBuilder();
                        sb2.append("collectZipNamesFromMediaStoreDownloads>>e:");
                        sb2.append(e.getMessage());
                        if (cursor != null) {
                            cursor.close();
                        }
                    }
                    d(context, out);
                } catch (Throwable th) {
                    th = th;
                    cursor = cursorQuery;
                    if (cursor != null) {
                        cursor.close();
                    }
                    throw th;
                }
            } catch (Throwable th2) {
                th = th2;
            }
        } catch (Exception e11) {
            e = e11;
        }
    }

    public static boolean c0(String filePath, List<String> contentList, boolean append) throws Throwable {
        int i10 = 0;
        if (contentList == null || contentList.size() == 0) {
            return false;
        }
        FileWriter fileWriter = null;
        try {
            try {
                K(filePath);
                FileWriter fileWriter2 = new FileWriter(filePath, append);
                try {
                    for (String str : contentList) {
                        int i11 = i10 + 1;
                        if (i10 > 0) {
                            fileWriter2.write("\r\n");
                        }
                        fileWriter2.write(str);
                        i10 = i11;
                    }
                    fileWriter2.close();
                    try {
                        fileWriter2.close();
                        return true;
                    } catch (IOException e10) {
                        throw new RuntimeException("IOException occurred. ", e10);
                    }
                } catch (IOException e11) {
                    e = e11;
                    fileWriter = fileWriter2;
                    throw new RuntimeException("IOException occurred. ", e);
                } catch (Throwable th) {
                    th = th;
                    fileWriter = fileWriter2;
                    if (fileWriter != null) {
                        try {
                            fileWriter.close();
                        } catch (IOException e12) {
                            throw new RuntimeException("IOException occurred. ", e12);
                        }
                    }
                    throw th;
                }
            } catch (IOException e13) {
                e = e13;
            }
        } catch (Throwable th2) {
            th = th2;
        }
    }

    private static void d(Context context, Set<String> out) throws Throwable {
        if (Build.VERSION.SDK_INT < 29) {
            return;
        }
        Uri contentUri = MediaStore.Files.getContentUri("external");
        String str = Environment.DIRECTORY_DOWNLOADS;
        Cursor cursor = null;
        try {
            try {
                Cursor cursorQuery = context.getContentResolver().query(contentUri, new String[]{"_display_name", "is_pending", "relative_path"}, "relative_path IN (?,?)", new String[]{str + net.lingala.zip4j.util.e.F0, str}, null);
                if (cursorQuery == null) {
                    if (cursorQuery != null) {
                        cursorQuery.close();
                        return;
                    }
                    return;
                }
                try {
                    try {
                        int columnIndex = cursorQuery.getColumnIndex("_display_name");
                        int columnIndex2 = cursorQuery.getColumnIndex("is_pending");
                        int columnIndex3 = cursorQuery.getColumnIndex("relative_path");
                        if (columnIndex < 0) {
                            cursorQuery.close();
                            return;
                        }
                        while (cursorQuery.moveToNext()) {
                            if (columnIndex2 >= 0) {
                                try {
                                    if (cursorQuery.getInt(columnIndex2) == 1) {
                                    }
                                } catch (Exception unused) {
                                }
                            }
                            if (A(columnIndex3 >= 0 ? cursorQuery.getString(columnIndex3) : null)) {
                                String string = cursorQuery.getString(columnIndex);
                                if (I(string) && !z(string)) {
                                    out.add(string);
                                }
                            }
                        }
                        cursorQuery.close();
                    } catch (Exception e10) {
                        e = e10;
                        cursor = cursorQuery;
                        StringBuilder sb2 = new StringBuilder();
                        sb2.append("collectZipNamesFromMediaStoreFilesUnderDownload>>e:");
                        sb2.append(e.getMessage());
                        if (cursor != null) {
                            cursor.close();
                        }
                    }
                } catch (Throwable th) {
                    th = th;
                    cursor = cursorQuery;
                    if (cursor != null) {
                        cursor.close();
                    }
                    throw th;
                }
            } catch (Throwable th2) {
                th = th2;
            }
        } catch (Exception e11) {
            e = e11;
        }
    }

    public static void d0(InputStream input, File destFile) throws Throwable {
        BufferedOutputStream bufferedOutputStream;
        BufferedInputStream bufferedInputStream = null;
        try {
            BufferedInputStream bufferedInputStream2 = new BufferedInputStream(input);
            try {
                bufferedOutputStream = new BufferedOutputStream(new FileOutputStream(destFile));
                try {
                    i(bufferedInputStream2, bufferedOutputStream);
                    a(bufferedInputStream2);
                    a(bufferedOutputStream);
                } catch (Throwable th) {
                    th = th;
                    bufferedInputStream = bufferedInputStream2;
                    a(bufferedInputStream);
                    a(bufferedOutputStream);
                    throw th;
                }
            } catch (Throwable th2) {
                th = th2;
                bufferedOutputStream = null;
            }
        } catch (Throwable th3) {
            th = th3;
            bufferedOutputStream = null;
        }
    }

    public static void e(File origFile, File destFile) throws Throwable {
        d0(new FileInputStream(origFile), destFile);
    }

    public static void e0(String inputString, File destFile) throws Throwable {
        d0(new ByteArrayInputStream(inputString.getBytes()), destFile);
    }

    public static boolean f(String sourceFilePath, String destFilePath) {
        try {
            return X(destFilePath, new FileInputStream(sourceFilePath));
        } catch (FileNotFoundException e10) {
            throw new RuntimeException("FileNotFoundException occurred. ", e10);
        }
    }

    public static void g(String oldPath, String newPath) throws Throwable {
        h(oldPath, newPath);
    }

    /* JADX WARN: Code duplicated, block: B:56:0x00fb A[Catch: Exception -> 0x0116, TRY_LEAVE, TryCatch #4 {Exception -> 0x0116, blocks: (B:2:0x0000, B:4:0x0030, B:6:0x0036, B:7:0x0039, B:9:0x0041, B:11:0x0044, B:13:0x004c, B:15:0x007d, B:53:0x00f2, B:54:0x00f5, B:56:0x00fb, B:14:0x0063, B:27:0x00b3, B:28:0x00b9, B:42:0x00d7, B:49:0x00e6, B:51:0x00ee, B:52:0x00f1), top: B:65:0x0000, inners: #0 }] */
    /* JADX WARN: Code duplicated, block: B:76:0x0112 A[SYNTHETIC] */
    /* JADX WARN: Instruction removed from duplicated block: B:56:0x00fb, please report this as an issue */
    public static void h(String oldPath, String newPath) throws Throwable {
        FileOutputStream fileOutputStream;
        Throwable th;
        FileInputStream fileInputStream;
        IOException e10;
        try {
            new File(newPath).mkdirs();
            File file = new File(oldPath);
            String str = newPath + File.separator + file.getName();
            File file2 = new File(str);
            if (file.isDirectory() && !file2.exists()) {
                file2.mkdirs();
            }
            String[] list = file.list();
            for (int i10 = 0; list != null && i10 < list.length; i10++) {
                String str2 = File.separator;
                File file3 = oldPath.endsWith(str2) ? new File(oldPath + list[i10]) : new File(oldPath + str2 + list[i10]);
                if (file3.isFile()) {
                    try {
                        fileInputStream = new FileInputStream(file3);
                        try {
                            fileOutputStream = new FileOutputStream(str + net.lingala.zip4j.util.e.F0 + list[i10]);
                            try {
                                try {
                                    byte[] bArr = new byte[5120];
                                    while (true) {
                                        int i11 = fileInputStream.read(bArr);
                                        if (i11 != -1) {
                                            fileOutputStream.write(bArr, 0, i11);
                                        } else {
                                            try {
                                                break;
                                            } catch (Exception e11) {
                                                e11.printStackTrace();
                                            }
                                        }
                                    }
                                    fileOutputStream.flush();
                                    fileOutputStream.close();
                                } catch (Throwable th2) {
                                    th = th2;
                                    if (fileOutputStream != null) {
                                        fileOutputStream.flush();
                                        fileOutputStream.close();
                                    }
                                    if (fileInputStream != null) {
                                        fileInputStream.close();
                                    }
                                    throw th;
                                }
                            } catch (IOException e12) {
                                e10 = e12;
                                e10.printStackTrace();
                                if (fileOutputStream != null) {
                                    fileOutputStream.flush();
                                    fileOutputStream.close();
                                }
                                if (fileInputStream != null) {
                                }
                                if (file3.isDirectory()) {
                                    h(oldPath + net.lingala.zip4j.util.e.F0 + list[i10], str);
                                }
                            }
                        } catch (IOException e13) {
                            fileOutputStream = null;
                            e10 = e13;
                        } catch (Throwable th3) {
                            fileOutputStream = null;
                            th = th3;
                        }
                    } catch (IOException e14) {
                        fileOutputStream = null;
                        e10 = e14;
                        fileInputStream = null;
                    } catch (Throwable th4) {
                        fileOutputStream = null;
                        th = th4;
                        fileInputStream = null;
                    }
                    fileInputStream.close();
                }
                if (file3.isDirectory()) {
                    h(oldPath + net.lingala.zip4j.util.e.F0 + list[i10], str);
                }
            }
        } catch (Exception e15) {
            e15.printStackTrace();
        }
    }

    public static void i(InputStream inStream, OutputStream outStream) throws IOException {
        j(inStream, outStream, 0);
    }

    public static void j(InputStream inStream, OutputStream outStream, int offset) throws IOException {
        inStream.skip(offset);
        byte[] bArr = new byte[16384];
        while (true) {
            int i10 = inStream.read(bArr);
            if (i10 == -1) {
                return;
            } else {
                outStream.write(bArr, 0, i10);
            }
        }
    }

    public static boolean k(File src, File dst) {
        if (src != null && dst != null) {
            if (src.isDirectory()) {
                if (!dst.exists()) {
                    dst.mkdirs();
                }
                String[] list = src.list();
                if (list != null || list.length == 0) {
                    return true;
                }
                for (String str : list) {
                    k(new File(src, str), new File(dst, str));
                }
                src.delete();
                return true;
            }
            try {
                File parentFile = dst.getParentFile();
                if (parentFile != null && !parentFile.exists()) {
                    parentFile.mkdirs();
                }
                FileInputStream fileInputStream = new FileInputStream(src);
                FileOutputStream fileOutputStream = new FileOutputStream(dst);
                byte[] bArr = new byte[8192];
                while (true) {
                    int i10 = fileInputStream.read(bArr);
                    if (i10 <= 0) {
                        fileInputStream.close();
                        fileOutputStream.close();
                        src.delete();
                        return true;
                    }
                    fileOutputStream.write(bArr, 0, i10);
                }
            } catch (IOException e10) {
                e10.printStackTrace();
            }
        }
        return false;
    }

    public static void l(String path, boolean isDeleteSelf) {
        File[] fileArrListFiles;
        try {
            if (TextUtils.isEmpty(path)) {
                return;
            }
            File file = new File(path);
            if (file.exists() && file.isDirectory() && (fileArrListFiles = file.listFiles()) != null) {
                for (File file2 : fileArrListFiles) {
                    if (file2.isFile()) {
                        file2.delete();
                    } else if (file2.isDirectory()) {
                        l(file2.getPath(), true);
                    }
                }
                if (isDeleteSelf) {
                    file.delete();
                }
            }
        } catch (Exception e10) {
            e10.printStackTrace();
        }
    }

    public static boolean m(String path) {
        if (t2.h(path)) {
            return true;
        }
        File file = new File(path);
        if (!file.exists()) {
            return true;
        }
        if (file.isFile()) {
            return UtilsMy.delete(file);
        }
        if (!file.isDirectory()) {
            return false;
        }
        File[] fileArrListFiles = file.listFiles();
        if (fileArrListFiles == null) {
            return UtilsMy.delete(file);
        }
        for (File file2 : fileArrListFiles) {
            if (file2.isFile()) {
                UtilsMy.delete(file2);
            } else if (file2.isDirectory()) {
                m(file2.getAbsolutePath());
            }
        }
        return UtilsMy.delete(file);
    }

    public static int n(File file) {
        if (!file.isDirectory()) {
            return 1;
        }
        int iN = 0;
        for (File file2 : file.listFiles()) {
            iN += n(file2);
        }
        return iN;
    }

    public static List<String> o(Context context, String path) throws Throwable {
        LinkedHashSet linkedHashSet = new LinkedHashSet();
        try {
            b(path, linkedHashSet);
            if (context != null && Build.VERSION.SDK_INT >= 29 && (H(path) || J(path))) {
                c(context, linkedHashSet);
            }
        } catch (Exception e10) {
            StringBuilder sb2 = new StringBuilder();
            sb2.append("getCatalogAllZip>>e:");
            sb2.append(e10.getMessage());
        }
        return new ArrayList(linkedHashSet);
    }

    public static List<String> p(String path) {
        return o(null, path);
    }

    public static String q(Context context, Uri uri, String selection, String[] selectionArgs) throws Throwable {
        Cursor cursor = null;
        try {
            Cursor cursorQuery = context.getContentResolver().query(uri, new String[]{"_data"}, selection, selectionArgs, null);
            if (cursorQuery != null) {
                try {
                    if (cursorQuery.moveToFirst()) {
                        String string = cursorQuery.getString(cursorQuery.getColumnIndexOrThrow("_data"));
                        cursorQuery.close();
                        return string;
                    }
                } catch (Throwable th) {
                    th = th;
                    cursor = cursorQuery;
                    if (cursor != null) {
                        cursor.close();
                    }
                    throw th;
                }
            }
            if (cursorQuery != null) {
                cursorQuery.close();
            }
            return null;
        } catch (Throwable th2) {
            th = th2;
        }
    }

    public static int r(String path) {
        if (TextUtils.isEmpty(path)) {
            return 0;
        }
        File file = new File(path);
        if (!file.exists() || !file.isDirectory()) {
            return 0;
        }
        int iR = 0;
        for (File file2 : file.listFiles()) {
            if (file2.isFile() && file2.length() > 0) {
                iR++;
            } else if (file2.isDirectory()) {
                iR += r(file2.getAbsolutePath());
            }
        }
        return iR;
    }

    public static String s(String filePath) {
        if (t2.h(filePath)) {
            return filePath;
        }
        int iLastIndexOf = filePath.lastIndexOf(f49827a);
        return (iLastIndexOf != -1 && filePath.lastIndexOf(File.separator) < iLastIndexOf) ? filePath.substring(iLastIndexOf + 1) : "";
    }

    public static String t(String filePath) {
        int iLastIndexOf;
        return (t2.h(filePath) || (iLastIndexOf = filePath.lastIndexOf(File.separator)) == -1) ? filePath : filePath.substring(iLastIndexOf + 1);
    }

    public static String u(String filePath) {
        if (t2.h(filePath)) {
            return filePath;
        }
        int iLastIndexOf = filePath.lastIndexOf(f49827a);
        int iLastIndexOf2 = filePath.lastIndexOf(File.separator);
        if (iLastIndexOf2 == -1) {
            return iLastIndexOf == -1 ? filePath : filePath.substring(0, iLastIndexOf);
        }
        if (iLastIndexOf == -1) {
            return filePath.substring(iLastIndexOf2 + 1);
        }
        return iLastIndexOf2 < iLastIndexOf ? filePath.substring(iLastIndexOf2 + 1, iLastIndexOf) : filePath.substring(iLastIndexOf2 + 1);
    }

    public static long v(String path) {
        if (t2.h(path)) {
            return -1L;
        }
        File file = new File(path);
        if (file.exists() && file.isFile()) {
            return file.length();
        }
        return -1L;
    }

    public static String w(String filePath) {
        if (t2.h(filePath)) {
            return filePath;
        }
        int iLastIndexOf = filePath.lastIndexOf(File.separator);
        return iLastIndexOf == -1 ? "" : filePath.substring(0, iLastIndexOf);
    }

    @TargetApi(19)
    public static String x(final Context context, final Uri uri) {
        Uri uri2 = null;
        if (DocumentsContract.isDocumentUri(context, uri)) {
            if (C(uri)) {
                String[] strArrSplit = DocumentsContract.getDocumentId(uri).split(":");
                if ("primary".equalsIgnoreCase(strArrSplit[0])) {
                    return Environment.getExternalStorageDirectory() + net.lingala.zip4j.util.e.F0 + strArrSplit[1];
                }
            } else {
                if (B(uri)) {
                    return q(context, ContentUris.withAppendedId(Uri.parse("content://downloads/public_downloads"), Long.valueOf(DocumentsContract.getDocumentId(uri)).longValue()), null, null);
                }
                if (G(uri)) {
                    String[] strArrSplit2 = DocumentsContract.getDocumentId(uri).split(":");
                    String str = strArrSplit2[0];
                    if ("image".equals(str)) {
                        uri2 = MediaStore.Images.Media.EXTERNAL_CONTENT_URI;
                    } else if ("video".equals(str)) {
                        uri2 = MediaStore.Video.Media.EXTERNAL_CONTENT_URI;
                    } else if ("audio".equals(str)) {
                        uri2 = MediaStore.Audio.Media.EXTERNAL_CONTENT_URI;
                    }
                    return q(context, uri2, "_id=?", new String[]{strArrSplit2[1]});
                }
            }
        } else {
            if ("content".equalsIgnoreCase(uri.getScheme())) {
                return F(uri) ? uri.getLastPathSegment() : q(context, uri, null, null);
            }
            if ("file".equalsIgnoreCase(uri.getScheme())) {
                return uri.getPath();
            }
        }
        return null;
    }

    public static boolean y(char c10) {
        return c10 >= 19968 && c10 <= 40869;
    }

    public static boolean z(String str) {
        if (str == null) {
            return false;
        }
        for (char c10 : str.toCharArray()) {
            if (y(c10)) {
                return true;
            }
        }
        return false;
    }
}
