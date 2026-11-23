package com.tencent.bugly.crashreport;

import android.annotation.SuppressLint;
import android.content.Context;
import android.text.TextUtils;
import android.webkit.WebSettings;
import android.webkit.WebView;
import com.tencent.bugly.BuglyStrategy;
import com.tencent.bugly.CrashModule;
import com.tencent.bugly.crashreport.common.strategy.StrategyBean;
import com.tencent.bugly.crashreport.crash.h5.H5JavaScriptInterface;
import com.tencent.bugly.crashreport.crash.jni.NativeCrashHandler;
import com.tencent.bugly.proguard.aa;
import com.tencent.bugly.proguard.ac;
import com.tencent.bugly.proguard.ak;
import com.tencent.bugly.proguard.al;
import com.tencent.bugly.proguard.an;
import com.tencent.bugly.proguard.ap;
import com.tencent.bugly.proguard.aq;
import com.tencent.bugly.proguard.at;
import com.tencent.bugly.proguard.au;
import com.tencent.bugly.proguard.bc;
import com.tencent.bugly.proguard.p;
import com.tencent.bugly.proguard.r;
import com.tencent.bugly.proguard.s;
import com.tencent.bugly.proguard.w;
import com.tencent.bugly.proguard.x;
import com.tencent.bugly.proguard.y;
import java.net.InetAddress;
import java.net.InetSocketAddress;
import java.net.Proxy;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.HashSet;
import java.util.List;
import java.util.Map;
import java.util.Set;

/* JADX INFO: loaded from: classes2.dex */
public class CrashReport {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private static Context f83071a;

    public static class CrashHandleCallback extends BuglyStrategy.a {
    }

    public static class UserStrategy extends BuglyStrategy {

        /* JADX INFO: renamed from: c, reason: collision with root package name */
        CrashHandleCallback f83073c;

        public UserStrategy(Context context) {
        }

        @Override // com.tencent.bugly.BuglyStrategy
        public synchronized int getCallBackType() {
            return this.f83044a;
        }

        @Override // com.tencent.bugly.BuglyStrategy
        public synchronized boolean getCloseErrorCallback() {
            return this.f83045b;
        }

        @Override // com.tencent.bugly.BuglyStrategy
        public synchronized void setCallBackType(int i10) {
            this.f83044a = i10;
        }

        @Override // com.tencent.bugly.BuglyStrategy
        public synchronized void setCloseErrorCallback(boolean z10) {
            this.f83045b = z10;
        }

        public synchronized void setCrashHandleCallback(CrashHandleCallback crashHandleCallback) {
            this.f83073c = crashHandleCallback;
        }

        @Override // com.tencent.bugly.BuglyStrategy
        public synchronized CrashHandleCallback getCrashHandleCallback() {
            return this.f83073c;
        }
    }

    public interface a {
        String a();

        void a(H5JavaScriptInterface h5JavaScriptInterface, String str);

        void a(String str);

        void b();

        CharSequence c();
    }

    public static void closeBugly() {
        if (!p.f83615a) {
            String str = al.f83278b;
            return;
        }
        if (!CrashModule.getInstance().hasInitialized()) {
            String str2 = al.f83278b;
            return;
        }
        if (f83071a == null) {
            return;
        }
        aq aqVarA = aq.a();
        if (aqVarA != null) {
            aqVarA.b(f83071a);
        }
        closeCrashReport();
        s.a(f83071a);
        ak akVarA = ak.a();
        if (akVarA != null) {
            akVarA.b();
        }
    }

    public static void closeCrashReport() {
        if (!p.f83615a) {
            String str = al.f83278b;
        } else if (CrashModule.getInstance().hasInitialized()) {
            at.a().c();
        } else {
            String str2 = al.f83278b;
        }
    }

    public static void closeNativeReport() {
        if (!p.f83615a) {
            String str = al.f83278b;
        } else if (CrashModule.getInstance().hasInitialized()) {
            at.a().d();
        } else {
            String str2 = al.f83278b;
        }
    }

