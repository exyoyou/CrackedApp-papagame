package com.xinzhu.overmind;

import android.annotation.SuppressLint;
import android.app.ActivityManager;
import android.content.Context;
import android.content.Intent;
import android.content.pm.ApplicationInfo;
import android.content.pm.PackageInfo;
import android.content.pm.PackageManager;
import android.graphics.Bitmap;
import android.net.Uri;
import android.os.Build;
import android.os.Bundle;
import android.os.Environment;
import android.os.IBinder;
import android.os.Process;
import com.byazt.hv.TTDownloadField;
import com.haima.hmcp.widgets.AbsIjkVideoView;
import com.join.mgps.Util.o0;
import com.swift.sandhook.HookLog;
import com.swift.sandhook.SandHook;
import com.swift.sandhook.SandHookConfig;
import com.swift.sandhook.xposedcompat.XposedCompat;
import com.xinzhu.haunted.android.content.pm.f;
import com.xinzhu.overmind.client.VMCore;
import com.xinzhu.overmind.custom.CustomCallback;
import com.xinzhu.overmind.entity.pm.InstallOption;
import com.xinzhu.overmind.entity.pm.InstallResult;
import com.xinzhu.overmind.entity.pm.InstalledModule;
import com.xinzhu.overmind.hiddenapibypass.HiddenApiBypass;
import com.xinzhu.overmind.server.DaemonService;
import com.xinzhu.overmind.server.pm.MindPackageManagerService;
import com.xinzhu.overmind.server.user.MindUserHandle;
import com.xinzhu.overmind.server.user.MindUserInfo;
import com.xinzhu.overmind.utils.l;
import com.xinzhu.overmind.utils.wrappers.ContentProviderWrapper;
import com.xinzhu.overmind.utils.x;
import java.io.File;
import java.io.IOException;
import java.lang.reflect.Member;
import java.lang.reflect.Method;
import java.util.HashMap;
import java.util.Iterator;
import java.util.List;
import java.util.Map;
import ma.e;
import ma.g;
import ma.h;
import ma.i;
import sa.s;

/* JADX INFO: loaded from: classes8.dex */
@SuppressLint({"StaticFieldLeak"})
public class Overmind extends com.xinzhu.overmind.client.a {
    static final /* synthetic */ boolean $assertionsDisabled = false;
    public static final String TAG = "Overmind";
    private static f hostPm;
    private static Context sContext;
    private com.xinzhu.overmind.client.a mClientConfiguration;
    private Thread.UncaughtExceptionHandler mExceptionHandler;
    private ProcessType mProcessType;
    private static Overmind sOvermind = new Overmind();
    private static int hostRealUid = Process.myUid();
    private Map<String, IBinder> mServices = new HashMap();
    private com.xinzhu.overmind.client.hook.a mAppLifecycleCallback = com.xinzhu.overmind.client.hook.a.f89280a;
    private com.xinzhu.overmind.client.hook.delegate.a mActivityLifecycleCallback = com.xinzhu.overmind.client.hook.delegate.a.f89309b;
    private CustomCallback mCustomCallback = null;

    private enum ProcessType {
        Server,
        MAppClient,
        Main,
        PluginMonitor,
        Others
    }

    class a implements Runnable {
        a() {
        }

        @Override // java.lang.Runnable
        public void run() {
            Intent intent = new Intent();
            intent.setClassName("com.tencent.mm", "com.tencent.mm.ipcinvoker.wx_extension.service.ToolsProcessIPCService");
            Intent intentStartService = Overmind.getMindActivityManager().startService(intent, null, 0, 0);
            if (intentStartService != null) {
                intentStartService.putExtra(AbsIjkVideoView.JSON_TAG_OPERATION, "start_service");
                Overmind.getContext().startService(intentStartService);
            }
        }
    }

    class b implements SandHook.HookModeCallBack {
        b() {
        }

        @Override // com.swift.sandhook.SandHook.HookModeCallBack
        public int hookMode(Member member) {
            return Build.VERSION.SDK_INT >= 30 ? 2 : 0;
        }
    }

    class c implements IBinder.DeathRecipient {
        c() {
        }

