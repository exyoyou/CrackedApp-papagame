package com.efs.sdk.fluttersdk;

import android.content.Context;
import android.content.SharedPreferences;
import com.efs.sdk.base.EfsReporter;
import com.efs.sdk.base.core.util.Log;
import java.util.Map;

/* JADX INFO: loaded from: classes9.dex */
public class FlutterManager {
    public static final String TAG = "FlutterManager";

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private static EfsReporter f26413a = null;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private static FlutterConfigManager f26414b = null;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    private static Context f26415c = null;
    public static boolean isDebug = true;

    public static Map<String, Object> getCloudConfig() {
        FlutterConfigManager flutterConfigManager = f26414b;
        if (flutterConfigManager != null) {
            return flutterConfigManager.getCloudConfig();
        }
        return null;
    }

    public static FlutterConfigManager getFlutterConfigManager() {
        return f26414b;
    }

    public static long getLongValue(String str) {
        Context context = f26415c;
        if (context == null) {
            Log.e(TAG, "Flutter Manager not init!");
            return 0L;
        }
        try {
            return context.getSharedPreferences("efs_flutter_bridge", 0).getLong(str, 0L);
        } catch (Throwable unused) {
            return 0L;
        }
    }

    public static Map<String, Object> getNativeParams() {
        FlutterConfigManager flutterConfigManager = f26414b;
        if (flutterConfigManager != null) {
            return flutterConfigManager.getNativeParams();
        }
        return null;
    }

    public static EfsReporter getReporter() {
        return f26413a;
    }

    public static void init(Context context, EfsReporter efsReporter) {
        if (context == null || efsReporter == null) {
            Log.e(TAG, "init Flutter manager error! parameter is null!");
            return;
        }
        f26415c = context;
        f26413a = efsReporter;
        f26414b = new FlutterConfigManager(context, efsReporter);
    }

    public static boolean putLongValue(String str, long j10) {
        Context context = f26415c;
        if (context == null) {
            Log.e(TAG, "Flutter Manager not init!");
            return false;
        }
        try {
            SharedPreferences.Editor editorEdit = context.getSharedPreferences("efs_flutter_bridge", 0).edit();
            editorEdit.putLong(str, j10);
            editorEdit.apply();
            return true;
        } catch (Throwable unused) {
            return false;
        }
    }
}