    public static void enableBugly(boolean z10) {
        p.f83615a = z10;
    }

    public static void enableObtainId(Context context, boolean z10) {
        setCollectPrivacyInfo(context, z10);
    }

    public static Set<String> getAllUserDataKeys(Context context) {
        if (!p.f83615a) {
            String str = al.f83278b;
            return new HashSet();
        }
        if (context != null) {
            return aa.a(context).z();
        }
        String str2 = al.f83278b;
        return new HashSet();
    }

    public static String getAppChannel() {
        if (!p.f83615a) {
            String str = al.f83278b;
            return "unknown";
        }
        if (CrashModule.getInstance().hasInitialized()) {
            return aa.a(f83071a).f83199t;
        }
        String str2 = al.f83278b;
        return "unknown";
    }

    public static String getAppID() {
        if (!p.f83615a) {
            String str = al.f83278b;
            return "unknown";
        }
        if (CrashModule.getInstance().hasInitialized()) {
            return aa.a(f83071a).f();
        }
        String str2 = al.f83278b;
        return "unknown";
    }

    public static String getAppVer() {
        if (!p.f83615a) {
            String str = al.f83278b;
            return "unknown";
        }
        if (CrashModule.getInstance().hasInitialized()) {
            return aa.a(f83071a).f83195p;
        }
        String str2 = al.f83278b;
        return "unknown";
    }

    public static String getBuglyVersion(Context context) {
        if (context != null) {
            return aa.a(context).f83189i;
        }
        al.d("Please call with context.", new Object[0]);
        return "unknown";
    }

    public static Context getContext() {
        return f83071a;
    }

    public static String getDeviceID(Context context) {
        return aa.a(context).j();
    }

    public static Proxy getHttpProxy() {
        return an.f83282a;
    }

    public static Map<String, String> getSdkExtraData() {
        if (!p.f83615a) {
            String str = al.f83278b;
            return new HashMap();
        }
        if (CrashModule.getInstance().hasInitialized()) {
            return aa.a(f83071a).L;
        }
        String str2 = al.f83278b;
        return null;
    }

    public static String getUserData(Context context, String str) {
        if (!p.f83615a) {
            String str2 = al.f83278b;
            return "unknown";
        }
        if (context == null) {
            String str3 = al.f83278b;
            return "unknown";
        }
        if (ap.b(str)) {
            return null;
        }
        return aa.a(context).g(str);
    }

    public static int getUserDatasSize(Context context) {
        if (!p.f83615a) {
            String str = al.f83278b;
            return -1;
        }
        if (context != null) {
            return aa.a(context).y();
        }
        String str2 = al.f83278b;
        return -1;
    }

    public static String getUserId() {
        if (!p.f83615a) {
            String str = al.f83278b;
            return "unknown";
        }
        if (CrashModule.getInstance().hasInitialized()) {
            return aa.a(f83071a).g();
        }
        String str2 = al.f83278b;
        return "unknown";
    }

    public static int getUserSceneTagId(Context context) {
        if (!p.f83615a) {
            String str = al.f83278b;
            return -1;
        }
        if (context != null) {
            return aa.a(context).C();
        }
        String str2 = al.f83278b;
        return -1;
    }

    public static void initCrashReport(Context context) {
        if (context == null) {
            return;
        }
        f83071a = context;
        p.a(CrashModule.getInstance());
        p.a(context);
    }

    public static boolean isLastSessionCrash() {
        if (!p.f83615a) {
            String str = al.f83278b;
            return false;
        }
        if (!CrashModule.getInstance().hasInitialized()) {
            String str2 = al.f83278b;
            return false;
        }
        at atVarA = at.a();
        Boolean bool = atVarA.A;
        if (bool != null) {
            return bool.booleanValue();
        }
        String str3 = aa.b().f83185e;
        List<y> listA = w.a().a(1);
        ArrayList arrayList = new ArrayList();
        if (listA == null || listA.size() <= 0) {
            atVarA.A = Boolean.FALSE;
            return false;
        }
        for (y yVar : listA) {
            if (str3.equals(yVar.f83695c)) {
                atVarA.A = Boolean.TRUE;
                arrayList.add(yVar);
            }
        }
        if (arrayList.size() > 0) {
            w.a().a(arrayList);
        }
        return true;
    }

