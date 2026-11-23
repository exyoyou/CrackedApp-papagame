package cn.fly.tools.xcrash;

import android.text.TextUtils;
import android.util.Base64;
import cn.fly.FlySDK;
import cn.fly.commons.ac;
import cn.fly.commons.o;
import cn.fly.commons.u;
import cn.fly.commons.v;
import cn.fly.commons.w;
import cn.fly.tools.utils.FileLocker;
import cn.fly.tools.utils.HashonHelper;
import cn.fly.tools.utils.h;
import cn.fly.tools.utils.i;
import com.tencent.stat.StatNativeCrashReport;
import java.io.File;
import java.io.FilenameFilter;
import java.io.RandomAccessFile;
import java.nio.MappedByteBuffer;
import java.nio.channels.FileChannel;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.Comparator;
import java.util.HashMap;
import java.util.Locale;

/* JADX INFO: loaded from: classes7.dex */
public class c {
    public static boolean a(String str, String str2, String str3) {
        if (TextUtils.isEmpty(str) || TextUtils.isEmpty(str2) || str3 == null) {
            return false;
        }
        return b.a().a(str, "\n\n" + str2 + ":\n" + str3 + "\n\n");
    }

    public static boolean b() {
        return b(new String[]{".java.xcrash", ".native.xcrash", ".anr.xcrash"});
    }

