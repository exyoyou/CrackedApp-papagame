package com.tencent.bugly.proguard;

import android.app.ActivityManager;
import android.content.Context;
import android.os.FileObserver;
import android.os.Looper;
import android.text.TextUtils;
import com.byazt.hv.TTDownloadField;
import com.sdk.base.framework.utils.log.LogUtils;
import com.tencent.bugly.crashreport.crash.CrashDetailBean;
import com.tencent.bugly.crashreport.crash.anr.TraceFileHelper;
import com.tencent.bugly.crashreport.crash.jni.NativeCrashHandler;
import java.io.File;
import java.util.HashMap;
import java.util.List;
import java.util.Map;
import java.util.concurrent.atomic.AtomicBoolean;

/* JADX INFO: loaded from: classes2.dex */
public final class ay {

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    public static ay f83408f;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final ActivityManager f83410b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    final aa f83411c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    final ak f83412d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    String f83413e;

    /* JADX INFO: renamed from: g, reason: collision with root package name */
    private final Context f83414g;

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    private final ac f83415h;

    /* JADX INFO: renamed from: i, reason: collision with root package name */
    private final as f83416i;

    /* JADX INFO: renamed from: k, reason: collision with root package name */
    private FileObserver f83418k;

    /* JADX INFO: renamed from: m, reason: collision with root package name */
    private bg f83420m;

    /* JADX INFO: renamed from: n, reason: collision with root package name */
    private int f83421n;

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final AtomicBoolean f83409a = new AtomicBoolean(false);

    /* JADX INFO: renamed from: j, reason: collision with root package name */
    private final Object f83417j = new Object();

    /* JADX INFO: renamed from: l, reason: collision with root package name */
    private boolean f83419l = true;

    /* JADX INFO: renamed from: o, reason: collision with root package name */
    private long f83422o = 0;

    public ay(Context context, ac acVar, aa aaVar, ak akVar, as asVar) {
        Context contextA = ap.a(context);
        this.f83414g = contextA;
        this.f83410b = (ActivityManager) contextA.getSystemService(TTDownloadField.TT_ACTIVITY);
        if (ap.b(NativeCrashHandler.getDumpFilePath())) {
            this.f83413e = context.getDir("bugly", 0).getAbsolutePath();
        } else {
            this.f83413e = NativeCrashHandler.getDumpFilePath();
        }
        this.f83411c = aaVar;
        this.f83412d = akVar;
        this.f83415h = acVar;
        this.f83416i = asVar;
    }

    private synchronized void c() {
        if (e()) {
            al.d("start when started!", new Object[0]);
            return;
        }
        FileObserver fileObserver = new FileObserver("/data/anr/") { // from class: com.tencent.bugly.proguard.ay.1
            @Override // android.os.FileObserver
            public final void onEvent(int i10, String str) {
                if (str == null) {
                    return;
                }
                final String strConcat = "/data/anr/".concat(str);
                al.d("watching file %s", strConcat);
                if (strConcat.contains("trace")) {
                    ay.this.f83412d.a(new Runnable() { // from class: com.tencent.bugly.proguard.ay.1.1
                        @Override // java.lang.Runnable
                        public final void run() {
                            ay ayVar = ay.this;
                            String str2 = strConcat;
                            if (ayVar.a(true)) {
                                try {
                                    al.c("read trace first dump for create time!", new Object[0]);
                                    TraceFileHelper.a firstDumpInfo = TraceFileHelper.readFirstDumpInfo(str2, false);
                                    long jCurrentTimeMillis = firstDumpInfo != null ? firstDumpInfo.f83153c : -1L;
                                    if (jCurrentTimeMillis == -1) {
                                        al.d("trace dump fail could not get time!", new Object[0]);
                                        jCurrentTimeMillis = System.currentTimeMillis();
                                    }
                                    if (ayVar.a(jCurrentTimeMillis)) {
                                        return;
                                    }
                                    ayVar.a(jCurrentTimeMillis, str2);
                                } catch (Throwable th) {
                                    if (!al.a(th)) {
                                        th.printStackTrace();
                                    }
                                    al.e("handle anr error %s", th.getClass().toString());
                                }
                            }
                        }
                    });
                } else {
                    al.d("not anr file %s", strConcat);
                }
            }
        };
        this.f83418k = fileObserver;
        try {
            fileObserver.startWatching();
            al.a("start anr monitor!", new Object[0]);
            this.f83412d.a(new Runnable() { // from class: com.tencent.bugly.proguard.ay.2
                @Override // java.lang.Runnable
                public final void run() {
                    ay.a(ay.this);
                }
            });
        } catch (Throwable th) {
            this.f83418k = null;
            al.d("start anr monitor failed!", new Object[0]);
            if (al.a(th)) {
                return;
            }
            th.printStackTrace();
        }
    }

