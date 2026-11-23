package com.xinzhu.overmind.client;

import android.app.Activity;
import android.app.Application;
import android.app.DialogFragment;
import android.app.Instrumentation;
import android.app.Service;
import android.content.BroadcastReceiver;
import android.content.ComponentName;
import android.content.Context;
import android.content.DialogInterface;
import android.content.Intent;
import android.content.pm.ApplicationInfo;
import android.content.pm.PackageInfo;
import android.content.pm.ProviderInfo;
import android.content.pm.ResolveInfo;
import android.content.pm.ServiceInfo;
import android.database.MatrixCursor;
import android.net.Uri;
import android.os.Binder;
import android.os.Build;
import android.os.ConditionVariable;
import android.os.Handler;
import android.os.IBinder;
import android.os.IInterface;
import android.os.Looper;
import android.os.RemoteException;
import android.os.StrictMode;
import android.util.ArrayMap;
import com.xinzhu.haunted.android.app.a0;
import com.xinzhu.haunted.android.app.n;
import com.xinzhu.haunted.android.app.v;
import com.xinzhu.haunted.android.os.u;
import com.xinzhu.overmind.Overmind;
import com.xinzhu.overmind.client.hook.IOManager;
import com.xinzhu.overmind.client.hook.delegate.AppInstrumentationHook;
import com.xinzhu.overmind.client.hook.fixer.ContextFixer;
import com.xinzhu.overmind.entity.ClientConfig;
import com.xinzhu.overmind.server.ProcessRecord;
import com.xinzhu.overmind.server.os.MindDeviceInfo;
import com.xinzhu.overmind.server.pm.q;
import com.xinzhu.overmind.utils.y;
import de.robv.android.xposed.XC_MethodHook;
import de.robv.android.xposed.XC_MethodReplacement;
import de.robv.android.xposed.XposedHelpers;
import java.lang.reflect.Method;
import java.security.Security;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.Collections;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

/* JADX INFO: loaded from: classes8.dex */
public class f extends com.xinzhu.overmind.client.c.b {
    static final /* synthetic */ boolean $assertionsDisabled = false;
    public static final int HANDLE_FINISH = 0;
    public static final int HANDLE_NEW_INTENT = 0;
    public static final String TAG = "f";
    private static f sOverlord;
    private IInterface mActivityThread;
    private m mBoundApplication;
    private ClientConfig mClientConfig;
    private Application mInitialApplication;
    private Map<String, Application> mApplicationsMap = new HashMap();
    private List<ProviderInfo> mProviders = new ArrayList();
    private final Handler mH = new Handler(Looper.getMainLooper());

    class a extends XC_MethodHook {
        a() {
        }

        @Override // de.robv.android.xposed.XC_MethodHook
        protected void beforeHookedMethod(XC_MethodHook.MethodHookParam methodHookParam) {
            StackTraceElement[] stackTrace = Thread.currentThread().getStackTrace();
            for (int i10 = 0; i10 < stackTrace.length; i10++) {
                if (stackTrace[i10].getClassName().equals("android.widget.TextView") && stackTrace[i10].getMethodName().equals("setInputType")) {
                    methodHookParam.returnEarly = true;
                    return;
                }
            }
        }
    }

    class b implements Runnable {

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        final /* synthetic */ IBinder f89192b;

        b(IBinder iBinder) {
            this.f89192b = iBinder;
        }

        @Override // java.lang.Runnable
        public void run() {
            Object obj;
            ArrayMap<IBinder, Object> arrayMapT = new com.xinzhu.haunted.android.app.g(Overmind.mainThread()).T();
            if (arrayMapT.isEmpty() || (obj = arrayMapT.get(this.f89192b)) == null) {
                return;
            }
            Activity activityG = new com.xinzhu.haunted.android.app.g.a(obj).g();
            while (activityG.getParent() != null) {
                activityG = activityG.getParent();
            }
            com.xinzhu.haunted.android.app.a aVar = new com.xinzhu.haunted.android.app.a(activityG);
            int iJ = aVar.j();
            Intent intentK = aVar.k();
            if (com.xinzhu.overmind.utils.e.d()) {
                new n(com.xinzhu.haunted.android.app.d.c()).g(this.f89192b, iJ, intentK, 0);
            } else {
                if (!com.xinzhu.overmind.utils.e.a()) {
                    throw new RuntimeException("not support lower than sdk 21");
                }
                new n(com.xinzhu.haunted.android.app.d.c()).h(this.f89192b, iJ, intentK, false);
            }
            aVar.n(true);
        }
    }

