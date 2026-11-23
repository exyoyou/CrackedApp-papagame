package cn.fly.tools.xcrash;

import com.tencent.stat.StatNativeCrashReport;
import java.io.File;
import java.io.FileOutputStream;
import java.io.FilenameFilter;
import java.io.RandomAccessFile;
import java.nio.MappedByteBuffer;
import java.nio.channels.FileChannel;
import java.util.Arrays;
import java.util.Comparator;
import java.util.Date;
import java.util.Locale;
import java.util.Timer;
import java.util.TimerTask;
import java.util.concurrent.atomic.AtomicInteger;

/* JADX INFO: loaded from: classes7.dex */
class b {

    /* JADX INFO: renamed from: l, reason: collision with root package name */
    private static final b f2353l = new b();

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private String f2354a = "placeholder";

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private String f2355b = ".clean.xcrash";

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    private String f2356c = ".dirty.xcrash";

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    private String f2357d = null;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    private int f2358e = 0;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    private int f2359f = 0;

    /* JADX INFO: renamed from: g, reason: collision with root package name */
    private int f2360g = 1;

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    private int f2361h = 0;

    /* JADX INFO: renamed from: i, reason: collision with root package name */
    private int f2362i = 0;

    /* JADX INFO: renamed from: j, reason: collision with root package name */
    private int f2363j = 0;

    /* JADX INFO: renamed from: k, reason: collision with root package name */
    private AtomicInteger f2364k = new AtomicInteger();

    private b() {
    }

