package com.tencent.stat;

import android.content.Context;
import android.os.Handler;
import android.os.HandlerThread;
import com.tencent.stat.common.StatConstants;
import com.tencent.stat.common.StatLogger;
import java.util.Map;
import java.util.Properties;
import java.util.concurrent.ConcurrentHashMap;
import org.json.JSONException;
import org.json.JSONObject;

/* JADX INFO: loaded from: classes2.dex */
public class StatService {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private static Handler f83806a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private static volatile Map<com.tencent.stat.a.c, Long> f83807b = new ConcurrentHashMap();

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    private static volatile long f83808c = 0;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    private static volatile long f83809d = 0;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    private static volatile int f83810e = 0;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    private static volatile String f83811f = "";

    /* JADX INFO: renamed from: g, reason: collision with root package name */
    private static volatile String f83812g = "";

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    private static Map<String, Long> f83813h = new ConcurrentHashMap();

    /* JADX INFO: renamed from: i, reason: collision with root package name */
    private static StatLogger f83814i = com.tencent.stat.common.k.b();

    /* JADX INFO: renamed from: j, reason: collision with root package name */
    private static Thread.UncaughtExceptionHandler f83815j = null;

    /* JADX INFO: renamed from: k, reason: collision with root package name */
    private static volatile boolean f83816k = true;

    static int a(Context context, boolean z10) {
        long jCurrentTimeMillis = System.currentTimeMillis();
        boolean z11 = z10 && jCurrentTimeMillis - f83808c >= ((long) StatConfig.getSessionTimoutMillis());
        f83808c = jCurrentTimeMillis;
        if (f83809d == 0) {
            f83809d = com.tencent.stat.common.k.c();
        }
        if (jCurrentTimeMillis >= f83809d) {
            f83809d = com.tencent.stat.common.k.c();
            if (n.a(context).b(context).getUserType() != 1) {
                n.a(context).b(context).b(1);
            }
            StatConfig.b(0);
            StatMid.a(context);
            z11 = true;
        }
        if (f83816k ? true : z11) {
            if (StatConfig.e() < StatConfig.getMaxDaySessionNumbers()) {
                com.tencent.stat.common.k.F(context);
                d(context);
            } else {
                f83814i.e("Exceed StatConfig.getMaxDaySessionNumbers().");
            }
        }
        if (f83816k) {
            com.tencent.stat.common.f.b(context);
            testSpeed(context);
            e(context);
            f83816k = false;
        }
        return f83810e;
    }

    static Handler c(Context context) {
        if (f83806a == null) {
            a(context);
        }
        return f83806a;
    }

    public static void commitEvents(Context context, int i10) {
        StatLogger statLogger;
        String str;
        if (StatConfig.isEnableStatService()) {
            if (context == null) {
                statLogger = f83814i;
                str = "The Context of StatService.commitEvents() can not be null!";
            } else {
                if (i10 >= -1 && i10 != 0) {
                    try {
                        n.a(context).a(i10);
                        return;
                    } catch (Throwable th) {
                        f83814i.e(th);
                        a(context, th);
                        return;
                    }
                }
                statLogger = f83814i;
                str = "The maxNumber of StatService.commitEvents() should be -1 or bigger than 0.";
            }
            statLogger.error(str);
        }
    }

    static void d(Context context) {
        if (c(context) != null) {
            f83814i.d("start new session.");
            f83810e = com.tencent.stat.common.k.a();
            StatConfig.a(0);
            StatConfig.d();
            c(context).post(new k(new com.tencent.stat.a.k(context, f83810e, a())));
        }
    }

    static void e(Context context) {
        if (StatConfig.isEnableStatService()) {
            if (context == null) {
                f83814i.error("The Context of StatService.reportNativeCrash() can not be null!");
                return;
            }
            try {
                if (c(context) != null) {
                    c(context).post(new i(context));
                }
            } catch (Throwable th) {
                f83814i.e(th);
                a(context, th);
            }
        }
    }

    public static void onPause(Context context) {
        if (StatConfig.isEnableStatService()) {
            if (context == null) {
                f83814i.error("The Context of StatService.onPause() can not be null!");
            } else {
                trackEndPage(context, com.tencent.stat.common.k.k(context));
            }
        }
    }