    class c implements Runnable {

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        final /* synthetic */ Intent f89194b;

        /* JADX INFO: renamed from: c, reason: collision with root package name */
        final /* synthetic */ IBinder f89195c;

        c(Intent intent, IBinder iBinder) {
            this.f89194b = intent;
            this.f89195c = iBinder;
        }

        @Override // java.lang.Runnable
        public void run() {
            Intent intent = Build.VERSION.SDK_INT >= 22 ? (Intent) t9.a.b(this.f89194b, Overmind.getHostPkg()).f97361a : this.f89194b;
            com.xinzhu.haunted.android.app.g gVar = new com.xinzhu.haunted.android.app.g(Overmind.mainThread());
            if (com.xinzhu.overmind.utils.e.h()) {
                gVar.e0(gVar.T().get(this.f89195c), Collections.singletonList(intent));
                return;
            }
            if (gVar.C(this.f89195c, Collections.singletonList(intent))) {
                gVar.h0(this.f89195c, Collections.singletonList(intent));
            } else if (gVar.D(this.f89195c, Collections.singletonList(intent), true)) {
                gVar.i0(this.f89195c, Collections.singletonList(intent), true);
            } else if (gVar.y(this.f89195c, Collections.singletonList(intent))) {
                gVar.d0(this.f89195c, Collections.singletonList(intent));
            }
        }
    }

    class d implements Runnable {

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        final /* synthetic */ String f89197b;

        /* JADX INFO: renamed from: c, reason: collision with root package name */
        final /* synthetic */ String f89198c;

        /* JADX INFO: renamed from: d, reason: collision with root package name */
        final /* synthetic */ ConditionVariable f89199d;

        d(String str, String str2, ConditionVariable conditionVariable) {
            this.f89197b = str;
            this.f89198c = str2;
            this.f89199d = conditionVariable;
        }

        @Override // java.lang.Runnable
        public void run() {
            f.this.handleBindApplication(this.f89197b, this.f89198c);
            this.f89199d.open();
        }
    }

    class e extends XC_MethodHook {
        e() {
        }

        @Override // de.robv.android.xposed.XC_MethodHook
        protected void beforeHookedMethod(XC_MethodHook.MethodHookParam methodHookParam) throws Throwable {
            methodHookParam.returnEarly = true;
        }
    }

    /* JADX INFO: renamed from: com.xinzhu.overmind.client.f$f, reason: collision with other inner class name */
    class C1098f extends XC_MethodHook {
        C1098f() {
        }

        @Override // de.robv.android.xposed.XC_MethodHook
        public void callAfterHookedMethod(XC_MethodHook.MethodHookParam methodHookParam) throws Throwable {
            ProcessRecord processRecordC = ma.a.d().c(Binder.getCallingPid());
            if (processRecordC == null || processRecordC.processName == null) {
                return;
            }
            methodHookParam.setResult(Integer.valueOf(processRecordC.vuid));
        }
    }

    class g extends XC_MethodHook {
        g() {
        }

        @Override // de.robv.android.xposed.XC_MethodHook
        public void callAfterHookedMethod(XC_MethodHook.MethodHookParam methodHookParam) throws Throwable {
            methodHookParam.setResult(Boolean.TRUE);
        }
    }

    class h extends XC_MethodHook {
        h() {
        }

