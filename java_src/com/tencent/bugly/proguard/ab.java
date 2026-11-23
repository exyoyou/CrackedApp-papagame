package com.tencent.bugly.proguard;

import android.app.ActivityManager;
import android.content.Context;
import android.net.ConnectivityManager;
import android.net.NetworkInfo;
import android.os.Build;
import android.os.Debug;
import android.os.Environment;
import android.os.Process;
import android.os.StatFs;
import android.telephony.TelephonyManager;
import android.text.TextUtils;
import com.byazt.hv.TTDownloadField;
import java.io.BufferedReader;
import java.io.File;
import java.io.FileReader;
import java.io.IOException;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.Iterator;
import java.util.Map;

/* JADX INFO: loaded from: classes2.dex */
public final class ab {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private static final ArrayList<a> f83206a = new ArrayList<a>() { // from class: com.tencent.bugly.proguard.ab.1
        {
            byte b10 = 0;
            add(new l(b10));
            add(new f(b10));
            add(new g(b10));
            add(new m(b10));
            add(new h(b10));
            add(new i(b10));
            add(new k(b10));
            add(new e(b10));
            add(new j(b10));
            add(new b(b10));
            add(new d(b10));
            add(new c(b10));
        }
    };

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private static final Map<Integer, String> f83207b = new HashMap<Integer, String>() { // from class: com.tencent.bugly.proguard.ab.2
        {
            put(1, "GPRS");
            put(2, "EDGE");
            put(3, "UMTS");
            put(8, "HSDPA");
            put(9, "HSUPA");
            put(10, "HSPA");
            put(4, "CDMA");
            put(5, "EVDO_0");
            put(6, "EVDO_A");
            put(7, "1xRTT");
            put(11, "iDen");
            put(12, "EVDO_B");
            put(13, "LTE");
            put(14, "eHRPD");
            put(15, "HSPA+");
        }
    };

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    private static final String[] f83208c = {"/su", "/su/bin/su", "/sbin/su", "/data/local/xbin/su", "/data/local/bin/su", "/data/local/su", "/system/xbin/su", "/system/bin/su", "/system/sd/xbin/su", "/system/bin/failsafe/su", "/system/bin/cufsdosck", "/system/xbin/cufsdosck", "/system/bin/cufsmgr", "/system/xbin/cufsmgr", "/system/bin/cufaevdd", "/system/xbin/cufaevdd", "/system/bin/conbb", "/system/xbin/conbb"};

    static abstract class a {
        private a() {
        }

        public abstract String a();

        /* synthetic */ a(byte b10) {
            this();
        }
    }

    static class b extends a {
        private b() {
            super((byte) 0);
        }

        @Override // com.tencent.bugly.proguard.ab.a
        public final String a() {
            String strA = ap.a("ro.gn.gnromvernumber");
            if (ap.b(strA) || strA.equals("fail")) {
                return null;
            }
            return "amigo/" + strA + net.lingala.zip4j.util.e.F0 + ap.a("ro.build.display.id");
        }

        /* synthetic */ b(byte b10) {
            this();
        }
    }

    static class c extends a {
        private c() {
            super((byte) 0);
        }

        @Override // com.tencent.bugly.proguard.ab.a
        public final String a() {
            return ap.a("ro.build.fingerprint") + net.lingala.zip4j.util.e.F0 + ap.a("ro.build.rom.id");
        }

        /* synthetic */ c(byte b10) {
            this();
        }
    }

    static class d extends a {
        private d() {
            super((byte) 0);
        }

        @Override // com.tencent.bugly.proguard.ab.a
        public final String a() {
            String strA = ap.a("ro.build.tyd.kbstyle_version");
            if (ap.b(strA) || strA.equals("fail")) {
                return null;
            }
            return "dido/".concat(strA);
        }

        /* synthetic */ d(byte b10) {
            this();
        }
    }

    static class e extends a {
        private e() {
            super((byte) 0);
        }

        @Override // com.tencent.bugly.proguard.ab.a
        public final String a() {
            String strA = ap.a("ro.aa.romver");
            if (ap.b(strA) || strA.equals("fail")) {
                return null;
            }
            return "htc/" + strA + net.lingala.zip4j.util.e.F0 + ap.a("ro.build.description");
        }

        /* synthetic */ e(byte b10) {
            this();
        }
    }