    private synchronized void d() {
        if (!e()) {
            al.d("close when closed!", new Object[0]);
            return;
        }
        try {
            this.f83418k.stopWatching();
            this.f83418k = null;
            al.d("close anr monitor!", new Object[0]);
        } catch (Throwable th) {
            al.d("stop anr monitor failed!", new Object[0]);
            if (al.a(th)) {
                return;
            }
            th.printStackTrace();
        }
    }

    private synchronized boolean e() {
        return this.f83418k != null;
    }

    private synchronized boolean f() {
        return this.f83419l;
    }

    private synchronized void g() {
        if (e()) {
            al.d("start when started!", new Object[0]);
            return;
        }
        if (TextUtils.isEmpty(this.f83413e)) {
            return;
        }
        synchronized (this.f83417j) {
            bg bgVar = this.f83420m;
            if (bgVar == null || !bgVar.isAlive()) {
                bg bgVar2 = new bg();
                this.f83420m = bgVar2;
                boolean z10 = this.f83411c.T;
                bgVar2.f83460b = z10;
                al.c("set record stack trace enable:".concat(String.valueOf(z10)), new Object[0]);
                bg bgVar3 = this.f83420m;
                StringBuilder sb2 = new StringBuilder("Bugly-ThreadMonitor");
                int i10 = this.f83421n;
                this.f83421n = i10 + 1;
                sb2.append(i10);
                bgVar3.setName(sb2.toString());
                this.f83420m.b();
            }
        }
        FileObserver fileObserver = new FileObserver(this.f83413e) { // from class: com.tencent.bugly.proguard.ay.3
            @Override // android.os.FileObserver
            public final void onEvent(int i11, String str) {
                if (str == null) {
                    return;
                }
                al.d("observe file, dir:%s fileName:%s", ay.this.f83413e, str);
                if (!(str.startsWith("manual_bugly_trace_") && str.endsWith(".txt"))) {
                    al.c("not manual trace file, ignore.", new Object[0]);
                    return;
                }
                if (!ay.this.f83409a.get()) {
                    al.c("proc is not in anr, just ignore", new Object[0]);
                    return;
                }
                if (ay.this.f83411c.a()) {
                    al.c("Found foreground anr, resend sigquit immediately.", new Object[0]);
                    NativeCrashHandler.getInstance().resendSigquit();
                    long jA = am.a(str, "manual_bugly_trace_", ".txt");
                    ay.this.a(jA, ay.this.f83413e + net.lingala.zip4j.util.e.F0 + str);
                    al.c("Finish handling one anr.", new Object[0]);
                    return;
                }
                al.c("Found background anr, resend sigquit later.", new Object[0]);
                long jA2 = am.a(str, "manual_bugly_trace_", ".txt");
                ay.this.a(jA2, ay.this.f83413e + net.lingala.zip4j.util.e.F0 + str);
                al.c("Finish handling one anr, now resend sigquit.", new Object[0]);
                NativeCrashHandler.getInstance().resendSigquit();
            }
        };
        this.f83418k = fileObserver;
        try {
            fileObserver.startWatching();
            al.a("startWatchingPrivateAnrDir! dumFilePath is %s", this.f83413e);
            this.f83412d.a(new Runnable() { // from class: com.tencent.bugly.proguard.ay.4
                @Override // java.lang.Runnable
                public final void run() {
                    ay.a(ay.this);
                }
            });
        } catch (Throwable th) {
            this.f83418k = null;
            al.d("startWatchingPrivateAnrDir failed!", new Object[0]);
            if (al.a(th)) {
                return;
            }
            th.printStackTrace();
        }
    }

