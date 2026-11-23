package com.sigmob.sdk.base.utils;

import android.util.Log;
import com.join.mgps.Util.o0;

/* JADX INFO: loaded from: classes5.dex */
public class q {
    public static String a() {
        return Log.getStackTraceString(new Throwable());
    }

    public static String a(Throwable th) {
        return Log.getStackTraceString(th);
    }

    public static String a(String... excludePackages) {
        boolean z10;
        StackTraceElement[] stackTrace = Thread.currentThread().getStackTrace();
        StringBuilder sb2 = new StringBuilder();
        for (StackTraceElement stackTraceElement : stackTrace) {
            int length = excludePackages.length;
            int i10 = 0;
            while (true) {
                if (i10 >= length) {
                    z10 = false;
                    break;
                }
                if (stackTraceElement.getClassName().startsWith(excludePackages[i10])) {
                    z10 = true;
                    break;
                }
                i10++;
            }
            if (!z10) {
                sb2.append(stackTraceElement.toString());
                sb2.append("\n");
            }
        }
        return sb2.toString();
    }

    public static void a(String tag, String packageFilter) {
        StackTraceElement[] stackTrace = new Throwable().getStackTrace();
        StringBuilder sb2 = new StringBuilder("Current Stack Trace:\n");
        for (StackTraceElement stackTraceElement : stackTrace) {
            String className = stackTraceElement.getClassName();
            if (packageFilter == null || className.contains(packageFilter)) {
                sb2.append("  at ");
                sb2.append(className);
                sb2.append(o0.f49827a);
                sb2.append(stackTraceElement.getMethodName());
                sb2.append("(");
                sb2.append(stackTraceElement.getFileName());
                sb2.append(":");
                sb2.append(stackTraceElement.getLineNumber());
                sb2.append(")\n");
            }
        }
    }
}
