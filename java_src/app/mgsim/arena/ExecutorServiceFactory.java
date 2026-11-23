package app.mgsim.arena;

import java.util.concurrent.ExecutorService;
import java.util.concurrent.Executors;

/* JADX INFO: loaded from: classes7.dex */
public class ExecutorServiceFactory {
    private static ExecutorService mExecutors = Executors.newCachedThreadPool();

    public static ExecutorService getThreadPool() {
        return mExecutors;
    }
}
