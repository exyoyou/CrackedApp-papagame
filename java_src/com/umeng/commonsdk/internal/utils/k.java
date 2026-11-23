package com.umeng.commonsdk.internal.utils;

import android.annotation.SuppressLint;
import android.content.Context;
import android.content.SharedPreferences;
import android.os.Build;
import android.text.TextUtils;
import com.umeng.analytics.pro.aw;
import com.umeng.commonsdk.internal.crash.UMCrashManager;
import com.umeng.commonsdk.statistics.common.ULog;
import java.io.BufferedReader;
import java.io.FileReader;
import java.io.IOException;
import java.io.InputStreamReader;
import org.json.JSONObject;

/* JADX INFO: loaded from: classes9.dex */
@SuppressLint({"NewApi"})
public class k {

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public static final String f85281b = "_dsk_s";

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public static final String f85282c = "_thm_z";

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    public static final String f85283d = "_gdf_r";

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public static final String f85280a = aw.b().b(aw.f84338s);

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    private static Object f85284e = new Object();

    public static void b(final Context context) {
        if (c(context)) {
            return;
        }
        final String[] strArr = {"unknown", "unknown", "unknown"};
        new Thread() { // from class: com.umeng.commonsdk.internal.utils.k.1
            @Override // java.lang.Thread, java.lang.Runnable
            public void run() {
                super.run();
                try {
                    strArr[0] = k.c();
                    strArr[1] = k.a();
                    strArr[2] = k.b();
                    ULog.i("diskType = " + strArr[0] + "; ThremalZone = " + strArr[1] + "; GoldFishRc = " + strArr[2]);
                    k.b(context, strArr);
                } catch (Throwable th) {
                    UMCrashManager.reportCrash(context, th);
                }
            }
        }.start();
    }

    public static boolean c(Context context) {
        SharedPreferences sharedPreferences;
        return (context == null || (sharedPreferences = context.getApplicationContext().getSharedPreferences(f85280a, 0)) == null || TextUtils.isEmpty(sharedPreferences.getString(f85281b, ""))) ? false : true;
    }

    public static String a(Context context) {
        try {
            SharedPreferences sharedPreferences = context.getApplicationContext().getSharedPreferences(f85280a, 0);
            if (sharedPreferences == null) {
                return null;
            }
            JSONObject jSONObject = new JSONObject();
            synchronized (f85284e) {
                jSONObject.put(f85281b, sharedPreferences.getString(f85281b, ""));
                jSONObject.put(f85282c, sharedPreferences.getString(f85282c, ""));
                jSONObject.put(f85283d, sharedPreferences.getString(f85283d, ""));
            }
            return jSONObject.toString();
        } catch (Exception e10) {
            UMCrashManager.reportCrash(context, e10);
            return null;
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static void b(Context context, String[] strArr) {
        SharedPreferences sharedPreferences;
        if (context == null || (sharedPreferences = context.getApplicationContext().getSharedPreferences(f85280a, 0)) == null) {
            return;
        }
        synchronized (f85284e) {
            sharedPreferences.edit().putString(f85281b, strArr[0]).putString(f85282c, strArr[1]).putString(f85283d, strArr[2]).commit();
        }
    }

    public static String c() {
        BufferedReader bufferedReader;
        String line;
        String str = "mtd";
        BufferedReader bufferedReader2 = null;
        try {
            bufferedReader = new BufferedReader(new FileReader("/proc/diskstats"));
            do {
                try {
                    line = bufferedReader.readLine();
                    if (line == null) {
                        str = "unknown";
                        break;
                    }
                    if (line.contains("mmcblk")) {
                        str = "mmcblk";
                        break;
                    }
                    if (line.contains("sda")) {
                        str = "sda";
                        break;
                    }
                } catch (Throwable unused) {
                    bufferedReader2 = bufferedReader;
                    str = "noper";
                    bufferedReader = bufferedReader2;
                }
            } while (!line.contains("mtd"));
        } catch (Throwable unused2) {
        }
        if (bufferedReader != null) {
            try {
                bufferedReader.close();
            } catch (Throwable unused3) {
            }
        }
        return str;
    }

    public static String b() {
        int iA;
        try {
            iA = a("ls /", "goldfish");
        } catch (Throwable unused) {
            iA = -1;
        }
        if (iA > 0) {
            return "goldfish";
        }
        return iA < 0 ? "noper" : "unknown";
    }

    public static int a(String str, String str2) throws IOException {
        int i10;
        if (Build.VERSION.SDK_INT > 28) {
            return -1;
        }
        Process processExec = Runtime.getRuntime().exec(str);
        BufferedReader bufferedReader = new BufferedReader(new InputStreamReader(processExec.getInputStream()));
        while (true) {
            String line = bufferedReader.readLine();
            if (line == null) {
                i10 = -1;
                break;
            }
            if (line.contains(str2)) {
                i10 = 1;
                break;
            }
        }
        try {
            if (processExec.waitFor() != 0) {
                return -1;
            }
            return i10;
        } catch (InterruptedException unused) {
            return -1;
        }
    }

    public static String a() {
        int iA;
        try {
            iA = a("ls /sys/class/thermal", "thermal_zone");
        } catch (Throwable unused) {
            iA = -1;
        }
        if (iA > 0) {
            return "thermal_zone";
        }
        return iA < 0 ? "noper" : "unknown";
    }
}
