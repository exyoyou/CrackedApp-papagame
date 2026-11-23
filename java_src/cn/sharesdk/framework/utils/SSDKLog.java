package cn.sharesdk.framework.utils;

import cn.sharesdk.framework.ShareSDK;
import com.mob.tools.log.NLog;

/* JADX INFO: loaded from: classes7.dex */
public class SSDKLog {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private static SSDKLog f2695a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private static NLog f2696b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    private final int f2697c = -1;

    private SSDKLog() {
        a();
    }

    private boolean a(NLog nLog) {
        return nLog != null;
    }

    public static SSDKLog b() {
        if (f2695a == null) {
            f2695a = new SSDKLog();
        }
        return f2695a;
    }

    public final int c(Throwable th) {
        try {
            if (a(f2696b)) {
                return f2696b.log(4, th);
            }
            return -1;
        } catch (Throwable unused) {
            return -1;
        }
    }

    public final int d(Throwable th) {
        try {
            if (a(f2696b)) {
                return f2696b.log(6, th);
            }
            return -1;
        } catch (Throwable unused) {
            return -1;
        }
    }

    public static NLog a() {
        try {
            try {
                NLog nLog = NLog.getInstance(ShareSDK.SDK_TAG, ShareSDK.SDK_VERSION_CODE, "cn.sharesdk");
                f2696b = nLog;
                return nLog;
            } catch (Throwable unused) {
                return null;
            }
        } catch (Throwable unused2) {
            NLog nLog2 = NLog.getInstance(ShareSDK.SDK_TAG);
            f2696b = nLog2;
            return nLog2;
        }
    }

    public final int c(Object obj, Object... objArr) {
        try {
            if (a(f2696b)) {
                return f2696b.log(4, obj, objArr);
            }
            return -1;
        } catch (Throwable unused) {
            return -1;
        }
    }

    public final int d(Object obj, Object... objArr) {
        try {
            if (a(f2696b)) {
                return f2696b.log(6, obj, objArr);
            }
            return -1;
        } catch (Throwable unused) {
            return -1;
        }
    }

    public final int a(Throwable th) {
        try {
            if (a(f2696b)) {
                return f2696b.log(3, th);
            }
            return -1;
        } catch (Throwable unused) {
            return -1;
        }
    }

    public final int b(Throwable th) {
        try {
            if (a(f2696b)) {
                return f2696b.log(5, th);
            }
            return -1;
        } catch (Throwable unused) {
            return -1;
        }
    }

    public final int a(Object obj, Object... objArr) {
        try {
            if (a(f2696b)) {
                return f2696b.log(3, obj, objArr);
            }
            return -1;
        } catch (Throwable unused) {
            return -1;
        }
    }

    public final int b(Object obj, Object... objArr) {
        try {
            if (a(f2696b)) {
                return f2696b.log(5, obj, objArr);
            }
            return -1;
        } catch (Throwable unused) {
            return -1;
        }
    }

    public final int a(Throwable th, Object obj, Object... objArr) {
        try {
            if (a(f2696b)) {
                return f2696b.log(3, th, obj, objArr);
            }
            return -1;
        } catch (Throwable unused) {
            return -1;
        }
    }

    public final int b(Throwable th, Object obj, Object... objArr) {
        try {
            if (a(f2696b)) {
                return f2696b.log(5, th, obj, objArr);
            }
            return -1;
        } catch (Throwable unused) {
            return -1;
        }
    }

    public final int a(String str) {
        try {
            if (a(f2696b)) {
                return f2696b.log(5, str, new Object[0]);
            }
            return -1;
        } catch (Throwable unused) {
            return -1;
        }
    }

    public final int b(String str) {
        try {
            if (a(f2696b)) {
                return f2696b.log(4, str, new Object[0]);
            }
            return -1;
        } catch (Throwable unused) {
            return -1;
        }
    }
}
