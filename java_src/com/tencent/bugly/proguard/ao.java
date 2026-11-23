package com.tencent.bugly.proguard;

import android.content.Context;
import android.os.Process;
import java.io.File;
import java.io.FileOutputStream;
import java.io.IOException;
import java.text.SimpleDateFormat;
import java.util.Date;
import java.util.concurrent.ExecutorService;
import java.util.concurrent.Executors;

/* JADX INFO: loaded from: classes2.dex */
public final class ao {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public static boolean f83283a = true;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public static boolean f83284b = true;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    private static SimpleDateFormat f83285c = null;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    private static int f83286d = 30720;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    private static StringBuilder f83287e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    private static StringBuilder f83288f;

    /* JADX INFO: renamed from: g, reason: collision with root package name */
    private static boolean f83289g;

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    private static a f83290h;

    /* JADX INFO: renamed from: i, reason: collision with root package name */
    private static String f83291i;

    /* JADX INFO: renamed from: j, reason: collision with root package name */
    private static String f83292j;

    /* JADX INFO: renamed from: k, reason: collision with root package name */
    private static Context f83293k;

    /* JADX INFO: renamed from: l, reason: collision with root package name */
    private static String f83294l;

    /* JADX INFO: renamed from: m, reason: collision with root package name */
    private static boolean f83295m;

    /* JADX INFO: renamed from: n, reason: collision with root package name */
    private static boolean f83296n;

    /* JADX INFO: renamed from: o, reason: collision with root package name */
    private static ExecutorService f83297o;

    /* JADX INFO: renamed from: p, reason: collision with root package name */
    private static int f83298p;

    /* JADX INFO: renamed from: q, reason: collision with root package name */
    private static final Object f83299q = new Object();

    static {
        try {
            f83285c = new SimpleDateFormat("MM-dd HH:mm:ss");
        } catch (Throwable th) {
            al.b(th.getCause());
        }
    }

