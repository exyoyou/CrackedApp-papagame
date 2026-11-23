package com.swift.sandhook.xposedcompat;

import android.app.Application;
import android.content.Context;
import com.swift.sandhook.xposedcompat.classloaders.ProxyClassLoader;
import com.swift.sandhook.xposedcompat.methodgen.DynamicBridge;
import com.swift.sandhook.xposedcompat.utils.ApplicationUtils;
import com.swift.sandhook.xposedcompat.utils.DexMakerUtils;
import com.swift.sandhook.xposedcompat.utils.FileUtils;
import com.swift.sandhook.xposedcompat.utils.ProcessUtils;
import de.robv.android.xposed.IXposedHookLoadPackage;
import de.robv.android.xposed.XposedBridge;
import de.robv.android.xposed.XposedInit;
import de.robv.android.xposed.callbacks.XC_LoadPackage;
import de.robv.android.xposed.callbacks.XCallback;
import java.io.File;

/* JADX INFO: loaded from: classes3.dex */
public class XposedCompat {
    public static File cacheDir = null;
    public static volatile ClassLoader classLoader = null;
    public static Context context = null;
    public static boolean isFirstApplication = false;
    public static String packageName = null;
    public static String processName = null;
    public static volatile boolean retryWhenCallOriginError = false;
    private static ClassLoader sandHookXposedClassLoader = null;
    public static volatile boolean useInternalStub = true;
    public static volatile boolean useNewCallBackup = true;

    public static void addXposedModuleCallback(IXposedHookLoadPackage iXposedHookLoadPackage) {
        XposedBridge.hookLoadPackage(new IXposedHookLoadPackage.Wrapper(iXposedHookLoadPackage));
    }

    public static void callXposedModuleInit() throws Throwable {
        XC_LoadPackage.LoadPackageParam loadPackageParam = new XC_LoadPackage.LoadPackageParam(XposedBridge.sLoadedPackageCallbacks);
        Application applicationCurrentApplication = ApplicationUtils.currentApplication();
        if (applicationCurrentApplication != null) {
            if (loadPackageParam.packageName == null) {
                loadPackageParam.packageName = applicationCurrentApplication.getPackageName();
            }
            if (loadPackageParam.processName == null) {
                loadPackageParam.processName = ProcessUtils.getProcessName(applicationCurrentApplication);
            }
            if (loadPackageParam.classLoader == null) {
                loadPackageParam.classLoader = applicationCurrentApplication.getClassLoader();
            }
            if (loadPackageParam.appInfo == null) {
                loadPackageParam.appInfo = applicationCurrentApplication.getApplicationInfo();
            }
            if (cacheDir == null) {
                applicationCurrentApplication.getCacheDir();
            }
        }
        XCallback.callAll(loadPackageParam);
    }

    public static boolean clearCache() {
        try {
            FileUtils.delete(getCacheDir());
            getCacheDir().mkdirs();
            return true;
        } catch (Throwable unused) {
            return false;
        }
    }

    public static void clearOatCache() {
        DynamicBridge.clearOatFile();
    }

    public static File getCacheDir() {
        if (cacheDir == null) {
            if (context == null) {
                context = ApplicationUtils.currentApplication();
            }
            if (context != null) {
                File cacheDir2 = context.getCacheDir();
                String processName2 = processName;
                if (processName2 == null) {
                    processName2 = ProcessUtils.getProcessName(context);
                }
                cacheDir = new File(cacheDir2, DexMakerUtils.MD5(processName2));
            }
        }
        return cacheDir;
    }

    public static ClassLoader getSandHookXposedClassLoader(ClassLoader classLoader2, ClassLoader classLoader3) {
        ClassLoader classLoader4 = sandHookXposedClassLoader;
        if (classLoader4 != null) {
            return classLoader4;
        }
        ProxyClassLoader proxyClassLoader = new ProxyClassLoader(classLoader3, classLoader2);
        sandHookXposedClassLoader = proxyClassLoader;
        return proxyClassLoader;
    }

    public static void loadModule(String str, String str2, String str3, ClassLoader classLoader2) {
        XposedInit.loadModule(str, str2, str3, classLoader2);
    }
}
