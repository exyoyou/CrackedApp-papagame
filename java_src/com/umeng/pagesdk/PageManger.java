package com.umeng.pagesdk;

import android.app.Activity;
import android.content.Context;
import android.os.Build;
import android.text.TextUtils;
import com.efs.sdk.base.EfsReporter;

/* JADX INFO: loaded from: classes9.dex */
public class PageManger {
    public static final String TAG = "PageManger";

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private static Context f85619a = null;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private static boolean f85620b = false;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    private static EfsReporter f85621c = null;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    private static PageConfigManger f85622d = null;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    private static boolean f85623e = true;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    private static float f85624f = 0.0f;
    public static boolean isDebug = true;

    public static Context getApplicationContext() {
        return f85619a;
    }

    public static PageConfigManger getPageConfigManger() {
        return f85622d;
    }

    public static float getRefreshRate() {
        return f85624f;
    }

    public static EfsReporter getReporter() {
        return f85621c;
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
        f85619a = context.getApplicationContext();
        f85621c = efsReporter;
        f85622d = new PageConfigManger(context, efsReporter);
        f85620b = true;
    }

    public static boolean isControlMainThread() {
        return f85623e;
    }

    public static boolean isInit() {
        return f85620b;
    }

    public static void onTracePageBegin(Activity activity, String str) {
        try {
            onTracePageBegin(activity, str, false);
        } catch (Throwable th) {
            th.printStackTrace();
        }
    }

    public static void onTracePageEnd(Activity activity, String str) {
        try {
            onTracePageEnd(activity, str, false);
        } catch (Throwable th) {
            th.printStackTrace();
        }
    }

    public static void setControlMainThread(boolean z10) {
        f85623e = z10;
    }

    public static void onTracePageBegin(Activity activity, String str, boolean z10) {
        if (activity != null) {
            try {
                if (TextUtils.isEmpty(str)) {
                    return;
                }
                if (z10 || !(str.equals("onCreate") || str.equals("onStart") || str.equals("onResume") || str.equals("onPause"))) {
                    if (str.length() > 10) {
                        if (isDebug) {
                            StringBuilder sb2 = new StringBuilder("tracePageBegin. method name is ");
                            sb2.append(str);
                            sb2.append("method name over length !");
                            return;
                        }
                        return;
                    }
                    if (f85623e && !e.a(activity.getApplicationContext())) {
                        boolean z11 = isDebug;
                    }
                    String name = activity.getClass().getName();
                    if (f85624f <= 0.0f) {
                        f85624f = Build.VERSION.SDK_INT >= 30 ? activity.getDisplay().getRefreshRate() : activity.getWindowManager().getDefaultDisplay().getRefreshRate();
                    }
                    d.a(name, str, z10);
                }
            } catch (Throwable th) {
                th.printStackTrace();
            }
        }
    }

    public static void onTracePageEnd(Activity activity, String str, boolean z10) {
        if (activity != null) {
            try {
                if (TextUtils.isEmpty(str)) {
                    return;
                }
                if (z10 || !(str.equals("onCreate") || str.equals("onStart") || str.equals("onResume") || str.equals("onPause"))) {
                    if (str.length() <= 10) {
                        if (f85623e && !e.a(activity.getApplicationContext())) {
                            boolean z11 = isDebug;
                        }
                        d.b(activity.getClass().getName(), str, z10);
                        return;
                    }
                    if (isDebug) {
                        StringBuilder sb2 = new StringBuilder("tracePageEnd. method name is ");
                        sb2.append(str);
                        sb2.append("method name over length !");
                    }
                }
            } catch (Throwable th) {
                th.printStackTrace();
            }
        }
    }
}