    public static synchronized void a(Context context) {
        if (f83295m || context == null || !f83284b) {
            return;
        }
        try {
            f83297o = Executors.newSingleThreadExecutor();
            f83288f = new StringBuilder(0);
            f83287e = new StringBuilder(0);
            f83293k = context;
            f83291i = aa.a(context).f83185e;
            f83292j = "";
            f83294l = f83293k.getFilesDir().getPath() + "/buglylog_" + f83291i + "_" + f83292j + ".txt";
            f83298p = Process.myPid();
        } catch (Throwable unused) {
        }
        f83295m = true;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static boolean d(String str, String str2, String str3) {
        q qVar;
        try {
            aa aaVarB = aa.b();
            if (aaVarB == null || (qVar = aaVarB.O) == null) {
                return false;
            }
            return qVar.appendLogToNative(str, str2, str3);
        } catch (Throwable th) {
            if (al.a(th)) {
                return false;
            }
            th.printStackTrace();
            return false;
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static synchronized void e(String str, String str2, String str3) {
        if (f83283a) {
            f(str, str2, str3);
        } else {
            g(str, str2, str3);
        }
    }

    private static synchronized void f(String str, String str2, String str3) {
        String strA = a(str, str2, str3, Process.myTid());
        synchronized (f83299q) {
            try {
                f83288f.append(strA);
                if (f83288f.length() >= f83286d) {
                    StringBuilder sb2 = f83288f;
                    f83288f = sb2.delete(0, sb2.indexOf("\u0001\r\n") + 1);
                }
            } catch (Throwable th) {
                if (!al.b(th)) {
                    th.printStackTrace();
                }
            }
        }
    }

    private static synchronized void g(String str, String str2, String str3) {
        String strA = a(str, str2, str3, Process.myTid());
        try {
            synchronized (f83299q) {
                try {
                    f83288f.append(strA);
                    if (f83288f.length() <= f83286d) {
                        return;
                    }
                    if (f83289g) {
                        return;
                    }
                    f83289g = true;
                    a aVar = f83290h;
                    if (aVar == null) {
                        f83290h = new a(f83294l);
                    } else {
                        File file = aVar.f83307b;
                        if (file == null || file.length() + ((long) f83288f.length()) > f83290h.f83308c) {
                            f83290h.a();
                        }
                    }
                    if (f83290h.a(f83288f.toString())) {
                        f83288f.setLength(0);
                        f83289g = false;
                    }
                } catch (Throwable unused) {
                }
            }
        } catch (Throwable th) {
            throw th;
        }
    }

    private static String b() {
        q qVar;
        try {
            aa aaVarB = aa.b();
            if (aaVarB == null || (qVar = aaVarB.O) == null) {
                return null;
            }
            return qVar.getLogFromNative();
        } catch (Throwable th) {
            if (al.a(th)) {
                return null;
            }
            th.printStackTrace();
            return null;
        }
    }

    private static byte[] c() {
        File file;
        if (!f83284b) {
            return null;
        }
        if (f83296n) {
            al.a("[LogUtil] Get user log from native.", new Object[0]);
            String strB = b();
            if (strB != null) {
                al.a("[LogUtil] Got user log from native: %d bytes", Integer.valueOf(strB.length()));
                return ap.a(strB, "BuglyNativeLog.txt");
            }
        }
        StringBuilder sb2 = new StringBuilder();
        synchronized (f83299q) {
            a aVar = f83290h;
            if (aVar != null && aVar.f83306a && (file = aVar.f83307b) != null && file.length() > 0) {
                sb2.append(ap.a(f83290h.f83307b, 30720, true));
            }
            StringBuilder sb3 = f83288f;
            if (sb3 != null && sb3.length() > 0) {
                sb2.append(f83288f.toString());
            }
        }
        return ap.a(sb2.toString(), "BuglyLog.txt");
    }

    public static class a {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        boolean f83306a;

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        File f83307b;

        /* JADX INFO: renamed from: c, reason: collision with root package name */
        long f83308c = 30720;

        /* JADX INFO: renamed from: d, reason: collision with root package name */
        private String f83309d;

        /* JADX INFO: renamed from: e, reason: collision with root package name */
        private long f83310e;

        public a(String str) {
            if (str == null || str.equals("")) {
                return;
            }
            this.f83309d = str;
            this.f83306a = a();
        }

        final boolean a() {
            try {
                File file = new File(this.f83309d);
                this.f83307b = file;
                if (file.exists() && !this.f83307b.delete()) {
                    this.f83306a = false;
                    return false;
                }
                if (this.f83307b.createNewFile()) {
                    return true;
                }
                this.f83306a = false;
                return false;
            } catch (Throwable th) {
                al.a(th);
                this.f83306a = false;
                return false;
            }
        }

        public final boolean a(String str) {
            if (!this.f83306a) {
                return false;
            }
            FileOutputStream fileOutputStream = null;
            try {
                FileOutputStream fileOutputStream2 = new FileOutputStream(this.f83307b, true);
                try {
                    byte[] bytes = str.getBytes("UTF-8");
                    fileOutputStream2.write(bytes);
                    fileOutputStream2.flush();
                    fileOutputStream2.close();
                    this.f83310e += (long) bytes.length;
                    this.f83306a = true;
                    try {
                        fileOutputStream2.close();
                    } catch (IOException unused) {
                    }
                    return true;
                } catch (Throwable th) {
                    th = th;
                    fileOutputStream = fileOutputStream2;
                    try {
                        al.a(th);
                        this.f83306a = false;
                        return false;
                    } finally {
                        if (fileOutputStream != null) {
                            try {
                                fileOutputStream.close();
                            } catch (IOException unused2) {
                            }
                        }
                    }
                }
            } catch (Throwable th2) {
                th = th2;
            }
        }
    }

    public static void a(int i10) {
        synchronized (f83299q) {
            f83286d = i10;
            if (i10 < 0) {
                f83286d = 0;
            } else if (i10 > 30720) {
                f83286d = 30720;
            }
        }
    }

    public static void a(String str, String str2, Throwable th) {
        if (th == null) {
            return;
        }
        String message = th.getMessage();
        if (message == null) {
            message = "";
        }
        a(str, str2, message + '\n' + ap.b(th));
    }

    public static synchronized void a(final String str, final String str2, final String str3) {
        if (f83295m && f83284b) {
            try {
                if (f83296n) {
                    f83297o.execute(new Runnable() { // from class: com.tencent.bugly.proguard.ao.1
                        @Override // java.lang.Runnable
                        public final void run() {
                            ao.d(str, str2, str3);
                        }
                    });
                } else {
                    f83297o.execute(new Runnable() { // from class: com.tencent.bugly.proguard.ao.2
                        @Override // java.lang.Runnable
                        public final void run() {
                            ao.e(str, str2, str3);
                        }
                    });
                }
            } catch (Exception e10) {
                al.b(e10);
            }
        }
    }

    private static String a(String str, String str2, String str3, long j10) {
        String string;
        f83287e.setLength(0);
        if (str3.length() > 30720) {
            str3 = str3.substring(str3.length() - 30720, str3.length() - 1);
        }
        Date date = new Date();
        SimpleDateFormat simpleDateFormat = f83285c;
        if (simpleDateFormat != null) {
            string = simpleDateFormat.format(date);
        } else {
            string = date.toString();
        }
        StringBuilder sb2 = f83287e;
        sb2.append(string);
        sb2.append(" ");
        sb2.append(f83298p);
        sb2.append(" ");
        sb2.append(j10);
        sb2.append(" ");
        sb2.append(str);
        sb2.append(" ");
        sb2.append(str2);
        sb2.append(": ");
        sb2.append(str3);
        sb2.append("\u0001\r\n");
        return f83287e.toString();
    }

    public static byte[] a() {
        if (f83283a) {
            if (f83284b) {
                return ap.a(f83288f.toString(), "BuglyLog.txt");
            }
            return null;
        }
        return c();
    }
}
