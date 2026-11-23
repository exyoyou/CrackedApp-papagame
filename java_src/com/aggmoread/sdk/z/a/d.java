package com.aggmoread.sdk.z.a;

import android.os.Environment;
import java.io.File;
import java.io.FileWriter;
import java.text.SimpleDateFormat;
import java.util.Date;
import org.json.JSONArray;
import org.json.JSONException;
import org.json.JSONObject;

/* JADX INFO: loaded from: classes7.dex */
public class d {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public static int f3301a = 255;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public static boolean f3302b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    static final String f3303c = System.getProperty("line.separator");

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    private static FileWriter f3304d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    private static StringBuffer f3305e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    private static SimpleDateFormat f3306f;

    static int a(int i10) {
        return (~i10) & 255;
    }

    private static int b(int i10) {
        return 1 << ((~i10) & 15);
    }

    private static int c(int i10) {
        return 136 >> ((~i10) & 15);
    }

    private static int d(int i10) {
        return (~i10) & 15;
    }

    private static int e(int i10) {
        return (i10 >> 4) & 15;
    }

    public static void f(String str, String str2) {
        a(str, str2, (Throwable) null);
    }

    private static String a() {
        if (f3306f == null) {
            f3306f = new SimpleDateFormat(" yyyy-MM-dd hh:mm:ss SSS ");
        }
        return f3306f.format(new Date(System.currentTimeMillis()));
    }

    public static void b(String str, String str2) {
        if (b()) {
            StringBuilder sb2 = new StringBuilder();
            sb2.append(" [AdSdk] ");
            sb2.append(str2);
            if (f3302b) {
                a(str2);
            }
        }
    }

    public static void c(String str, String str2) {
        StringBuilder sb2 = new StringBuilder();
        sb2.append(" [AdSdk] ");
        sb2.append(str2);
    }

    public static void d(String str, String str2) {
        if (b()) {
            StringBuilder sb2 = new StringBuilder();
            sb2.append(" [AdSdk] ");
            sb2.append(str2);
            if (f3302b) {
                a(str2);
            }
        }
    }

    public static void e(String str, String str2) {
        if (b()) {
            try {
                if (str.startsWith("{")) {
                    str = new JSONObject(str).toString(4);
                } else if (str.startsWith("[")) {
                    str = new JSONArray(str).toString(4);
                }
            } catch (JSONException unused) {
            }
            a("AdSdk", true);
            StringBuilder sb2 = new StringBuilder();
            sb2.append(str2);
            String str3 = f3303c;
            sb2.append(str3);
            sb2.append(str);
            for (String str4 : sb2.toString().split(str3)) {
                d("AdSdk", "* " + str4);
            }
            a("AdSdk", false);
        }
    }

    private static synchronized void a(String str) {
        try {
            if (Environment.getExternalStorageState().equals("mounted")) {
                f3305e = new StringBuffer();
                f3305e.append(" TIME:" + a());
                f3305e.append(str + "\n");
                String string = f3305e.toString();
                if (f3304d == null) {
                    File file = new File(Environment.getExternalStorageDirectory().getAbsolutePath() + File.separator);
                    if (!file.exists()) {
                        file.mkdir();
                    }
                    File file2 = new File(file, "sdk.log");
                    StringBuilder sb2 = new StringBuilder();
                    sb2.append("file path = ");
                    sb2.append(file2.getAbsolutePath());
                    if (!file2.exists()) {
                        file2.createNewFile();
                    }
                    if (file2.length() > 52428800) {
                        file2.delete();
                        file2 = new File(file, "sdk.log");
                    }
                    f3304d = new FileWriter(file2, true);
                }
                f3304d.write(string);
                f3304d.flush();
            }
        } catch (Exception e10) {
            e10.printStackTrace();
        }
    }

    static boolean b() {
        return f3301a != 255 && (b(13) ^ e(f3301a)) == c(b(13) + d(8));
    }

    public static void a(String str, String str2) {
        if (b()) {
            StringBuilder sb2 = new StringBuilder();
            sb2.append(" [AdSdk] ");
            sb2.append(str2);
            if (f3302b) {
                a(str2);
            }
        }
    }

    public static void a(String str, String str2, Throwable th) {
        if (b()) {
            StringBuilder sb2 = new StringBuilder();
            sb2.append(" [AdSdk] ");
            sb2.append(str2);
        }
    }

    public static void a(String str, String str2, Object... objArr) {
        if (b()) {
            if (objArr != null && objArr.length > 0) {
                try {
                    str2 = String.format(str2, objArr);
                } catch (Exception unused) {
                }
            }
            StringBuilder sb2 = new StringBuilder();
            sb2.append(" [AdSdk] ");
            sb2.append(str2);
            if (f3302b) {
                a(str2);
            }
        }
    }

    public static void a(String str, Throwable th) {
        a(str, "", th);
    }

    static void a(String str, boolean z10) {
        d(str, "***********************************************");
    }

    public static void a(boolean z10) {
        f3301a = z10 ? a(51) : 255;
    }
}