    private synchronized void h() {
        if (!e()) {
            al.d("close when closed!", new Object[0]);
            return;
        }
        synchronized (this.f83417j) {
            bg bgVar = this.f83420m;
            if (bgVar != null) {
                bgVar.a();
                this.f83420m = null;
            }
        }
        al.a("stopWatchingPrivateAnrDir", new Object[0]);
        try {
            this.f83418k.stopWatching();
            this.f83418k = null;
            al.d("close anr monitor!", new Object[0]);
        } catch (Throwable th) {
            al.d("stop anr monitor failed!", new Object[0]);
            if (al.a(th)) {
                return;
            }
            th.printStackTrace();
        }
    }

    public final void b(boolean z10) {
        d(z10);
        boolean zF = f();
        ac acVarA = ac.a();
        if (acVarA != null) {
            zF = zF && acVarA.c().f83101f;
        }
        if (zF != e()) {
            al.a("anr changed to %b", Boolean.valueOf(zF));
            c(zF);
        }
    }

    public static synchronized ay a() {
        return f83408f;
    }

    private CrashDetailBean a(ax axVar) {
        CrashDetailBean crashDetailBean = new CrashDetailBean();
        try {
            crashDetailBean.C = ab.j();
            crashDetailBean.D = ab.f();
            crashDetailBean.E = ab.l();
            crashDetailBean.F = this.f83411c.n();
            crashDetailBean.G = this.f83411c.m();
            crashDetailBean.H = this.f83411c.o();
            crashDetailBean.I = ab.b(this.f83414g);
            crashDetailBean.J = ab.g();
            crashDetailBean.K = ab.h();
            crashDetailBean.f83121b = 3;
            crashDetailBean.f83124e = this.f83411c.j();
            aa aaVar = this.f83411c;
            crashDetailBean.f83125f = aaVar.f83195p;
            crashDetailBean.f83126g = aaVar.t();
            crashDetailBean.f83132m = this.f83411c.g();
            crashDetailBean.f83133n = "ANR_EXCEPTION";
            crashDetailBean.f83134o = axVar.f83406f;
            crashDetailBean.f83136q = axVar.f83407g;
            HashMap map = new HashMap();
            crashDetailBean.T = map;
            map.put("BUGLY_CR_01", axVar.f83405e);
            String str = crashDetailBean.f83136q;
            int iIndexOf = str != null ? str.indexOf("\n") : -1;
            crashDetailBean.f83135p = iIndexOf > 0 ? crashDetailBean.f83136q.substring(0, iIndexOf) : "GET_FAIL";
            crashDetailBean.f83137r = axVar.f83403c;
            String str2 = crashDetailBean.f83136q;
            if (str2 != null) {
                crashDetailBean.f83140u = ap.c(str2.getBytes());
            }
            crashDetailBean.f83145z = axVar.f83402b;
            crashDetailBean.A = axVar.f83401a;
            crashDetailBean.B = "main(1)";
            crashDetailBean.L = this.f83411c.v();
            crashDetailBean.f83127h = this.f83411c.s();
            crashDetailBean.f83128i = this.f83411c.D();
            crashDetailBean.f83141v = axVar.f83404d;
            aa aaVar2 = this.f83411c;
            crashDetailBean.P = aaVar2.f83201v;
            crashDetailBean.Q = aaVar2.f83182b;
            crashDetailBean.R = aaVar2.a();
            crashDetailBean.U = this.f83411c.C();
            aa aaVar3 = this.f83411c;
            crashDetailBean.V = aaVar3.f83204y;
            crashDetailBean.W = aaVar3.w();
            crashDetailBean.X = this.f83411c.B();
            crashDetailBean.f83144y = ao.a();
        } catch (Throwable th) {
            if (!al.a(th)) {
                th.printStackTrace();
            }
        }
        return crashDetailBean;
    }

    public final synchronized void b() {
        al.d("customer decides whether to open or close.", new Object[0]);
    }

    private synchronized void d(boolean z10) {
        if (this.f83419l != z10) {
            al.a("user change anr %b", Boolean.valueOf(z10));
            this.f83419l = z10;
        }
    }

