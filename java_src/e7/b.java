package e7;

import android.content.Context;
import android.content.pm.PackageInfo;
import android.content.pm.PackageManager;

/* JADX INFO: loaded from: classes3.dex */
public class b {
    public static PackageInfo a(PackageManager pm, String path, int flags) {
        try {
            return pm.getPackageArchiveInfo(path, flags);
        } catch (Throwable unused) {
            return null;
        }
    }

    public static int b(Context cxt, String path) {
        try {
            PackageInfo packageInfoA = a(cxt.getPackageManager(), path, 0);
            if (packageInfoA == null) {
                return -1;
            }
            return packageInfoA.versionCode;
        } catch (Exception unused) {
            return -1;
        }
    }

    public static int c(PackageManager pm, String path) {
        try {
            PackageInfo packageInfoA = a(pm, path, 0);
            if (packageInfoA == null) {
                return -1;
            }
            return packageInfoA.versionCode;
        } catch (Exception unused) {
            return -1;
        }
    }

    public static String d(Context cxt, String path) {
        try {
            PackageInfo packageInfoA = a(cxt.getPackageManager(), path, 0);
            return packageInfoA == null ? "0" : packageInfoA.versionName;
        } catch (Exception unused) {
            return "0";
        }
    }

    public static String e(PackageManager pm, String path) {
        try {
            PackageInfo packageInfoA = a(pm, path, 0);
            return packageInfoA == null ? "0" : packageInfoA.versionName;
        } catch (Exception unused) {
            return "0";
        }
    }
}
