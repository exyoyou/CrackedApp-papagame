package cn.sharesdk.framework.utils;

import android.os.Build;
import android.text.TextUtils;
import com.byazt.bv.BaseConstants;
import java.io.BufferedReader;
import java.io.IOException;
import java.io.InputStreamReader;

/* JADX INFO: loaded from: classes7.dex */
public class a {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private static String f2705a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private static String f2706b;

    public static boolean a() {
        return a("MIUI");
    }

    /* JADX WARN: Code duplicated, block: B:33:0x009e A[EXC_TOP_SPLITTER, SYNTHETIC] */
    public static String b(String str) throws Throwable {
        BufferedReader bufferedReader;
        BufferedReader bufferedReader2 = null;
        try {
            bufferedReader = new BufferedReader(new InputStreamReader(Runtime.getRuntime().exec("getprop " + str).getInputStream()), 1024);
            try {
                try {
                    String line = bufferedReader.readLine();
                    bufferedReader.close();
                    try {
                        bufferedReader.close();
                    } catch (IOException e10) {
                        SSDKLog.b().a("CheckRomAll getProp finally catch " + e10, new Object[0]);
                    }
                    return line;
                } catch (IOException e11) {
                    e = e11;
                    SSDKLog.b().a("CheckRomAll unable to read prop " + str + " ex " + e, new Object[0]);
                    if (bufferedReader != null) {
                        try {
                            bufferedReader.close();
                        } catch (IOException e12) {
                            SSDKLog.b().a("CheckRomAll getProp finally catch " + e12, new Object[0]);
                        }
                    }
                    return null;
                }
            } catch (Throwable th) {
                th = th;
                bufferedReader2 = bufferedReader;
                if (bufferedReader2 != null) {
                    try {
                        bufferedReader2.close();
                    } catch (IOException e13) {
                        SSDKLog.b().a("CheckRomAll getProp finally catch " + e13, new Object[0]);
                    }
                }
                throw th;
            }
        } catch (IOException e14) {
            e = e14;
            bufferedReader = null;
        } catch (Throwable th2) {
            th = th2;
            if (bufferedReader2 != null) {
                bufferedReader2.close();
            }
            throw th;
        }
    }

    public static boolean a(String str) throws Throwable {
        String str2 = f2705a;
        if (str2 != null) {
            return str2.equals(str);
        }
        String strB = b("ro.miui.ui.version.name");
        f2706b = strB;
        if (TextUtils.isEmpty(strB)) {
            String strB2 = b("ro.build.version.emui");
            f2706b = strB2;
            if (TextUtils.isEmpty(strB2)) {
                String strB3 = b("ro.build.version.opporom");
                f2706b = strB3;
                if (TextUtils.isEmpty(strB3)) {
                    String strB4 = b("ro.vivo.os.version");
                    f2706b = strB4;
                    if (TextUtils.isEmpty(strB4)) {
                        String strB5 = b("ro.smartisan.version");
                        f2706b = strB5;
                        if (TextUtils.isEmpty(strB5)) {
                            String str3 = Build.DISPLAY;
                            f2706b = str3;
                            if (str3.toUpperCase().contains("FLYME")) {
                                f2705a = "FLYME";
                            } else {
                                f2706b = "unknown";
                                f2705a = Build.MANUFACTURER.toUpperCase();
                            }
                        } else {
                            f2705a = "SMARTISAN";
                        }
                    } else {
                        f2705a = "VIVO";
                    }
                } else {
                    f2705a = BaseConstants.ROM_OPPO_UPPER_CONSTANT;
                }
            } else {
                f2705a = "EMUI";
            }
        } else {
            f2705a = "MIUI";
        }
        return f2705a.equals(str);
    }
}