    private synchronized void c(boolean z10) {
        try {
            if (z10) {
                g();
            } else {
                h();
            }
        } catch (Throwable th) {
            throw th;
        }
    }

    private static boolean a(String str, String str2, String str3) throws Throwable {
        Map<String, String[]> map;
        TraceFileHelper.a targetDumpInfo = TraceFileHelper.readTargetDumpInfo(str3, str, true);
        if (targetDumpInfo != null && (map = targetDumpInfo.f83154d) != null && !map.isEmpty()) {
            StringBuilder sb2 = new StringBuilder(1024);
            String[] strArr = targetDumpInfo.f83154d.get("main");
            if (strArr != null && strArr.length >= 3) {
                sb2.append("\"main\" tid=");
                sb2.append(strArr[2]);
                sb2.append(" :\n");
                sb2.append(strArr[0]);
                sb2.append("\n");
                sb2.append(strArr[1]);
                sb2.append("\n\n");
            }
            for (Map.Entry<String, String[]> entry : targetDumpInfo.f83154d.entrySet()) {
                if (!entry.getKey().equals("main") && entry.getValue() != null && entry.getValue().length >= 3) {
                    sb2.append(x.a.f97579g);
                    sb2.append(entry.getKey());
                    sb2.append("\" tid=");
                    sb2.append(entry.getValue()[2]);
                    sb2.append(" :\n");
                    sb2.append(entry.getValue()[0]);
                    sb2.append("\n");
                    sb2.append(entry.getValue()[1]);
                    sb2.append("\n\n");
                }
            }
            return am.a(str2, sb2.toString(), sb2.length() * 2);
        }
        al.e("not found trace dump for %s", str3);
        return false;
    }

    private static String a(List<ba> list, long j10) {
        if (list == null || list.isEmpty()) {
            return "main thread stack not enable";
        }
        StringBuilder sb2 = new StringBuilder(4096);
        sb2.append("\n>>>>> 以下为anr过程中主线程堆栈记录，可根据堆栈出现次数推测在该堆栈阻塞的时间，出现次数越多对anr贡献越大，越可能是造成anr的原因 >>>>>\n");
        sb2.append("\n>>>>> Thread Stack Traces Records Start >>>>>\n");
        for (int i10 = 0; i10 < list.size(); i10++) {
            ba baVar = list.get(i10);
            sb2.append("Thread name:");
            sb2.append(baVar.f83429a);
            sb2.append("\n");
            long j11 = baVar.f83430b - j10;
            String str = j11 <= 0 ? "before " : "after ";
            sb2.append("Got ");
            sb2.append(str);
            sb2.append("anr:");
            sb2.append(Math.abs(j11));
            sb2.append(LogUtils.CSTR_TIMES_END);
            sb2.append(baVar.f83431c);
            sb2.append("\n");
            if (sb2.length() * 2 >= 101376) {
                break;
            }
        }
        sb2.append("\n<<<<< Thread Stack Traces Records End <<<<<\n");
        return sb2.toString();
    }

