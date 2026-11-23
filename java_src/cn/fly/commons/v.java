package cn.fly.commons;

import android.os.Process;
import android.text.TextUtils;
import cn.fly.FlySDK;
import cn.fly.tools.FlyLog;
import cn.fly.tools.utils.FileLocker;
import cn.fly.tools.utils.ResHelper;
import java.io.File;
import java.util.Map;
import java.util.concurrent.ConcurrentHashMap;

/* JADX INFO: loaded from: classes7.dex */
public class v {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public static final String f1427a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public static final String f1428b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public static final String f1429c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    public static final String f1430d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public static final String f1431e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    public static final String f1432f;

    /* JADX INFO: renamed from: g, reason: collision with root package name */
    public static final String f1433g;

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    public static final String f1434h;

    /* JADX INFO: renamed from: i, reason: collision with root package name */
    public static final String f1435i;

    /* JADX INFO: renamed from: j, reason: collision with root package name */
    public static final String f1436j;

    /* JADX INFO: renamed from: k, reason: collision with root package name */
    public static final Object f1437k;

    /* JADX INFO: renamed from: l, reason: collision with root package name */
    public static final Object f1438l;

    /* JADX INFO: renamed from: m, reason: collision with root package name */
    public static final Object f1439m;

    /* JADX INFO: renamed from: n, reason: collision with root package name */
    public static final String f1440n;

    /* JADX INFO: renamed from: o, reason: collision with root package name */
    private static final Map<String, FileLocker> f1441o = new ConcurrentHashMap();

    /* JADX INFO: renamed from: p, reason: collision with root package name */
    private static final String f1442p;

    static {
        String strB = x.b("011b;cjcece9kfHcj>b:dgehFk");
        f1442p = strB;
        f1427a = strB + ".mrlock";
        f1428b = strB + x.b("007%ckcbYgf%cj%b;dg");
        f1429c = strB + x.b("011]ckdi!f[cjeeJcfKedcjTbPdg");
        f1430d = strB + x.b("008FckcbdbcgNfGcj+b.dg");
        f1431e = strB + x.b("008[ckcbehcg^fAcj^b1dg");
        f1432f = strB + ".cl_lock";
        f1433g = strB + ".gcf_lock";
        f1434h = strB + ".mp_lock";
        f1435i = strB + ".dmf_lock";
        f1436j = strB + ".xc_lock";
        f1437k = new Object();
        f1438l = new Object();
        f1439m = new Object();
        f1440n = strB + ".pv_lock";
    }

    public static synchronized File a(String str) {
        return ResHelper.getDataCacheFile(FlySDK.getContext(), str, true);
    }

    private static String b(String str) {
        if (!TextUtils.isEmpty(str)) {
            String str2 = f1429c;
            if (str.endsWith(str2)) {
                return str2;
            }
            String str3 = f1428b;
            if (str.endsWith(str3)) {
                return str3;
            }
            String str4 = f1430d;
            if (str.endsWith(str4)) {
                return str4;
            }
            String str5 = f1431e;
            if (str.endsWith(str5)) {
                return str5;
            }
            String str6 = f1432f;
            if (str.endsWith(str6)) {
                return str6;
            }
            String str7 = f1433g;
            if (str.endsWith(str7)) {
                return str7;
            }
            String str8 = f1435i;
            if (str.endsWith(str8)) {
                return str8;
            }
            String str9 = f1436j;
            if (str.endsWith(str9)) {
                return str9;
            }
        }
        return str;
    }

    public static boolean a(File file, u uVar) {
        return a(file, true, uVar);
    }

    public static boolean a(File file, boolean z10, u uVar) {
        if (file != null && uVar != null) {
            try {
                if (!file.getParentFile().exists()) {
                    file.getParentFile().mkdirs();
                }
                if (!file.exists()) {
                    file.createNewFile();
                }
                String absolutePath = file.getAbsolutePath();
                synchronized (b(absolutePath)) {
                    FileLocker fileLocker = new FileLocker();
                    fileLocker.setLockFile(absolutePath);
                    if (!fileLocker.lock(z10)) {
                        return false;
                    }
                    try {
                        try {
                            if (!uVar.a(fileLocker)) {
                                fileLocker.release();
                            } else {
                                FlyLog.getInstance().d("lked & hold: " + Process.myPid(), new Object[0]);
                                f1441o.put(absolutePath, fileLocker);
                            }
                        } catch (Throwable unused) {
                            fileLocker.release();
                        }
                    } catch (Throwable unused2) {
                    }
                    return true;
                }
            } catch (Throwable th) {
                FlyLog.getInstance().w(th);
            }
        }
        return false;
    }
}
