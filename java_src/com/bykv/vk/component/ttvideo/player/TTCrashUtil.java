package com.bykv.vk.component.ttvideo.player;

import android.content.Context;
import android.util.Base64;
import com.byazt.nr.m;
import com.bykv.vk.component.ttvideo.utils.AVTime;
import java.io.ByteArrayOutputStream;
import java.io.File;
import java.io.FileInputStream;
import java.io.FileNotFoundException;
import java.io.FileOutputStream;
import java.io.FileReader;
import java.io.FileWriter;
import java.io.IOException;
import java.io.InputStream;
import java.io.OutputStream;
import java.io.PrintStream;
import java.io.Writer;
import java.util.Locale;
import java.util.zip.GZIPOutputStream;

/* JADX INFO: loaded from: classes9.dex */
public final class TTCrashUtil {
    public static void addDebugTrackInfo(long j10, String str, String str2, boolean z10) throws Throwable {
        appendTrackInfo(getDebugTrackFilePath(j10, str), z10, str2);
    }

    public static void addTrackInfo(long j10, String str, String str2) throws Throwable {
        appendTrackInfo(getTrackFilePath(j10, str), true, str2);
    }

    private static void appendTrackInfo(String str, boolean z10, String str2) throws Throwable {
        FileWriter fileWriter = null;
        try {
            FileWriter fileWriter2 = new FileWriter(str, z10);
            try {
                fileWriter2.write(str2);
                try {
                    fileWriter2.close();
                } catch (Exception e10) {
                    m.c(e10);
                }
            } catch (Exception unused) {
                fileWriter = fileWriter2;
                try {
                    fileWriter.close();
                } catch (Exception e11) {
                    m.c(e11);
                }
            } catch (Throwable th) {
                th = th;
                fileWriter = fileWriter2;
                try {
                    fileWriter.close();
                } catch (Exception e12) {
                    m.c(e12);
                }
                throw th;
            }
        } catch (Exception unused2) {
        } catch (Throwable th2) {
            th = th2;
        }
    }

    public static void checkLogDir(String str) {
        File file = new File(String.format("%s/ttplayer_logs", str));
        if (!file.exists()) {
            if (file.mkdir()) {
                return;
            }
            file.getName();
        } else if (file.isDirectory()) {
            File[] fileArrListFiles = file.listFiles();
            if (fileArrListFiles != null) {
                for (File file2 : fileArrListFiles) {
                    if (!file2.delete()) {
                        file2.getName();
                    }
                }
            }
            if (file.delete()) {
                return;
            }
            file.getName();
        }
    }

    public static void checkTrackDir(String str) {
        File file = new File(String.format("%s/ttplayer_logs", str));
        if (file.exists()) {
            return;
        }
        file.mkdir();
    }

    public static void compress(InputStream inputStream, OutputStream outputStream) throws Exception {
        GZIPOutputStream gZIPOutputStream = new GZIPOutputStream(outputStream);
        byte[] bArr = new byte[com.sigmob.sdk.archives.tar.d.f78732b];
        while (true) {
            int i10 = inputStream.read(bArr, 0, com.sigmob.sdk.archives.tar.d.f78732b);
            if (i10 == -1) {
                gZIPOutputStream.flush();
                gZIPOutputStream.finish();
                gZIPOutputStream.close();
                return;
            }
            gZIPOutputStream.write(bArr, 0, i10);
        }
    }

