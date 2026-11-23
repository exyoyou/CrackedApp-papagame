package de.robv.android.xposed.callbacks;

import android.content.pm.ApplicationInfo;
import com.swift.sandhook.xposedcompat.XposedCompat;
import de.robv.android.xposed.IXposedHookLoadPackage;
import de.robv.android.xposed.XposedBridge;

/* JADX INFO: loaded from: classes8.dex */
public abstract class XC_LoadPackage extends XCallback implements IXposedHookLoadPackage {

    public static final class LoadPackageParam extends XCallback.Param {
        public ApplicationInfo appInfo;
        public ClassLoader classLoader;
        public boolean isFirstApplication;
        public String packageName;
        public String processName;

        public LoadPackageParam(XposedBridge.CopyOnWriteSortedSet<XC_LoadPackage> copyOnWriteSortedSet) {
            super(copyOnWriteSortedSet);
            this.packageName = XposedCompat.packageName;
            this.processName = XposedCompat.processName;
            this.classLoader = XposedCompat.classLoader;
            this.appInfo = XposedCompat.context.getApplicationInfo();
            this.isFirstApplication = XposedCompat.isFirstApplication;
        }
    }

    public XC_LoadPackage() {
    }

    @Override // de.robv.android.xposed.callbacks.XCallback
    protected void call(XCallback.Param param) throws Throwable {
        if (param instanceof LoadPackageParam) {
            handleLoadPackage((LoadPackageParam) param);
        }
    }

    public XC_LoadPackage(int i10) {
        super(i10);
    }
}
