package de.robv.android.xposed;

/* JADX INFO: loaded from: classes8.dex */
public interface IXposedHookZygoteInit extends IXposedMod {

    public static final class StartupParam {
        public String modulePath;
        public boolean startsSystemServer;

        StartupParam() {
        }
    }

    void initZygote(StartupParam startupParam) throws Throwable;
}
