package com.tencent.bugly.proguard;

import android.content.Context;
import android.text.TextUtils;
import com.bykv.vk.component.ttvideo.player.MediaPlayer;
import com.tencent.bugly.BuglyStrategy;
import com.tencent.bugly.crashreport.common.strategy.StrategyBean;
import java.util.ArrayList;
import java.util.List;
import java.util.Map;

/* JADX INFO: loaded from: classes2.dex */
public final class p {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public static boolean f83615a = true;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public static List<o> f83616b = new ArrayList();

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public static boolean f83617c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    private static w f83618d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    private static boolean f83619e;

    private static boolean a(aa aaVar) {
        List<String> list = aaVar.f83202w;
        return list != null && list.contains("bugly");
    }

    public static synchronized void a(Context context) {
        a(context, null);
    }

    public static synchronized void a(Context context, BuglyStrategy buglyStrategy) {
        if (f83619e) {
            al.d("[init] initial Multi-times, ignore this.", new Object[0]);
            return;
        }
        if (context == null) {
            String str = al.f83278b;
            return;
        }
        aa aaVarA = aa.a(context);
        if (a(aaVarA)) {
            f83615a = false;
            return;
        }
        String strF = aaVarA.f();
        if (strF == null) {
            String str2 = al.f83278b;
        } else {
            a(context, strF, aaVarA.E, buglyStrategy);
        }
    }