    public static void onResume(Context context) {
        if (StatConfig.isEnableStatService()) {
            if (context == null) {
                f83814i.error("The Context of StatService.onResume() can not be null!");
            } else {
                trackBeginPage(context, com.tencent.stat.common.k.k(context));
            }
        }
    }

    public static void reportAppMonitorStat(Context context, StatAppMonitor statAppMonitor) {
        StatLogger statLogger;
        String str;
        if (StatConfig.isEnableStatService()) {
            if (context == null) {
                statLogger = f83814i;
                str = "The Context of StatService.reportAppMonitorStat() can not be null!";
            } else if (statAppMonitor == null) {
                statLogger = f83814i;
                str = "The StatAppMonitor of StatService.reportAppMonitorStat() can not be null!";
            } else {
                if (statAppMonitor.getInterfaceName() != null) {
                    try {
                        com.tencent.stat.a.h hVar = new com.tencent.stat.a.h(context, a(context, false), statAppMonitor);
                        if (c(context) != null) {
                            c(context).post(new k(hVar));
                            return;
                        }
                        return;
                    } catch (Throwable th) {
                        f83814i.e(th);
                        a(context, th);
                        return;
                    }
                }
                statLogger = f83814i;
                str = "The interfaceName of StatAppMonitor on StatService.reportAppMonitorStat() can not be null!";
            }
            statLogger.error(str);
        }
    }

    public static void reportError(Context context, String str) {
        StatLogger statLogger;
        String str2;
        if (StatConfig.isEnableStatService()) {
            if (context == null) {
                statLogger = f83814i;
                str2 = "The Context of StatService.reportError() can not be null!";
            } else {
                if (!a(str)) {
                    try {
                        com.tencent.stat.a.d dVar = new com.tencent.stat.a.d(context, a(context, false), str, 0, StatConfig.getMaxReportEventLength());
                        if (c(context) != null) {
                            c(context).post(new k(dVar));
                            return;
                        }
                        return;
                    } catch (Throwable th) {
                        f83814i.e(th);
                        a(context, th);
                        return;
                    }
                }
                statLogger = f83814i;
                str2 = "Error message in StatService.reportError() is empty.";
            }
            statLogger.error(str2);
        }
    }

    public static void reportException(Context context, Throwable th) {
        StatLogger statLogger;
        String str;
        if (StatConfig.isEnableStatService()) {
            if (context == null) {
                statLogger = f83814i;
                str = "The Context of StatService.reportException() can not be null!";
            } else {
                if (th != null) {
                    com.tencent.stat.a.d dVar = new com.tencent.stat.a.d(context, a(context, false), 1, th);
                    if (c(context) != null) {
                        c(context).post(new k(dVar));
                        return;
                    }
                    return;
                }
                statLogger = f83814i;
                str = "The Throwable error message of StatService.reportException() can not be null!";
            }
            statLogger.error(str);
        }
    }

    public static void reportGameUser(Context context, StatGameUser statGameUser) {
        StatLogger statLogger;
        String str;
        if (StatConfig.isEnableStatService()) {
            if (context == null) {
                statLogger = f83814i;
                str = "The Context of StatService.reportGameUser() can not be null!";
            } else if (statGameUser == null) {
                statLogger = f83814i;
                str = "The gameUser of StatService.reportGameUser() can not be null!";
            } else {
                if (statGameUser.getAccount() != null && statGameUser.getAccount().length() != 0) {
                    try {
                        com.tencent.stat.a.g gVar = new com.tencent.stat.a.g(context, a(context, false), statGameUser);
                        if (c(context) != null) {
                            c(context).post(new k(gVar));
                            return;
                        }
                        return;
                    } catch (Throwable th) {
                        f83814i.e(th);
                        a(context, th);
                        return;
                    }
                }
                statLogger = f83814i;
                str = "The account of gameUser on StatService.reportGameUser() can not be null or empty!";
            }
            statLogger.error(str);
        }
    }

    public static void reportQQ(Context context, String str) {
        if (str == null) {
            str = "";
        }
        if (StatConfig.f83770d.equals(str)) {
            return;
        }
        StatConfig.f83770d = new String(str);
        a(context, (Map<String, ?>) null);
    }

