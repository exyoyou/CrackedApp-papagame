package com.umeng.commonsdk.statistics.internal;

import android.content.Context;
import android.text.TextUtils;
import com.j256.ormlite.stmt.query.SimpleComparison;
import com.umeng.analytics.pro.bm;
import com.umeng.commonsdk.internal.crash.UMCrashManager;
import com.umeng.commonsdk.statistics.common.HelperUtils;
import com.umeng.commonsdk.utils.UMUtils;
import net.lingala.zip4j.util.e;

/* JADX INFO: loaded from: classes9.dex */
public class a {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private static Context f85421a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private String f85422b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    private String f85423c;

    /* JADX INFO: renamed from: com.umeng.commonsdk.statistics.internal.a$a, reason: collision with other inner class name */
    private static class C1060a {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        private static final a f85424a = new a();

        private C1060a() {
        }
    }

    public static a a(Context context) {
        if (f85421a == null && context != null) {
            f85421a = context.getApplicationContext();
        }
        return C1060a.f85424a;
    }

    private void f(String str) {
        try {
            this.f85422b = str.replaceAll("&=", " ").replaceAll("&&", " ").replaceAll("==", e.F0) + e.F0 + "Android " + HelperUtils.getUmengMD5(UMUtils.getAppkey(f85421a));
        } catch (Throwable th) {
            UMCrashManager.reportCrash(f85421a, th);
        }
    }

    private void g(String str) {
        try {
            String str2 = str.split("&&")[0];
            if (TextUtils.isEmpty(str2)) {
                return;
            }
            String[] strArrSplit = str2.split("&=");
            StringBuilder sb2 = new StringBuilder();
            sb2.append(bm.aU);
            for (String str3 : strArrSplit) {
                if (!TextUtils.isEmpty(str3)) {
                    String strSubstring = str3.substring(0, 2);
                    if (strSubstring.endsWith(SimpleComparison.EQUAL_TO_OPERATION)) {
                        strSubstring = strSubstring.replace(SimpleComparison.EQUAL_TO_OPERATION, "");
                    }
                    sb2.append(strSubstring);
                }
            }
            this.f85423c = sb2.toString();
        } catch (Throwable th) {
            UMCrashManager.reportCrash(f85421a, th);
        }
    }

    public boolean b(String str) {
        if (TextUtils.isEmpty(str)) {
            return false;
        }
        return str.startsWith(bm.aM);
    }

    public boolean c(String str) {
        if (TextUtils.isEmpty(str)) {
            return false;
        }
        return str.startsWith(bm.aH);
    }

    public boolean d(String str) {
        if (TextUtils.isEmpty(str)) {
            return false;
        }
        return str.startsWith("h");
    }

    public void e(String str) {
        String strSubstring = str.substring(0, str.indexOf(95));
        g(strSubstring);
        f(strSubstring);
    }

    private a() {
        this.f85422b = null;
        this.f85423c = null;
    }

    public String b() {
        return this.f85422b;
    }

    public boolean a(String str) {
        if (TextUtils.isEmpty(str)) {
            return false;
        }
        return str.startsWith("a");
    }

    public String a() {
        return this.f85423c;
    }
}
