package com.tencent.bugly.crashreport.crash.jni;

import android.annotation.SuppressLint;
import android.content.Context;
import android.text.TextUtils;
import com.tencent.bugly.crashreport.common.strategy.StrategyBean;
import com.tencent.bugly.crashreport.crash.CrashDetailBean;
import com.tencent.bugly.proguard.aa;
import com.tencent.bugly.proguard.ab;
import com.tencent.bugly.proguard.ac;
import com.tencent.bugly.proguard.ak;
import com.tencent.bugly.proguard.al;
import com.tencent.bugly.proguard.ap;
import com.tencent.bugly.proguard.as;
import com.tencent.bugly.proguard.at;
import com.tencent.bugly.proguard.bd;
import com.tencent.bugly.proguard.be;
import com.tencent.bugly.proguard.q;
import java.io.File;
import java.util.Arrays;
import java.util.Comparator;

/* JADX INFO: loaded from: classes2.dex */
public class NativeCrashHandler implements q {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    static String f83160a = null;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private static NativeCrashHandler f83161b = null;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    private static int f83162c = 1;

    /* JADX INFO: renamed from: n, reason: collision with root package name */
    private static boolean f83163n = true;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    private final Context f83164d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    private final aa f83165e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    private final ak f83166f;

    /* JADX INFO: renamed from: g, reason: collision with root package name */
    private NativeExceptionHandler f83167g;

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    private final boolean f83168h;

    /* JADX INFO: renamed from: i, reason: collision with root package name */
    private boolean f83169i = false;

    /* JADX INFO: renamed from: j, reason: collision with root package name */
    private boolean f83170j = false;

    /* JADX INFO: renamed from: k, reason: collision with root package name */
    private boolean f83171k = false;

    /* JADX INFO: renamed from: l, reason: collision with root package name */
    private boolean f83172l = false;

    /* JADX INFO: renamed from: m, reason: collision with root package name */
    private as f83173m;

    @SuppressLint({"SdCardPath"})
    private NativeCrashHandler(Context context, aa aaVar, as asVar, ak akVar, boolean z10, String str) {
        this.f83164d = ap.a(context);
        if (ap.b(f83160a)) {
            try {
                if (ap.b(str)) {
                    str = context.getDir("bugly", 0).getAbsolutePath();
                }
            } catch (Throwable unused) {
                str = "/data/data/" + aa.a(context).f83184d + "/app_bugly";
            }
            f83160a = str;
        }
        this.f83173m = asVar;
        this.f83165e = aaVar;
        this.f83166f = akVar;
        this.f83168h = z10;
        this.f83167g = new bd(context, aaVar, asVar, ac.a());
    }

    public static synchronized String getDumpFilePath() {
        return f83160a;
    }

    public static synchronized NativeCrashHandler getInstance(Context context, aa aaVar, as asVar, ac acVar, ak akVar, boolean z10, String str) {
        if (f83161b == null) {
            f83161b = new NativeCrashHandler(context, aaVar, asVar, akVar, z10, str);
        }
        return f83161b;
    }

    private native String getProperties(String str);

    private native String getSoCpuAbi();

    public static boolean isShouldHandleInJava() {
        return f83163n;
    }

    public static synchronized void setDumpFilePath(String str) {
        f83160a = str;
    }

    public static void setShouldHandleInJava(boolean z10) {
        f83163n = z10;
        NativeCrashHandler nativeCrashHandler = f83161b;
        if (nativeCrashHandler != null) {
            nativeCrashHandler.a(999, String.valueOf(z10));
        }
    }