    public static void setEnvAttributes(Context context, Map<String, String> map) {
        if (map == null || map.size() > 512) {
            f83814i.error("The map in setEnvAttributes can't be null or its size can't exceed 512.");
            return;
        }
        try {
            com.tencent.stat.common.a.a(context, map);
        } catch (JSONException e10) {
            f83814i.e((Exception) e10);
        }
    }

    public static void startNewSession(Context context) {
        if (StatConfig.isEnableStatService()) {
            if (context == null) {
                f83814i.error("The Context of StatService.startNewSession() can not be null!");
                return;
            }
            try {
                stopSession();
                a(context, true);
            } catch (Throwable th) {
                f83814i.e(th);
                a(context, th);
            }
        }
    }

    public static boolean startStatService(Context context, String str, String str2) throws MtaSDkException {
        if (!StatConfig.isEnableStatService()) {
            f83814i.error("MTA StatService is disable.");
            return false;
        }
        f83814i.d("MTA SDK version, current: " + StatConstants.VERSION + " ,required: " + str2);
        if (context == null || str2 == null) {
            f83814i.error("Context or mtaSdkVersion in StatService.startStatService() is null, please check it!");
            StatConfig.setEnableStatService(false);
            throw new MtaSDkException("Context or mtaSdkVersion in StatService.startStatService() is null, please check it!");
        }
        if (com.tencent.stat.common.k.b(StatConstants.VERSION) >= com.tencent.stat.common.k.b(str2)) {
            try {
                String installChannel = StatConfig.getInstallChannel(context);
                if (installChannel == null || installChannel.length() == 0) {
                    StatConfig.setInstallChannel("-");
                }
                if (str != null) {
                    StatConfig.setAppKey(context, str);
                }
                c(context);
                a(context, false);
                return true;
            } catch (Throwable th) {
                f83814i.e(th);
                return false;
            }
        }
        String str3 = ("MTA SDK version conflicted, current: " + StatConstants.VERSION + ",required: " + str2) + ". please delete the current SDK and download the latest one. official website: http://mta.qq.com/ or http://mta.oa.com/";
        f83814i.error(str3);
        StatConfig.setEnableStatService(false);
        throw new MtaSDkException(str3);
    }

    public static void stopSession() {
        f83808c = 0L;
    }

    public static void testSpeed(Context context) {
        if (StatConfig.isEnableStatService()) {
            if (context == null) {
                f83814i.error("The Context of StatService.testSpeed() can not be null!");
                return;
            }
            try {
                if (c(context) != null) {
                    c(context).post(new j(context, null));
                }
            } catch (Throwable th) {
                f83814i.e(th);
                a(context, th);
            }
        }
    }

    public static void trackBeginPage(Context context, String str) {
        if (StatConfig.isEnableStatService()) {
            if (context == null || str == null || str.length() == 0) {
                f83814i.error("The Context or pageName of StatService.trackBeginPage() can not be null or empty!");
                return;
            }
            try {
                synchronized (f83813h) {
                    if (f83813h.size() >= StatConfig.getMaxParallelTimmingEvents()) {
                        f83814i.error("The number of page events exceeds the maximum value " + Integer.toString(StatConfig.getMaxParallelTimmingEvents()));
                        return;
                    }
                    f83811f = str;
                    if (!f83813h.containsKey(f83811f)) {
                        f83813h.put(f83811f, Long.valueOf(System.currentTimeMillis()));
                        a(context, true);
                        return;
                    }
                    f83814i.e("Duplicate PageID : " + f83811f + ", onResume() repeated?");
                }
            } catch (Throwable th) {
                f83814i.e(th);
                a(context, th);
            }
        }
    }

