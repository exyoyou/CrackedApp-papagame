package cn.fly.tools.xcrash;

import android.content.Context;
import android.os.Process;
import android.text.TextUtils;
import cn.fly.FlySDK;
import cn.fly.commons.a.m;
import cn.fly.tools.FlyLog;
import cn.fly.tools.utils.DH;
import cn.fly.tools.utils.ResHelper;

/* JADX INFO: loaded from: classes7.dex */
public final class XCrash {
    private static String appId;
    private static String appVersion;
    private static boolean initialized;
    private static String logDir;
    private static final cn.fly.tools.xcrash.a LOGGER = new cn.fly.tools.xcrash.a();
    public static String nativeLibDir = null;

    public static class a {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        String f2333a = null;

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        String f2334b = null;

        /* JADX INFO: renamed from: c, reason: collision with root package name */
        int f2335c = 5000;

        /* JADX INFO: renamed from: d, reason: collision with root package name */
        int f2336d = 0;

        /* JADX INFO: renamed from: e, reason: collision with root package name */
        int f2337e = 128;

        /* JADX INFO: renamed from: f, reason: collision with root package name */
        boolean f2338f = true;

        /* JADX INFO: renamed from: g, reason: collision with root package name */
        boolean f2339g = true;

        /* JADX INFO: renamed from: h, reason: collision with root package name */
        int f2340h = 10;

        /* JADX INFO: renamed from: i, reason: collision with root package name */
        int f2341i = 10;

        /* JADX INFO: renamed from: j, reason: collision with root package name */
        int f2342j = 10;

        /* JADX INFO: renamed from: k, reason: collision with root package name */
        int f2343k = 30;

        /* JADX INFO: renamed from: l, reason: collision with root package name */
        boolean f2344l = false;

        /* JADX INFO: renamed from: m, reason: collision with root package name */
        boolean f2345m = false;

        /* JADX INFO: renamed from: n, reason: collision with root package name */
        boolean f2346n = true;

        /* JADX INFO: renamed from: o, reason: collision with root package name */
        int f2347o = 0;

        /* JADX INFO: renamed from: p, reason: collision with root package name */
        String[] f2348p = null;

        /* JADX INFO: renamed from: q, reason: collision with root package name */
        ICrashCallback f2349q = null;

        /* JADX INFO: renamed from: r, reason: collision with root package name */
        boolean f2350r = true;

        /* JADX INFO: renamed from: s, reason: collision with root package name */
        boolean f2351s = true;

        /* JADX INFO: renamed from: t, reason: collision with root package name */
        int f2352t = 10;

        public a a(String str) {
            this.f2333a = str;
            return this;
        }

        public a b(String str) {
            this.f2334b = str;
            return this;
        }

        public a c(int i10) {
            if (i10 < 0) {
                i10 = 0;
            }
            this.f2337e = i10;
            return this;
        }

        public a d(int i10) {
            if (i10 < 1) {
                i10 = 1;
            }
            this.f2340h = i10;
            return this;
        }

        public a e(int i10) {
            this.f2341i = i10;
            return this;
        }

        public a f(int i10) {
            this.f2342j = i10;
            return this;
        }

        public a g(int i10) {
            this.f2343k = i10;
            return this;
        }

        public a h(int i10) {
            if (i10 < 0) {
                i10 = 0;
            }
            this.f2347o = i10;
            return this;
        }

        public a i(int i10) {
            if (i10 < 1) {
                i10 = 1;
            }
            this.f2352t = i10;
            return this;
        }

        public a a(int i10) {
            if (i10 < 0) {
                i10 = 0;
            }
            this.f2335c = i10;
            return this;
        }

        public a b(int i10) {
            if (i10 < 0) {
                i10 = 0;
            }
            this.f2336d = i10;
            return this;
        }

        public a a(boolean z10) {
            this.f2339g = z10;
            return this;
        }

        public a b(boolean z10) {
            this.f2351s = z10;
            return this;
        }
    }

    private XCrash() {
    }

    public static Class<?> fC(String str) throws Throwable {
        if (NativeHandler.nrInited()) {
            return NativeHandler.fC(str);
        }
        return null;
    }

    public static Object get0(Object obj, String str, boolean z10, String str2) throws Throwable {
        if (NativeHandler.nrInited()) {
            return NativeHandler.get0(obj, str, z10, str2);
        }
        return null;
    }

    static String getAppId() {
        return appId;
    }

    static String getAppVersion() {
        return appVersion;
    }

    public static String getLogDir() {
        return logDir;
    }

    static cn.fly.tools.xcrash.a getLogger() {
        return LOGGER;
    }

    public static String getP(String str, String[] strArr) throws Throwable {
        return NativeHandler.getP(str, strArr);
    }

    public static int init(Context context) {
        return init(context, null);
    }

    public static Object inv0(Object obj, String str, boolean z10, String str2, String[] strArr, Object... objArr) throws Throwable {
        if (NativeHandler.nrInited()) {
            return NativeHandler.inv0(obj, str, z10, str2, strArr, objArr);
        }
        return null;
    }

    public static boolean nrInited() {
        int oSVersionIntForFly = DH.SyncMtd.getOSVersionIntForFly();
        int i10 = cn.fly.tools.b.c.a(FlySDK.getContext()).d().ar().targetSdkVersion;
        FlyLog.getInstance().d("[HH] nrIni. a: " + oSVersionIntForFly + ", tgV: " + i10, new Object[0]);
        if (oSVersionIntForFly < 30 || i10 < 30) {
            return false;
        }
        return NativeHandler.nrInited();
    }

    public static void set0(Object obj, String str, boolean z10, String str2, Object obj2) throws Throwable {
        if (NativeHandler.nrInited()) {
            NativeHandler.set0(obj, str, z10, str2, obj2);
        }
    }

    public static synchronized int init(Context context, a aVar) {
        if (initialized) {
            return 0;
        }
        initialized = true;
        if (context == null) {
            return -1;
        }
        Context applicationContext = context.getApplicationContext();
        Context context2 = applicationContext != null ? applicationContext : context;
        if (aVar == null) {
            aVar = new a();
        }
        String packageName = context2.getPackageName();
        appId = packageName;
        if (TextUtils.isEmpty(packageName)) {
            appId = m.a("007Teh'f$fi:fHelgh0f");
        }
        if (TextUtils.isEmpty(aVar.f2333a)) {
            aVar.f2333a = FlySDK.SDK_VERSION_NAME;
        }
        appVersion = aVar.f2333a;
        nativeLibDir = context2.getApplicationInfo().nativeLibraryDir;
        if (TextUtils.isEmpty(aVar.f2334b)) {
            String str = context2.getFilesDir() + m.a("001m") + "fvv/fly_tombstones";
            ResHelper.checkAndCreateDir(str);
            aVar.f2334b = str;
        }
        logDir = aVar.f2334b;
        Process.myPid();
        DH.SyncMtd.getCurrentProcessName();
        b.a().a(aVar.f2334b, aVar.f2340h, aVar.f2352t, aVar.f2336d, aVar.f2337e, aVar.f2335c);
        int iInitialize = aVar.f2350r ? NativeHandler.getInstance().initialize(context2, appId, aVar.f2333a, aVar.f2334b, aVar.f2350r, aVar.f2351s) : 0;
        b.a().b();
        return iInitialize;
    }
}
