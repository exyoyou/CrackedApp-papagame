package com.byazt.xgx;

import android.app.Activity;
import android.content.Context;
import android.os.Build;
import android.os.Process;
import com.byazt.nr.m;

/* JADX INFO: loaded from: classes9.dex */
@com.byazt.zqa.c(c = {0, 1, 1109, 13})
public class tt {
    public static int c(Context context, String str) {
        if (str == null) {
            throw new IllegalArgumentException("permission is null");
        }
        try {
            return context.checkPermission(str, Process.myPid(), Process.myUid());
        } catch (Throwable th) {
            m.c(th);
            return Build.VERSION.SDK_INT >= 23 ? -1 : 0;
        }
    }

    public static void requestPermissions(Activity activity, String[] strArr, int i10) {
        if (Build.VERSION.SDK_INT >= 23) {
            activity.requestPermissions(strArr, i10);
        }
    }
}
