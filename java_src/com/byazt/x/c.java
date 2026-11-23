package com.byazt.x;

import android.text.TextUtils;
import com.byazt.nr.m;

/* JADX INFO: loaded from: classes9.dex */
@com.byazt.zqa.c(c = {0, 1, 71, 20})
public class c {

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public static int f21772c = 4;
    public static AbstractC0480c tt;

    /* JADX INFO: renamed from: com.byazt.x.c$c, reason: collision with other inner class name */
    @com.byazt.zqa.c(c = {0, 1, 71, 44})
    public static abstract class AbstractC0480c {
    }

    public static void c(int i10) {
        f21772c = i10;
    }

    public static void n(String str, String str2) {
        if (str2 == null) {
            return;
        }
        if (f21772c <= 6) {
            m.uj(tt(str), str2);
        }
        if (tt != null) {
            tt(str);
        }
    }

    public static String tt(String str) {
        if (TextUtils.isEmpty(str)) {
            return "DownloaderLogger";
        }
        return "Downloader-" + str;
    }

    public static void uj(String str, String str2) {
        if (str2 == null) {
            return;
        }
        if (f21772c <= 5) {
            m.tt(tt(str), str2);
        }
        if (tt != null) {
            tt(str);
        }
    }

    public static void ve(String str, String str2) {
        if (str2 == null) {
            return;
        }
        if (f21772c <= 4) {
            m.c(tt(str), str2);
        }
        if (tt != null) {
            tt(str);
        }
    }

    public static boolean c() {
        return f21772c <= 3;
    }

    public static void c(String str, String str2) {
        if (str2 == null || tt == null) {
            return;
        }
        tt(str);
    }

    public static void tt(String str, String str2) {
        if (str2 == null) {
            return;
        }
        if (f21772c <= 3) {
            tt(str);
        }
        if (tt != null) {
            tt(str);
        }
    }

    public static void c(String str) {
        tt("DownloaderLogger", str);
    }

    public static void ve(String str) {
        uj("DownloaderLogger", str);
    }

    public static void c(String str, String str2, Throwable th) {
        if (str2 == null && th == null) {
            return;
        }
        if (f21772c <= 3) {
            tt(str);
        }
        if (tt != null) {
            tt(str);
        }
    }

    public static void tt(String str, String str2, Throwable th) {
        if (str2 == null && th == null) {
            return;
        }
        if (f21772c <= 6) {
            m.ve(tt(str), str2, th);
        }
        if (tt != null) {
            tt(str);
        }
    }
}
