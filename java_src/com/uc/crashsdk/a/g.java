package com.uc.crashsdk.a;

import android.content.Context;
import android.content.pm.ApplicationInfo;
import android.os.Build;
import com.uc.crashsdk.JNIBridge;
import com.xinzhu.overmind.utils.x;
import java.io.BufferedReader;
import java.io.Closeable;
import java.io.File;
import java.io.FileInputStream;
import java.io.FileOutputStream;
import java.io.FileReader;
import java.io.FileWriter;
import java.io.InputStreamReader;
import java.lang.reflect.Field;
import java.security.MessageDigest;
import java.util.ArrayList;

/* JADX INFO: loaded from: classes2.dex */
public class g {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    static final /* synthetic */ boolean f84029a = true;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private static Context f84030b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    private static String f84031c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    private static String f84032d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    private static String f84033e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    private static String f84034f;

    /* JADX INFO: renamed from: g, reason: collision with root package name */
    private static String f84035g;

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    private static boolean f84036h;

    /* JADX INFO: renamed from: i, reason: collision with root package name */
    private static final Object f84037i = new Object();

    /* JADX INFO: renamed from: j, reason: collision with root package name */
    private static final char[] f84038j = {'0', '1', '2', '3', '4', '5', '6', '7', '8', '9', 'a', 'b', 'c', 'd', 'e', 'f'};

    public static void a(File file, File file2) throws Throwable {
        FileOutputStream fileOutputStream;
        byte[] bArr = new byte[524288];
        File parentFile = file2.getParentFile();
        if (!parentFile.exists()) {
            parentFile.mkdirs();
        }
        if (file2.isDirectory()) {
            file2 = new File(file2, file.getName());
        }
        FileInputStream fileInputStream = null;
        try {
            FileInputStream fileInputStream2 = new FileInputStream(file);
            try {
                fileOutputStream = new FileOutputStream(file2);
                while (true) {
                    try {
                        int i10 = fileInputStream2.read(bArr);
                        if (i10 == -1) {
                            a(fileInputStream2);
                            a(fileOutputStream);
                            return;
                        }
                        fileOutputStream.write(bArr, 0, i10);
                    } catch (Throwable th) {
                        th = th;
                        fileInputStream = fileInputStream2;
                        a(fileInputStream);
                        a(fileOutputStream);
                        throw th;
                    }
                }
            } catch (Throwable th2) {
                th = th2;
                fileOutputStream = null;
            }
        } catch (Throwable th3) {
            th = th3;
            fileOutputStream = null;
        }
    }

    public static void b(File file) {
        a(file, "");
    }

    public static String c(File file) {
        String string = "";
        if (!file.exists()) {
            return "";
        }
        FileInputStream fileInputStream = null;
        try {
            FileInputStream fileInputStream2 = new FileInputStream(file);
            try {
                byte[] bArr = new byte[256];
                StringBuilder sb2 = new StringBuilder();
                while (true) {
                    int i10 = fileInputStream2.read(bArr);
                    if (i10 <= 0) {
                        break;
                    }
                    sb2.append(new String(bArr, 0, i10));
                }
                string = sb2.toString();
                a(fileInputStream2);
            } catch (Throwable th) {
                th = th;
                fileInputStream = fileInputStream2;
                try {
                    a(th, false);
                } finally {
                    a(fileInputStream);
                }
            }
        } catch (Throwable th2) {
            th = th2;
        }
        return string;
    }

    public static String d(File file) {
        return a(file, 64, true);
    }

    public static byte[] e(File file) {
        FileInputStream fileInputStream;
        if (!file.exists()) {
            return null;
        }
        try {
            byte[] bArr = new byte[(int) file.length()];
            fileInputStream = new FileInputStream(file);
            try {
                fileInputStream.read(bArr);
                a(fileInputStream);
                return bArr;
            } catch (Throwable th) {
                th = th;
                try {
                    a(th, false);
                    return null;
                } finally {
                    a(fileInputStream);
                }
            }
        } catch (Throwable th2) {
            th = th2;
            fileInputStream = null;
        }
    }

    public static boolean f() {
        String str = Build.TAGS;
        return str != null && str.contains("test-keys");
    }

    public static boolean g() {
        int iIndexOf;
        String strI = i();
        if (!a(strI) && (iIndexOf = strI.indexOf(" root ")) > 0) {
            String strSubstring = strI.substring(0, iIndexOf);
            if (strSubstring.contains("x") || strSubstring.contains("s")) {
                return true;
            }
        }
        return false;
    }

    public static String h() {
        l();
        return a(f84034f) ? "" : f84034f;
    }