        @Override // de.robv.android.xposed.XC_MethodHook
        protected void beforeHookedMethod(XC_MethodHook.MethodHookParam methodHookParam) throws Throwable {
            super.beforeHookedMethod(methodHookParam);
            try {
                String str = (String) methodHookParam.args[1];
                if (str.equals("settings") || str.equals("media") || str.equals("telephony") || str.equals("downloads")) {
                    methodHookParam.args[2] = Integer.valueOf(Overmind.getHostUserId());
                }
            } catch (Throwable th) {
                th.printStackTrace();
            }
        }
    }

    class i extends XC_MethodReplacement {
        i() {
        }

        @Override // de.robv.android.xposed.XC_MethodReplacement
        protected Object replaceHookedMethod(XC_MethodHook.MethodHookParam methodHookParam) throws Throwable {
            return null;
        }
    }

    class j extends XC_MethodHook {
        j() {
        }

        @Override // de.robv.android.xposed.XC_MethodHook
        protected void afterHookedMethod(XC_MethodHook.MethodHookParam methodHookParam) throws Throwable {
            try {
                MatrixCursor matrixCursor = (MatrixCursor) methodHookParam.getResult();
                String[] strArr = (String[]) methodHookParam.args[3];
                if (Arrays.asList(strArr).contains("android_id")) {
                    MatrixCursor matrixCursor2 = new MatrixCursor(matrixCursor.getColumnNames());
                    for (int i10 = 0; i10 < strArr.length; i10++) {
                        if (strArr[i10].equals("android_id")) {
                            MindDeviceInfo mindDeviceInfoB = ma.c.a().b(f.getUserId());
                            if (mindDeviceInfoB != null && mindDeviceInfoB.f89705b) {
                                matrixCursor2.addRow(new Object[]{"android_id", mindDeviceInfoB.f89706c});
                            }
                        } else if (matrixCursor.moveToPosition(i10)) {
                            matrixCursor2.addRow(new String[]{matrixCursor.getString(0), matrixCursor.getString(1)});
                        }
                    }
                    methodHookParam.setResult(matrixCursor2);
                }
            } catch (Throwable th) {
                th.printStackTrace();
            }
        }
    }

    class k extends XC_MethodHook {
        k() {
        }

        @Override // de.robv.android.xposed.XC_MethodHook
        protected void beforeHookedMethod(XC_MethodHook.MethodHookParam methodHookParam) {
            try {
                if (methodHookParam.thisObject.getClass().getName().equals("com.google.android.gms.common.ErrorDialogFragment")) {
                    com.xinzhu.overmind.b.l(f.TAG, "DialogFragment ondismiss " + methodHookParam.args[0] + " " + methodHookParam.thisObject.getClass());
                    Method declaredMethod = methodHookParam.thisObject.getClass().getDeclaredMethod("onCancel", DialogInterface.class);
                    declaredMethod.setAccessible(true);
                    declaredMethod.invoke(methodHookParam.thisObject, (DialogInterface) methodHookParam.args[0]);
                }
            } catch (Throwable th) {
                th.printStackTrace();
            }
        }
    }

    class l extends XC_MethodHook {
        l() {
        }

        @Override // de.robv.android.xposed.XC_MethodHook
        protected void beforeHookedMethod(XC_MethodHook.MethodHookParam methodHookParam) {
            StackTraceElement[] stackTrace = Thread.currentThread().getStackTrace();
            for (int i10 = 0; i10 < stackTrace.length; i10++) {
                if (stackTrace[i10].getClassName().equals("android.widget.TextView") && stackTrace[i10].getMethodName().equals("setInputType")) {
                    methodHookParam.returnEarly = true;
                    return;
                }
            }
        }
    }

    private static class m {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        int f89209a;

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        String f89210b;

        /* JADX INFO: renamed from: c, reason: collision with root package name */
        ApplicationInfo f89211c;

        /* JADX INFO: renamed from: d, reason: collision with root package name */
        List<ProviderInfo> f89212d;

        /* JADX INFO: renamed from: e, reason: collision with root package name */
        Object f89213e;

        private m() {
        }