    public static void trackCustomBeginEvent(Context context, String str, String... strArr) {
        StatLogger statLogger;
        String str2;
        if (StatConfig.isEnableStatService()) {
            if (context == null) {
                statLogger = f83814i;
                str2 = "The Context of StatService.trackCustomBeginEvent() can not be null!";
            } else {
                if (!a(str)) {
                    try {
                        com.tencent.stat.a.c cVar = new com.tencent.stat.a.c(str, strArr, null);
                        if (f83807b.containsKey(cVar)) {
                            f83814i.error("Duplicate CustomEvent key: " + cVar.toString() + ", trackCustomBeginEvent() repeated?");
                            return;
                        }
                        if (f83807b.size() <= StatConfig.getMaxParallelTimmingEvents()) {
                            f83807b.put(cVar, Long.valueOf(System.currentTimeMillis()));
                            return;
                        }
                        f83814i.error("The number of timedEvent exceeds the maximum value " + Integer.toString(StatConfig.getMaxParallelTimmingEvents()));
                        return;
                    } catch (Throwable th) {
                        f83814i.e(th);
                        a(context, th);
                        return;
                    }
                }
                statLogger = f83814i;
                str2 = "The event_id of StatService.trackCustomBeginEvent() can not be null or empty.";
            }
            statLogger.error(str2);
        }
    }

    public static void trackCustomBeginKVEvent(Context context, String str, Properties properties) {
        StatLogger statLogger;
        String str2;
        if (StatConfig.isEnableStatService()) {
            if (context == null) {
                statLogger = f83814i;
                str2 = "The Context of StatService.trackCustomBeginEvent() can not be null!";
            } else {
                if (!a(str)) {
                    try {
                        com.tencent.stat.a.c cVar = new com.tencent.stat.a.c(str, null, properties);
                        if (f83807b.containsKey(cVar)) {
                            f83814i.error("Duplicate CustomEvent key: " + cVar.toString() + ", trackCustomBeginKVEvent() repeated?");
                            return;
                        }
                        if (f83807b.size() <= StatConfig.getMaxParallelTimmingEvents()) {
                            f83807b.put(cVar, Long.valueOf(System.currentTimeMillis()));
                            return;
                        }
                        f83814i.error("The number of timedEvent exceeds the maximum value " + Integer.toString(StatConfig.getMaxParallelTimmingEvents()));
                        return;
                    } catch (Throwable th) {
                        f83814i.e(th);
                        a(context, th);
                        return;
                    }
                }
                statLogger = f83814i;
                str2 = "The event_id of StatService.trackCustomBeginEvent() can not be null or empty.";
            }
            statLogger.error(str2);
        }
    }

    public static void trackCustomEndEvent(Context context, String str, String... strArr) {
        StatLogger statLogger;
        String str2;
        if (StatConfig.isEnableStatService()) {
            if (context == null) {
                statLogger = f83814i;
                str2 = "The Context of StatService.trackCustomEndEvent() can not be null!";
            } else {
                if (!a(str)) {
                    try {
                        com.tencent.stat.a.c cVar = new com.tencent.stat.a.c(str, strArr, null);
                        Long lRemove = f83807b.remove(cVar);
                        if (lRemove == null) {
                            f83814i.error("No start time found for custom event: " + cVar.toString() + ", lost trackCustomBeginEvent()?");
                            return;
                        }
                        com.tencent.stat.a.b bVar = new com.tencent.stat.a.b(context, a(context, false), str);
                        bVar.a(strArr);
                        Long lValueOf = Long.valueOf((System.currentTimeMillis() - lRemove.longValue()) / 1000);
                        bVar.a(Long.valueOf(lValueOf.longValue() == 0 ? 1L : lValueOf.longValue()).longValue());
                        if (c(context) != null) {
                            c(context).post(new k(bVar));
                            return;
                        }
                        return;
                    } catch (Throwable th) {
                        f83814i.e(th);
                        a(context, th);
                        return;
                    }
                }
                statLogger = f83814i;
                str2 = "The event_id of StatService.trackCustomEndEvent() can not be null or empty.";
            }
            statLogger.error(str2);
        }
    }