        @Override // android.os.IBinder.DeathRecipient
        public void binderDied() {
            com.xinzhu.overmind.b.c(Overmind.TAG, ":mind process dead, finish this process.");
            Process.killProcess(Process.myPid());
        }
    }

    class d implements Runnable {

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        final /* synthetic */ Intent f89162b;

        /* JADX INFO: renamed from: c, reason: collision with root package name */
        final /* synthetic */ int f89163c;

        d(Intent intent, int i10) {
            this.f89162b = intent;
            this.f89163c = i10;
        }

        @Override // java.lang.Runnable
        public void run() {
            Overmind.this.startActivity(this.f89162b, this.f89163c);
        }
    }

    public static void critical(String str) {
        throw new RuntimeException(str);
    }

    public static Overmind get() {
        return sOvermind;
    }

    public static Context getContext() {
        return sContext;
    }

    public static String getHostPkg() {
        return get().getHostPackageName();
    }

    public static f getHostPm() {
        return hostPm;
    }

    public static int getHostUid() {
        return hostRealUid;
    }

    public static int getHostUserId() {
        return MindUserHandle.x(hostRealUid);
    }

    public static String getMainPkg() {
        return get().getMainPackageName();
    }

    public static ma.a getMindActivityManager() {
        return ma.a.d();
    }

    public static e getMindJobManager() {
        return e.c();
    }

    public static g getMindPackageManager() {
        return g.d();
    }

    public static h getMindStorageManager() {
        return h.a();
    }

    public static String getOvermindBuildDate() {
        return pa.a.f96256g;
    }

    public static PackageManager getPackageManager() {
        return sContext.getPackageManager();
    }

    public static String getPluginPkg() {
        return get().getPluginPackageName();
    }

    /* JADX WARN: Code duplicated, block: B:13:0x0049 A[RETURN] */
    /* JADX WARN: Code duplicated, block: B:14:0x004a  */
    private static String getProcessName(Context context) {
        String str;
        try {
            String strJ = com.xinzhu.haunted.android.app.g.J();
            com.xinzhu.overmind.b.c(TAG, "get process name " + strJ);
            return strJ;
        } catch (Throwable th) {
            th.printStackTrace();
            int iMyPid = Process.myPid();
            for (ActivityManager.RunningAppProcessInfo runningAppProcessInfo : ((ActivityManager) context.getSystemService(TTDownloadField.TT_ACTIVITY)).getRunningAppProcesses()) {
                if (runningAppProcessInfo.pid == iMyPid) {
                    str = runningAppProcessInfo.processName;
                    if (str != null) {
                        return str;
                    }
                    throw new RuntimeException("processName = null");
                }
            }
            str = null;
            if (str != null) {
                return str;
            }
            throw new RuntimeException("processName = null");
        }
    }

    public static void getStackTraceElement() {
        StackTraceElement[] stackTrace = Thread.currentThread().getStackTrace();
        for (int i10 = 1; i10 < stackTrace.length; i10++) {
            StackTraceElement stackTraceElement = stackTrace[i10];
            System.out.println("\tat " + stackTraceElement.getClassName() + o0.f49827a + stackTraceElement.getMethodName() + "(" + stackTraceElement.getFileName() + ":" + stackTraceElement.getLineNumber() + ")");
        }
    }

    private void initHostPm(Context context) {
        hostPm = new f(com.xinzhu.haunted.android.app.g.P());
    }

    private void initJarEnv() {
        try {
            l.e(getContext().getAssets().open("junit.jar"), com.xinzhu.overmind.a.f89172h);
        } catch (IOException e10) {
            e10.printStackTrace();
        }
    }

    public static void initJavaHooks() {
        VMCore.initLibrary();
        try {
            if (da.a.e().c()) {
                SandHookConfig.DEBUG = da.a.e().g().booleanValue();
            } else {
                SandHookConfig.DEBUG = false;
            }
        } catch (Throwable th) {
            th.printStackTrace();
        }
        HookLog.DEBUG = false;
        SandHookConfig.SDK_INT = Build.VERSION.SDK_INT;
        SandHookConfig.compiler = SandHookConfig.SDK_INT < 26;
        SandHookConfig.delayHook = false;
        SandHook.setHookModeCallBack(new b());
        SandHook.disableVMInline();
        XposedCompat.cacheDir = new File(getContext().getCacheDir(), "hook_cache");
    }

