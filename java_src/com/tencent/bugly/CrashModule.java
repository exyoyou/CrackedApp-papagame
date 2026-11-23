package com.tencent.bugly;

import android.content.Context;
import android.text.TextUtils;
import com.tencent.bugly.crashreport.CrashReport;
import com.tencent.bugly.crashreport.common.strategy.StrategyBean;
import com.tencent.bugly.proguard.aa;
import com.tencent.bugly.proguard.al;
import com.tencent.bugly.proguard.aq;
import com.tencent.bugly.proguard.at;
import com.tencent.bugly.proguard.au;
import com.tencent.bugly.proguard.o;
import com.tencent.bugly.proguard.u;
import com.tencent.bugly.proguard.z;

/* JADX INFO: loaded from: classes2.dex */
public class CrashModule extends o {
    public static final int MODULE_ID = 1004;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    private static int f83066c;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    private static CrashModule f83067e = new CrashModule();

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private long f83068a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private BuglyStrategy.a f83069b;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    private boolean f83070d = false;

    private synchronized void a(Context context, BuglyStrategy buglyStrategy) {
        if (buglyStrategy == null) {
            return;
        }
        String libBuglySOFilePath = buglyStrategy.getLibBuglySOFilePath();
        if (!TextUtils.isEmpty(libBuglySOFilePath)) {
            aa.a(context).f83200u = libBuglySOFilePath;
            al.a("setted libBugly.so file path :%s", libBuglySOFilePath);
        }
        if (buglyStrategy.getCrashHandleCallback() != null) {
            this.f83069b = buglyStrategy.getCrashHandleCallback();
            al.a("setted CrashHanldeCallback", new Object[0]);
        }
        if (buglyStrategy.getAppReportDelay() > 0) {
            long appReportDelay = buglyStrategy.getAppReportDelay();
            this.f83068a = appReportDelay;
            al.a("setted delay: %d", Long.valueOf(appReportDelay));
        }
    }

    public static CrashModule getInstance() {
        CrashModule crashModule = f83067e;
        crashModule.f83614id = 1004;
        return crashModule;
    }

    @Override // com.tencent.bugly.proguard.o
    public String[] getTables() {
        return new String[]{"t_cr"};
    }

    public synchronized boolean hasInitialized() {
        return this.f83070d;
    }

    @Override // com.tencent.bugly.proguard.o
    public synchronized void init(Context context, boolean z10, BuglyStrategy buglyStrategy) {
        if (context != null) {
            if (!this.f83070d) {
                al.a("Initializing crash module.", new Object[0]);
                u uVarA = u.a();
                int i10 = f83066c + 1;
                f83066c = i10;
                uVarA.a(i10);
                this.f83070d = true;
                CrashReport.setContext(context);
                a(context, buglyStrategy);
                at atVarA = at.a(context, z10, this.f83069b);
                atVarA.f83361t.a();
                if (buglyStrategy != null) {
                    atVarA.B = buglyStrategy.getCallBackType();
                    atVarA.C = buglyStrategy.getCloseErrorCallback();
                    at.f83355o = buglyStrategy.isUploadSpotCrash();
                    aa.a(context).T = buglyStrategy.isEnableRecordAnrMainStack();
                    if (buglyStrategy.isEnableCatchAnrTrace()) {
                        atVarA.f83362u.enableCatchAnrTrace();
                    } else {
                        atVarA.f83362u.disableCatchAnrTrace();
                    }
                } else {
                    atVarA.f83362u.enableCatchAnrTrace();
                }
                if (aa.b().f83185e.equals(z.a(atVarA.f83359c))) {
                    atVarA.f83362u.removeEmptyNativeRecordFiles();
                }
                if (buglyStrategy == null || buglyStrategy.isEnableNativeCrashMonitor()) {
                    atVarA.e();
                } else {
                    al.a("[crash] Closed native crash monitor!", new Object[0]);
                    atVarA.d();
                }
                if (buglyStrategy == null || buglyStrategy.isEnableANRCrashMonitor()) {
                    atVarA.f();
                } else {
                    al.a("[crash] Closed ANR monitor!", new Object[0]);
                    atVarA.g();
                }
                if (buglyStrategy != null) {
                    at.f83345e = buglyStrategy.isMerged();
                }
                atVarA.a(buglyStrategy != null ? buglyStrategy.getAppReportDelay() : 0L);
                atVarA.f83362u.checkUploadRecordCrash();
                au.a(context);
                aq aqVarA = aq.a();
                aqVarA.a("android.net.conn.CONNECTIVITY_CHANGE");
                aqVarA.a(context);
                u uVarA2 = u.a();
                int i11 = f83066c - 1;
                f83066c = i11;
                uVarA2.a(i11);
            }
        }
    }

    @Override // com.tencent.bugly.proguard.o
    public void onServerStrategyChanged(StrategyBean strategyBean) {
        at atVarA;
        if (strategyBean == null || (atVarA = at.a()) == null) {
            return;
        }
        atVarA.f83361t.a(strategyBean);
        atVarA.f83362u.onStrategyChanged(strategyBean);
        atVarA.f83365x.b();
    }
}
