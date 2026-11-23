package com.xinzhu.overmind.utils;

import android.os.Parcel;
import android.system.ErrnoException;
import android.system.Os;
import androidx.annotation.NonNull;
import java.io.BufferedInputStream;
import java.io.BufferedOutputStream;
import java.io.ByteArrayOutputStream;
import java.io.File;
import java.io.FileDescriptor;
import java.io.FileInputStream;
import java.io.FileNotFoundException;
import java.io.FileOutputStream;
import java.io.IOException;
import java.io.InputStream;
import java.io.OutputStream;
import java.util.Enumeration;
import java.util.zip.ZipEntry;
import java.util.zip.ZipFile;
import java.util.zip.ZipInputStream;

/* JADX INFO: loaded from: classes8.dex */
public class l {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private static final String f90097a = "l";

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public static final int f90098b = 448;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public static final int f90099c = 256;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    public static final int f90100d = 128;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public static final int f90101e = 64;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    public static final int f90102f = 56;

    /* JADX INFO: renamed from: g, reason: collision with root package name */
    public static final int f90103g = 32;

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    public static final int f90104h = 16;

    /* JADX INFO: renamed from: i, reason: collision with root package name */
    public static final int f90105i = 8;

    /* JADX INFO: renamed from: j, reason: collision with root package name */
    public static final int f90106j = 7;

    /* JADX INFO: renamed from: k, reason: collision with root package name */
    public static final int f90107k = 4;

    /* JADX INFO: renamed from: l, reason: collision with root package name */
    public static final int f90108l = 2;

    /* JADX INFO: renamed from: m, reason: collision with root package name */
    public static final int f90109m = 1;

    /* JADX INFO: renamed from: n, reason: collision with root package name */
    private static boolean f90110n = true;

    /* JADX INFO: renamed from: o, reason: collision with root package name */
    private static final long f90111o = 524288;

    public static void a(String str, int i10) {
        try {
            Os.chmod(str, i10);
        } catch (ErrnoException e10) {
            e10.printStackTrace();
        }
    }

    public static long b(@NonNull File file, @NonNull File file2) throws IOException {
        FileInputStream fileInputStream = new FileInputStream(file);
        try {
            FileOutputStream fileOutputStream = new FileOutputStream(file2);
            try {
                long jF = f(fileInputStream, fileOutputStream);
                fileOutputStream.close();
                fileInputStream.close();
                return jF;
            } catch (Throwable th) {
                try {
                    fileOutputStream.close();
                } catch (Throwable th2) {
                    th.addSuppressed(th2);
                }
                throw th;
            }
        } catch (Throwable th3) {
            try {
                fileInputStream.close();
            } catch (Throwable th4) {
                th3.addSuppressed(th4);
            }
            throw th3;
        }
    }

    public static long c(@NonNull FileDescriptor fileDescriptor, @NonNull FileDescriptor fileDescriptor2) throws IOException {
        return d(fileDescriptor, fileDescriptor2, Long.MAX_VALUE);
    }

    public static long d(@NonNull FileDescriptor fileDescriptor, @NonNull FileDescriptor fileDescriptor2, long j10) throws IOException {
        return h(fileDescriptor, fileDescriptor2, j10);
    }

    public static long e(InputStream inputStream, File file) throws IOException {
        return f(inputStream, new FileOutputStream(file));
    }

    public static long f(@NonNull InputStream inputStream, @NonNull OutputStream outputStream) throws IOException {
        return (f90110n && (inputStream instanceof FileInputStream) && (outputStream instanceof FileOutputStream)) ? c(((FileInputStream) inputStream).getFD(), ((FileOutputStream) outputStream).getFD()) : i(inputStream, outputStream);
    }