    public static void trackCustomEndKVEvent(Context context, String str, Properties properties) {
        StatLogger statLogger;
        String str2;
        if (StatConfig.isEnableStatService()) {
            if (context == null) {
                statLogger = f83814i;
                str2 = "The Context of StatService.trackCustomEndEvent() can not be null!";
            } else {
                if (!a(str)) {
                    try {
                        com.tencent.stat.a.c cVar = new com.tencent.stat.a.c(str, null, properties);
                        Long lRemove = f83807b.remove(cVar);
                        if (lRemove == null) {
                            f83814i.error("No start time found for custom event: " + cVar.toString() + ", lost trackCustomBeginKVEvent()?");
                            return;
                        }
                        com.tencent.stat.a.b bVar = new com.tencent.stat.a.b(context, a(context, false), str);
                        bVar.a(properties);
                        Long lValueOf = Long.valueOf((System.currentTimeMillis() - lRemove.longValue()) / 1000);
                        bVar.a(Long.valueOf(lValueOf.longValue() == 0 ? 1L : lValueOf.longValue()).longValue());
                        if (c(context) != null) {
                            c(context).post(new k(bVar));
                            return;
                        }
                        return;
                    } catch (Throwable th) {
                        f83814i.e(th);
                        a(context, th);
                        return;
                    }
                }
                statLogger = f83814i;
                str2 = "The event_id of StatService.trackCustomEndEvent() can not be null or empty.";
            }
            statLogger.error(str2);
        }
    }

    public static void trackCustomEvent(Context context, String str, String... strArr) {
        StatLogger statLogger;
        String str2;
        if (StatConfig.isEnableStatService()) {
            if (context == null) {
                statLogger = f83814i;
                str2 = "The Context of StatService.trackCustomEvent() can not be null!";
            } else {
                if (!a(str)) {
                    try {
                        com.tencent.stat.a.b bVar = new com.tencent.stat.a.b(context, a(context, false), str);
                        bVar.a(strArr);
                        if (c(context) != null) {
                            c(context).post(new k(bVar));
                            return;
                        }
                        return;
                    } catch (Throwable th) {
                        f83814i.e(th);
                        a(context, th);
                        return;
                    }
                }
                statLogger = f83814i;
                str2 = "The event_id of StatService.trackCustomEvent() can not be null or empty.";
            }
            statLogger.error(str2);
        }
    }

    public static void trackCustomKVEvent(Context context, String str, Properties properties) {
        StatLogger statLogger;
        String str2;
        if (StatConfig.isEnableStatService()) {
            if (context == null) {
                statLogger = f83814i;
                str2 = "The Context of StatService.trackCustomEvent() can not be null!";
            } else {
                if (!a(str)) {
                    try {
                        com.tencent.stat.a.b bVar = new com.tencent.stat.a.b(context, a(context, false), str);
                        bVar.a(properties);
                        if (c(context) != null) {
                            c(context).post(new k(bVar));
                            return;
                        }
                        return;
                    } catch (Throwable th) {
                        f83814i.e(th);
                        a(context, th);
                        return;
                    }
                }
                statLogger = f83814i;
                str2 = "The event_id of StatService.trackCustomEvent() can not be null or empty.";
            }
            statLogger.error(str2);
        }
    }

    public static void trackEndPage(Context context, String str) {
        Long lRemove;
        if (StatConfig.isEnableStatService()) {
            if (context == null || str == null || str.length() == 0) {
                f83814i.error("The Context or pageName of StatService.trackEndPage() can not be null or empty!");
                return;
            }
            try {
                synchronized (f83813h) {
                    lRemove = f83813h.remove(str);
                }
                if (lRemove == null) {
                    f83814i.e("Starttime for PageID:" + str + " not found, lost onResume()?");
                    return;
                }
                Long lValueOf = Long.valueOf((System.currentTimeMillis() - lRemove.longValue()) / 1000);
                if (lValueOf.longValue() <= 0) {
                    lValueOf = 1L;
                }
                Long l10 = lValueOf;
                String str2 = f83812g;
                if (str2 != null && str2.equals(str)) {
                    str2 = "-";
                }
                String str3 = str2;
                if (c(context) != null) {
                    com.tencent.stat.a.j jVar = new com.tencent.stat.a.j(context, str3, str, a(context, false), l10);
                    if (!str.equals(f83811f)) {
                        f83814i.warn("Invalid invocation since previous onResume on diff page.");
                    }
                    c(context).post(new k(jVar));
                }
                f83812g = str;
            } catch (Throwable th) {
                f83814i.e(th);
                a(context, th);
            }
        }
    }

