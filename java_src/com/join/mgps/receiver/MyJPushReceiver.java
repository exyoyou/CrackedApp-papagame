package com.join.mgps.receiver;

import android.app.ActivityManager;
import android.content.BroadcastReceiver;
import android.content.ComponentName;
import android.content.Context;
import android.content.Intent;
import com.byazt.hv.TTDownloadField;
import com.join.mgps.Util.h1;

/* JADX INFO: loaded from: classes3.dex */
public class MyJPushReceiver extends BroadcastReceiver {

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private static final String f72260b = "JIGUANG-Example";

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private String f72261a;

    private boolean a(Context context) {
        ComponentName componentName = ((ActivityManager) context.getSystemService(TTDownloadField.TT_ACTIVITY)).getRunningTasks(1).get(0).topActivity;
        h1.c(f72260b, "cn.getClassName():" + componentName.getClassName());
        return componentName.getClassName().contains("MessageMainActivity");
    }

    @Override // android.content.BroadcastReceiver
    public void onReceive(Context context, Intent intent) {
    }
}
