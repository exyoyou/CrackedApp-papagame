package com.czhj.devicehelper.cnoaid;

import android.annotation.SuppressLint;
import android.app.Application;
import android.content.Context;
import android.media.MediaDrm;
import android.os.Build;
import android.os.Environment;
import android.provider.Settings;
import android.telephony.TelephonyManager;
import android.text.TextUtils;
import com.coremedia.iso.boxes.k1;
import com.czhj.devicehelper.cnoaid.impl.m;
import java.io.BufferedReader;
import java.io.BufferedWriter;
import java.io.File;
import java.io.FileReader;
import java.io.FileWriter;
import java.security.MessageDigest;
import java.util.Arrays;
import java.util.UUID;

/* JADX INFO: loaded from: classes9.dex */
public final class a {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private Application f25265a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private boolean f25266b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    private String f25267c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    private String f25268d;

    /* JADX INFO: renamed from: com.czhj.devicehelper.cnoaid.a$a, reason: collision with other inner class name */
    private static class C0539a {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        static final a f25272a = new a();

        private C0539a() {
        }
    }

    private a() {
    }

    public static String a() {
        String str = C0539a.f25272a.f25267c;
        return str == null ? "" : str;
    }

    public static String b() {
        return a(a(), "MD5");
    }

    public static String c() {
        return a(a(), "SHA-1");
    }

    public static String d() {
        String str = C0539a.f25272a.f25268d;
        return str == null ? "" : str;
    }

    @Deprecated
    public static String e() {
        try {
            byte[] propertyByteArray = new MediaDrm(new UUID(-1301668207276963122L, -6645017420763422227L)).getPropertyByteArray("deviceUniqueId");
            if (propertyByteArray == null) {
                return "";
            }
            StringBuilder sb2 = new StringBuilder();
            for (byte b10 : propertyByteArray) {
                sb2.append(String.format("%02x", Byte.valueOf(b10)));
            }
            return sb2.toString();
        } catch (Throwable th) {
            g.a(th);
            return "";
        }
    }

    public static String f() {
        StringBuilder sb2 = new StringBuilder();
        sb2.append(Build.BOARD.length() % 10);
        sb2.append(Arrays.deepToString(Build.SUPPORTED_ABIS).length() % 10);
        sb2.append(Build.DEVICE.length() % 10);
        sb2.append(Build.DISPLAY.length() % 10);
        sb2.append(Build.HOST.length() % 10);
        sb2.append(Build.ID.length() % 10);
        sb2.append(Build.MANUFACTURER.length() % 10);
        sb2.append(Build.BRAND.length() % 10);
        sb2.append(Build.MODEL.length() % 10);
        sb2.append(Build.PRODUCT.length() % 10);
        sb2.append(Build.BOOTLOADER.length() % 10);
        sb2.append(Build.HARDWARE.length() % 10);
        sb2.append(Build.TAGS.length() % 10);
        sb2.append(Build.TYPE.length() % 10);
        sb2.append(Build.USER.length() % 10);
        return sb2.toString();
    }

    private static String g(Context context) {
        String line = "";
        if (context == null) {
            return "";
        }
        File fileH = h(context);
        if (fileH != null) {
            try {
                BufferedReader bufferedReader = new BufferedReader(new FileReader(fileH));
                try {
                    line = bufferedReader.readLine();
                    bufferedReader.close();
                } catch (Throwable th) {
                    try {
                        bufferedReader.close();
                    } catch (Throwable th2) {
                        th.addSuppressed(th2);
                    }
                    throw th;
                }
            } catch (Exception e10) {
                g.a(e10);
            }
        }
        g.a("Get uuid from external storage: " + line);
        return line;
    }

    private static File h(Context context) {
        int i10 = Build.VERSION.SDK_INT;
        boolean z10 = true;
        if (i10 >= 23 && (i10 >= 30 || context == null || context.checkSelfPermission(com.kuaishou.weapon.p0.g.f74786j) != 0)) {
            z10 = false;
        }
        if (z10 && "mounted".equals(Environment.getExternalStorageState())) {
            return new File(Environment.getExternalStorageDirectory(), "Android/.GUID_uuid");
        }
        return null;
    }

    private static String i(Context context) {
        if (context == null) {
            return "";
        }
        String string = context.getSharedPreferences("GUID", 0).getString(k1.f24950p, "");
        g.a("Get uuid from shared preferences: " + string);
        return string;
    }

    public static String b(Context context) {
        String str;
        int i10 = Build.VERSION.SDK_INT;
        if (i10 >= 29) {
            str = "IMEI/MEID not allowed on Android 10+";
        } else {
            if (context == null) {
                return "";
            }
            if (i10 < 23 || context.checkSelfPermission(com.kuaishou.weapon.p0.g.f74779c) == 0) {
                return e(context);
            }
            str = "android.permission.READ_PHONE_STATE not granted";
        }
        g.a(str);
        return "";
    }

    @SuppressLint({"HardwareIds"})
    public static String c(Context context) {
        String string;
        return (context == null || (string = Settings.Secure.getString(context.getContentResolver(), "android_id")) == null || "9774d56d682e549c".equals(string)) ? "" : string;
    }

    public static String d(Context context) {
        String strF = f(context);
        if (TextUtils.isEmpty(strF)) {
            strF = g(context);
        }
        if (TextUtils.isEmpty(strF)) {
            strF = i(context);
        }
        if (!TextUtils.isEmpty(strF)) {
            return strF;
        }
        String string = UUID.randomUUID().toString();
        g.a("Generate uuid by random: " + string);
        c(context, string);
        a(context, string);
        b(context, string);
        return string;
    }

