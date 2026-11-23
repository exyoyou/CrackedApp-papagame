package com.tencent.bugly;

import com.tencent.bugly.proguard.aa;
import java.util.Map;

/* JADX INFO: loaded from: classes2.dex */
public class BuglyStrategy {

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    private String f83046c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    private String f83047d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    private String f83048e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    private long f83049f;

    /* JADX INFO: renamed from: g, reason: collision with root package name */
    private String f83050g;

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    private String f83051h;

    /* JADX INFO: renamed from: i, reason: collision with root package name */
    private String f83052i;

    /* JADX INFO: renamed from: u, reason: collision with root package name */
    private a f83064u;

    /* JADX INFO: renamed from: j, reason: collision with root package name */
    private boolean f83053j = true;

    /* JADX INFO: renamed from: k, reason: collision with root package name */
    private boolean f83054k = true;

    /* JADX INFO: renamed from: l, reason: collision with root package name */
    private boolean f83055l = true;

    /* JADX INFO: renamed from: m, reason: collision with root package name */
    private boolean f83056m = false;

    /* JADX INFO: renamed from: n, reason: collision with root package name */
    private boolean f83057n = true;

    /* JADX INFO: renamed from: o, reason: collision with root package name */
    private Class<?> f83058o = null;

    /* JADX INFO: renamed from: p, reason: collision with root package name */
    private boolean f83059p = true;

    /* JADX INFO: renamed from: q, reason: collision with root package name */
    private boolean f83060q = true;

    /* JADX INFO: renamed from: r, reason: collision with root package name */
    private boolean f83061r = true;

    /* JADX INFO: renamed from: s, reason: collision with root package name */
    private boolean f83062s = true;

    /* JADX INFO: renamed from: t, reason: collision with root package name */
    private boolean f83063t = false;

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    protected int f83044a = 31;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    protected boolean f83045b = false;

    /* JADX INFO: renamed from: v, reason: collision with root package name */
    private boolean f83065v = false;

    public static class a {
        public static final int CRASHTYPE_ANR = 4;
        public static final int CRASHTYPE_BLOCK = 7;
        public static final int CRASHTYPE_COCOS2DX_JS = 5;
        public static final int CRASHTYPE_COCOS2DX_LUA = 6;
        public static final int CRASHTYPE_JAVA_CATCH = 1;
        public static final int CRASHTYPE_JAVA_CRASH = 0;
        public static final int CRASHTYPE_NATIVE = 2;
        public static final int CRASHTYPE_U3D = 3;
        public static final int MAX_USERDATA_KEY_LENGTH = 100;
        public static final int MAX_USERDATA_VALUE_LENGTH = 100000;

        public synchronized Map<String, String> onCrashHandleStart(int i10, String str, String str2, String str3) {
            return null;
        }

        public synchronized byte[] onCrashHandleStart2GetExtraDatas(int i10, String str, String str2, String str3) {
            return null;
        }
    }

    public synchronized String getAppChannel() {
        String str = this.f83047d;
        if (str != null) {
            return str;
        }
        return aa.b().f83199t;
    }

    public synchronized String getAppPackageName() {
        String str = this.f83048e;
        if (str != null) {
            return str;
        }
        return aa.b().f83184d;
    }

    public synchronized long getAppReportDelay() {
        return this.f83049f;
    }

    public synchronized String getAppVersion() {
        String str = this.f83046c;
        if (str != null) {
            return str;
        }
        return aa.b().f83195p;
    }

    public synchronized int getCallBackType() {
        return this.f83044a;
    }

    public synchronized boolean getCloseErrorCallback() {
        return this.f83045b;
    }

    public synchronized a getCrashHandleCallback() {
        return this.f83064u;
    }

    public synchronized String getDeviceID() {
        return this.f83051h;
    }

    public synchronized String getDeviceModel() {
        return this.f83052i;
    }

    public synchronized String getLibBuglySOFilePath() {
        return this.f83050g;
    }

    public synchronized Class<?> getUserInfoActivity() {
        return this.f83058o;
    }

    public synchronized boolean isBuglyLogUpload() {
        return this.f83059p;
    }

    public synchronized boolean isEnableANRCrashMonitor() {
        return this.f83054k;
    }

    public synchronized boolean isEnableCatchAnrTrace() {
        return this.f83055l;
    }

    public synchronized boolean isEnableNativeCrashMonitor() {
        return this.f83053j;
    }

    public boolean isEnableRecordAnrMainStack() {
        return this.f83056m;
    }

    public synchronized boolean isEnableUserInfo() {
        return this.f83057n;
    }

    public boolean isMerged() {
        return this.f83065v;
    }

    public boolean isReplaceOldChannel() {
        return this.f83060q;
    }

    public synchronized boolean isUploadProcess() {
        return this.f83061r;
    }

    public synchronized boolean isUploadSpotCrash() {
        return this.f83062s;
    }

    public synchronized boolean recordUserInfoOnceADay() {
        return this.f83063t;
    }

    public synchronized BuglyStrategy setAppChannel(String str) {
        this.f83047d = str;
        return this;
    }

    public synchronized BuglyStrategy setAppPackageName(String str) {
        this.f83048e = str;
        return this;
    }

    public synchronized BuglyStrategy setAppReportDelay(long j10) {
        this.f83049f = j10;
        return this;
    }

    public synchronized BuglyStrategy setAppVersion(String str) {
        this.f83046c = str;
        return this;
    }

    public synchronized BuglyStrategy setBuglyLogUpload(boolean z10) {
        this.f83059p = z10;
        return this;
    }

    public synchronized void setCallBackType(int i10) {
        this.f83044a = i10;
    }

    public synchronized void setCloseErrorCallback(boolean z10) {
        this.f83045b = z10;
    }

    public synchronized BuglyStrategy setCrashHandleCallback(a aVar) {
        this.f83064u = aVar;
        return this;
    }

    public synchronized BuglyStrategy setDeviceID(String str) {
        this.f83051h = str;
        return this;
    }

    public synchronized BuglyStrategy setDeviceModel(String str) {
        this.f83052i = str;
        return this;
    }

    public synchronized BuglyStrategy setEnableANRCrashMonitor(boolean z10) {
        this.f83054k = z10;
        return this;
    }

    public void setEnableCatchAnrTrace(boolean z10) {
        this.f83055l = z10;
    }

    public synchronized BuglyStrategy setEnableNativeCrashMonitor(boolean z10) {
        this.f83053j = z10;
        return this;
    }

    public void setEnableRecordAnrMainStack(boolean z10) {
        this.f83056m = z10;
    }

    public synchronized BuglyStrategy setEnableUserInfo(boolean z10) {
        this.f83057n = z10;
        return this;
    }

    public synchronized BuglyStrategy setLibBuglySOFilePath(String str) {
        this.f83050g = str;
        return this;
    }

    @Deprecated
    public void setMerged(boolean z10) {
        this.f83065v = z10;
    }

    public synchronized BuglyStrategy setRecordUserInfoOnceADay(boolean z10) {
        this.f83063t = z10;
        return this;
    }

    public void setReplaceOldChannel(boolean z10) {
        this.f83060q = z10;
    }

    public synchronized BuglyStrategy setUploadProcess(boolean z10) {
        this.f83061r = z10;
        return this;
    }

    public synchronized void setUploadSpotCrash(boolean z10) {
        this.f83062s = z10;
    }

    public synchronized BuglyStrategy setUserInfoActivity(Class<?> cls) {
        this.f83058o = cls;
        return this;
    }
}