    public static String i() {
        l();
        return a(f84035g) ? "" : f84035g;
    }

    public static void j() {
        f.a(0, new e(800), 15000L);
    }

    public static void k() {
        if (com.uc.crashsdk.b.f84064d && f84036h) {
            JNIBridge.set(123, f84034f);
            JNIBridge.set(124, f84035g);
        }
    }

    private static void l() {
        String strTrim;
        int iIndexOf;
        int iIndexOf2;
        if (f84036h) {
            return;
        }
        synchronized (f84037i) {
            if (f84036h) {
                return;
            }
            String strA = a(new String[]{x.f90145b, "-c", "type su"});
            if (!a(strA) && (iIndexOf = (strTrim = strA.trim()).indexOf(32)) > 0 && strTrim.contains("/su") && (iIndexOf2 = strTrim.indexOf(47, iIndexOf + 1)) > 0) {
                String strSubstring = strTrim.substring(iIndexOf2);
                f84034f = strSubstring;
                String strA2 = a(new String[]{"ls", "-l", strSubstring});
                if (!a(strA2)) {
                    f84035g = strA2.trim();
                }
            }
            f84036h = true;
            k();
        }
    }

    public static boolean a(File file) {
        String[] list;
        if (file.isDirectory() && (list = file.list()) != null) {
            for (String str : list) {
                if (!a(new File(file, str))) {
                    return false;
                }
            }
        }
        return file.delete();
    }

    public static boolean b(String str) {
        return !a(str);
    }

    public static String d() {
        String str = f84033e;
        return str != null ? str : "";
    }

    public static void b(Throwable th) {
        a(th, true);
    }

    public static String d(String str) {
        try {
            byte[] bytes = str.getBytes("utf-8");
            MessageDigest messageDigest = MessageDigest.getInstance("MD5");
            messageDigest.update(bytes);
            byte[] bArrDigest = messageDigest.digest();
            int length = bArrDigest.length;
            StringBuilder sb2 = new StringBuilder(length * 2);
            int i10 = length + 0;
            for (int i11 = 0; i11 < i10; i11++) {
                byte b10 = bArrDigest[i11];
                char[] cArr = f84038j;
                char c10 = cArr[(b10 & 240) >> 4];
                char c11 = cArr[b10 & 15];
                sb2.append(c10);
                sb2.append(c11);
            }
            return sb2.toString();
        } catch (Exception e10) {
            a.a("crashsdk", "getMD5: ", e10);
            return null;
        }
    }

    public static String b() {
        return f84031c;
    }

    public static String a(File file, int i10, boolean z10) {
        FileInputStream fileInputStream;
        try {
            fileInputStream = new FileInputStream(file);
            try {
                byte[] bArr = new byte[i10];
                int i11 = fileInputStream.read(bArr);
                if (i11 > 0) {
                    String str = new String(bArr, 0, i11);
                    a(fileInputStream);
                    return str;
                }
            } catch (Throwable th) {
                th = th;
                if (z10) {
                    try {
                        a(th, false);
                    } finally {
                        a(fileInputStream);
                    }
                }
            }
        } catch (Throwable th2) {
            th = th2;
            fileInputStream = null;
        }
        return null;
    }

    public static boolean e() {
        if (g()) {
            return true;
        }
        return f();
    }

    public static long c(String str) {
        if (a(str)) {
            return 0L;
        }
        try {
            long j10 = Long.parseLong(str.trim());
            if (j10 < 0) {
                return 0L;
            }
            return j10;
        } catch (NumberFormatException unused) {
            return 0L;
        }
    }

    public static String c() {
        return f84032d;
    }

    public static ArrayList<String> a(File file, int i10) {
        BufferedReader bufferedReader;
        ArrayList<String> arrayList = new ArrayList<>();
        FileReader fileReader = null;
        try {
            FileReader fileReader2 = new FileReader(file);
            try {
                bufferedReader = new BufferedReader(fileReader2, 512);
                int i11 = 0;
                while (true) {
                    try {
                        String line = bufferedReader.readLine();
                        if (line == null) {
                            break;
                        }
                        arrayList.add(line);
                        i11++;
                        if (i10 > 0 && i11 >= i10) {
                            break;
                        }
                    } catch (Throwable th) {
                        th = th;
                        fileReader = fileReader2;
                        try {
                            a(th, false);
                            a(fileReader);
                        } catch (Throwable th2) {
                            a(fileReader);
                            a(bufferedReader);
                            throw th2;
                        }
                    }
                }
                a(fileReader2);
            } catch (Throwable th3) {
                th = th3;
                bufferedReader = null;
            }
        } catch (Throwable th4) {
            th = th4;
            bufferedReader = null;
        }
        a(bufferedReader);
        return arrayList;
    }

