package com.alipay.security.mobile.module.deviceinfo;

import android.bluetooth.BluetoothAdapter;
import android.content.Context;
import android.content.pm.PackageInfo;
import android.graphics.Point;
import android.hardware.Camera;
import android.hardware.Sensor;
import android.hardware.SensorManager;
import android.net.wifi.WifiManager;
import android.os.Build;
import android.os.Environment;
import android.os.StatFs;
import android.provider.Settings;
import android.telephony.TelephonyManager;
import android.util.DisplayMetrics;
import com.efs.sdk.base.core.util.NetworkUtil;
import com.windmill.sdk.WMConstants;
import io.netty.handler.codec.http.websocketx.WebSocketServerHandshaker;
import java.io.BufferedReader;
import java.io.File;
import java.io.FileInputStream;
import java.io.FileNotFoundException;
import java.io.FileReader;
import java.io.IOException;
import java.io.InputStreamReader;
import java.io.LineNumberReader;
import java.util.Collections;
import java.util.Comparator;
import java.util.HashMap;
import java.util.List;
import java.util.Locale;
import java.util.Map;

/* JADX INFO: loaded from: classes7.dex */
public final class c {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private static c f7289a = new c();

    private class a implements Comparator<Camera.Size> {
        private a() {
        }

        private static int a(Camera.Size size, Camera.Size size2) {
            int i10 = size.width;
            int i11 = size2.width;
            if (i10 == i11) {
                return 0;
            }
            return i10 > i11 ? 1 : -1;
        }

        @Override // java.util.Comparator
        public final /* bridge */ /* synthetic */ int compare(Camera.Size size, Camera.Size size2) {
            int i10 = size.width;
            int i11 = size2.width;
            if (i10 == i11) {
                return 0;
            }
            return i10 > i11 ? 1 : -1;
        }

        /* synthetic */ a(c cVar, byte b10) {
            this();
        }
    }

    private c() {
    }

    public static Map<String, Integer> A(Context context) {
        HashMap map = new HashMap();
        try {
            List<PackageInfo> installedPackages = context.getPackageManager().getInstalledPackages(0);
            if (installedPackages != null && installedPackages.size() > 0) {
                for (PackageInfo packageInfo : installedPackages) {
                    map.put(packageInfo.packageName, Integer.valueOf(packageInfo.applicationInfo.uid));
                }
            }
        } catch (Throwable unused) {
        }
        return map;
    }

    private static String B() throws Throwable {
        BufferedReader bufferedReader;
        Throwable th;
        FileReader fileReader;
        try {
            try {
                fileReader = new FileReader("/proc/cpuinfo");
                try {
                    bufferedReader = new BufferedReader(fileReader);
                    try {
                        String[] strArrSplit = bufferedReader.readLine().split(":\\s+", 2);
                        if (strArrSplit != null && strArrSplit.length > 1) {
                            String str = strArrSplit[1];
                            try {
                                fileReader.close();
                            } catch (IOException unused) {
                            }
                            try {
                                bufferedReader.close();
                            } catch (IOException unused2) {
                            }
                            return str;
                        }
                        try {
                            fileReader.close();
                        } catch (IOException unused3) {
                        }
                    } catch (IOException unused4) {
                        if (fileReader != null) {
                            try {
                                fileReader.close();
                            } catch (IOException unused5) {
                            }
                        }
                        if (bufferedReader != null) {
                        }
                        return null;
                    } catch (Throwable th2) {
                        th = th2;
                        if (fileReader != null) {
                            try {
                                fileReader.close();
                            } catch (IOException unused6) {
                            }
                        }
                        if (bufferedReader == null) {
                            throw th;
                        }
                        try {
                            bufferedReader.close();
                            throw th;
                        } catch (IOException unused7) {
                            throw th;
                        }
                    }
                } catch (IOException unused8) {
                    bufferedReader = null;
                } catch (Throwable th3) {
                    bufferedReader = null;
                    th = th3;
                }
            } catch (IOException unused9) {
                fileReader = null;
                bufferedReader = null;
            } catch (Throwable th4) {
                bufferedReader = null;
                th = th4;
                fileReader = null;
            }
            bufferedReader.close();
        } catch (IOException unused10) {
        }
        return null;
    }