    static class f extends a {
        private f() {
            super((byte) 0);
        }

        @Override // com.tencent.bugly.proguard.ab.a
        public final String a() {
            String strA = ap.a("ro.build.version.emui");
            if (ap.b(strA) || strA.equals("fail")) {
                return null;
            }
            return "HuaWei/EMOTION/".concat(strA);
        }

        /* synthetic */ f(byte b10) {
            this();
        }
    }

    static class g extends a {
        private g() {
            super((byte) 0);
        }

        @Override // com.tencent.bugly.proguard.ab.a
        public final String a() {
            String strA = ap.a("ro.lenovo.series");
            if (ap.b(strA) || strA.equals("fail")) {
                return null;
            }
            return "Lenovo/VIBE/".concat(String.valueOf(ap.a("ro.build.version.incremental")));
        }

        /* synthetic */ g(byte b10) {
            this();
        }
    }

    static class h extends a {
        private h() {
            super((byte) 0);
        }

        @Override // com.tencent.bugly.proguard.ab.a
        public final String a() {
            String strA = ap.a("ro.meizu.product.model");
            if (ap.b(strA) || strA.equals("fail")) {
                return null;
            }
            return "Meizu/FLYME/" + ap.a("ro.build.display.id");
        }

        /* synthetic */ h(byte b10) {
            this();
        }
    }

    static class i extends a {
        private i() {
            super((byte) 0);
        }

        @Override // com.tencent.bugly.proguard.ab.a
        public final String a() {
            String strA = ap.a("ro.build.version.opporom");
            if (ap.b(strA) || strA.equals("fail")) {
                return null;
            }
            return "Oppo/COLOROS/".concat(strA);
        }

        /* synthetic */ i(byte b10) {
            this();
        }
    }

    static class j extends a {
        private j() {
            super((byte) 0);
        }

        @Override // com.tencent.bugly.proguard.ab.a
        public final String a() {
            String strA = ap.a("ro.lewa.version");
            if (ap.b(strA) || strA.equals("fail")) {
                return null;
            }
            return "tcl/" + strA + net.lingala.zip4j.util.e.F0 + ap.a("ro.build.display.id");
        }

        /* synthetic */ j(byte b10) {
            this();
        }
    }

    static class k extends a {
        private k() {
            super((byte) 0);
        }

        @Override // com.tencent.bugly.proguard.ab.a
        public final String a() {
            String strA = ap.a("ro.vivo.os.build.display.id");
            if (ap.b(strA) || strA.equals("fail")) {
                return null;
            }
            return "vivo/FUNTOUCH/".concat(strA);
        }

        /* synthetic */ k(byte b10) {
            this();
        }
    }

    static class l extends a {
        private l() {
            super((byte) 0);
        }

        @Override // com.tencent.bugly.proguard.ab.a
        public final String a() {
            String strA = ap.a("ro.miui.ui.version.name");
            if (ap.b(strA) || strA.equals("fail")) {
                return null;
            }
            return "XiaoMi/MIUI/".concat(strA);
        }

        /* synthetic */ l(byte b10) {
            this();
        }
    }

    static class m extends a {
        private m() {
            super((byte) 0);
        }

        @Override // com.tencent.bugly.proguard.ab.a
        public final String a() {
            String strA = ap.a("ro.build.nubia.rom.name");
            if (ap.b(strA) || strA.equals("fail")) {
                return null;
            }
            return "Zte/NUBIA/" + strA + "_" + ap.a("ro.build.nubia.rom.code");
        }

        /* synthetic */ m(byte b10) {
            this();
        }
    }

    public static String a() {
        try {
            return Build.MODEL;
        } catch (Throwable th) {
            if (al.a(th)) {
                return "fail";
            }
            th.printStackTrace();
            return "fail";
        }
    }

    public static String b() {
        try {
            return Build.VERSION.RELEASE;
        } catch (Throwable th) {
            if (al.a(th)) {
                return "fail";
            }
            th.printStackTrace();
            return "fail";
        }
    }

    public static int c() {
        try {
            return Build.VERSION.SDK_INT;
        } catch (Throwable th) {
            if (al.a(th)) {
                return -1;
            }
            th.printStackTrace();
            return -1;
        }
    }

