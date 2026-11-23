package com.bykv.vk.component.ttvideo.utils;

import com.byazt.bwm.x;
import com.byazt.jtc.uj;
import java.util.concurrent.ExecutorService;
import java.util.concurrent.LinkedBlockingQueue;
import java.util.concurrent.ThreadPoolExecutor;
import java.util.concurrent.TimeUnit;

/* JADX INFO: loaded from: classes9.dex */
public class EngineThreadPool {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private static ThreadPoolExecutor f23285a;

    public static ExecutorService a() {
        if (f23285a == null) {
            synchronized (EngineThreadPool.class) {
                if (f23285a == null) {
                    uj ujVar = new uj(5, 5, 60L, TimeUnit.SECONDS, new LinkedBlockingQueue(), new x("EngineThreadPool"));
                    f23285a = ujVar;
                    ujVar.allowCoreThreadTimeOut(true);
                }
            }
        }
        return f23285a;
    }

    public static void setExcutorInstance(ThreadPoolExecutor threadPoolExecutor) {
        synchronized (EngineThreadPool.class) {
            f23285a = threadPoolExecutor;
        }
    }
}