    private static String C(Context context) {
        if (context == null) {
            return null;
        }
        try {
            TelephonyManager telephonyManager = (TelephonyManager) context.getSystemService("phone");
            if (telephonyManager != null) {
                return telephonyManager.getSimOperator();
            }
            return null;
        } catch (Exception unused) {
            return null;
        }
    }

    private static String D(Context context) {
        if (context == null) {
            return null;
        }
        try {
            TelephonyManager telephonyManager = (TelephonyManager) context.getSystemService("phone");
            if (telephonyManager != null) {
                return telephonyManager.getSimOperatorName();
            }
            return null;
        } catch (Exception unused) {
            return null;
        }
    }

    private static boolean E() {
        try {
            BluetoothAdapter defaultAdapter = BluetoothAdapter.getDefaultAdapter();
            return defaultAdapter != null && defaultAdapter.isEnabled();
        } catch (Exception unused) {
            return false;
        }
    }

    private static String F() throws Throwable {
        String str;
        String str2;
        try {
            FileInputStream fileInputStream = new FileInputStream("/proc/version");
            BufferedReader bufferedReader = null;
            try {
                BufferedReader bufferedReader2 = new BufferedReader(new InputStreamReader(fileInputStream), 8192);
                str2 = "";
                while (true) {
                    try {
                        String line = bufferedReader2.readLine();
                        if (line != null) {
                            str2 = str2 + line;
                        } else {
                            try {
                                break;
                            } catch (IOException unused) {
                            }
                        }
                    } catch (IOException unused2) {
                        str = str2;
                        bufferedReader = bufferedReader2;
                        try {
                            bufferedReader.close();
                            fileInputStream.close();
                        } catch (IOException unused3) {
                        }
                        str2 = str;
                    } catch (Throwable th) {
                        th = th;
                        bufferedReader = bufferedReader2;
                        try {
                            bufferedReader.close();
                            fileInputStream.close();
                        } catch (IOException unused4) {
                        }
                        throw th;
                    }
                }
                bufferedReader2.close();
                fileInputStream.close();
            } catch (IOException unused5) {
                str = "";
            } catch (Throwable th2) {
                th = th2;
            }
            if (!c0.a.d(str2)) {
                return "";
            }
            String strSubstring = str2.substring(str2.indexOf("version ") + 8);
            return strSubstring.substring(0, strSubstring.indexOf(" "));
        } catch (FileNotFoundException | Exception unused6) {
            return "";
        }
    }

    private static String G(Context context) {
        if (context == null) {
            return null;
        }
        try {
            TelephonyManager telephonyManager = (TelephonyManager) context.getSystemService("phone");
            if (telephonyManager != null) {
                return telephonyManager.getVoiceMailNumber();
            }
            return null;
        } catch (Exception unused) {
            return null;
        }
    }

    private static String H(Context context) {
        if (context == null) {
            return null;
        }
        try {
            TelephonyManager telephonyManager = (TelephonyManager) context.getSystemService("phone");
            if (telephonyManager != null) {
                return telephonyManager.getVoiceMailAlphaTag();
            }
            return null;
        } catch (Exception unused) {
            return null;
        }
    }

    private static String I(Context context) {
        try {
            DisplayMetrics displayMetrics = context.getResources().getDisplayMetrics();
            StringBuilder sb2 = new StringBuilder();
            sb2.append(displayMetrics.densityDpi);
            return sb2.toString();
        } catch (Exception unused) {
            return null;
        }
    }

    private String J(Context context) {
        String str;
        K(context.getApplicationContext());
        StringBuilder sb2 = new StringBuilder();
        int numberOfCameras = -1;
        try {
            if (Integer.parseInt(Build.VERSION.SDK) > 8) {
                numberOfCameras = Camera.getNumberOfCameras();
            }
        } catch (Throwable unused) {
        }
        for (int i10 = 0; i10 < numberOfCameras; i10++) {
            Locale locale = Locale.ENGLISH;
            Object[] objArr = new Object[2];
            Integer numValueOf = Integer.valueOf(i10);
            if (i10 == 0) {
                objArr[0] = numValueOf;
                objArr[1] = c(context, i10);
                str = String.format(locale, "%1$d:%2$s", objArr);
            } else {
                objArr[0] = numValueOf;
                objArr[1] = c(context, i10);
                str = String.format(locale, "#%1$d:%2$s", objArr);
            }
            sb2.append(str);
        }
        return sb2.toString();
    }

