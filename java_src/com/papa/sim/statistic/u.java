package com.papa.sim.statistic;

import android.app.ActivityManager;
import android.app.KeyguardManager;
import android.content.Context;
import android.content.SharedPreferences;
import android.content.pm.PackageInfo;
import android.content.pm.PackageManager;
import android.net.wifi.WifiManager;
import android.os.Build;
import android.os.Process;
import android.provider.Settings;
import android.telephony.TelephonyManager;
import android.text.TextUtils;
import android.webkit.WebSettings;
import com.byazt.hv.TTDownloadField;
import com.efs.sdk.base.core.util.NetworkUtil;
import com.haima.hmcp.cloud.BaseCloudFileManager;
import com.umeng.commonsdk.UMConfigure;
import java.io.BufferedReader;
import java.io.IOException;
import java.io.InputStream;
import java.io.InputStreamReader;
import java.net.HttpURLConnection;
import java.net.MalformedURLException;
import java.net.NetworkInterface;
import java.net.URL;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.Enumeration;
import java.util.List;
import java.util.regex.Matcher;
import java.util.regex.Pattern;

/* JADX INFO: loaded from: classes2.dex */
public class u {

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    static String f77957c = "u";

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    static u f77958d = null;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    static String f77959e = null;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    static String f77960f = null;

    /* JADX INFO: renamed from: g, reason: collision with root package name */
    static long f77961g = 0;

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    static String f77962h = "";

    /* JADX INFO: renamed from: i, reason: collision with root package name */
    static String f77963i = "";

    /* JADX INFO: renamed from: j, reason: collision with root package name */
    static String f77964j = null;

    /* JADX INFO: renamed from: k, reason: collision with root package name */
    static String f77965k = "";

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    Context f77966a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    boolean f77967b = true;

    private u(Context context) {
        this.f77966a = context;
        f77961g = System.currentTimeMillis();
        try {
            String strR = com.papa.sim.statistic.pref.b.k(context).r();
            if (strR == null || "".equals(strR)) {
                return;
            }
            f77960f = d.b(strR.getBytes());
        } catch (Exception unused) {
        }
    }

    public static u f(Context context) {
        String str;
        if (f77958d == null) {
            f77958d = new u(context);
        }
        if (f77961g != 0 && (((str = f77959e) == null || "".equals(str)) && System.currentTimeMillis() - f77961g > BaseCloudFileManager.ACK_TIMEOUT)) {
            f77961g = 0L;
        }
        return f77958d;
    }