        /* synthetic */ m(d dVar) {
            this();
        }
    }

    private Context createPackageContext(ApplicationInfo applicationInfo) {
        try {
            return Overmind.getContext().createPackageContext(applicationInfo.packageName, 3);
        } catch (Exception e10) {
            e10.printStackTrace();
            return null;
        }
    }

    private void gameSpecificHooks(String str) {
        try {
            com.xinzhu.overmind.b.c(TAG, "gameSpecificHooks " + str);
            if (str.equals(na.d.f94511d)) {
                try {
                    XposedHelpers.findAndHookMethod("com.google.android.gsf.gservices.GservicesProvider", getApplication().getClassLoader(), "query", Uri.class, String[].class, String.class, String[].class, String.class, new j());
                } catch (Throwable unused) {
                }
            }
            try {
                XposedHelpers.findAndHookMethod(DialogFragment.class, "onDismiss", DialogInterface.class, new k());
            } catch (Throwable th) {
                th.printStackTrace();
            }
            if (!str.contains("rockstargames") || Overmind.is64Bit()) {
                return;
            }
            try {
                ClassLoader systemClassLoader = ClassLoader.getSystemClassLoader();
                Class cls = Boolean.TYPE;
                XposedHelpers.findAndHookMethod("android.widget.TextView", systemClassLoader, "applySingleLine", cls, cls, cls, new l());
            } catch (Throwable unused2) {
                com.xinzhu.overmind.b.c(TAG, "Cannot do hook ZZZ, try ZZZZ.");
                ClassLoader systemClassLoader2 = ClassLoader.getSystemClassLoader();
                Class cls2 = Boolean.TYPE;
                XposedHelpers.findAndHookMethod("android.widget.TextView", systemClassLoader2, "applySingleLine", cls2, cls2, cls2, cls2, new a());
            }
        } catch (Throwable unused3) {
            com.xinzhu.overmind.b.c(TAG, "Cannot do hook both!");
        }
    }

    public static Application getApplication() {
        return getClient().mInitialApplication;
    }

    public static int getBaseVUid() {
        if (getClientConfig() == null) {
            return 10000;
        }
        return getClientConfig().f89466h;
    }

    public static f getClient() {
        if (sOverlord == null) {
            synchronized (f.class) {
                if (sOverlord == null) {
                    sOverlord = new f();
                }
            }
        }
        return sOverlord;
    }

    public static synchronized ClientConfig getClientConfig() {
        return getClient().mClientConfig;
    }

    public static List<ProviderInfo> getProviders() {
        return getClient().mProviders;
    }

    public static int getUid() {
        if (getClientConfig() == null) {
            return -1;
        }
        return getClientConfig().f89464f;
    }

    public static int getUserId() {
        if (getClientConfig() == null) {
            return 0;
        }
        return getClientConfig().f89465g;
    }

    public static String getVPackageName() {
        if (getClientConfig() != null) {
            return getClientConfig().f89460b;
        }
        if (getClient().mInitialApplication != null) {
            return getClient().mInitialApplication.getPackageName();
        }
        return null;
    }

    public static int getVPid() {
        if (getClientConfig() == null) {
            return -1;
        }
        return getClientConfig().f89462d;
    }

    public static String getVProcessName() {
        if (getClientConfig() != null) {
            return getClientConfig().f89461c;
        }
        if (getClient().mBoundApplication != null) {
            return getClient().mBoundApplication.f89210b;
        }
        return null;
    }

    public static int getVUid() {
        if (getClientConfig() == null) {
            return 10000;
        }
        return getClientConfig().f89463e;
    }