    @Override // com.tencent.bugly.proguard.q
    public boolean appendLogToNative(String str, String str2, String str3) {
        if ((this.f83169i || this.f83170j) && str != null && str2 != null && str3 != null) {
            try {
                if (this.f83170j) {
                    return appendNativeLog(str, str2, str3);
                }
                Boolean bool = (Boolean) ap.a("com.tencent.feedback.eup.jni.NativeExceptionUpload", "appendNativeLog", new Class[]{String.class, String.class, String.class}, new Object[]{str, str2, str3});
                if (bool != null) {
                    return bool.booleanValue();
                }
                return false;
            } catch (UnsatisfiedLinkError unused) {
            } catch (Throwable th) {
                if (!al.a(th)) {
                    th.printStackTrace();
                }
            }
        }
        return false;
    }

    protected native boolean appendNativeLog(String str, String str2, String str3);

    protected native boolean appendWholeNativeLog(String str);

    public void checkUploadRecordCrash() {
        this.f83166f.a(new Runnable() { // from class: com.tencent.bugly.crashreport.crash.jni.NativeCrashHandler.1
            @Override // java.lang.Runnable
            public final void run() {
                int i10;
                if (!ap.a(NativeCrashHandler.this.f83164d, "native_record_lock")) {
                    al.a("[Native] Failed to lock file for handling native crash record.", new Object[0]);
                    return;
                }
                if (!NativeCrashHandler.f83163n) {
                    NativeCrashHandler.a(NativeCrashHandler.this, "false");
                }
                CrashDetailBean crashDetailBeanA = be.a(NativeCrashHandler.this.f83164d, NativeCrashHandler.f83160a, NativeCrashHandler.this.f83167g);
                if (crashDetailBeanA != null) {
                    al.a("[Native] Get crash from native record.", new Object[0]);
                    if (!NativeCrashHandler.this.f83173m.a(crashDetailBeanA, true)) {
                        NativeCrashHandler.this.f83173m.b(crashDetailBeanA, false);
                    }
                    be.a(false, NativeCrashHandler.f83160a);
                }
                final NativeCrashHandler nativeCrashHandler = NativeCrashHandler.this;
                long jB = ap.b() - at.f83350j;
                long jB2 = ap.b() + 86400000;
                File file = new File(NativeCrashHandler.f83160a);
                if (file.exists() && file.isDirectory()) {
                    try {
                        File[] fileArrListFiles = file.listFiles();
                        if (fileArrListFiles != null && fileArrListFiles.length != 0) {
                            Arrays.sort(fileArrListFiles, new Comparator<File>() { // from class: com.tencent.bugly.crashreport.crash.jni.NativeCrashHandler.2
                                @Override // java.util.Comparator
                                public final /* synthetic */ int compare(File file2, File file3) {
                                    return Long.compare(file3.lastModified(), file2.lastModified());
                                }
                            });
                            int length = fileArrListFiles.length;
                            long length2 = 0;
                            int i11 = 0;
                            int i12 = 0;
                            int i13 = 0;
                            while (i11 < length) {
                                File file2 = fileArrListFiles[i11];
                                long jLastModified = file2.lastModified();
                                length2 += file2.length();
                                if (jLastModified < jB || jLastModified >= jB2 || length2 >= at.f83349i) {
                                    i10 = length;
                                    al.a("[Native] Delete record file: %s", file2.getAbsolutePath());
                                    i12++;
                                    if (file2.delete()) {
                                        i13++;
                                    }
                                } else {
                                    i10 = length;
                                }
                                i11++;
                                length = i10;
                            }
                            al.c("[Native] Number of record files overdue: %d, has deleted: %d", Integer.valueOf(i12), Integer.valueOf(i13));
                        }
                    } catch (Throwable th) {
                        al.a(th);
                    }
                }
                ap.b(NativeCrashHandler.this.f83164d, "native_record_lock");
            }
        });
    }

    public void disableCatchAnrTrace() {
        f83162c = 1;
    }

    public void dumpAnrNativeStack() {
        a(19, "1");
    }

    public void enableCatchAnrTrace() {
        f83162c |= 2;
    }

    public boolean filterSigabrtSysLog() {
        return a(998, "true");
    }

