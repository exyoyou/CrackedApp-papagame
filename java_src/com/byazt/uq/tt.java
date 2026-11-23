package com.byazt.uq;

import android.content.Context;
import android.text.TextUtils;
import com.bytedance.pangle.Zeus;
import com.bytedance.pangle.log.ZeusLogger;
import java.io.File;

/* JADX INFO: loaded from: classes9.dex */
@com.byazt.zqa.c(c = {0, 1, 1759, 13})
public class tt {

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public static String f20948c;

    public static String c(Context context) {
        if (f20948c == null) {
            String[] strArrC = ve.c(new File(context.getApplicationInfo().sourceDir));
            String str = strArrC[0];
            f20948c = str;
            if (TextUtils.isEmpty(str)) {
                ZeusLogger.w(ZeusLogger.TAG_INIT, "getHostIdentity failed. Reason: " + strArrC[2]);
            }
        }
        return f20948c;
    }

    public static boolean c() {
        try {
            return (Zeus.getAppApplication().getApplicationInfo().flags & 2) != 0;
        } catch (Exception unused) {
            return false;
        }
    }
}
