package de.robv.android.xposed;

/* JADX INFO: loaded from: classes8.dex */
public interface IXposedHookCmdInit extends IXposedMod {

    public static final class StartupParam {
        public String modulePath;
        public String startClassName;

        StartupParam() {
        }
    }

    void initCmdApp(StartupParam startupParam) throws Throwable;
}