    public static boolean a(File file, byte[] bArr) {
        FileOutputStream fileOutputStream = null;
        try {
            FileOutputStream fileOutputStream2 = new FileOutputStream(file);
            try {
                fileOutputStream2.write(bArr);
                fileOutputStream2.flush();
                a(fileOutputStream2);
                return true;
            } catch (Throwable th) {
                th = th;
                fileOutputStream = fileOutputStream2;
                try {
                    a(th, false);
                    return false;
                } finally {
                    a(fileOutputStream);
                }
            }
        } catch (Throwable th2) {
            th = th2;
        }
    }

    public static boolean a(File file, String str) {
        FileWriter fileWriter = null;
        try {
            FileWriter fileWriter2 = new FileWriter(file);
            try {
                fileWriter2.write(str, 0, str.length());
                a(fileWriter2);
                return true;
            } catch (Throwable th) {
                th = th;
                fileWriter = fileWriter2;
                try {
                    a(th, false);
                    return false;
                } finally {
                    a(fileWriter);
                }
            }
        } catch (Throwable th2) {
            th = th2;
        }
    }

    public static void a(Closeable closeable) {
        if (closeable != null) {
            try {
                closeable.close();
            } catch (Throwable th) {
                a(th, true);
            }
        }
    }

    /* JADX WARN: Code duplicated, block: B:10:0x0029 A[PHI: r2
      0x0029: PHI (r2v2 java.lang.String) = (r2v1 java.lang.String), (r2v3 java.lang.String) binds: [B:7:0x0017, B:9:0x0027] A[DONT_GENERATE, DONT_INLINE]] */
    public static String a(String str, String str2, boolean z10) throws Throwable {
        String str3 = null;
        if (new File(str).exists()) {
            String strA = b.a(str);
            if (!a(strA)) {
                if (z10) {
                    strA = strA.trim();
                    if (strA.toLowerCase().startsWith("http")) {
                        str3 = strA;
                    }
                } else {
                    str3 = strA;
                }
            }
        }
        return str3 == null ? str2 : str3;
    }

    public static boolean a(String str) {
        return str == null || str.trim().length() == 0;
    }

    public static boolean a(StringBuffer stringBuffer) {
        return stringBuffer == null || stringBuffer.length() == 0;
    }

    public static void a(Throwable th) {
        a(th, false);
    }

    private static void a(Throwable th, boolean z10) {
        if (!z10) {
            try {
                if (!com.uc.crashsdk.g.O()) {
                    return;
                }
            } catch (Throwable unused) {
                return;
            }
        }
        th.printStackTrace();
    }

    public static void a(Context context) {
        if (f84030b != null) {
            a.b("mContext is existed");
        }
        f84030b = context;
        ApplicationInfo applicationInfo = context.getApplicationInfo();
        f84031c = applicationInfo.dataDir;
        f84032d = applicationInfo.sourceDir;
        try {
            Field declaredField = ApplicationInfo.class.getDeclaredField("primaryCpuAbi");
            declaredField.setAccessible(true);
            Object obj = declaredField.get(applicationInfo);
            if (obj == null || !(obj instanceof String)) {
                return;
            }
            f84033e = (String) obj;
        } catch (Throwable th) {
            a(th, false);
        }
    }

    public static Context a() {
        return f84030b;
    }

    public static void a(int i10) {
        if (i10 != 800) {
            if (!f84029a) {
                throw new AssertionError();
            }
        } else {
            l();
        }
    }

    private static String a(String[] strArr) {
        BufferedReader bufferedReader;
        InputStreamReader inputStreamReader;
        try {
            inputStreamReader = new InputStreamReader(Runtime.getRuntime().exec(strArr).getInputStream());
            try {
                bufferedReader = new BufferedReader(inputStreamReader, 512);
                try {
                    StringBuilder sb2 = new StringBuilder();
                    while (true) {
                        String line = bufferedReader.readLine();
                        if (line != null) {
                            sb2.append(line);
                        } else {
                            String strTrim = sb2.toString().trim();
                            a(bufferedReader);
                            a(inputStreamReader);
                            return strTrim;
                        }
                    }
                } catch (Throwable th) {
                    th = th;
                    try {
                        a(th, false);
                        return null;
                    } finally {
                        a(bufferedReader);
                        a(inputStreamReader);
                    }
                }
            } catch (Throwable th2) {
                th = th2;
                bufferedReader = null;
            }
        } catch (Throwable th3) {
            th = th3;
            bufferedReader = null;
            inputStreamReader = null;
        }
    }
}
