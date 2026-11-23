package com.join.mgps.installer;

import android.content.BroadcastReceiver;
import android.content.Context;
import android.content.Intent;
import android.os.Build;
import android.provider.Settings;
import com.bykv.vk.component.ttvideo.player.C;
import com.join.mgps.activity.MGMainActivity;

/* JADX INFO: loaded from: classes3.dex */
public final class ReplacedReceiver extends BroadcastReceiver {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private static final String f71723a = "App Updated";

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private static final int f71724b = 42;

    @Override // android.content.BroadcastReceiver
    public void onReceive(Context context, Intent intent) {
        if ("android.intent.action.MY_PACKAGE_REPLACED".equals(intent.getAction())) {
            String packageName = context.getPackageName();
            if (packageName.equals(context.getPackageManager().getInstallerPackageName(packageName))) {
                if (Build.VERSION.SDK_INT < 29 || Settings.canDrawOverlays(context)) {
                    Intent intent2 = new Intent(context, (Class<?>) MGMainActivity.class);
                    intent2.addFlags(C.ENCODING_PCM_MU_LAW);
                    context.startActivity(intent2);
                }
            }
        }
    }
}
