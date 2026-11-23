package com.byazt.kg;

import android.app.ActivityManager;

/* JADX INFO: loaded from: classes6.dex */
@com.byazt.zqa.c(c = {0, 1, 428, 13})
public class tt {
    public static String c(ActivityManager.ProcessErrorStateInfo processErrorStateInfo) {
        StringBuilder sb2 = new StringBuilder();
        sb2.append("|------------- processErrorStateInfo--------------|\n");
        sb2.append("condition: " + processErrorStateInfo.condition + "\n");
        sb2.append("processName: " + processErrorStateInfo.processName + "\n");
        sb2.append("pid: " + processErrorStateInfo.pid + "\n");
        sb2.append("uid: " + processErrorStateInfo.uid + "\n");
        sb2.append("tag: " + processErrorStateInfo.tag + "\n");
        sb2.append("shortMsg : " + processErrorStateInfo.shortMsg + "\n");
        sb2.append("longMsg : " + processErrorStateInfo.longMsg + "\n");
        sb2.append("-----------------------end----------------------------");
        return sb2.toString();
    }
}