    public final boolean a(boolean z10) {
        boolean zCompareAndSet = this.f83409a.compareAndSet(!z10, z10);
        al.c("tryChangeAnrState to %s, success:%s", Boolean.valueOf(z10), Boolean.valueOf(zCompareAndSet));
        return zCompareAndSet;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public final void a(long j10, String str) {
        ActivityManager.ProcessErrorStateInfo processErrorStateInfoA;
        List<ba> listC;
        try {
            al.c("anr time:%s", Long.valueOf(j10));
            synchronized (this.f83417j) {
                if (this.f83420m != null) {
                    al.c("Disable record main stack trace.", new Object[0]);
                    this.f83420m.c();
                }
            }
            String strA = ap.a(Looper.getMainLooper().getThread());
            Map<String, String> mapA = ap.a(this.f83411c.S, at.f83348h);
            if (this.f83411c.a()) {
                boolean z10 = ab.o() || ab.p();
                al.c("isAnrCrashDevice:%s", Boolean.valueOf(z10));
                if (!z10) {
                    processErrorStateInfoA = az.a(this.f83410b, 21000L);
                } else {
                    processErrorStateInfoA = az.a(this.f83410b, 0L);
                }
            } else {
                processErrorStateInfoA = az.a(this.f83410b, 0L);
            }
            if (processErrorStateInfoA == null) {
                al.c("proc state is invisible or not my proc!", new Object[0]);
                a(false);
                return;
            }
            ax axVar = new ax();
            axVar.f83403c = j10;
            axVar.f83401a = processErrorStateInfoA.processName;
            axVar.f83406f = processErrorStateInfoA.shortMsg;
            axVar.f83405e = processErrorStateInfoA.longMsg;
            axVar.f83402b = mapA;
            axVar.f83407g = strA;
            if (TextUtils.isEmpty(strA)) {
                axVar.f83407g = "main stack is null , some error may be encountered.";
            }
            Object[] objArr = new Object[7];
            objArr[0] = Long.valueOf(axVar.f83403c);
            objArr[1] = axVar.f83404d;
            objArr[2] = axVar.f83401a;
            objArr[3] = axVar.f83407g;
            objArr[4] = axVar.f83406f;
            objArr[5] = axVar.f83405e;
            Map<String, String> map = axVar.f83402b;
            objArr[6] = Integer.valueOf(map == null ? 0 : map.size());
            al.c("anr time:%d\ntrace file:%s\nproc:%s\nmain stack:%s\nshort msg:%s\nlong msg:%s\n threads:%d", objArr);
            al.a("found visible anr , start to upload!", new Object[0]);
            al.c("trace file:%s", str);
            if (!TextUtils.isEmpty(str) && new File(str).exists()) {
                File file = new File(this.f83413e, "bugly_trace_" + j10 + ".txt");
                al.c("trace file exists", new Object[0]);
                if (str.startsWith("/data/anr/")) {
                    al.a("backup trace isOK:%s", Boolean.valueOf(a(str, file.getAbsolutePath(), axVar.f83401a)));
                } else {
                    al.a("trace file rename :%s", Boolean.valueOf(new File(str).renameTo(file)));
                }
                synchronized (this.f83417j) {
                    bg bgVar = this.f83420m;
                    listC = bgVar != null ? bgVar.f83459a.c() : null;
                }
                if (listC != null) {
                    String strA2 = a(listC, j10);
                    al.c("save main stack trace", new Object[0]);
                    am.a(file, strA2, 2147483647L, true);
                }
                axVar.f83404d = file.getAbsolutePath();
            } else {
                al.c("trace file is null or not exists, just ignore", new Object[0]);
            }
            CrashDetailBean crashDetailBeanA = a(axVar);
            at.a().a(crashDetailBeanA);
            if (crashDetailBeanA.f83119a >= 0) {
                al.a("backup anr record success!", new Object[0]);
            } else {
                al.d("backup anr record fail!", new Object[0]);
            }
            as.a("ANR", ap.a(j10), axVar.f83401a, "main", axVar.f83407g, crashDetailBeanA);
            if (!this.f83416i.a(crashDetailBeanA, !ab.r())) {
                this.f83416i.b(crashDetailBeanA, true);
            }
            this.f83416i.a(crashDetailBeanA);
            synchronized (this.f83417j) {
                if (this.f83420m != null) {
                    al.c("Finish anr process.", new Object[0]);
                    this.f83420m.d();
                }
            }
            a(false);
        } catch (Throwable th) {
            try {
                al.b(th);
            } finally {
                a(false);
            }
        }
    }

    public final boolean a(long j10) {
        if (Math.abs(j10 - this.f83422o) < 10000) {
            al.d("should not process ANR too Fre in %dms", 10000);
            return true;
        }
        this.f83422o = j10;
        return false;
    }

    static /* synthetic */ void a(ay ayVar) {
        long jCurrentTimeMillis = (at.f83350j + System.currentTimeMillis()) - ap.b();
        am.a(ayVar.f83413e, "bugly_trace_", ".txt", jCurrentTimeMillis);
        am.a(ayVar.f83413e, "manual_bugly_trace_", ".txt", jCurrentTimeMillis);
        am.a(ayVar.f83413e, "main_stack_record_", ".txt", jCurrentTimeMillis);
        am.a(ayVar.f83413e, "main_stack_record_", ".txt.merged", jCurrentTimeMillis);
    }
}