    public static String d() {
        try {
            return String.valueOf(System.getProperty("os.arch"));
        } catch (Throwable th) {
            if (al.a(th)) {
                return "fail";
            }
            th.printStackTrace();
            return "fail";
        }
    }

    public static long e() {
        try {
            StatFs statFs = new StatFs(Environment.getDataDirectory().getPath());
            return ((long) statFs.getBlockCount()) * ((long) statFs.getBlockSize());
        } catch (Throwable th) {
            if (!al.a(th)) {
                th.printStackTrace();
            }
            return -1L;
        }
    }

    public static long f() {
        if (!aa.h()) {
            al.c("not allow collect personal info, rom avail size use default value", new Object[0]);
            return -1L;
        }
        try {
            StatFs statFs = new StatFs(Environment.getDataDirectory().getPath());
            return ((long) statFs.getAvailableBlocks()) * ((long) statFs.getBlockSize());
        } catch (Throwable th) {
            if (al.a(th)) {
                return -1L;
            }
            th.printStackTrace();
            return -1L;
        }
    }

    public static long g() {
        BufferedReader bufferedReader;
        Throwable th;
        long j10 = 0;
        try {
            try {
                bufferedReader = new BufferedReader(new FileReader("/proc/self/status"));
                try {
                    for (String line = bufferedReader.readLine(); line != null; line = bufferedReader.readLine()) {
                        if (line.startsWith("VmSize")) {
                            j10 = Long.parseLong(line.replaceAll("[^\\d]", ""));
                            break;
                        }
                    }
                    bufferedReader.close();
                } catch (Throwable th2) {
                    th = th2;
                    try {
                        al.a(th);
                        if (bufferedReader != null) {
                            bufferedReader.close();
                        }
                        return j10 * 1024;
                    } catch (Throwable th3) {
                        if (bufferedReader != null) {
                            try {
                                bufferedReader.close();
                            } catch (Throwable th4) {
                                th4.printStackTrace();
                            }
                        }
                        throw th3;
                    }
                }
            } catch (Throwable th5) {
                th5.printStackTrace();
            }
        } catch (Throwable th6) {
            bufferedReader = null;
            th = th6;
        }
        return j10 * 1024;
    }

    public static long h() {
        return Runtime.getRuntime().totalMemory() - Runtime.getRuntime().freeMemory();
    }

    public static long i() {
        FileReader fileReader;
        Throwable th;
        BufferedReader bufferedReader;
        try {
            fileReader = new FileReader("/proc/meminfo");
            try {
                bufferedReader = new BufferedReader(fileReader, 2048);
                try {
                    String line = bufferedReader.readLine();
                    if (line != null) {
                        long j10 = Long.parseLong(line.split(":\\s+", 2)[1].toLowerCase().replace("kb", "").trim()) * 1024;
                        try {
                            bufferedReader.close();
                        } catch (IOException e10) {
                            if (!al.a(e10)) {
                                e10.printStackTrace();
                            }
                        }
                        try {
                            fileReader.close();
                        } catch (IOException e11) {
                            if (!al.a(e11)) {
                                e11.printStackTrace();
                            }
                        }
                        return j10;
                    }
                    try {
                        bufferedReader.close();
                    } catch (IOException e12) {
                        if (!al.a(e12)) {
                            e12.printStackTrace();
                        }
                    }
                    try {
                        fileReader.close();
                        return -1L;
                    } catch (IOException e13) {
                        if (al.a(e13)) {
                            return -1L;
                        }
                        e13.printStackTrace();
                        return -1L;
                    }
                } catch (Throwable th2) {
                    th = th2;
                    try {
                        if (!al.a(th)) {
                            th.printStackTrace();
                        }
                        if (fileReader == null) {
                            return -2L;
                        }
                        try {
                            return -2L;
                        } catch (IOException e14) {
                        }
                    } finally {
                        if (bufferedReader != null) {
                            try {
                                bufferedReader.close();
                            } catch (IOException e15) {
                                if (!al.a(e15)) {
                                    e15.printStackTrace();
                                }
                            }
                        }
                        if (fileReader != null) {
                            try {
                                fileReader.close();
                            } catch (IOException e16) {
                                if (!al.a(e16)) {
                                    e16.printStackTrace();
                                }
                            }
                        }
                    }
                }
            } catch (Throwable th3) {
                th = th3;
                bufferedReader = null;
            }
        } catch (Throwable th4) {
            fileReader = null;
            th = th4;
            bufferedReader = null;
        }
    }

