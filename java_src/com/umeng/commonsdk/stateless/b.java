package com.umeng.commonsdk.stateless;

import android.annotation.TargetApi;
import android.content.Context;
import android.content.IntentFilter;
import android.os.FileObserver;
import android.os.Handler;
import android.os.HandlerThread;
import android.os.Message;
import android.text.TextUtils;
import android.util.Base64;
import com.umeng.commonsdk.debug.UMRTLog;
import com.umeng.commonsdk.internal.crash.UMCrashManager;
import com.umeng.commonsdk.statistics.UMServerURL;
import com.umeng.commonsdk.statistics.common.ULog;
import java.io.File;
import java.util.LinkedList;

/* JADX INFO: loaded from: classes9.dex */
public class b {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public static final int f85301a = 273;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private static Context f85302b = null;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    private static HandlerThread f85303c = null;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    private static Handler f85304d = null;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    private static final int f85306f = 274;

    /* JADX INFO: renamed from: g, reason: collision with root package name */
    private static final int f85307g = 275;

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    private static final int f85308h = 512;

    /* JADX INFO: renamed from: i, reason: collision with root package name */
    private static a f85309i;

    /* JADX INFO: renamed from: j, reason: collision with root package name */
    private static IntentFilter f85310j;

    /* JADX INFO: renamed from: k, reason: collision with root package name */
    private static volatile boolean f85311k;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    private static Object f85305e = new Object();

    /* JADX INFO: renamed from: l, reason: collision with root package name */
    private static LinkedList<String> f85312l = new LinkedList<>();

    static class a extends FileObserver {
        public a(String str) {
            super(str);
        }

        @Override // android.os.FileObserver
        public void onEvent(int i10, String str) {
            if ((i10 & 8) != 8) {
                return;
            }
            UMRTLog.i(UMRTLog.RTLOG_TAG, "--->>> envelope file created >>> " + str);
            b.a(274);
        }
    }

    public b(Context context) {
        synchronized (f85305e) {
            if (context != null) {
                try {
                    Context applicationContext = context.getApplicationContext();
                    f85302b = applicationContext;
                    if (applicationContext != null && f85303c == null) {
                        HandlerThread handlerThread = new HandlerThread("SL-NetWorkSender");
                        f85303c = handlerThread;
                        handlerThread.start();
                        if (f85309i == null) {
                            String str = f85302b.getFilesDir() + File.separator + com.umeng.commonsdk.stateless.a.f85295f;
                            File file = new File(str);
                            if (!file.exists()) {
                                UMRTLog.e(UMRTLog.RTLOG_TAG, "--->>> 2号数据仓目录不存在，创建之。");
                                file.mkdir();
                            }
                            a aVar = new a(str);
                            f85309i = aVar;
                            aVar.startWatching();
                            UMRTLog.e(UMRTLog.RTLOG_TAG, "--->>> 2号数据仓File Monitor启动.");
                        }
                        if (f85304d == null) {
                            f85304d = new Handler(f85303c.getLooper()) { // from class: com.umeng.commonsdk.stateless.b.1
                                @Override // android.os.Handler
                                public void handleMessage(Message message) {
                                    int i10 = message.what;
                                    if (i10 != 512) {
                                        switch (i10) {
                                            case 273:
                                                b.l();
                                                return;
                                            case 274:
                                                b.n();
                                                return;
                                            case 275:
                                                b.p();
                                                break;
                                            default:
                                                return;
                                        }
                                    }
                                    b.q();
                                }
                            };
                        }
                    }
                } catch (Throwable th) {
                    UMCrashManager.reportCrash(context, th);
                }
            }
        }
    }

    public static void a(boolean z10) {
        f85311k = z10;
        if (!z10) {
            UMRTLog.e(UMRTLog.RTLOG_TAG, "--->>>网络断连： 2号数据仓");
        } else {
            UMRTLog.e(UMRTLog.RTLOG_TAG, "--->>>网络可用： 触发2号数据仓信封消费动作。");
            b(274);
        }
    }

    public static void b(int i10) {
        Handler handler;
        try {
            if (!f85311k || (handler = f85304d) == null || handler.hasMessages(i10)) {
                return;
            }
            Message messageObtainMessage = f85304d.obtainMessage();
            messageObtainMessage.what = i10;
            f85304d.sendMessage(messageObtainMessage);
        } catch (Throwable th) {
            UMCrashManager.reportCrash(f85302b, th);
        }
    }

    public static void c() {
        b(275);
    }

    public static void d() {
        b(512);
    }

    private static void i() {
        File[] fileArrC = d.c(f85302b);
        if (fileArrC != null) {
            if (f85312l.size() > 0) {
                f85312l.clear();
            }
            for (File file : fileArrC) {
                f85312l.add(file.getAbsolutePath());
            }
        }
    }

    private static String j() {
        String str = null;
        try {
            String strPeek = f85312l.peek();
            if (strPeek == null) {
                return strPeek;
            }
            try {
                f85312l.removeFirst();
                return strPeek;
            } catch (Throwable unused) {
                str = strPeek;
                return str;
            }
        } catch (Throwable unused2) {
        }
    }