    private String h() {
        String string;
        String str;
        try {
            Enumeration<NetworkInterface> networkInterfaces = NetworkInterface.getNetworkInterfaces();
            str = "";
            string = str;
            while (networkInterfaces.hasMoreElements()) {
                try {
                    NetworkInterface networkInterfaceNextElement = networkInterfaces.nextElement();
                    byte[] hardwareAddress = networkInterfaceNextElement.getHardwareAddress();
                    if (hardwareAddress != null && hardwareAddress.length != 0) {
                        StringBuilder sb2 = new StringBuilder();
                        for (byte b10 : hardwareAddress) {
                            sb2.append(String.format("%02X:", Byte.valueOf(b10)));
                        }
                        if (sb2.length() > 0) {
                            sb2.deleteCharAt(sb2.length() - 1);
                        }
                        string = sb2.toString();
                        if ("wlan0".equals(networkInterfaceNextElement.getName())) {
                            str = string;
                        }
                        StringBuilder sb3 = new StringBuilder();
                        sb3.append("interfaceName=");
                        sb3.append(networkInterfaceNextElement.getName());
                        sb3.append(", mac=");
                        sb3.append(string);
                    }
                } catch (Exception unused) {
                    if (string != null) {
                        "".equals(string);
                    }
                }
            }
            if (str == null || "".equals(str)) {
                str = string;
            }
        } catch (Exception unused2) {
            string = "";
        }
        if (str != null) {
            "".equals(str);
        }
        return str;
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Type inference failed for: r1v0, types: [java.io.InputStream, java.net.HttpURLConnection] */
    /* JADX WARN: Type inference failed for: r1v10, types: [java.io.InputStream] */
    /* JADX WARN: Type inference failed for: r1v11 */
    /* JADX WARN: Type inference failed for: r1v12 */
    /* JADX WARN: Type inference failed for: r1v13 */
    /* JADX WARN: Type inference failed for: r1v14 */
    /* JADX WARN: Type inference failed for: r1v15 */
    /* JADX WARN: Type inference failed for: r1v16 */
    /* JADX WARN: Type inference failed for: r1v5, types: [java.io.InputStream] */
    /* JADX WARN: Type inference failed for: r1v6, types: [java.io.InputStream] */
    /* JADX WARN: Type inference failed for: r1v7 */
    /* JADX WARN: Type inference failed for: r1v8 */
    /* JADX WARN: Type inference failed for: r1v9, types: [java.io.InputStream] */
    public static String i() throws Throwable {
        HttpURLConnection httpURLConnection;
        String strGroup = "";
        ?? inputStream = 0;
        ?? r10 = 0;
        inputStream = 0;
        inputStream = 0;
        inputStream = 0;
        try {
            try {
                try {
                    httpURLConnection = (HttpURLConnection) new URL("http://pv.sohu.com/cityjson?ie=utf-8").openConnection();
                    try {
                        if (httpURLConnection.getResponseCode() == 200) {
                            inputStream = httpURLConnection.getInputStream();
                            BufferedReader bufferedReader = new BufferedReader(new InputStreamReader((InputStream) inputStream, "utf-8"));
                            StringBuilder sb2 = new StringBuilder();
                            while (true) {
                                String line = bufferedReader.readLine();
                                if (line == null) {
                                    break;
                                }
                                sb2.append(line + "\n");
                            }
                            Matcher matcher = Pattern.compile("((?:(?:25[0-5]|2[0-4]\\d|((1\\d{2})|([1-9]?\\d)))\\.){3}(?:25[0-5]|2[0-4]\\d|((1\\d{2})|([1-9]?\\d))))").matcher(sb2.toString());
                            r10 = inputStream;
                            if (matcher.find()) {
                                strGroup = matcher.group();
                                r10 = inputStream;
                            }
                        }
                        r10.close();
                        httpURLConnection.disconnect();
                    } catch (MalformedURLException e10) {
                        e = e10;
                        e.printStackTrace();
                        inputStream.close();
                        httpURLConnection.disconnect();
                    } catch (IOException e11) {
                        e = e11;
                        e.printStackTrace();
                        inputStream.close();
                        httpURLConnection.disconnect();
                    }
                } catch (Throwable th) {
                    th = th;
                    try {
                        inputStream.close();
                        inputStream.disconnect();
                    } catch (IOException e12) {
                        e12.printStackTrace();
                    } catch (Exception e13) {
                        e13.printStackTrace();
                    }
                    throw th;
                }
            } catch (MalformedURLException e14) {
                e = e14;
                httpURLConnection = null;
            } catch (IOException e15) {
                e = e15;
                httpURLConnection = null;
            } catch (Throwable th2) {
                th = th2;
                inputStream.close();
                inputStream.disconnect();
                throw th;
            }
        } catch (IOException e16) {
            e16.printStackTrace();
        } catch (Exception e17) {
            e17.printStackTrace();
        }
        return strGroup;
    }

    private static void l(Context context) {
        try {
            String strR = com.papa.sim.statistic.pref.b.k(context).r();
            if (strR == null || "".equals(strR)) {
                return;
            }
            f77960f = d.b(strR.getBytes());
        } catch (Exception unused) {
        }
    }

    public static String m() {
        ArrayList arrayList = new ArrayList();
        arrayList.addAll(Arrays.asList(Build.SUPPORTED_ABIS));
        return m1.a.a("|", arrayList);
    }

    public static boolean s(Context context) {
        SharedPreferences sharedPreferences = context.getSharedPreferences("PrefDef", 4);
        return sharedPreferences.getBoolean("isFirst35", true) && sharedPreferences.getBoolean("firstShowUserPermiss", true);
    }

    public static boolean t(Context context) {
        try {
            List<ActivityManager.RunningTaskInfo> runningTasks = ((ActivityManager) context.getSystemService(TTDownloadField.TT_ACTIVITY)).getRunningTasks(1);
            if (!runningTasks.isEmpty()) {
                String packageName = runningTasks.get(0).topActivity.getPackageName();
                if (!packageName.equals(context.getPackageName()) && !y7.a.o(context).j(packageName)) {
                    return true;
                }
            }
        } catch (Exception unused) {
        }
        return false;
    }

    public static boolean u(Context context) {
        return context.getSharedPreferences("PrefDef", 4).getBoolean("sdkInit", false);
    }

    public static boolean v(Context context) {
        return !((KeyguardManager) context.getSystemService("keyguard")).inKeyguardRestrictedInputMode();
    }

    public String a(Context context) {
        if (context != null && TextUtils.isEmpty(f77962h)) {
            f77962h = Settings.System.getString(context.getContentResolver(), "android_id");
        }
        return f77962h;
    }

    public String b() {
        String strReplaceAll;
        try {
            try {
                String str = f77965k;
                if ((str == null || str.equals("") || f77965k.startsWith("02") || f77965k.equals(f77964j.replaceAll(":", ""))) && Build.VERSION.SDK_INT < 29 && this.f77967b) {
                    f77965k = ((TelephonyManager) this.f77966a.getSystemService("phone")).getDeviceId();
                }
                String str2 = f77965k;
                if (str2 == null || str2.equals("000000000000000") || f77965k.equals("") || f77965k.equals("null") || f77965k.equals("02:00:00:00:00:00") || f77965k.equals("0") || f77965k.equals("020000000000")) {
                    String uMIDString = UMConfigure.getUMIDString(this.f77966a);
                    f77965k = uMIDString;
                    if (uMIDString == null) {
                        strReplaceAll = g().replaceAll(":", "");
                        f77965k = strReplaceAll;
                    }
                }
            } catch (Exception unused) {
                String str3 = f77965k;
                if (str3 == null || str3.equals("000000000000000") || f77965k.equals("") || f77965k.equals("null") || f77965k.equals("02:00:00:00:00:00") || f77965k.equals("0") || f77965k.equals("020000000000")) {
                    String uMIDString2 = UMConfigure.getUMIDString(this.f77966a);
                    f77965k = uMIDString2;
                    if (uMIDString2 == null) {
                        strReplaceAll = g().replaceAll(":", "");
                        f77965k = strReplaceAll;
                    }
                }
            } catch (Throwable th) {
                String str4 = f77965k;
                if (str4 == null || str4.equals("000000000000000") || f77965k.equals("") || f77965k.equals("null") || f77965k.equals("02:00:00:00:00:00") || f77965k.equals("0") || f77965k.equals("020000000000")) {
                    try {
                        String uMIDString3 = UMConfigure.getUMIDString(this.f77966a);
                        f77965k = uMIDString3;
                        if (uMIDString3 == null) {
                            f77965k = g().replaceAll(":", "");
                        }
                    } catch (Exception unused2) {
                        f77965k = "";
                    }
                }
                throw th;
            }
        } catch (Exception unused3) {
            f77965k = "";
        }
        String str5 = f77965k;
        if (str5 == null || str5.equals("")) {
            f77965k = c();
        }
        return f77965k;
    }

    public String c() {
        Context context = this.f77966a;
        if (context != null) {
            String strJ = com.papa.sim.statistic.pref.b.k(context).j();
            if (!TextUtils.isEmpty(strJ)) {
                return strJ;
            }
        }
        String strB = h.b(this.f77966a);
        com.papa.sim.statistic.pref.b.k(this.f77966a).E(strB);
        return strB;
    }

    public String d() {
        try {
            return (!u(this.f77966a) && Build.VERSION.SDK_INT < 29 && this.f77967b) ? ((TelephonyManager) this.f77966a.getSystemService("phone")).getDeviceId() : "";
        } catch (Exception unused) {
            return "";
        }
    }

    public String e() {
        if (this.f77966a.checkPermission(com.kuaishou.weapon.p0.g.f74779c, Process.myPid(), Process.myUid()) != 0) {
            return "[version:" + q() + ",imei:   ,imsi:    ,model:" + Build.MODEL + ",brand:" + Build.BRAND + ",number:    ]";
        }
        TelephonyManager telephonyManager = (TelephonyManager) this.f77966a.getSystemService("phone");
        if (Build.VERSION.SDK_INT < 29 && this.f77967b) {
            telephonyManager.getDeviceId();
        }
        return "[version:" + q() + ",imei:" + f77965k + ",imsi:" + telephonyManager.getSubscriberId() + ",model:" + Build.MODEL + ",brand:" + Build.BRAND + ",number:" + telephonyManager.getLine1Number() + "]";
    }

    public String g() {
        String macAddress;
        String str = f77964j;
        if (str != null && !str.equals("")) {
            return f77964j;
        }
        if (Build.VERSION.SDK_INT > 28) {
            return "";
        }
        try {
            macAddress = ((WifiManager) this.f77966a.getApplicationContext().getSystemService(NetworkUtil.NETWORK_TYPE_WIFI)).getConnectionInfo().getMacAddress();
            try {
                f77964j = macAddress;
                if (macAddress == null || macAddress.equals("") || f77964j.equals("0") || f77964j.equals("02:00:00:00:00:00") || f77964j.equals("02_00_00_00_00_00")) {
                    f77964j = h();
                }
            } catch (Exception e10) {
                e = e10;
                e.printStackTrace();
                String str2 = f77964j;
                if (str2 == null || str2.equals("") || f77964j.equals("02:00:00:00:00:00") || f77964j.equals("02_00_00_00_00_00")) {
                    f77964j = h();
                }
            }
        } catch (Exception e11) {
            e = e11;
            macAddress = "";
        }
        StringBuilder sb2 = new StringBuilder();
        sb2.append("手机macAdd:");
        sb2.append(macAddress);
        return f77964j;
    }

    public String j() {
        return f77959e;
    }

    public String k() {
        String str = f77960f;
        if (str == null || "".equals(str)) {
            try {
                String strR = com.papa.sim.statistic.pref.b.k(this.f77966a).r();
                if (strR != null && !"".equals(strR)) {
                    f77960f = d.b(strR.getBytes());
                }
            } catch (Exception unused) {
            }
        }
        return f77960f;
    }

    public String n(Context context) {
        return UMConfigure.getUMIDString(context);
    }

    public String o() {
        String property;
        if (TextUtils.isEmpty(f77963i)) {
            try {
                property = WebSettings.getDefaultUserAgent(this.f77966a);
            } catch (Exception unused) {
                property = System.getProperty("http.agent");
            }
            StringBuilder sb2 = new StringBuilder();
            if (property != null) {
                int length = property.length();
                for (int i10 = 0; i10 < length; i10++) {
                    char cCharAt = property.charAt(i10);
                    if (cCharAt <= 31 || cCharAt >= 127) {
                        sb2.append(String.format("\\u%04x", Integer.valueOf(cCharAt)));
                    } else {
                        sb2.append(cCharAt);
                    }
                }
            }
            f77963i = sb2.toString();
        }
        return f77963i;
    }

    public int p() {
        try {
            return this.f77966a.getPackageManager().getPackageInfo(this.f77966a.getPackageName(), 0).versionCode;
        } catch (PackageManager.NameNotFoundException e10) {
            e10.printStackTrace();
            return 0;
        }
    }

    public String q() {
        try {
            return this.f77966a.getPackageManager().getPackageInfo(this.f77966a.getPackageName(), 0).versionName;
        } catch (PackageManager.NameNotFoundException e10) {
            e10.printStackTrace();
            return "";
        }
    }

    public String[] r() {
        String[] strArr = new String[2];
        try {
            PackageInfo packageInfo = this.f77966a.getPackageManager().getPackageInfo(this.f77966a.getPackageName(), 0);
            strArr[0] = packageInfo.versionCode + "";
            strArr[1] = packageInfo.versionName;
            return strArr;
        } catch (PackageManager.NameNotFoundException e10) {
            e10.printStackTrace();
            return strArr;
        }
    }

    public void w(String str) {
        f77959e = str;
    }

    public void x(boolean z10) {
        this.f77967b = z10;
    }
}
