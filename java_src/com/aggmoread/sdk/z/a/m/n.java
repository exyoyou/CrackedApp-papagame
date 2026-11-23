package com.aggmoread.sdk.z.a.m;

import android.content.Context;
import android.net.wifi.WifiManager;
import android.os.Build;
import android.text.TextUtils;
import com.baidu.oauth.sdkbqt.result.OauthResult;
import com.efs.sdk.base.core.util.NetworkUtil;
import java.io.BufferedReader;
import java.io.FileReader;
import java.io.IOException;
import java.io.InputStreamReader;
import java.io.LineNumberReader;
import java.io.Reader;
import java.net.InetAddress;
import java.net.NetworkInterface;
import java.net.SocketException;
import java.util.Collections;
import java.util.Enumeration;

/* JADX INFO: loaded from: classes7.dex */
public class n {
    public static String a(Context context) {
        return ((WifiManager) context.getSystemService(NetworkUtil.NETWORK_TYPE_WIFI)).getConnectionInfo().getMacAddress();
    }

    public static String b() {
        String strA = a("busybox ifconfig", "HWaddr");
        if (strA == null) {
            return OauthResult.RESULT_MSG_NETWORK_EXCEPTION;
        }
        return (strA.length() <= 0 || !strA.contains("HWaddr")) ? strA : strA.substring(strA.indexOf("HWaddr") + 6, strA.length() - 1);
    }

    public static String c() {
        try {
            byte[] hardwareAddress = NetworkInterface.getByInetAddress(a()).getHardwareAddress();
            StringBuffer stringBuffer = new StringBuffer();
            for (int i10 = 0; i10 < hardwareAddress.length; i10++) {
                if (i10 != 0) {
                    stringBuffer.append(':');
                }
                String hexString = Integer.toHexString(hardwareAddress[i10] & 255);
                if (hexString.length() == 1) {
                    hexString = 0 + hexString;
                }
                stringBuffer.append(hexString);
            }
            return stringBuffer.toString().toUpperCase();
        } catch (Exception unused) {
            return null;
        }
    }

    private static String d() {
        try {
            for (NetworkInterface networkInterface : Collections.list(NetworkInterface.getNetworkInterfaces())) {
                if (networkInterface.getName().equalsIgnoreCase("wlan0")) {
                    byte[] hardwareAddress = networkInterface.getHardwareAddress();
                    if (hardwareAddress == null) {
                        return "";
                    }
                    StringBuilder sb2 = new StringBuilder();
                    for (byte b10 : hardwareAddress) {
                        sb2.append(String.format("%02X:", Byte.valueOf(b10)));
                    }
                    if (sb2.length() > 0) {
                        sb2.deleteCharAt(sb2.length() - 1);
                    }
                    return sb2.toString();
                }
            }
            return null;
        } catch (Exception e10) {
            e10.printStackTrace();
            return null;
        }
    }

    public static String e() {
        Enumeration<NetworkInterface> networkInterfaces;
        String strA = null;
        try {
            networkInterfaces = NetworkInterface.getNetworkInterfaces();
        } catch (SocketException e10) {
            e10.printStackTrace();
            networkInterfaces = null;
        }
        if (networkInterfaces == null) {
            return null;
        }
        while (networkInterfaces.hasMoreElements()) {
            try {
                strA = a(networkInterfaces.nextElement().getHardwareAddress());
                if (strA != null) {
                    break;
                }
            } catch (SocketException e11) {
                e11.printStackTrace();
            }
        }
        return strA;
    }

    private static String a(Reader reader) throws IOException {
        StringBuilder sb2 = new StringBuilder();
        char[] cArr = new char[4096];
        while (true) {
            int i10 = reader.read(cArr);
            if (i10 < 0) {
                return sb2.toString();
            }
            sb2.append(cArr, 0, i10);
        }
    }

    public static String b(Context context) {
        int i10 = Build.VERSION.SDK_INT;
        if (i10 < 23) {
            com.aggmoread.sdk.z.a.d.d("=====", "6.0以下");
            try {
                return a(context);
            } catch (Exception e10) {
                e10.printStackTrace();
                return "02:00:00:00:00:00";
            }
        }
        if (i10 < 24 && i10 >= 23) {
            com.aggmoread.sdk.z.a.d.d("=====", "6.0以上7.0以下");
            return c(context);
        }
        if (i10 < 24 || i10 >= 28) {
            if (i10 < 28) {
                return "02:00:00:00:00:00";
            }
            String strD = d();
            return TextUtils.isEmpty(strD) ? c(context) : strD;
        }
        com.aggmoread.sdk.z.a.d.d("=====", "7.0以上");
        if (!TextUtils.isEmpty(c())) {
            com.aggmoread.sdk.z.a.d.d("=====", "7.0以上1");
            return c();
        }
        if (TextUtils.isEmpty(e())) {
            com.aggmoread.sdk.z.a.d.d("=====", "7.0以上3");
            return b();
        }
        com.aggmoread.sdk.z.a.d.d("=====", "7.0以上2");
        return e();
    }

