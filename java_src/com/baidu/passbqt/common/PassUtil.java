package com.baidu.passbqt.common;

import android.content.Context;
import android.content.pm.Signature;
import android.text.TextUtils;
import com.baidu.passbqt.NoProguard;

/* JADX INFO: loaded from: classes6.dex */
public class PassUtil implements NoProguard {
    public static String a(Context context, String str) {
        if (context == null || TextUtils.isEmpty(str)) {
            return "";
        }
        try {
            Signature[] signatureArr = context.getPackageManager().getPackageInfo(str, 64).signatures;
            return signatureArr.length > 0 ? SecurityUtil.a(signatureArr[0].toByteArray(), false) : "";
        } catch (Throwable th) {
            Log.a(th);
            return "";
        }
    }
}
