package dalvik.system;

/* JADX INFO: loaded from: classes8.dex */
public class VMRuntime {
    public static VMRuntime getRuntime() {
        throw new IllegalArgumentException("stub");
    }

    public native void setHiddenApiExemptions(String[] strArr);
}