    public static String c(Context context) {
        String strTrim;
        if (Build.VERSION.SDK_INT < 23) {
            String strD = d(context);
            if (!TextUtils.isEmpty(strD)) {
                return strD;
            }
        }
        try {
            LineNumberReader lineNumberReader = new LineNumberReader(new InputStreamReader(Runtime.getRuntime().exec("cat /sys/class/net/wlan0/address").getInputStream()));
            String line = "";
            while (true) {
                if (line != null) {
                    line = lineNumberReader.readLine();
                    if (line != null) {
                        strTrim = line.trim();
                        break;
                    }
                    strTrim = "";
                    break;
                }
                strTrim = "";
                break;
            }
        } catch (Exception e10) {
            com.aggmoread.sdk.z.a.d.d("----->NetInfoManager", "getMacAddress:" + e10.toString());
        }
        if (strTrim == null || "".equals(strTrim)) {
            try {
                return a("/sys/class/net/eth0/address").toUpperCase().substring(0, 17);
            } catch (Exception e11) {
                e11.printStackTrace();
                com.aggmoread.sdk.z.a.d.d("----->NetInfoManager", "getMacAddress:" + e11.toString());
            }
        }
        return strTrim;
    }

    private static String d(Context context) {
        if (!e(context)) {
            return "";
        }
        try {
            return ((WifiManager) context.getSystemService(NetworkUtil.NETWORK_TYPE_WIFI)).getConnectionInfo().getMacAddress();
        } catch (Exception e10) {
            com.aggmoread.sdk.z.a.d.d("----->NetInfoManager", "getMacAddress0:" + e10.toString());
            return "";
        }
    }

    private static boolean e(Context context) {
        if (context.checkCallingOrSelfPermission(com.kuaishou.weapon.p0.g.f74780d) != 0) {
            return false;
        }
        com.aggmoread.sdk.z.a.d.d("----->NetInfoManager", "isAccessWifiStateAuthorized:access wifi state is enabled");
        return true;
    }

    private static String a(String str) throws IOException {
        FileReader fileReader = new FileReader(str);
        String strA = a(fileReader);
        fileReader.close();
        return strA;
    }

    private static String a(String str, String str2) {
        String str3 = "";
        try {
            BufferedReader bufferedReader = new BufferedReader(new InputStreamReader(Runtime.getRuntime().exec(str).getInputStream()));
            while (true) {
                String line = bufferedReader.readLine();
                if (line == null || line.contains(str2)) {
                    return line;
                }
                str3 = str3 + line;
            }
        } catch (Exception e10) {
            e10.printStackTrace();
            return "";
        }
    }

    private static String a(byte[] bArr) {
        if (bArr == null || bArr.length == 0) {
            return null;
        }
        StringBuilder sb2 = new StringBuilder();
        for (byte b10 : bArr) {
            sb2.append(String.format("%02X:", Byte.valueOf(b10)));
        }
        if (sb2.length() > 0) {
            sb2.deleteCharAt(sb2.length() - 1);
        }
        return sb2.toString();
    }

    private static InetAddress a() {
        InetAddress inetAddress;
        SocketException e10;
        try {
            Enumeration<NetworkInterface> networkInterfaces = NetworkInterface.getNetworkInterfaces();
            inetAddress = null;
            do {
                try {
                    if (!networkInterfaces.hasMoreElements()) {
                        break;
                    }
                    Enumeration<InetAddress> inetAddresses = networkInterfaces.nextElement().getInetAddresses();
                    while (inetAddresses.hasMoreElements()) {
                        InetAddress inetAddressNextElement = inetAddresses.nextElement();
                        try {
                            if (!inetAddressNextElement.isLoopbackAddress() && inetAddressNextElement.getHostAddress().indexOf(":") == -1) {
                                inetAddress = inetAddressNextElement;
                                break;
                            }
                            inetAddress = null;
                        } catch (SocketException e11) {
                            e10 = e11;
                            inetAddress = inetAddressNextElement;
                            e10.printStackTrace();
                        }
                    }
                } catch (SocketException e12) {
                    e10 = e12;
                }
            } while (inetAddress == null);
        } catch (SocketException e13) {
            inetAddress = null;
            e10 = e13;
        }
        return inetAddress;
    }
}