    public static void g(File file, File file2) throws IOException {
        if (file.equals(file2)) {
            return;
        }
        File[] fileArrListFiles = file.listFiles();
        if (fileArrListFiles == null) {
            com.xinzhu.overmind.b.c(f90097a, "copyDirectory failed, source not exist");
            return;
        }
        p(file2);
        for (File file3 : fileArrListFiles) {
            File file4 = new File(file2, file3.getName());
            if (file3.isDirectory()) {
                g(file3, file4);
            } else {
                b(file3, file4);
            }
        }
    }

    private static long h(FileDescriptor fileDescriptor, FileDescriptor fileDescriptor2, long j10) throws IOException {
        return i(new FileInputStream(fileDescriptor), new FileOutputStream(fileDescriptor2));
    }

    private static long i(InputStream inputStream, OutputStream outputStream) throws IOException {
        byte[] bArr = new byte[8192];
        long j10 = 0;
        long j11 = 0;
        while (true) {
            int i10 = inputStream.read(bArr);
            if (i10 == -1) {
                return j10;
            }
            outputStream.write(bArr, 0, i10);
            long j12 = i10;
            j10 += j12;
            j11 += j12;
            if (j11 >= 524288) {
                j11 = 0;
            }
        }
    }

    public static void j(File file) {
        if (file == null || !file.exists()) {
            return;
        }
        l(file);
    }

    public static void k(String str) {
        j(new File(str));
    }

    static void l(File file) {
        try {
            if (file.isDirectory() && !o(file) && file.listFiles() != null) {
                for (File file2 : file.listFiles()) {
                    l(file2);
                }
            }
        } catch (IOException e10) {
            e10.printStackTrace();
        }
        file.delete();
    }

    public static boolean m(String str) {
        return new File(str).exists();
    }

    public static String n(String str) {
        int iLastIndexOf;
        return (str == null || str.length() <= 0 || (iLastIndexOf = str.lastIndexOf(46)) <= -1 || iLastIndexOf >= str.length()) ? str : str.substring(0, iLastIndexOf);
    }

    public static boolean o(File file) throws IOException {
        if (file == null) {
            throw new NullPointerException("File must not be null");
        }
        if (file.getParent() != null) {
            file = new File(file.getParentFile().getCanonicalFile(), file.getName());
        }
        return !file.getCanonicalFile().equals(file.getAbsoluteFile());
    }

    public static boolean p(File file) {
        if (file.exists()) {
            return true;
        }
        return file.mkdirs();
    }

    public static Parcel q(File file) throws IOException {
        Parcel parcelObtain = Parcel.obtain();
        byte[] bArrV = v(file);
        parcelObtain.unmarshall(bArrV, 0, bArrV.length);
        parcelObtain.setDataPosition(0);
        return parcelObtain;
    }

    public static boolean r(File file, File file2) {
        return file.renameTo(file2);
    }

    public static int s(File file, int i10, int i11, int i12) {
        return u(file.getAbsolutePath(), i10, i11, i12);
    }

    public static int t(FileDescriptor fileDescriptor, int i10, int i11, int i12) {
        try {
            Os.fchmod(fileDescriptor, i10);
            if (i11 < 0 && i12 < 0) {
                return 0;
            }
            try {
                Os.fchown(fileDescriptor, i11, i12);
                return 0;
            } catch (ErrnoException e10) {
                com.xinzhu.overmind.b.l(f90097a, "Failed to fchown(): " + e10);
                return e10.errno;
            }
        } catch (ErrnoException e11) {
            com.xinzhu.overmind.b.l(f90097a, "Failed to fchmod(): " + e11);
            return e11.errno;
        }
    }

    public static int u(String str, int i10, int i11, int i12) {
        try {
            Os.chmod(str, i10);
            if (i11 < 0 && i12 < 0) {
                return 0;
            }
            try {
                Os.chown(str, i11, i12);
                return 0;
            } catch (ErrnoException e10) {
                com.xinzhu.overmind.b.l(f90097a, "Failed to chown(" + str + "): " + e10);
                return e10.errno;
            }
        } catch (ErrnoException e11) {
            com.xinzhu.overmind.b.l(f90097a, "Failed to chmod(" + str + "): " + e11);
            return e11.errno;
        }
    }

