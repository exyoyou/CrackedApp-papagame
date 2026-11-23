package cn.fly.tools.xcrash;

import android.content.Context;
import android.text.TextUtils;
import cn.fly.commons.o;
import cn.fly.tools.FlyLog;
import cn.fly.tools.b.m;
import cn.fly.tools.utils.DH;
import java.util.Map;
import java.util.concurrent.atomic.AtomicBoolean;

/* JADX INFO: loaded from: classes7.dex */
class NativeHandler {
    private boolean crashRethrow;
    private Context ctx;
    private static final NativeHandler INSTANCE = new NativeHandler();
    private static AtomicBoolean libLoaded = new AtomicBoolean(false);
    private static AtomicBoolean nrInited = new AtomicBoolean(false);
    private static volatile boolean flagNrInit = false;
    private static volatile boolean initNativeLibOk = false;

    private NativeHandler() {
    }

    private static Object a() {
        return m.b();
    }

    private static void crashCallback(String str, String str2, boolean z10, boolean z11, String str3) {
        String str4;
        updateStackcheck(false);
        if (TextUtils.isEmpty(str)) {
            return;
        }
        XCrash.getLogger().a("NCRASH", "isMainThread " + z11 + " tn " + str3);
        if (z11 || !TextUtils.isEmpty(str3)) {
            String stacktraceByThreadName = getStacktraceByThreadName(z11, str3);
            if (z10 && !TextUtils.isEmpty(stacktraceByThreadName)) {
                c.a(str, "java stacktrace", stacktraceByThreadName);
            }
            str4 = stacktraceByThreadName;
        } else {
            str4 = null;
        }
        if (!TextUtils.isEmpty(str2)) {
            c.a(str, str2);
        }
        boolean zStackCheckInternal = stackCheckInternal(str4, str2);
        if (zStackCheckInternal) {
            c.a(str, "skerrs", "1");
        }
        updateStackcheck(zStackCheckInternal);
    }

    static native Class<?> fC(String str) throws Throwable;

    static native Object get0(Object obj, String str, boolean z10, String str2) throws Throwable;

    static NativeHandler getInstance() {
        return INSTANCE;
    }

    static native String getP(String str, String[] strArr) throws Throwable;

    private static String getStacktraceByThreadName(boolean z10, String str) {
        try {
            for (Map.Entry<Thread, StackTraceElement[]> entry : Thread.getAllStackTraces().entrySet()) {
                Thread key = entry.getKey();
                if ((z10 && key.getName().equals("main")) || (!z10 && key.getName().contains(str))) {
                    StringBuilder sb2 = new StringBuilder();
                    StackTraceElement[] value = entry.getValue();
                    for (StackTraceElement stackTraceElement : value) {
                        sb2.append("    at ");
                        sb2.append(stackTraceElement.toString());
                        sb2.append("\n");
                    }
                    return sb2.toString();
                }
            }
            return null;
        } catch (Exception e10) {
            XCrash.getLogger().a("NCRASH", "NH gsb failed", e10);
            return null;
        }
    }

    static native Object inv0(Object obj, String str, boolean z10, String str2, String[] strArr, Object... objArr) throws Throwable;

    static boolean isInitNativeLibOk() {
        if (libLoaded.compareAndSet(false, true)) {
            try {
                if (isObfuscated()) {
                    throw new RuntimeException("[HH] minifyed");
                }
                System.loadLibrary("fntvcrash");
                initNativeLibOk = true;
            } catch (Throwable th) {
                XCrash.getLogger().b("NCRASH", "[HH] NH init failed -2 t " + th);
            }
        }
        return initNativeLibOk;
    }

    private static boolean isObfuscated() {
        return !TextUtils.equals(o.a("033ceYdlef]g ecdlGi'dkdk'gFfidleiJcCdjXd_fi?h=dleg_di_didd^f-fk:de(dc8gf_dj"), NativeHandler.class.getName());
    }

    private static native int nativeInit(int i10, String str, String str2, String str3, String str4, String str5, String str6, String str7, String str8, String str9, String str10, boolean z10, boolean z11);

    private static native void nativeNotifyJavaCrashed();

    static native boolean nrInit() throws Throwable;

    static boolean nrInited() {
        if (isInitNativeLibOk() && nrInited.compareAndSet(false, true)) {
            try {
                flagNrInit = nrInit();
            } catch (Throwable unused) {
                XCrash.getLogger().b("NCRASH", "[HH] NH nrInit failed -2");
                flagNrInit = false;
            }
        }
        return flagNrInit;
    }

    static native void set0(Object obj, String str, boolean z10, String str2, Object obj2) throws Throwable;

    private static boolean stackCheckInternal(String... strArr) {
        if (strArr != null) {
            try {
                if (strArr.length != 0) {
                    String str = (String) cn.fly.commons.c.c("skerrs", "");
                    if (TextUtils.isEmpty(str)) {
                        return false;
                    }
                    for (String str2 : str.split(",")) {
                        if (!TextUtils.isEmpty(str2)) {
                            String strTrim = str2.trim();
                            if (!TextUtils.isEmpty(strTrim)) {
                                for (String str3 : strArr) {
                                    if (!TextUtils.isEmpty(str3) && str3.contains(strTrim)) {
                                        return true;
                                    }
                                }
                            }
                        }
                    }
                }
            } catch (Throwable th) {
                XCrash.getLogger().a("NCRASH", "[ncrash] utc error " + th);
            }
        }
        return false;
    }

    private static native void stackcheck(boolean z10);

    private static void traceCallback(String str, String str2) {
        TextUtils.isEmpty(str);
    }

    private static void traceCallbackBeforeDump() {
        FlyLog.getInstance().d("W anr not initialized", new Object[0]);
    }

    private static void updateStackcheck(boolean z10) {
        try {
            stackcheck(z10);
        } catch (Throwable th) {
            XCrash.getLogger().a("NCRASH", "[ncrash] nutc native error " + th);
        }
    }

    int initialize(Context context, String str, String str2, String str3, boolean z10, boolean z11) {
        if (!isInitNativeLibOk()) {
            return -2;
        }
        this.ctx = context;
        this.crashRethrow = z11;
        try {
            if (nativeInit(DH.SyncMtd.getOSVersionIntForFly(), DH.SyncMtd.getOSVersionName(), cn.fly.tools.b.c.a(context).d().D(), DH.SyncMtd.getManufacturerForFly(), DH.SyncMtd.getBrandForFly(), cn.fly.tools.b.c.a(context).d().n(), cn.fly.tools.b.c.a(context).d().l(), str, str2, context.getApplicationInfo().nativeLibraryDir, str3, z10, z11) == 0) {
                return 0;
            }
            XCrash.getLogger().b("NCRASH", "NH init failed");
            return -3;
        } catch (Throwable th) {
            XCrash.getLogger().a("NCRASH", "NH init failed", th);
            return -3;
        }
    }

    void notifyJavaCrashed() {
        if (initNativeLibOk) {
            nativeNotifyJavaCrashed();
        }
    }

    private static void a(Object obj, String str) {
        m.a(obj, str);
    }

    private static String a(Object obj) {
        return m.a(obj);
    }
}
