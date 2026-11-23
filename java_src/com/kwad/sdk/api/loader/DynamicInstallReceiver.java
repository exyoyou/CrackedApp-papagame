package com.kwad.sdk.api.loader;

import android.content.BroadcastReceiver;
import android.content.Context;
import android.content.Intent;
import android.content.IntentFilter;
import android.os.AsyncTask;
import android.os.Build;
import androidx.annotation.Keep;
import com.papa91.common.BaseAppConfig;
import java.io.File;
import java.util.concurrent.atomic.AtomicBoolean;

/* JADX INFO: loaded from: classes2.dex */
@Keep
public class DynamicInstallReceiver extends BroadcastReceiver {
    private static final AtomicBoolean HAS_REGISTER = new AtomicBoolean(false);
    private static final String TAG = "KSAd_DYI";

    @Keep
    public static void registerToApp(Context context) {
        if (context != null) {
            AtomicBoolean atomicBoolean = HAS_REGISTER;
            if (atomicBoolean.get() || context.getApplicationContext() == null) {
                return;
            }
            String str = context.getPackageName() + ".loader.install.DynamicApk";
            new StringBuilder("registerToApp action:").append(str);
            IntentFilter intentFilter = new IntentFilter(str);
            Context applicationContext = context.getApplicationContext();
            if (Build.VERSION.SDK_INT >= 33) {
                applicationContext.registerReceiver(new DynamicInstallReceiver(), intentFilter, 2);
            } else {
                applicationContext.registerReceiver(new DynamicInstallReceiver(), intentFilter);
            }
            atomicBoolean.set(true);
        }
    }

    @Override // android.content.BroadcastReceiver
    public void onReceive(final Context context, Intent intent) {
        if (intent == null) {
            return;
        }
        String stringExtra = intent.getStringExtra(BaseAppConfig.KEY_APK_PATH);
        final String stringExtra2 = intent.getStringExtra("sdkVersion");
        final File file = new File(stringExtra);
        if (!file.exists()) {
            new StringBuilder("downloadFile not exists: ").append(file);
            return;
        }
        StringBuilder sb2 = new StringBuilder("downloadFile is exists, apkPath :");
        sb2.append(stringExtra);
        sb2.append(" sdkVersion:");
        sb2.append(stringExtra2);
        AsyncTask.execute(new Runnable() { // from class: com.kwad.sdk.api.loader.DynamicInstallReceiver.1
            @Override // java.lang.Runnable
            public final void run() {
                try {
                    if (d.a(context, AnonymousClass1.class.getClassLoader(), file.getPath(), stringExtra2)) {
                        i.t(context, stringExtra2);
                        j.h(file);
                    }
                } catch (Exception e10) {
                    new StringBuilder("onReceive ApkInstaller installApk error:").append(e10);
                    e10.printStackTrace();
                }
            }
        });
    }
}
