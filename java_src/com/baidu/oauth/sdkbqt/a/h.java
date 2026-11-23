package com.baidu.oauth.sdkbqt.a;

import android.annotation.TargetApi;
import android.app.Activity;
import android.content.Context;
import android.content.pm.PackageManager;
import android.content.pm.Signature;
import android.net.ConnectivityManager;
import android.net.Uri;
import android.os.Build;
import android.text.TextUtils;
import android.util.Base64;
import android.view.inputmethod.InputMethodManager;
import com.baidu.passbqt.common.SecurityUtil;
import com.j256.ormlite.stmt.query.SimpleComparison;
import com.join.mgps.dto.Constant;
import java.security.MessageDigest;
import java.util.HashMap;
import okio.Utf8;

/* JADX INFO: loaded from: classes6.dex */
public class h {
    public static String a(Context context, String str) {
        if (context == null || TextUtils.isEmpty(str)) {
            return "";
        }
        try {
            Signature[] signatureArr = context.getPackageManager().getPackageInfo(str, 64).signatures;
            return signatureArr.length > 0 ? SecurityUtil.a(signatureArr[0].toByteArray(), false) : "";
        } catch (Throwable th) {
            d.a(th);
            return "";
        }
    }

    public static String b(Context context, String str) {
        if (context == null || TextUtils.isEmpty(str)) {
            return "";
        }
        try {
            Signature[] signatureArr = context.getPackageManager().getPackageInfo(str, 64).signatures;
            return signatureArr.length > 0 ? a(signatureArr[0].toByteArray(), false) : "";
        } catch (Throwable th) {
            d.a(th);
            return "";
        }
    }

    public static String c(Context context) {
        try {
            PackageManager packageManager = context.getPackageManager();
            return packageManager.getPackageInfo(context.getPackageName(), 0).applicationInfo.loadLabel(packageManager).toString();
        } catch (Throwable unused) {
            return null;
        }
    }

    public static boolean c(String str) {
        if (TextUtils.isEmpty(str)) {
            return false;
        }
        Uri uri = Uri.parse(str);
        uri.getHost();
        String[] strArr = {Uri.decode(uri.getQueryParameter(Constant.MD5)), Uri.decode(uri.getQueryParameter("client_id")), Uri.decode(uri.getQueryParameter("cmd")), Uri.decode(uri.getQueryParameter("tpl"))};
        for (int i10 = 0; i10 < 4; i10++) {
            if (TextUtils.isEmpty(strArr[i10])) {
                return false;
            }
        }
        uri.getScheme();
        String strB = c.b();
        StringBuilder sb2 = new StringBuilder();
        sb2.append(uri.getScheme());
        sb2.append("://");
        sb2.append(uri.getHost());
        return strB.equals(sb2.toString());
    }

    public static String a(byte[] bArr, boolean z10) {
        try {
            byte[] bArrDigest = MessageDigest.getInstance("SHA-1").digest(bArr);
            StringBuilder sb2 = new StringBuilder();
            for (byte b10 : bArrDigest) {
                sb2.append(String.format("%02x", Byte.valueOf(b10)));
            }
            return z10 ? sb2.toString() : sb2.toString().toUpperCase();
        } catch (Exception e10) {
            d.a(e10);
            return "";
        }
    }

    public static String b(Context context) {
        try {
            return context.getPackageManager().getPackageInfo(context.getPackageName(), 0).versionName;
        } catch (Throwable th) {
            d.a(th);
            return "0";
        }
    }

    public static String b(String str) {
        return new String(Base64.decode(str, 0));
    }

    @TargetApi(3)
    public static void a(Activity activity) {
        InputMethodManager inputMethodManager = (InputMethodManager) activity.getSystemService("input_method");
        if (!inputMethodManager.isActive() || activity.getCurrentFocus() == null || activity.getCurrentFocus().getWindowToken() == null) {
            return;
        }
        inputMethodManager.hideSoftInputFromWindow(activity.getCurrentFocus().getWindowToken(), 2);
    }