    private static float K(Context context) {
        DisplayMetrics displayMetrics = context.getResources().getDisplayMetrics();
        Point point = new Point(displayMetrics.widthPixels, displayMetrics.heightPixels);
        return point.y / point.x;
    }

    public static c a() {
        return f7289a;
    }

    public static String b(Context context) {
        if (context == null) {
            return null;
        }
        try {
            TelephonyManager telephonyManager = (TelephonyManager) context.getSystemService("phone");
            if (telephonyManager != null) {
                return telephonyManager.getDeviceId();
            }
            return null;
        } catch (Exception unused) {
            return null;
        }
    }

    private String c(Context context, int i10) {
        String str = "";
        float fK = K(context.getApplicationContext());
        Camera cameraOpen = null;
        try {
            cameraOpen = Camera.open(i10);
            List<Camera.Size> supportedPreviewSizes = cameraOpen.getParameters().getSupportedPreviewSizes();
            Collections.sort(supportedPreviewSizes, new a(this, (byte) 0));
            int size = 0;
            for (Camera.Size size2 : supportedPreviewSizes) {
                int i11 = size2.width;
                if (i11 >= 600) {
                    if (((double) Math.abs((((float) i11) / ((float) size2.height)) - fK)) <= 0.03d) {
                        break;
                    }
                }
                size++;
            }
            if (size == supportedPreviewSizes.size()) {
                size = supportedPreviewSizes.size() - 1;
            }
            Camera.Size size3 = supportedPreviewSizes.get(size);
            if (size3 != null) {
                str = String.format(Locale.ENGLISH, "%2$d*%3$d", Integer.valueOf(i10), Integer.valueOf(size3.width), Integer.valueOf(size3.height));
            }
        } catch (RuntimeException unused) {
            return str;
        } catch (Exception unused2) {
            return str;
        } finally {
            if (cameraOpen != null) {
                cameraOpen.release();
            }
        }
        return str;
    }

    public static String d() throws Throwable {
        InputStreamReader inputStreamReader;
        String strTrim = "0000000000000000";
        LineNumberReader lineNumberReader = null;
        try {
            inputStreamReader = new InputStreamReader(Runtime.getRuntime().exec("cat /proc/cpuinfo | grep Serial").getInputStream());
            try {
                LineNumberReader lineNumberReader2 = new LineNumberReader(inputStreamReader);
                for (int i10 = 1; i10 < 100; i10++) {
                    try {
                        String line = lineNumberReader2.readLine();
                        if (line == null) {
                            break;
                        }
                        if (line.indexOf("Serial") >= 0) {
                            strTrim = line.substring(line.indexOf(":") + 1, line.length()).trim();
                            break;
                        }
                    } catch (Exception unused) {
                        lineNumberReader = lineNumberReader2;
                        if (lineNumberReader != null) {
                            try {
                                lineNumberReader.close();
                            } catch (IOException unused2) {
                            }
                        }
                        if (inputStreamReader != null) {
                        }
                        return strTrim;
                    } catch (Throwable th) {
                        th = th;
                        lineNumberReader = lineNumberReader2;
                        if (lineNumberReader != null) {
                            try {
                                lineNumberReader.close();
                            } catch (IOException unused3) {
                            }
                        }
                        if (inputStreamReader == null) {
                            throw th;
                        }
                        try {
                            inputStreamReader.close();
                            throw th;
                        } catch (IOException unused4) {
                            throw th;
                        }
                    }
                }
                try {
                    lineNumberReader2.close();
                } catch (IOException unused5) {
                }
            } catch (Exception unused6) {
            } catch (Throwable th2) {
                th = th2;
            }
        } catch (Exception unused7) {
            inputStreamReader = null;
        } catch (Throwable th3) {
            th = th3;
            inputStreamReader = null;
        }
        try {
            inputStreamReader.close();
        } catch (IOException unused8) {
        }
        return strTrim;
    }