    private void initService() {
        get().getService(com.xinzhu.overmind.server.l.f89689c);
        get().getService(com.xinzhu.overmind.server.l.f89692f);
        get().getService(com.xinzhu.overmind.server.l.f89693g);
        get().getService(com.xinzhu.overmind.server.l.f89690d);
    }

    @SuppressLint({"NewApi"})
    public static boolean is64Bit() {
        return com.xinzhu.overmind.utils.e.c() ? Process.is64Bit() : Build.CPU_ABI.equals("arm64-v8a");
    }

    public static boolean isInPlugin() {
        return is64Bit() == get().use32BitMainPackage();
    }

    private boolean isMAppClientProcess(String str) {
        String str2 = this.mClientConfiguration.getHostPackageName() + ":p";
        if (str.startsWith(str2)) {
            try {
                Integer.parseInt(str.substring(str2.length()));
                return true;
            } catch (NumberFormatException unused) {
            }
        }
        return false;
    }

    public static boolean isOvermindPkg(String str) {
        return getMainPkg().equals(str) || getPluginPkg().equals(str);
    }

    public static boolean isPkgInstalledOutside(String str) {
        try {
            return (com.xinzhu.overmind.utils.e.j() ? hostPm.g(str, 0L, getHostUserId()) : hostPm.f(str, 0, getHostUserId())) != null;
        } catch (Exception unused) {
        }
    }

    public static boolean isPluginPkgInstalled() {
        if (isPkgInstalledOutside(getPluginPkg())) {
            return get().mClientConfiguration.isPluginValid();
        }
        return false;
    }

    public static Object mainThread() {
        return com.xinzhu.haunted.android.app.g.F();
    }

    private void startLogcat() {
        File file = new File(Environment.getExternalStoragePublicDirectory(Environment.DIRECTORY_DOWNLOADS), getContext().getPackageName() + "_logcat.txt");
        l.j(file);
        x.b("logcat -c", false);
        x.b("logcat >> " + file.getAbsolutePath() + " &", false);
    }

    @SuppressLint({"NewApi"})
    private static void unsealReflectionRestrictions() {
        if (com.xinzhu.overmind.utils.e.g()) {
            HiddenApiBypass.addHiddenApiExemptions("L");
            return;
        }
        if (com.xinzhu.overmind.utils.e.z()) {
            try {
                Class cls = (Class) Class.class.getDeclaredMethod("forName", String.class).invoke(null, "dalvik.system.VMRuntime");
                Method declaredMethod = Class.class.getDeclaredMethod("getDeclaredMethod", String.class, Class[].class);
                ((Method) declaredMethod.invoke(cls, "setHiddenApiExemptions", new Class[]{String[].class})).invoke(((Method) declaredMethod.invoke(cls, "getRuntime", new Class[0])).invoke(null, new Object[0]), new String[]{"L"});
            } catch (Throwable th) {
                th.printStackTrace();
                critical("reflect unsealing failed");
            }
        }
    }

    public MindUserInfo createUser(int i10) {
        return i.d().a(i10);
    }

    public void deleteUser(int i10) {
        i.d().b(i10);
    }

