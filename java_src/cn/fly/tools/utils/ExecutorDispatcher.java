package cn.fly.tools.utils;

import android.os.Handler;
import android.os.Looper;
import android.text.TextUtils;
import cn.fly.tools.FlyLog;
import cn.fly.tools.proguard.PublicMemberKeeper;
import java.util.concurrent.ExecutorService;
import java.util.concurrent.Executors;
import java.util.concurrent.LinkedBlockingQueue;
import java.util.concurrent.SynchronousQueue;
import java.util.concurrent.ThreadPoolExecutor;
import java.util.concurrent.TimeUnit;

/* JADX INFO: loaded from: classes7.dex */
public class ExecutorDispatcher implements PublicMemberKeeper, IExecutor {
    private static volatile ExecutorDispatcher instance;
    private final IExecutor defaultExecutor = new DefaultExecutorImpl();

    private static final class DefaultExecutorImpl implements IExecutor {
        private static final int N_THREADS = 2;
        private final ExecutorService ductileService;
        private final ExecutorService immediatelyService;
        private final Handler innerHandler;
        private final ExecutorService serialService;

        @Override // cn.fly.tools.utils.IExecutor
        public <T extends SafeRunnable> void executeDelayed(final T t10, long j10) {
            if (t10 == null) {
                return;
            }
            try {
                this.innerHandler.postDelayed(new SafeRunnable() { // from class: cn.fly.tools.utils.ExecutorDispatcher.DefaultExecutorImpl.1
                    @Override // cn.fly.tools.utils.ExecutorDispatcher.SafeRunnable
                    public void safeRun() {
                        DefaultExecutorImpl.this.executeImmediately(t10);
                    }
                }, j10);
            } catch (Throwable th) {
                FlyLog.getInstance().d(th);
            }
        }

        @Override // cn.fly.tools.utils.IExecutor
        public <T extends SafeRunnable> void executeDuctile(T t10) {
            try {
                this.ductileService.execute(t10);
            } catch (Throwable th) {
                FlyLog.getInstance().d(th);
            }
        }

        @Override // cn.fly.tools.utils.IExecutor
        public <T extends SafeRunnable> void executeImmediately(T t10) {
            try {
                this.immediatelyService.execute(t10);
            } catch (Throwable th) {
                FlyLog.getInstance().d(th);
            }
        }

        @Override // cn.fly.tools.utils.IExecutor
        public <T extends SafeRunnable> void executeSerial(T t10) {
            try {
                this.serialService.execute(t10);
            } catch (Throwable th) {
                FlyLog.getInstance().d(th);
            }
        }

        private DefaultExecutorImpl() {
            this.innerHandler = new Handler(Looper.getMainLooper());
            TimeUnit timeUnit = TimeUnit.SECONDS;
            ThreadPoolExecutor threadPoolExecutor = new ThreadPoolExecutor(2, Integer.MAX_VALUE, 10L, timeUnit, new SynchronousQueue());
            threadPoolExecutor.allowCoreThreadTimeOut(true);
            this.immediatelyService = threadPoolExecutor;
            this.ductileService = new ThreadPoolExecutor(2, 2, 10L, timeUnit, new LinkedBlockingQueue());
            this.serialService = Executors.newSingleThreadExecutor();
        }
    }

    public static abstract class SafeRunnable implements Runnable {
        public void afterRun() {
        }

        public void beforeRun() {
        }

        public void handleException(Throwable th) {
        }

        public String name() {
            return "";
        }

        @Override // java.lang.Runnable
        public void run() {
            try {
                String strName = name();
                if (!TextUtils.isEmpty(strName)) {
                    Thread.currentThread().setName(strName);
                }
                beforeRun();
                safeRun();
                afterRun();
            } catch (Throwable th) {
                try {
                    handleException(th);
                } catch (Throwable unused) {
                }
            }
        }

        public abstract void safeRun();
    }

    private ExecutorDispatcher() {
    }

    public static IExecutor getInstance() {
        if (instance == null) {
            synchronized (ExecutorDispatcher.class) {
                if (instance == null) {
                    instance = new ExecutorDispatcher();
                }
            }
        }
        return instance;
    }

    @Override // cn.fly.tools.utils.IExecutor
    public <T extends SafeRunnable> void executeDelayed(T t10, long j10) {
        if (t10 == null) {
            return;
        }
        try {
            if (j10 <= 0) {
                this.defaultExecutor.executeDuctile(t10);
            } else {
                this.defaultExecutor.executeDelayed(t10, j10);
            }
        } catch (Throwable th) {
            FlyLog.getInstance().d(th);
        }
    }

    @Override // cn.fly.tools.utils.IExecutor
    public <T extends SafeRunnable> void executeDuctile(T t10) {
        if (t10 == null) {
            return;
        }
        try {
            this.defaultExecutor.executeDuctile(t10);
        } catch (Throwable th) {
            FlyLog.getInstance().d(th);
        }
    }

    @Override // cn.fly.tools.utils.IExecutor
    public <T extends SafeRunnable> void executeImmediately(T t10) {
        if (t10 == null) {
            return;
        }
        try {
            this.defaultExecutor.executeImmediately(t10);
        } catch (Throwable th) {
            FlyLog.getInstance().d(th);
        }
    }

    @Override // cn.fly.tools.utils.IExecutor
    public <T extends SafeRunnable> void executeSerial(T t10) {
        if (t10 == null) {
            return;
        }
        try {
            this.defaultExecutor.executeSerial(t10);
        } catch (Throwable th) {
            FlyLog.getInstance().d(th);
        }
    }
}