    @SuppressLint({"HardwareIds", "MissingPermission"})
    private static String e(Context context) {
        if (context == null) {
            return "";
        }
        try {
            TelephonyManager telephonyManager = (TelephonyManager) context.getSystemService("phone");
            String imei = telephonyManager.getImei();
            return TextUtils.isEmpty(imei) ? telephonyManager.getMeid() : imei;
        } catch (Error | Exception e10) {
            g.a(e10);
            return "";
        }
    }

    private static String f(Context context) {
        if (context == null) {
            return "";
        }
        String string = Settings.System.getString(context.getContentResolver(), "GUID_uuid");
        g.a("Get uuid from system settings: " + string);
        return string;
    }

    public static String a(String str, String str2) {
        if (TextUtils.isEmpty(str)) {
            return "";
        }
        try {
            byte[] bArrDigest = MessageDigest.getInstance(str2).digest(str.getBytes());
            StringBuilder sb2 = new StringBuilder();
            for (byte b10 : bArrDigest) {
                sb2.append(String.format("%02x", Byte.valueOf(b10)));
            }
            return sb2.toString();
        } catch (Exception e10) {
            g.a(e10);
            return "";
        }
    }

    private static void c(Context context, String str) {
        if (context == null) {
            return;
        }
        context.getSharedPreferences("GUID", 0).edit().putString(k1.f24950p, str).apply();
        g.a("Save uuid to shared preferences: " + str);
    }

    public static void a(Application application) {
        a(application, false, null);
    }

    private static void b(final Application application, final boolean z10, final e eVar) {
        a(application, new c() { // from class: com.czhj.devicehelper.cnoaid.a.1
            @Override // com.czhj.devicehelper.cnoaid.c
            public void a(Exception exc) {
                a.b(exc, application, z10, eVar);
            }

            @Override // com.czhj.devicehelper.cnoaid.c
            public void a(String str) {
                if (TextUtils.isEmpty(str)) {
                    a(new f("OAID is empty"));
                    return;
                }
                a aVar = C0539a.f25272a;
                aVar.f25267c = str;
                aVar.f25268d = str;
                g.a("Client id is OAID/AAID: " + str);
            }
        });
    }

    public static void a(Application application, e eVar) {
        a(application, false, null);
    }

    private static void b(Context context, String str) {
        if (context == null) {
            return;
        }
        File fileH = h(context);
        if (fileH == null) {
            g.a("UUID file in external storage is null");
            return;
        }
        try {
            BufferedWriter bufferedWriter = new BufferedWriter(new FileWriter(fileH));
            try {
                if (!fileH.exists()) {
                    fileH.createNewFile();
                }
                bufferedWriter.write(str);
                bufferedWriter.flush();
                g.a("Save uuid to external storage: " + str);
                bufferedWriter.close();
            } catch (Throwable th) {
                try {
                    bufferedWriter.close();
                } catch (Throwable th2) {
                    th.addSuppressed(th2);
                }
                throw th;
            }
        } catch (Exception e10) {
            g.a(e10);
        }
    }

    public static void a(Application application, boolean z10) {
        a(application, z10, null);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static void b(Exception exc, Application application, boolean z10, e eVar) {
        if (z10) {
            String strE = e();
            if (!TextUtils.isEmpty(strE)) {
                C0539a.f25272a.f25267c = strE;
                g.a("Client id is WidevineID: " + strE);
                if (eVar != null) {
                    eVar.a(strE, exc);
                    return;
                }
                return;
            }
        }
        String strC = c(application);
        if (!TextUtils.isEmpty(strC)) {
            C0539a.f25272a.f25267c = strC;
            g.a("Client id is AndroidID: " + strC);
            if (eVar != null) {
                eVar.a(strC, exc);
                return;
            }
            return;
        }
        String strD = d(application);
        C0539a.f25272a.f25267c = strD;
        g.a("Client id is GUID: " + strD);
        if (eVar != null) {
            eVar.a(strD, exc);
        }
    }

    public static void a(Application application, boolean z10, e eVar) {
        if (application == null) {
            if (eVar != null) {
                eVar.a("", new RuntimeException("application is nulll"));
                return;
            }
            return;
        }
        a aVar = C0539a.f25272a;
        aVar.f25265a = application;
        aVar.f25266b = z10;
        String strB = b(application);
        if (TextUtils.isEmpty(strB)) {
            b(application, z10, eVar);
            return;
        }
        aVar.f25267c = strB;
        g.a("Client id is IMEI/MEID: " + aVar.f25267c);
        if (eVar != null) {
            eVar.a(strB, null);
        }
    }

    public static void a(Context context, c cVar) {
        d dVarA = m.a(context);
        g.a("OAID implements class: " + dVarA.getClass().getName());
        dVarA.a(cVar);
    }

    private static void a(Context context, String str) {
        if (context == null) {
            return;
        }
        if (Build.VERSION.SDK_INT < 23 || Settings.System.canWrite(context)) {
            try {
                Settings.System.putString(context.getContentResolver(), "GUID_uuid", str);
                g.a("Save uuid to system settings: " + str);
                return;
            } catch (Exception e10) {
                e = e10;
            }
        } else {
            e = "android.permission.WRITE_SETTINGS not granted";
        }
        g.a(e);
    }

    public static boolean a(Context context) {
        return m.a(context).a();
    }
}