    public static void postCatchedException(Throwable th) {
        postCatchedException(th, Thread.currentThread());
    }

    public static void postException(Thread thread, int i10, String str, String str2, String str3, Map<String, String> map) {
        if (!p.f83615a) {
            String str4 = al.f83278b;
        } else if (CrashModule.getInstance().hasInitialized()) {
            au.a(thread, i10, str, str2, str3, map);
        } else {
            String str5 = al.f83278b;
        }
    }

    private static void putSdkData(Context context, String str, String str2) {
        if (context == null || ap.b(str) || ap.b(str2)) {
            return;
        }
        String strReplace = str.replace("[a-zA-Z[0-9]]+", "");
        if (strReplace.length() > 100) {
            String str3 = al.f83278b;
            String.format("putSdkData key length over limit %d, will be cutted.", 50);
            strReplace = strReplace.substring(0, 50);
        }
        if (str2.length() > 500) {
            String str4 = al.f83278b;
            String.format("putSdkData value length over limit %d, will be cutted!", 200);
            str2 = str2.substring(0, 200);
        }
        aa.a(context).b(strReplace, str2);
        al.b(String.format("[param] putSdkData data: %s - %s", strReplace, str2), new Object[0]);
    }

    public static void putUserData(Context context, String str, String str2) {
        if (!p.f83615a) {
            String str3 = al.f83278b;
            return;
        }
        if (context == null) {
            String str4 = al.f83278b;
            return;
        }
        if (str == null) {
            al.d("putUserData args key should not be null or empty", new Object[0]);
            return;
        }
        if (str2 == null) {
            al.d("putUserData args value should not be null", new Object[0]);
            return;
        }
        if (str2.length() > 200) {
            al.d("user data value length over limit %d, it will be cutted!", 200);
            str2 = str2.substring(0, 200);
        }
        aa aaVarA = aa.a(context);
        if (aaVarA.z().contains(str)) {
            NativeCrashHandler nativeCrashHandler = NativeCrashHandler.getInstance();
            if (nativeCrashHandler != null) {
                nativeCrashHandler.putKeyValueToNative(str, str2);
            }
            aa.a(context).a(str, str2);
            al.c("replace KV %s %s", str, str2);
            return;
        }
        if (aaVarA.y() >= 50) {
            al.d("user data size is over limit %d, it will be cutted!", 50);
            return;
        }
        if (str.length() > 50) {
            al.d("user data key length over limit %d , will drop this new key %s", 50, str);
            str = str.substring(0, 50);
        }
        NativeCrashHandler nativeCrashHandler2 = NativeCrashHandler.getInstance();
        if (nativeCrashHandler2 != null) {
            nativeCrashHandler2.putKeyValueToNative(str, str2);
        }
        aa.a(context).a(str, str2);
        al.b("[param] set user data: %s - %s", str, str2);
    }

    public static String removeUserData(Context context, String str) {
        if (!p.f83615a) {
            String str2 = al.f83278b;
            return "unknown";
        }
        if (context == null) {
            String str3 = al.f83278b;
            return "unknown";
        }
        if (ap.b(str)) {
            return null;
        }
        al.b("[param] remove user data: %s", str);
        return aa.a(context).f(str);
    }

    public static void setAllThreadStackEnable(Context context, boolean z10, boolean z11) {
        aa aaVarA = aa.a(context);
        aaVarA.R = z10;
        aaVarA.S = z11;
    }

    public static void setAnrProcessInfoCollectEnable(boolean z10) {
        String str = al.f83278b;
        "setAnrProcessInfoCollectEnable: ".concat(String.valueOf(z10));
        aa.b(z10);
    }

