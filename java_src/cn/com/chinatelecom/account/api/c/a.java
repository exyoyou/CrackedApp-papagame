package cn.com.chinatelecom.account.api.c;

import android.os.Handler;
import android.os.Looper;
import java.util.concurrent.Executor;
import java.util.concurrent.Executors;

/* JADX INFO: loaded from: classes7.dex */
public class a {

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private static Executor f789b = Executors.newSingleThreadExecutor();

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public Handler f790a = new Handler(Looper.getMainLooper());

    public static void a(Runnable runnable) {
        f789b.execute(runnable);
    }
}