    /* JADX WARN: Code duplicated, block: B:46:0x0080 A[DONT_INVERT] */
    /* JADX WARN: Code duplicated, block: B:47:0x0082 A[Catch: IOException -> 0x007e, TRY_LEAVE, TryCatch #12 {IOException -> 0x007e, blocks: (B:43:0x007a, B:47:0x0082), top: B:79:0x007a }] */
    /* JADX WARN: Code duplicated, block: B:57:0x0095 A[Catch: IOException -> 0x0091, TRY_LEAVE, TryCatch #1 {IOException -> 0x0091, blocks: (B:53:0x008d, B:57:0x0095), top: B:73:0x008d }] */
    /* JADX WARN: Code duplicated, block: B:67:0x00a8 A[Catch: IOException -> 0x00a4, TRY_LEAVE, TryCatch #11 {IOException -> 0x00a4, blocks: (B:63:0x00a0, B:67:0x00a8), top: B:77:0x00a0 }] */
    /* JADX WARN: Code duplicated, block: B:79:0x007a A[EXC_TOP_SPLITTER, SYNTHETIC] */
    public static final boolean copyFile(String str, String str2, boolean z10, boolean z11) throws Throwable {
        FileInputStream fileInputStream;
        FileOutputStream fileOutputStream;
        Throwable th;
        File file = new File(str2);
        if (!file.exists() || !file.isFile()) {
            return false;
        }
        File file2 = new File(str);
        if (file2.exists()) {
            if (z10) {
                new File(str).delete();
            }
        } else if (!file2.getParentFile().exists() && !file2.getParentFile().mkdirs()) {
            return false;
        }
        FileOutputStream fileOutputStream2 = null;
        try {
            fileInputStream = new FileInputStream(file);
            try {
                fileOutputStream = new FileOutputStream(file2);
                try {
                    byte[] bArr = new byte[1024];
                    while (true) {
                        int i10 = fileInputStream.read(bArr);
                        if (i10 == -1) {
                            break;
                        }
                        fileOutputStream.write(bArr, 0, i10);
                    }
                    if (z11) {
                        file.delete();
                    }
                    try {
                        fileOutputStream.close();
                        fileInputStream.close();
                        return true;
                    } catch (IOException e10) {
                        m.c(e10);
                        return true;
                    }
                } catch (FileNotFoundException unused) {
                    fileOutputStream2 = fileOutputStream;
                    if (fileOutputStream2 != null) {
                        try {
                            fileOutputStream2.close();
                            if (fileInputStream != null) {
                                fileInputStream.close();
                            }
                        } catch (IOException e11) {
                            m.c(e11);
                            return false;
                        }
                    } else if (fileInputStream != null) {
                        fileInputStream.close();
                    }
                    return false;
                } catch (IOException unused2) {
                    fileOutputStream2 = fileOutputStream;
                    if (fileOutputStream2 != null) {
                        try {
                            fileOutputStream2.close();
                            if (fileInputStream != null) {
                                fileInputStream.close();
                            }
                        } catch (IOException e12) {
                            m.c(e12);
                            return false;
                        }
                    } else if (fileInputStream != null) {
                        fileInputStream.close();
                    }
                    return false;
                } catch (Throwable th2) {
                    th = th2;
                    if (fileOutputStream != null) {
                        try {
                            fileOutputStream.close();
                            if (fileInputStream != null) {
                                fileInputStream.close();
                            }
                        } catch (IOException e13) {
                            m.c(e13);
                            throw th;
                        }
                    } else if (fileInputStream != null) {
                        fileInputStream.close();
                    }
                    throw th;
                }
            } catch (FileNotFoundException unused3) {
            } catch (IOException unused4) {
            } catch (Throwable th3) {
                th = th3;
                fileOutputStream = null;
                th = th;
                if (fileOutputStream != null) {
                    fileOutputStream.close();
                    if (fileInputStream != null) {
                        fileInputStream.close();
                    }
                } else if (fileInputStream != null) {
                    fileInputStream.close();
                }
                throw th;
            }
        } catch (FileNotFoundException unused5) {
            fileInputStream = null;
        } catch (IOException unused6) {
            fileInputStream = null;
        } catch (Throwable th4) {
            th = th4;
            fileInputStream = null;
            fileOutputStream = null;
        }
    }

    public static void deleteCrashFile(Context context, String str) {
        File file = new File(str);
        if (file.exists()) {
            file.delete();
        }
    }

    public static void deleteDebugTrackFile(long j10, String str) {
        deleteTrackFile(getDebugTrackFilePath(j10, str));
    }