    public static boolean a(Context context) {
        if (context == null) {
            return false;
        }
        try {
            return ((ConnectivityManager) context.getSystemService("connectivity")).getActiveNetworkInfo() != null;
        } catch (Throwable th) {
            d.a(th);
            return false;
        }
    }

    public static String a(HashMap<String, String> map) {
        StringBuilder sb2 = new StringBuilder();
        for (String str : map.keySet()) {
            String str2 = map.get(str);
            if (!TextUtils.isEmpty(str) && !TextUtils.isEmpty(str2)) {
                if (sb2.length() != 0) {
                    sb2.append(x.a.f97576d);
                }
                sb2.append(str);
                sb2.append(SimpleComparison.EQUAL_TO_OPERATION);
                sb2.append(str2);
            }
        }
        return sb2.toString();
    }

    public static void a(Object obj, String str) {
        if (obj == null) {
            throw new IllegalArgumentException(str);
        }
    }

    @TargetApi(23)
    public static boolean a(String str, Context context) {
        try {
            int i10 = Build.VERSION.SDK_INT;
            return (i10 >= 23 && context.checkSelfPermission(str) == 0) || (i10 < 23 && context.checkCallingOrSelfPermission(str) == 0);
        } catch (Exception unused) {
            return false;
        }
    }

    public static HashMap<String, String> a(String str) {
        HashMap<String, String> map = new HashMap<>();
        if (TextUtils.isEmpty(str)) {
            return map;
        }
        if (str.contains("?")) {
            try {
                str = str.substring(str.indexOf("?") + 1, str.length());
            } catch (Exception e10) {
                d.a(e10);
            }
        }
        for (String str2 : str.split(x.a.f97576d)) {
            String[] strArrSplit = str2.split(SimpleComparison.EQUAL_TO_OPERATION);
            if (strArrSplit.length == 2) {
                map.put(strArrSplit[0], strArrSplit[1]);
            }
        }
        return map;
    }

    public static String a(byte[] bArr) {
        int i10;
        StringBuilder sb2 = new StringBuilder();
        int length = bArr.length * 8;
        int i11 = 0;
        int i12 = 6;
        int i13 = 0;
        int i14 = 0;
        byte b10 = 0;
        while (true) {
            if (i11 > 0 && i12 > 0) {
                int i15 = (bArr[i13] & 255) << i12;
                int i16 = 8 - i12;
                b10 = (byte) (((byte) (i15 | ((bArr[i13 + 1] & 255) >> i16))) & Utf8.REPLACEMENT_BYTE);
                i12 = 6 - i16;
                i11 = i16;
            } else if (i11 == 0) {
                b10 = (byte) ((bArr[i13] & 255) >> (8 - i12));
                i11 = 2;
                i12 = 4;
            } else if (i12 == 0) {
                b10 = (byte) (bArr[i13] & Utf8.REPLACEMENT_BYTE);
                i11 = 0;
                i12 = 6;
            }
            sb2.append("ABCDEFGHIJKLMNOPQRSTUVWXYZabcdefghijklmnopqrstuvwxyz0123456789+/".charAt(b10));
            i14 += 6;
            int i17 = i14 / 8;
            i10 = length - i14;
            if (i10 < 6) {
                break;
            }
            i13 = i17;
        }
        if (i10 > 0) {
            sb2.append("ABCDEFGHIJKLMNOPQRSTUVWXYZabcdefghijklmnopqrstuvwxyz0123456789+/".charAt((byte) ((bArr[bArr.length - 1] << (6 - i10)) & 63)));
        }
        int i18 = length % 3;
        for (int i19 = 0; i19 < i18; i19++) {
            sb2.append(SimpleComparison.EQUAL_TO_OPERATION);
        }
        return sb2.toString();
    }

    public static boolean a() {
        try {
            Class.forName("com.baidu.sapi2.SapiAccountManager");
            return true;
        } catch (ClassNotFoundException unused) {
            return false;
        }
    }
}