    public static void setAppChannel(Context context, String str) {
        if (!p.f83615a) {
            String str2 = al.f83278b;
            return;
        }
        if (context == null) {
            String str3 = al.f83278b;
            return;
        }
        if (str == null) {
            String str4 = al.f83278b;
            return;
        }
        aa.a(context).f83199t = str;
        NativeCrashHandler nativeCrashHandler = NativeCrashHandler.getInstance();
        if (nativeCrashHandler != null) {
            nativeCrashHandler.setNativeAppChannel(str);
        }
    }

    public static void setAppPackage(Context context, String str) {
        if (!p.f83615a) {
            String str2 = al.f83278b;
            return;
        }
        if (context == null) {
            String str3 = al.f83278b;
            return;
        }
        if (str == null) {
            String str4 = al.f83278b;
            return;
        }
        aa.a(context).f83184d = str;
        NativeCrashHandler nativeCrashHandler = NativeCrashHandler.getInstance();
        if (nativeCrashHandler != null) {
            nativeCrashHandler.setNativeAppPackage(str);
        }
    }

    public static void setAppVersion(Context context, String str) {
        if (!p.f83615a) {
            String str2 = al.f83278b;
            return;
        }
        if (context == null) {
            String str3 = al.f83278b;
            return;
        }
        if (str == null) {
            String str4 = al.f83278b;
            return;
        }
        aa.a(context).f83195p = str;
        NativeCrashHandler nativeCrashHandler = NativeCrashHandler.getInstance();
        if (nativeCrashHandler != null) {
            nativeCrashHandler.setNativeAppVersion(str);
        }
    }

    public static void setBuglyDbName(String str) {
        if (!p.f83615a) {
            String str2 = al.f83278b;
            return;
        }
        String str3 = al.f83278b;
        "Set Bugly DB name: ".concat(String.valueOf(str));
        x.f83689a = str;
    }

    public static void setCollectPrivacyInfo(Context context, boolean z10) {
        if (!p.f83615a) {
            String str = al.f83278b;
        } else {
            if (context == null) {
                String str2 = al.f83278b;
                return;
            }
            String str3 = al.f83278b;
            "setCollectPrivacyInfo: ".concat(String.valueOf(z10));
            aa.a(context).f83194n = z10;
        }
    }

    public static void setContext(Context context) {
        f83071a = context;
    }

    public static void setCrashFilter(String str) {
        if (!p.f83615a) {
            String str2 = al.f83278b;
            return;
        }
        String str3 = al.f83278b;
        "Set crash stack filter: ".concat(String.valueOf(str));
        at.f83357q = str;
    }

    public static void setCrashRegularFilter(String str) {
        if (!p.f83615a) {
            String str2 = al.f83278b;
            return;
        }
        String str3 = al.f83278b;
        "Set crash stack filter: ".concat(String.valueOf(str));
        at.f83358r = str;
    }

    public static void setDeviceId(Context context, String str) {
        if (context == null || TextUtils.isEmpty(str)) {
            return;
        }
        aa.a(context).a(str);
    }

    public static void setDeviceModel(Context context, String str) {
        if (context == null || TextUtils.isEmpty(str)) {
            return;
        }
        aa.a(context).b(str);
    }

    public static void setDumpFilePath(Context context, String str) {
        if (!p.f83615a) {
            String str2 = al.f83278b;
            return;
        }
        if (context == null) {
            String str3 = al.f83278b;
        } else {
            if (str == null) {
                String str4 = al.f83278b;
                return;
            }
            String str5 = al.f83278b;
            "user set tombstone path: ".concat(str);
            NativeCrashHandler.setDumpFilePath(str);
        }
    }

    public static void setHandleNativeCrashInJava(boolean z10) {
        if (!p.f83615a) {
            String str = al.f83278b;
            return;
        }
        String str2 = al.f83278b;
        "Should handle native crash in Java profile after handled in native profile: ".concat(String.valueOf(z10));
        NativeCrashHandler.setShouldHandleInJava(z10);
    }

