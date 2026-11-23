package org.webrtc.haima;

import android.app.ActivityManager;
import android.content.Context;
import com.byazt.hv.TTDownloadField;

/* JADX INFO: loaded from: classes10.dex */
public class HmUtilsHelper {
    public static long mTotalMemory;

    public static long getTotalMemory(Context context) {
        try {
            ActivityManager activityManager = (ActivityManager) context.getSystemService(TTDownloadField.TT_ACTIVITY);
            ActivityManager.MemoryInfo memoryInfo = new ActivityManager.MemoryInfo();
            activityManager.getMemoryInfo(memoryInfo);
            long j10 = memoryInfo.totalMem;
            mTotalMemory = j10;
            return j10;
        } catch (Exception unused) {
            return 0L;
        }
    }

    public static long getTotalMemory() {
        return mTotalMemory;
    }
}