    public static String e(Context context) {
        if (context == null) {
            return null;
        }
        try {
            TelephonyManager telephonyManager = (TelephonyManager) context.getSystemService("phone");
            if (telephonyManager != null) {
                return telephonyManager.getSubscriberId();
            }
            return null;
        } catch (Exception unused) {
            return null;
        }
    }

    public static String g(Context context) {
        if (context == null) {
            return "";
        }
        try {
            TelephonyManager telephonyManager = (TelephonyManager) context.getSystemService("phone");
            return telephonyManager != null ? telephonyManager.getLine1Number() : "";
        } catch (Exception unused) {
            return "";
        }
    }

    public static String h() throws Throwable {
        String strX = x();
        return !c0.a.b(strX) ? strX : z();
    }

    public static String i(Context context) {
        List<Sensor> sensorList;
        if (context == null) {
            return null;
        }
        try {
            SensorManager sensorManager = (SensorManager) context.getSystemService("sensor");
            if (sensorManager == null || (sensorList = sensorManager.getSensorList(-1)) == null || sensorList.size() <= 0) {
                return null;
            }
            StringBuilder sb2 = new StringBuilder();
            for (Sensor sensor : sensorList) {
                sb2.append(sensor.getName());
                sb2.append(sensor.getVersion());
                sb2.append(sensor.getVendor());
            }
            return c0.a.g(sb2.toString());
        } catch (Exception unused) {
            return null;
        }
    }

    public static String j() throws Throwable {
        BufferedReader bufferedReader;
        long j10 = 0;
        FileReader fileReader = null;
        try {
            try {
                FileReader fileReader2 = new FileReader("/proc/meminfo");
                try {
                    bufferedReader = new BufferedReader(fileReader2, 8192);
                    try {
                        String line = bufferedReader.readLine();
                        j10 = line != null ? Integer.parseInt(line.split("\\s+")[1]) : 0L;
                        try {
                            fileReader2.close();
                        } catch (IOException unused) {
                        }
                    } catch (IOException unused2) {
                        fileReader = fileReader2;
                        if (fileReader != null) {
                            try {
                                fileReader.close();
                            } catch (IOException unused3) {
                            }
                        }
                        if (bufferedReader != null) {
                        }
                        return String.valueOf(j10);
                    } catch (Throwable th) {
                        th = th;
                        fileReader = fileReader2;
                        if (fileReader != null) {
                            try {
                                fileReader.close();
                            } catch (IOException unused4) {
                            }
                        }
                        if (bufferedReader == null) {
                            throw th;
                        }
                        try {
                            bufferedReader.close();
                            throw th;
                        } catch (IOException unused5) {
                            throw th;
                        }
                    }
                } catch (IOException unused6) {
                    bufferedReader = null;
                } catch (Throwable th2) {
                    th = th2;
                    bufferedReader = null;
                }
            } catch (IOException unused7) {
                bufferedReader = null;
            } catch (Throwable th3) {
                th = th3;
                bufferedReader = null;
            }
            bufferedReader.close();
        } catch (IOException unused8) {
        }
        return String.valueOf(j10);
    }

    public static String k(Context context) {
        try {
            DisplayMetrics displayMetrics = context.getResources().getDisplayMetrics();
            return Integer.toString(displayMetrics.widthPixels) + WebSocketServerHandshaker.SUB_PROTOCOL_WILDCARD + Integer.toString(displayMetrics.heightPixels);
        } catch (Exception unused) {
            return null;
        }
    }

    public static String l() {
        long blockCount;
        try {
            StatFs statFs = new StatFs(Environment.getDataDirectory().getPath());
            blockCount = ((long) statFs.getBlockCount()) * ((long) statFs.getBlockSize());
        } catch (Exception unused) {
            blockCount = 0;
        }
        return String.valueOf(blockCount);
    }

    public static String m(Context context) {
        try {
            DisplayMetrics displayMetrics = context.getResources().getDisplayMetrics();
            StringBuilder sb2 = new StringBuilder();
            sb2.append(displayMetrics.widthPixels);
            return sb2.toString();
        } catch (Exception unused) {
            return null;
        }
    }