    private static void deleteTrackFile(String str) {
        File file = new File(str);
        if (file.exists()) {
            file.delete();
        }
    }

    public static boolean existLogsFile(long j10, String str) {
        File[] fileArrListFiles;
        String strValueOf = String.valueOf(j10);
        File file = new File(String.format("%s/ttplayer_logs", str));
        if (!file.exists() || !file.isDirectory() || (fileArrListFiles = file.listFiles()) == null) {
            return false;
        }
        for (File file2 : fileArrListFiles) {
            String name = file2.getName();
            m.c("ttmp", "<TTCrashUtils,existLogsFile,375>file:" + name + ",pname:" + strValueOf);
            if (name != null && !name.startsWith(strValueOf)) {
                return true;
            }
        }
        return false;
    }

    public static boolean existsCrashFile(Context context, String str) {
        if (context == null && str == null) {
            return false;
        }
        return new File(str).exists();
    }

    public static final String existsCrashFilePath(Context context) {
        if (TTPlayerConfiger.getValue(18, 1) == 1) {
            String appCrashFilePath = TTPlayerConfiger.getAppCrashFilePath(context);
            if (appCrashFilePath == null || !new File(appCrashFilePath).exists()) {
                return null;
            }
            return appCrashFilePath;
        }
        String appCrashFilePath2 = TTPlayerConfiger.getAppCrashFilePath2(context);
        if (appCrashFilePath2 != null && new File(appCrashFilePath2).exists()) {
            return appCrashFilePath2;
        }
        String plugerCrashFilePath = TTPlayerConfiger.getPlugerCrashFilePath(context);
        if (plugerCrashFilePath != null && new File(plugerCrashFilePath).exists()) {
            return plugerCrashFilePath;
        }
        String externalStorageDirectoryCrashFilePath = TTPlayerConfiger.getExternalStorageDirectoryCrashFilePath();
        if (externalStorageDirectoryCrashFilePath == null || new File(externalStorageDirectoryCrashFilePath).exists()) {
            return externalStorageDirectoryCrashFilePath;
        }
        return null;
    }

    public static boolean existsTrackFile(long j10, String str) {
        return new File(getTrackFilePath(j10, str)).exists();
    }

    public static String getBase64SampleCrash(String str) {
        return Base64.encodeToString(str.getBytes(), 0);
    }

    public static String getCrashFileContext(Context context, String str, StringBuilder sb2) {
        FileInputStream fileInputStream;
        if (context == null && str == null) {
            sb2.append("context or path is null.\r\n");
            return null;
        }
        File file = new File(str);
        if (!file.exists()) {
            sb2.append("file not exist.path:");
            sb2.append(str);
            sb2.append("\r\n");
            return null;
        }
        if (file.length() == 0) {
            sb2.append("file size is zore.\r\n");
            return null;
        }
        ByteArrayOutputStream byteArrayOutputStream = new ByteArrayOutputStream();
        try {
            fileInputStream = new FileInputStream(file);
            try {
                compress(fileInputStream, byteArrayOutputStream);
                fileInputStream.close();
                String strEncodeToString = Base64.encodeToString(byteArrayOutputStream.toByteArray(), 0);
                byteArrayOutputStream.close();
                return strEncodeToString;
            } catch (Exception e10) {
                e = e10;
                m.c(e);
                if (fileInputStream != null) {
                    try {
                        fileInputStream.close();
                    } catch (IOException e11) {
                        m.c(e11);
                    }
                }
                try {
                    byteArrayOutputStream.close();
                } catch (IOException unused) {
                }
                sb2.append("gzip file is error.error:");
                sb2.append(e.getMessage());
                return null;
            }
        } catch (Exception e12) {
            e = e12;
            fileInputStream = null;
        }
    }

    private static String getDebugTrackFilePath(long j10, String str) {
        return String.format(Locale.US, "%s/ttplayer_logs/%d_d.log", str, Long.valueOf(j10));
    }

