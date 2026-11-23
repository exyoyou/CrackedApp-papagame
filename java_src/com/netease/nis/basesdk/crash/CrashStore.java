package com.netease.nis.basesdk.crash;

import android.text.TextUtils;
import com.netease.nis.basesdk.Logger;
import com.tencent.stat.StatNativeCrashReport;
import java.io.BufferedReader;
import java.io.File;
import java.io.FileNotFoundException;
import java.io.FileReader;
import java.io.FilenameFilter;
import java.io.IOException;
import java.io.RandomAccessFile;
import java.util.Arrays;
import java.util.Comparator;
import java.util.Date;
import java.util.Locale;

/* JADX INFO: loaded from: classes2.dex */
public class CrashStore {

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private static final CrashStore f75908b = new CrashStore();

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private String f75909a;

    class a implements FilenameFilter {
        a(CrashStore crashStore) {
        }

        @Override // java.io.FilenameFilter
        public boolean accept(File file, String str) {
            if (str.startsWith(StatNativeCrashReport.PRE_TAG_TOMBSTONE_FNAME)) {
                return str.endsWith(".java.crash");
            }
            return false;
        }
    }

    class b implements Comparator<File> {
        b(CrashStore crashStore) {
        }

        @Override // java.util.Comparator
        /* JADX INFO: renamed from: a, reason: merged with bridge method [inline-methods] */
        public int compare(File file, File file2) {
            return file.getName().compareTo(file2.getName());
        }
    }

    class c implements FilenameFilter {
        c(CrashStore crashStore) {
        }

        @Override // java.io.FilenameFilter
        public boolean accept(File file, String str) {
            if (str.startsWith(StatNativeCrashReport.PRE_TAG_TOMBSTONE_FNAME)) {
                return str.endsWith(".native.crash");
            }
            return false;
        }
    }

    class d implements Comparator<File> {
        d(CrashStore crashStore) {
        }

        @Override // java.util.Comparator
        /* JADX INFO: renamed from: a, reason: merged with bridge method [inline-methods] */
        public int compare(File file, File file2) {
            return file.getName().compareTo(file2.getName());
        }
    }

    private CrashStore() {
    }

    public static CrashStore getInstance() {
        return f75908b;
    }

    public void delete(String str) {
        if (com.netease.nis.basesdk.crash.a.b().a(new File(str))) {
            Logger.d("delete file success");
        }
    }

    public void initialize(String str) {
        this.f75909a = str;
        com.netease.nis.basesdk.crash.a.b().b(str);
    }

    public File[] loadJava() {
        if (TextUtils.isEmpty(this.f75909a)) {
            return new File[0];
        }
        File file = new File(this.f75909a);
        if (!file.exists() || !file.isDirectory()) {
            return new File[0];
        }
        File[] fileArrListFiles = file.listFiles(new a(this));
        if (fileArrListFiles == null) {
            return new File[0];
        }
        Arrays.sort(fileArrListFiles, new b(this));
        return fileArrListFiles;
    }

    public File[] loadNative() {
        if (TextUtils.isEmpty(this.f75909a)) {
            return new File[0];
        }
        File file = new File(this.f75909a);
        if (!file.exists() || !file.isDirectory()) {
            return new File[0];
        }
        File[] fileArrListFiles = file.listFiles(new c(this));
        if (fileArrListFiles == null) {
            return new File[0];
        }
        Arrays.sort(fileArrListFiles, new d(this));
        return fileArrListFiles;
    }

