package com.xinzhu.overmind.server.am;

import android.content.ComponentName;
import android.content.Intent;
import android.content.pm.ActivityInfo;
import android.os.Binder;
import android.os.IBinder;
import com.xinzhu.overmind.server.ProcessRecord;

/* JADX INFO: loaded from: classes8.dex */
public class b extends Binder {
    public ComponentName component;
    public boolean finished;
    public ActivityInfo info;
    public Intent intent;
    public String launchedFromPackage;
    public int launchedFromUid;
    public ProcessRecord processRecord;
    public IBinder resultTo;
    public h task;
    public IBinder token;
    public int userId;

    public static b create(Intent intent, ActivityInfo activityInfo, IBinder iBinder, int i10, String str, int i11) {
        b bVar = new b();
        bVar.intent = intent;
        bVar.info = activityInfo;
        bVar.component = new ComponentName(activityInfo.packageName, activityInfo.name);
        bVar.resultTo = iBinder;
        bVar.userId = i10;
        bVar.launchedFromPackage = str;
        bVar.launchedFromUid = i11;
        return bVar;
    }
}