    public static void setHttpProxy(String str, int i10) {
        if (TextUtils.isEmpty(str)) {
            an.f83282a = null;
        } else {
            an.f83282a = new Proxy(Proxy.Type.HTTP, new InetSocketAddress(str, i10));
        }
    }

    @Deprecated
    public static void setIsAppForeground(Context context, boolean z10) {
        al.a("App fore and back status are no longer supported", new Object[0]);
    }

    public static void setIsDevelopmentDevice(Context context, boolean z10) {
        if (!p.f83615a) {
            String str = al.f83278b;
            return;
        }
        if (context == null) {
            al.d("Context should not be null.", new Object[0]);
            return;
        }
        if (z10) {
            al.c("This is a development device.", new Object[0]);
        } else {
            al.c("This is not a development device.", new Object[0]);
        }
        aa.a(context).J = z10;
    }

    public static boolean setJavascriptMonitor(WebView webView, boolean z10) {
        return setJavascriptMonitor(webView, z10, false);
    }

    public static void setPersonalInfoCollectEnable(boolean z10) {
        String str = al.f83278b;
        "setPersonalInfoCollectEnable: ".concat(String.valueOf(z10));
        aa.a(z10);
    }

    public static void setSdkExtraData(Context context, String str, String str2) {
        if (!p.f83615a) {
            String str3 = al.f83278b;
            return;
        }
        if (context == null || ap.b(str) || ap.b(str2)) {
            return;
        }
        aa aaVarA = aa.a(context);
        if (str == null || str2 == null) {
            return;
        }
        synchronized (aaVarA.U) {
            aaVarA.L.put(str, str2);
        }
    }

    public static void setServerUrl(String str) {
        if (ap.b(str) || !ap.d(str)) {
            String str2 = al.f83278b;
            return;
        }
        ac.a(str);
        StrategyBean.f83096a = str;
        StrategyBean.f83097b = str;
    }

    public static void setSessionIntervalMills(long j10) {
        if (p.f83615a) {
            s.a(j10);
        } else {
            String str = al.f83278b;
        }
    }

    public static void setUserId(String str) {
        if (!p.f83615a) {
            String str2 = al.f83278b;
        } else if (CrashModule.getInstance().hasInitialized()) {
            setUserId(f83071a, str);
        } else {
            String str3 = al.f83278b;
        }
    }

    public static void setUserSceneTag(Context context, int i10) {
        if (!p.f83615a) {
            String str = al.f83278b;
            return;
        }
        if (context == null) {
            String str2 = al.f83278b;
            return;
        }
        if (i10 <= 0) {
            al.d("setTag args tagId should > 0", new Object[0]);
        }
        aa aaVarA = aa.a(context);
        synchronized (aaVarA.V) {
            int i11 = aaVarA.f83203x;
            if (i11 != i10) {
                aaVarA.f83203x = i10;
                al.a("user scene tag %d changed to tag %d", Integer.valueOf(i11), Integer.valueOf(aaVarA.f83203x));
            }
        }
        al.b("[param] set user scene tag: %d", Integer.valueOf(i10));
    }

    public static void startCrashReport() {
        if (!p.f83615a) {
            String str = al.f83278b;
        } else if (CrashModule.getInstance().hasInitialized()) {
            at.a().b();
        } else {
            String str2 = al.f83278b;
        }
    }

    public static void testANRCrash() {
        if (!p.f83615a) {
            String str = al.f83278b;
        } else if (!CrashModule.getInstance().hasInitialized()) {
            String str2 = al.f83278b;
        } else {
            al.a("start to create a anr crash for test!", new Object[0]);
            at.a().h();
        }
    }

    public static void testJavaCrash() {
        int i10;
        if (!p.f83615a) {
            String str = al.f83278b;
            return;
        }
        if (!CrashModule.getInstance().hasInitialized()) {
            String str2 = al.f83278b;
            return;
        }
        aa aaVarB = aa.b();
        if (aaVarB != null && (i10 = aaVarB.f83204y) != 24096) {
            aaVarB.f83204y = 24096;
            al.a("server scene tag %d changed to tag %d", Integer.valueOf(i10), Integer.valueOf(aaVarB.f83204y));
        }
        throw new RuntimeException("This Crash create for Test! You can go to Bugly see more detail!");
    }

