package com.xinzhu.overmind.utils;

import android.content.pm.ActivityInfo;
import android.content.pm.Signature;
import androidx.annotation.NonNull;
import java.io.ByteArrayOutputStream;
import java.io.IOException;
import java.security.MessageDigest;
import java.security.NoSuchAlgorithmException;
import java.util.Arrays;

/* JADX INFO: loaded from: classes8.dex */
public final class v {
    private v() {
    }

    public static String a(@NonNull byte[] bArr) {
        byte[] bArrB = b(bArr);
        if (bArrB == null) {
            return null;
        }
        return m.k(bArrB, true);
    }

    public static byte[] b(@NonNull byte[] bArr) {
        try {
            MessageDigest messageDigest = MessageDigest.getInstance("SHA256");
            messageDigest.update(bArr);
            return messageDigest.digest();
        } catch (NoSuchAlgorithmException unused) {
            return null;
        }
    }

    @NonNull
    public static String c(@NonNull Signature[] signatureArr) {
        return signatureArr.length == 1 ? a(signatureArr[0].toByteArray()) : d(e(signatureArr));
    }

    @NonNull
    public static String d(@NonNull String[] strArr) {
        if (strArr.length == 1) {
            return strArr[0];
        }
        Arrays.sort(strArr);
        ByteArrayOutputStream byteArrayOutputStream = new ByteArrayOutputStream();
        for (String str : strArr) {
            try {
                byteArrayOutputStream.write(str.getBytes());
            } catch (IOException unused) {
            }
        }
        return a(byteArrayOutputStream.toByteArray());
    }

    @NonNull
    public static String[] e(@NonNull Signature[] signatureArr) {
        int length = signatureArr.length;
        String[] strArr = new String[length];
        for (int i10 = 0; i10 < length; i10++) {
            strArr[i10] = a(signatureArr[i10].toByteArray());
        }
        return strArr;
    }

    public static String f(ActivityInfo activityInfo) {
        if (activityInfo.launchMode != 3) {
            String str = activityInfo.taskAffinity;
            if (str == null && activityInfo.applicationInfo.taskAffinity == null) {
                return activityInfo.packageName;
            }
            return str != null ? str : activityInfo.applicationInfo.taskAffinity;
        }
        return "SINGLE_INSTANCE_" + activityInfo.packageName + "_" + activityInfo.name;
    }
}
