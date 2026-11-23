package com.papa.sim.statistic;

import android.content.Context;
import android.net.wifi.WifiInfo;
import android.net.wifi.WifiManager;
import com.efs.sdk.base.core.util.NetworkUtil;
import java.io.BufferedReader;
import java.io.File;
import java.io.FileInputStream;
import java.io.IOException;
import java.io.InputStream;
import java.io.InputStreamReader;
import java.io.StringWriter;
import java.net.HttpURLConnection;
import java.net.MalformedURLException;
import java.net.NetworkInterface;
import java.net.URL;
import java.util.Collections;
import org.json.JSONException;
import org.json.JSONObject;

/* JADX INFO: loaded from: classes2.dex */
public class i {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private static final String f77296a = "02:00:00:00:00:00";

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private static final String f77297b = "/sys/class/net/wlan0/address";

    private static String a(InputStream inputStream) throws IOException {
        if (inputStream == null) {
            return "No Contents";
        }
        StringWriter stringWriter = new StringWriter();
        char[] cArr = new char[2048];
        try {
            BufferedReader bufferedReader = new BufferedReader(new InputStreamReader(inputStream, "UTF-8"));
            while (true) {
                int i10 = bufferedReader.read(cArr);
                if (i10 == -1) {
                    inputStream.close();
                    return stringWriter.toString();
                }
                stringWriter.write(cArr, 0, i10);
            }
        } catch (Throwable th) {
            inputStream.close();
            throw th;
        }
    }

    private static String b(WifiManager wifiManager) throws Exception {
        int wifiState = wifiManager.getWifiState();
        if (!wifiManager.isWifiEnabled()) {
            return null;
        }
        FileInputStream fileInputStream = new FileInputStream(new File(f77297b));
        String strA = a(fileInputStream);
        fileInputStream.close();
        wifiManager.setWifiEnabled(3 == wifiState);
        return strA;
    }

    private static String c() {
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
        } catch (Exception unused) {
            return null;
        }
    }

    public static String d(Context context) {
        WifiManager wifiManager = (WifiManager) context.getApplicationContext().getSystemService(NetworkUtil.NETWORK_TYPE_WIFI);
        WifiInfo connectionInfo = wifiManager.getConnectionInfo();
        if (connectionInfo == null || !f77296a.equals(connectionInfo.getMacAddress())) {
            return (connectionInfo == null || connectionInfo.getMacAddress() == null) ? "" : connectionInfo.getMacAddress();
        }
        try {
            String strC = c();
            return strC != null ? strC : b(wifiManager);
        } catch (IOException | Exception unused) {
            return f77296a;
        }
    }

    public static String e() {
        String line = "";
        try {
            HttpURLConnection httpURLConnection = (HttpURLConnection) new URL("http://pv.sohu.com/cityjson?ie=utf-8").openConnection();
            if (httpURLConnection.getResponseCode() == 200) {
                InputStream inputStream = httpURLConnection.getInputStream();
                BufferedReader bufferedReader = new BufferedReader(new InputStreamReader(inputStream, "utf-8"));
                StringBuilder sb2 = new StringBuilder();
                while (true) {
                    line = bufferedReader.readLine();
                    if (line == null) {
                        break;
                    }
                    sb2.append(line + "\n");
                }
                inputStream.close();
                String strSubstring = sb2.substring(sb2.indexOf("{"), sb2.indexOf("}") + 1);
                if (strSubstring == null) {
                    return line;
                }
                try {
                    return new JSONObject(strSubstring).optString("cip");
                } catch (JSONException e10) {
                    e10.printStackTrace();
                    return line;
                }
            }
        } catch (MalformedURLException e11) {
            e11.printStackTrace();
        } catch (IOException e12) {
            e12.printStackTrace();
        } catch (Exception e13) {
            e13.printStackTrace();
        }
        return line;
    }
}
