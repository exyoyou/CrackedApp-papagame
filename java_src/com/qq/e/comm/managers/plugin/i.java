package com.qq.e.comm.managers.plugin;

import android.app.ActivityManager;
import android.app.Application;
import android.content.Context;
import android.os.Build;
import android.os.Process;
import android.text.TextUtils;
import com.byazt.hv.TTDownloadField;
import java.util.Iterator;
import java.util.List;

/* JADX INFO: loaded from: classes2.dex */
final class i {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private static volatile String f78353a;

    public static synchronized String a(String str) {
        if (TextUtils.isEmpty(str)) {
            return str;
        }
        String str2 = f78353a;
        if (TextUtils.isEmpty(str2)) {
            return str;
        }
        boolean zEndsWith = str2.endsWith("_");
        StringBuilder sb2 = new StringBuilder();
        sb2.append(str);
        sb2.append(zEndsWith ? "" : "_");
        sb2.append(d.a(str2));
        return sb2.toString();
    }

    public static synchronized String a(Context context) {
        if (!TextUtils.isEmpty(f78353a)) {
            return f78353a;
        }
        if (Build.VERSION.SDK_INT >= 28) {
            f78353a = Application.getProcessName();
            return f78353a;
        }
        int iMyPid = Process.myPid();
        List<ActivityManager.RunningAppProcessInfo> runningAppProcesses = ((ActivityManager) context.getSystemService(TTDownloadField.TT_ACTIVITY)).getRunningAppProcesses();
        if (runningAppProcesses != null) {
            Iterator<ActivityManager.RunningAppProcessInfo> it2 = runningAppProcesses.iterator();
            while (it2.hasNext()) {
                try {
                    ActivityManager.RunningAppProcessInfo next = it2.next();
                    if (next.pid == iMyPid) {
                        f78353a = next.processName;
                        return f78353a;
                    }
                    continue;
                } catch (Exception unused) {
                }
            }
        }
        return null;
    }
}