    public static byte[] v(File file) throws IOException {
        FileInputStream fileInputStream = new FileInputStream(file);
        try {
            return w(fileInputStream);
        } finally {
            p.b(fileInputStream);
        }
    }

    public static byte[] w(InputStream inputStream) throws IOException {
        ByteArrayOutputStream byteArrayOutputStream = new ByteArrayOutputStream();
        byte[] bArr = new byte[100];
        while (true) {
            int i10 = inputStream.read(bArr, 0, 100);
            if (i10 <= 0) {
                return byteArrayOutputStream.toByteArray();
            }
            byteArrayOutputStream.write(bArr, 0, i10);
        }
    }

    public static void x(File file, File file2) throws IOException {
        ZipInputStream zipInputStream = new ZipInputStream(new BufferedInputStream(new FileInputStream(file)));
        try {
            byte[] bArr = new byte[8192];
            while (true) {
                ZipEntry nextEntry = zipInputStream.getNextEntry();
                if (nextEntry == null) {
                    zipInputStream.close();
                    return;
                }
                File file3 = new File(file2, nextEntry.getName());
                File parentFile = nextEntry.isDirectory() ? file3 : file3.getParentFile();
                if (!parentFile.isDirectory() && !parentFile.mkdirs()) {
                    throw new FileNotFoundException("Failed to ensure directory: " + parentFile.getAbsolutePath());
                }
                if (!nextEntry.isDirectory()) {
                    FileOutputStream fileOutputStream = new FileOutputStream(file3);
                    while (true) {
                        try {
                            int i10 = zipInputStream.read(bArr);
                            if (i10 == -1) {
                                break;
                            } else {
                                fileOutputStream.write(bArr, 0, i10);
                            }
                        } catch (Throwable th) {
                            fileOutputStream.close();
                            throw th;
                        }
                    }
                    fileOutputStream.close();
                }
            }
        } catch (Throwable th2) {
            zipInputStream.close();
            throw th2;
        }
    }