    private static boolean getTrackFileInfos(File file, StringBuilder sb2) {
        int i10;
        FileReader fileReader = null;
        try {
            if (!file.exists()) {
                return false;
            }
            char[] cArr = new char[1024];
            FileReader fileReader2 = new FileReader(file);
            do {
                try {
                    i10 = fileReader2.read(cArr);
                    if (i10 <= 0) {
                        break;
                    }
                    sb2.append(cArr, 0, i10);
                } catch (Throwable th) {
                    th = th;
                    fileReader = fileReader2;
                }
            } while (i10 >= 1024);
            fileReader2.close();
            return true;
        } catch (Throwable th2) {
            th = th2;
        }
        if (fileReader != null) {
            try {
                fileReader.close();
            } catch (Exception unused) {
            }
        }
        sb2.append("track message:");
        sb2.append(th.getMessage());
        sb2.append("\r\n");
        return true;
    }

    public static String getTrackFilePath(long j10, String str) {
        return String.format(Locale.US, "%s/ttplayer_logs/%d.log", str, Long.valueOf(j10));
    }

    public static final boolean moveFile(String str, String str2, boolean z10) {
        return copyFile(str, str2, z10, true);
    }

    public static boolean moveTrackFile(long j10, long j11, String str) {
        return new File(getTrackFilePath(j10, str)).renameTo(new File(getTrackFilePath(j11, str)));
    }

    public static boolean readDebugTrackInfos(long j10, String str, StringBuilder sb2) {
        return getTrackFileInfos(getDebugTrackFilePath(j10, str), sb2);
    }

    public static boolean readLogsInfo(long j10, String str, StringBuilder sb2) {
        File[] fileArrListFiles;
        String strValueOf = String.valueOf(j10);
        File file = new File(String.format("%s/ttplayer_logs", str));
        if (!file.exists() || !file.isDirectory() || (fileArrListFiles = file.listFiles()) == null) {
            return false;
        }
        for (File file2 : fileArrListFiles) {
            String name = file2.getName();
            if (name != null && !name.startsWith(strValueOf) && getTrackFileInfos(file2, sb2)) {
                boolean zDelete = file2.delete();
                if (!zDelete) {
                    file2.getName();
                }
                return zDelete;
            }
        }
        return false;
    }

    public static boolean readTrackInfos(long j10, String str, StringBuilder sb2) {
        return getTrackFileInfos(getTrackFilePath(j10, str), sb2);
    }

    public static final void saveException(Throwable th, String str) throws Throwable {
        FileOutputStream fileOutputStream;
        if (str == null) {
            return;
        }
        File file = new File(str);
        if (file.exists()) {
            return;
        }
        PrintStream printStream = null;
        try {
            fileOutputStream = new FileOutputStream(file);
            try {
                PrintStream printStream2 = new PrintStream(fileOutputStream);
                try {
                    printStream2.write("EXCE".getBytes());
                    th.printStackTrace(printStream2);
                    printStream2.close();
                    try {
                        fileOutputStream.close();
                    } catch (Exception e10) {
                        m.c(e10);
                    }
                } catch (Exception unused) {
                    printStream = printStream2;
                    if (printStream != null) {
                        printStream.close();
                    }
                    if (fileOutputStream != null) {
                        try {
                            fileOutputStream.close();
                        } catch (Exception e11) {
                            m.c(e11);
                        }
                    }
                } catch (Throwable th2) {
                    th = th2;
                    printStream = printStream2;
                    if (printStream != null) {
                        printStream.close();
                    }
                    if (fileOutputStream != null) {
                        try {
                            fileOutputStream.close();
                        } catch (Exception e12) {
                            m.c(e12);
                        }
                    }
                    throw th;
                }
            } catch (Exception unused2) {
            } catch (Throwable th3) {
                th = th3;
            }
        } catch (Exception unused3) {
            fileOutputStream = null;
        } catch (Throwable th4) {
            th = th4;
            fileOutputStream = null;
        }
    }

