package cn.sharesdk.framework.utils;

import android.app.PendingIntent;
import android.content.Context;
import android.content.Intent;
import android.os.Build;

/* JADX INFO: loaded from: classes7.dex */
public class c {
    public static PendingIntent a(Context context, int i10, Intent intent, int i11) {
        return Build.VERSION.SDK_INT >= 23 ? PendingIntent.getBroadcast(context, i10, intent, 67108864) : PendingIntent.getBroadcast(context, i10, intent, i11);
    }
}