    @Override // com.tencent.bugly.proguard.q
    public String getLogFromNative() {
        if (!this.f83169i && !this.f83170j) {
            return null;
        }
        try {
            return this.f83170j ? getNativeLog() : (String) ap.a("com.tencent.feedback.eup.jni.NativeExceptionUpload", "getNativeLog", null, null);
        } catch (UnsatisfiedLinkError unused) {
            return null;
        } catch (Throwable th) {
            if (!al.a(th)) {
                th.printStackTrace();
            }
            return null;
        }
    }

    public NativeExceptionHandler getNativeExceptionHandler() {
        return this.f83167g;
    }

    protected native String getNativeKeyValueList();

    protected native String getNativeLog();

    public String getRunningCpuAbi() {
        try {
            return getSoCpuAbi();
        } catch (Throwable unused) {
            al.d("get so cpu abi failed，please upgrade bugly so version", new Object[0]);
            return "";
        }
    }

    public String getSystemProperty(String str) {
        return (this.f83170j || this.f83169i) ? getProperties(str) : "fail";
    }

    public boolean isEnableCatchAnrTrace() {
        return (f83162c & 2) == 2;
    }

    public synchronized boolean isUserOpened() {
        return this.f83172l;
    }

    /* JADX WARN: Code duplicated, block: B:13:0x002a  */
    /* JADX WARN: Code duplicated, block: B:16:0x002f A[Catch: all -> 0x0041, TRY_LEAVE, TryCatch #0 {, blocks: (B:5:0x0005, B:7:0x000b, B:8:0x0018, B:10:0x0024, B:14:0x002b, B:16:0x002f), top: B:22:0x0005 }] */
    public synchronized void onStrategyChanged(StrategyBean strategyBean) {
        boolean z10;
        if (strategyBean != null) {
            boolean z11 = strategyBean.f83101f;
            if (z11 != this.f83171k) {
                al.d("server native changed to %b", Boolean.valueOf(z11));
            }
            if (ac.a().c().f83101f || !this.f83172l) {
                z10 = false;
            } else {
                z10 = true;
            }
            if (z10 != this.f83171k) {
                al.a("native changed to %b", Boolean.valueOf(z10));
                b(z10);
            }
        } else {
            if (ac.a().c().f83101f) {
                z10 = false;
            } else {
                z10 = false;
            }
            if (z10 != this.f83171k) {
                al.a("native changed to %b", Boolean.valueOf(z10));
                b(z10);
            }
        }
        throw th;
    }

    public boolean putKeyValueToNative(String str, String str2) {
        if ((this.f83169i || this.f83170j) && str != null && str2 != null) {
            try {
                if (this.f83170j) {
                    return putNativeKeyValue(str, str2);
                }
                Boolean bool = (Boolean) ap.a("com.tencent.feedback.eup.jni.NativeExceptionUpload", "putNativeKeyValue", new Class[]{String.class, String.class}, new Object[]{str, str2});
                if (bool != null) {
                    return bool.booleanValue();
                }
                return false;
            } catch (UnsatisfiedLinkError unused) {
            } catch (Throwable th) {
                if (!al.a(th)) {
                    th.printStackTrace();
                }
            }
        }
        return false;
    }

    protected native boolean putNativeKeyValue(String str, String str2);

    protected native String regist(String str, boolean z10, int i10);

    public void removeEmptyNativeRecordFiles() {
        be.c(f83160a);
    }

    protected native String removeNativeKeyValue(String str);

    public void resendSigquit() {
        a(20, "");
    }

    public boolean setNativeAppChannel(String str) {
        return a(12, str);
    }

    public boolean setNativeAppPackage(String str) {
        return a(13, str);
    }

    public boolean setNativeAppVersion(String str) {
        return a(10, str);
    }

    protected native void setNativeInfo(int i10, String str);

    @Override // com.tencent.bugly.proguard.q
    public boolean setNativeIsAppForeground(boolean z10) {
        return a(14, z10 ? "true" : "false");
    }