    @TargetApi(9)
    private static void k() {
        String strPollFirst;
        byte[] bArrA;
        if (f85312l.size() <= 0) {
            UMRTLog.e(UMRTLog.RTLOG_TAG, "--->>> todoList无内容，无需处理。");
            return;
        }
        do {
            strPollFirst = f85312l.pollFirst();
            if (!TextUtils.isEmpty(strPollFirst)) {
                File file = new File(strPollFirst);
                if (file.exists()) {
                    c cVar = new c(f85302b);
                    try {
                        bArrA = d.a(strPollFirst);
                    } catch (Exception unused) {
                        bArrA = null;
                    }
                    String name = file.getName();
                    String strSubstring = !TextUtils.isEmpty(name) ? name.substring(0, 1) : "u";
                    String strC = d.c(d.d(name));
                    if (cVar.a(bArrA, strC, com.umeng.commonsdk.vchannel.a.f85597c.equalsIgnoreCase(strC) ? com.umeng.commonsdk.vchannel.a.f85595a : "", strSubstring) && !file.delete()) {
                        file.delete();
                    }
                } else {
                    UMRTLog.e(UMRTLog.RTLOG_TAG, "--->>> 信封文件不存在，处理下一个文件。");
                }
            }
        } while (strPollFirst != null);
        f85312l.clear();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static void l() {
        File fileA;
        byte[] bArrA;
        if (!f85311k || f85302b == null) {
            return;
        }
        do {
            try {
                fileA = d.a(f85302b);
                if (fileA != null && fileA.getParentFile() != null && !TextUtils.isEmpty(fileA.getParentFile().getName())) {
                    c cVar = new c(f85302b);
                    String str = new String(Base64.decode(fileA.getParentFile().getName(), 0));
                    if (com.umeng.commonsdk.internal.a.f85196a.equalsIgnoreCase(str) || com.umeng.commonsdk.internal.a.f85197b.equalsIgnoreCase(str) || com.umeng.commonsdk.internal.a.H.equalsIgnoreCase(str)) {
                        new File(fileA.getAbsolutePath()).delete();
                    } else {
                        ULog.i("walle", "[stateless] handleProcessNext, pathUrl is " + str);
                        try {
                            bArrA = d.a(fileA.getAbsolutePath());
                        } catch (Exception unused) {
                            bArrA = null;
                        }
                        String str2 = com.umeng.commonsdk.vchannel.a.f85597c.equalsIgnoreCase(str) ? com.umeng.commonsdk.vchannel.a.f85595a : "";
                        String str3 = UMServerURL.PATH_SHARE.equalsIgnoreCase(str) ? "s" : "u";
                        if (UMServerURL.PATH_PUSH_LAUNCH.equalsIgnoreCase(str) || UMServerURL.PATH_PUSH_REGIST.equalsIgnoreCase(str) || UMServerURL.PATH_PUSH_LOG.equalsIgnoreCase(str)) {
                            str3 = "p";
                        }
                        if (!cVar.a(bArrA, str, str2, str3)) {
                            ULog.i("walle", "[stateless] Send envelope file failed, abandon and wait next trigger!");
                            return;
                        }
                        ULog.i("walle", "[stateless] Send envelope file success, delete it.");
                        File file = new File(fileA.getAbsolutePath());
                        if (!file.delete()) {
                            ULog.i("walle", "[stateless] Failed to delete already processed file. We try again after delete failed.");
                            file.delete();
                        }
                    }
                }
            } catch (Throwable th) {
                UMCrashManager.reportCrash(f85302b, th);
            }
        } while (fileA != null);
        m();
    }

    private static void m() {
        try {
            File file = new File(f85302b.getFilesDir() + File.separator + com.umeng.commonsdk.stateless.a.f85294e);
            if (file.exists() && file.isDirectory()) {
                UMRTLog.e(UMRTLog.RTLOG_TAG, "--->>> 2号数据仓：删除stateless目录。");
                d.a(file);
            }
        } catch (Throwable unused) {
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static void n() {
        if (!f85311k || f85302b == null) {
            return;
        }
        i();
        k();
        c();
    }

    private static void o() {
        try {
            File file = new File(f85302b.getFilesDir() + File.separator + com.umeng.commonsdk.stateless.a.f85294e);
            if (file.exists() && file.isDirectory()) {
                UMRTLog.e(UMRTLog.RTLOG_TAG, "--->>>2号数据仓：检测到stateless目录。");
                b(273);
            }
        } catch (Throwable unused) {
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static void p() {
        o();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static void q() {
    }

    public static boolean a() {
        synchronized (f85305e) {
            return f85309i != null;
        }
    }

    public static void b() {
        UMRTLog.e(UMRTLog.RTLOG_TAG, "--->>>信封构建成功： 触发2号数据仓信封消费动作。");
        b(274);
    }

    public static void a(int i10) {
        Handler handler;
        if (!f85311k || (handler = f85304d) == null) {
            return;
        }
        Message messageObtainMessage = handler.obtainMessage();
        messageObtainMessage.what = i10;
        f85304d.sendMessage(messageObtainMessage);
    }
}
