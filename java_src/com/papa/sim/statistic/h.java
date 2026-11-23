package com.papa.sim.statistic;

import android.content.Context;
import android.os.Build;
import android.os.Environment;
import android.telephony.TelephonyManager;
import android.text.TextUtils;
import java.io.BufferedReader;
import java.io.File;
import java.io.FileInputStream;
import java.io.FileOutputStream;
import java.io.IOException;
import java.io.InputStreamReader;
import java.io.OutputStreamWriter;
import java.net.NetworkInterface;
import java.net.SocketException;
import java.security.MessageDigest;
import java.util.UUID;

/* JADX INFO: loaded from: classes2.dex */
public class h {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private static final String f77218a = "aray/cache/devices";

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private static final String f77219b = ".DEVICES";

    public static String a(byte[] bArr, boolean z10) {
        StringBuffer stringBuffer = new StringBuffer();
        for (int i10 = 0; i10 < bArr.length; i10++) {
            int i11 = bArr[i10];
            if (i11 < 0) {
                i11 += 256;
            }
            if (i11 < 16) {
                stringBuffer.append("0");
            }
            stringBuffer.append(Integer.toHexString(i11));
        }
        return z10 ? stringBuffer.toString().toUpperCase() : stringBuffer.toString().toLowerCase();
    }

    public static String b(Context context) {
        String strG = g(context);
        StringBuilder sb2 = new StringBuilder();
        if (strG != null && !"".equals(strG)) {
            return strG;
        }
        try {
            sb2.append(d(context));
        } catch (Exception e10) {
            e10.printStackTrace();
        }
        try {
            String strE = e(context);
            if (!TextUtils.isEmpty(strE)) {
                sb2.append(strE.replace(":", ""));
            }
        } catch (Exception e11) {
            e11.printStackTrace();
        }
        if (sb2.length() <= 0) {
            sb2.append(UUID.randomUUID().toString().replace("-", ""));
        }
        String strF = f(sb2.toString(), false);
        if (sb2.length() > 0) {
            h(strF, context);
        }
        return strF;
    }

    private static File c(Context context) {
        File file = new File(context.getFilesDir(), f77218a);
        if (Build.VERSION.SDK_INT >= 23 && context.checkSelfPermission("android.permission-group.STORAGE") != 0) {
            File file2 = new File(Environment.getExternalStorageDirectory(), f77218a);
            if (file2.exists()) {
                g.b(file2, file);
            }
        }
        return new File(file, f77219b);
    }

    private static String d(Context context) {
        if (u.s(context)) {
            return (Build.VERSION.SDK_INT < 23 || context.checkSelfPermission(com.kuaishou.weapon.p0.g.f74779c) == 0) ? ((TelephonyManager) context.getSystemService("phone")).getDeviceId() : "";
        }
        return "";
    }

    private static String e(Context context) {
        if (!u.s(context)) {
            return null;
        }
        StringBuffer stringBuffer = new StringBuffer();
        try {
            NetworkInterface byName = NetworkInterface.getByName("eth1");
            if (byName == null) {
                byName = NetworkInterface.getByName("wlan0");
            }
            if (byName == null) {
                return "";
            }
            for (byte b10 : byName.getHardwareAddress()) {
                stringBuffer.append(String.format("%02X:", Byte.valueOf(b10)));
            }
            if (stringBuffer.length() > 0) {
                stringBuffer.deleteCharAt(stringBuffer.length() - 1);
            }
            return stringBuffer.toString();
        } catch (SocketException e10) {
            e10.printStackTrace();
            return "";
        }
    }

    public static String f(String str, boolean z10) {
        try {
            return a(MessageDigest.getInstance("MD5").digest(str.getBytes()), z10);
        } catch (Exception e10) {
            e10.printStackTrace();
            return "";
        }
    }

    public static String g(Context context) {
        try {
            File fileC = c(context);
            if (!fileC.exists()) {
                return "";
            }
            StringBuffer stringBuffer = new StringBuffer();
            BufferedReader bufferedReader = new BufferedReader(new InputStreamReader(new FileInputStream(fileC), "UTF-8"));
            while (true) {
                int i10 = bufferedReader.read();
                if (i10 <= -1) {
                    bufferedReader.close();
                    return stringBuffer.toString();
                }
                stringBuffer.append((char) i10);
            }
        } catch (IOException e10) {
            e10.printStackTrace();
            return null;
        }
    }

    public static void h(String str, Context context) {
        try {
            File fileC = c(context);
            if (fileC != null && fileC.exists()) {
                OutputStreamWriter outputStreamWriter = new OutputStreamWriter(new FileOutputStream(fileC), "UTF-8");
                outputStreamWriter.write(str);
                outputStreamWriter.close();
            }
        } catch (IOException e10) {
            e10.printStackTrace();
        }
    }
}