    public static String n() {
        long blockSize = 0;
        try {
            if ("mounted".equals(Environment.getExternalStorageState())) {
                StatFs statFs = new StatFs(Environment.getExternalStorageDirectory().getPath());
                blockSize = ((long) statFs.getBlockSize()) * ((long) statFs.getBlockCount());
            }
        } catch (Exception unused) {
        }
        return String.valueOf(blockSize);
    }

    public static String o(Context context) {
        try {
            DisplayMetrics displayMetrics = context.getResources().getDisplayMetrics();
            StringBuilder sb2 = new StringBuilder();
            sb2.append(displayMetrics.heightPixels);
            return sb2.toString();
        } catch (Exception unused) {
            return null;
        }
    }

    public static String p() {
        try {
            BluetoothAdapter defaultAdapter = BluetoothAdapter.getDefaultAdapter();
            return (defaultAdapter == null || defaultAdapter.isEnabled()) ? defaultAdapter.getAddress() : "";
        } catch (Exception unused) {
            return null;
        }
    }

    public static String q(Context context) {
        try {
            return ((WifiManager) context.getSystemService(NetworkUtil.NETWORK_TYPE_WIFI)).getConnectionInfo().getMacAddress();
        } catch (Exception unused) {
            return null;
        }
    }

    public static String r() {
        try {
            Class<?> cls = Class.forName("android.os.SystemProperties");
            return (String) cls.getMethod("get", String.class, String.class).invoke(cls.newInstance(), "gsm.version.baseband", "no message");
        } catch (Exception unused) {
            return null;
        }
    }

    public static String s(Context context) {
        try {
            return ((TelephonyManager) context.getSystemService("phone")).getSimSerialNumber();
        } catch (Exception unused) {
            return "";
        }
    }

    public static String t() {
        try {
            return Build.SERIAL;
        } catch (Exception unused) {
            return "";
        }
    }

    public static String u(Context context) {
        try {
            return Settings.Secure.getString(context.getContentResolver(), "android_id");
        } catch (Exception unused) {
            return null;
        }
    }

    private static String v() throws Throwable {
        InputStreamReader inputStreamReader;
        String strTrim = WMConstants.TIMER_STAGE_NONE;
        LineNumberReader lineNumberReader = null;
        try {
            inputStreamReader = new InputStreamReader(Runtime.getRuntime().exec("cat /proc/cpuinfo | grep Hardware").getInputStream());
            try {
                LineNumberReader lineNumberReader2 = new LineNumberReader(inputStreamReader);
                for (int i10 = 1; i10 < 100; i10++) {
                    try {
                        String line = lineNumberReader2.readLine();
                        if (line == null) {
                            break;
                        }
                        if (line.indexOf("Hardware") >= 0) {
                            strTrim = line.substring(line.indexOf(":") + 1, line.length()).trim();
                            break;
                        }
                    } catch (Exception unused) {
                        lineNumberReader = lineNumberReader2;
                        if (lineNumberReader != null) {
                            try {
                                lineNumberReader.close();
                            } catch (IOException unused2) {
                            }
                        }
                        if (inputStreamReader != null) {
                        }
                        return strTrim;
                    } catch (Throwable th) {
                        th = th;
                        lineNumberReader = lineNumberReader2;
                        if (lineNumberReader != null) {
                            try {
                                lineNumberReader.close();
                            } catch (IOException unused3) {
                            }
                        }
                        if (inputStreamReader == null) {
                            throw th;
                        }
                        try {
                            inputStreamReader.close();
                            throw th;
                        } catch (IOException unused4) {
                            throw th;
                        }
                    }
                }
                try {
                    lineNumberReader2.close();
                } catch (IOException unused5) {
                }
            } catch (Exception unused6) {
            } catch (Throwable th2) {
                th = th2;
            }
        } catch (Exception unused7) {
            inputStreamReader = null;
        } catch (Throwable th3) {
            th = th3;
            inputStreamReader = null;
        }
        try {
            inputStreamReader.close();
        } catch (IOException unused8) {
        }
        return strTrim;
    }

