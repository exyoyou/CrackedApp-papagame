package com.kwad.sdk.utils;

import android.content.Context;
import android.content.pm.PackageInfo;
import android.content.pm.Signature;
import android.text.TextUtils;
import androidx.annotation.Nullable;
import java.security.MessageDigest;
import java.util.ArrayList;
import java.util.HashMap;

/* JADX INFO: loaded from: classes2.dex */
public final class g {
    private static HashMap<String, ArrayList<String>> bof = new HashMap<>();
    private static String bog;

    @Nullable
    private static ArrayList<String> Q(Context context, String str) {
        String packageName;
        if (context == null || (packageName = context.getPackageName()) == null) {
            return null;
        }
        if (bof.get(str) != null) {
            return bof.get(str);
        }
        ArrayList<String> arrayList = new ArrayList<>();
        try {
            for (Signature signature : getSignatures(context, packageName)) {
                String strA = "error!";
                if ("MD5".equals(str)) {
                    strA = a(signature, "MD5");
                } else if ("SHA1".equals(str)) {
                    strA = a(signature, "SHA1");
                } else if ("SHA256".equals(str)) {
                    strA = a(signature, "SHA256");
                }
                arrayList.add(strA);
            }
        } catch (Exception e10) {
            com.kwad.sdk.core.d.c.e("AppSigningUtil", "签名信息列表获取失败 " + e10.getMessage());
        }
        bof.put(str, arrayList);
        return arrayList;
    }

    private static String a(Signature signature, String str) {
        byte[] byteArray = signature.toByteArray();
        try {
            MessageDigest messageDigest = MessageDigest.getInstance(str);
            if (messageDigest == null) {
                return "error!";
            }
            byte[] bArrDigest = messageDigest.digest(byteArray);
            StringBuilder sb2 = new StringBuilder();
            for (byte b10 : bArrDigest) {
                sb2.append(Integer.toHexString((b10 & 255) | 256).substring(1, 3).toUpperCase());
                sb2.append(":");
            }
            return sb2.substring(0, sb2.length() - 1);
        } catch (Exception e10) {
            com.kwad.sdk.core.d.c.e("AppSigningUtil", e10.getMessage());
            return "error!";
        }
    }

    @Nullable
    public static String cN(Context context) {
        if (!TextUtils.isEmpty(bog)) {
            return bog;
        }
        ArrayList<String> arrayListQ = Q(context, "SHA1");
        if (arrayListQ != null && arrayListQ.size() != 0) {
            bog = arrayListQ.get(0);
        }
        return bog;
    }

    private static Signature[] getSignatures(Context context, String str) {
        try {
            PackageInfo packageInfo = aa.getPackageInfo(context, str, 64);
            if (packageInfo == null) {
                return null;
            }
            return packageInfo.signatures;
        } catch (Exception e10) {
            com.kwad.sdk.core.d.c.e("AppSigningUtil", e10.getMessage());
            return null;
        }
    }
}