    static JSONObject a() {
        JSONObject jSONObject = new JSONObject();
        try {
            JSONObject jSONObject2 = new JSONObject();
            int i10 = StatConfig.f83768b.f83868d;
            if (i10 != 0) {
                jSONObject2.put("v", i10);
            }
            jSONObject.put(Integer.toString(StatConfig.f83768b.f83865a), jSONObject2);
            JSONObject jSONObject3 = new JSONObject();
            int i11 = StatConfig.f83767a.f83868d;
            if (i11 != 0) {
                jSONObject3.put("v", i11);
            }
            jSONObject.put(Integer.toString(StatConfig.f83767a.f83865a), jSONObject3);
        } catch (JSONException e10) {
            f83814i.e((Exception) e10);
        }
        return jSONObject;
    }

    static boolean b(Context context) {
        if (com.tencent.stat.common.k.b(StatConstants.VERSION) > com.tencent.stat.common.p.a(context, StatConfig.f83769c, 0L)) {
            return true;
        }
        StatConfig.setEnableStatService(false);
        return false;
    }

    public static void testSpeed(Context context, Map<String, Integer> map) {
        StatLogger statLogger;
        String str;
        if (StatConfig.isEnableStatService()) {
            if (context == null) {
                statLogger = f83814i;
                str = "The Context of StatService.testSpeed() can not be null!";
            } else {
                if (map != null && map.size() != 0) {
                    try {
                        if (c(context) != null) {
                            c(context).post(new j(context, map));
                            return;
                        }
                        return;
                    } catch (Throwable th) {
                        f83814i.e(th);
                        a(context, th);
                        return;
                    }
                }
                statLogger = f83814i;
                str = "The domainMap of StatService.testSpeed() can not be null or empty!";
            }
            statLogger.error(str);
        }
    }

    static synchronized void a(Context context) {
        if (context == null) {
            return;
        }
        if (f83806a == null) {
            if (!b(context)) {
                return;
            }
            if (!com.tencent.stat.common.f.a(context)) {
                f83814i.e("ooh, Compatibility problem was found in this device!");
                f83814i.e("If you are on debug mode, please delete apk and try again.");
                StatConfig.setEnableStatService(false);
                return;
            }
            HandlerThread handlerThread = new HandlerThread("StatService");
            handlerThread.start();
            f83806a = new Handler(handlerThread.getLooper());
            n.a(context);
            d.a(context);
            d.b();
            StatConfig.getDeviceInfo(context);
            f83815j = Thread.getDefaultUncaughtExceptionHandler();
            if (StatConfig.isAutoExceptionCaught()) {
                Thread.setDefaultUncaughtExceptionHandler(new g(context.getApplicationContext()));
            } else {
                f83814i.warn("MTA SDK AutoExceptionCaught is disable");
            }
            if (StatConfig.getStatSendStrategy() == StatReportStrategy.APP_LAUNCH && com.tencent.stat.common.k.h(context)) {
                n.a(context).a(-1);
            }
            f83814i.d("Init MTA StatService success.");
        }
    }

    static void a(Context context, Throwable th) {
        try {
            if (StatConfig.isEnableStatService()) {
                if (context == null) {
                    f83814i.error("The Context of StatService.reportSdkSelfException() can not be null!");
                    return;
                }
                com.tencent.stat.a.d dVar = new com.tencent.stat.a.d(context, a(context, false), 99, th);
                if (c(context) != null) {
                    c(context).post(new k(dVar));
                }
            }
        } catch (Throwable th2) {
            f83814i.e("reportSdkSelfException error: " + th2);
        }
    }

    static void a(Context context, Map<String, ?> map) {
        if (StatConfig.isEnableStatService()) {
            if (context == null) {
                f83814i.error("The Context of StatService.sendAdditionEvent() can not be null!");
                return;
            }
            try {
                com.tencent.stat.a.a aVar = new com.tencent.stat.a.a(context, a(context, false), map);
                if (c(context) != null) {
                    c(context).post(new k(aVar));
                }
            } catch (Throwable th) {
                f83814i.e(th);
                a(context, th);
            }
        }
    }

    static boolean a(String str) {
        return str == null || str.length() == 0;
    }
}