    public static long j() {
        FileReader fileReader;
        if (!aa.h()) {
            al.c("not allow collect personal info, ram avail size use default value", new Object[0]);
            return -1L;
        }
        BufferedReader bufferedReader = null;
        try {
            fileReader = new FileReader("/proc/meminfo");
            try {
                BufferedReader bufferedReader2 = new BufferedReader(fileReader, 2048);
                try {
                    bufferedReader2.readLine();
                    String line = bufferedReader2.readLine();
                    if (line == null) {
                        try {
                            bufferedReader2.close();
                        } catch (IOException e10) {
                            if (!al.a(e10)) {
                                e10.printStackTrace();
                            }
                        }
                        try {
                            fileReader.close();
                        } catch (IOException e11) {
                            if (!al.a(e11)) {
                                e11.printStackTrace();
                            }
                        }
                        return -1L;
                    }
                    long j10 = (Long.parseLong(line.split(":\\s+", 2)[1].toLowerCase().replace("kb", "").trim()) * 1024) + 0;
                    String line2 = bufferedReader2.readLine();
                    if (line2 == null) {
                        try {
                            bufferedReader2.close();
                        } catch (IOException e12) {
                            if (!al.a(e12)) {
                                e12.printStackTrace();
                            }
                        }
                        try {
                            fileReader.close();
                        } catch (IOException e13) {
                            if (!al.a(e13)) {
                                e13.printStackTrace();
                            }
                        }
                        return -1L;
                    }
                    long j11 = Long.parseLong(line2.split(":\\s+", 2)[1].toLowerCase().replace("kb", "").trim());
                    Long.signum(j11);
                    long j12 = j10 + (j11 * 1024);
                    String line3 = bufferedReader2.readLine();
                    if (line3 == null) {
                        try {
                            bufferedReader2.close();
                        } catch (IOException e14) {
                            if (!al.a(e14)) {
                                e14.printStackTrace();
                            }
                        }
                        try {
                            fileReader.close();
                        } catch (IOException e15) {
                            if (!al.a(e15)) {
                                e15.printStackTrace();
                            }
                        }
                        return -1L;
                    }
                    long j13 = j12 + (Long.parseLong(line3.split(":\\s+", 2)[1].toLowerCase().replace("kb", "").trim()) * 1024);
                    try {
                        bufferedReader2.close();
                    } catch (IOException e16) {
                        if (!al.a(e16)) {
                            e16.printStackTrace();
                        }
                    }
                    try {
                        fileReader.close();
                    } catch (IOException e17) {
                        if (!al.a(e17)) {
                            e17.printStackTrace();
                        }
                    }
                    return j13;
                } catch (Throwable th) {
                    th = th;
                    bufferedReader = bufferedReader2;
                    try {
                        if (!al.a(th)) {
                            th.printStackTrace();
                        }
                        if (fileReader == null) {
                            return -2L;
                        }
                        try {
                            return -2L;
                        } catch (IOException e18) {
                        }
                    } finally {
                        if (bufferedReader != null) {
                            try {
                                bufferedReader.close();
                            } catch (IOException e19) {
                                if (!al.a(e19)) {
                                    e19.printStackTrace();
                                }
                            }
                        }
                        if (fileReader != null) {
                            try {
                                fileReader.close();
                            } catch (IOException e110) {
                                if (!al.a(e110)) {
                                    e110.printStackTrace();
                                }
                            }
                        }
                    }
                }
            } catch (Throwable th2) {
                th = th2;
            }
        } catch (Throwable th3) {
            th = th3;
            fileReader = null;
        }
    }

    public static long k() {
        if (!s()) {
            return 0L;
        }
        try {
            StatFs statFs = new StatFs(Environment.getExternalStorageDirectory().getPath());
            return ((long) statFs.getBlockCount()) * ((long) statFs.getBlockSize());
        } catch (Throwable th) {
            if (al.a(th)) {
                return -2L;
            }
            th.printStackTrace();
            return -2L;
        }
    }

    public static long l() {
        if (!aa.h()) {
            al.c("not allow collect personal info, free sdcard use default value", new Object[0]);
            return -1L;
        }
        if (!s()) {
            return 0L;
        }
        try {
            StatFs statFs = new StatFs(Environment.getExternalStorageDirectory().getPath());
            return ((long) statFs.getAvailableBlocks()) * ((long) statFs.getBlockSize());
        } catch (Throwable th) {
            if (al.a(th)) {
                return -2L;
            }
            th.printStackTrace();
            return -2L;
        }
    }