    private void installProviders(Context context, String str, List<ProviderInfo> list) {
        long jClearCallingIdentity = Binder.clearCallingIdentity();
        try {
            for (ProviderInfo providerInfo : list) {
                providerInfo.authority = providerInfo.authority.split(";")[0];
                com.xinzhu.overmind.b.c(TAG, "installProviders info " + providerInfo);
                try {
                    if (str.equals(providerInfo.processName)) {
                        if (com.xinzhu.overmind.utils.e.x()) {
                            new com.xinzhu.haunted.android.app.g(Overmind.mainThread()).g0(context, null, providerInfo, false, true, true);
                        } else {
                            new com.xinzhu.haunted.android.app.g(Overmind.mainThread()).f0(context, null, providerInfo, false, true, true);
                        }
                    }
                } catch (Throwable th) {
                    th.printStackTrace();
                }
            }
            Binder.restoreCallingIdentity(jClearCallingIdentity);
            com.xinzhu.overmind.client.hook.delegate.b.d();
        } catch (Throwable th2) {
            Binder.restoreCallingIdentity(jClearCallingIdentity);
            com.xinzhu.overmind.client.hook.delegate.b.d();
            throw th2;
        }
    }

    private void uidHooks() {
        try {
            XposedHelpers.findAndHookMethod(Binder.class, "getCallingUid", new C1098f());
            if (Build.VERSION.SDK_INT >= 31) {
                XposedHelpers.findAndHookMethod(com.xinzhu.overmind.client.e.a(), "checkCallingUid", new g());
            }
            XposedHelpers.findAndHookMethod(com.xinzhu.haunted.android.app.g.f88329c, "acquireProvider", Context.class, String.class, Integer.TYPE, Boolean.TYPE, new h());
            if (!com.xinzhu.overmind.utils.e.j() || com.xinzhu.overmind.utils.e.k()) {
                return;
            }
            XposedHelpers.findAndHookMethod("android.provider.DeviceConfig", Overmind.getContext().getClassLoader(), "enforceReadPermission", Context.class, String.class, new i());
        } catch (Throwable th) {
            th.printStackTrace();
        }
    }

    @Override // com.xinzhu.overmind.client.c
    public IBinder acquireContentProviderClient(ProviderInfo providerInfo) throws RemoteException {
        if (!isInit()) {
            bindApplication(getClientConfig().f89460b, getClientConfig().f89461c);
        }
        IInterface iInterfaceB = new t8.e(Overmind.getContext().getContentResolver().acquireContentProviderClient(providerInfo.authority.split(";")[0])).b();
        if (iInterfaceB == null) {
            return null;
        }
        return new com.xinzhu.overmind.client.hook.proxies.context.providers.a().a(iInterfaceB, Overmind.getHostPkg()).asBinder();
    }

    public void bindApplication(String str, String str2) {
        if (Looper.myLooper() == Looper.getMainLooper()) {
            handleBindApplication(str, str2);
            return;
        }
        ConditionVariable conditionVariable = new ConditionVariable();
        new Handler(Looper.getMainLooper()).post(new d(str, str2, conditionVariable));
        conditionVariable.block();
    }

    public Service createJobService(ServiceInfo serviceInfo) {
        if (!getClient().isInit()) {
            getClient().bindApplication(serviceInfo.packageName, serviceInfo.processName);
        }
        try {
            Service service = (Service) new v(this.mBoundApplication.f89213e).i().loadClass(serviceInfo.name).newInstance();
            try {
                Context contextCreatePackageContext = Overmind.getContext().createPackageContext(serviceInfo.packageName, 3);
                new com.xinzhu.haunted.android.app.l(contextCreatePackageContext).p(service);
                new a0(service).a(contextCreatePackageContext, Overmind.mainThread(), serviceInfo.name, getClient().getActivityThread(), this.mInitialApplication, com.xinzhu.haunted.android.app.d.c());
                ContextFixer.fix(contextCreatePackageContext);
                service.onCreate();
                service.onBind(null);
                return service;
            } catch (Exception e10) {
                throw new RuntimeException("Unable to create JobService " + serviceInfo.name + ": " + e10.toString(), e10);
            }
        } catch (Exception e11) {
            throw new RuntimeException("Unable to instantiate service " + serviceInfo.name + ": " + e11.toString(), e11);
        }
    }

