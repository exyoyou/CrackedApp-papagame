package cn.fly.tools.log;

import android.os.Process;
import android.text.TextUtils;
import android.util.Log;
import cn.fly.commons.c;
import cn.fly.commons.m;
import cn.fly.commons.w;
import cn.fly.tools.FlyLog;
import cn.fly.tools.proguard.ClassKeeper;
import cn.fly.tools.proguard.PublicMemberKeeper;
import java.util.HashMap;

/* JADX INFO: loaded from: classes7.dex */
public class NLog implements ClassKeeper, PublicMemberKeeper {
    public static final int LEVEL_CRASH = 1;
    public static final int LEVEL_NATIVE_CRASH = 4;
    public static final int LEVEL_NORMAL = 0;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private static final HashMap<String, NLog> f2028b = new HashMap<>();

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    protected boolean f2029a;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    private String f2030c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    private int f2031d;

    private NLog() {
        this.f2029a = false;
        this.f2030c = null;
        this.f2031d = -1;
    }

    private int a(int i10, int i11, String str) {
        try {
            String str2 = Process.myPid() + "-" + Process.myTid() + "(" + Thread.currentThread().getName() + ") " + str;
            boolean z10 = true;
            if (i11 == 1 || i11 == 4) {
                if (((Integer) c.c(m.a("004ehBflfl"), 1)).intValue() != 1) {
                    z10 = false;
                }
                FlyLog.getInstance().d("[LGSM] Ck cerr: " + z10, new Object[0]);
                if (z10) {
                    w.a().a(i11, this.f2030c, this.f2031d, str2);
                }
            }
            w.a().a(i10, str2);
        } catch (Throwable unused) {
        }
        return 0;
    }

    private static String b(Throwable th) {
        String message = th.getMessage();
        if (TextUtils.isEmpty(message)) {
            return "";
        }
        if (message.length() <= 1000) {
            return message;
        }
        return message.substring(0, 1000) + "\n[Message over limit size:1000, cut!]";
    }

    public static NLog getInstance(String str, int i10, String str2) {
        NLog nLog;
        HashMap<String, NLog> map = f2028b;
        synchronized (map) {
            nLog = map.get(str);
            if (nLog == null) {
                nLog = new NLog(str, i10);
                map.put(str, nLog);
            }
        }
        return nLog;
    }

    public static String getStackTraceString(Throwable th) {
        try {
            return Log.getStackTraceString(th);
        } catch (Throwable th2) {
            return th2 instanceof OutOfMemoryError ? m.a("023Sgl6hkFgn2kfe6gjheflAfehUgn1kAflfk'g<glkhfmfmfh") : th2.getMessage();
        }
    }

    public final void crash(Throwable th) {
        a(6, 1, a(th));
    }

    public final int d(Throwable th) {
        return log(3, th);
    }

    public final void dg() {
        this.f2029a = true;
    }

    public final int e(Throwable th) {
        return log(6, th);
    }

    public final void error(Throwable th) {
        error(getStackTraceString(th));
    }

    public final int i(Throwable th) {
        return log(4, th);
    }

    public final int log(int i10, Throwable th) {
        return a(i10, 0, getStackTraceString(th));
    }

    public final int v(Throwable th) {
        return log(2, th);
    }

    public final int w(Throwable th) {
        return log(5, th);
    }

    public final void crash(int i10, String str) {
        a(6, i10, str);
    }

    public final int d(Object obj, Object... objArr) {
        return log(3, obj, objArr);
    }

    public final int e(Throwable th, Object obj, Object... objArr) {
        return log(6, th, obj, objArr);
    }

    public final void error(String str) {
        e(str);
    }

    public final int i(Throwable th, Object obj, Object... objArr) {
        return log(4, th, obj, objArr);
    }

    public final int log(int i10, Object obj, Object... objArr) {
        String string = obj.toString();
        if (objArr.length > 0) {
            string = String.format(string, objArr);
        }
        return a(i10, 0, string);
    }

    public final int v(Object obj, Object... objArr) {
        return log(2, obj, objArr);
    }

    public final int w(Object obj, Object... objArr) {
        return log(5, obj, objArr);
    }

    public final int d(Throwable th, Object obj, Object... objArr) {
        return log(3, th, obj, objArr);
    }

    public final int e(Object obj, Object... objArr) {
        return log(6, obj, objArr);
    }

    public final int i(Object obj, Object... objArr) {
        return log(4, obj, objArr);
    }

    public final int v(Throwable th, Object obj, Object... objArr) {
        return log(2, th, obj, objArr);
    }

    public final int w(Throwable th, Object obj, Object... objArr) {
        return log(5, th, obj, objArr);
    }

    public final int e(String str) {
        return log(6, str, new Object[0]);
    }

    public final int i(String str) {
        return log(4, str, new Object[0]);
    }

    public final int w(String str) {
        return log(5, str, new Object[0]);
    }

    private NLog(String str, int i10) {
        this.f2029a = false;
        this.f2030c = str;
        this.f2031d = i10;
    }

    public final int log(int i10, Throwable th, Object obj, Object... objArr) {
        String string = obj.toString();
        StringBuilder sb2 = new StringBuilder();
        if (objArr.length > 0) {
            string = String.format(string, objArr);
        }
        sb2.append(string);
        sb2.append('\n');
        sb2.append(getStackTraceString(th));
        return a(i10, 0, sb2.toString());
    }

    private String a(Throwable th) {
        try {
            String name = th.getClass().getName();
            String strB = b(th);
            String string = th.getStackTrace().length > 0 ? th.getStackTrace()[0].toString() : "";
            Throwable cause = th;
            while (cause != null && cause.getCause() != null) {
                cause = cause.getCause();
            }
            if (cause != null && cause != th) {
                return name + ":" + strB + "\n" + string + "\n......\nCaused by:\n" + getStackTraceString(cause);
            }
            return getStackTraceString(th);
        } catch (Throwable unused) {
            return getStackTraceString(th);
        }
    }
}
