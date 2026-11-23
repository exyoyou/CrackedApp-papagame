package com.papa.sim.statistic;

import android.app.ActivityManager;
import android.content.Context;
import com.byazt.hv.TTDownloadField;
import java.util.List;

/* JADX INFO: loaded from: classes2.dex */
public class p {
    public static boolean a(Context context, String str) {
        List<ActivityManager.RunningServiceInfo> runningServices = ((ActivityManager) context.getSystemService(TTDownloadField.TT_ACTIVITY)).getRunningServices(Integer.MAX_VALUE);
        if (runningServices.isEmpty()) {
            return false;
        }
        for (int i10 = 0; i10 < runningServices.size(); i10++) {
            if (runningServices.get(i10).service.getClassName().equals(str)) {
                return true;
            }
        }
        return false;
    }
}
