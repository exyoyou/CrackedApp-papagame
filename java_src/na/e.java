package na;

import android.content.pm.ApplicationInfo;
import android.os.Build;
import android.os.Handler;
import android.os.Looper;
import android.os.Process;
import com.xinzhu.haunted.android.os.r;

/* JADX INFO: loaded from: classes8.dex */
public class e {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private static final Handler f94516a = new Handler(Looper.getMainLooper());

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private static String f94517b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    private static String f94518c;

    public static <T> T a(Throwable th) throws RuntimeException {
        th.printStackTrace();
        throw new RuntimeException("transact remote server failed", th);
    }

    public static void b() {
        Process.killProcess(Process.myPid());
    }

    public static String c() {
        return f94517b;
    }

    public static String d() {
        return f94518c;
    }

    public static Handler e() {
        return f94516a;
    }

    public static boolean f() {
        return Build.VERSION.SDK_INT >= 23 ? Process.is64Bit() : da.a.e().f().booleanValue();
    }

    public static boolean g() {
        return System.getProperty("java.vm.version").startsWith("2");
    }

    public static void h(String str, ApplicationInfo applicationInfo) {
        if (f94518c != null) {
            return;
        }
        f94517b = applicationInfo.packageName;
        f94518c = str;
        r.b(str);
        v8.a.b(str, 0);
    }
}
