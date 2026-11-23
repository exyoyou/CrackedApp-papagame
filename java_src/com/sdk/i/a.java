package com.sdk.i;

import android.annotation.SuppressLint;
import android.content.Context;
import android.content.pm.ApplicationInfo;
import android.content.pm.PackageInfo;
import android.content.pm.PackageManager;
import android.os.Build;
import android.os.Bundle;
import com.kwad.components.offline.api.tk.model.report.TKDownloadReason;
import com.sdk.base.framework.utils.log.LogUtils;
import com.sdk.f.d;
import com.sdk.v.b;
import java.security.MessageDigest;
import java.util.Stack;

/* JADX INFO: loaded from: classes2.dex */
public class a extends com.sdk.h.a {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public static final String f78540a = "com.sdk.i.a";

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public static boolean f78541b = d.f78521a;

    static {
        new Stack();
    }

    @SuppressLint({"NewApi"})
    public static int a() {
        try {
            return Build.VERSION.SDK_INT;
        } catch (Exception e10) {
            LogUtils.e(f78540a, e10.getMessage(), Boolean.valueOf(f78541b));
            return -1;
        }
    }

    public static String b(Context context, String str) {
        PackageInfo packageInfo;
        String strA;
        if (str == null) {
            str = TKDownloadReason.KSAD_TK_MD5;
        }
        try {
            packageInfo = context.getPackageManager().getPackageInfo(context.getPackageName(), 64);
        } catch (PackageManager.NameNotFoundException e10) {
            LogUtils.e(f78540a, e10.getMessage(), Boolean.valueOf(f78541b));
            packageInfo = null;
        }
        if (packageInfo != null) {
            try {
                byte[] byteArray = packageInfo.signatures[0].toByteArray();
                if (str.equalsIgnoreCase("sm3")) {
                    strA = a(b.a(byteArray));
                } else {
                    MessageDigest messageDigest = MessageDigest.getInstance(str);
                    messageDigest.update(byteArray);
                    strA = a(messageDigest.digest());
                }
                return strA;
            } catch (Exception e11) {
                LogUtils.e(f78540a, e11.getMessage(), Boolean.valueOf(f78541b));
            }
        }
        return "";
    }

    public static String a(Context context) {
        if (context == null) {
            LogUtils.w(f78540a, "mContext 为空", Boolean.valueOf(f78541b));
            return null;
        }
        try {
            return context.getPackageName();
        } catch (Exception e10) {
            LogUtils.e(f78540a, e10.getMessage(), Boolean.valueOf(f78541b));
            return null;
        }
    }

    public static String a(byte[] bArr) {
        String str = "";
        for (int i10 = 0; i10 < bArr.length; i10++) {
            if (i10 != 0) {
                str = str + ":";
            }
            String hexString = Integer.toHexString(bArr[i10] & 255);
            if (hexString.length() == 1) {
                str = str + "0";
            }
            str = str + hexString;
        }
        return str;
    }

    /* JADX WARN: Code duplicated, block: B:14:0x0036  */
    public static String a(Context context, String str) {
        Object obj;
        Bundle bundle;
        if (context == null || com.sdk.r.a.a(str).booleanValue()) {
            obj = null;
        } else {
            try {
                ApplicationInfo applicationInfo = context.getPackageManager().getApplicationInfo(a(context), 128);
                if (applicationInfo == null || (bundle = applicationInfo.metaData) == null) {
                    obj = null;
                } else {
                    obj = bundle.get(str);
                }
            } catch (Exception e10) {
                LogUtils.i(f78540a, e10.getMessage(), Boolean.valueOf(f78541b));
            }
        }
        String str2 = (String) obj;
        return com.sdk.r.a.a(str2).booleanValue() ? com.sdk.t.a.f78586c : str2;
    }
}