    /* JADX WARN: Code duplicated, block: B:74:0x01f2 A[Catch: all -> 0x01fe, TRY_LEAVE, TryCatch #1 {all -> 0x01fe, blocks: (B:72:0x01e2, B:74:0x01f2), top: B:93:0x01e2, outer: #2 }] */
    /* JADX WARN: Code duplicated, block: B:83:0x0210 A[Catch: all -> 0x022e, TryCatch #2 {, blocks: (B:4:0x0003, B:6:0x0008, B:10:0x0013, B:14:0x0019, B:18:0x001e, B:20:0x0022, B:21:0x005e, B:23:0x009f, B:26:0x00a3, B:28:0x00b5, B:30:0x00c3, B:32:0x00c9, B:33:0x00df, B:34:0x00ee, B:36:0x00f6, B:38:0x0100, B:40:0x0106, B:41:0x011c, B:47:0x0144, B:53:0x0158, B:55:0x0162, B:57:0x0168, B:58:0x017e, B:59:0x018d, B:61:0x0193, B:63:0x0199, B:64:0x01af, B:65:0x01bb, B:67:0x01c1, B:68:0x01cd, B:42:0x012a, B:44:0x0133, B:46:0x013d, B:50:0x0151, B:52:0x0155, B:70:0x01da, B:80:0x0208, B:81:0x020b, B:83:0x0210, B:85:0x0217, B:77:0x01ff, B:79:0x0205, B:72:0x01e2, B:74:0x01f2), top: B:95:0x0003, inners: #0, #1 }] */
    /* JADX WARN: Code duplicated, block: B:84:0x0215  */
    /* JADX WARN: Code duplicated, block: B:93:0x01e2 A[EXC_TOP_SPLITTER, SYNTHETIC] */
    /* JADX WARN: Code duplicated, block: B:98:0x0208 A[SYNTHETIC] */
    public static synchronized void a(Context context, String str, boolean z10, BuglyStrategy buglyStrategy) {
        int i10;
        long appReportDelay;
        byte[] bArr;
        if (f83619e) {
            al.d("[init] initial Multi-times, ignore this.", new Object[0]);
            return;
        }
        if (context == null) {
            String str2 = al.f83278b;
            return;
        }
        if (str == null) {
            String str3 = al.f83278b;
            return;
        }
        f83619e = true;
        if (z10) {
            f83617c = true;
            al.f83279c = true;
            al.d("Bugly debug模式开启，请在发布时把isDebug关闭。 -- Running in debug model for 'isDebug' is enabled. Please disable it when you release.", new Object[0]);
            al.e("--------------------------------------------------------------------------------------------", new Object[0]);
            al.d("Bugly debug模式将有以下行为特性 -- The following list shows the behaviour of debug model: ", new Object[0]);
            al.d("[1] 输出详细的Bugly SDK的Log -- More detailed log of Bugly SDK will be output to logcat;", new Object[0]);
            al.d("[2] 每一条Crash都会被立即上报 -- Every crash caught by Bugly will be uploaded immediately.", new Object[0]);
            al.d("[3] 自定义日志将会在Logcat中输出 -- Custom log will be output to logcat.", new Object[0]);
            al.e("--------------------------------------------------------------------------------------------", new Object[0]);
            al.b("[init] Open debug mode of Bugly.", new Object[0]);
        }
        al.a(" crash report start initializing...", new Object[0]);
        al.b("[init] Bugly start initializing...", new Object[0]);
        al.a("[init] Bugly complete version: v%s", "4.1.9.7");
        Context contextA = ap.a(context);
        aa aaVarA = aa.a(contextA);
        aaVarA.r();
        ao.a(contextA);
        f83618d = w.a(contextA, f83616b);
        ai.a(contextA);
        ac.a(contextA, f83616b);
        u uVarA = u.a(contextA);
        if (a(aaVarA)) {
            f83615a = false;
            return;
        }
        aaVarA.f83198s = str;
        aaVarA.b("APP_ID", str);
        al.a("[param] Set APP ID:%s", str);
        if (buglyStrategy != null) {
            String appVersion = buglyStrategy.getAppVersion();
            if (!TextUtils.isEmpty(appVersion)) {
                if (appVersion.length() > 100) {
                    String strSubstring = appVersion.substring(0, 100);
                    al.d("appVersion %s length is over limit %d substring to %s", appVersion, 100, strSubstring);
                    appVersion = strSubstring;
                }
                aaVarA.f83195p = appVersion;
                al.a("[param] Set App version: %s", buglyStrategy.getAppVersion());
            }
            try {
                if (buglyStrategy.isReplaceOldChannel()) {
                    String appChannel = buglyStrategy.getAppChannel();
                    if (!TextUtils.isEmpty(appChannel)) {
                        if (appChannel.length() > 100) {
                            String strSubstring2 = appChannel.substring(0, 100);
                            al.d("appChannel %s length is over limit %d substring to %s", appChannel, 100, strSubstring2);
                            appChannel = strSubstring2;
                        }
                        f83618d.a(MediaPlayer.MEDIA_PLAYER_OPTION_ENABLE_DEBUG_UI_NOTIFY, "app_channel", appChannel.getBytes(), false);
                        aaVarA.f83199t = appChannel;
                    }
                } else {
                    Map<String, byte[]> mapA = f83618d.a(MediaPlayer.MEDIA_PLAYER_OPTION_ENABLE_DEBUG_UI_NOTIFY, (v) null);
                    if (mapA != null && (bArr = mapA.get("app_channel")) != null) {
                        aaVarA.f83199t = new String(bArr);
                    }
                }
                al.a("[param] Set App channel: %s", aaVarA.f83199t);
            } catch (Exception e10) {
                if (f83617c) {
                    e10.printStackTrace();
                }
            }
            String appPackageName = buglyStrategy.getAppPackageName();
            if (!TextUtils.isEmpty(appPackageName)) {
                if (appPackageName.length() > 100) {
                    String strSubstring3 = appPackageName.substring(0, 100);
                    al.d("appPackageName %s length is over limit %d substring to %s", appPackageName, 100, strSubstring3);
                    appPackageName = strSubstring3;
                }
                aaVarA.f83184d = appPackageName;
                al.a("[param] Set App package: %s", buglyStrategy.getAppPackageName());
            }
            String deviceID = buglyStrategy.getDeviceID();
            if (deviceID != null) {
                if (deviceID.length() > 100) {
                    String strSubstring4 = deviceID.substring(0, 100);
                    al.d("deviceId %s length is over limit %d substring to %s", deviceID, 100, strSubstring4);
                    deviceID = strSubstring4;
                }
                aaVarA.a(deviceID);
                al.a("[param] Set device ID: %s", deviceID);
            }
            String deviceModel = buglyStrategy.getDeviceModel();
            if (deviceModel != null) {
                aaVarA.b(deviceModel);
                al.a("[param] Set device model: %s", deviceModel);
            }
            aaVarA.f83187g = buglyStrategy.isUploadProcess();
            ao.f83284b = buglyStrategy.isBuglyLogUpload();
            for (i10 = 0; i10 < f83616b.size(); i10++) {
                try {
                    if (uVarA.b(f83616b.get(i10).f83614id)) {
                        f83616b.get(i10).init(contextA, z10, buglyStrategy);
                    }
                } catch (Throwable th) {
                    if (!al.a(th)) {
                        th.printStackTrace();
                    }
                }
            }
            s.a(contextA, buglyStrategy);
            if (buglyStrategy != null) {
                appReportDelay = buglyStrategy.getAppReportDelay();
            } else {
                appReportDelay = 0;
            }
            final ac acVarA = ac.a();
            acVarA.f83213c.a(new Thread() { // from class: com.tencent.bugly.proguard.ac.1
                @Override // java.lang.Thread, java.lang.Runnable
                public final void run() {
                    try {
                        Map<String, byte[]> mapA2 = w.a().a(ac.f83209a, (v) null);
                        if (mapA2 != null) {
                            byte[] bArr2 = mapA2.get("device");
                            byte[] bArr3 = mapA2.get("gateway");
                            if (bArr2 != null) {
                                aa.a(ac.this.f83217h).d(new String(bArr2));
                            }
                            if (bArr3 != null) {
                                aa.a(ac.this.f83217h).c(new String(bArr3));
                            }
                        }
                        ac.this.f83216g = ac.d();
                        if (ac.this.f83216g != null) {
                            if (ap.b(ac.f83212i) || !ap.d(ac.f83212i)) {
                                ac.this.f83216g.f83112q = StrategyBean.f83096a;
                                ac.this.f83216g.f83113r = StrategyBean.f83097b;
                            } else {
                                ac.this.f83216g.f83112q = ac.f83212i;
                                ac.this.f83216g.f83113r = ac.f83212i;
                            }
                        }
                    } catch (Throwable th2) {
                        if (!al.a(th2)) {
                            th2.printStackTrace();
                        }
                    }
                    ac acVar = ac.this;
                    acVar.a(acVar.f83216g, false);
                }
            }, appReportDelay);
            al.b("[init] Bugly initialization finished.", new Object[0]);
            return;
        }
        while (i10 < f83616b.size()) {
            if (uVarA.b(f83616b.get(i10).f83614id)) {
                f83616b.get(i10).init(contextA, z10, buglyStrategy);
            }
        }
        s.a(contextA, buglyStrategy);
        if (buglyStrategy != null) {
            appReportDelay = buglyStrategy.getAppReportDelay();
        } else {
            appReportDelay = 0;
        }
        final ac acVarA2 = ac.a();
        acVarA2.f83213c.a(new Thread() { // from class: com.tencent.bugly.proguard.ac.1
            @Override // java.lang.Thread, java.lang.Runnable
            public final void run() {
                try {
                    Map<String, byte[]> mapA2 = w.a().a(ac.f83209a, (v) null);
                    if (mapA2 != null) {
                        byte[] bArr2 = mapA2.get("device");
                        byte[] bArr3 = mapA2.get("gateway");
                        if (bArr2 != null) {
                            aa.a(ac.this.f83217h).d(new String(bArr2));
                        }
                        if (bArr3 != null) {
                            aa.a(ac.this.f83217h).c(new String(bArr3));
                        }
                    }
                    ac.this.f83216g = ac.d();
                    if (ac.this.f83216g != null) {
                        if (ap.b(ac.f83212i) || !ap.d(ac.f83212i)) {
                            ac.this.f83216g.f83112q = StrategyBean.f83096a;
                            ac.this.f83216g.f83113r = StrategyBean.f83097b;
                        } else {
                            ac.this.f83216g.f83112q = ac.f83212i;
                            ac.this.f83216g.f83113r = ac.f83212i;
                        }
                    }
                } catch (Throwable th2) {
                    if (!al.a(th2)) {
                        th2.printStackTrace();
                    }
                }
                ac acVar = ac.this;
                acVar.a(acVar.f83216g, false);
            }
        }, appReportDelay);
        al.b("[init] Bugly initialization finished.", new Object[0]);
        return;
        throw th;
    }

    public static synchronized void a(o oVar) {
        if (!f83616b.contains(oVar)) {
            f83616b.add(oVar);
        }
    }
}