    public static void c(String str) {
        try {
            File[] fileArrA = a(str);
            if (fileArrA == null || fileArrA.length <= 0) {
                return;
            }
            h.a(FlySDK.getContext()).a("ncat", System.currentTimeMillis());
            h.a(FlySDK.getContext()).a();
        } catch (Throwable th) {
            XCrash.getLogger().a("NCRASH", "[ncrash] setNCatFlag error " + th);
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static String e(String str) {
        String strF = f(str);
        if (!TextUtils.isEmpty(strF) && strF.startsWith("$$FXCEM$$")) {
            try {
                return new String(Base64.decode(strF.substring(9), 2), "utf-8");
            } catch (Throwable th) {
                XCrash.getLogger().a("NCRASH", "[ncrash] decode deferred emergency error " + th);
            }
        }
        return null;
    }

    private static String f(String str) {
        RandomAccessFile randomAccessFile;
        try {
            randomAccessFile = new RandomAccessFile(str, "r");
            try {
                long length = randomAccessFile.length();
                if (length <= 0) {
                    try {
                        randomAccessFile.close();
                    } catch (Throwable unused) {
                    }
                    return null;
                }
                while (length > 0) {
                    long j10 = length - 1;
                    randomAccessFile.seek(j10);
                    if (randomAccessFile.readByte() != 0) {
                        break;
                    }
                    length = j10;
                }
                if (length <= 0) {
                    try {
                        randomAccessFile.close();
                    } catch (Throwable unused2) {
                    }
                    return null;
                }
                long j11 = 19;
                if (length < j11) {
                    try {
                        randomAccessFile.close();
                    } catch (Throwable unused3) {
                    }
                    return null;
                }
                long j12 = length - j11;
                randomAccessFile.seek(j12);
                byte[] bArr = new byte[19];
                randomAccessFile.readFully(bArr);
                String str2 = new String(bArr, "utf-8");
                if (!str2.startsWith("$$FXCEM$$")) {
                    try {
                        randomAccessFile.close();
                    } catch (Throwable unused4) {
                    }
                    return null;
                }
                int i10 = Integer.parseInt(str2.substring(9));
                if (i10 > 0 && length >= 19 + i10) {
                    randomAccessFile.seek(j12 - ((long) i10));
                    byte[] bArr2 = new byte[i10];
                    randomAccessFile.readFully(bArr2);
                    String str3 = new String(bArr2, "utf-8");
                    try {
                        randomAccessFile.close();
                    } catch (Throwable unused5) {
                    }
                    return str3;
                }
                try {
                    randomAccessFile.close();
                } catch (Throwable unused6) {
                }
                return null;
            } catch (Throwable th) {
                th = th;
                try {
                    XCrash.getLogger().a("NCRASH", "[ncrash] read deferred emergency payload error " + th);
                    return null;
                } finally {
                    if (randomAccessFile != null) {
                        try {
                            randomAccessFile.close();
                        } catch (Throwable unused7) {
                        }
                    }
                }
            }
        } catch (Throwable th2) {
            th = th2;
            randomAccessFile = null;
        }
    }

    private static boolean b(final String[] strArr) {
        File[] fileArrListFiles;
        String logDir = XCrash.getLogDir();
        if (logDir == null) {
            return false;
        }
        File file = new File(logDir);
        if (!file.exists() || !file.isDirectory() || (fileArrListFiles = file.listFiles(new FilenameFilter() { // from class: cn.fly.tools.xcrash.c.3
            @Override // java.io.FilenameFilter
            public boolean accept(File file2, String str) {
                if (!str.startsWith(StatNativeCrashReport.PRE_TAG_TOMBSTONE_FNAME)) {
                    return false;
                }
                for (String str2 : strArr) {
                    if (str.endsWith(str2)) {
                        return true;
                    }
                }
                return false;
            }
        })) == null) {
            return false;
        }
        boolean z10 = true;
        for (File file2 : fileArrListFiles) {
            if (!b.a().a(file2)) {
                z10 = false;
            }
        }
        return z10;
    }

    public static File[] a() {
        return a(new String[]{".java.xcrash", ".native.xcrash", ".anr.xcrash"});
    }

    public static File[] a(String str) {
        return a(new String[]{".java.xcrash", ".native.xcrash", ".anr.xcrash"}, str);
    }

    private static File[] a(String[] strArr) {
        return a(strArr, (String) null);
    }

    private static File[] a(final String[] strArr, String str) {
        if (TextUtils.isEmpty(str)) {
            str = XCrash.getLogDir();
        }
        if (str == null) {
            return new File[0];
        }
        File file = new File(str);
        if (!file.exists() || !file.isDirectory()) {
            return new File[0];
        }
        File[] fileArrListFiles = file.listFiles(new FilenameFilter() { // from class: cn.fly.tools.xcrash.c.1
            @Override // java.io.FilenameFilter
            public boolean accept(File file2, String str2) {
                if (!str2.startsWith(StatNativeCrashReport.PRE_TAG_TOMBSTONE_FNAME)) {
                    return false;
                }
                for (String str3 : strArr) {
                    if (str2.endsWith(str3)) {
                        return true;
                    }
                }
                return false;
            }
        });
        if (fileArrListFiles == null) {
            return new File[0];
        }
        Arrays.sort(fileArrListFiles, new Comparator<File>() { // from class: cn.fly.tools.xcrash.c.2
            @Override // java.util.Comparator
            /* JADX INFO: renamed from: a, reason: merged with bridge method [inline-methods] */
            public int compare(File file2, File file3) {
                return file2.getName().compareTo(file3.getName());
            }
        });
        return fileArrListFiles;
    }

    public static void c() {
        try {
            ac.f1043b.execute(new i() { // from class: cn.fly.tools.xcrash.c.4
                @Override // cn.fly.tools.utils.i
                public void a() {
                    try {
                        v.a(v.a(v.f1436j), new u() { // from class: cn.fly.tools.xcrash.c.4.1
                            @Override // cn.fly.commons.u
                            public boolean a(FileLocker fileLocker) {
                                File[] fileArrA = c.a();
                                if (fileArrA != null && fileArrA.length != 0) {
                                    boolean z10 = ((Integer) cn.fly.commons.c.c(o.a("004cf(djdj"), 1)).intValue() == 1;
                                    XCrash.getLogger().a("NCRASH", "[ncrash] Ck cerr: " + z10);
                                    ArrayList arrayList = new ArrayList();
                                    if (z10) {
                                        for (File file : fileArrA) {
                                            try {
                                                String absolutePath = file.getAbsolutePath();
                                                HashMap map = new HashMap(d.a(absolutePath, c.e(absolutePath)));
                                                if (map.containsKey("skerrs")) {
                                                    map.put("skerrs", Integer.valueOf("1".equals(String.valueOf(map.get("skerrs")).trim()) ? 1 : 0));
                                                } else {
                                                    map.put("skerrs", 0);
                                                }
                                                arrayList.add(HashonHelper.fromHashMap(map));
                                            } catch (Throwable th) {
                                                XCrash.getLogger().a("NCRASH", "[ncrash] replay deferred tombstone error " + th);
                                            }
                                        }
                                    }
                                    c.b();
                                    if (!arrayList.isEmpty()) {
                                        w.a().a(4, o.a("006Bedghhchcgheg"), FlySDK.SDK_VERSION_CODE, arrayList);
                                    }
                                }
                                return false;
                            }
                        });
                    } catch (Throwable unused) {
                    }
                }
            });
        } catch (Throwable unused) {
        }
    }

    public static void b(String str) {
        try {
            Class.forName(d.class.getName());
            Class.forName(Base64.class.getName());
            Class.forName(b.class.getName());
            Class.forName(RandomAccessFile.class.getName());
            Class.forName(FileChannel.class.getName());
            Class.forName(MappedByteBuffer.class.getName());
            Class.forName(FileChannel.MapMode.class.getName());
            c(str);
        } catch (Throwable th) {
            XCrash.getLogger().a("NCRASH", "[ncrash] warmup parser error " + th);
        }
    }

    public static boolean a(String str, String str2) {
        if (!TextUtils.isEmpty(str) && !TextUtils.isEmpty(str2)) {
            try {
                String str3 = "$$FXCEM$$" + Base64.encodeToString(str2.getBytes("utf-8"), 2);
                String str4 = String.format(Locale.US, "%010d", Integer.valueOf(str3.length()));
                return b.a().a(str, "\n\n" + str3 + "$$FXCEM$$" + str4);
            } catch (Throwable th) {
                XCrash.getLogger().a("NCRASH", "[ncrash] append deferred emergency error " + th);
            }
        }
        return false;
    }
}
