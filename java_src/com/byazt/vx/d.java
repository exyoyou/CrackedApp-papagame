package com.byazt.vx;

import android.net.Uri;
import android.text.TextUtils;
import android.util.Base64;
import com.tencent.stat.DeviceInfo;

/* JADX INFO: loaded from: classes9.dex */
@com.byazt.zqa.c(c = {0, 1, 962, 512})
public class d {

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public static String f21403c;

    public static boolean c() {
        return com.byazt.eu.tt.tt() && com.byazt.omf.x.m().lr();
    }

    public static String tt() {
        if (TextUtils.isEmpty(f21403c)) {
            f21403c = new String(Base64.decode("ZGV2aWNlX2lk", 0));
        }
        return f21403c;
    }

    public static String c(String str) {
        try {
            if (!c()) {
                return str;
            }
            String strGt = com.byazt.bp.c.t().gt();
            if (TextUtils.isEmpty(strGt)) {
                return str;
            }
            com.byazt.eu.tt.c("TestHelperUtils", "AnyDoorId=" + strGt);
            return Uri.parse(str).buildUpon().appendQueryParameter(tt(), strGt).appendQueryParameter(DeviceInfo.TAG_ANDROID_ID, "5001121").toString();
        } catch (Throwable unused) {
            return str;
        }
    }
}
