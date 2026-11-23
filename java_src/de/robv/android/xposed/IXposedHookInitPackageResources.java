package de.robv.android.xposed;

import de.robv.android.xposed.callbacks.XC_InitPackageResources;

/* JADX INFO: loaded from: classes8.dex */
public interface IXposedHookInitPackageResources extends IXposedMod {

    public static final class Wrapper extends XC_InitPackageResources {
        private final IXposedHookInitPackageResources instance;

        public Wrapper(IXposedHookInitPackageResources iXposedHookInitPackageResources) {
            this.instance = iXposedHookInitPackageResources;
        }

        @Override // de.robv.android.xposed.IXposedHookInitPackageResources
        public void handleInitPackageResources(XC_InitPackageResources.InitPackageResourcesParam initPackageResourcesParam) throws Throwable {
            this.instance.handleInitPackageResources(initPackageResourcesParam);
        }
    }

    void handleInitPackageResources(XC_InitPackageResources.InitPackageResourcesParam initPackageResourcesParam) throws Throwable;
}
