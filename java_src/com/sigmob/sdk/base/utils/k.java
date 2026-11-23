package com.sigmob.sdk.base.utils;

import com.sigmob.sdk.base.models.BaseAdUnit;
import com.sigmob.sdk.base.models.LoadAdRequest;
import com.sigmob.windad.natives.AdAppInfo;
import java.util.HashSet;
import java.util.Map;
import java.util.Set;

/* JADX INFO: loaded from: classes5.dex */
public class k {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public static final int f79739a = 2;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public static final int f79740b = 3;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public static final int f79741c = 4;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    public static final int f79742d = 5;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public static final int f79743e = 6;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    private static final String f79744f = "SigAds";

    /* JADX INFO: renamed from: g, reason: collision with root package name */
    private static final boolean f79745g = true;

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    private static boolean f79746h = true;

    /* JADX INFO: renamed from: i, reason: collision with root package name */
    private static final int f79747i = 1;

    /* JADX INFO: renamed from: j, reason: collision with root package name */
    private static final int f79748j = 1;

    /* JADX INFO: renamed from: k, reason: collision with root package name */
    private static final int f79749k = 4;

    /* JADX INFO: renamed from: l, reason: collision with root package name */
    private static final Set<String> f79750l = new HashSet();

    private static int a(StackTraceElement[] elements) {
        for (int i10 = 1; i10 < elements.length; i10++) {
            if (!elements[i10].getClassName().split("\\$")[0].equals(k.class.getName())) {
                return i10;
            }
        }
        return -1;
    }

    private static String b() {
        StackTraceElement[] stackTrace = Thread.currentThread().getStackTrace();
        int iA = a(stackTrace);
        int length = iA + 4;
        int length2 = iA + 1 + 4;
        if (length >= stackTrace.length) {
            length = stackTrace.length - 1;
        }
        if (length2 > stackTrace.length) {
            length2 = stackTrace.length;
        }
        StringBuilder sb2 = new StringBuilder();
        StringBuilder sb3 = new StringBuilder();
        for (int i10 = length2 - 1; i10 >= length; i10--) {
            String strA = a(stackTrace[i10]);
            sb2.append((CharSequence) sb3);
            sb2.append(strA);
            sb2.append('\n');
            sb3.append("  ");
        }
        return sb2.toString();
    }

    public static void c(String tag, String format, Throwable tr, Object... args) {
        if (!f79746h || f79750l.contains(tag)) {
            return;
        }
        b(tag);
        a(a(format, args));
    }

    public static void d(String tag, String format, Throwable th, Object... args) {
        if (!f79746h || f79750l.contains(tag)) {
            return;
        }
        b(tag);
        a(a(format, args));
    }

    public static void e(String tag, String format, Object... args) {
        if (!f79746h || f79750l.contains(tag)) {
            return;
        }
        b(tag);
        a(a(format, args));
    }

    public static void f(String tag, String format, Object... args) {
        if (!f79746h || f79750l.contains(tag)) {
            return;
        }
        b(tag);
        a(a(format, args));
    }

    private static String a() {
        return Thread.currentThread().getName();
    }

    private static String b(String tag) {
        return "SigAds#" + tag;
    }

    public static void c(String tag, String format, Object... args) {
        if (!f79746h || f79750l.contains(tag)) {
            return;
        }
        b(tag);
        a(a(format, args));
    }

    public static void d(String tag, String format, Object... args) {
        if (!f79746h) {
            f79750l.contains(tag);
            return;
        }
        String strA = a(format, args);
        if (strA.length() < 3000) {
            b(tag);
            return;
        }
        synchronized (k.class) {
            int length = strA.length();
            int i10 = 0;
            int i11 = 0;
            do {
                i10 += 3000;
                if (i10 >= length) {
                    i10 = length - 1;
                }
                b(tag);
                strA.substring(i11, i10);
                i11 = i10 + 1;
            } while (i10 != length - 1);
        }
    }