    @SuppressLint({"NewApi"})
    public void doAttachBaseContext(Context context, com.xinzhu.overmind.client.a aVar) {
        String str = TAG;
        com.xinzhu.overmind.b.a(str, "doAttachBaseContext begin");
        if (aVar == null) {
            throw new IllegalArgumentException("ClientConfiguration is null!");
        }
        if (this.mClientConfiguration != null) {
            com.xinzhu.overmind.b.c(str, "doAttachBaseContext second time, skip.");
            return;
        }
        initHostPm(context);
        this.mClientConfiguration = aVar;
        unsealReflectionRestrictions();
        sContext = context;
        String processName = getProcessName(getContext());
        if (processName.equals(getMainPkg())) {
            this.mProcessType = ProcessType.Main;
        } else if (processName.endsWith(":mind")) {
            this.mProcessType = ProcessType.Server;
        } else if (processName.endsWith(":plugin_monitor")) {
            this.mProcessType = ProcessType.PluginMonitor;
            if (!get().ifDisablePluginPackageAutoManage()) {
                com.xinzhu.overmind.plugin.b.p();
            }
        } else if (isMAppClientProcess(processName)) {
            this.mProcessType = ProcessType.MAppClient;
            initJavaHooks();
        } else {
            this.mProcessType = ProcessType.Others;
        }
        if (!isServerProcess()) {
            initService();
        } else if (!get().ifDisableDaemonService()) {
            Intent intent = new Intent();
            intent.setClass(getContext(), DaemonService.class);
            if (com.xinzhu.overmind.utils.e.x()) {
                getContext().startForegroundService(intent);
            } else {
                getContext().startService(intent);
            }
        }
        if (get().isVirtualProcess() || get().isMonitorProcess()) {
            try {
                getService(com.xinzhu.overmind.server.l.f89689c).linkToDeath(new c(), 0);
            } catch (Throwable th) {
                th.printStackTrace();
            }
        }
        com.xinzhu.overmind.client.hook.c.c().d();
    }

    public void doCreate() {
        if (isVirtualProcess()) {
            com.xinzhu.overmind.client.hook.delegate.b.d();
        }
    }

    public void doTransferInstalls() {
        getMindPackageManager().b();
    }

    public void doTransferInstallsOnlyForMainPackage() {
        getMindPackageManager().c();
    }

    public com.xinzhu.overmind.client.hook.delegate.a getActivityLifecycleCallback() {
        return this.mActivityLifecycleCallback;
    }

    public com.xinzhu.overmind.client.hook.a getAppLifecycleCallback() {
        return this.mAppLifecycleCallback;
    }

    public CustomCallback getCustomCallback() {
        return this.mCustomCallback;
    }

    public Thread.UncaughtExceptionHandler getExceptionHandler() {
        return this.mExceptionHandler;
    }

    @Override // com.xinzhu.overmind.client.a
    public String getHostPackageName() {
        return this.mClientConfiguration.getHostPackageName();
    }

    public List<ApplicationInfo> getInstalledApplications(int i10, int i11) {
        return getMindPackageManager().g(i10, i11);
    }

    public List<PackageInfo> getInstalledPackages(int i10, int i11) {
        return getMindPackageManager().h(i10, i11);
    }

    public List<InstalledModule> getInstalledXPModules() {
        return null;
    }

    @Override // com.xinzhu.overmind.client.a
    public String getMainAuthorityPrefix() {
        return this.mClientConfiguration.getMainAuthorityPrefix();
    }

    @Override // com.xinzhu.overmind.client.a
    public String getMainPackageName() {
        return this.mClientConfiguration.getMainPackageName();
    }

    @Override // com.xinzhu.overmind.client.a
    public Bitmap getNotificationLargeIcon() {
        return this.mClientConfiguration.getNotificationLargeIcon();
    }

    @Override // com.xinzhu.overmind.client.a
    public int getNotificationSmallIcon() {
        return this.mClientConfiguration.getNotificationSmallIcon();
    }

    @Override // com.xinzhu.overmind.client.a
    public String getPluginAuthorityPrefix() {
        return this.mClientConfiguration.getPluginAuthorityPrefix();
    }

    @Override // com.xinzhu.overmind.client.a
    public String getPluginPackageName() {
        return this.mClientConfiguration.getPluginPackageName();
    }

    public List<ActivityManager.RecentTaskInfo> getRecentTasksContainPlugin(int i10, int i11) {
        List<ActivityManager.RecentTaskInfo> recentTasks = ((ActivityManager) getContext().getSystemService(TTDownloadField.TT_ACTIVITY)).getRecentTasks(i10, i11);
        List<ActivityManager.RecentTaskInfo> listJ = com.xinzhu.overmind.plugin.b.j(i10, i11);
        if (listJ != null) {
            recentTasks.addAll(listJ);
        }
        return recentTasks;
    }

