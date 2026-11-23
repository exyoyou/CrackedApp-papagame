package de.robv.android.xposed.callbacks;

import de.robv.android.xposed.IXposedHookInitPackageResources;
import de.robv.android.xposed.XposedBridge;

/* JADX INFO: loaded from: classes8.dex */
public abstract class XC_InitPackageResources extends XCallback implements IXposedHookInitPackageResources {

    public static final class InitPackageResourcesParam extends XCallback.Param {
        public String packageName;

        public InitPackageResourcesParam(XposedBridge.CopyOnWriteSortedSet<XC_InitPackageResources> copyOnWriteSortedSet) {
            super(copyOnWriteSortedSet);
        }
    }

    public XC_InitPackageResources() {
    }

    @Override // de.robv.android.xposed.callbacks.XCallback
    protected void call(XCallback.Param param) throws Throwable {
        if (param instanceof InitPackageResourcesParam) {
            handleInitPackageResources((InitPackageResourcesParam) param);
        }
    }

    public XC_InitPackageResources(int i10) {
        super(i10);
    }
}