    public static String m() {
        return "";
    }

    public static String n() {
        Iterator<a> it2 = f83206a.iterator();
        while (it2.hasNext()) {
            String strA = it2.next().a();
            if (!TextUtils.isEmpty(strA)) {
                return strA;
            }
        }
        return null;
    }

    public static boolean o() {
        return !TextUtils.isEmpty(new i((byte) 0).a());
    }

    public static boolean p() {
        return !TextUtils.isEmpty(new k((byte) 0).a());
    }

    public static boolean q() {
        boolean z10;
        String[] strArr = f83208c;
        int length = strArr.length;
        int i10 = 0;
        while (true) {
            if (i10 >= length) {
                z10 = false;
                break;
            }
            if (new File(strArr[i10]).exists()) {
                z10 = true;
                break;
            }
            i10++;
        }
        String str = Build.TAGS;
        return (str != null && str.contains("test-keys")) || z10;
    }

    public static boolean r() {
        float fMaxMemory = (float) ((Runtime.getRuntime().maxMemory() * 1.0d) / 1048576.0d);
        float f10 = (float) ((Runtime.getRuntime().totalMemory() * 1.0d) / 1048576.0d);
        float f11 = fMaxMemory - f10;
        al.c("maxMemory : %f", Float.valueOf(fMaxMemory));
        al.c("totalMemory : %f", Float.valueOf(f10));
        al.c("freeMemory : %f", Float.valueOf(f11));
        return f11 < 10.0f;
    }

    private static boolean s() {
        try {
            return Environment.getExternalStorageState().equals("mounted");
        } catch (Throwable th) {
            if (al.a(th)) {
                return false;
            }
            th.printStackTrace();
            return false;
        }
    }

    public static String a(Context context) {
        if (context != null && context.getApplicationInfo() != null) {
            String str = context.getApplicationInfo().nativeLibraryDir;
            if (TextUtils.isEmpty(str)) {
                return "fail";
            }
            if (str.endsWith("arm")) {
                return "armeabi-v7a";
            }
            if (str.endsWith(com.join.mgps.mod.utils.d.f71902d)) {
                return "arm64-v8a";
            }
            if (str.endsWith(com.join.mgps.mod.utils.d.f71904f)) {
                return com.join.mgps.mod.utils.d.f71904f;
            }
            if (str.endsWith("x86_64")) {
                return "x86_64";
            }
        }
        return "fail";
    }

    public static long b(Context context) {
        long pss;
        try {
            ActivityManager activityManager = (ActivityManager) context.getSystemService(TTDownloadField.TT_ACTIVITY);
            if (activityManager == null) {
                return 0L;
            }
            pss = activityManager.getProcessMemoryInfo(new int[]{Process.myPid()})[0].getTotalPss();
        } catch (Throwable unused) {
            pss = Debug.getPss();
        }
        return pss * 1024;
    }

    /* JADX WARN: Code duplicated, block: B:24:0x005e  */
    public static String c(Context context) {
        TelephonyManager telephonyManager;
        String str = "unknown";
        try {
            NetworkInfo activeNetworkInfo = ((ConnectivityManager) context.getSystemService("connectivity")).getActiveNetworkInfo();
            if (activeNetworkInfo == null) {
                return null;
            }
            if (activeNetworkInfo.getType() == 1) {
                return t7.a.f97141e;
            }
            if (activeNetworkInfo.getType() == 0 && (telephonyManager = (TelephonyManager) context.getSystemService("phone")) != null) {
                int networkType = telephonyManager.getNetworkType();
                String str2 = f83207b.get(Integer.valueOf(networkType));
                if (str2 == null) {
                    try {
                        str = "MOBILE(" + networkType + ")";
                    } catch (Exception e10) {
                        e = e10;
                        str = str2;
                        if (!al.a(e)) {
                            e.printStackTrace();
                        }
                    }
                } else {
                    str = str2;
                }
            }
            return str;
        } catch (Exception e11) {
            e = e11;
        }
        if (!al.a(e)) {
            e.printStackTrace();
        }
        return str;
    }
}