    public List<ActivityManager.RunningAppProcessInfo> getRunningAppProcessesContainPlugin() {
        List<ActivityManager.RunningAppProcessInfo> runningAppProcesses = ((ActivityManager) getContext().getSystemService(TTDownloadField.TT_ACTIVITY)).getRunningAppProcesses();
        List<ActivityManager.RunningAppProcessInfo> listK = com.xinzhu.overmind.plugin.b.k();
        if (listK != null) {
            runningAppProcesses.addAll(listK);
        }
        return runningAppProcesses;
    }

    public IBinder getService(String str) {
        if (isServerProcess()) {
            return com.xinzhu.overmind.server.l.b(str);
        }
        IBinder iBinder = this.mServices.get(str);
        if (iBinder != null && iBinder.isBinderAlive()) {
            return iBinder;
        }
        Bundle bundle = new Bundle();
        bundle.putString("_VM_|_server_name_", str);
        IBinder iBinderB = s.b(ContentProviderWrapper.acquire(com.xinzhu.overmind.client.g.a(), "VM", null, bundle), "_VM_|_server_");
        this.mServices.put(str, iBinderB);
        return iBinderB;
    }

    public List<MindUserInfo> getUsers() {
        return i.d().f();
    }

    public boolean hostCheckPermission(String str, boolean z10) {
        if (z10) {
            return hostPm.a(str, getPluginPackageName(), getHostUserId()) == 0;
        }
        return hostPm.a(str, getMainPackageName(), getHostUserId()) == 0;
    }

    @Override // com.xinzhu.overmind.client.a
    public boolean ifDisableDaemonService() {
        return this.mClientConfiguration.ifDisableDaemonService();
    }

    @Override // com.xinzhu.overmind.client.a
    public boolean ifDisablePluginPackageAutoManage() {
        return this.mClientConfiguration.ifDisablePluginPackageAutoManage();
    }

    @Override // com.xinzhu.overmind.client.a
    public boolean ifDisableVirtualDeviceForPackage(String str, int i10) {
        return this.mClientConfiguration.ifDisableVirtualDeviceForPackage(str, i10);
    }

    public InstallResult installPackageAsUser_Exist(String str, int i10) {
        com.xinzhu.overmind.b.c(TAG, "installPackageAsUser_Exist pkg: " + str + " user: " + i10);
        if (get().isInstalled(str)) {
            return getMindPackageManager().r(str, i10);
        }
        return new InstallResult().a("installPackageAsUser_Exist package non-exist: " + str);
    }

    public InstallResult installPackageAsUser_Storage(File file, int i10) {
        return getMindPackageManager().s(file.getAbsolutePath(), InstallOption.b(), i10);
    }

    public InstallResult installPackageAsUser_System(String str, int i10) {
        try {
            return getMindPackageManager().s(getPackageManager().getPackageInfo(str, 0).applicationInfo.sourceDir, InstallOption.d(), i10);
        } catch (PackageManager.NameNotFoundException e10) {
            e10.printStackTrace();
            return new InstallResult().a(e10.getMessage());
        }
    }

    public InstallResult installXPModule(File file) {
        return getMindPackageManager().s(file.getAbsolutePath(), InstallOption.b().y(), -4);
    }

    @Override // com.xinzhu.overmind.client.a
    public boolean isHideRoot() {
        return this.mClientConfiguration.isHideRoot();
    }

    @Override // com.xinzhu.overmind.client.a
    public boolean isHideXposed() {
        return this.mClientConfiguration.isHideXposed();
    }

    public boolean isInstalled(String str, int i10) {
        return getMindPackageManager().t(str, i10);
    }

    public boolean isInstalledXposedModule(String str) {
        return false;
    }

    public boolean isMainProcess() {
        return this.mProcessType == ProcessType.Main;
    }

    public boolean isModuleEnable(String str) {
        return false;
    }

    public boolean isMonitorProcess() {
        return this.mProcessType == ProcessType.PluginMonitor;
    }

    @Override // com.xinzhu.overmind.client.a
    public boolean isPluginValid() {
        return this.mClientConfiguration.isPluginValid();
    }