    public static void testNativeCrash() {
        testNativeCrash(true, true, false);
    }

    public static void uploadUserInfo() {
        if (!p.f83615a) {
            String str = al.f83278b;
            return;
        }
        r rVar = s.f83636b;
        if (rVar == null) {
            String str2 = al.f83278b;
        } else {
            rVar.b();
        }
    }

    public static void postCatchedException(Throwable th, Thread thread) {
        postCatchedException(th, thread, false);
    }

    @SuppressLint({"SetJavaScriptEnabled"})
    public static boolean setJavascriptMonitor(final WebView webView, boolean z10, boolean z11) {
        if (webView == null) {
            String str = al.f83278b;
            return false;
        }
        webView.getSettings().setSavePassword(false);
        webView.getSettings().setAllowFileAccess(false);
        return setJavascriptMonitor(new a() { // from class: com.tencent.bugly.crashreport.CrashReport.1
            @Override // com.tencent.bugly.crashreport.CrashReport.a
            public final String a() {
                return webView.getUrl();
            }

            @Override // com.tencent.bugly.crashreport.CrashReport.a
            public final void b() {
                WebSettings settings = webView.getSettings();
                if (settings.getJavaScriptEnabled()) {
                    return;
                }
                settings.setJavaScriptEnabled(true);
            }

            @Override // com.tencent.bugly.crashreport.CrashReport.a
            public final CharSequence c() {
                return webView.getContentDescription();
            }

            @Override // com.tencent.bugly.crashreport.CrashReport.a
            public final void a(String str2) {
                webView.loadUrl(str2);
            }

            @Override // com.tencent.bugly.crashreport.CrashReport.a
            public final void a(H5JavaScriptInterface h5JavaScriptInterface, String str2) {
                webView.addJavascriptInterface(h5JavaScriptInterface, str2);
            }
        }, z10, z11);
    }

    public static void testNativeCrash(boolean z10, boolean z11, boolean z12) {
        if (!p.f83615a) {
            String str = al.f83278b;
        } else if (!CrashModule.getInstance().hasInitialized()) {
            String str2 = al.f83278b;
        } else {
            al.a("start to create a native crash for test!", new Object[0]);
            at.a().a(z10, z11, z12);
        }
    }

    public static void postCatchedException(final Throwable th, final Thread thread, final boolean z10) {
        if (!p.f83615a) {
            String str = al.f83278b;
            return;
        }
        if (!CrashModule.getInstance().hasInitialized()) {
            String str2 = al.f83278b;
            return;
        }
        if (th == null) {
            al.d("throwable is null, just return", new Object[0]);
            return;
        }
        if (thread == null) {
            thread = Thread.currentThread();
        }
        final at atVarA = at.a();
        atVarA.f83364w.a(new Runnable() { // from class: com.tencent.bugly.proguard.at.3

            /* JADX INFO: renamed from: a, reason: collision with root package name */
            final /* synthetic */ boolean f83370a = false;

            /* JADX INFO: renamed from: d, reason: collision with root package name */
            final /* synthetic */ String f83373d = null;

            /* JADX INFO: renamed from: e, reason: collision with root package name */
            final /* synthetic */ byte[] f83374e = null;

            /* JADX INFO: renamed from: f, reason: collision with root package name */
            final /* synthetic */ boolean f83375f = true;

            @Override // java.lang.Runnable
            public final void run() {
                try {
                    al.c("post a throwable %b", Boolean.valueOf(this.f83370a));
                    at.this.f83361t.a(thread, th, false, this.f83373d, this.f83374e, this.f83375f);
                    if (z10) {
                        al.a("clear user datas", new Object[0]);
                        aa.a(at.this.f83359c).x();
                    }
                } catch (Throwable th2) {
                    if (!al.b(th2)) {
                        th2.printStackTrace();
                    }
                    al.e("java catch error: %s", th.toString());
                }
            }
        });
    }