    public static void saveLowMemoryInfo(int i10, String str) throws Throwable {
        File file = new File(str);
        if (file.exists()) {
            return;
        }
        FileWriter fileWriter = null;
        try {
            try {
                FileWriter fileWriter2 = new FileWriter(file);
                try {
                    fileWriter2.write("LOWM\r\nrecv low memory warring info.level:" + i10);
                    try {
                        fileWriter2.close();
                    } catch (IOException e10) {
                        m.c(e10);
                    }
                } catch (IOException e11) {
                    e = e11;
                    fileWriter = fileWriter2;
                    m.c(e);
                    if (fileWriter != null) {
                        try {
                            fileWriter.close();
                        } catch (IOException e12) {
                            m.c(e12);
                        }
                    }
                } catch (Throwable th) {
                    th = th;
                    fileWriter = fileWriter2;
                    if (fileWriter != null) {
                        try {
                            fileWriter.close();
                        } catch (IOException e13) {
                            m.c(e13);
                        }
                    }
                    throw th;
                }
            } catch (Throwable th2) {
                th = th2;
            }
        } catch (IOException e14) {
            e = e14;
        }
    }

    /* JADX WARN: Code duplicated, block: B:40:0x0057 A[EXC_TOP_SPLITTER, SYNTHETIC] */
    public static void saveStopInfo(String str, String str2) throws Throwable {
        Throwable th;
        FileWriter fileWriter;
        IOException e10;
        File file = new File(str);
        if (file.exists()) {
            return;
        }
        Writer writer = null;
        try {
            try {
                fileWriter = new FileWriter(file);
                try {
                    fileWriter.write("STOP recv stop info:" + str2 + ".time:" + AVTime.getFormatNow() + "\r\n");
                    try {
                        fileWriter.close();
                    } catch (IOException e11) {
                        m.c(e11);
                    }
                } catch (IOException e12) {
                    e10 = e12;
                    m.c(e10);
                    if (fileWriter != null) {
                        try {
                            fileWriter.close();
                        } catch (IOException e13) {
                            m.c(e13);
                        }
                    }
                }
            } catch (Throwable th2) {
                th = th2;
                if (0 != 0) {
                    try {
                        writer.close();
                    } catch (IOException e14) {
                        m.c(e14);
                    }
                }
                throw th;
            }
        } catch (IOException e15) {
            fileWriter = null;
            e10 = e15;
        } catch (Throwable th3) {
            th = th3;
            if (0 != 0) {
                writer.close();
            }
            throw th;
        }
    }

    public static void addTrackInfo(long j10, String str, String str2, boolean z10) throws Throwable {
        appendTrackInfo(getTrackFilePath(j10, str), z10, str2);
    }

    public static void deleteTrackFile(long j10, String str) {
        deleteTrackFile(getTrackFilePath(j10, str));
    }

    private static boolean getTrackFileInfos(String str, StringBuilder sb2) {
        int i10;
        FileReader fileReader = null;
        try {
            File file = new File(str);
            if (!file.exists()) {
                sb2.append("path");
                sb2.append(str);
                sb2.append(" not exists.\r\n");
                return false;
            }
            char[] cArr = new char[1024];
            FileReader fileReader2 = new FileReader(file);
            do {
                try {
                    i10 = fileReader2.read(cArr);
                    if (i10 <= 0) {
                        break;
                    }
                    sb2.append(cArr, 0, i10);
                } catch (Throwable th) {
                    th = th;
                    fileReader = fileReader2;
                    if (fileReader != null) {
                        try {
                            fileReader.close();
                        } catch (Exception unused) {
                        }
                    }
                    sb2.append("track message:");
                    sb2.append(th.getMessage());
                    sb2.append("\r\n");
                    return true;
                }
            } while (i10 >= 1024);
            fileReader2.close();
            return true;
        } catch (Throwable th2) {
            th = th2;
        }
    }
}