    public String parse(String str) throws Throwable {
        if (TextUtils.isEmpty(str)) {
            return "";
        }
        BufferedReader bufferedReader = null;
        try {
            try {
                try {
                    BufferedReader bufferedReader2 = new BufferedReader(new FileReader(str));
                    try {
                        StringBuilder sb2 = new StringBuilder();
                        while (true) {
                            String line = bufferedReader2.readLine();
                            if (line == null) {
                                break;
                            }
                            sb2.append(line);
                            sb2.append("\n");
                        }
                        String string = sb2.toString();
                        try {
                            bufferedReader2.close();
                        } catch (IOException unused) {
                            Logger.e("CrashCrashStore", "parse log file failed");
                        }
                        return string;
                    } catch (FileNotFoundException unused2) {
                        bufferedReader = bufferedReader2;
                        Logger.e("CrashCrashStore", "parse log file failed");
                        if (bufferedReader != null) {
                            bufferedReader.close();
                        }
                        return "";
                    } catch (IOException unused3) {
                        bufferedReader = bufferedReader2;
                        Logger.e("CrashCrashStore", "parse log file failed");
                        if (bufferedReader != null) {
                            bufferedReader.close();
                        }
                        return "";
                    } catch (Throwable th) {
                        th = th;
                        bufferedReader = bufferedReader2;
                        if (bufferedReader != null) {
                            try {
                                bufferedReader.close();
                            } catch (IOException unused4) {
                                Logger.e("CrashCrashStore", "parse log file failed");
                            }
                        }
                        throw th;
                    }
                } catch (IOException unused5) {
                    Logger.e("CrashCrashStore", "parse log file failed");
                    return "";
                }
            } catch (FileNotFoundException unused6) {
            } catch (IOException unused7) {
            }
        } catch (Throwable th2) {
            th = th2;
        }
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Type inference failed for: r3v0 */
    /* JADX WARN: Type inference failed for: r3v1 */
    /* JADX WARN: Type inference failed for: r3v10 */
    /* JADX WARN: Type inference failed for: r3v12 */
    /* JADX WARN: Type inference failed for: r3v13 */
    /* JADX WARN: Type inference failed for: r3v14 */
    /* JADX WARN: Type inference failed for: r3v15 */
    /* JADX WARN: Type inference failed for: r3v16 */
    /* JADX WARN: Type inference failed for: r3v17 */
    /* JADX WARN: Type inference failed for: r3v2 */
    /* JADX WARN: Type inference failed for: r3v3, types: [java.io.RandomAccessFile] */
    /* JADX WARN: Type inference failed for: r3v4 */
    /* JADX WARN: Type inference failed for: r3v5, types: [java.io.RandomAccessFile] */
    /* JADX WARN: Type inference failed for: r3v6 */
    /* JADX WARN: Type inference failed for: r3v7 */
    /* JADX WARN: Type inference failed for: r3v8 */
    public File store(String str) throws Throwable {
        File fileA;
        ?? r10 = 0;
        r10 = 0;
        r10 = 0;
        try {
            fileA = com.netease.nis.basesdk.crash.a.b().a(String.format(Locale.US, "%s/%s_%020d_%s", this.f75909a, "tombstone", Long.valueOf(new Date().getTime() * 1000), ".java.crash"));
        } catch (Exception unused) {
            Logger.e("CrashCrashStore", "createLogFile failed");
            fileA = null;
        }
        try {
            try {
                if (fileA != null) {
                    try {
                        RandomAccessFile randomAccessFile = new RandomAccessFile(fileA, "rws");
                        try {
                            boolean zIsEmpty = TextUtils.isEmpty(str);
                            ?? r11 = zIsEmpty;
                            if (!zIsEmpty) {
                                randomAccessFile.write(str.getBytes("UTF-8"));
                                r11 = "UTF-8";
                            }
                            randomAccessFile.close();
                            r10 = r11;
                        } catch (Exception unused2) {
                            r10 = randomAccessFile;
                            Logger.e("CrashCrashStore", "write log file failed");
                            if (r10 != 0) {
                                r10.close();
                                r10 = r10;
                            }
                            return fileA;
                        } catch (Throwable th) {
                            th = th;
                            r10 = randomAccessFile;
                            if (r10 != 0) {
                                try {
                                    r10.close();
                                } catch (Exception unused3) {
                                    Logger.e("CrashCrashStore", "write log file failed");
                                }
                            }
                            throw th;
                        }
                    } catch (Exception unused4) {
                    }
                }
            } catch (Exception unused5) {
                Logger.e("CrashCrashStore", "write log file failed");
            }
            return fileA;
        } catch (Throwable th2) {
            th = th2;
        }
    }
}