    private static String a(StackTraceElement element) {
        return "(" + element.getFileName() + ':' + element.getLineNumber() + ')';
    }

    public static void b(int level, String tag, String methodName, BaseAdUnit adUnit, Map<String, Object> params) {
        if (adUnit == null) {
            f(tag, methodName + ": adUnit is null.", new Object[0]);
            return;
        }
        AdAppInfo adAppInfo = adUnit.getAdAppInfo();
        a(level, tag, methodName + ": placementId = " + adUnit.getAdslot_id() + ", requestId = " + adUnit.getRequestId() + ", adType = " + com.sigmob.sdk.base.common.d.a(adUnit.getAd_type()) + ", appInfo = " + adAppInfo + ", params = " + params, new Object[0]);
    }

    private static String a(String log) {
        return log + " [" + a() + "] " + b();
    }

    public static void b(String tag, String format, Throwable tr, Object... args) {
        if (!f79746h || f79750l.contains(tag)) {
            return;
        }
        b(tag);
        a(a(format, args));
    }

    public static String a(String format, Object... args) {
        return (args == null || args.length == 0) ? format : String.format(format, args);
    }

    public static void b(String tag, String format, Object... args) {
        if (!f79746h || f79750l.contains(tag)) {
            return;
        }
        b(tag);
        a(a(format, args));
    }

    public static void a(int level, String tag, String methodName, BaseAdUnit adUnit, Map<String, Object> params) {
        if (adUnit == null) {
            f(tag, methodName + ": adUnit is null.", new Object[0]);
            return;
        }
        String vid = adUnit.getVid();
        int playMode = adUnit.getPlayMode();
        String requestId = adUnit.getRequestId();
        String adslot_id = adUnit.getAdslot_id();
        boolean disableAutoLoad = adUnit.getDisableAutoLoad();
        a(level, tag, methodName + ": placementId = " + adslot_id + ", sceneType = " + adUnit.getRequestSceneType() + ", requestId = " + requestId + ", playMode = " + playMode + ", autoLoad = " + disableAutoLoad + ", adType = " + com.sigmob.sdk.base.common.d.a(adUnit.getAd_type()) + ", vid = " + vid + ", params = " + params, new Object[0]);
    }

    public static void a(int level, String tag, String methodName, LoadAdRequest request, Map<String, Object> params) {
        if (request == null) {
            f(tag, methodName + ": request is null.", new Object[0]);
            return;
        }
        String requestId = request.getRequestId();
        a(level, tag, methodName + ": placementId = " + request.getPlacementId() + ", sceneType = " + request.getRequest_scene_type() + ", requestId = " + requestId + ", adType = " + com.sigmob.sdk.base.common.d.a(request.getAdType()) + ", params = " + params, new Object[0]);
    }

    public static void a(int level, String tag, String format, Object... args) {
        if (level == 2) {
            a(tag, format, args);
            return;
        }
        if (level == 3) {
            c(tag, format, args);
            return;
        }
        if (level == 4) {
            b(tag, format, args);
            return;
        }
        if (level == 5) {
            e(tag, format, args);
        } else if (level != 6) {
            f(tag, "level is unknown.", new Object[0]);
        } else {
            f(tag, format, args);
        }
    }

    public static void a(Class<?> clazz) {
        f79750l.add(clazz.getSimpleName());
    }

    public static void a(String tag, String format, Throwable tr, Object... args) {
        if (!f79746h || f79750l.contains(tag)) {
            return;
        }
        b(tag);
        a(a(format, args));
    }

    public static void a(String tag, String format, Object... args) {
        if (!f79746h || f79750l.contains(tag)) {
            return;
        }
        b(tag);
        a(a(format, args));
    }

    public static void a(String tag, Throwable tr) {
        if (!f79746h || f79750l.contains(tag)) {
            return;
        }
        b(tag);
    }

    public static void a(boolean enable) {
        f79746h = enable;
    }
}