    public static String w(Context context) {
        try {
            TelephonyManager telephonyManager = (TelephonyManager) context.getSystemService("phone");
            if (telephonyManager != null) {
                return String.valueOf(telephonyManager.getNetworkType());
            }
            return null;
        } catch (Exception unused) {
            return null;
        }
    }

    private static String x() throws Throwable {
        FileReader fileReader;
        Throwable th;
        BufferedReader bufferedReader;
        try {
            fileReader = new FileReader("/sys/devices/system/cpu/cpu0/cpufreq/cpuinfo_max_freq");
            try {
                bufferedReader = new BufferedReader(fileReader, 8192);
                try {
                    String line = bufferedReader.readLine();
                    if (!c0.a.b(line)) {
                        String strTrim = line.trim();
                        try {
                            bufferedReader.close();
                        } catch (IOException unused) {
                        }
                        try {
                            fileReader.close();
                        } catch (IOException unused2) {
                        }
                        return strTrim;
                    }
                } catch (IOException unused3) {
                } catch (Throwable th2) {
                    th = th2;
                    try {
                        bufferedReader.close();
                    } catch (IOException unused4) {
                    }
                    try {
                        fileReader.close();
                        throw th;
                    } catch (IOException unused5) {
                        throw th;
                    }
                }
            } catch (IOException unused6) {
                bufferedReader = null;
            } catch (Throwable th3) {
                th = th3;
                bufferedReader = null;
            }
        } catch (IOException unused7) {
            bufferedReader = null;
            fileReader = null;
        } catch (Throwable th4) {
            fileReader = null;
            th = th4;
            bufferedReader = null;
        }
        try {
            bufferedReader.close();
        } catch (IOException unused8) {
        }
        try {
            fileReader.close();
        } catch (IOException unused9) {
        }
        return null;
    }

    public static String y(Context context) {
        try {
            WifiManager wifiManager = (WifiManager) context.getSystemService(NetworkUtil.NETWORK_TYPE_WIFI);
            return wifiManager.isWifiEnabled() ? wifiManager.getConnectionInfo().getBSSID() : "";
        } catch (Throwable unused) {
            return "";
        }
    }

    private static String z() throws Throwable {
        FileReader fileReader;
        Throwable th;
        BufferedReader bufferedReader;
        String[] strArrSplit;
        String strTrim = null;
        try {
            fileReader = new FileReader("/proc/cpuinfo");
            try {
                bufferedReader = new BufferedReader(fileReader, 8192);
                while (true) {
                    try {
                        String line = bufferedReader.readLine();
                        if (line == null) {
                            break;
                        }
                        if (!c0.a.b(line) && (strArrSplit = line.split(":")) != null && strArrSplit.length > 1 && strArrSplit[0].contains("BogoMIPS")) {
                            strTrim = strArrSplit[1].trim();
                            break;
                        }
                    } catch (IOException unused) {
                        if (fileReader != null) {
                            try {
                                fileReader.close();
                            } catch (IOException unused2) {
                            }
                        }
                        if (bufferedReader != null) {
                            try {
                                bufferedReader.close();
                            } catch (IOException unused3) {
                            }
                        }
                        return null;
                    } catch (Throwable th2) {
                        th = th2;
                        if (fileReader != null) {
                            try {
                                fileReader.close();
                            } catch (IOException unused4) {
                            }
                        }
                        if (bufferedReader == null) {
                            throw th;
                        }
                        try {
                            bufferedReader.close();
                            throw th;
                        } catch (IOException unused5) {
                            throw th;
                        }
                    }
                }
                try {
                    fileReader.close();
                } catch (IOException unused6) {
                }
                try {
                    bufferedReader.close();
                } catch (IOException unused7) {
                }
                return strTrim;
            } catch (IOException unused8) {
                bufferedReader = null;
            } catch (Throwable th3) {
                th = th3;
                bufferedReader = null;
            }
        } catch (IOException unused9) {
            bufferedReader = null;
            fileReader = null;
        } catch (Throwable th4) {
            fileReader = null;
            th = th4;
            bufferedReader = null;
        }
    }

    public final String f() {
        try {
            return String.valueOf(new File("/sys/devices/system/cpu/").listFiles(new d(this)).length);
        } catch (Exception unused) {
            return "1";
        }
    }
}
