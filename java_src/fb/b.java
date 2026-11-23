package fb;

import android.os.Looper;

/* JADX INFO: loaded from: classes8.dex */
public final class b {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private static Thread f91174a;

    private b() {
    }

    public static void a() {
        if (!b()) {
            throw new IllegalStateException("Must be called on the Main thread.");
        }
    }

    public static boolean b() {
        if (f91174a == null) {
            f91174a = Looper.getMainLooper().getThread();
        }
        return Thread.currentThread() == f91174a;
    }
}