    /* JADX WARN: Code duplicated, block: B:103:? A[RETURN, SYNTHETIC] */
    /* JADX WARN: Code duplicated, block: B:57:0x00fa A[Catch: Exception -> 0x00fe, TRY_ENTER, TryCatch #1 {Exception -> 0x00fe, blocks: (B:57:0x00fa, B:61:0x0102, B:63:0x0107, B:65:0x010c, B:36:0x00d3, B:38:0x00d8, B:40:0x00dd, B:41:0x00e0), top: B:83:0x001c }] */
    /* JADX WARN: Code duplicated, block: B:61:0x0102 A[Catch: Exception -> 0x00fe, TryCatch #1 {Exception -> 0x00fe, blocks: (B:57:0x00fa, B:61:0x0102, B:63:0x0107, B:65:0x010c, B:36:0x00d3, B:38:0x00d8, B:40:0x00dd, B:41:0x00e0), top: B:83:0x001c }] */
    /* JADX WARN: Code duplicated, block: B:63:0x0107 A[Catch: Exception -> 0x00fe, TryCatch #1 {Exception -> 0x00fe, blocks: (B:57:0x00fa, B:61:0x0102, B:63:0x0107, B:65:0x010c, B:36:0x00d3, B:38:0x00d8, B:40:0x00dd, B:41:0x00e0), top: B:83:0x001c }] */
    /* JADX WARN: Code duplicated, block: B:65:0x010c A[Catch: Exception -> 0x00fe, TRY_LEAVE, TryCatch #1 {Exception -> 0x00fe, blocks: (B:57:0x00fa, B:61:0x0102, B:63:0x0107, B:65:0x010c, B:36:0x00d3, B:38:0x00d8, B:40:0x00dd, B:41:0x00e0), top: B:83:0x001c }] */
    /* JADX WARN: Code duplicated, block: B:74:0x011d A[DONT_INVERT] */
    /* JADX WARN: Code duplicated, block: B:75:0x011f A[Catch: Exception -> 0x011b, TryCatch #5 {Exception -> 0x011b, blocks: (B:71:0x0117, B:75:0x011f, B:77:0x0124, B:79:0x0129), top: B:85:0x0117 }] */
    /* JADX WARN: Code duplicated, block: B:77:0x0124 A[Catch: Exception -> 0x011b, TryCatch #5 {Exception -> 0x011b, blocks: (B:71:0x0117, B:75:0x011f, B:77:0x0124, B:79:0x0129), top: B:85:0x0117 }] */
    /* JADX WARN: Code duplicated, block: B:79:0x0129 A[Catch: Exception -> 0x011b, TRY_LEAVE, TryCatch #5 {Exception -> 0x011b, blocks: (B:71:0x0117, B:75:0x011f, B:77:0x0124, B:79:0x0129), top: B:85:0x0117 }] */
    /* JADX WARN: Code duplicated, block: B:85:0x0117 A[EXC_TOP_SPLITTER, SYNTHETIC] */
    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Type inference failed for: r4v0, types: [java.io.InputStream] */
    /* JADX WARN: Type inference failed for: r4v1 */
    /* JADX WARN: Type inference failed for: r4v2 */
    /* JADX WARN: Type inference failed for: r4v3, types: [java.io.InputStream] */
    /* JADX WARN: Type inference failed for: r4v4 */
    /* JADX WARN: Type inference failed for: r4v5, types: [java.io.InputStream] */
    /* JADX WARN: Type inference failed for: r4v6 */
    /* JADX WARN: Type inference failed for: r4v7, types: [java.io.InputStream] */
    /* JADX WARN: Type inference failed for: r4v8 */
    public static void y(String str, String str2) throws Throwable {
        ?? r10;
        FileOutputStream fileOutputStream;
        ZipFile zipFile;
        FileOutputStream fileOutputStream2;
        ?? inputStream;
        String str3 = str2 + File.separator;
        new File(str3).mkdir();
        BufferedOutputStream bufferedOutputStream = null;
        try {
            try {
                try {
                    zipFile = new ZipFile(str);
                    try {
                        Enumeration<? extends ZipEntry> enumerationEntries = zipFile.entries();
                        fileOutputStream2 = null;
                        inputStream = 0;
                        while (enumerationEntries.hasMoreElements()) {
                            try {
                                byte[] bArr = new byte[2048];
                                ZipEntry zipEntryNextElement = enumerationEntries.nextElement();
                                String name = zipEntryNextElement.getName();
                                com.xinzhu.overmind.b.a(f90097a, "unzip file " + name);
                                boolean z10 = name.lastIndexOf(net.lingala.zip4j.util.e.F0) != -1;
                                String str4 = str3 + name;
                                if (zipEntryNextElement.isDirectory()) {
                                    new File(str4).mkdirs();
                                } else {
                                    File file = new File(str4);
                                    if (!file.exists() && z10) {
                                        new File(str4.substring(0, str4.lastIndexOf(net.lingala.zip4j.util.e.F0))).mkdirs();
                                    }
                                    file.createNewFile();
                                    inputStream = zipFile.getInputStream(zipEntryNextElement);
                                    FileOutputStream fileOutputStream3 = new FileOutputStream(file);
                                    try {
                                        BufferedOutputStream bufferedOutputStream2 = new BufferedOutputStream(fileOutputStream3, 2048);
                                        while (true) {
                                            try {
                                                int i10 = inputStream.read(bArr);
                                                if (i10 <= -1) {
                                                    break;
                                                } else {
                                                    bufferedOutputStream2.write(bArr, 0, i10);
                                                }
                                            } catch (IOException e10) {
                                                e = e10;
                                                bufferedOutputStream = bufferedOutputStream2;
                                                fileOutputStream2 = fileOutputStream3;
                                                e.printStackTrace();
                                                if (bufferedOutputStream != null) {
                                                    bufferedOutputStream.close();
                                                }
                                                if (fileOutputStream2 != null) {
                                                    fileOutputStream2.close();
                                                }
                                                if (inputStream != 0) {
                                                    inputStream.close();
                                                }
                                                if (zipFile != null) {
                                                    zipFile.close();
                                                }
                                            } catch (Throwable th) {
                                                th = th;
                                                bufferedOutputStream = bufferedOutputStream2;
                                                fileOutputStream = fileOutputStream3;
                                                r10 = inputStream;
                                                if (bufferedOutputStream != null) {
                                                    try {
                                                        bufferedOutputStream.close();
                                                        if (fileOutputStream != null) {
                                                            fileOutputStream.close();
                                                        }
                                                        if (r10 != 0) {
                                                            r10.close();
                                                        }
                                                        if (zipFile != null) {
                                                            zipFile.close();
                                                        }
                                                    } catch (Exception e11) {
                                                        e11.printStackTrace();
                                                        throw th;
                                                    }
                                                } else {
                                                    if (fileOutputStream != null) {
                                                        fileOutputStream.close();
                                                    }
                                                    if (r10 != 0) {
                                                        r10.close();
                                                    }
                                                    if (zipFile != null) {
                                                        zipFile.close();
                                                    }
                                                }
                                                throw th;
                                            }
                                        }
                                        bufferedOutputStream2.flush();
                                        bufferedOutputStream2.close();
                                        fileOutputStream3.close();
                                        inputStream.close();
                                        bufferedOutputStream = bufferedOutputStream2;
                                        fileOutputStream2 = fileOutputStream3;
                                    } catch (IOException e12) {
                                        e = e12;
                                    } catch (Throwable th2) {
                                        th = th2;
                                    }
                                }
                            } catch (IOException e13) {
                                e = e13;
                            }
                        }
                        zipFile.close();
                        if (bufferedOutputStream != null) {
                            bufferedOutputStream.close();
                        }
                        if (fileOutputStream2 != null) {
                            fileOutputStream2.close();
                        }
                        if (inputStream != 0) {
                            inputStream.close();
                        }
                        zipFile.close();
                    } catch (IOException e14) {
                        e = e14;
                        fileOutputStream2 = null;
                        inputStream = fileOutputStream2;
                        e.printStackTrace();
                        if (bufferedOutputStream != null) {
                            bufferedOutputStream.close();
                        }
                        if (fileOutputStream2 != null) {
                            fileOutputStream2.close();
                        }
                        if (inputStream != 0) {
                            inputStream.close();
                        }
                        if (zipFile != null) {
                            zipFile.close();
                        }
                    } catch (Throwable th3) {
                        th = th3;
                        fileOutputStream = null;
                        r10 = fileOutputStream;
                        if (bufferedOutputStream != null) {
                            bufferedOutputStream.close();
                            if (fileOutputStream != null) {
                                fileOutputStream.close();
                            }
                            if (r10 != 0) {
                                r10.close();
                            }
                            if (zipFile != null) {
                                zipFile.close();
                            }
                        } else {
                            if (fileOutputStream != null) {
                                fileOutputStream.close();
                            }
                            if (r10 != 0) {
                                r10.close();
                            }
                            if (zipFile != null) {
                                zipFile.close();
                            }
                        }
                        throw th;
                    }
                } catch (Exception e15) {
                    e15.printStackTrace();
                }
            } catch (IOException e16) {
                e = e16;
                zipFile = null;
                fileOutputStream2 = null;
            } catch (Throwable th4) {
                th = th4;
                zipFile = null;
                fileOutputStream = null;
            }
        } catch (Throwable th5) {
            th = th5;
        }
    }

    public static void z(Parcel parcel, FileOutputStream fileOutputStream) throws IOException {
        fileOutputStream.write(parcel.marshall());
    }
}
