package com.join.mgps.Util;

import android.content.Context;
import android.content.pm.PackageInfo;
import android.content.pm.PackageManager;
import android.content.pm.Signature;
import android.text.TextUtils;
import com.papa91.arc.ext.Log;
import java.security.MessageDigest;
import java.util.HashMap;

/* JADX INFO: loaded from: classes4.dex */
public class l {
    public static String a(Context context, String pkgName) {
        try {
            String strB = b(context.getPackageManager().getPackageInfo(pkgName, 64).signatures[0].toByteArray());
            return strB == null ? "" : strB;
        } catch (PackageManager.NameNotFoundException unused) {
            Log.e("PackageInfo", "Name not found: " + pkgName);
            return "";
        }
    }

    public static String b(byte[] paramArrayOfByte) {
        char[] cArr = {'0', '1', '2', '3', '4', '5', '6', '7', '8', '9', 'a', 'b', 'c', 'd', 'e', 'f'};
        try {
            MessageDigest messageDigest = MessageDigest.getInstance("MD5");
            messageDigest.update(paramArrayOfByte);
            byte[] bArrDigest = messageDigest.digest();
            char[] cArr2 = new char[bArrDigest.length * 2];
            int i10 = 0;
            for (byte b10 : bArrDigest) {
                int i11 = i10 + 1;
                cArr2[i10] = cArr[(b10 >>> 4) & 15];
                i10 = i11 + 1;
                cArr2[i11] = cArr[b10 & 15];
            }
            return new String(cArr2);
        } catch (Exception unused) {
            return null;
        }
    }

    public static Signature[] c(Context context, String packageName) {
        try {
            for (PackageInfo packageInfo : context.getPackageManager().getInstalledPackages(64)) {
                if (packageInfo.packageName.equals(packageName)) {
                    return packageInfo.signatures;
                }
            }
            return null;
        } catch (Exception unused) {
            return null;
        }
    }

    public static HashMap<String, Boolean> d(Context context) {
        HashMap<String, Boolean> map = new HashMap<>();
        try {
            for (PackageInfo packageInfo : context.getPackageManager().getInstalledPackages(64)) {
                try {
                    String str = packageInfo.packageName;
                    Signature[] signatureArr = packageInfo.signatures;
                    if (signatureArr == null || signatureArr.length == 0) {
                        map.put(str, Boolean.FALSE);
                    } else {
                        String strB = b(signatureArr[0].toByteArray());
                        if ((!TextUtils.isEmpty(strB) && (strB.equals("071276c307390f9b7a48524b3534f53d") || strB.equals("d47e9679b19f1d0fa4aea58f83eda3f7"))) || strB.equals("fc007c2e2c0a43cd1f5f3a561cdca088")) {
                            map.put(str, Boolean.TRUE);
                        }
                    }
                } catch (Exception e10) {
                    e10.printStackTrace();
                }
            }
        } catch (Exception e11) {
            e11.printStackTrace();
        }
        return map;
    }

    public static boolean e(Context context, String packageName) {
        try {
            String strA = a(context, packageName);
            if (TextUtils.isEmpty(strA)) {
                return false;
            }
            return strA.equals("071276c307390f9b7a48524b3534f53d") || strA.equals("d47e9679b19f1d0fa4aea58f83eda3f7") || strA.equals("fc007c2e2c0a43cd1f5f3a561cdca088");
        } catch (Exception e10) {
            e10.printStackTrace();
            return false;
        }
    }
}
