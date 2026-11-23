package com.join.android.app.common.http;

import android.content.Context;
import android.content.Intent;
import android.content.pm.PackageInfo;
import android.content.pm.PackageManager;
import android.provider.Settings;
import com.join.android.app.common.utils.JsonMapper;
import com.join.mgps.Util.AESUtils;
import com.join.mgps.Util.g1;
import com.join.mgps.Util.i1;
import com.join.mgps.Util.t2;
import com.join.mgps.Util.y0;
import java.io.ByteArrayOutputStream;
import java.io.InputStream;
import java.net.HttpURLConnection;
import java.net.URL;
import javax.crypto.Cipher;
import javax.crypto.spec.SecretKeySpec;

/* JADX INFO: loaded from: classes5.dex */
public class c {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public static Context f34545a = null;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public static String f34546b = "app-resource.wufan88.com";

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public static boolean f34547c;

    public static String a(String signS) {
        try {
            SecretKeySpec secretKeySpec = new SecretKeySpec("3CXDWhPx".getBytes("utf-8"), "DES");
            Cipher cipher = Cipher.getInstance("DES/ECB/PKCS5Padding");
            cipher.init(2, secretKeySpec);
            return new String(cipher.doFinal(AESUtils.g(signS)));
        } catch (Exception e10) {
            e10.printStackTrace();
            return "";
        }
    }

    public static boolean b(String host, String ip) {
        g1.c("DNS 1 getWufunData 1");
        String strC = c(host, ip);
        g1.c("DNS 2 ");
        if (!t2.i(strC)) {
            return false;
        }
        try {
            ((DNSDataResult) JsonMapper.getInstance().fromJson(strC, DNSDataResult.class)).updateRpcConstant();
            Context context = f34545a;
            if (context != null) {
                com.join.mgps.pref.h.n(context).R(strC);
            }
        } catch (Exception e10) {
            e10.printStackTrace();
        }
        g1.c("DNS 3 " + strC);
        return true;
    }

    public static String c(String hostName, String ip) {
        String str;
        String string;
        URL url;
        try {
            try {
                PackageInfo packageInfo = f34545a.getPackageManager().getPackageInfo(f34545a.getPackageName(), 0);
                str = packageInfo.versionCode + "_" + packageInfo.versionName;
                try {
                    string = Settings.System.getString(f34545a.getContentResolver(), "android_id");
                } catch (PackageManager.NameNotFoundException e10) {
                    e = e10;
                    e.printStackTrace();
                    string = "";
                }
            } catch (Exception e11) {
                e11.printStackTrace();
            }
        } catch (PackageManager.NameNotFoundException e12) {
            e = e12;
            str = "";
        }
        if (f34547c) {
            url = new URL("http://" + ip + "/wf26_test_encode.json?t=" + System.currentTimeMillis() + "&version=" + str + "&anid=" + string);
        } else {
            url = new URL("http://" + ip + "/wf26_encode.json?t=" + System.currentTimeMillis() + "&version=" + str + "&anid=" + string);
        }
        g1.c("yuming " + url);
        HttpURLConnection httpURLConnection = (HttpURLConnection) url.openConnection();
        httpURLConnection.setRequestMethod("GET");
        httpURLConnection.connect();
        if (httpURLConnection.getResponseCode() == 200) {
            ByteArrayOutputStream byteArrayOutputStream = new ByteArrayOutputStream();
            InputStream inputStream = httpURLConnection.getInputStream();
            while (true) {
                int i10 = inputStream.read();
                if (i10 == -1) {
                    byteArrayOutputStream.flush();
                    byte[] byteArray = byteArrayOutputStream.toByteArray();
                    String str2 = new String(byteArray, 0, byteArray.length);
                    inputStream.close();
                    byteArrayOutputStream.close();
                    return com.join.mgps.Util.a.c(str2, "9d34201f969e5062");
                }
                byteArrayOutputStream.write(i10);
            }
        }
        return "";
    }

    public static void d(Context contextx) {
        String[] strArrSplit;
        f34545a = contextx;
        try {
            if (f34547c) {
                Intent intent = new Intent("com.join.intent.showtoast");
                intent.putExtra("message", "这个是测试版本");
                contextx.sendBroadcast(intent);
            }
        } catch (Exception e10) {
            e10.printStackTrace();
        }
        String strF = f(f34546b);
        if (t2.i(strF)) {
            String strA = a(strF);
            if (!t2.i(strA) || (strArrSplit = strA.split(",")) == null || strArrSplit.length <= 0) {
                return;
            }
            b(f34546b, strArrSplit[0]);
        }
    }

    public static String e(String hostName) {
        long jCurrentTimeMillis = (System.currentTimeMillis() / 1000) + 300;
        return y0.a("http://203.107.1.33/108593/sign_d?host=" + hostName + "&t=" + jCurrentTimeMillis + "&s=" + g(hostName, jCurrentTimeMillis), false);
    }

    public static String f(String hostName) {
        return y0.a("http://119.29.29.98/d?dn=" + h(hostName) + "&id=7794&ttl=1", false);
    }

    public static String g(String host, long time) {
        return i1.d(host + "-880c86a5ef4e520a88c0cca16af9e8ff-" + time);
    }

    public static String h(String hostName) {
        try {
            SecretKeySpec secretKeySpec = new SecretKeySpec("3CXDWhPx".getBytes("utf-8"), "DES");
            Cipher cipher = Cipher.getInstance("DES/ECB/PKCS5Padding");
            cipher.init(1, secretKeySpec);
            return AESUtils.a(cipher.doFinal(hostName.getBytes("utf-8")));
        } catch (Exception e10) {
            e10.printStackTrace();
            return "";
        }
    }
}