    static b a() {
        return f2353l;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void c() {
        if (e.a(this.f2357d)) {
            File file = new File(this.f2357d);
            try {
                b(file);
            } catch (Exception e10) {
                XCrash.getLogger().a("NCRASH", "FileManager doMaintainTombstone failed", e10);
            }
            try {
                c(file);
            } catch (Exception e11) {
                XCrash.getLogger().a("NCRASH", "FileManager doMaintainPlaceholder failed", e11);
            }
        }
    }

    /* JADX WARN: Code duplicated, block: B:17:0x0050 A[Catch: Exception -> 0x0056, all -> 0x00a9, TRY_LEAVE, TryCatch #4 {all -> 0x00a9, blocks: (B:14:0x0041, B:16:0x0047, B:17:0x0050, B:21:0x005b, B:23:0x0068, B:25:0x0099), top: B:64:0x0041 }] */
    /* JADX WARN: Code duplicated, block: B:57:0x00cd A[EXC_TOP_SPLITTER, SYNTHETIC] */
    /* JADX WARN: Code duplicated, block: B:62:0x00c5 A[EXC_TOP_SPLITTER, SYNTHETIC] */
    private boolean d(File file) throws Throwable {
        boolean zRenameTo;
        byte[] bArr;
        FileOutputStream fileOutputStream = null;
        try {
            try {
                byte[] bArr2 = new byte[1024];
                Arrays.fill(bArr2, (byte) 0);
                long j10 = this.f2362i;
                long length = file.length();
                if (length > this.f2362i * 1024) {
                    j10 = length / 1024;
                    if (length % 1024 != 0) {
                        j10++;
                    }
                }
                FileOutputStream fileOutputStream2 = new FileOutputStream(file.getAbsoluteFile(), false);
                byte[] bArr3 = bArr2;
                int i10 = 0;
                while (i10 < j10) {
                    i10++;
                    if (i10 == j10) {
                        try {
                            try {
                                if (length % 1024 != 0) {
                                    bArr = bArr3;
                                    fileOutputStream2.write(bArr, 0, (int) (length % 1024));
                                } else {
                                    bArr = bArr3;
                                    fileOutputStream2.write(bArr);
                                }
                            } catch (Throwable th) {
                                th = th;
                                fileOutputStream = fileOutputStream2;
                                if (fileOutputStream != null) {
                                    try {
                                        fileOutputStream.close();
                                    } catch (Exception unused) {
                                    }
                                }
                                throw th;
                            }
                        } catch (Exception e10) {
                            e = e10;
                            fileOutputStream = fileOutputStream2;
                            XCrash.getLogger().a("NCRASH", "FileManager cleanTheDirtyFile failed", e);
                            if (fileOutputStream != null) {
                                try {
                                    fileOutputStream.close();
                                } catch (Exception unused2) {
                                }
                            }
                            zRenameTo = false;
                            if (!zRenameTo) {
                                try {
                                    file.delete();
                                } catch (Exception unused3) {
                                }
                            }
                            return zRenameTo;
                        }
                    } else {
                        bArr = bArr3;
                        fileOutputStream2.write(bArr);
                    }
                    bArr3 = bArr;
                }
                try {
                    fileOutputStream2.flush();
                    Locale locale = Locale.US;
                    Object[] objArr = new Object[4];
                    try {
                        objArr[0] = this.f2357d;
                        objArr[1] = this.f2354a;
                        objArr[2] = Long.valueOf((new Date().getTime() * 1000) + ((long) d()));
                        objArr[3] = this.f2355b;
                        try {
                            zRenameTo = file.renameTo(new File(String.format(locale, "%s/%s_%020d%s", objArr)));
                            try {
                                fileOutputStream2.close();
                            } catch (Exception unused4) {
                            }
                        } catch (Exception e11) {
                            e = e11;
                            fileOutputStream = fileOutputStream2;
                            XCrash.getLogger().a("NCRASH", "FileManager cleanTheDirtyFile failed", e);
                            if (fileOutputStream != null) {
                                fileOutputStream.close();
                            }
                            zRenameTo = false;
                        }
                    } catch (Exception e12) {
                        e = e12;
                    }
                } catch (Exception e13) {
                    e = e13;
                }
            } catch (Throwable th2) {
                th = th2;
            }
        } catch (Exception e14) {
            e = e14;
        }
        if (!zRenameTo) {
            file.delete();
        }
        return zRenameTo;
    }

    void b() {
        int i10;
        if (this.f2357d == null || (i10 = this.f2363j) < 0) {
            return;
        }
        try {
            if (i10 == 0) {
                new Thread(new Runnable() { // from class: cn.fly.tools.xcrash.b.1
                    @Override // java.lang.Runnable
                    public void run() {
                        b.this.c();
                    }
                }, "xcrash_file_mgr").start();
            } else {
                new Timer("xcrash_file_mgr").schedule(new TimerTask() { // from class: cn.fly.tools.xcrash.b.2
                    @Override // java.util.TimerTask, java.lang.Runnable
                    public void run() {
                        b.this.c();
                    }
                }, this.f2363j);
            }
        } catch (Exception e10) {
            XCrash.getLogger().a("NCRASH", "FileManager maintain start failed", e10);
        }
    }

    void a(String str, int i10, int i11, int i12, int i13, int i14) {
        File[] fileArrListFiles;
        this.f2357d = str;
        this.f2358e = i10;
        this.f2359f = i11;
        this.f2361h = i12;
        this.f2362i = i13;
        this.f2363j = i14;
        try {
            File file = new File(str);
            if (file.exists() && file.isDirectory() && (fileArrListFiles = file.listFiles()) != null) {
                int i15 = 0;
                int i16 = 0;
                int i17 = 0;
                int i18 = 0;
                int i19 = 0;
                for (File file2 : fileArrListFiles) {
                    if (file2.isFile()) {
                        String name = file2.getName();
                        if (!name.startsWith(StatNativeCrashReport.PRE_TAG_TOMBSTONE_FNAME)) {
                            if (name.startsWith(this.f2354a + "_")) {
                                if (name.endsWith(this.f2355b)) {
                                    i18++;
                                } else if (name.endsWith(this.f2356c)) {
                                    i19++;
                                }
                            }
                        } else if (name.endsWith(".java.xcrash")) {
                            i15++;
                        } else if (name.endsWith(".native.xcrash")) {
                            i16++;
                        } else if (!name.endsWith(".anr.xcrash") && name.endsWith(".trace.xcrash")) {
                            i17++;
                        }
                    }
                }
                int i20 = this.f2358e;
                if (i15 <= i20 && i16 <= this.f2359f && i17 <= this.f2360g && i18 == this.f2361h && i19 == 0) {
                    this.f2363j = -1;
                    return;
                }
                if (i15 <= i20 + 10) {
                    int i21 = this.f2359f;
                    if (i16 <= i21 + 10) {
                        int i22 = this.f2360g;
                        if (i17 <= i22 + 10) {
                            int i23 = this.f2361h;
                            if (i18 <= i23 + 10 && i19 <= 10) {
                                if (i15 > i20 || i16 > i21 || i17 > i22 || i18 > i23 || i19 > 0) {
                                    this.f2363j = 0;
                                    return;
                                }
                                return;
                            }
                        }
                    }
                }
                c();
                this.f2363j = -1;
            }
        } catch (Exception e10) {
            XCrash.getLogger().a("NCRASH", "FileManager init failed", e10);
        }
    }

    private void b(File file) {
        a(file, ".native.xcrash", this.f2359f);
        a(file, ".java.xcrash", this.f2358e);
        a(file, ".trace.xcrash", this.f2360g);
    }

    private void c(File file) {
        File[] fileArrListFiles;
        int i10;
        File[] fileArrListFiles2 = file.listFiles(new FilenameFilter() { // from class: cn.fly.tools.xcrash.b.6
            @Override // java.io.FilenameFilter
            public boolean accept(File file2, String str) {
                StringBuilder sb2 = new StringBuilder();
                sb2.append(b.this.f2354a);
                sb2.append("_");
                return str.startsWith(sb2.toString()) && str.endsWith(b.this.f2355b);
            }
        });
        if (fileArrListFiles2 == null || (fileArrListFiles = file.listFiles(new FilenameFilter() { // from class: cn.fly.tools.xcrash.b.7
            @Override // java.io.FilenameFilter
            public boolean accept(File file2, String str) {
                StringBuilder sb2 = new StringBuilder();
                sb2.append(b.this.f2354a);
                sb2.append("_");
                return str.startsWith(sb2.toString()) && str.endsWith(b.this.f2356c);
            }
        })) == null) {
            return;
        }
        int length = fileArrListFiles2.length;
        int length2 = fileArrListFiles.length;
        char c10 = 0;
        int i11 = 0;
        while (length < this.f2361h) {
            if (length2 > 0) {
                if (d(fileArrListFiles[length2 - 1])) {
                    length++;
                }
                length2--;
                i10 = i11;
            } else {
                try {
                    Locale locale = Locale.US;
                    Object[] objArr = new Object[4];
                    objArr[c10] = this.f2357d;
                    objArr[1] = this.f2354a;
                    i10 = i11;
                    try {
                        objArr[2] = Long.valueOf((new Date().getTime() * 1000) + ((long) d()));
                        objArr[3] = this.f2356c;
                        File file2 = new File(String.format(locale, "%s/%s_%020d%s", objArr));
                        if (file2.createNewFile() && d(file2)) {
                            length++;
                        }
                    } catch (Exception unused) {
                    }
                } catch (Exception unused2) {
                    i10 = i11;
                }
            }
            i11 = i10 + 1;
            if (i11 > this.f2361h * 2) {
                break;
            } else {
                c10 = 0;
            }
        }
        if (i11 > 0) {
            fileArrListFiles2 = file.listFiles(new FilenameFilter() { // from class: cn.fly.tools.xcrash.b.8
                @Override // java.io.FilenameFilter
                public boolean accept(File file3, String str) {
                    StringBuilder sb2 = new StringBuilder();
                    sb2.append(b.this.f2354a);
                    sb2.append("_");
                    return str.startsWith(sb2.toString()) && str.endsWith(b.this.f2355b);
                }
            });
            fileArrListFiles = file.listFiles(new FilenameFilter() { // from class: cn.fly.tools.xcrash.b.9
                @Override // java.io.FilenameFilter
                public boolean accept(File file3, String str) {
                    StringBuilder sb2 = new StringBuilder();
                    sb2.append(b.this.f2354a);
                    sb2.append("_");
                    return str.startsWith(sb2.toString()) && str.endsWith(b.this.f2356c);
                }
            });
        }
        if (fileArrListFiles2 != null && fileArrListFiles2.length > this.f2361h) {
            for (int i12 = 0; i12 < fileArrListFiles2.length - this.f2361h; i12++) {
                fileArrListFiles2[i12].delete();
            }
        }
        if (fileArrListFiles != null) {
            for (File file3 : fileArrListFiles) {
                file3.delete();
            }
        }
    }

    private int d() {
        int iIncrementAndGet = this.f2364k.incrementAndGet();
        if (iIncrementAndGet >= 999) {
            this.f2364k.set(0);
        }
        return iIncrementAndGet;
    }

    boolean a(String str, String str2) throws Throwable {
        RandomAccessFile randomAccessFile = null;
        try {
            try {
                RandomAccessFile randomAccessFile2 = new RandomAccessFile(str, "rws");
                try {
                    long j10 = 0;
                    if (randomAccessFile2.length() > 0) {
                        MappedByteBuffer map = randomAccessFile2.getChannel().map(FileChannel.MapMode.READ_ONLY, 0L, randomAccessFile2.length());
                        long length = randomAccessFile2.length();
                        while (length > 0 && map.get(((int) length) - 1) == 0) {
                            length--;
                        }
                        j10 = length;
                    }
                    randomAccessFile2.seek(j10);
                    randomAccessFile2.write(str2.getBytes("UTF-8"));
                    try {
                        randomAccessFile2.close();
                    } catch (Exception unused) {
                    }
                    return true;
                } catch (Exception e10) {
                    e = e10;
                    randomAccessFile = randomAccessFile2;
                    XCrash.getLogger().a("NCRASH", "FileManager appendText failed", e);
                    if (randomAccessFile == null) {
                        return false;
                    }
                    try {
                        randomAccessFile.close();
                        return false;
                    } catch (Exception unused2) {
                        return false;
                    }
                } catch (Throwable th) {
                    th = th;
                    randomAccessFile = randomAccessFile2;
                    if (randomAccessFile != null) {
                        try {
                            randomAccessFile.close();
                        } catch (Exception unused3) {
                        }
                    }
                    throw th;
                }
            } catch (Exception e11) {
                e = e11;
            }
        } catch (Throwable th2) {
            th = th2;
        }
    }

    boolean a(File file) {
        if (file == null) {
            return false;
        }
        if (this.f2357d != null && this.f2361h > 0) {
            try {
                File[] fileArrListFiles = new File(this.f2357d).listFiles(new FilenameFilter() { // from class: cn.fly.tools.xcrash.b.3
                    @Override // java.io.FilenameFilter
                    public boolean accept(File file2, String str) {
                        StringBuilder sb2 = new StringBuilder();
                        sb2.append(b.this.f2354a);
                        sb2.append("_");
                        return str.startsWith(sb2.toString()) && str.endsWith(b.this.f2355b);
                    }
                });
                if (fileArrListFiles != null && fileArrListFiles.length >= this.f2361h) {
                    try {
                        return file.delete();
                    } catch (Exception unused) {
                        return false;
                    }
                }
                File file2 = new File(String.format(Locale.US, "%s/%s_%020d%s", this.f2357d, this.f2354a, Long.valueOf((new Date().getTime() * 1000) + ((long) d())), this.f2356c));
                if (!file.renameTo(file2)) {
                    try {
                        return file.delete();
                    } catch (Exception unused2) {
                        return false;
                    }
                }
                return d(file2);
            } catch (Exception e10) {
                XCrash.getLogger().a("NCRASH", "FileManager recycleLogFile failed", e10);
                try {
                    return file.delete();
                } catch (Exception unused3) {
                    return false;
                }
            }
        }
        try {
            return file.delete();
        } catch (Exception unused4) {
            return false;
        }
    }

    private boolean a(File file, final String str, int i10) {
        File[] fileArrListFiles = file.listFiles(new FilenameFilter() { // from class: cn.fly.tools.xcrash.b.4
            @Override // java.io.FilenameFilter
            public boolean accept(File file2, String str2) {
                return str2.startsWith(StatNativeCrashReport.PRE_TAG_TOMBSTONE_FNAME) && str2.endsWith(str);
            }
        });
        boolean z10 = true;
        if (fileArrListFiles != null && fileArrListFiles.length > i10) {
            if (i10 > 0) {
                Arrays.sort(fileArrListFiles, new Comparator<File>() { // from class: cn.fly.tools.xcrash.b.5
                    @Override // java.util.Comparator
                    /* JADX INFO: renamed from: a, reason: merged with bridge method [inline-methods] */
                    public int compare(File file2, File file3) {
                        return file2.getName().compareTo(file3.getName());
                    }
                });
            }
            for (int i11 = 0; i11 < fileArrListFiles.length - i10; i11++) {
                if (!a(fileArrListFiles[i11])) {
                    z10 = false;
                }
            }
        }
        return z10;
    }
}