    public Service createService(ServiceInfo serviceInfo) {
        if (!getClient().isInit()) {
            getClient().bindApplication(serviceInfo.packageName, serviceInfo.processName);
        }
        try {
            Service service = (Service) new v(this.mBoundApplication.f89213e).i().loadClass(serviceInfo.name).newInstance();
            try {
                Context contextCreatePackageContext = Overmind.getContext().createPackageContext(serviceInfo.packageName, 3);
                new com.xinzhu.haunted.android.app.l(contextCreatePackageContext).p(service);
                new a0(service).a(contextCreatePackageContext, Overmind.mainThread(), serviceInfo.name, getClient().getActivityThread(), this.mInitialApplication, com.xinzhu.haunted.android.app.d.c());
                ContextFixer.fix(contextCreatePackageContext);
                service.onCreate();
                return service;
            } catch (Exception e10) {
                e10.printStackTrace();
                throw new RuntimeException("Unable to create service " + serviceInfo.name + ": " + e10.toString(), e10);
            }
        } catch (Exception e11) {
            throw new RuntimeException("Unable to instantiate service " + serviceInfo.name + ": " + e11.toString(), e11);
        }
    }

    @Override // com.xinzhu.overmind.client.c
    public void finishActivity(IBinder iBinder) {
        this.mH.post(new b(iBinder));
    }

    @Override // com.xinzhu.overmind.client.c
    public IBinder getActivityThread() {
        return new com.xinzhu.haunted.android.app.g(Overmind.mainThread()).K();
    }

    public synchronized void handleBindApplication(String str, String str2) {
        try {
            com.xinzhu.overmind.client.b.a();
        } catch (Throwable unused) {
        }
        if (getClientConfig() == null) {
            return;
        }
        if (this.mApplicationsMap.containsKey(str)) {
            return;
        }
        PackageInfo packageInfoL = Overmind.getMindPackageManager().l(str, 8, getUserId());
        IOManager.get().enableRedirect(str, Overmind.get().getCustomCallback().customIORedirect(str, getUserId()), packageInfoL.applicationInfo.targetSdkVersion);
        VMCore.initClientClassloader(Overmind.getContext().getClassLoader());
        VMCore.init(Build.VERSION.SDK_INT, Overmind.getHostPkg(), getVPackageName(), (getClientConfig().f89468j ? com.xinzhu.overmind.a.m() : com.xinzhu.overmind.a.l()).getAbsolutePath());
        ApplicationInfo applicationInfo = q.d(packageInfoL).applicationInfo;
        na.e.h(str2, applicationInfo);
        this.mProviders = ma.g.d().u(str2, getVUid(), 128, getUserId());
        com.xinzhu.haunted.android.app.g gVar = new com.xinzhu.haunted.android.app.g(Overmind.mainThread());
        Object objU = gVar.U();
        Context contextCreatePackageContext = createPackageContext(applicationInfo);
        Object objM = new com.xinzhu.haunted.android.app.l(contextCreatePackageContext).m();
        v vVar = new v(objM);
        vVar.s(false);
        vVar.q(applicationInfo);
        int i10 = applicationInfo.targetSdkVersion;
        if (i10 < 9) {
            StrictMode.setThreadPolicy(new StrictMode.ThreadPolicy.Builder(StrictMode.getThreadPolicy()).permitNetwork().build());
        }
        if (com.xinzhu.overmind.utils.e.d() && i10 < 24) {
            u.c();
        }
        da.a.e().h(applicationInfo.targetSdkVersion);
        try {
            XposedHelpers.findAndHookMethod("dalvik.system.VMRuntime", ClassLoader.getSystemClassLoader(), "setHiddenApiExemptions", String[].class, new e());
        } catch (Throwable unused2) {
        }
        Overmind.get().getCustomCallback().customLoadLibgggg(str, getUserId());
        m mVar = new m(null);
        mVar.f89211c = applicationInfo;
        mVar.f89210b = str2;
        mVar.f89213e = objM;
        mVar.f89212d = this.mProviders;
        com.xinzhu.haunted.android.app.g.b bVar = new com.xinzhu.haunted.android.app.g.b(objU);
        bVar.m(new ComponentName(mVar.f89211c.packageName, Instrumentation.class.getName()));
        bVar.k(mVar.f89211c);
        bVar.l(mVar.f89213e);
        bVar.n(mVar.f89210b);
        bVar.o(mVar.f89212d);
        this.mBoundApplication = mVar;
        Security.removeProvider("AndroidNSSP");
        if (com.xinzhu.overmind.utils.e.d()) {
            k9.a.b(null);
        }
        try {
            uidHooks();
            Overmind.get().getAppLifecycleCallback().c(str, str2, contextCreatePackageContext);
            Application applicationP = vVar.p(false, null);
            this.mInitialApplication = applicationP;
            gVar.n0(applicationP);
            ContextFixer.fix((Context) new com.xinzhu.haunted.android.app.g(Overmind.mainThread()).R());
            ContextFixer.fix(this.mInitialApplication);
            oa.a.a(str, applicationP);
            installProviders(this.mInitialApplication, mVar.f89210b, mVar.f89212d);
            Overmind.get().getAppLifecycleCallback().b(str, str2, applicationP);
            AppInstrumentationHook.h().i().callApplicationOnCreate(applicationP);
            ContextFixer.fix(this.mInitialApplication);
            com.xinzhu.overmind.client.hook.c.c().b(com.xinzhu.overmind.client.hook.proxies.clipboard.a.class);
            com.xinzhu.overmind.client.hook.c.c().b(com.xinzhu.overmind.client.hook.proxies.app.b.class);
            Overmind.get().getAppLifecycleCallback().a(str, str2, applicationP);
            registerReceivers(this.mInitialApplication);
            this.mApplicationsMap.put(str, applicationP);
            gameSpecificHooks(str);
        } catch (Exception e10) {
            e10.printStackTrace();
            throw new RuntimeException("Failed to makeApplication", e10);
        }
    }

