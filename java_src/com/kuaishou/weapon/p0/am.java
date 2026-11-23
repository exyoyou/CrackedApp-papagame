package com.kuaishou.weapon.p0;

import android.content.Context;
import android.net.ConnectivityManager;
import android.net.NetworkCapabilities;
import android.text.TextUtils;
import java.io.BufferedReader;
import java.io.DataInputStream;
import java.io.IOException;
import java.io.InputStreamReader;
import java.security.KeyStore;
import java.security.cert.X509Certificate;
import java.util.Enumeration;
import java.util.HashSet;
import java.util.Iterator;
import org.json.JSONArray;

/* JADX INFO: loaded from: classes3.dex */
public class am {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private static final String f74457a = "tun";

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private static final String f74458b = "ppp";

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    private static int f74459c;

    public static boolean a(Context context) {
        NetworkCapabilities networkCapabilities;
        try {
            ConnectivityManager connectivityManager = (ConnectivityManager) context.getSystemService("connectivity");
            return (connectivityManager == null || (networkCapabilities = connectivityManager.getNetworkCapabilities(connectivityManager.getActiveNetwork())) == null || !networkCapabilities.hasTransport(4)) ? false : true;
        } catch (Throwable unused) {
        }
    }

    public static String b(Context context) {
        try {
            JSONArray jSONArrayA = a();
            if (jSONArrayA != null) {
                return jSONArrayA.toString();
            }
            return a(context) ? "[\"con\"]" : "";
        } catch (Throwable unused) {
        }
    }

    public static int c() {
        return f74459c;
    }

    public static String d() {
        StringBuilder sb2 = new StringBuilder();
        try {
            f74459c = 0;
            KeyStore keyStore = KeyStore.getInstance("AndroidCAStore");
            if (keyStore != null) {
                keyStore.load(null, null);
                Enumeration<String> enumerationAliases = keyStore.aliases();
                while (enumerationAliases.hasMoreElements()) {
                    f74459c++;
                    X509Certificate x509Certificate = (X509Certificate) keyStore.getCertificate(enumerationAliases.nextElement());
                    if (x509Certificate.getIssuerDN().getName().contains("2022") || x509Certificate.getIssuerDN().getName().contains("2023") || x509Certificate.getIssuerDN().getName().contains("HttpCanary") || x509Certificate.getIssuerDN().getName().contains("macbook") || x509Certificate.getIssuerDN().getName().contains("proxy") || x509Certificate.getIssuerDN().getName().contains("Proxy") || x509Certificate.getIssuerDN().getName().contains(com.baidu.mobads.sdk.internal.ax.f7484a) || x509Certificate.getIssuerDN().getName().contains("github")) {
                        sb2.append(x509Certificate.getIssuerDN().getName());
                        sb2.append("|");
                    }
                }
            }
            if (sb2.length() > 0) {
                sb2.deleteCharAt(sb2.length() - 1);
            }
        } catch (Throwable unused) {
        }
        return sb2.toString();
    }

    public static String b() {
        String property = System.getProperty("http.proxyHost");
        return TextUtils.isEmpty(property) ? "" : property;
    }

    public static JSONArray a() {
        BufferedReader bufferedReader;
        JSONArray jSONArray = new JSONArray();
        DataInputStream dataInputStream = null;
        try {
            DataInputStream dataInputStream2 = new DataInputStream(Runtime.getRuntime().exec("cat /proc/net/route").getInputStream());
            try {
                bufferedReader = new BufferedReader(new InputStreamReader(dataInputStream2));
                try {
                    HashSet hashSet = new HashSet();
                    while (true) {
                        String line = bufferedReader.readLine();
                        if (line == null) {
                            break;
                        }
                        String strA = bm.a(line);
                        if (strA.contains(f74457a) || strA.contains(f74458b)) {
                            hashSet.add(strA.split("\t")[0]);
                        }
                    }
                    Iterator it2 = hashSet.iterator();
                    while (it2.hasNext()) {
                        jSONArray.put(it2.next());
                    }
                    try {
                        dataInputStream2.close();
                    } catch (IOException unused) {
                    }
                } catch (Throwable unused2) {
                    dataInputStream = dataInputStream2;
                    if (dataInputStream != null) {
                        try {
                            dataInputStream.close();
                        } catch (IOException unused3) {
                        }
                    }
                    if (bufferedReader != null) {
                    }
                    return jSONArray;
                }
            } catch (Throwable unused4) {
                bufferedReader = null;
            }
        } catch (Throwable unused5) {
            bufferedReader = null;
        }
        try {
            bufferedReader.close();
        } catch (IOException unused6) {
        }
        return jSONArray;
    }
}
