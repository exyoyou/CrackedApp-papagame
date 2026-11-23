package com.baidu.mobads.sdk.internal;

import android.os.Build;
import android.util.Log;
import androidx.annotation.NonNull;
import java.util.ArrayList;
import java.util.regex.Matcher;
import java.util.regex.Pattern;

/* JADX INFO: loaded from: classes6.dex */
public class ax extends az.a {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public static final String f7484a = "local";

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private static final int f7485b = 4000;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    private static final int f7486c = 23;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    private static final int f7487d = 5;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    private static final Pattern f7488e = Pattern.compile("(\\$\\d+)+$");

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    private static final char f7489f = 9556;

    /* JADX INFO: renamed from: g, reason: collision with root package name */
    private static final char f7490g = 9562;

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    private static final char f7491h = 9567;

    /* JADX INFO: renamed from: i, reason: collision with root package name */
    private static final char f7492i = 9553;

    /* JADX INFO: renamed from: j, reason: collision with root package name */
    private static final String f7493j = "════════════════════════════════════════════";

    /* JADX INFO: renamed from: k, reason: collision with root package name */
    private static final String f7494k = "------------------------------------------";

    /* JADX INFO: renamed from: l, reason: collision with root package name */
    private static final String f7495l = "╔════════════════════════════════════════════════════════════════════════════════════════";

    /* JADX INFO: renamed from: m, reason: collision with root package name */
    private static final String f7496m = "╚════════════════════════════════════════════════════════════════════════════════════════";

    /* JADX INFO: renamed from: n, reason: collision with root package name */
    private static final String f7497n = "╟------------------------------------------------------------------------------------";

    @Override // com.baidu.mobads.sdk.internal.az.a
    @NonNull
    String a() {
        return f7484a;
    }

    @Override // com.baidu.mobads.sdk.internal.az.a
    final String b() {
        String strB = super.b();
        if (strB != null) {
            return strB;
        }
        StackTraceElement[] stackTrace = new Throwable().getStackTrace();
        return stackTrace.length <= 5 ? "" : a(stackTrace[5]);
    }

    protected String c() {
        StackTraceElement[] stackTrace = Thread.currentThread().getStackTrace();
        boolean z10 = false;
        int i10 = 0;
        for (StackTraceElement stackTraceElement : stackTrace) {
            String className = stackTraceElement.getClassName();
            Matcher matcher = f7488e.matcher(className);
            if (matcher.find()) {
                className = matcher.replaceAll("");
            }
            if (!className.equals(az.class.getName()) && !className.equals(bv.class.getName())) {
                if (z10) {
                    break;
                }
            } else {
                z10 = true;
            }
            i10++;
        }
        return "   (" + stackTrace[i10].getFileName() + ":" + stackTrace[i10].getLineNumber() + ")# " + stackTrace[i10].getMethodName();
    }

    protected String a(StackTraceElement stackTraceElement) {
        String className = stackTraceElement.getClassName();
        Matcher matcher = f7488e.matcher(className);
        if (matcher.find()) {
            className = matcher.replaceAll("");
        }
        String strSubstring = className.substring(className.lastIndexOf(46) + 1);
        return (strSubstring.length() <= 23 || Build.VERSION.SDK_INT >= 24) ? strSubstring : strSubstring.substring(0, 23);
    }

    @Override // com.baidu.mobads.sdk.internal.az.a
    protected void a(int i10, String str, String str2, Throwable th) {
        int iMin;
        try {
            StringBuilder sb2 = new StringBuilder();
            sb2.append("当前线程：");
            sb2.append(Thread.currentThread().getName());
            sb2.append(";  ");
            sb2.append("调用位置：");
            sb2.append(c());
            sb2.append(";  ");
            sb2.append("打印消息：");
            if (str2.length() > 4000) {
                ArrayList arrayList = new ArrayList();
                int length = str2.length();
                int i11 = 0;
                while (i11 < length) {
                    int iIndexOf = str2.indexOf(10, i11);
                    if (iIndexOf == -1) {
                        iIndexOf = length;
                    }
                    while (true) {
                        iMin = Math.min(iIndexOf, i11 + 4000);
                        arrayList.add(str2.substring(i11, iMin));
                        if (iMin >= iIndexOf) {
                            break;
                        } else {
                            i11 = iMin;
                        }
                    }
                    i11 = iMin + 1;
                }
                for (String str3 : (String[]) arrayList.toArray(new String[arrayList.size()])) {
                    a(i10, str, sb2.toString() + str3);
                }
                return;
            }
            sb2.append(str2);
            a(i10, str, sb2.toString());
        } catch (Throwable th2) {
            a(6, str, th2.toString());
        }
    }

    private static void a(int i10, String str, String str2) {
        if (i10 == 7) {
            Log.wtf(str, str2);
        } else {
            Log.println(i10, str, str2);
        }
    }
}
