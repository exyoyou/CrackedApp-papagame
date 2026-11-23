package com.umeng.powersdk;

import android.app.Activity;
import android.content.Context;
import android.content.SharedPreferences;
import android.os.Handler;
import android.os.HandlerThread;
import android.os.Message;
import android.os.SystemClock;
import com.efs.sdk.base.EfsReporter;
import com.efs.sdk.base.protocol.record.EfsJSONLog;
import java.lang.ref.WeakReference;

/* JADX INFO: loaded from: classes9.dex */
public class PowerManager {
    public static final String TAG = "PowerManager";

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private static Context f85661a = null;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private static boolean f85662b = false;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    private static EfsReporter f85663c = null;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    private static PowerConfigManager f85664d = null;
    public static boolean isDebug = true;

    public static Context getApplicationContext() {
        return f85661a;
    }

    public static PowerConfigManager getPowerConfigManager() {
        return f85664d;
    }

    public static EfsReporter getReporter() {
        return f85663c;
    }

    public static void init(Context context, EfsReporter efsReporter) {
        if (context == null || efsReporter == null) {
            try {
                if (isDebug) {
                    return;
                }
            } catch (Throwable th) {
                th.printStackTrace();
                return;
            }
        }
        if (isInit()) {
            return;
        }
        f85661a = context.getApplicationContext();
        f85663c = efsReporter;
        f85664d = new PowerConfigManager(context, efsReporter);
        f85662b = true;
        final c cVar = c.a.f85689a;
        try {
            if (getPowerConfigManager() == null || !getPowerConfigManager().enableTracer()) {
                return;
            }
            SharedPreferences sharedPreferences = getApplicationContext().getSharedPreferences("efs_power", 0);
            if (sharedPreferences != null) {
                cVar.f85674b = sharedPreferences.getInt("apm_powerperf_collect_interval", 5);
                cVar.f85675c = sharedPreferences.getInt("apm_powerperf_collect_max_period_sec", 100);
            }
            final HandlerThread handlerThread = new HandlerThread("power-info");
            handlerThread.start();
            final Handler handler = new Handler(handlerThread.getLooper()) { // from class: com.umeng.powersdk.c.1
                @Override // android.os.Handler
                public final void handleMessage(Message message) {
                    super.handleMessage(message);
                    if (message.what == c.this.f85673a) {
                        try {
                            handlerThread.quit();
                        } catch (Throwable unused) {
                        }
                    }
                }
            };
            handler.post(new Runnable() { // from class: com.umeng.powersdk.c.2
                @Override // java.lang.Runnable
                public final void run() {
                    try {
                        final c cVar2 = c.this;
                        final Handler handler2 = handler;
                        final int i10 = cVar2.f85674b;
                        final int i11 = cVar2.f85675c;
                        final long jElapsedRealtime = SystemClock.elapsedRealtime();
                        handler2.post(new Runnable() { // from class: com.umeng.powersdk.c.3
                            @Override // java.lang.Runnable
                            public final void run() {
                                if (c.this.f85677e) {
                                    if (SystemClock.elapsedRealtime() - jElapsedRealtime > i11 * 1000) {
                                        handler2.sendEmptyMessage(c.this.f85673a);
                                        return;
                                    }
                                    try {
                                        EfsJSONLog efsJSONLog = new EfsJSONLog("powerperf");
                                        efsJSONLog.put("power", c.this.a());
                                        EfsReporter reporter = PowerManager.getReporter();
                                        if (reporter != null) {
                                            reporter.send(efsJSONLog);
                                        }
                                    } catch (Throwable unused) {
                                    }
                                }
                                handler2.postDelayed(this, i10 * 1000);
                            }
                        });
                    } catch (Throwable unused) {
                        handler.sendEmptyMessage(c.this.f85673a);
                    }
                }
            });
        } catch (Throwable unused) {
        }
    }

    public static boolean isInit() {
        return f85662b;
    }

    public static void onActivityResumed(Activity activity) {
        c cVar = c.a.f85689a;
        try {
            if (getPowerConfigManager() != null && getPowerConfigManager().enableTracer()) {
                cVar.f85676d = new WeakReference<>(activity);
            }
        } catch (Throwable unused) {
        }
    }

    public static void onActivityStarted(Activity activity) {
        c cVar = c.a.f85689a;
        try {
            if (getPowerConfigManager() == null || !getPowerConfigManager().enableTracer() || activity == null) {
                return;
            }
            if (cVar.f85679g) {
                cVar.f85679g = false;
                return;
            }
            int i10 = cVar.f85678f + 1;
            cVar.f85678f = i10;
            if (i10 == 1) {
                cVar.f85677e = true;
            }
        } catch (Throwable unused) {
        }
    }

    public static void onActivityStopped(Activity activity) {
        c cVar = c.a.f85689a;
        try {
            if (getPowerConfigManager() == null || !getPowerConfigManager().enableTracer() || activity == null) {
                return;
            }
            if (activity.isChangingConfigurations()) {
                cVar.f85679g = true;
                return;
            }
            int i10 = cVar.f85678f - 1;
            cVar.f85678f = i10;
            if (i10 == 0) {
                cVar.f85677e = false;
            }
        } catch (Throwable unused) {
        }
    }
}