    @Override // com.xinzhu.overmind.client.c
    public void handleNewIntent(IBinder iBinder, Intent intent) {
        this.mH.post(new c(intent, iBinder));
    }

    public void initProcess(ClientConfig clientConfig) {
        if (this.mClientConfig == null) {
            this.mClientConfig = clientConfig;
            return;
        }
        throw new RuntimeException("reject init process: " + clientConfig.f89461c + ", this process is : " + this.mClientConfig.f89461c);
    }

    public boolean isInit() {
        return this.mBoundApplication != null;
    }

    public void loadXposed(Context context) {
    }

    @Override // com.xinzhu.overmind.client.c
    public IBinder peekService(Intent intent) {
        return com.xinzhu.overmind.server.b.b().k(intent);
    }

    public void registerReceivers(Application application) {
        try {
            Intent intent = new Intent();
            intent.setPackage(application.getPackageName());
            for (ResolveInfo resolveInfo : Overmind.getMindPackageManager().w(intent, 64, null, getUserId())) {
                try {
                    String str = resolveInfo.activityInfo.processName;
                    if (str == null || str.equals(getVProcessName())) {
                        this.mInitialApplication.registerReceiver((BroadcastReceiver) this.mInitialApplication.getClassLoader().loadClass(resolveInfo.activityInfo.name).newInstance(), resolveInfo.filter);
                    }
                } catch (Throwable th) {
                    y.a(TAG, "Unable to registerReceiver " + resolveInfo.activityInfo.name + ": " + th.toString());
                }
            }
        } catch (Throwable th2) {
            th2.printStackTrace();
        }
    }

    @Override // com.xinzhu.overmind.client.c
    public void restartJobService(String str) throws RemoteException {
    }

    @Override // com.xinzhu.overmind.client.c
    public void stopService(Intent intent) {
        com.xinzhu.overmind.server.b.b().stopService(intent);
    }

    @Override // com.xinzhu.overmind.client.c
    public void bindApplication() {
        if (isInit()) {
            return;
        }
        bindApplication(getVPackageName(), getVProcessName());
    }
}