    public boolean isServerProcess() {
        return this.mProcessType == ProcessType.Server;
    }

    @Override // com.xinzhu.overmind.client.a
    public boolean isUseGlobalFakePath() {
        return this.mClientConfiguration.isUseGlobalFakePath();
    }

    public boolean isVirtualProcess() {
        return this.mProcessType == ProcessType.MAppClient;
    }

    public boolean isXPEnable() {
        return false;
    }

    public boolean isXposedModule(File file) {
        return false;
    }

    public boolean launchApk(String str, int i10) {
        Intent intentJ;
        if ((getMindPackageManager().k(str).E() && !com.xinzhu.overmind.plugin.b.i()) || (intentJ = getMindPackageManager().j(str, i10)) == null) {
            return false;
        }
        new Thread(new d(intentJ, i10)).start();
        return true;
    }

    public void preStartMM() {
        if (isInstalled("com.tencent.mm")) {
            na.e.e().post(new a());
        }
    }

    public void setActivityLifecycleCallback(com.xinzhu.overmind.client.hook.delegate.a aVar) {
        if (aVar == null) {
            throw new IllegalArgumentException("activityLifecycleCallback is null!");
        }
        this.mActivityLifecycleCallback = aVar;
    }

    public void setAppLifecycleCallback(com.xinzhu.overmind.client.hook.a aVar) {
        if (aVar == null) {
            throw new IllegalArgumentException("AppLifecycleCallback is null!");
        }
        this.mAppLifecycleCallback = aVar;
    }

    public void setCustomCallback(CustomCallback customCallback) {
        if (customCallback == null) {
            throw new IllegalArgumentException("customCallback is null!");
        }
        this.mCustomCallback = customCallback;
    }

    public void setExceptionHandler(Thread.UncaughtExceptionHandler uncaughtExceptionHandler) {
        this.mExceptionHandler = uncaughtExceptionHandler;
    }

    public void setModuleEnable(String str, boolean z10) {
    }

    public void setXPEnable(boolean z10) {
    }

    public void startActivity(Intent intent, int i10) {
        getMindActivityManager().startActivity(intent, i10);
    }

    public void stopApk(String str, int i10) {
        ma.a.d().A(str, i10);
    }

    public void uninstallPackage(String str) {
        getMindPackageManager().E(str);
    }

    public void uninstallPackageAsUser(String str, int i10) {
        getMindPackageManager().F(str, i10);
    }

    public void uninstallXPModule(String str) {
        uninstallPackage(str);
    }

    @Override // com.xinzhu.overmind.client.a
    public boolean use32BitMainPackage() {
        return this.mClientConfiguration.use32BitMainPackage();
    }

    @Override // com.xinzhu.overmind.client.a
    public boolean useRandomGeneratedVirtualDevice() {
        return this.mClientConfiguration.useRandomGeneratedVirtualDevice();
    }

    public InstallResult installPackageAsUser_Storage(Uri uri, int i10) {
        return getMindPackageManager().s(uri.toString(), InstallOption.b().w(), i10);
    }

    public InstallResult installXPModule(Uri uri) {
        return getMindPackageManager().s(uri.toString(), InstallOption.b().y().w(), -4);
    }

    public boolean isInstalled(String str) {
        if (get().isServerProcess()) {
            Iterator<MindUserInfo> it2 = com.xinzhu.overmind.server.user.c.get().getUsers().iterator();
            while (it2.hasNext()) {
                if (MindPackageManagerService.get().isInstalled(str, it2.next().f89950b)) {
                    return true;
                }
            }
            return false;
        }
        Iterator<MindUserInfo> it3 = i.d().f().iterator();
        while (it3.hasNext()) {
            if (getMindPackageManager().t(str, it3.next().f89950b)) {
                return true;
            }
        }
        return false;
    }

    public InstallResult installXPModule(String str) {
        try {
            return getMindPackageManager().s(getPackageManager().getPackageInfo(str, 0).applicationInfo.sourceDir, InstallOption.d().y(), -4);
        } catch (PackageManager.NameNotFoundException e10) {
            e10.printStackTrace();
            return new InstallResult().a(e10.getMessage());
        }
    }
}