    public static void initCrashReport(Context context, UserStrategy userStrategy) {
        if (context == null) {
            return;
        }
        f83071a = context;
        p.a(CrashModule.getInstance());
        p.a(context, userStrategy);
    }

    public static void setHttpProxy(InetAddress inetAddress, int i10) {
        if (inetAddress == null) {
            an.f83282a = null;
        } else {
            an.f83282a = new Proxy(Proxy.Type.HTTP, new InetSocketAddress(inetAddress, i10));
        }
    }

    public static void postException(int i10, String str, String str2, String str3, Map<String, String> map) {
        postException(Thread.currentThread(), i10, str, str2, str3, map);
    }

    public static void setUserId(Context context, String str) {
        if (!p.f83615a) {
            String str2 = al.f83278b;
            return;
        }
        if (context == null) {
            String str3 = al.f83278b;
            return;
        }
        if (TextUtils.isEmpty(str)) {
            al.d("userId should not be null", new Object[0]);
            return;
        }
        if (str.length() > 100) {
            String strSubstring = str.substring(0, 100);
            al.d("userId %s length is over limit %d substring to %s", str, 100, strSubstring);
            str = strSubstring;
        }
        if (str.equals(aa.a(context).g())) {
            return;
        }
        aa aaVarA = aa.a(context);
        synchronized (aaVarA.W) {
            aaVarA.f83192l = str;
        }
        al.b("[user] set userId : %s", str);
        NativeCrashHandler nativeCrashHandler = NativeCrashHandler.getInstance();
        if (nativeCrashHandler != null) {
            nativeCrashHandler.setNativeUserId(str);
        }
        if (CrashModule.getInstance().hasInitialized()) {
            s.a();
        }
    }

    public static Map<String, String> getSdkExtraData(Context context) {
        if (!p.f83615a) {
            String str = al.f83278b;
            return new HashMap();
        }
        if (context == null) {
            al.d("Context should not be null.", new Object[0]);
            return null;
        }
        return aa.a(context).L;
    }

    public static void initCrashReport(Context context, String str, boolean z10) {
        initCrashReport(context, str, z10, null);
    }

    public static boolean setJavascriptMonitor(a aVar, boolean z10) {
        return setJavascriptMonitor(aVar, z10, false);
    }

    public static void initCrashReport(Context context, String str, boolean z10, UserStrategy userStrategy) {
        if (context == null) {
            return;
        }
        f83071a = context;
        p.a(CrashModule.getInstance());
        p.a(context, str, z10, userStrategy);
    }

    @SuppressLint({"SetJavaScriptEnabled"})
    public static boolean setJavascriptMonitor(a aVar, boolean z10, boolean z11) {
        if (aVar == null) {
            String str = al.f83278b;
            return false;
        }
        if (!CrashModule.getInstance().hasInitialized()) {
            al.e("CrashReport has not been initialed! please to call method 'initCrashReport' first!", new Object[0]);
            return false;
        }
        al.a("Set Javascript exception monitor of webview.", new Object[0]);
        if (!p.f83615a) {
            String str2 = al.f83278b;
            return false;
        }
        al.c("URL of webview is %s", aVar.a());
        al.a("Enable the javascript needed by webview monitor.", new Object[0]);
        aVar.b();
        H5JavaScriptInterface h5JavaScriptInterface = H5JavaScriptInterface.getInstance(aVar);
        if (h5JavaScriptInterface != null) {
            al.a("Add a secure javascript interface to the webview.", new Object[0]);
            aVar.a(h5JavaScriptInterface, "exceptionUploader");
        }
        if (z10) {
            al.a("Inject bugly.js(v%s) to the webview.", bc.b());
            String strA = bc.a();
            if (strA == null) {
                al.e("Failed to inject Bugly.js.", bc.b());
                return false;
            }
            aVar.a("javascript:".concat(strA));
        }
        return true;
    }
}