    public boolean setNativeLaunchTime(long j10) {
        try {
            return a(15, String.valueOf(j10));
        } catch (NumberFormatException e10) {
            if (al.a(e10)) {
                return false;
            }
            e10.printStackTrace();
            return false;
        }
    }

    public boolean setNativeUserId(String str) {
        return a(11, str);
    }

    public synchronized void setUserOpened(boolean z10) {
        c(z10);
        boolean zIsUserOpened = isUserOpened();
        ac acVarA = ac.a();
        if (acVarA != null) {
            zIsUserOpened = zIsUserOpened && acVarA.c().f83101f;
        }
        if (zIsUserOpened != this.f83171k) {
            al.a("native changed to %b", Boolean.valueOf(zIsUserOpened));
            b(zIsUserOpened);
        }
    }

    public synchronized void startNativeMonitor() {
        if (!this.f83170j && !this.f83169i) {
            boolean z10 = !ap.b(this.f83165e.f83200u);
            if (at.f83343b) {
                boolean zA = a(z10 ? this.f83165e.f83200u : "Bugly_Native", z10);
                this.f83170j = zA;
                if (!zA && !z10) {
                    this.f83169i = a("NativeRQD", false);
                }
            } else {
                String str = "Bugly_Native";
                aa aaVar = this.f83165e;
                String str2 = aaVar.f83200u;
                if (z10) {
                    str = str2;
                } else {
                    aaVar.getClass();
                }
                this.f83170j = a(str, z10);
            }
            if (this.f83170j || this.f83169i) {
                a(this.f83168h);
                setNativeAppVersion(this.f83165e.f83195p);
                setNativeAppChannel(this.f83165e.f83199t);
                setNativeAppPackage(this.f83165e.f83184d);
                setNativeUserId(this.f83165e.g());
                setNativeIsAppForeground(this.f83165e.a());
                setNativeLaunchTime(this.f83165e.f83182b);
                return;
            }
            return;
        }
        a(this.f83168h);
    }

    protected native void testCrash();

    public void testNativeCrash() {
        if (this.f83170j) {
            testCrash();
        } else {
            al.d("[Native] Bugly SO file has not been load.", new Object[0]);
        }
    }

    public void unBlockSigquit(boolean z10) {
        if (z10) {
            a(21, "true");
        } else {
            a(21, "false");
        }
    }

    protected native String unregist();

    private synchronized void c() {
        if (!this.f83171k) {
            al.d("[Native] Native crash report has already unregistered.", new Object[0]);
            return;
        }
        try {
            if (unregist() != null) {
                al.a("[Native] Successfully closed native crash report.", new Object[0]);
                this.f83171k = false;
                return;
            }
            try {
                ap.a("com.tencent.feedback.eup.jni.NativeExceptionUpload", "enableHandler", new Class[]{Boolean.TYPE}, new Object[]{Boolean.FALSE});
                this.f83171k = false;
                al.a("[Native] Successfully closed native crash report.", new Object[0]);
                return;
            } catch (Throwable unused) {
                al.c("[Native] Failed to close native crash report.", new Object[0]);
                this.f83170j = false;
                this.f83169i = false;
                return;
            }
        } catch (Throwable unused2) {
            al.c("[Native] Failed to close native crash report.", new Object[0]);
        }
        throw th;
    }

    static /* synthetic */ boolean a(NativeCrashHandler nativeCrashHandler, String str) {
        return nativeCrashHandler.a(999, str);
    }

    private synchronized void b(boolean z10) {
        try {
            if (z10) {
                startNativeMonitor();
            } else {
                c();
            }
        } catch (Throwable th) {
            throw th;
        }
    }

