package com.uc.crashsdk;

import android.app.ActivityManager;
import android.content.BroadcastReceiver;
import android.content.Context;
import android.content.Intent;
import android.content.IntentFilter;
import android.os.Build;
import android.os.ConditionVariable;
import android.os.Debug;
import android.os.Looper;
import android.os.ParcelFileDescriptor;
import android.os.Process;
import android.os.StatFs;
import android.os.StrictMode;
import com.baidu.mobads.sdk.internal.ax;
import com.byazt.hv.TTDownloadField;
import com.bykv.vk.component.ttvideo.player.MediaPlayer;
import com.bytedance.sdk.openadsdk.TTAdConstant;
import com.haima.hmcp.Constants;
import com.haima.hmcp.cloud.BaseCloudFileManager;
import com.kuaishou.weapon.p0.bg;
import com.kwad.sdk.api.model.AdnName;
import com.sdk.base.framework.utils.log.LogFile;
import com.uc.crashsdk.a.h;
import com.uc.crashsdk.export.LogType;
import java.io.BufferedReader;
import java.io.ByteArrayOutputStream;
import java.io.Closeable;
import java.io.DataInputStream;
import java.io.File;
import java.io.FileInputStream;
import java.io.FileOutputStream;
import java.io.FileReader;
import java.io.FileWriter;
import java.io.IOException;
import java.io.InputStreamReader;
import java.io.OutputStream;
import java.io.PrintStream;
import java.io.RandomAccessFile;
import java.lang.reflect.Field;
import java.lang.reflect.Method;
import java.nio.channels.FileChannel;
import java.nio.channels.FileLock;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.Calendar;
import java.util.Comparator;
import java.util.Date;
import java.util.HashMap;
import java.util.HashSet;
import java.util.Iterator;
import java.util.List;
import java.util.Locale;
import java.util.Map;
import java.util.Random;
import java.util.UUID;
import java.util.concurrent.atomic.AtomicBoolean;
import java.util.regex.Matcher;
import java.util.regex.Pattern;

/* JADX INFO: loaded from: classes2.dex */
public class e implements Thread.UncaughtExceptionHandler {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    static final /* synthetic */ boolean f84096a = true;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private static long f84101b;

    /* JADX INFO: renamed from: i, reason: collision with root package name */
    private static String f84107i;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    private final List<FileInputStream> f84125e = new ArrayList();

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    private static final AtomicBoolean f84102c = new AtomicBoolean(false);

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    private static boolean f84103d = false;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    private static long f84104f = 0;

    /* JADX INFO: renamed from: g, reason: collision with root package name */
    private static long f84105g = -1;

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    private static boolean f84106h = true;

    /* JADX INFO: renamed from: j, reason: collision with root package name */
    private static String f84108j = "";

    /* JADX INFO: renamed from: k, reason: collision with root package name */
    private static String f84109k = null;

    /* JADX INFO: renamed from: l, reason: collision with root package name */
    private static String f84110l = null;

    /* JADX INFO: renamed from: m, reason: collision with root package name */
    private static String f84111m = null;

    /* JADX INFO: renamed from: n, reason: collision with root package name */
    private static final Object f84112n = new Object();

    /* JADX INFO: renamed from: o, reason: collision with root package name */
    private static final ConditionVariable f84113o = new ConditionVariable();

    /* JADX INFO: renamed from: p, reason: collision with root package name */
    private static final Object f84114p = new Object();

    /* JADX INFO: renamed from: q, reason: collision with root package name */
    private static final Object f84115q = new Object();

    /* JADX INFO: renamed from: r, reason: collision with root package name */
    private static final Object f84116r = new Object();

    /* JADX INFO: renamed from: s, reason: collision with root package name */
    private static final ArrayList<String> f84117s = new ArrayList<>();

    /* JADX INFO: renamed from: t, reason: collision with root package name */
    private static int f84118t = 0;

    /* JADX INFO: renamed from: u, reason: collision with root package name */
    private static String f84119u = null;

    /* JADX INFO: renamed from: v, reason: collision with root package name */
    private static boolean f84120v = false;

    /* JADX INFO: renamed from: w, reason: collision with root package name */
    private static String f84121w = null;

    /* JADX INFO: renamed from: x, reason: collision with root package name */
    private static String f84122x = null;

    /* JADX INFO: renamed from: y, reason: collision with root package name */
    private static final Object f84123y = new Object();

    /* JADX INFO: renamed from: z, reason: collision with root package name */
    private static final Object f84124z = new Object();
    private static Map<String, Integer> A = null;
    private static String B = null;
    private static int C = -1;
    private static int D = -1;
    private static int E = -1;
    private static int F = -1;
    private static int G = -1;
    private static int H = -1;
    private static int I = -1;
    private static String J = "?";
    private static boolean K = false;
    private static boolean L = false;
    private static int M = 0;
    private static int N = 0;
    private static boolean O = false;
    private static com.uc.crashsdk.a.e P = new com.uc.crashsdk.a.e(405);
    private static c Q = new c(0);
    private static boolean R = false;
    private static final com.uc.crashsdk.a.e S = new com.uc.crashsdk.a.e(TTAdConstant.IMAGE_URL_CODE);
    private static Thread.UncaughtExceptionHandler T = null;
    private static Throwable U = null;
    private static boolean V = false;
    private static boolean W = false;
    private static Runnable X = null;
    private static final Object Y = new Object();
    private static int Z = 101;

    /* JADX INFO: renamed from: aa, reason: collision with root package name */
    private static Runnable f84097aa = new com.uc.crashsdk.a.e(407);

    /* JADX INFO: renamed from: ab, reason: collision with root package name */
    private static final Object f84098ab = new Object();

    /* JADX INFO: renamed from: ac, reason: collision with root package name */
    private static volatile boolean f84099ac = false;

    /* JADX INFO: renamed from: ad, reason: collision with root package name */
    private static Object f84100ad = new Object();
    private static ParcelFileDescriptor ae = null;
    private static boolean af = false;
    private static boolean ag = false;

    private static class b implements Comparator<File> {
        private b() {
        }

        @Override // java.util.Comparator
        public final /* synthetic */ int compare(File file, File file2) {
            File file3 = file;
            File file4 = file2;
            if (file3.lastModified() > file4.lastModified()) {
                return 1;
            }
            return file3.lastModified() < file4.lastModified() ? -1 : 0;
        }

        /* synthetic */ b(byte b10) {
            this();
        }
    }

    private static class c extends BroadcastReceiver {
        private c() {
        }

        @Override // android.content.BroadcastReceiver
        public final void onReceive(Context context, Intent intent) {
            String action = intent.getAction();
            if (!"android.intent.action.BATTERY_CHANGED".equals(action)) {
                if ("android.intent.action.BATTERY_LOW".equals(action) || "android.intent.action.BATTERY_OKAY".equals(action)) {
                    boolean unused = e.K = "android.intent.action.BATTERY_LOW".equals(action);
                    e.K();
                    return;
                } else {
                    if ("android.intent.action.ANR".equals(action)) {
                        try {
                            e.d(context);
                            return;
                        } catch (Throwable th) {
                            com.uc.crashsdk.a.g.a(th);
                            return;
                        }
                    }
                    return;
                }
            }
            int unused2 = e.C = intent.getIntExtra("level", -1);
            int unused3 = e.D = intent.getIntExtra("scale", -1);
            int unused4 = e.E = intent.getIntExtra("voltage", -1);
            int unused5 = e.F = intent.getIntExtra("health", -1);
            int unused6 = e.G = intent.getIntExtra("plugged", -1);
            int unused7 = e.H = intent.getIntExtra("status", -1);
            int unused8 = e.I = intent.getIntExtra("temperature", -1);
            String unused9 = e.J = intent.getStringExtra("technology");
            if (e.J() >= 2) {
                e.K();
                e.L();
            }
        }

        /* synthetic */ c(byte b10) {
            this();
        }
    }

    public e() {
        try {
            M();
        } catch (Throwable th) {
            com.uc.crashsdk.a.g.a(th);
        }
    }

    public static void A() {
        if (g.q()) {
            com.uc.crashsdk.a.f.a(0, new com.uc.crashsdk.a.e(403), 10000L);
        }
    }

    public static void B() {
        if (f84099ac || com.uc.crashsdk.b.L()) {
            return;
        }
        com.uc.crashsdk.a.f.a(1, new com.uc.crashsdk.a.e(TTAdConstant.INTERACTION_TYPE_CODE), 1000L);
    }

    static void C() {
        com.uc.crashsdk.a.f.a(1, new com.uc.crashsdk.a.e(TTAdConstant.IMAGE_LIST_CODE), 7000L);
    }

    /* JADX WARN: Code duplicated, block: B:8:0x0011  */
    public static void D() {
        int iN = g.N();
        boolean z10 = false;
        boolean z11 = true;
        if (iN == 0 || iN == 3 || iN == 4) {
            if (Build.VERSION.SDK_INT <= 25) {
                boolean z12 = iN != 0;
                if (iN == 3) {
                    z12 = System.currentTimeMillis() % 10 == 0;
                }
                if (iN != 4) {
                    z11 = z12;
                } else if (System.currentTimeMillis() % 3 != 0) {
                    z11 = false;
                }
            }
        } else if (iN == 1) {
            z11 = false;
        }
        if (!z11) {
            com.uc.crashsdk.a.a.a("crashsdk", "SIG 3 is disabled by settings");
        }
        boolean zL = com.uc.crashsdk.b.L();
        if (Looper.getMainLooper() == Looper.myLooper() || !z11) {
            z10 = z11;
        } else {
            com.uc.crashsdk.a.f.a(2, new com.uc.crashsdk.a.e(TTAdConstant.VIDEO_INFO_CODE));
        }
        JNIBridge.nativeCmd(7, zL ? 1L : 0L, null, null);
        if (z10) {
            JNIBridge.cmd(8);
        }
    }

    public static ParcelFileDescriptor E() {
        if (!com.uc.crashsdk.b.f84064d) {
            com.uc.crashsdk.a.a.d("crashsdk", "Crash so is not loaded!");
            return null;
        }
        synchronized (f84100ad) {
            ParcelFileDescriptor parcelFileDescriptor = ae;
            if (parcelFileDescriptor != null) {
                return parcelFileDescriptor;
            }
            int iCmd = (int) JNIBridge.cmd(14);
            if (iCmd == -1) {
                return null;
            }
            ParcelFileDescriptor parcelFileDescriptorAdoptFd = ParcelFileDescriptor.adoptFd(iCmd);
            ae = parcelFileDescriptorAdoptFd;
            af = true;
            return parcelFileDescriptorAdoptFd;
        }
    }

    public static boolean F() {
        return ag;
    }

    public static void G() {
        String strX = g.X();
        File file = new File(strX);
        if (file.exists() && file.isDirectory()) {
            File[] fileArrListFiles = file.listFiles();
            if (fileArrListFiles == null) {
                com.uc.crashsdk.a.a.b("Ucebu can not list folder: " + strX);
                return;
            }
            for (File file2 : fileArrListFiles) {
                if (file2.isFile() && file2.getName().contains("ucebu")) {
                    a(false, false);
                    return;
                }
            }
        }
    }

    static /* synthetic */ int J() {
        int i10 = M + 1;
        M = i10;
        return i10;
    }

    static /* synthetic */ void K() {
        StringBuilder sbY;
        if (com.uc.crashsdk.b.f84064d && (sbY = Y()) != null) {
            JNIBridge.set(125, sbY.toString());
        }
        L = true;
        Z();
    }

    static /* synthetic */ int L() {
        M = 0;
        return 0;
    }

    private void M() {
        int I2 = g.I();
        for (int i10 = 0; i10 < I2; i10++) {
            try {
                this.f84125e.add(new FileInputStream("/dev/null"));
            } catch (Exception e10) {
                com.uc.crashsdk.a.g.a(e10);
                return;
            }
        }
    }

