package com.haima.hmcp.utils;

import android.content.Context;
import androidx.core.content.ContextCompat;

/* JADX INFO: loaded from: classes5.dex */
public class GameActionUtil {
    private static String TAG = "GameActionUtil";

    public static boolean isRecordPermissionAllowed(Context context) {
        boolean z10 = ContextCompat.checkSelfPermission(context, "android.permission.RECORD_AUDIO") == 0;
        LogUtils.i(TAG, "hasPermission:" + z10);
        return z10;
    }
}