    private synchronized void a(boolean z10) {
        if (this.f83171k) {
            al.d("[Native] Native crash report has already registered.", new Object[0]);
            return;
        }
        if (this.f83170j) {
            try {
                String strRegist = regist(f83160a, z10, f83162c);
                if (strRegist != null) {
                    al.a("[Native] Native Crash Report enable.", new Object[0]);
                    this.f83165e.f83201v = strRegist;
                    String strConcat = "-".concat(strRegist);
                    if (!at.f83343b && !this.f83165e.f83189i.contains(strConcat)) {
                        aa aaVar = this.f83165e;
                        aaVar.f83189i = aaVar.f83189i.concat("-").concat(this.f83165e.f83201v);
                    }
                    al.a("comInfo.sdkVersion %s", this.f83165e.f83189i);
                    this.f83171k = true;
                    String runningCpuAbi = getRunningCpuAbi();
                    if (!TextUtils.isEmpty(runningCpuAbi)) {
                        this.f83165e.e(runningCpuAbi);
                    }
                    return;
                }
            } catch (Throwable unused) {
                al.c("[Native] Failed to load Bugly SO file.", new Object[0]);
            }
        } else if (this.f83169i) {
            try {
                Class cls = Integer.TYPE;
                Class[] clsArr = {String.class, String.class, cls, cls};
                Object[] objArr = new Object[4];
                objArr[0] = f83160a;
                objArr[1] = ab.d();
                objArr[2] = Integer.valueOf(z10 ? 1 : 5);
                objArr[3] = 1;
                String str = (String) ap.a("com.tencent.feedback.eup.jni.NativeExceptionUpload", "registNativeExceptionHandler2", clsArr, objArr);
                if (str == null) {
                    aa.b();
                    str = (String) ap.a("com.tencent.feedback.eup.jni.NativeExceptionUpload", "registNativeExceptionHandler", new Class[]{String.class, String.class, cls}, new Object[]{f83160a, ab.d(), Integer.valueOf(aa.E())});
                }
                if (str != null) {
                    this.f83171k = true;
                    this.f83165e.f83201v = str;
                    ap.a("com.tencent.feedback.eup.jni.NativeExceptionUpload", "enableHandler", new Class[]{Boolean.TYPE}, new Object[]{Boolean.TRUE});
                    ap.a("com.tencent.feedback.eup.jni.NativeExceptionUpload", "setLogMode", new Class[]{cls}, new Object[]{Integer.valueOf(z10 ? 1 : 5)});
                    String runningCpuAbi2 = getRunningCpuAbi();
                    if (!TextUtils.isEmpty(runningCpuAbi2)) {
                        this.f83165e.e(runningCpuAbi2);
                    }
                    return;
                }
            } catch (Throwable unused2) {
            }
        }
        this.f83170j = false;
        this.f83169i = false;
    }

    public static synchronized NativeCrashHandler getInstance() {
        return f83161b;
    }

    public void testNativeCrash(boolean z10, boolean z11, boolean z12) {
        a(16, String.valueOf(z10));
        a(17, String.valueOf(z11));
        a(18, String.valueOf(z12));
        testNativeCrash();
    }

    private synchronized void c(boolean z10) {
        if (this.f83172l != z10) {
            al.a("user change native %b", Boolean.valueOf(z10));
            this.f83172l = z10;
        }
    }

    private static boolean a(String str, boolean z10) {
        boolean z11;
        try {
            al.a("[Native] Trying to load so: %s", str);
            if (z10) {
                System.load(str);
            } else {
                System.loadLibrary(str);
            }
            try {
                al.a("[Native] Successfully loaded SO: %s", str);
                return true;
            } catch (Throwable th) {
                th = th;
                z11 = true;
                al.d(th.getMessage(), new Object[0]);
                al.d("[Native] Failed to load so: %s", str);
                return z11;
            }
        } catch (Throwable th2) {
            th = th2;
            z11 = false;
        }
    }

    private boolean a(int i10, String str) {
        if (!this.f83170j) {
            return false;
        }
        try {
            setNativeInfo(i10, str);
            return true;
        } catch (UnsatisfiedLinkError unused) {
            return false;
        } catch (Throwable th) {
            if (!al.a(th)) {
                th.printStackTrace();
            }
            return false;
        }
    }
}