    private void N() {
        Iterator<FileInputStream> it2 = this.f84125e.iterator();
        while (it2.hasNext()) {
            com.uc.crashsdk.a.g.a(it2.next());
        }
        this.f84125e.clear();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static boolean O() {
        if (g.P()) {
            return true;
        }
        return a();
    }

    private static String P() {
        return g.e() + "_";
    }

    private static String Q() {
        return com.uc.crashsdk.b.B() ? "fg" : "bg";
    }

    private static byte[] R() {
        byte[] bArr = null;
        int i10 = 1024;
        while (bArr == null && i10 > 0) {
            try {
                bArr = new byte[i10];
            } catch (Throwable unused) {
                i10 /= 2;
                if (i10 < 16) {
                    return bArr;
                }
            }
        }
        return bArr;
    }

    private static String S() {
        return (!com.uc.crashsdk.b.F() || f84103d) ? LogType.JAVA_TYPE : "ucebujava";
    }

    private static void T() {
        String strTrim;
        BufferedReader bufferedReader;
        Throwable th;
        FileReader fileReader;
        String strTrim2 = "-";
        try {
            strTrim = Build.HARDWARE;
        } catch (Throwable th2) {
            com.uc.crashsdk.a.g.a(th2);
            strTrim = "-";
        }
        try {
            fileReader = new FileReader(new File("/proc/cpuinfo"));
            try {
                bufferedReader = new BufferedReader(fileReader, 512);
                int i10 = 0;
                do {
                    try {
                        String line = bufferedReader.readLine();
                        if (line == null) {
                            break;
                        }
                        if (line.startsWith("Hardware")) {
                            strTrim = line.substring(line.indexOf(":") + 1).trim();
                        } else if (line.startsWith("Processor")) {
                            strTrim2 = line.substring(line.indexOf(":") + 1).trim();
                        }
                        i10++;
                    } catch (Throwable th3) {
                        th = th3;
                        try {
                            com.uc.crashsdk.a.g.a(th);
                            com.uc.crashsdk.a.g.a(fileReader);
                        } catch (Throwable th4) {
                            com.uc.crashsdk.a.g.a(fileReader);
                            com.uc.crashsdk.a.g.a(bufferedReader);
                            throw th4;
                        }
                    }
                } while (i10 < 2);
                com.uc.crashsdk.a.g.a(fileReader);
            } catch (Throwable th5) {
                bufferedReader = null;
                th = th5;
            }
        } catch (Throwable th6) {
            bufferedReader = null;
            th = th6;
            fileReader = null;
        }
        com.uc.crashsdk.a.g.a(bufferedReader);
        f84109k = strTrim;
        f84110l = strTrim2;
    }

    private static String U() {
        return g.W() + "bytes";
    }

    private static boolean V() {
        return Build.VERSION.SDK_INT < 29;
    }

    private static void W() {
        if (O || com.uc.crashsdk.b.F() || com.uc.crashsdk.b.L()) {
            return;
        }
        JNIBridge.cmd(18);
    }

    private static void X() {
        com.uc.crashsdk.a.f.a(3, new com.uc.crashsdk.a.e(TTAdConstant.VIDEO_URL_CODE), 1000L);
    }

    private static StringBuilder Y() {
        String str;
        String str2;
        try {
            StringBuilder sb2 = new StringBuilder();
            sb2.append("level: ");
            sb2.append(C);
            sb2.append("\n");
            sb2.append("scale: ");
            sb2.append(D);
            sb2.append("\n");
            String str3 = " (Unknown)";
            switch (F) {
                case 1:
                    str = " (Unknown)";
                    break;
                case 2:
                    str = " (Good)";
                    break;
                case 3:
                    str = " (Overheat)";
                    break;
                case 4:
                    str = " (Dead)";
                    break;
                case 5:
                    str = " (Over voltage)";
                    break;
                case 6:
                    str = " (Unspecified failure)";
                    break;
                case 7:
                    str = " (Cold)";
                    break;
                default:
                    str = " (?)";
                    break;
            }
            sb2.append("health: ");
            sb2.append(F);
            sb2.append(str);
            sb2.append("\n");
            int i10 = G;
            if (i10 == 0) {
                str2 = " (None)";
            } else if (i10 == 1) {
                str2 = " (AC charger)";
            } else if (i10 != 2) {
                str2 = i10 != 4 ? " (?)" : " (Wireless)";
            } else {
                str2 = " (USB port)";
            }
            sb2.append("pluged: ");
            sb2.append(G);
            sb2.append(str2);
            sb2.append("\n");
            int i11 = H;
            if (i11 != 1) {
                if (i11 == 2) {
                    str3 = " (Charging)";
                } else if (i11 == 3) {
                    str3 = " (Discharging)";
                } else if (i11 != 4) {
                    str3 = i11 != 5 ? " (?)" : " (Full)";
                } else {
                    str3 = " (Not charging)";
                }
            }
            sb2.append("status: ");
            sb2.append(H);
            sb2.append(str3);
            sb2.append("\n");
            sb2.append("voltage: ");
            sb2.append(E);
            sb2.append("\n");
            sb2.append("temperature: ");
            sb2.append(I);
            sb2.append("\n");
            sb2.append("technology: ");
            sb2.append(J);
            sb2.append("\n");
            sb2.append("battery low: ");
            sb2.append(K);
            sb2.append("\n");
            return sb2;
        } catch (Throwable th) {
            com.uc.crashsdk.a.g.a(th);
            return null;
        }
    }

    private static void Z() {
        if (com.uc.crashsdk.b.f84063c && L && com.uc.crashsdk.a.f83979c) {
            L = false;
            if (com.uc.crashsdk.a.f.b(P)) {
                return;
            }
            com.uc.crashsdk.a.f.a(0, P, 2000L);
        }
    }

    public static boolean a() {
        if (f84104f == 0) {
            f84104f = 2L;
            if (h(com.uc.crashsdk.b.b("logs")) == 1) {
                f84104f = 1L;
            }
        }
        return f84104f == 1;
    }

    private static boolean aa() {
        return com.uc.crashsdk.b.f84064d && JNIBridge.nativeIsCrashing();
    }

    private static void ab() {
        String strY = g.Y();
        File file = new File(strY);
        if (file.isDirectory()) {
            try {
                File[] fileArrListFiles = file.listFiles();
                if (fileArrListFiles != null && fileArrListFiles.length > 150) {
                    Arrays.sort(fileArrListFiles, new b((byte) 0));
                    int length = fileArrListFiles.length - 150;
                    int i10 = length < 0 ? 0 : length;
                    long jCurrentTimeMillis = System.currentTimeMillis();
                    int i11 = 0;
                    int i12 = 0;
                    int i13 = 0;
                    while (i11 < fileArrListFiles.length) {
                        File file2 = fileArrListFiles[i11];
                        boolean z10 = i11 < i10;
                        if (!z10 && jCurrentTimeMillis - file2.lastModified() >= 432000000) {
                            z10 = true;
                        }
                        if (!z10) {
                            break;
                        }
                        try {
                            file2.delete();
                            i12++;
                            i13 = 0;
                        } catch (Throwable th) {
                            i13++;
                            com.uc.crashsdk.a.g.a(th);
                        }
                        if (i13 >= 3) {
                            break;
                        } else {
                            i11++;
                        }
                    }
                    com.uc.crashsdk.a.a.a("Removed " + i12 + " logs in " + strY);
                }
            } catch (Throwable th2) {
                com.uc.crashsdk.a.g.a(th2);
            }
        }
    }

    static long b() {
        if (f84105g == -1) {
            f84105g = h(com.uc.crashsdk.b.b(ax.f7484a));
        }
        return f84105g;
    }

    private static String j(String str) {
        if (str == null) {
            str = String.valueOf(System.currentTimeMillis()) + new Random().nextInt(65536);
        }
        return String.format(Locale.US, "%s%s_%s_%s_%s_%s_", P(), g.T(), g.V(), i(Build.MODEL), i(Build.VERSION.RELEASE), str);
    }

    private static String k(String str) {
        return String.format(Locale.US, "%s%s_%s_%s.log", d(), n(), Q(), str);
    }

    private static String l(String str) {
        if (!com.uc.crashsdk.a.g.b(str)) {
            return "";
        }
        int iIndexOf = str.indexOf(0);
        if (iIndexOf >= 0) {
            str = str.substring(0, iIndexOf);
        }
        return str.trim();
    }

    private static String m(String str) {
        String strA = com.uc.crashsdk.a.b.a(str, g.w(), g.v());
        if (!str.equals(strA)) {
            File file = new File(str);
            if (file.exists()) {
                file.delete();
            }
        }
        return strA;
    }

    /* JADX WARN: Code duplicated, block: B:34:0x006b  */
    private static boolean[] n(String str) {
        boolean zV = g.v();
        boolean zX = g.x();
        if (zV || zX) {
            if (str.endsWith(".tmp") || str.contains(".ec")) {
                zV = false;
                zX = false;
            } else {
                int iLastIndexOf = str.lastIndexOf(File.separatorChar);
                if (iLastIndexOf < 0) {
                    iLastIndexOf = 0;
                }
                int i10 = 0;
                do {
                    iLastIndexOf = str.indexOf(95, iLastIndexOf);
                    if (iLastIndexOf >= 0) {
                        i10++;
                        iLastIndexOf++;
                    }
                } while (iLastIndexOf >= 0);
                if (i10 != 8) {
                    zV = false;
                    zX = false;
                } else {
                    String strW = g.w();
                    if (str.endsWith(LogFile.LOG_SUFFIX)) {
                        if (com.uc.crashsdk.a.g.a(strW) || str.indexOf(LogFile.LOG_SUFFIX, str.lastIndexOf(95)) != str.lastIndexOf(LogFile.LOG_SUFFIX)) {
                        }
                    } else if (com.uc.crashsdk.a.g.a(strW) || !str.endsWith(strW)) {
                        zV = false;
                        zX = false;
                    }
                    zV = false;
                }
            }
        }
        return new boolean[]{zV, zX};
    }

    /* JADX WARN: Code duplicated, block: B:25:0x0082  */
    private static boolean o(String str) {
        boolean z10;
        boolean z11;
        int i10;
        int iF;
        synchronized (f84116r) {
            File file = new File(g.W() + "customlog");
            String strA = com.uc.crashsdk.a.g.a(file, 1024, false);
            long jCurrentTimeMillis = System.currentTimeMillis();
            StringBuffer stringBuffer = new StringBuffer();
            if (strA == null) {
                z10 = false;
                z11 = false;
                break;
            }
            stringBuffer.append(strA);
            Matcher matcher = Pattern.compile("([^\\n\\r\\t\\s]+) (\\d+) (\\d+)").matcher(stringBuffer);
            int iEnd = 0;
            while (true) {
                if (!matcher.find(iEnd)) {
                    z10 = false;
                    z11 = false;
                    break;
                }
                if (str.equals(matcher.group(1))) {
                    long j10 = Long.parseLong(matcher.group(2));
                    if (jCurrentTimeMillis - j10 < 86400000) {
                        try {
                            i10 = Integer.parseInt(matcher.group(3));
                        } catch (Exception e10) {
                            com.uc.crashsdk.a.g.a(e10);
                            i10 = 0;
                        }
                        iF = g.F();
                        if (iF >= 0 || i10 < iF) {
                            z11 = false;
                        } else {
                            z11 = true;
                        }
                        stringBuffer.replace(matcher.start(), matcher.end(), String.format(Locale.US, "%s %d %d", str, Long.valueOf(j10), Integer.valueOf(i10 + 1)));
                        z10 = true;
                        break;
                    }
                    j10 = jCurrentTimeMillis;
                    i10 = 0;
                    iF = g.F();
                    if (iF >= 0) {
                        z11 = false;
                    } else {
                        z11 = false;
                    }
                    stringBuffer.replace(matcher.start(), matcher.end(), String.format(Locale.US, "%s %d %d", str, Long.valueOf(j10), Integer.valueOf(i10 + 1)));
                    z10 = true;
                    break;
                }
                iEnd = matcher.end();
            }
            if (!z10) {
                stringBuffer.append(String.format(Locale.US, "%s %d 1\n", str, Long.valueOf(jCurrentTimeMillis)));
            }
            FileWriter fileWriter = null;
            try {
                try {
                    FileWriter fileWriter2 = new FileWriter(file);
                    try {
                        String string = stringBuffer.toString();
                        fileWriter2.write(string, 0, string.length());
                        com.uc.crashsdk.a.g.a(fileWriter2);
                    } catch (Exception e11) {
                        e = e11;
                        fileWriter = fileWriter2;
                        com.uc.crashsdk.a.g.a(e);
                        com.uc.crashsdk.a.g.a(fileWriter);
                    } catch (Throwable th) {
                        th = th;
                        fileWriter = fileWriter2;
                        com.uc.crashsdk.a.g.a(fileWriter);
                        throw th;
                    }
                } catch (Exception e12) {
                    e = e12;
                }
            } catch (Throwable th2) {
                th = th2;
            }
        }
        return z11;
    }

    /* JADX WARN: Code duplicated, block: B:38:0x00ae A[Catch: all -> 0x0108, TryCatch #0 {, blocks: (B:4:0x0003, B:6:0x0008, B:7:0x0018, B:9:0x0023, B:10:0x002d, B:38:0x00ae, B:50:0x00d4, B:57:0x00ef, B:53:0x00df, B:64:0x00fc, B:67:0x0106, B:11:0x0033, B:13:0x003b, B:14:0x0044, B:16:0x004c, B:18:0x0054, B:20:0x005c, B:26:0x006a, B:28:0x0074, B:30:0x0081, B:32:0x008b, B:33:0x0096, B:35:0x00a0), top: B:72:0x0003 }] */
    /* JADX WARN: Code duplicated, block: B:40:0x00b7  */
    /* JADX WARN: Code duplicated, block: B:42:0x00bd  */
    /* JADX WARN: Code duplicated, block: B:43:0x00c0  */
    /* JADX WARN: Code duplicated, block: B:45:0x00c6  */
    /* JADX WARN: Code duplicated, block: B:46:0x00c9  */
    /* JADX WARN: Code duplicated, block: B:48:0x00cf  */
    /* JADX WARN: Code duplicated, block: B:49:0x00d2  */
    /* JADX WARN: Code duplicated, block: B:52:0x00dc  */
    /* JADX WARN: Code duplicated, block: B:53:0x00df A[Catch: all -> 0x0108, TryCatch #0 {, blocks: (B:4:0x0003, B:6:0x0008, B:7:0x0018, B:9:0x0023, B:10:0x002d, B:38:0x00ae, B:50:0x00d4, B:57:0x00ef, B:53:0x00df, B:64:0x00fc, B:67:0x0106, B:11:0x0033, B:13:0x003b, B:14:0x0044, B:16:0x004c, B:18:0x0054, B:20:0x005c, B:26:0x006a, B:28:0x0074, B:30:0x0081, B:32:0x008b, B:33:0x0096, B:35:0x00a0), top: B:72:0x0003 }] */
    /* JADX WARN: Code duplicated, block: B:56:0x00ed  */
    /* JADX WARN: Code duplicated, block: B:57:0x00ef A[Catch: all -> 0x0108, TryCatch #0 {, blocks: (B:4:0x0003, B:6:0x0008, B:7:0x0018, B:9:0x0023, B:10:0x002d, B:38:0x00ae, B:50:0x00d4, B:57:0x00ef, B:53:0x00df, B:64:0x00fc, B:67:0x0106, B:11:0x0033, B:13:0x003b, B:14:0x0044, B:16:0x004c, B:18:0x0054, B:20:0x005c, B:26:0x006a, B:28:0x0074, B:30:0x0081, B:32:0x008b, B:33:0x0096, B:35:0x00a0), top: B:72:0x0003 }] */
    /* JADX WARN: Code duplicated, block: B:60:0x00f5  */
    private static boolean p(String str) {
        boolean z10;
        int iIntValue;
        Integer num;
        long j10;
        long j11;
        long jB;
        long jCurrentTimeMillis;
        synchronized (f84124z) {
            z10 = false;
            if (A == null) {
                A = q(com.uc.crashsdk.a.g.a(com.uc.crashsdk.b.l(), "all:1", false));
            }
            if (A.containsKey("all")) {
                num = A.get("all");
            } else if (A.containsKey(str)) {
                num = A.get(str);
            } else {
                boolean z11 = LogType.JAVA_TYPE.equals(str) || LogType.NATIVE_TYPE.equals(str) || LogType.ANR_TYPE.equals(str) || LogType.UNEXP_TYPE.equals(str);
                if (z11 && A.containsKey("crash")) {
                    num = A.get("crash");
                } else if (z11 || !A.containsKey("nocrash")) {
                    if (A.containsKey(AdnName.OTHER)) {
                        num = A.get(AdnName.OTHER);
                    } else {
                        iIntValue = 1;
                    }
                    if (iIntValue != 0) {
                        j10 = iIntValue;
                        if (j10 < 0) {
                            if (j10 == -2) {
                                j11 = 7;
                            } else if (j10 == -3) {
                                j11 = 15;
                            } else if (j10 == -4) {
                                j11 = 60;
                            } else {
                                j11 = 30;
                            }
                            jB = com.uc.crashsdk.a.b();
                            if (jB == 0) {
                                jCurrentTimeMillis = -1;
                            } else {
                                jCurrentTimeMillis = (System.currentTimeMillis() - jB) / 86400000;
                            }
                            if (jCurrentTimeMillis <= j11) {
                                j10 = 1;
                            } else {
                                j10 = jCurrentTimeMillis - j11;
                            }
                        }
                        if (j10 != 1 || j10 <= 0 || System.currentTimeMillis() % j10 == 0) {
                            z10 = true;
                        }
                    }
                } else {
                    num = A.get("nocrash");
                }
            }
            iIntValue = num.intValue();
            if (iIntValue != 0) {
                j10 = iIntValue;
                if (j10 < 0) {
                    if (j10 == -2) {
                        j11 = 7;
                    } else if (j10 == -3) {
                        j11 = 15;
                    } else if (j10 == -4) {
                        j11 = 60;
                    } else {
                        j11 = 30;
                    }
                    jB = com.uc.crashsdk.a.b();
                    if (jB == 0) {
                        jCurrentTimeMillis = -1;
                    } else {
                        jCurrentTimeMillis = (System.currentTimeMillis() - jB) / 86400000;
                    }
                    if (jCurrentTimeMillis <= j11) {
                        j10 = 1;
                    } else {
                        j10 = jCurrentTimeMillis - j11;
                    }
                }
                if (j10 != 1) {
                    z10 = true;
                } else {
                    z10 = true;
                }
            }
        }
        return z10;
    }

    private static Map<String, Integer> q(String str) {
        HashMap map = new HashMap();
        for (String str2 : str.split(Constants.TIPS_SPECIAL_TAG, 30)) {
            String[] strArrSplit = str2.split(":", 3);
            if (strArrSplit.length == 2) {
                String strTrim = strArrSplit[0].trim();
                if (!com.uc.crashsdk.a.g.a(strTrim)) {
                    int i10 = 1;
                    try {
                        i10 = Integer.parseInt(strArrSplit[1].trim(), 10);
                    } catch (Throwable th) {
                        com.uc.crashsdk.a.g.a(th);
                    }
                    map.put(strTrim, Integer.valueOf(i10));
                }
            }
        }
        return map;
    }

    private static void r(String str) {
        if (g.q()) {
            try {
                ab();
            } catch (Throwable th) {
                com.uc.crashsdk.a.g.a(th);
            }
            if (str == null || "".equals(str)) {
                return;
            }
            try {
                File file = new File(g.Y());
                if (!file.exists()) {
                    file.mkdirs();
                }
                com.uc.crashsdk.a.a.a("crashsdk", "copy log to: " + file);
                com.uc.crashsdk.a.g.a(new File(str), file);
            } catch (Throwable th2) {
                com.uc.crashsdk.a.g.a(th2);
            }
        }
    }

    private static String s(String str) {
        return String.format("$^%s^$", str);
    }

    public static void t() {
        Thread.setDefaultUncaughtExceptionHandler(T);
    }

    static boolean u() {
        return f84102c.get() || aa();
    }

    public static Throwable v() {
        return U;
    }

    public static int w() {
        if (com.uc.crashsdk.b.I() == 5) {
            return Z;
        }
        return 100;
    }

    public static void x() {
        long jO = g.o();
        if (jO < 0) {
            return;
        }
        boolean z10 = com.uc.crashsdk.b.I() == 5;
        com.uc.crashsdk.a.f.a(0, new com.uc.crashsdk.a.e(401));
        if (z10) {
            com.uc.crashsdk.a.e eVar = new com.uc.crashsdk.a.e(402);
            X = eVar;
            com.uc.crashsdk.a.f.a(0, eVar, jO);
        }
    }

    static void y() {
        if (com.uc.crashsdk.b.f84063c && com.uc.crashsdk.a.f83979c && !com.uc.crashsdk.a.f.b(f84097aa)) {
            com.uc.crashsdk.a.f.a(0, f84097aa, 1000L);
        }
    }

    public static boolean z() {
        synchronized (Y) {
            Runnable runnable = X;
            if (runnable == null || W) {
                return false;
            }
            com.uc.crashsdk.a.f.a(runnable);
            X = null;
            return true;
        }
    }

    @Override // java.lang.Thread.UncaughtExceptionHandler
    public void uncaughtException(Thread thread, Throwable th) {
        a(thread, th, false);
    }

    static String d() {
        String str = f84107i;
        if (str != null) {
            return str;
        }
        String strJ = j(null);
        f84107i = strJ;
        return strJ;
    }

    public static String e() {
        String str;
        String str2;
        String str3;
        String str4;
        if (!com.uc.crashsdk.a.g.a(f84108j)) {
            return f84108j;
        }
        String str5 = null;
        try {
            Field declaredField = Build.class.getDeclaredField("SUPPORTED_ABIS");
            declaredField.setAccessible(true);
            Object obj = declaredField.get(null);
            if (obj != null && (obj instanceof String[])) {
                String[] strArr = (String[]) obj;
                StringBuilder sb2 = new StringBuilder();
                int length = strArr.length;
                int i10 = 0;
                boolean z10 = true;
                while (i10 < length) {
                    String str6 = strArr[i10];
                    if (!z10) {
                        sb2.append(",");
                    }
                    sb2.append(str6);
                    i10++;
                    z10 = false;
                }
                f84108j = sb2.toString();
            }
        } catch (Throwable unused) {
        }
        if (com.uc.crashsdk.a.g.a(f84108j)) {
            try {
                str3 = Build.CPU_ABI;
                try {
                    str4 = Build.CPU_ABI2;
                } catch (Throwable unused2) {
                    str4 = null;
                }
            } catch (Throwable unused3) {
                str3 = null;
            }
            boolean z11 = !com.uc.crashsdk.a.g.a(str3);
            if (z11) {
                f84108j = str3;
            }
            if (!com.uc.crashsdk.a.g.a(str4)) {
                if (z11) {
                    f84108j += ",";
                    f84108j += str4;
                } else {
                    f84108j = str4;
                }
            }
        }
        try {
            Method declaredMethod = Class.forName("android.os.SystemProperties").getDeclaredMethod("get", String.class, String.class);
            if (declaredMethod != null) {
                declaredMethod.setAccessible(true);
                str = (String) declaredMethod.invoke(null, "ro.product.cpu.abi", null);
                try {
                    str2 = (String) declaredMethod.invoke(null, "ro.product.cpu.abi2", null);
                } catch (Throwable th) {
                    th = th;
                    com.uc.crashsdk.a.g.a(th);
                    str2 = null;
                }
                str5 = str;
            } else {
                str2 = null;
            }
        } catch (Throwable th2) {
            th = th2;
            str = null;
        }
        try {
            if (!com.uc.crashsdk.a.g.a(str5) && !f84108j.contains(str5)) {
                f84108j += ",";
                f84108j += str5;
            }
            if (!com.uc.crashsdk.a.g.a(str2) && !f84108j.contains(str2)) {
                f84108j += ",";
                f84108j += str2;
            }
        } catch (Throwable th3) {
            com.uc.crashsdk.a.g.a(th3);
        }
        return f84108j;
    }

    public static String f() {
        if (com.uc.crashsdk.a.g.a(f84109k)) {
            T();
        }
        return f84109k;
    }

    private static long h(String str) {
        try {
            Method declaredMethod = Class.forName("android.os.SystemProperties").getDeclaredMethod("getLong", String.class, Long.TYPE);
            if (declaredMethod != null) {
                declaredMethod.setAccessible(true);
                return ((Long) declaredMethod.invoke(null, str, 0L)).longValue();
            }
        } catch (Throwable th) {
            com.uc.crashsdk.a.g.a(th);
        }
        return 0L;
    }

    private static String i(String str) {
        try {
            return str.replaceAll("[^0-9a-zA-Z-.]", "-");
        } catch (Throwable unused) {
            return "unknown";
        }
    }

    public static void s() {
        T = Thread.getDefaultUncaughtExceptionHandler();
        Thread.setDefaultUncaughtExceptionHandler(new e());
    }

    static void c() {
        f84107i = null;
    }

    static boolean i() {
        return f84103d;
    }

    public static boolean b(int i10, Object[] objArr) {
        if (i10 == 451) {
            if (f84096a || objArr != null) {
                return a((String) objArr[0], (d) objArr[1]);
            }
            throw new AssertionError();
        }
        if (i10 != 452) {
            if (f84096a) {
                return false;
            }
            throw new AssertionError();
        }
        if (!f84096a && objArr == null) {
            throw new AssertionError();
        }
        String str = (String) objArr[0];
        d dVar = (d) objArr[1];
        return com.uc.crashsdk.a.g.a(new File(str), String.format(Locale.US, "%d %d %d %d", Long.valueOf(dVar.f84131a), Long.valueOf(dVar.f84132b), Integer.valueOf(dVar.f84133c), Integer.valueOf(dVar.f84134d)).getBytes());
    }

    private static void c(OutputStream outputStream) {
        int iJ;
        if (com.uc.crashsdk.b.f84064d) {
            String strO = com.uc.crashsdk.b.o();
            f84106h = false;
            if (1 == JNIBridge.cmd(17, strO)) {
                File file = new File(strO);
                try {
                    byte[] bArrE = com.uc.crashsdk.a.g.e(file);
                    if (bArrE != null) {
                        outputStream.write(bArrE);
                    }
                } catch (Throwable th) {
                    a(th, outputStream);
                }
                try {
                    file.delete();
                } catch (Throwable th2) {
                    a(th2, outputStream);
                }
                f84106h = true;
                a(outputStream);
            }
            f84106h = true;
            return;
        }
        File[] fileArrListFiles = null;
        try {
            iJ = g.J();
            try {
                fileArrListFiles = new File("/proc/self/fd").listFiles();
                if (fileArrListFiles != null) {
                    outputStream.write(String.format(Locale.US, "opened file count: %d, write limit: %d.\n", Integer.valueOf(fileArrListFiles.length), Integer.valueOf(iJ)).getBytes("UTF-8"));
                } else {
                    outputStream.write("[DEBUG] listFiles failed!\n".getBytes("UTF-8"));
                }
            } catch (Throwable th3) {
                th = th3;
                a(th, outputStream);
            }
        } catch (Throwable th4) {
            th = th4;
            iJ = 900;
        }
        if (fileArrListFiles != null) {
            try {
                if (fileArrListFiles.length >= iJ) {
                    outputStream.write("opened files:\n".getBytes("UTF-8"));
                    StringBuilder sb2 = new StringBuilder();
                    try {
                        for (File file2 : fileArrListFiles) {
                            sb2.append(file2.getName());
                            sb2.append(" -> ");
                            sb2.append(file2.getCanonicalPath());
                            sb2.append("\n");
                        }
                    } catch (Throwable th5) {
                        a(th5, outputStream);
                    }
                    outputStream.write(sb2.toString().getBytes("UTF-8"));
                }
            } catch (Throwable th6) {
                a(th6, outputStream);
            }
        }
        a(outputStream);
    }

    static String g() {
        try {
            StringBuilder sb2 = new StringBuilder();
            sb2.append("JavaMax:    ");
            sb2.append(Runtime.getRuntime().maxMemory() / 1024);
            sb2.append(" kB\n");
            sb2.append("JavaTotal:  ");
            sb2.append(Runtime.getRuntime().totalMemory() / 1024);
            sb2.append(" kB\n");
            sb2.append("JavaFree:   ");
            sb2.append(Runtime.getRuntime().freeMemory() / 1024);
            sb2.append(" kB\n");
            sb2.append("NativeHeap: ");
            sb2.append(Debug.getNativeHeapSize() / 1024);
            sb2.append(" kB\n");
            sb2.append("NativeAllocated: ");
            sb2.append(Debug.getNativeHeapAllocatedSize() / 1024);
            sb2.append(" kB\n");
            sb2.append("NativeFree: ");
            sb2.append(Debug.getNativeHeapFreeSize() / 1024);
            sb2.append(" kB\n");
            try {
                ActivityManager activityManager = (ActivityManager) com.uc.crashsdk.a.g.a().getSystemService(TTDownloadField.TT_ACTIVITY);
                if (activityManager != null) {
                    ActivityManager.MemoryInfo memoryInfo = new ActivityManager.MemoryInfo();
                    activityManager.getMemoryInfo(memoryInfo);
                    sb2.append("availMem:   ");
                    sb2.append(memoryInfo.availMem / 1024);
                    sb2.append(" kB\n");
                    sb2.append("threshold:  ");
                    sb2.append(memoryInfo.threshold / 1024);
                    sb2.append(" kB\n");
                    sb2.append("lowMemory:  ");
                    sb2.append(memoryInfo.lowMemory);
                    sb2.append("\n");
                }
            } catch (Throwable th) {
                com.uc.crashsdk.a.g.a(th);
            }
            return sb2.toString();
        } catch (Throwable th2) {
            com.uc.crashsdk.a.g.a(th2);
            return "";
        }
    }

    private static void d(OutputStream outputStream) {
        int iK;
        int length;
        File[] fileArrListFiles = null;
        try {
            iK = g.K();
            try {
                fileArrListFiles = new File("/proc/self/task").listFiles();
                if (fileArrListFiles == null || (length = fileArrListFiles.length) < iK) {
                    return;
                }
            } catch (Throwable th) {
                th = th;
                com.uc.crashsdk.a.g.a(th);
                length = 0;
            }
        } catch (Throwable th2) {
            th = th2;
            iK = 300;
        }
        if (fileArrListFiles == null) {
            return;
        }
        try {
            outputStream.write("threads info:\n".getBytes("UTF-8"));
            outputStream.write(String.format(Locale.US, "threads count: %d, dump limit: %d.\n", Integer.valueOf(length), Integer.valueOf(iK)).getBytes("UTF-8"));
            outputStream.write(" tid     name\n".getBytes("UTF-8"));
            for (File file : fileArrListFiles) {
                outputStream.write(String.format(Locale.US, "%5s %s\n", file.getName(), l(com.uc.crashsdk.a.g.a(new File(file.getPath(), "comm"), 128, false))).getBytes("UTF-8"));
            }
        } catch (Throwable th3) {
            a(th3, outputStream);
        }
        a(outputStream);
    }

    private static void f(OutputStream outputStream) {
        String strM;
        try {
            outputStream.write("recent status:\n".getBytes("UTF-8"));
        } catch (Throwable th) {
            a(th, outputStream);
        }
        try {
            if (ag) {
                strM = s("LASTVER");
            } else {
                strM = com.uc.crashsdk.a.m();
            }
            outputStream.write(String.format(Locale.US, "last version: '%s'\n", strM).getBytes("UTF-8"));
        } catch (Throwable th2) {
            a(th2, outputStream);
        }
        try {
            ArrayList<String> arrayList = f84117s;
            synchronized (arrayList) {
                if (f84119u != null) {
                    outputStream.write(String.format(Locale.US, "generating log: %s\n", f84119u).getBytes("UTF-8"));
                }
                if (f84118t > 0 || arrayList.size() > 0) {
                    outputStream.write(String.format(Locale.US, "generated %d logs, recent are:\n", Integer.valueOf(f84118t)).getBytes("UTF-8"));
                    Iterator<String> it2 = arrayList.iterator();
                    while (it2.hasNext()) {
                        outputStream.write(String.format(Locale.US, "* %s\n", it2.next()).getBytes("UTF-8"));
                    }
                }
            }
            Locale locale = Locale.US;
            outputStream.write(String.format(locale, "dumping all threads: %s\n", Boolean.valueOf(f84120v)).getBytes("UTF-8"));
            String str = f84121w;
            if (str != null) {
                outputStream.write(String.format(locale, "dumping threads: %s\n", str).getBytes("UTF-8"));
            }
        } catch (Throwable th3) {
            a(th3, outputStream);
        }
        a(outputStream);
    }

    public static String k() {
        String strA = f84122x;
        if (com.uc.crashsdk.a.g.a(strA)) {
            synchronized (f84123y) {
                strA = com.uc.crashsdk.a.g.a(com.uc.crashsdk.b.i(), g.y(), true);
                f84122x = strA;
            }
        }
        return strA;
    }

    public static void l() {
        synchronized (f84123y) {
            f84122x = null;
        }
    }

    public static void a(int i10, Object[] objArr) {
        int i11;
        switch (i10) {
            case 401:
                JNIBridge.nativeCmd(10, com.uc.crashsdk.b.I() == 5 ? 1L : 0L, null, null);
                com.uc.crashsdk.a.f83979c = true;
                com.uc.crashsdk.a.a(false);
                L = true;
                Z();
                y();
                return;
            case 402:
                Object obj = Y;
                synchronized (obj) {
                    if (X == null) {
                        return;
                    }
                    W = true;
                    if (com.uc.crashsdk.b.q()) {
                        return;
                    }
                    if (!com.uc.crashsdk.a.d.e()) {
                        com.uc.crashsdk.a.a.c("DEBUG", com.uc.crashsdk.a.d.b());
                        return;
                    }
                    if (!d(LogType.UNEXP_TYPE)) {
                        com.uc.crashsdk.a.a.d("DEBUG", "unexp sample miss");
                        return;
                    }
                    int iNativeGenerateUnexpLog = JNIBridge.nativeGenerateUnexpLog(g.o(), g.p());
                    if (iNativeGenerateUnexpLog != 0) {
                        f.a(11);
                        if ((iNativeGenerateUnexpLog & 4352) != 0) {
                            Z = 105;
                            i11 = 30;
                        } else if ((iNativeGenerateUnexpLog & LogType.UNEXP_EXIT) != 0) {
                            Z = 104;
                            i11 = 31;
                        } else {
                            if ((iNativeGenerateUnexpLog & LogType.UNEXP_RESTART) != 0) {
                                Z = 106;
                                i11 = 32;
                            } else if ((iNativeGenerateUnexpLog & LogType.UNEXP_ANR) != 0) {
                                Z = 103;
                                f.a(10);
                            } else if ((iNativeGenerateUnexpLog & LogType.UNEXP_LOW_MEMORY) != 0) {
                                Z = 107;
                                f.a(29);
                            } else {
                                Z = 102;
                            }
                            a(true);
                        }
                        f.a(i11);
                        a(true);
                    }
                    synchronized (obj) {
                        X = null;
                        break;
                    }
                    return;
                }
            case 403:
                ab();
                return;
            case 404:
            default:
                if (!f84096a) {
                    throw new AssertionError();
                }
                return;
            case 405:
                L = false;
                StringBuilder sbY = Y();
                String strG = com.uc.crashsdk.b.g();
                if (sbY != null) {
                    com.uc.crashsdk.a.g.a(new File(strG), sbY.toString());
                    return;
                }
                return;
            case 406:
                if (!f84096a && objArr == null) {
                    throw new AssertionError();
                }
                a((String) objArr[0], ((Boolean) objArr[1]).booleanValue(), ((Boolean) objArr[2]).booleanValue());
                return;
            case 407:
                try {
                    com.uc.crashsdk.a.d();
                    return;
                } catch (Throwable th) {
                    com.uc.crashsdk.a.g.a(th);
                    return;
                }
            case TTAdConstant.INTERACTION_TYPE_CODE /* 408 */:
                synchronized (f84098ab) {
                    if (!f84099ac && g.Q() && com.uc.crashsdk.b.z()) {
                        com.uc.crashsdk.b.s();
                        h.f();
                        f.c();
                        if (com.uc.crashsdk.b.F()) {
                            C();
                        }
                        if (g.Q()) {
                            a(Calendar.getInstance());
                        }
                        f84099ac = true;
                        return;
                    }
                    return;
                }
            case TTAdConstant.IMAGE_LIST_CODE /* 409 */:
                d(false);
                return;
            case TTAdConstant.IMAGE_LIST_SIZE_CODE /* 410 */:
                a(false, true);
                return;
            case TTAdConstant.IMAGE_CODE /* 411 */:
                if (com.uc.crashsdk.b.f84064d) {
                    JNIBridge.set(28, d(LogType.NATIVE_TYPE));
                    JNIBridge.set(29, d(LogType.ANR_TYPE));
                    return;
                }
                return;
            case TTAdConstant.IMAGE_URL_CODE /* 412 */:
                if (!R && com.uc.crashsdk.b.B() && g.M()) {
                    b(com.uc.crashsdk.a.g.a());
                    return;
                }
                if (R) {
                    if (com.uc.crashsdk.b.B() && g.M()) {
                        return;
                    }
                    try {
                        com.uc.crashsdk.a.g.a().unregisterReceiver(Q);
                        R = false;
                        return;
                    } catch (Throwable th2) {
                        com.uc.crashsdk.a.g.a(th2);
                        return;
                    }
                }
                return;
            case TTAdConstant.VIDEO_INFO_CODE /* 413 */:
                JNIBridge.cmd(8);
                return;
            case TTAdConstant.VIDEO_URL_CODE /* 414 */:
                try {
                    if (d(com.uc.crashsdk.a.g.a())) {
                        return;
                    }
                    int i12 = N + 1;
                    N = i12;
                    if (i12 < 10) {
                        X();
                        return;
                    } else {
                        if (com.uc.crashsdk.b.f84064d) {
                            JNIBridge.set(130, "(get failed)");
                            return;
                        }
                        return;
                    }
                } catch (Throwable th3) {
                    com.uc.crashsdk.a.g.a(th3);
                    return;
                }
            case TTAdConstant.VIDEO_COVER_URL_CODE /* 415 */:
                if (!f84096a && objArr == null) {
                    throw new AssertionError();
                }
                long jLongValue = ((Long) objArr[0]).longValue();
                Calendar calendar = Calendar.getInstance();
                if (calendar.getTimeInMillis() >= jLongValue) {
                    h.g();
                    f.a(100);
                    d(true);
                    f.a(true);
                    h.b();
                } else {
                    h.h();
                    h.i();
                    h.c();
                }
                a(calendar);
                break;
                break;
            case 416:
                break;
        }
        W();
    }

    private static class a extends OutputStream {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        private final long f84126a;

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        private final OutputStream f84127b;

        /* JADX INFO: renamed from: c, reason: collision with root package name */
        private int f84128c = 0;

        /* JADX INFO: renamed from: d, reason: collision with root package name */
        private int f84129d = 0;

        /* JADX INFO: renamed from: e, reason: collision with root package name */
        private boolean f84130e = false;

        a(long j10, OutputStream outputStream) {
            this.f84126a = j10;
            this.f84127b = outputStream;
        }

        /* JADX WARN: Code duplicated, block: B:11:0x0019  */
        private int a(byte[] bArr, int i10, int i11) throws IOException {
            int i12;
            this.f84129d += i11;
            if (this.f84130e) {
                return 0;
            }
            int iA = g.A();
            if (iA > 0) {
                int i13 = this.f84128c;
                if (i13 + i11 > iA) {
                    i12 = iA - i13;
                } else {
                    i12 = i11;
                }
            } else {
                i12 = i11;
            }
            this.f84128c += i12;
            if (this.f84126a != 0) {
                b(new String(bArr, i10, i12));
            } else {
                this.f84127b.write(bArr, i10, i12);
            }
            if (i12 < i11) {
                this.f84130e = true;
            }
            return i12;
        }

        private void b(String str) {
            if (com.uc.crashsdk.b.f84064d) {
                JNIBridge.nativeClientWriteData(this.f84126a, str);
            }
        }

        @Override // java.io.OutputStream
        public final void write(int i10) throws IOException {
            if (e.f84106h && e.O()) {
                com.uc.crashsdk.a.a.d("DEBUG", String.format(Locale.US, "%c", Integer.valueOf(i10)));
            }
            if (this.f84126a != 0) {
                b(String.format(Locale.US, "%c", Integer.valueOf(i10)));
            } else {
                this.f84127b.write(i10);
            }
            this.f84128c++;
            this.f84129d++;
        }

        @Override // java.io.OutputStream
        public final void write(byte[] bArr, int i10, int i11) throws IOException {
            if (e.f84106h && e.O()) {
                byte[] bArr2 = new byte[i11];
                System.arraycopy(bArr, i10, bArr2, 0, i11);
                if (i11 != 1 || bArr2[0] != 10) {
                    try {
                        com.uc.crashsdk.a.a.d("DEBUG", new String(bArr2));
                    } catch (Throwable unused) {
                    }
                }
            }
            a(bArr, i10, i11);
        }

        final void a() {
            try {
                if (this.f84129d - this.f84128c > 0) {
                    a("\n");
                    a("--- --- --- --- --- --- --- --- --- --- --- --- --- --- --- ---\n");
                }
                a(String.format(Locale.US, "Full: %d bytes, write: %d bytes, limit: %d bytes, reject: %d bytes.\n", Integer.valueOf(this.f84129d), Integer.valueOf(this.f84128c), Integer.valueOf(g.A()), Integer.valueOf(this.f84129d - this.f84128c)));
            } catch (Throwable th) {
                com.uc.crashsdk.a.g.a(th);
            }
        }

        @Override // java.io.OutputStream
        public final void write(byte[] bArr) throws IOException {
            if (e.f84106h && e.O() && (bArr.length != 1 || bArr[0] != 10)) {
                try {
                    com.uc.crashsdk.a.a.d("DEBUG", new String(bArr));
                } catch (Throwable unused) {
                }
            }
            a(bArr, 0, bArr.length);
        }

        final void a(String str) throws IOException {
            if (e.f84106h && e.O()) {
                com.uc.crashsdk.a.a.d("DEBUG", str);
            }
            if (this.f84126a != 0) {
                b(str);
            } else {
                this.f84127b.write(str.getBytes("UTF-8"));
            }
        }
    }

    public static String h() {
        String str = f84111m;
        if (str != null) {
            return str;
        }
        String strA = a(Process.myPid());
        f84111m = strA;
        return strA;
    }

    private static class d {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        long f84131a;

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        long f84132b;

        /* JADX INFO: renamed from: c, reason: collision with root package name */
        int f84133c;

        /* JADX INFO: renamed from: d, reason: collision with root package name */
        int f84134d;

        /* JADX INFO: renamed from: e, reason: collision with root package name */
        boolean f84135e;

        /* JADX INFO: renamed from: f, reason: collision with root package name */
        boolean f84136f;

        /* JADX INFO: renamed from: g, reason: collision with root package name */
        boolean f84137g;

        private d() {
            this.f84131a = 0L;
            this.f84132b = 0L;
            this.f84133c = 0;
            this.f84134d = 0;
            this.f84135e = false;
            this.f84136f = false;
            this.f84137g = false;
        }

        /* synthetic */ d(byte b10) {
            this();
        }
    }

    public static void j() {
        try {
            StrictMode.setThreadPolicy(new StrictMode.ThreadPolicy.Builder(StrictMode.getThreadPolicy()).permitNetwork().build());
        } catch (Throwable th) {
            com.uc.crashsdk.a.g.a(th);
        }
    }

    public static void m() {
        if (ag) {
            return;
        }
        com.uc.crashsdk.a.f.a(1, new com.uc.crashsdk.a.e(TTAdConstant.IMAGE_CODE), 1000L);
    }

    public static void p() {
        String strA;
        Throwable th;
        if (com.uc.crashsdk.a.g.a(B)) {
            String string = null;
            try {
                File file = new File(g.W() + "unique");
                if (file.exists()) {
                    strA = com.uc.crashsdk.a.g.a(file, 48, false);
                    try {
                        if (strA != null) {
                            try {
                                if (strA.length() == 36) {
                                    string = strA.replaceAll("[^0-9a-zA-Z-]", "-");
                                }
                            } catch (Exception e10) {
                                com.uc.crashsdk.a.g.a(e10);
                                string = strA;
                            }
                        } else {
                            string = strA;
                        }
                    } catch (Throwable th2) {
                        th = th2;
                        com.uc.crashsdk.a.g.a(th);
                        string = strA;
                    }
                }
                if (com.uc.crashsdk.a.g.a(string)) {
                    com.uc.crashsdk.b.G();
                    string = UUID.randomUUID().toString();
                    if (!com.uc.crashsdk.a.g.a(string)) {
                        com.uc.crashsdk.a.g.a(file, string.getBytes());
                    }
                }
            } catch (Throwable th3) {
                strA = string;
                th = th3;
            }
            B = string;
        }
    }

    public static String q() {
        return B;
    }

    static void r() {
        O = false;
        if (!com.uc.crashsdk.b.B()) {
            com.uc.crashsdk.a.f.a(3, new com.uc.crashsdk.a.e(416), 11000L);
        }
        if (V()) {
            return;
        }
        N = 0;
        X();
    }

    private static void b(OutputStream outputStream, String str, String str2) {
        String strS;
        String strNativeGet;
        try {
            outputStream.write("*** *** *** *** *** *** *** *** *** *** *** *** *** *** *** ***\n".getBytes("UTF-8"));
        } catch (Throwable th) {
            a(th, outputStream);
        }
        try {
            Locale locale = Locale.US;
            outputStream.write(String.format(locale, "Basic Information: 'pid: %d/tid: %d/time: %s'\n", Integer.valueOf(Process.myPid()), Integer.valueOf(Process.myTid()), n()).getBytes("UTF-8"));
            Object[] objArr = new Object[3];
            objArr[0] = e();
            if (com.uc.crashsdk.a.g.a(f84110l)) {
                T();
            }
            objArr[1] = f84110l;
            objArr[2] = f();
            outputStream.write(String.format(locale, "Cpu Information: 'abi: %s/processor: %s/hardware: %s'\n", objArr).getBytes("UTF-8"));
        } catch (Throwable th2) {
            a(th2, outputStream);
        }
        try {
            Locale locale2 = Locale.US;
            outputStream.write(String.format(locale2, "Mobile Information: 'model: %s/version: %s/sdk: %d'\n", Build.MODEL, Build.VERSION.RELEASE, Integer.valueOf(Build.VERSION.SDK_INT)).getBytes("UTF-8"));
            outputStream.write(("Build fingerprint: '" + Build.FINGERPRINT + "'\n").getBytes("UTF-8"));
            Object[] objArr2 = new Object[4];
            objArr2[0] = a(new Date(f84101b));
            objArr2[1] = Long.valueOf(Runtime.getRuntime().maxMemory());
            objArr2[2] = com.uc.crashsdk.a.g.d();
            objArr2[3] = com.uc.crashsdk.b.B() ? "fg" : "bg";
            outputStream.write(String.format(locale2, "Runtime Information: 'start: %s/maxheap: %s/primaryabi: %s/ground: %s'\n", objArr2).getBytes("UTF-8"));
        } catch (Throwable th3) {
            a(th3, outputStream);
        }
        try {
            Locale locale3 = Locale.US;
            outputStream.write(String.format(locale3, "Application Information: 'version: %s/subversion: %s/buildseq: %s/versioncode: %d'\n", g.T(), g.U(), g.V(), Integer.valueOf(com.uc.crashsdk.a.c())).getBytes("UTF-8"));
            String str3 = "0";
            String str4 = "";
            if (com.uc.crashsdk.b.f84064d) {
                String strNativeGet2 = JNIBridge.nativeGet(1, 0L, null);
                strNativeGet = JNIBridge.nativeGet(2, 0L, null);
                str3 = strNativeGet2;
            } else {
                strNativeGet = "";
            }
            outputStream.write(String.format(locale3, "CrashSDK Information: 'version: %s/nativeseq: %s/javaseq: %s/arch: %s/target: %s'\n", "3.3.2.2", str3, "211215141717", strNativeGet, "release").getBytes("UTF-8"));
            if (str != null) {
                str4 = str;
            }
            outputStream.write(("Report Name: " + str4.substring(str4.lastIndexOf(47) + 1) + "\n").getBytes("UTF-8"));
        } catch (Throwable th4) {
            a(th4, outputStream);
        }
        try {
            if (ag) {
                strS = s("UUID");
            } else {
                strS = B;
            }
            outputStream.write(String.format("UUID: %s\n", strS).getBytes("UTF-8"));
            outputStream.write(("Log Type: " + str2 + "\n").getBytes("UTF-8"));
        } catch (Throwable th5) {
            a(th5, outputStream);
        }
        try {
            String strE = com.uc.crashsdk.b.E();
            if (com.uc.crashsdk.a.g.a(strE)) {
                strE = "(none)";
            }
            outputStream.write(("Activity: " + strE + "\n").getBytes("UTF-8"));
        } catch (Throwable th6) {
            a(th6, outputStream);
        }
        a(outputStream);
        try {
            com.uc.crashsdk.a.a(outputStream, "UTF-8");
            if (ag) {
                f84106h = false;
                outputStream.write(s("HEADER").getBytes("UTF-8"));
                f84106h = true;
            }
        } catch (Throwable th7) {
            a(th7, outputStream);
        }
        a(outputStream);
    }

    static String n() {
        return a(new Date());
    }

    static boolean d(String str) {
        if (ag) {
            return true;
        }
        try {
            return p(str);
        } catch (Throwable th) {
            com.uc.crashsdk.a.g.a(th);
            return true;
        }
    }

    /* JADX WARN: Multi-variable type inference failed */
    static void a(boolean z10) {
        File[] fileArrListFiles;
        try {
            if (com.uc.crashsdk.b.y() && (fileArrListFiles = new File(g.X()).listFiles()) != null) {
                int iL = g.l();
                int iM = g.m();
                if (fileArrListFiles.length < Math.min(iL, iM)) {
                    return;
                }
                Object[] objArr = 0;
                int i10 = 0;
                int i11 = 0;
                for (File file : fileArrListFiles) {
                    if (b(file)) {
                        i10++;
                    } else {
                        i11++;
                    }
                }
                int i12 = (!z10 || i10 < iL) ? 0 : (i10 - iL) + 1;
                int i13 = (z10 || i11 < iM) ? 0 : (i11 - iM) + 1;
                if (i12 == 0 && i13 == 0) {
                    return;
                }
                Arrays.sort(fileArrListFiles, new b(objArr == true ? 1 : 0));
                int i14 = i12;
                int i15 = i13;
                for (File file2 : fileArrListFiles) {
                    boolean zB = b(file2);
                    if (zB && i14 > 0) {
                        com.uc.crashsdk.a.a.a("crashsdk", "Delete oldest crash log: " + file2.getPath());
                        file2.delete();
                        i14 += -1;
                    } else if (!zB && i15 > 0) {
                        com.uc.crashsdk.a.a.a("crashsdk", "Delete oldest custom log: " + file2.getPath());
                        file2.delete();
                        i15 += -1;
                    }
                    if (i14 == 0 && i15 == 0) {
                        break;
                    }
                }
                f.a(16, i12 + i13);
                if (i12 > 0) {
                    f.a(22, i12);
                }
                if (i13 > 0) {
                    f.a(23, i13);
                }
            }
        } catch (Throwable th) {
            com.uc.crashsdk.a.g.a(th);
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static boolean d(Context context) {
        List<ActivityManager.ProcessErrorStateInfo> processesInErrorState;
        ActivityManager activityManager = (ActivityManager) context.getSystemService(TTDownloadField.TT_ACTIVITY);
        boolean z10 = false;
        if (activityManager == null || (processesInErrorState = activityManager.getProcessesInErrorState()) == null) {
            return false;
        }
        int iMyPid = Process.myPid();
        for (ActivityManager.ProcessErrorStateInfo processErrorStateInfo : processesInErrorState) {
            if (processErrorStateInfo.pid == iMyPid) {
                O = true;
                if (O()) {
                    com.uc.crashsdk.a.a.d("crashsdk", "ANR occurred in process: " + processErrorStateInfo.processName);
                }
                if (com.uc.crashsdk.b.f84064d) {
                    JNIBridge.set(130, processErrorStateInfo.longMsg);
                }
                z10 = true;
                break;
            }
        }
        if (!z10 && com.uc.crashsdk.b.f84064d) {
            W();
        }
        return true;
    }

    public static void o() {
        f84101b = System.currentTimeMillis();
    }

    private static void e(OutputStream outputStream) {
        BufferedReader bufferedReader;
        int iIndexOf;
        if (com.uc.crashsdk.b.f84064d) {
            try {
                outputStream.write("solib build id:\n".getBytes("UTF-8"));
            } catch (Throwable th) {
                a(th, outputStream);
            }
            FileReader fileReader = null;
            try {
                ArrayList arrayList = new ArrayList();
                FileReader fileReader2 = new FileReader(new File("/proc/self/maps"));
                try {
                    bufferedReader = new BufferedReader(fileReader2, 512);
                    while (true) {
                        try {
                            String line = bufferedReader.readLine();
                            if (line == null) {
                                break;
                            }
                            if (line.endsWith(".so") && (iIndexOf = line.indexOf(47)) != -1) {
                                String strSubstring = line.substring(iIndexOf);
                                if ((strSubstring.contains("/data/") || strSubstring.contains(com.uc.crashsdk.a.f83977a)) && !arrayList.contains(strSubstring)) {
                                    arrayList.add(strSubstring);
                                    if (ag) {
                                        try {
                                            outputStream.write((String.format("$^%s`%s^$", "SOBUILDID", strSubstring) + "\n").getBytes("UTF-8"));
                                        } catch (Throwable th2) {
                                            a(th2, outputStream);
                                        }
                                    } else {
                                        outputStream.write(String.format(Locale.US, "%s: %s\n", strSubstring, JNIBridge.nativeGet(3, 0L, strSubstring)).getBytes("UTF-8"));
                                    }
                                }
                            }
                        } catch (Throwable th3) {
                            th = th3;
                            fileReader = fileReader2;
                            try {
                                a(th, outputStream);
                                com.uc.crashsdk.a.g.a(fileReader);
                                com.uc.crashsdk.a.g.a(bufferedReader);
                                a(outputStream);
                            } catch (Throwable th4) {
                                com.uc.crashsdk.a.g.a(fileReader);
                                com.uc.crashsdk.a.g.a(bufferedReader);
                                throw th4;
                            }
                        }
                    }
                    com.uc.crashsdk.a.g.a(fileReader2);
                } catch (Throwable th5) {
                    th = th5;
                    bufferedReader = null;
                }
            } catch (Throwable th6) {
                th = th6;
                bufferedReader = null;
            }
            com.uc.crashsdk.a.g.a(bufferedReader);
            a(outputStream);
        }
    }

    public static void c(String str) {
        synchronized (f84124z) {
            com.uc.crashsdk.a.b.a(com.uc.crashsdk.b.l(), str + "\n");
        }
    }

    public static void d(boolean z10) {
        f.d(false);
        if (z10) {
            f.a(com.uc.crashsdk.b.c(), false);
            h.i();
        } else {
            f.a();
            h.i();
        }
    }

    public static int f(boolean z10) {
        int iB;
        if (z10) {
            iB = f.a(com.uc.crashsdk.b.c()) ? 1 : 0;
        } else {
            iB = f.b();
        }
        int iB2 = f.b(z10);
        return iB2 > iB ? iB2 : iB;
    }

    static void c(boolean z10) {
        boolean z11 = true;
        if (!R ? !z10 || !g.M() : z10 && g.M()) {
            z11 = false;
        }
        if (z11) {
            com.uc.crashsdk.a.e eVar = S;
            if (com.uc.crashsdk.a.f.b(eVar)) {
                com.uc.crashsdk.a.f.a(eVar);
            }
            com.uc.crashsdk.a.f.a(0, eVar, BaseCloudFileManager.ACK_TIMEOUT);
        }
    }

    static StringBuilder f(String str) {
        return a(Thread.currentThread().getStackTrace(), str);
    }

    static String a(String str, String str2) {
        try {
            BufferedReader bufferedReader = new BufferedReader(new InputStreamReader(Runtime.getRuntime().exec(Build.VERSION.SDK_INT >= 26 ? new String[]{"ps", "-ef"} : new String[]{"ps"}).getInputStream()));
            boolean zB = com.uc.crashsdk.a.g.b(str);
            boolean zB2 = com.uc.crashsdk.a.g.b(str2);
            ByteArrayOutputStream byteArrayOutputStream = new ByteArrayOutputStream();
            while (true) {
                String line = bufferedReader.readLine();
                if (line != null) {
                    if ((zB && line.contains(str)) || (zB2 && line.contains(str2)) || (line.indexOf(47) < 0 && line.indexOf(46) > 0)) {
                        byteArrayOutputStream.write(line.getBytes("UTF-8"));
                        byteArrayOutputStream.write("\n".getBytes("UTF-8"));
                    }
                } else {
                    return byteArrayOutputStream.toString("UTF-8");
                }
            }
        } catch (Throwable th) {
            com.uc.crashsdk.a.g.a(th);
            return "exception exists.";
        }
    }

    private static BufferedReader a(InputStreamReader inputStreamReader) {
        BufferedReader bufferedReader = null;
        int i10 = 8192;
        while (bufferedReader == null && i10 > 0) {
            try {
                bufferedReader = new BufferedReader(inputStreamReader, i10);
            } catch (Throwable unused) {
                i10 /= 2;
                if (i10 < 512) {
                    return bufferedReader;
                }
            }
        }
        return bufferedReader;
    }

    private static void a(OutputStream outputStream) {
        try {
            outputStream.write("--- --- --- --- --- --- --- --- --- --- --- --- --- --- --- ---\n".getBytes("UTF-8"));
        } catch (Throwable th) {
            a(th, outputStream);
        }
    }

    public static boolean e(String str) {
        try {
            if (!com.uc.crashsdk.a.g.b(str) || !str.startsWith("lib") || !str.endsWith(".so")) {
                return false;
            }
            System.loadLibrary(str.substring(3, str.length() - 3));
            return true;
        } catch (Throwable th) {
            com.uc.crashsdk.a.g.a(th);
            return false;
        }
    }

    private static String a(File file) {
        String canonicalPath;
        try {
            canonicalPath = file.getCanonicalPath();
        } catch (Throwable unused) {
            canonicalPath = null;
        }
        return com.uc.crashsdk.a.g.a(canonicalPath) ? file.getPath() : canonicalPath;
    }

    private static long a(StatFs statFs, String str, String str2) {
        Method declaredMethod = StatFs.class.getDeclaredMethod(str, new Class[0]);
        declaredMethod.setAccessible(true);
        Object objInvoke = declaredMethod.invoke(statFs, new Object[0]);
        if (objInvoke != null && (objInvoke instanceof Long)) {
            return ((Long) objInvoke).longValue();
        }
        try {
            Method declaredMethod2 = StatFs.class.getDeclaredMethod(str2, new Class[0]);
            declaredMethod2.setAccessible(true);
            Object objInvoke2 = declaredMethod2.invoke(statFs, new Object[0]);
            if (objInvoke2 == null || !(objInvoke2 instanceof Integer)) {
                return 0L;
            }
            return ((Integer) objInvoke2).intValue();
        } catch (Throwable th) {
            com.uc.crashsdk.a.g.a(th);
            return 0L;
        }
    }

    public static int e(boolean z10) {
        return f.a(z10);
    }

    private static void b(OutputStream outputStream) {
        BufferedReader bufferedReaderA = null;
        try {
            try {
                outputStream.write("logcat:\n".getBytes("UTF-8"));
                if (g.n() <= 0) {
                    try {
                        outputStream.write("[DEBUG] custom java logcat lines count is 0!\n".getBytes("UTF-8"));
                    } catch (Throwable th) {
                        a(th, outputStream);
                    }
                    a(outputStream);
                    com.uc.crashsdk.a.g.a((Closeable) null);
                    return;
                }
                int iN = g.n();
                bufferedReaderA = a(new InputStreamReader(Runtime.getRuntime().exec(new String[]{"logcat", "-d", "-b", com.umeng.analytics.pro.f.ax, "-b", "main", "-v", "threadtime", "-t", String.valueOf(iN)}).getInputStream()));
                if (bufferedReaderA == null) {
                    try {
                        outputStream.write("[DEBUG] alloc buffer failed!\n".getBytes("UTF-8"));
                    } catch (Throwable th2) {
                        a(th2, outputStream);
                    }
                    a(outputStream);
                    com.uc.crashsdk.a.g.a(bufferedReaderA);
                    return;
                }
                f84106h = false;
                int i10 = 0;
                int i11 = 0;
                while (true) {
                    String line = bufferedReaderA.readLine();
                    if (line != null) {
                        i10++;
                        if (i11 < iN && !line.contains(" I auditd ") && !line.contains(" I liblog ")) {
                            outputStream.write(line.getBytes("UTF-8"));
                            outputStream.write("\n".getBytes("UTF-8"));
                            i11++;
                        }
                    } else {
                        try {
                            break;
                        } catch (Throwable th3) {
                            a(th3, outputStream);
                        }
                    }
                }
                outputStream.write(String.format(Locale.US, "[DEBUG] Read %d lines, wrote %d lines.\n", Integer.valueOf(i10), Integer.valueOf(i11)).getBytes("UTF-8"));
                f84106h = true;
                com.uc.crashsdk.a.g.a(bufferedReaderA);
                a(outputStream);
                return;
            } catch (Throwable th4) {
                f84106h = true;
                a(th4, outputStream);
            }
            f84106h = true;
            a(th4, outputStream);
            com.uc.crashsdk.a.g.a(bufferedReaderA);
            a(outputStream);
            return;
        } catch (Throwable th5) {
            com.uc.crashsdk.a.g.a((Closeable) null);
            throw th5;
        }
    }

    private static void a(a aVar) {
        try {
            aVar.a(String.format(Locale.US, "log end: %s\n", n()));
        } catch (Throwable th) {
            a(th, aVar);
        }
    }

    /* JADX WARN: Code duplicated, block: B:19:0x0044 A[Catch: all -> 0x0062, TRY_LEAVE, TryCatch #0 {all -> 0x0062, blocks: (B:16:0x002e, B:17:0x003e, B:19:0x0044), top: B:27:0x002e }] */
    static int a(OutputStream outputStream, String str, int i10) {
        int i11 = 0;
        if (str == null) {
            a(outputStream);
            return 0;
        }
        try {
            String strA = com.uc.crashsdk.a.b.a(str);
            if (strA == null) {
                strA = "file: '" + str + "' not found or decode failed!";
            }
            int length = strA.length();
            if (length <= i10 + 32) {
                i10 = length;
            }
            if (i10 > 0) {
                try {
                    outputStream.write(strA.getBytes("UTF-8"), 0, i10);
                    outputStream.write("\n".getBytes("UTF-8"));
                    if (i10 < strA.length()) {
                        outputStream.write(String.format(Locale.US, "(truncated %d bytes)\n", Integer.valueOf(strA.length() - i10)).getBytes("UTF-8"));
                    }
                } catch (Throwable th) {
                    th = th;
                    i11 = i10;
                    a(th, outputStream);
                    i10 = i11;
                }
            } else if (i10 < strA.length()) {
                outputStream.write(String.format(Locale.US, "(truncated %d bytes)\n", Integer.valueOf(strA.length() - i10)).getBytes("UTF-8"));
            }
        } catch (Throwable th2) {
            th = th2;
        }
        a(outputStream);
        return i10;
    }

    static String a(int i10) {
        try {
            String strA = com.uc.crashsdk.a.g.a(new File(String.format(Locale.US, "/proc/%d/cmdline", Integer.valueOf(i10))), 128, false);
            return com.uc.crashsdk.a.g.b(strA) ? l(strA) : "unknown";
        } catch (Throwable th) {
            com.uc.crashsdk.a.g.a(th);
            return "unknown";
        }
    }

    private static void b(a aVar) {
        f84106h = false;
        try {
            aVar.write((s("LOG_END") + "\n").getBytes("UTF-8"));
        } catch (Throwable th) {
            com.uc.crashsdk.a.g.a(th);
        }
        f84106h = true;
    }

    /* JADX WARN: Code duplicated, block: B:188:0x035f  */
    /* JADX WARN: Code duplicated, block: B:196:0x039d  */
    /* JADX WARN: Code duplicated, block: B:199:0x03b1 A[Catch: all -> 0x0413, TryCatch #38 {all -> 0x0413, blocks: (B:194:0x037a, B:197:0x039e, B:199:0x03b1, B:200:0x03b6, B:202:0x03cf, B:205:0x03f4, B:207:0x03fb), top: B:362:0x037a }] */
    /* JADX WARN: Code duplicated, block: B:202:0x03cf A[Catch: all -> 0x0413, TryCatch #38 {all -> 0x0413, blocks: (B:194:0x037a, B:197:0x039e, B:199:0x03b1, B:200:0x03b6, B:202:0x03cf, B:205:0x03f4, B:207:0x03fb), top: B:362:0x037a }] */
    /* JADX WARN: Code duplicated, block: B:204:0x03f2  */
    /* JADX WARN: Code duplicated, block: B:206:0x03f8  */
    /* JADX WARN: Code duplicated, block: B:220:0x042f A[Catch: all -> 0x048e, TRY_LEAVE, TryCatch #31 {all -> 0x048e, blocks: (B:181:0x034a, B:186:0x035b, B:211:0x0416, B:218:0x042b, B:220:0x042f, B:225:0x0444, B:224:0x0441, B:237:0x045a, B:239:0x045e, B:244:0x0473, B:243:0x0470, B:245:0x0476, B:250:0x0482, B:236:0x0457, B:230:0x044d, B:217:0x0428, B:192:0x0375, B:185:0x0358, B:180:0x0347, B:213:0x0422, B:240:0x0461, B:246:0x047c, B:221:0x0432, B:226:0x0447, B:232:0x0451, B:182:0x034d), top: B:349:0x0347, inners: #5, #10, #23, #24, #28, #39, #41 }] */
    /* JADX WARN: Code duplicated, block: B:239:0x045e A[Catch: all -> 0x048e, TRY_LEAVE, TryCatch #31 {all -> 0x048e, blocks: (B:181:0x034a, B:186:0x035b, B:211:0x0416, B:218:0x042b, B:220:0x042f, B:225:0x0444, B:224:0x0441, B:237:0x045a, B:239:0x045e, B:244:0x0473, B:243:0x0470, B:245:0x0476, B:250:0x0482, B:236:0x0457, B:230:0x044d, B:217:0x0428, B:192:0x0375, B:185:0x0358, B:180:0x0347, B:213:0x0422, B:240:0x0461, B:246:0x047c, B:221:0x0432, B:226:0x0447, B:232:0x0451, B:182:0x034d), top: B:349:0x0347, inners: #5, #10, #23, #24, #28, #39, #41 }] */
    /* JADX WARN: Code duplicated, block: B:252:0x0487  */
    /* JADX WARN: Code duplicated, block: B:267:0x04a7  */
    /* JADX WARN: Code duplicated, block: B:271:0x04b4  */
    /* JADX WARN: Code duplicated, block: B:274:0x04bb A[Catch: all -> 0x04cc, TryCatch #29 {all -> 0x04cc, blocks: (B:272:0x04b7, B:274:0x04bb, B:276:0x04c6), top: B:345:0x04b7 }] */
    /* JADX WARN: Code duplicated, block: B:275:0x04c4  */
    /* JADX WARN: Code duplicated, block: B:362:0x037a A[EXC_TOP_SPLITTER, SYNTHETIC] */
    private static String a(Throwable th, String str, long j10, boolean z10) {
        FileOutputStream fileOutputStream;
        String strA;
        int i10;
        String str2;
        Locale locale;
        StringBuilder sb2;
        String strH;
        String str3;
        String str4 = "--- --- --- --- --- --- --- --- --- --- --- --- --- --- --- ---\n";
        a aVar = null;
        try {
            try {
                if (!com.uc.crashsdk.b.L()) {
                    try {
                        g.a();
                        a(true);
                    } catch (Throwable th2) {
                        th = th2;
                        fileOutputStream = null;
                        try {
                            a(th, aVar);
                            if (j10 != 0) {
                                b(aVar);
                            }
                            com.uc.crashsdk.a.g.a(aVar);
                            com.uc.crashsdk.a.g.a(fileOutputStream);
                            if (!ag) {
                                r(str);
                            }
                            if (ag) {
                                strA = str;
                            } else {
                                strA = a(m(str));
                            }
                            b(strA, LogType.JAVA_TYPE);
                            return str;
                        } catch (Throwable th3) {
                            if (j10 != 0) {
                                b(aVar);
                            }
                            com.uc.crashsdk.a.g.a(aVar);
                            com.uc.crashsdk.a.g.a(fileOutputStream);
                            throw th3;
                        }
                    }
                }
                int i11 = (j10 > 0L ? 1 : (j10 == 0L ? 0 : -1));
                FileOutputStream fileOutputStream2 = i11 == 0 ? new FileOutputStream(str) : null;
                try {
                    a aVar2 = new a(j10, fileOutputStream2);
                    try {
                        try {
                            if (com.uc.crashsdk.b.f84064d) {
                                JNIBridge.set(126, str);
                            }
                        } catch (Throwable th4) {
                            com.uc.crashsdk.a.g.a(th4);
                        }
                        b(aVar2, str, S());
                        if (z10) {
                            try {
                                aVar2.flush();
                            } catch (Throwable th5) {
                                com.uc.crashsdk.a.g.a(th5);
                            }
                        }
                        try {
                            aVar2.write(("Process Name: '" + h() + "'\n").getBytes("UTF-8"));
                            aVar2.write(("Thread Name: '" + Thread.currentThread().getName() + "'\n").getBytes("UTF-8"));
                        } catch (Throwable th6) {
                            com.uc.crashsdk.a.g.a(th6);
                        }
                        try {
                            aVar2.write("Back traces starts.\n".getBytes("UTF-8"));
                            try {
                                Field declaredField = Throwable.class.getDeclaredField("detailMessage");
                                declaredField.setAccessible(true);
                                Object obj = declaredField.get(th);
                                if (obj != null) {
                                    declaredField.set(th, ((String) obj).replaceAll("\n\t", "\n->  "));
                                }
                            } catch (Throwable th7) {
                                com.uc.crashsdk.a.g.a(th7);
                            }
                            String message = th.getMessage();
                            if (message != null && !message.equals(th.getLocalizedMessage())) {
                                aVar2.write(("Message: " + message + "\n").getBytes("UTF-8"));
                            }
                        } catch (Throwable th8) {
                            com.uc.crashsdk.a.g.a(th8);
                        }
                        try {
                            th.printStackTrace(new PrintStream(aVar2));
                        } catch (Throwable th9) {
                            com.uc.crashsdk.a.g.a(th9);
                        }
                        try {
                            aVar2.write("Back traces ends.\n".getBytes("UTF-8"));
                        } catch (Throwable th10) {
                            com.uc.crashsdk.a.g.a(th10);
                        }
                        a((OutputStream) aVar2);
                        try {
                            aVar2.flush();
                        } catch (Throwable th11) {
                            com.uc.crashsdk.a.g.a(th11);
                        }
                        try {
                            com.uc.crashsdk.a.a(aVar2, "UTF-8", "--- --- --- --- --- --- --- --- --- --- --- --- --- --- --- ---\n");
                        } catch (Throwable th12) {
                            com.uc.crashsdk.a.g.a(th12);
                        }
                        if (z10) {
                            try {
                                aVar2.flush();
                            } catch (Throwable th13) {
                                com.uc.crashsdk.a.g.a(th13);
                            }
                        }
                        try {
                            aVar2.write("meminfo:\n".getBytes("UTF-8"));
                            b(aVar2, "/proc/meminfo", com.sigmob.sdk.archives.tar.d.f78732b);
                        } catch (Throwable th14) {
                            a(th14, aVar2);
                        }
                        try {
                            String str5 = String.format(Locale.US, "/proc/%d/status", Integer.valueOf(Process.myPid()));
                            aVar2.write("status:\n".getBytes("UTF-8"));
                            b(aVar2, str5, com.sigmob.sdk.archives.tar.d.f78732b);
                        } catch (Throwable th15) {
                            a(th15, aVar2);
                        }
                        try {
                            aVar2.write(("memory info:\n" + g()).getBytes("UTF-8"));
                        } catch (Throwable th16) {
                            a(th16, aVar2);
                        }
                        a((OutputStream) aVar2);
                        f(aVar2);
                        try {
                            com.uc.crashsdk.a.a(aVar2, "UTF-8", (ArrayList<String>) null);
                        } catch (Throwable th17) {
                            a(th17, aVar2);
                        }
                        if (ag) {
                            f84106h = false;
                            try {
                                aVar2.write(s("JAVADUMPFILES").getBytes("UTF-8"));
                            } catch (Throwable th18) {
                                a(th18, aVar2);
                            }
                            f84106h = true;
                        }
                        try {
                            aVar2.flush();
                        } catch (Throwable th19) {
                            com.uc.crashsdk.a.g.a(th19);
                        }
                        b((OutputStream) aVar2);
                        try {
                            aVar2.flush();
                        } catch (Throwable th20) {
                            com.uc.crashsdk.a.g.a(th20);
                        }
                        try {
                            aVar2.write("battery info:\n".getBytes("UTF-8"));
                        } catch (Throwable th21) {
                            a(th21, aVar2);
                        }
                        try {
                            if (ag) {
                                f84106h = false;
                                aVar2.write(s("BATTERYINFO").getBytes("UTF-8"));
                                f84106h = true;
                            } else {
                                StringBuilder sbY = Y();
                                if (sbY != null) {
                                    aVar2.write(sbY.toString().getBytes("UTF-8"));
                                }
                            }
                        } catch (Throwable th22) {
                            a(th22, aVar2);
                        }
                        a((OutputStream) aVar2);
                        try {
                            aVar2.write("disk info:\n".getBytes("UTF-8"));
                        } catch (Throwable th23) {
                            a(th23, aVar2);
                        }
                        try {
                            try {
                                try {
                                    try {
                                        try {
                                            if (!ag) {
                                                try {
                                                    HashSet hashSet = new HashSet();
                                                    String strA2 = a(new File(com.uc.crashsdk.a.g.b()));
                                                    if (!com.uc.crashsdk.a.g.a(strA2) && !hashSet.contains(strA2) && !strA2.equals("/storage/emulated")) {
                                                        hashSet.add(strA2);
                                                        try {
                                                            StatFs statFs = new StatFs(strA2);
                                                            long jA = a(statFs, "getBlockCountLong", "getBlockCount");
                                                            i10 = i11;
                                                            try {
                                                                long jA2 = a(statFs, "getBlockSizeLong", "getBlockSize");
                                                                if ((jA / 1024) * jA2 >= 10240) {
                                                                    long jA3 = a(statFs, "getAvailableBlocksLong", "getAvailableBlocks");
                                                                    try {
                                                                        long jA4 = a(statFs, "getFreeBlocksLong", "getFreeBlocks");
                                                                        try {
                                                                            Locale locale2 = Locale.US;
                                                                            str4 = "--- --- --- --- --- --- --- --- --- --- --- --- --- --- --- ---\n";
                                                                            fileOutputStream = fileOutputStream2;
                                                                            try {
                                                                                aVar2.write(String.format(locale2, "%s:\n", strA2).getBytes("UTF-8"));
                                                                                Object[] objArr = new Object[1];
                                                                                str2 = "\n";
                                                                                double d10 = jA2;
                                                                                try {
                                                                                    objArr[0] = Long.valueOf((long) (((jA * 1.0d) * d10) / 1024.0d));
                                                                                    aVar2.write(String.format(locale2, "  total:      %d kB\n", objArr).getBytes("UTF-8"));
                                                                                    aVar2.write(String.format(locale2, "  available:  %d kB\n", Long.valueOf((long) (((jA3 * 1.0d) * d10) / 1024.0d))).getBytes("UTF-8"));
                                                                                    aVar2.write(String.format(locale2, "  free:       %d kB\n", Long.valueOf((long) (((jA4 * 1.0d) * d10) / 1024.0d))).getBytes("UTF-8"));
                                                                                    aVar2.write(String.format(locale2, "  block size: %d B\n\n", Long.valueOf(jA2)).getBytes("UTF-8"));
                                                                                } catch (Throwable th24) {
                                                                                    th = th24;
                                                                                    try {
                                                                                        a(th, aVar2);
                                                                                    } catch (Throwable th25) {
                                                                                        th = th25;
                                                                                        try {
                                                                                            a(th, aVar2);
                                                                                        } catch (Throwable th26) {
                                                                                            th = th26;
                                                                                            aVar = aVar2;
                                                                                            a(th, aVar);
                                                                                            if (j10 != 0) {
                                                                                                b(aVar);
                                                                                            }
                                                                                            com.uc.crashsdk.a.g.a(aVar);
                                                                                        }
                                                                                    }
                                                                                }
                                                                            } catch (Throwable th27) {
                                                                                th = th27;
                                                                                str2 = "\n";
                                                                                a(th, aVar2);
                                                                                a((OutputStream) aVar2);
                                                                                aVar2.write("device status:\n".getBytes("UTF-8"));
                                                                                if (ag) {
                                                                                    try {
                                                                                        f84106h = false;
                                                                                        aVar2.write(s("DEVICESTATUS").getBytes("UTF-8"));
                                                                                        f84106h = true;
                                                                                    } catch (Throwable th28) {
                                                                                        th = th28;
                                                                                        a(th, aVar2);
                                                                                    }
                                                                                } else {
                                                                                    try {
                                                                                        locale = Locale.US;
                                                                                        aVar2.write(String.format(locale, "has root: %s\n", Boolean.valueOf(com.uc.crashsdk.a.g.e())).getBytes("UTF-8"));
                                                                                        String str6 = Build.TAGS;
                                                                                        String str7 = str6 != null ? str6 : "";
                                                                                        sb2 = new StringBuilder();
                                                                                        sb2.append("build tags: ");
                                                                                        sb2.append(str7);
                                                                                        if (com.uc.crashsdk.a.g.f()) {
                                                                                            sb2.append(" (default root)");
                                                                                        }
                                                                                        sb2.append(str2);
                                                                                        aVar2.write(sb2.toString().getBytes("UTF-8"));
                                                                                        strH = com.uc.crashsdk.a.g.h();
                                                                                        if (com.uc.crashsdk.a.g.b(strH)) {
                                                                                            aVar2.write(String.format(locale, "su binary: %s\n", strH).getBytes("UTF-8"));
                                                                                            StringBuilder sb3 = new StringBuilder();
                                                                                            sb3.append("su permission: ");
                                                                                            if (com.uc.crashsdk.a.g.g()) {
                                                                                                str3 = "valid (";
                                                                                            } else {
                                                                                                str3 = "invalid (";
                                                                                            }
                                                                                            sb3.append(str3);
                                                                                            sb3.append(com.uc.crashsdk.a.g.i());
                                                                                            sb3.append(")\n");
                                                                                            aVar2.write(sb3.toString().getBytes("UTF-8"));
                                                                                        }
                                                                                    } catch (Throwable th29) {
                                                                                        th = th29;
                                                                                        a(th, aVar2);
                                                                                    }
                                                                                }
                                                                                a((OutputStream) aVar2);
                                                                                c(aVar2);
                                                                                d(aVar2);
                                                                                String str8 = str4;
                                                                                com.uc.crashsdk.a.b(aVar2, "UTF-8", str8, null);
                                                                                if (ag) {
                                                                                    f84106h = false;
                                                                                    try {
                                                                                        aVar2.write(s("JAVACACHEDINFOS").getBytes("UTF-8"));
                                                                                    } catch (Throwable th30) {
                                                                                        a(th30, aVar2);
                                                                                    }
                                                                                    f84106h = true;
                                                                                }
                                                                                aVar2.flush();
                                                                                com.uc.crashsdk.a.a(aVar2, "UTF-8", str8, null);
                                                                                if (ag) {
                                                                                    f84106h = false;
                                                                                    try {
                                                                                        aVar2.write(s("JAVACALLBACKINFOS").getBytes("UTF-8"));
                                                                                    } catch (Throwable th31) {
                                                                                        a(th31, aVar2);
                                                                                    }
                                                                                    f84106h = true;
                                                                                }
                                                                                aVar2.a();
                                                                                a(aVar2);
                                                                                aVar2.flush();
                                                                                if (i10 != 0) {
                                                                                    b(aVar2);
                                                                                }
                                                                                com.uc.crashsdk.a.g.a(aVar2);
                                                                                com.uc.crashsdk.a.g.a(fileOutputStream);
                                                                                if (!ag) {
                                                                                    r(str);
                                                                                }
                                                                                if (ag) {
                                                                                    strA = a(m(str));
                                                                                } else {
                                                                                    strA = str;
                                                                                }
                                                                                b(strA, LogType.JAVA_TYPE);
                                                                                return str;
                                                                            }
                                                                        } catch (Throwable th32) {
                                                                            th = th32;
                                                                            str4 = "--- --- --- --- --- --- --- --- --- --- --- --- --- --- --- ---\n";
                                                                            fileOutputStream = fileOutputStream2;
                                                                        }
                                                                    } catch (Throwable th33) {
                                                                        th = th33;
                                                                        str4 = "--- --- --- --- --- --- --- --- --- --- --- --- --- --- --- ---\n";
                                                                        fileOutputStream = fileOutputStream2;
                                                                        str2 = "\n";
                                                                        a(th, aVar2);
                                                                        a((OutputStream) aVar2);
                                                                        aVar2.write("device status:\n".getBytes("UTF-8"));
                                                                        if (ag) {
                                                                            f84106h = false;
                                                                            aVar2.write(s("DEVICESTATUS").getBytes("UTF-8"));
                                                                            f84106h = true;
                                                                        } else {
                                                                            locale = Locale.US;
                                                                            aVar2.write(String.format(locale, "has root: %s\n", Boolean.valueOf(com.uc.crashsdk.a.g.e())).getBytes("UTF-8"));
                                                                            String str9 = Build.TAGS;
                                                                            if (str9 != null) {
                                                                            }
                                                                            sb2 = new StringBuilder();
                                                                            sb2.append("build tags: ");
                                                                            sb2.append(str7);
                                                                            if (com.uc.crashsdk.a.g.f()) {
                                                                                sb2.append(" (default root)");
                                                                            }
                                                                            sb2.append(str2);
                                                                            aVar2.write(sb2.toString().getBytes("UTF-8"));
                                                                            strH = com.uc.crashsdk.a.g.h();
                                                                            if (com.uc.crashsdk.a.g.b(strH)) {
                                                                                aVar2.write(String.format(locale, "su binary: %s\n", strH).getBytes("UTF-8"));
                                                                                StringBuilder sb4 = new StringBuilder();
                                                                                sb4.append("su permission: ");
                                                                                if (com.uc.crashsdk.a.g.g()) {
                                                                                    str3 = "valid (";
                                                                                } else {
                                                                                    str3 = "invalid (";
                                                                                }
                                                                                sb4.append(str3);
                                                                                sb4.append(com.uc.crashsdk.a.g.i());
                                                                                sb4.append(")\n");
                                                                                aVar2.write(sb4.toString().getBytes("UTF-8"));
                                                                            }
                                                                        }
                                                                        a((OutputStream) aVar2);
                                                                        c(aVar2);
                                                                        d(aVar2);
                                                                        String str10 = str4;
                                                                        com.uc.crashsdk.a.b(aVar2, "UTF-8", str10, null);
                                                                        if (ag) {
                                                                            f84106h = false;
                                                                            aVar2.write(s("JAVACACHEDINFOS").getBytes("UTF-8"));
                                                                            f84106h = true;
                                                                        }
                                                                        aVar2.flush();
                                                                        com.uc.crashsdk.a.a(aVar2, "UTF-8", str10, null);
                                                                        if (ag) {
                                                                            f84106h = false;
                                                                            aVar2.write(s("JAVACALLBACKINFOS").getBytes("UTF-8"));
                                                                            f84106h = true;
                                                                        }
                                                                        aVar2.a();
                                                                        a(aVar2);
                                                                        aVar2.flush();
                                                                        if (i10 != 0) {
                                                                            b(aVar2);
                                                                        }
                                                                        com.uc.crashsdk.a.g.a(aVar2);
                                                                        com.uc.crashsdk.a.g.a(fileOutputStream);
                                                                        if (!ag) {
                                                                            r(str);
                                                                        }
                                                                        if (ag) {
                                                                            strA = a(m(str));
                                                                        } else {
                                                                            strA = str;
                                                                        }
                                                                        b(strA, LogType.JAVA_TYPE);
                                                                        return str;
                                                                    }
                                                                } else {
                                                                    fileOutputStream = fileOutputStream2;
                                                                    str2 = "\n";
                                                                }
                                                            } catch (Throwable th34) {
                                                                th = th34;
                                                                str4 = "--- --- --- --- --- --- --- --- --- --- --- --- --- --- --- ---\n";
                                                            }
                                                        } catch (Throwable unused) {
                                                            i10 = i11;
                                                        }
                                                    }
                                                } catch (Throwable th35) {
                                                    th = th35;
                                                    str4 = "--- --- --- --- --- --- --- --- --- --- --- --- --- --- --- ---\n";
                                                    i10 = i11;
                                                }
                                                a((OutputStream) aVar2);
                                                aVar2.write("device status:\n".getBytes("UTF-8"));
                                                if (ag) {
                                                    f84106h = false;
                                                    aVar2.write(s("DEVICESTATUS").getBytes("UTF-8"));
                                                    f84106h = true;
                                                } else {
                                                    locale = Locale.US;
                                                    aVar2.write(String.format(locale, "has root: %s\n", Boolean.valueOf(com.uc.crashsdk.a.g.e())).getBytes("UTF-8"));
                                                    String str11 = Build.TAGS;
                                                    if (str11 != null) {
                                                    }
                                                    sb2 = new StringBuilder();
                                                    sb2.append("build tags: ");
                                                    sb2.append(str7);
                                                    if (com.uc.crashsdk.a.g.f()) {
                                                        sb2.append(" (default root)");
                                                    }
                                                    sb2.append(str2);
                                                    aVar2.write(sb2.toString().getBytes("UTF-8"));
                                                    strH = com.uc.crashsdk.a.g.h();
                                                    if (com.uc.crashsdk.a.g.b(strH)) {
                                                        aVar2.write(String.format(locale, "su binary: %s\n", strH).getBytes("UTF-8"));
                                                        StringBuilder sb5 = new StringBuilder();
                                                        sb5.append("su permission: ");
                                                        if (com.uc.crashsdk.a.g.g()) {
                                                            str3 = "valid (";
                                                        } else {
                                                            str3 = "invalid (";
                                                        }
                                                        sb5.append(str3);
                                                        sb5.append(com.uc.crashsdk.a.g.i());
                                                        sb5.append(")\n");
                                                        aVar2.write(sb5.toString().getBytes("UTF-8"));
                                                    }
                                                }
                                                a((OutputStream) aVar2);
                                                c(aVar2);
                                                d(aVar2);
                                                String str12 = str4;
                                                com.uc.crashsdk.a.b(aVar2, "UTF-8", str12, null);
                                                if (ag) {
                                                    f84106h = false;
                                                    aVar2.write(s("JAVACACHEDINFOS").getBytes("UTF-8"));
                                                    f84106h = true;
                                                }
                                                aVar2.flush();
                                                com.uc.crashsdk.a.a(aVar2, "UTF-8", str12, null);
                                                if (ag) {
                                                    f84106h = false;
                                                    aVar2.write(s("JAVACALLBACKINFOS").getBytes("UTF-8"));
                                                    f84106h = true;
                                                }
                                                aVar2.a();
                                                a(aVar2);
                                                aVar2.flush();
                                                if (i10 != 0) {
                                                    b(aVar2);
                                                }
                                                com.uc.crashsdk.a.g.a(aVar2);
                                                com.uc.crashsdk.a.g.a(fileOutputStream);
                                                if (!ag) {
                                                    r(str);
                                                }
                                                if (ag) {
                                                    strA = a(m(str));
                                                } else {
                                                    strA = str;
                                                }
                                                b(strA, LogType.JAVA_TYPE);
                                                return str;
                                            }
                                            f84106h = false;
                                            try {
                                                aVar2.write(s("FSSTAT").getBytes("UTF-8"));
                                            } catch (Throwable th36) {
                                                a(th36, aVar2);
                                            }
                                            f84106h = true;
                                            aVar2.write("device status:\n".getBytes("UTF-8"));
                                        } catch (Throwable th37) {
                                            a(th37, aVar2);
                                        }
                                        com.uc.crashsdk.a.a(aVar2, "UTF-8", str12, null);
                                    } catch (Throwable th38) {
                                        a(th38, aVar2);
                                    }
                                    aVar2.flush();
                                } catch (Throwable th39) {
                                    com.uc.crashsdk.a.g.a(th39);
                                }
                                aVar2.flush();
                            } catch (Throwable th40) {
                                com.uc.crashsdk.a.g.a(th40);
                            }
                            com.uc.crashsdk.a.b(aVar2, "UTF-8", str12, null);
                        } catch (Throwable th41) {
                            a(th41, aVar2);
                        }
                        i10 = i11;
                        fileOutputStream = fileOutputStream2;
                        str2 = "\n";
                        a((OutputStream) aVar2);
                        if (ag) {
                            f84106h = false;
                            aVar2.write(s("DEVICESTATUS").getBytes("UTF-8"));
                            f84106h = true;
                        } else {
                            locale = Locale.US;
                            aVar2.write(String.format(locale, "has root: %s\n", Boolean.valueOf(com.uc.crashsdk.a.g.e())).getBytes("UTF-8"));
                            String str13 = Build.TAGS;
                            if (str13 != null) {
                            }
                            sb2 = new StringBuilder();
                            sb2.append("build tags: ");
                            sb2.append(str7);
                            if (com.uc.crashsdk.a.g.f()) {
                                sb2.append(" (default root)");
                            }
                            sb2.append(str2);
                            aVar2.write(sb2.toString().getBytes("UTF-8"));
                            strH = com.uc.crashsdk.a.g.h();
                            if (com.uc.crashsdk.a.g.b(strH)) {
                                aVar2.write(String.format(locale, "su binary: %s\n", strH).getBytes("UTF-8"));
                                StringBuilder sb6 = new StringBuilder();
                                sb6.append("su permission: ");
                                if (com.uc.crashsdk.a.g.g()) {
                                    str3 = "valid (";
                                } else {
                                    str3 = "invalid (";
                                }
                                sb6.append(str3);
                                sb6.append(com.uc.crashsdk.a.g.i());
                                sb6.append(")\n");
                                aVar2.write(sb6.toString().getBytes("UTF-8"));
                            }
                        }
                        a((OutputStream) aVar2);
                        c(aVar2);
                        d(aVar2);
                        String str14 = str4;
                        if (ag) {
                            f84106h = false;
                            aVar2.write(s("JAVACACHEDINFOS").getBytes("UTF-8"));
                            f84106h = true;
                        }
                        if (ag) {
                            f84106h = false;
                            aVar2.write(s("JAVACALLBACKINFOS").getBytes("UTF-8"));
                            f84106h = true;
                        }
                        aVar2.a();
                        a(aVar2);
                        if (i10 != 0) {
                            b(aVar2);
                        }
                        com.uc.crashsdk.a.g.a(aVar2);
                    } catch (Throwable th42) {
                        th = th42;
                        fileOutputStream = fileOutputStream2;
                        aVar = aVar2;
                        a(th, aVar);
                        if (j10 != 0) {
                            b(aVar);
                        }
                        com.uc.crashsdk.a.g.a(aVar);
                        com.uc.crashsdk.a.g.a(fileOutputStream);
                        if (!ag) {
                            r(str);
                        }
                        if (ag) {
                            strA = a(m(str));
                        } else {
                            strA = str;
                        }
                        b(strA, LogType.JAVA_TYPE);
                        return str;
                    }
                } catch (Throwable th43) {
                    th = th43;
                    fileOutputStream = fileOutputStream2;
                }
            } catch (Throwable th44) {
                th = th44;
            }
            if (ag) {
                strA = a(m(str));
            } else {
                strA = str;
            }
            b(strA, LogType.JAVA_TYPE);
        } catch (Throwable th45) {
            com.uc.crashsdk.a.g.a(th45);
        }
        com.uc.crashsdk.a.g.a(fileOutputStream);
        if (!ag) {
            r(str);
        }
        return str;
    }

    static int b(OutputStream outputStream, String str, int i10) {
        int i11;
        DataInputStream dataInputStream;
        int i12;
        DataInputStream dataInputStream2 = null;
        int i13 = 0;
        try {
            File file = new File(str);
            if (file.exists()) {
                byte[] bArrR = R();
                if (bArrR == null) {
                    outputStream.write("(alloc buffer failed!)\n".getBytes("UTF-8"));
                    com.uc.crashsdk.a.g.a((Closeable) null);
                    return 0;
                }
                dataInputStream = new DataInputStream(new FileInputStream(file));
                i12 = 0;
                i11 = 0;
                loop0: while (true) {
                    boolean z10 = false;
                    while (true) {
                        try {
                            int i14 = dataInputStream.read(bArrR);
                            if (i14 == -1) {
                                break loop0;
                            }
                            i12 += i14;
                            int i15 = i10 - i11;
                            if (i14 <= i15 + 32) {
                                i15 = i14;
                            }
                            if (i15 > 0 && !z10) {
                                outputStream.write(bArrR, 0, i15);
                                i11 += i15;
                            }
                            if (!z10) {
                                if (i15 < i14 || i11 >= i10) {
                                    z10 = true;
                                }
                            }
                        } catch (Throwable th) {
                            th = th;
                            i13 = i11;
                            dataInputStream2 = dataInputStream;
                            try {
                                a(th, outputStream);
                                com.uc.crashsdk.a.g.a(dataInputStream2);
                                i11 = i13;
                            } catch (Throwable th2) {
                                com.uc.crashsdk.a.g.a(dataInputStream2);
                                throw th2;
                            }
                        }
                    }
                }
            } else {
                outputStream.write(("file: '" + str + "' not exists!\n").getBytes("UTF-8"));
                dataInputStream = null;
                i12 = 0;
                i11 = 0;
            }
            if (i11 > 0) {
                outputStream.write("\n".getBytes("UTF-8"));
            }
            if (i11 < i12) {
                outputStream.write(String.format(Locale.US, "(truncated %d bytes)\n", Integer.valueOf(i12 - i11)).getBytes("UTF-8"));
            }
            com.uc.crashsdk.a.g.a(dataInputStream);
        } catch (Throwable th3) {
            th = th3;
        }
        a(outputStream);
        return i11;
    }

    static void b(boolean z10) {
        try {
            boolean zS = g.r() && com.uc.crashsdk.b.F() && !f84103d;
            if (!zS) {
                zS = g.s();
            }
            if (zS) {
                if (z10) {
                    String strK = k();
                    if (com.uc.crashsdk.a.g.a(strK)) {
                        return;
                    }
                    j();
                    a(strK, false, false);
                    return;
                }
                a(true, false);
            }
        } catch (Throwable th) {
            com.uc.crashsdk.a.g.a(th);
        }
    }

    private static boolean b(File file) {
        int iIndexOf;
        String name = file.getName();
        int iLastIndexOf = name.lastIndexOf(95);
        if (iLastIndexOf <= 0 || (iIndexOf = name.indexOf(46, iLastIndexOf)) <= 0) {
            return false;
        }
        String strSubstring = name.substring(iLastIndexOf + 1, iIndexOf);
        return LogType.JAVA_TYPE.equals(strSubstring) || "ucebujava".equals(strSubstring) || LogType.NATIVE_TYPE.equals(strSubstring) || "ucebujni".equals(strSubstring) || LogType.UNEXP_TYPE.equals(strSubstring) || LogType.ANR_TYPE.equals(strSubstring);
    }

    private static String b(String str, boolean z10, boolean z11) {
        if (z10) {
            try {
                str = m(str);
            } catch (Throwable th) {
                com.uc.crashsdk.a.g.a(th);
            }
        }
        if (!z11) {
            return str;
        }
        try {
            return a(str);
        } catch (Throwable th2) {
            com.uc.crashsdk.a.g.a(th2);
            return str;
        }
    }

    static void b(String str, String str2, boolean z10) {
        h.a(str, str2, false, z10);
    }

    public static void b(String str) {
        synchronized (f84123y) {
            f84122x = str;
            com.uc.crashsdk.a.b.a(com.uc.crashsdk.b.i(), str + "\n");
        }
    }

    private static void b(String str, String str2) {
        try {
            com.uc.crashsdk.d.a(str, h(), str2);
        } catch (Throwable th) {
            com.uc.crashsdk.a.g.a(th);
        }
    }

    public static void b(Context context) {
        if (g.M()) {
            try {
                IntentFilter intentFilter = new IntentFilter();
                intentFilter.addAction("android.intent.action.BATTERY_CHANGED");
                intentFilter.addAction("android.intent.action.BATTERY_LOW");
                intentFilter.addAction("android.intent.action.BATTERY_OKAY");
                context.registerReceiver(Q, intentFilter, null, com.uc.crashsdk.a.f.a(1));
                R = true;
            } catch (Throwable th) {
                com.uc.crashsdk.a.g.a(th);
            }
        }
    }

    public static void b(int i10) {
        com.uc.crashsdk.a.f.a(0, new com.uc.crashsdk.a.e(TTAdConstant.IMAGE_LIST_SIZE_CODE), i10 * 1000);
    }

    static String a(String str) {
        int iLastIndexOf;
        int iIndexOf;
        int i10;
        int iIndexOf2;
        File file;
        byte[] bArrE;
        byte[] bArrB;
        if (!g.x() || (iLastIndexOf = str.lastIndexOf(47)) <= 0 || (iIndexOf = str.indexOf(95, iLastIndexOf)) <= iLastIndexOf || (iIndexOf2 = str.indexOf(95, (i10 = iIndexOf + 1))) <= iIndexOf) {
            return str;
        }
        String strD = com.uc.crashsdk.a.g.d("CrashSDK" + str.substring(iLastIndexOf + 1, iIndexOf) + str.substring(i10, iIndexOf2));
        if (strD == null || (bArrE = com.uc.crashsdk.a.g.e((file = new File(str)))) == null || bArrE.length <= 0) {
            return str;
        }
        try {
            bArrB = com.uc.crashsdk.a.c.b(bArrE, strD.substring(0, 16).getBytes());
        } catch (Throwable th) {
            com.uc.crashsdk.a.g.a(th);
            bArrB = null;
        }
        if (bArrB == null) {
            return str;
        }
        String str2 = str + ".ec";
        File file2 = new File(str2 + ".tmp");
        if (!com.uc.crashsdk.a.g.a(file2, bArrB)) {
            return str;
        }
        if (!file2.renameTo(new File(str2))) {
            file2.delete();
            return str;
        }
        file.delete();
        return str2;
    }

    static void a(Throwable th, OutputStream outputStream) {
        if (outputStream != null) {
            try {
                outputStream.write("[DEBUG] CrashHandler occurred new exception:\n".getBytes("UTF-8"));
                th.printStackTrace(new PrintStream(outputStream));
                outputStream.write("\n\n".getBytes("UTF-8"));
            } catch (Throwable th2) {
                com.uc.crashsdk.a.g.a(th2);
            }
        }
        com.uc.crashsdk.a.g.a(th);
    }

    /* JADX WARN: Code duplicated, block: B:112:0x02ef  */
    /* JADX WARN: Code duplicated, block: B:113:0x02fc A[Catch: all -> 0x0441, TryCatch #1 {all -> 0x0441, blocks: (B:4:0x000a, B:6:0x0010, B:8:0x001f, B:9:0x0034, B:11:0x003a, B:12:0x004d, B:14:0x005d, B:16:0x0065, B:147:0x03cc, B:18:0x006d, B:20:0x007d, B:22:0x008f, B:25:0x00b0, B:27:0x00c0, B:31:0x00cd, B:42:0x00f9, B:38:0x00eb, B:62:0x01c6, B:64:0x01da, B:66:0x01de, B:67:0x01e0, B:69:0x01e5, B:70:0x01e7, B:71:0x01ec, B:81:0x0210, B:82:0x0226, B:84:0x022c, B:86:0x0235, B:88:0x0242, B:90:0x0261, B:91:0x0274, B:93:0x0286, B:95:0x0296, B:96:0x02a7, B:110:0x02eb, B:113:0x02fc, B:116:0x030a, B:119:0x031b, B:121:0x0329, B:123:0x0336, B:126:0x033d, B:130:0x034a, B:132:0x0356, B:134:0x036f, B:135:0x0374, B:137:0x0383, B:139:0x0390, B:145:0x03ba, B:150:0x03e0, B:152:0x03e7, B:154:0x03ee, B:156:0x03f5, B:158:0x03fc, B:160:0x0403, B:166:0x0415, B:168:0x041c, B:170:0x0423, B:172:0x042a, B:164:0x040e, B:138:0x038a, B:140:0x03ad, B:142:0x03b2, B:98:0x02af, B:100:0x02b5, B:103:0x02bd, B:105:0x02c1, B:107:0x02d5, B:109:0x02d9, B:75:0x01f7, B:77:0x0205, B:79:0x020b, B:61:0x01c3, B:173:0x0432), top: B:195:0x000a, outer: #3 }] */
    /* JADX WARN: Code duplicated, block: B:115:0x0300  */
    /* JADX WARN: Code duplicated, block: B:116:0x030a A[Catch: all -> 0x0441, TryCatch #1 {all -> 0x0441, blocks: (B:4:0x000a, B:6:0x0010, B:8:0x001f, B:9:0x0034, B:11:0x003a, B:12:0x004d, B:14:0x005d, B:16:0x0065, B:147:0x03cc, B:18:0x006d, B:20:0x007d, B:22:0x008f, B:25:0x00b0, B:27:0x00c0, B:31:0x00cd, B:42:0x00f9, B:38:0x00eb, B:62:0x01c6, B:64:0x01da, B:66:0x01de, B:67:0x01e0, B:69:0x01e5, B:70:0x01e7, B:71:0x01ec, B:81:0x0210, B:82:0x0226, B:84:0x022c, B:86:0x0235, B:88:0x0242, B:90:0x0261, B:91:0x0274, B:93:0x0286, B:95:0x0296, B:96:0x02a7, B:110:0x02eb, B:113:0x02fc, B:116:0x030a, B:119:0x031b, B:121:0x0329, B:123:0x0336, B:126:0x033d, B:130:0x034a, B:132:0x0356, B:134:0x036f, B:135:0x0374, B:137:0x0383, B:139:0x0390, B:145:0x03ba, B:150:0x03e0, B:152:0x03e7, B:154:0x03ee, B:156:0x03f5, B:158:0x03fc, B:160:0x0403, B:166:0x0415, B:168:0x041c, B:170:0x0423, B:172:0x042a, B:164:0x040e, B:138:0x038a, B:140:0x03ad, B:142:0x03b2, B:98:0x02af, B:100:0x02b5, B:103:0x02bd, B:105:0x02c1, B:107:0x02d5, B:109:0x02d9, B:75:0x01f7, B:77:0x0205, B:79:0x020b, B:61:0x01c3, B:173:0x0432), top: B:195:0x000a, outer: #3 }] */
    /* JADX WARN: Code duplicated, block: B:118:0x030e  */
    /* JADX WARN: Code duplicated, block: B:119:0x031b A[Catch: all -> 0x0441, TryCatch #1 {all -> 0x0441, blocks: (B:4:0x000a, B:6:0x0010, B:8:0x001f, B:9:0x0034, B:11:0x003a, B:12:0x004d, B:14:0x005d, B:16:0x0065, B:147:0x03cc, B:18:0x006d, B:20:0x007d, B:22:0x008f, B:25:0x00b0, B:27:0x00c0, B:31:0x00cd, B:42:0x00f9, B:38:0x00eb, B:62:0x01c6, B:64:0x01da, B:66:0x01de, B:67:0x01e0, B:69:0x01e5, B:70:0x01e7, B:71:0x01ec, B:81:0x0210, B:82:0x0226, B:84:0x022c, B:86:0x0235, B:88:0x0242, B:90:0x0261, B:91:0x0274, B:93:0x0286, B:95:0x0296, B:96:0x02a7, B:110:0x02eb, B:113:0x02fc, B:116:0x030a, B:119:0x031b, B:121:0x0329, B:123:0x0336, B:126:0x033d, B:130:0x034a, B:132:0x0356, B:134:0x036f, B:135:0x0374, B:137:0x0383, B:139:0x0390, B:145:0x03ba, B:150:0x03e0, B:152:0x03e7, B:154:0x03ee, B:156:0x03f5, B:158:0x03fc, B:160:0x0403, B:166:0x0415, B:168:0x041c, B:170:0x0423, B:172:0x042a, B:164:0x040e, B:138:0x038a, B:140:0x03ad, B:142:0x03b2, B:98:0x02af, B:100:0x02b5, B:103:0x02bd, B:105:0x02c1, B:107:0x02d5, B:109:0x02d9, B:75:0x01f7, B:77:0x0205, B:79:0x020b, B:61:0x01c3, B:173:0x0432), top: B:195:0x000a, outer: #3 }] */
    /* JADX WARN: Code duplicated, block: B:121:0x0329 A[Catch: all -> 0x0441, TryCatch #1 {all -> 0x0441, blocks: (B:4:0x000a, B:6:0x0010, B:8:0x001f, B:9:0x0034, B:11:0x003a, B:12:0x004d, B:14:0x005d, B:16:0x0065, B:147:0x03cc, B:18:0x006d, B:20:0x007d, B:22:0x008f, B:25:0x00b0, B:27:0x00c0, B:31:0x00cd, B:42:0x00f9, B:38:0x00eb, B:62:0x01c6, B:64:0x01da, B:66:0x01de, B:67:0x01e0, B:69:0x01e5, B:70:0x01e7, B:71:0x01ec, B:81:0x0210, B:82:0x0226, B:84:0x022c, B:86:0x0235, B:88:0x0242, B:90:0x0261, B:91:0x0274, B:93:0x0286, B:95:0x0296, B:96:0x02a7, B:110:0x02eb, B:113:0x02fc, B:116:0x030a, B:119:0x031b, B:121:0x0329, B:123:0x0336, B:126:0x033d, B:130:0x034a, B:132:0x0356, B:134:0x036f, B:135:0x0374, B:137:0x0383, B:139:0x0390, B:145:0x03ba, B:150:0x03e0, B:152:0x03e7, B:154:0x03ee, B:156:0x03f5, B:158:0x03fc, B:160:0x0403, B:166:0x0415, B:168:0x041c, B:170:0x0423, B:172:0x042a, B:164:0x040e, B:138:0x038a, B:140:0x03ad, B:142:0x03b2, B:98:0x02af, B:100:0x02b5, B:103:0x02bd, B:105:0x02c1, B:107:0x02d5, B:109:0x02d9, B:75:0x01f7, B:77:0x0205, B:79:0x020b, B:61:0x01c3, B:173:0x0432), top: B:195:0x000a, outer: #3 }] */
    /* JADX WARN: Code duplicated, block: B:123:0x0336 A[Catch: all -> 0x0441, TryCatch #1 {all -> 0x0441, blocks: (B:4:0x000a, B:6:0x0010, B:8:0x001f, B:9:0x0034, B:11:0x003a, B:12:0x004d, B:14:0x005d, B:16:0x0065, B:147:0x03cc, B:18:0x006d, B:20:0x007d, B:22:0x008f, B:25:0x00b0, B:27:0x00c0, B:31:0x00cd, B:42:0x00f9, B:38:0x00eb, B:62:0x01c6, B:64:0x01da, B:66:0x01de, B:67:0x01e0, B:69:0x01e5, B:70:0x01e7, B:71:0x01ec, B:81:0x0210, B:82:0x0226, B:84:0x022c, B:86:0x0235, B:88:0x0242, B:90:0x0261, B:91:0x0274, B:93:0x0286, B:95:0x0296, B:96:0x02a7, B:110:0x02eb, B:113:0x02fc, B:116:0x030a, B:119:0x031b, B:121:0x0329, B:123:0x0336, B:126:0x033d, B:130:0x034a, B:132:0x0356, B:134:0x036f, B:135:0x0374, B:137:0x0383, B:139:0x0390, B:145:0x03ba, B:150:0x03e0, B:152:0x03e7, B:154:0x03ee, B:156:0x03f5, B:158:0x03fc, B:160:0x0403, B:166:0x0415, B:168:0x041c, B:170:0x0423, B:172:0x042a, B:164:0x040e, B:138:0x038a, B:140:0x03ad, B:142:0x03b2, B:98:0x02af, B:100:0x02b5, B:103:0x02bd, B:105:0x02c1, B:107:0x02d5, B:109:0x02d9, B:75:0x01f7, B:77:0x0205, B:79:0x020b, B:61:0x01c3, B:173:0x0432), top: B:195:0x000a, outer: #3 }] */
    /* JADX WARN: Code duplicated, block: B:124:0x033a  */
    /* JADX WARN: Code duplicated, block: B:129:0x0349  */
    /* JADX WARN: Code duplicated, block: B:132:0x0356 A[Catch: all -> 0x0441, TryCatch #1 {all -> 0x0441, blocks: (B:4:0x000a, B:6:0x0010, B:8:0x001f, B:9:0x0034, B:11:0x003a, B:12:0x004d, B:14:0x005d, B:16:0x0065, B:147:0x03cc, B:18:0x006d, B:20:0x007d, B:22:0x008f, B:25:0x00b0, B:27:0x00c0, B:31:0x00cd, B:42:0x00f9, B:38:0x00eb, B:62:0x01c6, B:64:0x01da, B:66:0x01de, B:67:0x01e0, B:69:0x01e5, B:70:0x01e7, B:71:0x01ec, B:81:0x0210, B:82:0x0226, B:84:0x022c, B:86:0x0235, B:88:0x0242, B:90:0x0261, B:91:0x0274, B:93:0x0286, B:95:0x0296, B:96:0x02a7, B:110:0x02eb, B:113:0x02fc, B:116:0x030a, B:119:0x031b, B:121:0x0329, B:123:0x0336, B:126:0x033d, B:130:0x034a, B:132:0x0356, B:134:0x036f, B:135:0x0374, B:137:0x0383, B:139:0x0390, B:145:0x03ba, B:150:0x03e0, B:152:0x03e7, B:154:0x03ee, B:156:0x03f5, B:158:0x03fc, B:160:0x0403, B:166:0x0415, B:168:0x041c, B:170:0x0423, B:172:0x042a, B:164:0x040e, B:138:0x038a, B:140:0x03ad, B:142:0x03b2, B:98:0x02af, B:100:0x02b5, B:103:0x02bd, B:105:0x02c1, B:107:0x02d5, B:109:0x02d9, B:75:0x01f7, B:77:0x0205, B:79:0x020b, B:61:0x01c3, B:173:0x0432), top: B:195:0x000a, outer: #3 }] */
    /* JADX WARN: Code duplicated, block: B:134:0x036f A[Catch: all -> 0x0441, TryCatch #1 {all -> 0x0441, blocks: (B:4:0x000a, B:6:0x0010, B:8:0x001f, B:9:0x0034, B:11:0x003a, B:12:0x004d, B:14:0x005d, B:16:0x0065, B:147:0x03cc, B:18:0x006d, B:20:0x007d, B:22:0x008f, B:25:0x00b0, B:27:0x00c0, B:31:0x00cd, B:42:0x00f9, B:38:0x00eb, B:62:0x01c6, B:64:0x01da, B:66:0x01de, B:67:0x01e0, B:69:0x01e5, B:70:0x01e7, B:71:0x01ec, B:81:0x0210, B:82:0x0226, B:84:0x022c, B:86:0x0235, B:88:0x0242, B:90:0x0261, B:91:0x0274, B:93:0x0286, B:95:0x0296, B:96:0x02a7, B:110:0x02eb, B:113:0x02fc, B:116:0x030a, B:119:0x031b, B:121:0x0329, B:123:0x0336, B:126:0x033d, B:130:0x034a, B:132:0x0356, B:134:0x036f, B:135:0x0374, B:137:0x0383, B:139:0x0390, B:145:0x03ba, B:150:0x03e0, B:152:0x03e7, B:154:0x03ee, B:156:0x03f5, B:158:0x03fc, B:160:0x0403, B:166:0x0415, B:168:0x041c, B:170:0x0423, B:172:0x042a, B:164:0x040e, B:138:0x038a, B:140:0x03ad, B:142:0x03b2, B:98:0x02af, B:100:0x02b5, B:103:0x02bd, B:105:0x02c1, B:107:0x02d5, B:109:0x02d9, B:75:0x01f7, B:77:0x0205, B:79:0x020b, B:61:0x01c3, B:173:0x0432), top: B:195:0x000a, outer: #3 }] */
    /* JADX WARN: Code duplicated, block: B:137:0x0383 A[Catch: all -> 0x0441, TryCatch #1 {all -> 0x0441, blocks: (B:4:0x000a, B:6:0x0010, B:8:0x001f, B:9:0x0034, B:11:0x003a, B:12:0x004d, B:14:0x005d, B:16:0x0065, B:147:0x03cc, B:18:0x006d, B:20:0x007d, B:22:0x008f, B:25:0x00b0, B:27:0x00c0, B:31:0x00cd, B:42:0x00f9, B:38:0x00eb, B:62:0x01c6, B:64:0x01da, B:66:0x01de, B:67:0x01e0, B:69:0x01e5, B:70:0x01e7, B:71:0x01ec, B:81:0x0210, B:82:0x0226, B:84:0x022c, B:86:0x0235, B:88:0x0242, B:90:0x0261, B:91:0x0274, B:93:0x0286, B:95:0x0296, B:96:0x02a7, B:110:0x02eb, B:113:0x02fc, B:116:0x030a, B:119:0x031b, B:121:0x0329, B:123:0x0336, B:126:0x033d, B:130:0x034a, B:132:0x0356, B:134:0x036f, B:135:0x0374, B:137:0x0383, B:139:0x0390, B:145:0x03ba, B:150:0x03e0, B:152:0x03e7, B:154:0x03ee, B:156:0x03f5, B:158:0x03fc, B:160:0x0403, B:166:0x0415, B:168:0x041c, B:170:0x0423, B:172:0x042a, B:164:0x040e, B:138:0x038a, B:140:0x03ad, B:142:0x03b2, B:98:0x02af, B:100:0x02b5, B:103:0x02bd, B:105:0x02c1, B:107:0x02d5, B:109:0x02d9, B:75:0x01f7, B:77:0x0205, B:79:0x020b, B:61:0x01c3, B:173:0x0432), top: B:195:0x000a, outer: #3 }] */
    /* JADX WARN: Code duplicated, block: B:138:0x038a A[Catch: all -> 0x0441, TryCatch #1 {all -> 0x0441, blocks: (B:4:0x000a, B:6:0x0010, B:8:0x001f, B:9:0x0034, B:11:0x003a, B:12:0x004d, B:14:0x005d, B:16:0x0065, B:147:0x03cc, B:18:0x006d, B:20:0x007d, B:22:0x008f, B:25:0x00b0, B:27:0x00c0, B:31:0x00cd, B:42:0x00f9, B:38:0x00eb, B:62:0x01c6, B:64:0x01da, B:66:0x01de, B:67:0x01e0, B:69:0x01e5, B:70:0x01e7, B:71:0x01ec, B:81:0x0210, B:82:0x0226, B:84:0x022c, B:86:0x0235, B:88:0x0242, B:90:0x0261, B:91:0x0274, B:93:0x0286, B:95:0x0296, B:96:0x02a7, B:110:0x02eb, B:113:0x02fc, B:116:0x030a, B:119:0x031b, B:121:0x0329, B:123:0x0336, B:126:0x033d, B:130:0x034a, B:132:0x0356, B:134:0x036f, B:135:0x0374, B:137:0x0383, B:139:0x0390, B:145:0x03ba, B:150:0x03e0, B:152:0x03e7, B:154:0x03ee, B:156:0x03f5, B:158:0x03fc, B:160:0x0403, B:166:0x0415, B:168:0x041c, B:170:0x0423, B:172:0x042a, B:164:0x040e, B:138:0x038a, B:140:0x03ad, B:142:0x03b2, B:98:0x02af, B:100:0x02b5, B:103:0x02bd, B:105:0x02c1, B:107:0x02d5, B:109:0x02d9, B:75:0x01f7, B:77:0x0205, B:79:0x020b, B:61:0x01c3, B:173:0x0432), top: B:195:0x000a, outer: #3 }] */
    /* JADX WARN: Code duplicated, block: B:140:0x03ad A[Catch: all -> 0x0441, TryCatch #1 {all -> 0x0441, blocks: (B:4:0x000a, B:6:0x0010, B:8:0x001f, B:9:0x0034, B:11:0x003a, B:12:0x004d, B:14:0x005d, B:16:0x0065, B:147:0x03cc, B:18:0x006d, B:20:0x007d, B:22:0x008f, B:25:0x00b0, B:27:0x00c0, B:31:0x00cd, B:42:0x00f9, B:38:0x00eb, B:62:0x01c6, B:64:0x01da, B:66:0x01de, B:67:0x01e0, B:69:0x01e5, B:70:0x01e7, B:71:0x01ec, B:81:0x0210, B:82:0x0226, B:84:0x022c, B:86:0x0235, B:88:0x0242, B:90:0x0261, B:91:0x0274, B:93:0x0286, B:95:0x0296, B:96:0x02a7, B:110:0x02eb, B:113:0x02fc, B:116:0x030a, B:119:0x031b, B:121:0x0329, B:123:0x0336, B:126:0x033d, B:130:0x034a, B:132:0x0356, B:134:0x036f, B:135:0x0374, B:137:0x0383, B:139:0x0390, B:145:0x03ba, B:150:0x03e0, B:152:0x03e7, B:154:0x03ee, B:156:0x03f5, B:158:0x03fc, B:160:0x0403, B:166:0x0415, B:168:0x041c, B:170:0x0423, B:172:0x042a, B:164:0x040e, B:138:0x038a, B:140:0x03ad, B:142:0x03b2, B:98:0x02af, B:100:0x02b5, B:103:0x02bd, B:105:0x02c1, B:107:0x02d5, B:109:0x02d9, B:75:0x01f7, B:77:0x0205, B:79:0x020b, B:61:0x01c3, B:173:0x0432), top: B:195:0x000a, outer: #3 }] */
    /* JADX WARN: Code duplicated, block: B:142:0x03b2 A[Catch: all -> 0x0441, TryCatch #1 {all -> 0x0441, blocks: (B:4:0x000a, B:6:0x0010, B:8:0x001f, B:9:0x0034, B:11:0x003a, B:12:0x004d, B:14:0x005d, B:16:0x0065, B:147:0x03cc, B:18:0x006d, B:20:0x007d, B:22:0x008f, B:25:0x00b0, B:27:0x00c0, B:31:0x00cd, B:42:0x00f9, B:38:0x00eb, B:62:0x01c6, B:64:0x01da, B:66:0x01de, B:67:0x01e0, B:69:0x01e5, B:70:0x01e7, B:71:0x01ec, B:81:0x0210, B:82:0x0226, B:84:0x022c, B:86:0x0235, B:88:0x0242, B:90:0x0261, B:91:0x0274, B:93:0x0286, B:95:0x0296, B:96:0x02a7, B:110:0x02eb, B:113:0x02fc, B:116:0x030a, B:119:0x031b, B:121:0x0329, B:123:0x0336, B:126:0x033d, B:130:0x034a, B:132:0x0356, B:134:0x036f, B:135:0x0374, B:137:0x0383, B:139:0x0390, B:145:0x03ba, B:150:0x03e0, B:152:0x03e7, B:154:0x03ee, B:156:0x03f5, B:158:0x03fc, B:160:0x0403, B:166:0x0415, B:168:0x041c, B:170:0x0423, B:172:0x042a, B:164:0x040e, B:138:0x038a, B:140:0x03ad, B:142:0x03b2, B:98:0x02af, B:100:0x02b5, B:103:0x02bd, B:105:0x02c1, B:107:0x02d5, B:109:0x02d9, B:75:0x01f7, B:77:0x0205, B:79:0x020b, B:61:0x01c3, B:173:0x0432), top: B:195:0x000a, outer: #3 }] */
    /* JADX WARN: Code duplicated, block: B:146:0x03c6  */
    /* JADX WARN: Code duplicated, block: B:202:0x03ba A[SYNTHETIC] */
    /* JADX WARN: Code duplicated, block: B:55:0x01b7  */
    /* JADX WARN: Instruction removed from duplicated block: B:132:0x0356, please report this as an issue */
    private static void a(String str, boolean z10, boolean z11) {
        ConditionVariable conditionVariable;
        int i10;
        boolean z12;
        boolean z13;
        File[] fileArr;
        int i11;
        int i12;
        String str2;
        String name;
        String str3;
        boolean z14;
        int i13;
        String[] strArrSplit;
        File file;
        com.uc.crashsdk.a.a.a("crashsdk", "crashsdk uploading logs");
        synchronized (f84112n) {
            try {
                try {
                    if (com.uc.crashsdk.a.g.b(str)) {
                        String strX = g.X();
                        File file2 = new File(strX);
                        if (file2.exists()) {
                            File[] fileArrListFiles = file2.listFiles();
                            if (fileArrListFiles == null) {
                                com.uc.crashsdk.a.a.b("List folder failed: " + strX);
                            } else {
                                int length = fileArrListFiles.length;
                                int i14 = 0;
                                int i15 = 0;
                                int i16 = 0;
                                int i17 = 0;
                                int i18 = 0;
                                int i19 = 0;
                                int i20 = 0;
                                int i21 = 0;
                                int i22 = 0;
                                boolean z15 = false;
                                boolean z16 = false;
                                boolean z17 = false;
                                while (true) {
                                    if (i14 >= length) {
                                        i10 = i17;
                                        z12 = z15;
                                        z13 = z16;
                                        break;
                                    }
                                    File file3 = fileArrListFiles[i14];
                                    if (file3.isFile()) {
                                        String name2 = file3.getName();
                                        fileArr = fileArrListFiles;
                                        if (name2.endsWith(".tmp")) {
                                            if ((System.currentTimeMillis() - file3.lastModified()) / 1000 > 30) {
                                                com.uc.crashsdk.a.a.b("delete legacy tmp file: " + name2);
                                                i16++;
                                                com.uc.crashsdk.a.g.a(file3);
                                            }
                                            i11 = i20;
                                            z12 = z15;
                                        } else {
                                            length = length;
                                            z12 = z15;
                                            z13 = z16;
                                            if (file3.length() == 0) {
                                                i15++;
                                                com.uc.crashsdk.a.g.a(file3);
                                            } else {
                                                if (z10) {
                                                    long jCurrentTimeMillis = (System.currentTimeMillis() - file3.lastModified()) / 1000;
                                                    boolean z18 = jCurrentTimeMillis < 0 || (jCurrentTimeMillis >= 2 && (jCurrentTimeMillis >= 5 || !file3.getName().endsWith(LogFile.LOG_SUFFIX)));
                                                    com.uc.crashsdk.a.a.a(String.format(Locale.US, "file: %s, modify interval: %d s, safe upload: %s", file3.getName(), Long.valueOf(jCurrentTimeMillis), Boolean.valueOf(z18)));
                                                    if (!z18) {
                                                        i17++;
                                                    }
                                                }
                                                try {
                                                    if (g.k()) {
                                                        Matcher matcher = Pattern.compile("([^_]+)_([^_]+)_([^_]+)\\.crashsdk").matcher(file3.getName());
                                                        if (matcher.matches()) {
                                                            i10 = i17;
                                                            try {
                                                                file = new File(g.X() + String.format(Locale.US, "%s%s_%s_%s.%s", j(matcher.group(2)), n(), Q(), matcher.group(1), matcher.group(3)));
                                                                com.uc.crashsdk.a.a.a("crashsdk", "File " + file3.getPath() + " matches, rename to " + file.getPath());
                                                                file3.renameTo(file);
                                                            } catch (Throwable th) {
                                                                th = th;
                                                                com.uc.crashsdk.a.g.a(th);
                                                            }
                                                        } else {
                                                            i10 = i17;
                                                            file = file3;
                                                        }
                                                    } else {
                                                        i10 = i17;
                                                        file = file3;
                                                    }
                                                    if (file != file3) {
                                                        i21++;
                                                    }
                                                    file3 = file;
                                                } catch (Throwable th2) {
                                                    th = th2;
                                                    i10 = i17;
                                                }
                                                String path = file3.getPath();
                                                boolean[] zArrN = n(path);
                                                String strB = b(path, zArrN[0], zArrN[1]);
                                                if (path != strB) {
                                                    if (zArrN[0]) {
                                                        i20++;
                                                    }
                                                    if (zArrN[1]) {
                                                        i18++;
                                                    }
                                                    file3 = new File(strB);
                                                }
                                                File fileA = com.uc.crashsdk.d.a(file3);
                                                if (fileA == null) {
                                                    fileA = null;
                                                } else if (file3 != fileA && !file3.getName().equals(fileA.getName()) && file3.exists()) {
                                                    file3.delete();
                                                }
                                                if (fileA == null) {
                                                    com.uc.crashsdk.a.a.b("onBeforeUploadLog return null, skip upload: " + file3.getAbsolutePath());
                                                } else {
                                                    int iB = g.B();
                                                    if (iB <= 0 || fileA.length() < iB) {
                                                        d dVar = new d((byte) 0);
                                                        dVar.f84132b = 0L;
                                                        dVar.f84131a = System.currentTimeMillis();
                                                        String strU = U();
                                                        if (new File(strU).exists()) {
                                                            a(strU, new com.uc.crashsdk.a.e(MediaPlayer.MEDIA_PLAYER_OPTION_CMAF_MPD_PACKET_RECV_TIME, new Object[]{strU, dVar}));
                                                        }
                                                        long jC = g.C();
                                                        int iD = g.D();
                                                        int iE = g.E();
                                                        if (jC >= 0) {
                                                            i11 = i20;
                                                            i12 = i21;
                                                            if (dVar.f84132b + fileA.length() > jC) {
                                                                dVar.f84135e = true;
                                                                str2 = "Reach max upload bytes: " + jC;
                                                            }
                                                            com.uc.crashsdk.a.a.b(str2);
                                                            if (dVar.f84135e) {
                                                                i21 = i12;
                                                                z16 = z13;
                                                                i17 = i10;
                                                                z12 = true;
                                                            } else if (dVar.f84137g) {
                                                                i21 = i12;
                                                                i17 = i10;
                                                                z16 = true;
                                                            } else if (dVar.f84136f) {
                                                                i21 = i12;
                                                                z16 = z13;
                                                                i17 = i10;
                                                                z17 = true;
                                                            } else {
                                                                name = fileA.getName();
                                                                if (name.startsWith(P())) {
                                                                    strArrSplit = name.split("_", 10);
                                                                    if (strArrSplit.length == 9) {
                                                                        str3 = strArrSplit[1];
                                                                    } else {
                                                                        str3 = null;
                                                                    }
                                                                } else {
                                                                    str3 = null;
                                                                }
                                                                if (str3 == null && str3.equals(g.T())) {
                                                                    z14 = true;
                                                                } else {
                                                                    z14 = false;
                                                                }
                                                                if (com.uc.crashsdk.a.c.a(fileA, fileA.getName(), str)) {
                                                                    com.uc.crashsdk.a.a.a("crashsdk", "Uploaded log: " + fileA.getName(), null);
                                                                    if (z14) {
                                                                        f.a(13);
                                                                    }
                                                                    dVar.f84132b += fileA.length();
                                                                    if (b(fileA)) {
                                                                        dVar.f84133c++;
                                                                    } else {
                                                                        dVar.f84134d++;
                                                                    }
                                                                    String strU2 = U();
                                                                    a(strU2, new com.uc.crashsdk.a.e(MediaPlayer.MEDIA_PLAYER_OPTION_CMAF_CONNECT_TIME, new Object[]{strU2, dVar}));
                                                                    fileA.delete();
                                                                    i13 = 3;
                                                                    i22 = 0;
                                                                } else {
                                                                    i22++;
                                                                    if (z14) {
                                                                        f.a(14);
                                                                    }
                                                                    i13 = 3;
                                                                }
                                                                if (i22 >= i13) {
                                                                    com.uc.crashsdk.a.a.a("crashsdk", "Upload failed 3 times continuously, abort upload!", null);
                                                                    i21 = i12;
                                                                    i20 = i11;
                                                                    break;
                                                                } else {
                                                                    i21 = i12;
                                                                    z16 = z13;
                                                                    i17 = i10;
                                                                }
                                                            }
                                                        } else {
                                                            i11 = i20;
                                                            i12 = i21;
                                                        }
                                                        if (!g.f()) {
                                                            if (b(fileA)) {
                                                                if (iD >= 0 && dVar.f84133c >= iD) {
                                                                    dVar.f84137g = true;
                                                                    str2 = "Reach max upload builtin log count: " + iD;
                                                                    com.uc.crashsdk.a.a.b(str2);
                                                                }
                                                            } else if (iE >= 0 && dVar.f84134d >= iE) {
                                                                dVar.f84136f = true;
                                                                str2 = "Reach max upload custom log count: " + iE;
                                                                com.uc.crashsdk.a.a.b(str2);
                                                            }
                                                        }
                                                        if (dVar.f84135e) {
                                                            i21 = i12;
                                                            z16 = z13;
                                                            i17 = i10;
                                                            z12 = true;
                                                        } else if (dVar.f84137g) {
                                                            i21 = i12;
                                                            i17 = i10;
                                                            z16 = true;
                                                        } else if (dVar.f84136f) {
                                                            i21 = i12;
                                                            z16 = z13;
                                                            i17 = i10;
                                                            z17 = true;
                                                        } else {
                                                            name = fileA.getName();
                                                            if (name.startsWith(P())) {
                                                                strArrSplit = name.split("_", 10);
                                                                if (strArrSplit.length == 9) {
                                                                    str3 = strArrSplit[1];
                                                                } else {
                                                                    str3 = null;
                                                                }
                                                            } else {
                                                                str3 = null;
                                                            }
                                                            if (str3 == null) {
                                                                z14 = false;
                                                            } else {
                                                                z14 = false;
                                                            }
                                                            if (com.uc.crashsdk.a.c.a(fileA, fileA.getName(), str)) {
                                                                com.uc.crashsdk.a.a.a("crashsdk", "Uploaded log: " + fileA.getName(), null);
                                                                if (z14) {
                                                                    f.a(13);
                                                                }
                                                                dVar.f84132b += fileA.length();
                                                                if (b(fileA)) {
                                                                    dVar.f84133c++;
                                                                } else {
                                                                    dVar.f84134d++;
                                                                }
                                                                String strU3 = U();
                                                                a(strU3, new com.uc.crashsdk.a.e(MediaPlayer.MEDIA_PLAYER_OPTION_CMAF_CONNECT_TIME, new Object[]{strU3, dVar}));
                                                                fileA.delete();
                                                                i13 = 3;
                                                                i22 = 0;
                                                            } else {
                                                                i22++;
                                                                if (z14) {
                                                                    f.a(14);
                                                                }
                                                                i13 = 3;
                                                            }
                                                            if (i22 >= i13) {
                                                                com.uc.crashsdk.a.a.a("crashsdk", "Upload failed 3 times continuously, abort upload!", null);
                                                                i21 = i12;
                                                                i20 = i11;
                                                                break;
                                                            } else {
                                                                i21 = i12;
                                                                z16 = z13;
                                                                i17 = i10;
                                                            }
                                                        }
                                                    } else {
                                                        i19++;
                                                        com.uc.crashsdk.a.g.a(fileA);
                                                    }
                                                }
                                                i11 = i20;
                                                z16 = z13;
                                                i17 = i10;
                                            }
                                            i11 = i20;
                                            z16 = z13;
                                        }
                                        i14++;
                                        fileArrListFiles = fileArr;
                                        i20 = i11;
                                        length = length;
                                        z15 = z12;
                                    } else {
                                        com.uc.crashsdk.a.g.a(file3);
                                        fileArr = fileArrListFiles;
                                    }
                                    i11 = i20;
                                    z12 = z15;
                                    i14++;
                                    fileArrListFiles = fileArr;
                                    i20 = i11;
                                    length = length;
                                    z15 = z12;
                                }
                                if (i16 > 0) {
                                    f.a(200, i16);
                                }
                                if (i15 > 0) {
                                    f.a(15, i15);
                                }
                                if (i19 > 0) {
                                    f.a(17, i19);
                                }
                                if (z12) {
                                    f.a(19);
                                }
                                if (z13) {
                                    f.a(20);
                                }
                                if (z17) {
                                    f.a(21);
                                }
                                if (z12 || z13 || z17) {
                                    f.a(18);
                                }
                                if (i20 > 0) {
                                    f.a(24, i20);
                                }
                                if (i18 > 0) {
                                    f.a(201, i18);
                                }
                                if (i21 > 0) {
                                    f.a(25, i21);
                                }
                                if (i10 > 0) {
                                    f.a(26, i10);
                                }
                            }
                        } else {
                            com.uc.crashsdk.a.a.a("crashsdk", "Folder not exist: " + strX);
                        }
                    } else {
                        com.uc.crashsdk.a.a.a("crashsdk", "upload url is empty!");
                    }
                    if (z11) {
                        conditionVariable = f84113o;
                        conditionVariable.open();
                    }
                } catch (Throwable th3) {
                    try {
                        com.uc.crashsdk.a.g.a(th3);
                        if (z11) {
                            conditionVariable = f84113o;
                        }
                    } catch (Throwable th4) {
                        if (!z11) {
                            throw th4;
                        }
                        f84113o.open();
                        throw th4;
                    }
                }
            } catch (Throwable th5) {
                throw th5;
            }
        }
    }

    public static boolean a(boolean z10, boolean z11) {
        if (!f84103d) {
            if (com.uc.crashsdk.b.f84064d) {
                JNIBridge.set(1, true);
            }
            f84103d = true;
        }
        try {
            String strK = k();
            if (com.uc.crashsdk.a.g.a(strK)) {
                com.uc.crashsdk.a.a.a("crashsdk", "CrashHandler url is empty!");
                return false;
            }
            if (com.uc.crashsdk.a.f.a(z10 ? 1 : 0, new com.uc.crashsdk.a.e(406, new Object[]{strK, Boolean.valueOf(z11), Boolean.valueOf(z10)})) && z10) {
                ConditionVariable conditionVariable = f84113o;
                conditionVariable.close();
                if (!conditionVariable.block(BaseCloudFileManager.ACK_TIMEOUT)) {
                    com.uc.crashsdk.a.a.a("crashsdk", "timeout to wait for uploading");
                    return false;
                }
            }
            return true;
        } catch (Throwable th) {
            com.uc.crashsdk.a.g.a(th);
            return false;
        }
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Type inference failed for: r5v4 */
    /* JADX WARN: Type inference failed for: r5v5, types: [java.io.Closeable] */
    /* JADX WARN: Type inference failed for: r5v7 */
    private static boolean a(String str, com.uc.crashsdk.a.e eVar) {
        boolean zA;
        FileChannel channel;
        Exception e10;
        synchronized (f84114p) {
            File file = new File(str);
            if (!file.exists()) {
                try {
                    file.createNewFile();
                } catch (Exception e11) {
                    com.uc.crashsdk.a.g.a(e11);
                }
            }
            ?? r10 = 0;
            fileLockLock = null;
            FileLock fileLockLock = null;
            zA = false;
            try {
                try {
                    try {
                        channel = new RandomAccessFile(file, net.lingala.zip4j.util.e.f94694e0).getChannel();
                    } catch (Throwable th) {
                        th = th;
                        r10 = file;
                        com.uc.crashsdk.a.g.a((Closeable) r10);
                        throw th;
                    }
                } catch (Exception e12) {
                    try {
                        com.uc.crashsdk.a.g.a(e12);
                        channel = null;
                    } catch (Exception e13) {
                        channel = null;
                        e10 = e13;
                        com.uc.crashsdk.a.g.a(e10);
                        com.uc.crashsdk.a.g.a(channel);
                        return zA;
                    }
                }
                if (channel != null) {
                    try {
                        fileLockLock = channel.lock();
                    } catch (Exception e14) {
                        try {
                            com.uc.crashsdk.a.g.a(e14);
                        } catch (Exception e15) {
                            e10 = e15;
                            com.uc.crashsdk.a.g.a(e10);
                        }
                    }
                }
                try {
                    zA = eVar.a();
                    if (fileLockLock != null) {
                        try {
                            fileLockLock.release();
                        } catch (Exception e16) {
                            com.uc.crashsdk.a.g.a(e16);
                        }
                    }
                    com.uc.crashsdk.a.g.a(channel);
                } catch (Throwable th2) {
                    if (fileLockLock != null) {
                        try {
                            fileLockLock.release();
                        } catch (Exception e17) {
                            com.uc.crashsdk.a.g.a(e17);
                        }
                    }
                    throw th2;
                }
            } catch (Throwable th3) {
                th = th3;
            }
        }
        return zA;
    }

    private static boolean a(String str, d dVar) {
        String strA = com.uc.crashsdk.a.g.a(new File(str), 64, false);
        if (strA == null) {
            return false;
        }
        try {
            Matcher matcher = Pattern.compile("(\\d+)\\s+(\\d+)\\s+(\\d+)\\s+(\\d+)").matcher(strA);
            if (matcher.find()) {
                long j10 = Long.parseLong(matcher.group(1));
                if (System.currentTimeMillis() - j10 < 86400000) {
                    dVar.f84132b = Long.parseLong(matcher.group(2));
                    dVar.f84133c = Integer.parseInt(matcher.group(3));
                    dVar.f84134d = Integer.parseInt(matcher.group(4));
                    dVar.f84131a = j10;
                }
            }
        } catch (Throwable th) {
            com.uc.crashsdk.a.g.a(th);
        }
        return true;
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Type inference failed for: r11v0 */
    /* JADX WARN: Type inference failed for: r11v1, types: [boolean, int] */
    /* JADX WARN: Type inference failed for: r11v3 */
    public static boolean a(StringBuffer stringBuffer, String str, long j10, ArrayList<String> arrayList, ArrayList<String> arrayList2, ArrayList<String> arrayList3, String str2) {
        long j11;
        boolean z10;
        boolean zA;
        if (f84102c.get()) {
            com.uc.crashsdk.a.a.b("Processing java crash, skip generate custom log: " + str);
            return false;
        }
        boolean z11 = ag || com.uc.crashsdk.b.L();
        if (!z11 && !com.uc.crashsdk.a.d.e()) {
            com.uc.crashsdk.a.a.c("DEBUG", com.uc.crashsdk.a.d.b());
            return false;
        }
        if (!d(str)) {
            com.uc.crashsdk.a.a.d("DEBUG", "custom log sample miss: " + str);
            return false;
        }
        if (aa()) {
            com.uc.crashsdk.a.a.b("Processing native crash, skip generate custom log: " + str);
            return false;
        }
        if (stringBuffer == null || str == null) {
            return false;
        }
        String strA = g.X() + k(str);
        ?? r11 = (j10 & 32) != 0 ? 1 : 0;
        if (z11) {
            long jNativeClientCreateConnection = com.uc.crashsdk.b.f84064d ? JNIBridge.nativeClientCreateConnection(strA, "custom", str, r11) : 0L;
            if (jNativeClientCreateConnection == 0) {
                com.uc.crashsdk.a.a.d("DEBUG", "skip custom log: " + str);
                return false;
            }
            j11 = jNativeClientCreateConnection;
        } else {
            if (a(h(), str, (boolean) r11)) {
                return false;
            }
            g.a();
            a(false);
            j11 = 0;
        }
        synchronized (f84115q) {
            z10 = r11;
            zA = a(strA, j11, stringBuffer, str, j10, arrayList, arrayList2, arrayList3, str2);
        }
        if (zA && !z11) {
            b(h(), str, z10);
        }
        if (j11 != 0) {
            JNIBridge.nativeClientCloseConnection(j11);
        }
        if (!zA) {
            return false;
        }
        if (!z11) {
            r(strA);
        }
        if (!z11) {
            strA = a(m(strA));
        }
        b(strA, str);
        if (z10 == 0 || z11) {
            return true;
        }
        try {
            a(true, false);
            return true;
        } catch (Throwable th) {
            com.uc.crashsdk.a.g.a(th);
            return true;
        }
    }

    static boolean a(String str, String str2, boolean z10) {
        if (!o(str2)) {
            return false;
        }
        h.a(str, str2, true, z10);
        com.uc.crashsdk.a.a.b(String.format(Locale.US, "Custom log '%s' has reach max count!", str2));
        return true;
    }

    private static void a(a aVar, String str, long j10) {
        String strNativeDumpThreads;
        String str2 = null;
        if (com.uc.crashsdk.b.f84064d) {
            try {
                aVar.flush();
            } catch (Throwable th) {
                com.uc.crashsdk.a.g.a(th);
            }
            strNativeDumpThreads = JNIBridge.nativeDumpThreads(str, j10);
            if (ag || strNativeDumpThreads == null || strNativeDumpThreads.length() >= 512 || !strNativeDumpThreads.startsWith(net.lingala.zip4j.util.e.F0) || strNativeDumpThreads.indexOf(10) >= 0) {
                str2 = strNativeDumpThreads;
            } else {
                if (!new File(strNativeDumpThreads).exists()) {
                    str2 = "Can not found " + strNativeDumpThreads;
                }
                String str3 = str2;
                str2 = strNativeDumpThreads;
                strNativeDumpThreads = str3;
            }
        } else {
            strNativeDumpThreads = "Native not initialized, skip dump!";
        }
        if (strNativeDumpThreads != null) {
            try {
                aVar.write(strNativeDumpThreads.getBytes("UTF-8"));
                aVar.write("\n".getBytes("UTF-8"));
            } catch (Throwable th2) {
                com.uc.crashsdk.a.g.a(th2);
            }
            a((OutputStream) aVar);
        } else if (str2 != null && !ag) {
            b(aVar, str2, 1048576);
            File file = new File(str2);
            if (file.exists()) {
                file.delete();
            }
        }
        try {
            aVar.flush();
        } catch (Throwable th3) {
            com.uc.crashsdk.a.g.a(th3);
        }
    }

    /* JADX WARN: Code duplicated, block: B:100:0x012d A[Catch: all -> 0x005a, TryCatch #12 {all -> 0x005a, blocks: (B:32:0x0056, B:40:0x007b, B:42:0x0086, B:47:0x008f, B:49:0x0094, B:51:0x009a, B:53:0x00a1, B:55:0x00a7, B:57:0x00b0, B:59:0x00b6, B:70:0x00d8, B:76:0x00e5, B:75:0x00e2, B:69:0x00d5, B:89:0x010c, B:94:0x0118, B:93:0x0115, B:88:0x0109, B:84:0x00f9, B:95:0x011a, B:97:0x0122, B:98:0x0125, B:100:0x012d, B:102:0x0135, B:65:0x00c5, B:39:0x0078, B:71:0x00dc, B:61:0x00bf, B:85:0x00fc, B:43:0x0089, B:90:0x010e, B:66:0x00c8, B:80:0x00f3, B:36:0x005d), top: B:155:0x0056, inners: #0, #1, #2, #3, #4, #5, #7, #8 }] */
    /* JADX WARN: Code duplicated, block: B:102:0x0135 A[Catch: all -> 0x005a, TRY_LEAVE, TryCatch #12 {all -> 0x005a, blocks: (B:32:0x0056, B:40:0x007b, B:42:0x0086, B:47:0x008f, B:49:0x0094, B:51:0x009a, B:53:0x00a1, B:55:0x00a7, B:57:0x00b0, B:59:0x00b6, B:70:0x00d8, B:76:0x00e5, B:75:0x00e2, B:69:0x00d5, B:89:0x010c, B:94:0x0118, B:93:0x0115, B:88:0x0109, B:84:0x00f9, B:95:0x011a, B:97:0x0122, B:98:0x0125, B:100:0x012d, B:102:0x0135, B:65:0x00c5, B:39:0x0078, B:71:0x00dc, B:61:0x00bf, B:85:0x00fc, B:43:0x0089, B:90:0x010e, B:66:0x00c8, B:80:0x00f3, B:36:0x005d), top: B:155:0x0056, inners: #0, #1, #2, #3, #4, #5, #7, #8 }] */
    /* JADX WARN: Code duplicated, block: B:110:0x014f A[Catch: all -> 0x0177, TryCatch #9 {, blocks: (B:108:0x0145, B:110:0x014f, B:112:0x0159, B:113:0x015c, B:115:0x0160, B:116:0x0167, B:117:0x0169, B:119:0x016d, B:120:0x0175), top: B:149:0x0145, outer: #11 }] */
    /* JADX WARN: Code duplicated, block: B:112:0x0159 A[Catch: all -> 0x0177, TryCatch #9 {, blocks: (B:108:0x0145, B:110:0x014f, B:112:0x0159, B:113:0x015c, B:115:0x0160, B:116:0x0167, B:117:0x0169, B:119:0x016d, B:120:0x0175), top: B:149:0x0145, outer: #11 }] */
    /* JADX WARN: Code duplicated, block: B:115:0x0160 A[Catch: all -> 0x0177, TryCatch #9 {, blocks: (B:108:0x0145, B:110:0x014f, B:112:0x0159, B:113:0x015c, B:115:0x0160, B:116:0x0167, B:117:0x0169, B:119:0x016d, B:120:0x0175), top: B:149:0x0145, outer: #11 }] */
    /* JADX WARN: Code duplicated, block: B:119:0x016d A[Catch: all -> 0x0177, TryCatch #9 {, blocks: (B:108:0x0145, B:110:0x014f, B:112:0x0159, B:113:0x015c, B:115:0x0160, B:116:0x0167, B:117:0x0169, B:119:0x016d, B:120:0x0175), top: B:149:0x0145, outer: #11 }] */
    /* JADX WARN: Code duplicated, block: B:133:0x00bf A[EXC_TOP_SPLITTER, SYNTHETIC] */
    /* JADX WARN: Code duplicated, block: B:147:0x005d A[EXC_TOP_SPLITTER, SYNTHETIC] */
    /* JADX WARN: Code duplicated, block: B:149:0x0145 A[EXC_TOP_SPLITTER, SYNTHETIC] */
    /* JADX WARN: Code duplicated, block: B:27:0x0043  */
    /* JADX WARN: Code duplicated, block: B:29:0x004a  */
    /* JADX WARN: Code duplicated, block: B:31:0x0054  */
    /* JADX WARN: Code duplicated, block: B:42:0x0086 A[Catch: all -> 0x005a, TRY_LEAVE, TryCatch #12 {all -> 0x005a, blocks: (B:32:0x0056, B:40:0x007b, B:42:0x0086, B:47:0x008f, B:49:0x0094, B:51:0x009a, B:53:0x00a1, B:55:0x00a7, B:57:0x00b0, B:59:0x00b6, B:70:0x00d8, B:76:0x00e5, B:75:0x00e2, B:69:0x00d5, B:89:0x010c, B:94:0x0118, B:93:0x0115, B:88:0x0109, B:84:0x00f9, B:95:0x011a, B:97:0x0122, B:98:0x0125, B:100:0x012d, B:102:0x0135, B:65:0x00c5, B:39:0x0078, B:71:0x00dc, B:61:0x00bf, B:85:0x00fc, B:43:0x0089, B:90:0x010e, B:66:0x00c8, B:80:0x00f3, B:36:0x005d), top: B:155:0x0056, inners: #0, #1, #2, #3, #4, #5, #7, #8 }] */
    /* JADX WARN: Code duplicated, block: B:48:0x0092 A[DONT_INVERT] */
    /* JADX WARN: Code duplicated, block: B:49:0x0094 A[Catch: all -> 0x005a, TryCatch #12 {all -> 0x005a, blocks: (B:32:0x0056, B:40:0x007b, B:42:0x0086, B:47:0x008f, B:49:0x0094, B:51:0x009a, B:53:0x00a1, B:55:0x00a7, B:57:0x00b0, B:59:0x00b6, B:70:0x00d8, B:76:0x00e5, B:75:0x00e2, B:69:0x00d5, B:89:0x010c, B:94:0x0118, B:93:0x0115, B:88:0x0109, B:84:0x00f9, B:95:0x011a, B:97:0x0122, B:98:0x0125, B:100:0x012d, B:102:0x0135, B:65:0x00c5, B:39:0x0078, B:71:0x00dc, B:61:0x00bf, B:85:0x00fc, B:43:0x0089, B:90:0x010e, B:66:0x00c8, B:80:0x00f3, B:36:0x005d), top: B:155:0x0056, inners: #0, #1, #2, #3, #4, #5, #7, #8 }] */
    /* JADX WARN: Code duplicated, block: B:53:0x00a1 A[Catch: all -> 0x005a, TryCatch #12 {all -> 0x005a, blocks: (B:32:0x0056, B:40:0x007b, B:42:0x0086, B:47:0x008f, B:49:0x0094, B:51:0x009a, B:53:0x00a1, B:55:0x00a7, B:57:0x00b0, B:59:0x00b6, B:70:0x00d8, B:76:0x00e5, B:75:0x00e2, B:69:0x00d5, B:89:0x010c, B:94:0x0118, B:93:0x0115, B:88:0x0109, B:84:0x00f9, B:95:0x011a, B:97:0x0122, B:98:0x0125, B:100:0x012d, B:102:0x0135, B:65:0x00c5, B:39:0x0078, B:71:0x00dc, B:61:0x00bf, B:85:0x00fc, B:43:0x0089, B:90:0x010e, B:66:0x00c8, B:80:0x00f3, B:36:0x005d), top: B:155:0x0056, inners: #0, #1, #2, #3, #4, #5, #7, #8 }] */
    /* JADX WARN: Code duplicated, block: B:57:0x00b0 A[Catch: all -> 0x005a, TryCatch #12 {all -> 0x005a, blocks: (B:32:0x0056, B:40:0x007b, B:42:0x0086, B:47:0x008f, B:49:0x0094, B:51:0x009a, B:53:0x00a1, B:55:0x00a7, B:57:0x00b0, B:59:0x00b6, B:70:0x00d8, B:76:0x00e5, B:75:0x00e2, B:69:0x00d5, B:89:0x010c, B:94:0x0118, B:93:0x0115, B:88:0x0109, B:84:0x00f9, B:95:0x011a, B:97:0x0122, B:98:0x0125, B:100:0x012d, B:102:0x0135, B:65:0x00c5, B:39:0x0078, B:71:0x00dc, B:61:0x00bf, B:85:0x00fc, B:43:0x0089, B:90:0x010e, B:66:0x00c8, B:80:0x00f3, B:36:0x005d), top: B:155:0x0056, inners: #0, #1, #2, #3, #4, #5, #7, #8 }] */
    /* JADX WARN: Code duplicated, block: B:77:0x00e9  */
    /* JADX WARN: Code duplicated, block: B:79:0x00f1 A[ADDED_TO_REGION] */
    /* JADX WARN: Code duplicated, block: B:95:0x011a A[Catch: all -> 0x005a, TryCatch #12 {all -> 0x005a, blocks: (B:32:0x0056, B:40:0x007b, B:42:0x0086, B:47:0x008f, B:49:0x0094, B:51:0x009a, B:53:0x00a1, B:55:0x00a7, B:57:0x00b0, B:59:0x00b6, B:70:0x00d8, B:76:0x00e5, B:75:0x00e2, B:69:0x00d5, B:89:0x010c, B:94:0x0118, B:93:0x0115, B:88:0x0109, B:84:0x00f9, B:95:0x011a, B:97:0x0122, B:98:0x0125, B:100:0x012d, B:102:0x0135, B:65:0x00c5, B:39:0x0078, B:71:0x00dc, B:61:0x00bf, B:85:0x00fc, B:43:0x0089, B:90:0x010e, B:66:0x00c8, B:80:0x00f3, B:36:0x005d), top: B:155:0x0056, inners: #0, #1, #2, #3, #4, #5, #7, #8 }] */
    /* JADX WARN: Code duplicated, block: B:97:0x0122 A[Catch: all -> 0x005a, TryCatch #12 {all -> 0x005a, blocks: (B:32:0x0056, B:40:0x007b, B:42:0x0086, B:47:0x008f, B:49:0x0094, B:51:0x009a, B:53:0x00a1, B:55:0x00a7, B:57:0x00b0, B:59:0x00b6, B:70:0x00d8, B:76:0x00e5, B:75:0x00e2, B:69:0x00d5, B:89:0x010c, B:94:0x0118, B:93:0x0115, B:88:0x0109, B:84:0x00f9, B:95:0x011a, B:97:0x0122, B:98:0x0125, B:100:0x012d, B:102:0x0135, B:65:0x00c5, B:39:0x0078, B:71:0x00dc, B:61:0x00bf, B:85:0x00fc, B:43:0x0089, B:90:0x010e, B:66:0x00c8, B:80:0x00f3, B:36:0x005d), top: B:155:0x0056, inners: #0, #1, #2, #3, #4, #5, #7, #8 }] */
    private static boolean a(String str, long j10, StringBuffer stringBuffer, String str2, long j11, ArrayList<String> arrayList, ArrayList<String> arrayList2, ArrayList<String> arrayList3, String str3) {
        FileOutputStream fileOutputStream;
        a aVar;
        ArrayList<String> arrayList4;
        String str4;
        if (j10 == 0) {
            try {
                fileOutputStream = new FileOutputStream(str);
            } catch (Throwable th) {
                th = th;
                fileOutputStream = null;
                aVar = null;
                com.uc.crashsdk.a.g.a(th);
                if (aVar == null) {
                    com.uc.crashsdk.a.g.a(aVar);
                    com.uc.crashsdk.a.g.a(fileOutputStream);
                    return false;
                }
                if ((j11 & 1) != 0) {
                    try {
                        b(aVar, str, str2);
                        try {
                            aVar.write(stringBuffer.toString().getBytes());
                            aVar.write("\n".getBytes("UTF-8"));
                            aVar.flush();
                        } catch (Throwable th2) {
                            a(th2, aVar);
                        }
                        a((OutputStream) aVar);
                        if ((j11 & 4) != 0) {
                            b((OutputStream) aVar);
                            try {
                                aVar.flush();
                            } catch (Throwable th3) {
                                com.uc.crashsdk.a.g.a(th3);
                            }
                            if (arrayList != null) {
                                com.uc.crashsdk.a.a(aVar, "UTF-8", arrayList);
                            }
                            if (arrayList2 != null) {
                                com.uc.crashsdk.a.a(aVar, "UTF-8", "--- --- --- --- --- --- --- --- --- --- --- --- --- --- --- ---\n", arrayList2);
                            }
                            if (arrayList3 != null) {
                                com.uc.crashsdk.a.b(aVar, "UTF-8", "--- --- --- --- --- --- --- --- --- --- --- --- --- --- --- ---\n", arrayList3);
                            }
                            if (str3 != null) {
                                try {
                                    aVar.flush();
                                } catch (Throwable th4) {
                                    a(th4, aVar);
                                }
                                try {
                                    aVar.write("threads dump:\n".getBytes("UTF-8"));
                                } catch (Throwable th5) {
                                    a(th5, aVar);
                                }
                                f84106h = false;
                                f84121w = str3;
                                try {
                                    a(aVar, str3, j10);
                                } catch (Throwable th6) {
                                    a(th6, aVar);
                                }
                                f84121w = null;
                                f84106h = true;
                                if ((j11 & 8) == 0) {
                                    if ((j11 & 16) != 0) {
                                        e(aVar);
                                    }
                                    if ((j11 & 2) != 0) {
                                        aVar.a();
                                        a(aVar);
                                    }
                                    if (j10 != 0) {
                                        b(aVar);
                                    }
                                } else {
                                    if ((j11 & 16) != 0) {
                                        e(aVar);
                                    }
                                    if ((j11 & 2) != 0) {
                                        aVar.a();
                                        a(aVar);
                                    }
                                    if (j10 != 0) {
                                        b(aVar);
                                    }
                                }
                            } else if ((j11 & 8) == 0) {
                                if ((j11 & 16) != 0) {
                                    e(aVar);
                                }
                                if ((j11 & 2) != 0) {
                                    aVar.a();
                                    a(aVar);
                                }
                                if (j10 != 0) {
                                    b(aVar);
                                }
                            } else {
                                if ((j11 & 16) != 0) {
                                    e(aVar);
                                }
                                if ((j11 & 2) != 0) {
                                    aVar.a();
                                    a(aVar);
                                }
                                if (j10 != 0) {
                                    b(aVar);
                                }
                            }
                        } else {
                            if (arrayList != null) {
                                com.uc.crashsdk.a.a(aVar, "UTF-8", arrayList);
                            }
                            if (arrayList2 != null) {
                                com.uc.crashsdk.a.a(aVar, "UTF-8", "--- --- --- --- --- --- --- --- --- --- --- --- --- --- --- ---\n", arrayList2);
                            }
                            if (arrayList3 != null) {
                                com.uc.crashsdk.a.b(aVar, "UTF-8", "--- --- --- --- --- --- --- --- --- --- --- --- --- --- --- ---\n", arrayList3);
                            }
                            if (str3 != null) {
                                aVar.flush();
                                aVar.write("threads dump:\n".getBytes("UTF-8"));
                                f84106h = false;
                                f84121w = str3;
                                a(aVar, str3, j10);
                                f84121w = null;
                                f84106h = true;
                                if ((j11 & 8) == 0) {
                                    if ((j11 & 16) != 0) {
                                        e(aVar);
                                    }
                                    if ((j11 & 2) != 0) {
                                        aVar.a();
                                        a(aVar);
                                    }
                                    if (j10 != 0) {
                                        b(aVar);
                                    }
                                } else {
                                    if ((j11 & 16) != 0) {
                                        e(aVar);
                                    }
                                    if ((j11 & 2) != 0) {
                                        aVar.a();
                                        a(aVar);
                                    }
                                    if (j10 != 0) {
                                        b(aVar);
                                    }
                                }
                            } else if ((j11 & 8) == 0) {
                                if ((j11 & 16) != 0) {
                                    e(aVar);
                                }
                                if ((j11 & 2) != 0) {
                                    aVar.a();
                                    a(aVar);
                                }
                                if (j10 != 0) {
                                    b(aVar);
                                }
                            } else {
                                if ((j11 & 16) != 0) {
                                    e(aVar);
                                }
                                if ((j11 & 2) != 0) {
                                    aVar.a();
                                    a(aVar);
                                }
                                if (j10 != 0) {
                                    b(aVar);
                                }
                            }
                        }
                    } catch (Throwable th7) {
                        try {
                            a(th7, aVar);
                        } catch (Throwable th8) {
                            com.uc.crashsdk.a.g.a(aVar);
                            com.uc.crashsdk.a.g.a(fileOutputStream);
                            throw th8;
                        }
                    }
                } else {
                    aVar.write(stringBuffer.toString().getBytes());
                    aVar.write("\n".getBytes("UTF-8"));
                    aVar.flush();
                    a((OutputStream) aVar);
                    if ((j11 & 4) != 0) {
                        b((OutputStream) aVar);
                        aVar.flush();
                        if (arrayList != null) {
                            com.uc.crashsdk.a.a(aVar, "UTF-8", arrayList);
                        }
                        if (arrayList2 != null) {
                            com.uc.crashsdk.a.a(aVar, "UTF-8", "--- --- --- --- --- --- --- --- --- --- --- --- --- --- --- ---\n", arrayList2);
                        }
                        if (arrayList3 != null) {
                            com.uc.crashsdk.a.b(aVar, "UTF-8", "--- --- --- --- --- --- --- --- --- --- --- --- --- --- --- ---\n", arrayList3);
                        }
                        if (str3 != null) {
                            aVar.flush();
                            aVar.write("threads dump:\n".getBytes("UTF-8"));
                            f84106h = false;
                            f84121w = str3;
                            a(aVar, str3, j10);
                            f84121w = null;
                            f84106h = true;
                            if ((j11 & 8) == 0) {
                                if ((j11 & 16) != 0) {
                                    e(aVar);
                                }
                                if ((j11 & 2) != 0) {
                                    aVar.a();
                                    a(aVar);
                                }
                                if (j10 != 0) {
                                    b(aVar);
                                }
                            } else {
                                if ((j11 & 16) != 0) {
                                    e(aVar);
                                }
                                if ((j11 & 2) != 0) {
                                    aVar.a();
                                    a(aVar);
                                }
                                if (j10 != 0) {
                                    b(aVar);
                                }
                            }
                        } else if ((j11 & 8) == 0) {
                            if ((j11 & 16) != 0) {
                                e(aVar);
                            }
                            if ((j11 & 2) != 0) {
                                aVar.a();
                                a(aVar);
                            }
                            if (j10 != 0) {
                                b(aVar);
                            }
                        } else {
                            if ((j11 & 16) != 0) {
                                e(aVar);
                            }
                            if ((j11 & 2) != 0) {
                                aVar.a();
                                a(aVar);
                            }
                            if (j10 != 0) {
                                b(aVar);
                            }
                        }
                    } else {
                        if (arrayList != null) {
                            com.uc.crashsdk.a.a(aVar, "UTF-8", arrayList);
                        }
                        if (arrayList2 != null) {
                            com.uc.crashsdk.a.a(aVar, "UTF-8", "--- --- --- --- --- --- --- --- --- --- --- --- --- --- --- ---\n", arrayList2);
                        }
                        if (arrayList3 != null) {
                            com.uc.crashsdk.a.b(aVar, "UTF-8", "--- --- --- --- --- --- --- --- --- --- --- --- --- --- --- ---\n", arrayList3);
                        }
                        if (str3 != null) {
                            aVar.flush();
                            aVar.write("threads dump:\n".getBytes("UTF-8"));
                            f84106h = false;
                            f84121w = str3;
                            a(aVar, str3, j10);
                            f84121w = null;
                            f84106h = true;
                            if ((j11 & 8) == 0) {
                                if ((j11 & 16) != 0) {
                                    e(aVar);
                                }
                                if ((j11 & 2) != 0) {
                                    aVar.a();
                                    a(aVar);
                                }
                                if (j10 != 0) {
                                    b(aVar);
                                }
                            } else {
                                if ((j11 & 16) != 0) {
                                    e(aVar);
                                }
                                if ((j11 & 2) != 0) {
                                    aVar.a();
                                    a(aVar);
                                }
                                if (j10 != 0) {
                                    b(aVar);
                                }
                            }
                        } else if ((j11 & 8) == 0) {
                            if ((j11 & 16) != 0) {
                                e(aVar);
                            }
                            if ((j11 & 2) != 0) {
                                aVar.a();
                                a(aVar);
                            }
                            if (j10 != 0) {
                                b(aVar);
                            }
                        } else {
                            if ((j11 & 16) != 0) {
                                e(aVar);
                            }
                            if ((j11 & 2) != 0) {
                                aVar.a();
                                a(aVar);
                            }
                            if (j10 != 0) {
                                b(aVar);
                            }
                        }
                    }
                }
                com.uc.crashsdk.a.g.a(aVar);
                com.uc.crashsdk.a.g.a(fileOutputStream);
                try {
                    arrayList4 = f84117s;
                    synchronized (arrayList4) {
                        f84118t++;
                        str4 = f84119u;
                        if (str4 != null) {
                            arrayList4.add(str4);
                            if (arrayList4.size() > 3) {
                                arrayList4.remove(0);
                            }
                            if (com.uc.crashsdk.b.f84064d) {
                                JNIBridge.set(127, f84119u);
                            }
                            f84119u = null;
                        }
                        if (com.uc.crashsdk.b.f84064d) {
                            JNIBridge.set(25, f84118t);
                        }
                        return true;
                    }
                } catch (Throwable th9) {
                    com.uc.crashsdk.a.g.a(th9);
                }
            }
        } else {
            fileOutputStream = null;
        }
        try {
            aVar = new a(j10, fileOutputStream);
            try {
                synchronized (f84117s) {
                    f84119u = str;
                    if (com.uc.crashsdk.b.f84064d) {
                        JNIBridge.set(126, f84119u);
                    }
                }
            } catch (Throwable th10) {
                th = th10;
                com.uc.crashsdk.a.g.a(th);
            }
        } catch (Throwable th11) {
            th = th11;
            aVar = null;
        }
        if (aVar == null) {
            com.uc.crashsdk.a.g.a(aVar);
            com.uc.crashsdk.a.g.a(fileOutputStream);
            return false;
        }
        if ((j11 & 1) != 0) {
            b(aVar, str, str2);
            aVar.write(stringBuffer.toString().getBytes());
            aVar.write("\n".getBytes("UTF-8"));
            aVar.flush();
            a((OutputStream) aVar);
            if ((j11 & 4) != 0) {
                b((OutputStream) aVar);
                aVar.flush();
                if (arrayList != null && arrayList.size() > 0) {
                    com.uc.crashsdk.a.a(aVar, "UTF-8", arrayList);
                }
                if (arrayList2 != null && arrayList2.size() > 0) {
                    com.uc.crashsdk.a.a(aVar, "UTF-8", "--- --- --- --- --- --- --- --- --- --- --- --- --- --- --- ---\n", arrayList2);
                }
                if (arrayList3 != null && arrayList3.size() > 0) {
                    com.uc.crashsdk.a.b(aVar, "UTF-8", "--- --- --- --- --- --- --- --- --- --- --- --- --- --- --- ---\n", arrayList3);
                }
                if (str3 != null) {
                    aVar.flush();
                    aVar.write("threads dump:\n".getBytes("UTF-8"));
                    f84106h = false;
                    f84121w = str3;
                    a(aVar, str3, j10);
                    f84121w = null;
                    f84106h = true;
                    if ((j11 & 8) == 0 && j10 == 0) {
                        try {
                            aVar.flush();
                        } catch (Throwable th12) {
                            a(th12, aVar);
                        }
                        try {
                            aVar.write("all threads dump:\n".getBytes("UTF-8"));
                        } catch (Throwable th13) {
                            a(th13, aVar);
                        }
                        f84120v = true;
                        try {
                            a(aVar, "all", 0L);
                        } catch (Throwable th14) {
                            a(th14, aVar);
                        }
                        f84120v = false;
                        if ((j11 & 16) != 0) {
                            e(aVar);
                        }
                        if ((j11 & 2) != 0) {
                            aVar.a();
                            a(aVar);
                        }
                        if (j10 != 0) {
                            b(aVar);
                        }
                    } else {
                        if ((j11 & 16) != 0) {
                            e(aVar);
                        }
                        if ((j11 & 2) != 0) {
                            aVar.a();
                            a(aVar);
                        }
                        if (j10 != 0) {
                            b(aVar);
                        }
                    }
                } else if ((j11 & 8) == 0) {
                    if ((j11 & 16) != 0) {
                        e(aVar);
                    }
                    if ((j11 & 2) != 0) {
                        aVar.a();
                        a(aVar);
                    }
                    if (j10 != 0) {
                        b(aVar);
                    }
                } else {
                    if ((j11 & 16) != 0) {
                        e(aVar);
                    }
                    if ((j11 & 2) != 0) {
                        aVar.a();
                        a(aVar);
                    }
                    if (j10 != 0) {
                        b(aVar);
                    }
                }
            } else {
                if (arrayList != null) {
                    com.uc.crashsdk.a.a(aVar, "UTF-8", arrayList);
                }
                if (arrayList2 != null) {
                    com.uc.crashsdk.a.a(aVar, "UTF-8", "--- --- --- --- --- --- --- --- --- --- --- --- --- --- --- ---\n", arrayList2);
                }
                if (arrayList3 != null) {
                    com.uc.crashsdk.a.b(aVar, "UTF-8", "--- --- --- --- --- --- --- --- --- --- --- --- --- --- --- ---\n", arrayList3);
                }
                if (str3 != null) {
                    aVar.flush();
                    aVar.write("threads dump:\n".getBytes("UTF-8"));
                    f84106h = false;
                    f84121w = str3;
                    a(aVar, str3, j10);
                    f84121w = null;
                    f84106h = true;
                    if ((j11 & 8) == 0) {
                        if ((j11 & 16) != 0) {
                            e(aVar);
                        }
                        if ((j11 & 2) != 0) {
                            aVar.a();
                            a(aVar);
                        }
                        if (j10 != 0) {
                            b(aVar);
                        }
                    } else {
                        if ((j11 & 16) != 0) {
                            e(aVar);
                        }
                        if ((j11 & 2) != 0) {
                            aVar.a();
                            a(aVar);
                        }
                        if (j10 != 0) {
                            b(aVar);
                        }
                    }
                } else if ((j11 & 8) == 0) {
                    if ((j11 & 16) != 0) {
                        e(aVar);
                    }
                    if ((j11 & 2) != 0) {
                        aVar.a();
                        a(aVar);
                    }
                    if (j10 != 0) {
                        b(aVar);
                    }
                } else {
                    if ((j11 & 16) != 0) {
                        e(aVar);
                    }
                    if ((j11 & 2) != 0) {
                        aVar.a();
                        a(aVar);
                    }
                    if (j10 != 0) {
                        b(aVar);
                    }
                }
            }
        } else {
            aVar.write(stringBuffer.toString().getBytes());
            aVar.write("\n".getBytes("UTF-8"));
            aVar.flush();
            a((OutputStream) aVar);
            if ((j11 & 4) != 0) {
                b((OutputStream) aVar);
                aVar.flush();
                if (arrayList != null) {
                    com.uc.crashsdk.a.a(aVar, "UTF-8", arrayList);
                }
                if (arrayList2 != null) {
                    com.uc.crashsdk.a.a(aVar, "UTF-8", "--- --- --- --- --- --- --- --- --- --- --- --- --- --- --- ---\n", arrayList2);
                }
                if (arrayList3 != null) {
                    com.uc.crashsdk.a.b(aVar, "UTF-8", "--- --- --- --- --- --- --- --- --- --- --- --- --- --- --- ---\n", arrayList3);
                }
                if (str3 != null) {
                    aVar.flush();
                    aVar.write("threads dump:\n".getBytes("UTF-8"));
                    f84106h = false;
                    f84121w = str3;
                    a(aVar, str3, j10);
                    f84121w = null;
                    f84106h = true;
                    if ((j11 & 8) == 0) {
                        if ((j11 & 16) != 0) {
                            e(aVar);
                        }
                        if ((j11 & 2) != 0) {
                            aVar.a();
                            a(aVar);
                        }
                        if (j10 != 0) {
                            b(aVar);
                        }
                    } else {
                        if ((j11 & 16) != 0) {
                            e(aVar);
                        }
                        if ((j11 & 2) != 0) {
                            aVar.a();
                            a(aVar);
                        }
                        if (j10 != 0) {
                            b(aVar);
                        }
                    }
                } else if ((j11 & 8) == 0) {
                    if ((j11 & 16) != 0) {
                        e(aVar);
                    }
                    if ((j11 & 2) != 0) {
                        aVar.a();
                        a(aVar);
                    }
                    if (j10 != 0) {
                        b(aVar);
                    }
                } else {
                    if ((j11 & 16) != 0) {
                        e(aVar);
                    }
                    if ((j11 & 2) != 0) {
                        aVar.a();
                        a(aVar);
                    }
                    if (j10 != 0) {
                        b(aVar);
                    }
                }
            } else {
                if (arrayList != null) {
                    com.uc.crashsdk.a.a(aVar, "UTF-8", arrayList);
                }
                if (arrayList2 != null) {
                    com.uc.crashsdk.a.a(aVar, "UTF-8", "--- --- --- --- --- --- --- --- --- --- --- --- --- --- --- ---\n", arrayList2);
                }
                if (arrayList3 != null) {
                    com.uc.crashsdk.a.b(aVar, "UTF-8", "--- --- --- --- --- --- --- --- --- --- --- --- --- --- --- ---\n", arrayList3);
                }
                if (str3 != null) {
                    aVar.flush();
                    aVar.write("threads dump:\n".getBytes("UTF-8"));
                    f84106h = false;
                    f84121w = str3;
                    a(aVar, str3, j10);
                    f84121w = null;
                    f84106h = true;
                    if ((j11 & 8) == 0) {
                        if ((j11 & 16) != 0) {
                            e(aVar);
                        }
                        if ((j11 & 2) != 0) {
                            aVar.a();
                            a(aVar);
                        }
                        if (j10 != 0) {
                            b(aVar);
                        }
                    } else {
                        if ((j11 & 16) != 0) {
                            e(aVar);
                        }
                        if ((j11 & 2) != 0) {
                            aVar.a();
                            a(aVar);
                        }
                        if (j10 != 0) {
                            b(aVar);
                        }
                    }
                } else if ((j11 & 8) == 0) {
                    if ((j11 & 16) != 0) {
                        e(aVar);
                    }
                    if ((j11 & 2) != 0) {
                        aVar.a();
                        a(aVar);
                    }
                    if (j10 != 0) {
                        b(aVar);
                    }
                } else {
                    if ((j11 & 16) != 0) {
                        e(aVar);
                    }
                    if ((j11 & 2) != 0) {
                        aVar.a();
                        a(aVar);
                    }
                    if (j10 != 0) {
                        b(aVar);
                    }
                }
            }
        }
        com.uc.crashsdk.a.g.a(aVar);
        com.uc.crashsdk.a.g.a(fileOutputStream);
        arrayList4 = f84117s;
        synchronized (arrayList4) {
            f84118t++;
            str4 = f84119u;
            if (str4 != null) {
                arrayList4.add(str4);
                if (arrayList4.size() > 3) {
                    arrayList4.remove(0);
                }
                if (com.uc.crashsdk.b.f84064d) {
                    JNIBridge.set(127, f84119u);
                }
                f84119u = null;
            }
            if (com.uc.crashsdk.b.f84064d) {
                JNIBridge.set(25, f84118t);
            }
        }
        return true;
    }

    private static String a(Date date) {
        return String.format(Locale.US, "%d%02d%02d%02d%02d%02d", Integer.valueOf(date.getYear() + 1900), Integer.valueOf(date.getMonth() + 1), Integer.valueOf(date.getDate()), Integer.valueOf(date.getHours()), Integer.valueOf(date.getMinutes()), Integer.valueOf(date.getSeconds()));
    }

    static void a(OutputStream outputStream, String str, String str2, int i10, boolean z10, boolean z11) {
        f84106h = false;
        try {
            Locale locale = Locale.US;
            Object[] objArr = new Object[5];
            objArr[0] = str;
            objArr[1] = str2;
            objArr[2] = Integer.valueOf(i10);
            objArr[3] = Integer.valueOf(z10 ? 1 : 0);
            objArr[4] = Integer.valueOf(z11 ? 1 : 0);
            outputStream.write(String.format(locale, "$^%s`%s`%d`%d,%d^$", objArr).getBytes("UTF-8"));
        } catch (Throwable th) {
            com.uc.crashsdk.a.g.a(th);
        }
        f84106h = true;
        a(outputStream);
    }

    static void a(OutputStream outputStream, String str, String str2) {
        f84106h = false;
        try {
            outputStream.write(String.format(Locale.US, "$^%s`%s^$", str, str2).getBytes("UTF-8"));
        } catch (Throwable th) {
            com.uc.crashsdk.a.g.a(th);
        }
        f84106h = true;
    }

    public static void a(Context context) {
        try {
            if (V()) {
                context.registerReceiver(new c((byte) 0), new IntentFilter("android.intent.action.ANR"), null, com.uc.crashsdk.a.f.a(3));
            }
        } catch (Throwable th) {
            com.uc.crashsdk.a.g.a(th);
        }
    }

    /* JADX WARN: Code duplicated, block: B:163:0x023c  */
    /* JADX WARN: Code duplicated, block: B:204:0x02b7  */
    /* JADX WARN: Code duplicated, block: B:257:0x0355  */
    /* JADX WARN: Code duplicated, block: B:300:0x03d0  */
    /* JADX WARN: Code duplicated, block: B:359:0x04cd  */
    /* JADX WARN: Code duplicated, block: B:37:0x006d  */
    /* JADX WARN: Code duplicated, block: B:413:0x057e A[DONT_GENERATE] */
    /* JADX WARN: Code duplicated, block: B:458:0x05ff A[FINALLY_INSNS] */
    /* JADX WARN: Code duplicated, block: B:468:0x061a A[FINALLY_INSNS] */
    /* JADX WARN: Code duplicated, block: B:483:0x0650 A[FINALLY_INSNS] */
    /* JADX WARN: Code duplicated, block: B:589:? A[SYNTHETIC] */
    /* JADX WARN: Code duplicated, block: B:80:0x00ee  */
    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Type inference failed for: r12v0 */
    /* JADX WARN: Type inference failed for: r12v1, types: [long] */
    /* JADX WARN: Type inference failed for: r12v12 */
    /* JADX WARN: Type inference failed for: r12v2 */
    /* JADX WARN: Type inference failed for: r12v3 */
    /* JADX WARN: Type inference failed for: r12v4 */
    /* JADX WARN: Type inference failed for: r12v6, types: [long] */
    public final void a(Thread thread, Throwable th, boolean z10) {
        boolean z11;
        ?? r12;
        boolean z12;
        boolean zI;
        Thread.UncaughtExceptionHandler uncaughtExceptionHandler;
        Throwable th2;
        boolean z13;
        boolean zR;
        boolean zT;
        String str;
        boolean z14;
        Thread.UncaughtExceptionHandler uncaughtExceptionHandler2;
        boolean z15;
        Thread.UncaughtExceptionHandler uncaughtExceptionHandler3;
        Throwable th3;
        boolean z16;
        Thread.UncaughtExceptionHandler uncaughtExceptionHandler4;
        boolean z17;
        Thread.UncaughtExceptionHandler uncaughtExceptionHandler5;
        boolean z18;
        Thread.UncaughtExceptionHandler uncaughtExceptionHandler6;
        boolean z19;
        Thread.UncaughtExceptionHandler uncaughtExceptionHandler7;
        boolean z20;
        Thread.UncaughtExceptionHandler uncaughtExceptionHandler8;
        boolean z21 = (ag && com.uc.crashsdk.b.f84064d) || com.uc.crashsdk.b.L();
        try {
            r12 = 4;
            if (f84102c.getAndSet(true) && Process.myPid() > 0) {
                com.uc.crashsdk.a.a.d("DEBUG", "another thread is generating java report!");
                com.uc.crashsdk.a.a.d("DEBUG", "current thread exception is:");
                a(th);
                int i10 = 0;
                while (!V) {
                    try {
                        Thread.sleep(1000L);
                    } catch (Throwable th4) {
                        com.uc.crashsdk.a.g.a(th4);
                    }
                    i10++;
                    if (i10 >= 4) {
                        break;
                    }
                }
                Process.killProcess(Process.myPid());
                if (z10) {
                    try {
                        if (!g.r() || z21) {
                            z20 = false;
                        } else {
                            try {
                                a(true, false);
                                z20 = true;
                            } catch (Throwable th5) {
                                th = th5;
                                z20 = true;
                                com.uc.crashsdk.a.g.a(th);
                            }
                        }
                    } catch (Throwable th6) {
                        th = th6;
                        z20 = false;
                    }
                } else {
                    z20 = false;
                }
                if (!z20 && !z21) {
                    b(false);
                }
                try {
                    f.c(false);
                } catch (Throwable th7) {
                    com.uc.crashsdk.a.g.a(th7);
                }
                try {
                    boolean zI2 = g.i();
                    if (!com.uc.crashsdk.a.d.e()) {
                        zI2 = true;
                    }
                    com.uc.crashsdk.a.a.a("crashsdk", "Call java default handler: " + zI2);
                    if (zI2 && (uncaughtExceptionHandler8 = T) != null) {
                        uncaughtExceptionHandler8.uncaughtException(thread, th);
                    }
                    if (com.uc.crashsdk.b.B() && !z21) {
                        com.uc.crashsdk.b.b(com.uc.crashsdk.a.g.a());
                    }
                } catch (Throwable th8) {
                    com.uc.crashsdk.a.g.a(th8);
                }
                V = true;
                if (Process.myPid() > 0) {
                    Process.killProcess(Process.myPid());
                    return;
                }
                return;
            }
            U = th;
            if (!z21 && !com.uc.crashsdk.a.d.e()) {
                com.uc.crashsdk.a.a.c("DEBUG", com.uc.crashsdk.a.d.b());
                if (z10) {
                    try {
                        if (!g.r() || z21) {
                            z19 = false;
                        } else {
                            try {
                                a(true, false);
                                z19 = true;
                            } catch (Throwable th9) {
                                th = th9;
                                z19 = true;
                                com.uc.crashsdk.a.g.a(th);
                            }
                        }
                    } catch (Throwable th10) {
                        th = th10;
                        z19 = false;
                    }
                } else {
                    z19 = false;
                }
                if (!z19 && !z21) {
                    b(false);
                }
                try {
                    f.c(false);
                } catch (Throwable th11) {
                    com.uc.crashsdk.a.g.a(th11);
                }
                try {
                    boolean zI3 = g.i();
                    if (!com.uc.crashsdk.a.d.e()) {
                        zI3 = true;
                    }
                    com.uc.crashsdk.a.a.a("crashsdk", "Call java default handler: " + zI3);
                    if (zI3 && (uncaughtExceptionHandler7 = T) != null) {
                        uncaughtExceptionHandler7.uncaughtException(thread, th);
                    }
                    if (com.uc.crashsdk.b.B() && !z21) {
                        com.uc.crashsdk.b.b(com.uc.crashsdk.a.g.a());
                    }
                } catch (Throwable th12) {
                    com.uc.crashsdk.a.g.a(th12);
                }
                V = true;
                if (Process.myPid() > 0) {
                    Process.killProcess(Process.myPid());
                    return;
                }
                return;
            }
            com.uc.crashsdk.a.a.d("DEBUG", "encryptLog: " + g.x() + ", zipCrashLog: " + g.x());
            if (g.f84147a != null) {
                com.uc.crashsdk.a.a.d("DEBUG", "the set zip log to false stack is:");
                g.f84147a.printStackTrace();
            }
            if (g.f84148b != null) {
                com.uc.crashsdk.a.a.d("DEBUG", "the set encrypt to true stack is:");
                g.f84148b.printStackTrace();
            }
            com.uc.crashsdk.a.a.d("DEBUG", "begin to generate java report");
            try {
                N();
            } catch (Throwable th13) {
                com.uc.crashsdk.a.g.a(th13);
            }
            try {
                zT = g.t();
                try {
                    String strG = g.g();
                    if (strG == null || strG.equals("")) {
                        strG = k(S());
                    }
                    str = g.X() + strG;
                    z11 = false;
                } catch (Throwable th14) {
                    th = th14;
                    com.uc.crashsdk.a.a.d("DEBUG", "get java log name failed: " + th);
                    a(th);
                    com.uc.crashsdk.a.a.d("DEBUG", "original exception is: " + th);
                    a(th);
                    str = null;
                    z11 = true;
                }
            } catch (Throwable th15) {
                th = th15;
                zT = false;
            }
            try {
                try {
                    if (!z21) {
                        try {
                            g.a();
                            try {
                                if (com.uc.crashsdk.b.B()) {
                                    f.a(3);
                                } else {
                                    f.a(4);
                                }
                            } catch (Throwable th16) {
                                com.uc.crashsdk.a.g.a(th16);
                            }
                        } catch (Throwable th17) {
                            com.uc.crashsdk.a.g.a(th17);
                        }
                        try {
                            new File(com.uc.crashsdk.b.b()).createNewFile();
                        } catch (Throwable th18) {
                            com.uc.crashsdk.a.g.a(th18);
                        }
                        if (zT) {
                            com.uc.crashsdk.a.a.d("DEBUG", "omit java crash");
                            if (z10) {
                                try {
                                    if (!g.r() || z21) {
                                        z15 = false;
                                    } else {
                                        try {
                                            a(true, false);
                                            z15 = true;
                                        } catch (Throwable th19) {
                                            th = th19;
                                            z15 = true;
                                            com.uc.crashsdk.a.g.a(th);
                                        }
                                    }
                                } catch (Throwable th20) {
                                    th = th20;
                                    z15 = false;
                                }
                            } else {
                                z15 = false;
                            }
                            if (!z15 && !z21) {
                                b(false);
                            }
                            try {
                                f.c(false);
                            } catch (Throwable th21) {
                                com.uc.crashsdk.a.g.a(th21);
                            }
                            try {
                                boolean zI4 = g.i();
                                if (!com.uc.crashsdk.a.d.e()) {
                                    zI4 = true;
                                }
                                com.uc.crashsdk.a.a.a("crashsdk", "Call java default handler: " + zI4);
                                if (zI4 && (uncaughtExceptionHandler3 = T) != null) {
                                    uncaughtExceptionHandler3.uncaughtException(thread, th);
                                }
                                if (com.uc.crashsdk.b.B() && !z21) {
                                    com.uc.crashsdk.b.b(com.uc.crashsdk.a.g.a());
                                }
                            } catch (Throwable th22) {
                                com.uc.crashsdk.a.g.a(th22);
                            }
                            V = true;
                            if (Process.myPid() > 0) {
                                Process.killProcess(Process.myPid());
                                return;
                            }
                            return;
                        }
                        if (!d(LogType.JAVA_TYPE)) {
                            com.uc.crashsdk.a.a.d("DEBUG", "java log sample miss");
                            if (z10) {
                                try {
                                    if (!g.r() || z21) {
                                        z14 = false;
                                    } else {
                                        try {
                                            a(true, false);
                                            z14 = true;
                                        } catch (Throwable th23) {
                                            th = th23;
                                            z14 = true;
                                            com.uc.crashsdk.a.g.a(th);
                                        }
                                    }
                                } catch (Throwable th24) {
                                    th = th24;
                                    z14 = false;
                                }
                            } else {
                                z14 = false;
                            }
                            if (!z14 && !z21) {
                                b(false);
                            }
                            try {
                                f.c(false);
                            } catch (Throwable th25) {
                                com.uc.crashsdk.a.g.a(th25);
                            }
                            try {
                                boolean zI5 = g.i();
                                if (!com.uc.crashsdk.a.d.e()) {
                                    zI5 = true;
                                }
                                com.uc.crashsdk.a.a.a("crashsdk", "Call java default handler: " + zI5);
                                if (zI5 && (uncaughtExceptionHandler2 = T) != null) {
                                    uncaughtExceptionHandler2.uncaughtException(thread, th);
                                }
                                if (com.uc.crashsdk.b.B() && !z21) {
                                    com.uc.crashsdk.b.b(com.uc.crashsdk.a.g.a());
                                }
                            } catch (Throwable th26) {
                                com.uc.crashsdk.a.g.a(th26);
                            }
                            V = true;
                            if (Process.myPid() > 0) {
                                Process.killProcess(Process.myPid());
                                return;
                            }
                            return;
                        }
                        r12 = 0;
                    } else {
                        if (zT) {
                            str = "omit";
                            com.uc.crashsdk.a.a.d("DEBUG", "omit java crash");
                        }
                        long jNativeClientCreateConnection = com.uc.crashsdk.b.f84064d ? JNIBridge.nativeClientCreateConnection(str, LogType.JAVA_TYPE, null, 0) : 0L;
                        r12 = jNativeClientCreateConnection;
                        if (jNativeClientCreateConnection == 0) {
                            com.uc.crashsdk.a.a.d("DEBUG", "skip java crash:");
                            a(th);
                            if (jNativeClientCreateConnection != 0 && com.uc.crashsdk.b.f84064d) {
                                JNIBridge.nativeClientCloseConnection(jNativeClientCreateConnection);
                            }
                            if (z10) {
                                try {
                                    if (!g.r() || z21) {
                                        z18 = false;
                                    } else {
                                        try {
                                            a(true, false);
                                            z18 = true;
                                        } catch (Throwable th27) {
                                            th = th27;
                                            z18 = true;
                                            com.uc.crashsdk.a.g.a(th);
                                        }
                                    }
                                } catch (Throwable th28) {
                                    th = th28;
                                    z18 = false;
                                }
                            } else {
                                z18 = false;
                            }
                            if (!z18 && !z21) {
                                b(false);
                            }
                            try {
                                f.c(false);
                            } catch (Throwable th29) {
                                com.uc.crashsdk.a.g.a(th29);
                            }
                            try {
                                boolean zI6 = g.i();
                                if (!com.uc.crashsdk.a.d.e()) {
                                    zI6 = true;
                                }
                                com.uc.crashsdk.a.a.a("crashsdk", "Call java default handler: " + zI6);
                                if (zI6 && (uncaughtExceptionHandler6 = T) != null) {
                                    uncaughtExceptionHandler6.uncaughtException(thread, th);
                                }
                                if (com.uc.crashsdk.b.B() && !z21) {
                                    com.uc.crashsdk.b.b(com.uc.crashsdk.a.g.a());
                                }
                            } catch (Throwable th30) {
                                com.uc.crashsdk.a.g.a(th30);
                            }
                            V = true;
                            if (Process.myPid() > 0) {
                                Process.killProcess(Process.myPid());
                                return;
                            }
                            return;
                        }
                        if (zT) {
                            if (jNativeClientCreateConnection != 0 && com.uc.crashsdk.b.f84064d) {
                                JNIBridge.nativeClientCloseConnection(jNativeClientCreateConnection);
                            }
                            if (z10) {
                                try {
                                    if (!g.r() || z21) {
                                        z17 = false;
                                    } else {
                                        try {
                                            a(true, false);
                                            z17 = true;
                                        } catch (Throwable th31) {
                                            th = th31;
                                            z17 = true;
                                            com.uc.crashsdk.a.g.a(th);
                                        }
                                    }
                                } catch (Throwable th32) {
                                    th = th32;
                                    z17 = false;
                                }
                            } else {
                                z17 = false;
                            }
                            if (!z17 && !z21) {
                                b(false);
                            }
                            try {
                                f.c(false);
                            } catch (Throwable th33) {
                                com.uc.crashsdk.a.g.a(th33);
                            }
                            try {
                                boolean zI7 = g.i();
                                if (!com.uc.crashsdk.a.d.e()) {
                                    zI7 = true;
                                }
                                com.uc.crashsdk.a.a.a("crashsdk", "Call java default handler: " + zI7);
                                if (zI7 && (uncaughtExceptionHandler5 = T) != null) {
                                    uncaughtExceptionHandler5.uncaughtException(thread, th);
                                }
                                if (com.uc.crashsdk.b.B() && !z21) {
                                    com.uc.crashsdk.b.b(com.uc.crashsdk.a.g.a());
                                }
                            } catch (Throwable th34) {
                                com.uc.crashsdk.a.g.a(th34);
                            }
                            V = true;
                            if (Process.myPid() > 0) {
                                Process.killProcess(Process.myPid());
                                return;
                            }
                            return;
                        }
                    }
                    boolean z22 = th instanceof OutOfMemoryError;
                    a(th, str, r12, z22);
                    com.uc.crashsdk.a.a.d("DEBUG", "generate java report finished");
                    if (!com.uc.crashsdk.b.L() && z22 && g.j()) {
                        String name = new File(str).getName();
                        String strY = g.Y();
                        File file = new File(strY);
                        if (!file.exists()) {
                            file.mkdirs();
                        }
                        String str2 = String.format(Locale.US, "%s%s.hprof", strY, name);
                        com.uc.crashsdk.a.a.d("DEBUG", "begin dump hprof: " + str2);
                        long jCurrentTimeMillis = System.currentTimeMillis();
                        try {
                            Debug.dumpHprofData(str2);
                        } catch (Throwable th35) {
                            com.uc.crashsdk.a.g.a(th35);
                        }
                        com.uc.crashsdk.a.a.d("DEBUG", "end dump hprof, use " + (System.currentTimeMillis() - jCurrentTimeMillis) + " ms");
                    }
                    if (r12 != 0 && com.uc.crashsdk.b.f84064d) {
                        JNIBridge.nativeClientCloseConnection(r12);
                    }
                    if (z10) {
                        try {
                            if (!g.r() || z21) {
                                z16 = false;
                            } else {
                                try {
                                    a(true, false);
                                    z16 = true;
                                } catch (Throwable th36) {
                                    th3 = th36;
                                    z16 = true;
                                    com.uc.crashsdk.a.g.a(th3);
                                }
                            }
                        } catch (Throwable th37) {
                            th3 = th37;
                            z16 = false;
                        }
                    } else {
                        z16 = false;
                    }
                    if (!z16 && !z21) {
                        b(false);
                    }
                    try {
                        f.c(false);
                    } catch (Throwable th38) {
                        com.uc.crashsdk.a.g.a(th38);
                    }
                    try {
                        boolean zI8 = g.i();
                        if (!com.uc.crashsdk.a.d.e()) {
                            zI8 = true;
                        }
                        com.uc.crashsdk.a.a.a("crashsdk", "Call java default handler: " + zI8);
                        if (zI8 && (uncaughtExceptionHandler4 = T) != null) {
                            uncaughtExceptionHandler4.uncaughtException(thread, th);
                        }
                        if (com.uc.crashsdk.b.B() && !z21) {
                            com.uc.crashsdk.b.b(com.uc.crashsdk.a.g.a());
                        }
                    } catch (Throwable th39) {
                        com.uc.crashsdk.a.g.a(th39);
                    }
                    V = true;
                    if (Process.myPid() > 0) {
                        Process.killProcess(Process.myPid());
                        return;
                    }
                    return;
                } catch (Throwable th40) {
                    th = th40;
                }
            } catch (Throwable th41) {
                th = th41;
            }
        } catch (Throwable th42) {
            th = th42;
            z11 = false;
        }
        th = th42;
        z11 = false;
        r12 = 0;
        try {
            com.uc.crashsdk.a.a.d("DEBUG", "exception occurs while java log: " + th);
            a(th);
            if (!z11) {
                com.uc.crashsdk.a.a.d("DEBUG", "original exception is: " + th);
                a(th);
            }
            if (z10) {
                try {
                    if (zR && !z21) {
                        try {
                        } catch (Throwable th43) {
                            th2 = th43;
                        }
                    }
                } catch (Throwable th44) {
                    th2 = th44;
                }
            }
        } finally {
            if (r12 != 0 && com.uc.crashsdk.b.f84064d) {
                JNIBridge.nativeClientCloseConnection(r12);
            }
            if (z10) {
                try {
                    if (!g.r() || z21) {
                        z12 = false;
                    } else {
                        try {
                            a(true, false);
                            z12 = true;
                        } catch (Throwable th45) {
                            th = th45;
                            z12 = true;
                            com.uc.crashsdk.a.g.a(th);
                            if (!z12 && !z21) {
                                b(false);
                            }
                            f.c(false);
                            zI = g.i();
                            if (!com.uc.crashsdk.a.d.e()) {
                                zI = true;
                            }
                            com.uc.crashsdk.a.a.a("crashsdk", "Call java default handler: " + zI);
                            if (zI && (uncaughtExceptionHandler = T) != null) {
                                uncaughtExceptionHandler.uncaughtException(thread, th);
                            }
                            if (com.uc.crashsdk.b.B() && !z21) {
                                com.uc.crashsdk.b.b(com.uc.crashsdk.a.g.a());
                            }
                            V = true;
                            if (Process.myPid() > 0) {
                                Process.killProcess(Process.myPid());
                            }
                        }
                    }
                } catch (Throwable th46) {
                    th = th46;
                    z12 = false;
                }
            } else {
                z12 = false;
            }
            if (!z12) {
                b(false);
            }
            try {
                f.c(false);
            } catch (Throwable th47) {
                com.uc.crashsdk.a.g.a(th47);
            }
            try {
                zI = g.i();
                if (!com.uc.crashsdk.a.d.e()) {
                    zI = true;
                }
                com.uc.crashsdk.a.a.a("crashsdk", "Call java default handler: " + zI);
                if (zI) {
                    uncaughtExceptionHandler.uncaughtException(thread, th);
                }
                if (com.uc.crashsdk.b.B()) {
                    com.uc.crashsdk.b.b(com.uc.crashsdk.a.g.a());
                }
            } catch (Throwable th48) {
                com.uc.crashsdk.a.g.a(th48);
            }
            V = true;
            if (Process.myPid() > 0) {
                Process.killProcess(Process.myPid());
            }
        }
    }

    private static void a(Throwable th) {
        try {
            com.uc.crashsdk.a.a.d("DEBUG", a(th.getStackTrace(), (String) null).toString());
        } catch (Throwable unused) {
        }
    }

    private static void a(Calendar calendar) {
        if (g.S()) {
            long timeInMillis = calendar.getTimeInMillis();
            calendar.add(5, 1);
            calendar.set(11, 0);
            calendar.set(12, 0);
            calendar.set(13, 0);
            long timeInMillis2 = calendar.getTimeInMillis();
            long j10 = timeInMillis2 - timeInMillis;
            long j11 = bg.f74510s;
            if (j10 <= bg.f74510s) {
                j11 = 1000 + j10;
            }
            com.uc.crashsdk.a.f.a(0, new com.uc.crashsdk.a.e(TTAdConstant.VIDEO_COVER_URL_CODE, new Object[]{Long.valueOf(timeInMillis2)}), j11);
        }
    }

    static StringBuilder a(StackTraceElement[] stackTraceElementArr, String str) {
        StringBuilder sb2 = new StringBuilder();
        int i10 = 0;
        if (stackTraceElementArr != null && stackTraceElementArr.length > 0) {
            boolean z10 = str == null;
            int i11 = 0;
            for (StackTraceElement stackTraceElement : stackTraceElementArr) {
                i11++;
                sb2.append("  at ");
                sb2.append(stackTraceElement.toString());
                sb2.append("\n");
                if (!z10 && stackTraceElement.getMethodName().contains(str)) {
                    sb2.delete(0, sb2.length());
                    z10 = true;
                    i11 = 0;
                }
            }
            i10 = i11;
        }
        if (i10 == 0) {
            sb2.append("  (no java stack)\n");
        }
        return sb2;
    }

    public static boolean a(ParcelFileDescriptor parcelFileDescriptor) {
        if (af) {
            com.uc.crashsdk.a.a.d("crashsdk", "Can not call setHostFd and getHostFd in the same process!");
            return false;
        }
        if (!com.uc.crashsdk.b.f84064d) {
            com.uc.crashsdk.a.a.d("crashsdk", "Crash so is not loaded!");
            return false;
        }
        if (ae != null) {
            com.uc.crashsdk.a.a.c("crashsdk", "Has already set host fd!");
        }
        ae = parcelFileDescriptor;
        int fd2 = parcelFileDescriptor.getFd();
        int iNativeCmd = (int) JNIBridge.nativeCmd(13, fd2, null, null);
        ag = iNativeCmd != -1;
        return fd2 == -1 || iNativeCmd != -1;
    }
}
