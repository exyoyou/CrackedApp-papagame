package com.haima.hmcp.cloud.job;

import com.haima.hmcp.utils.LogUtils;
import java.util.Queue;
import java.util.concurrent.ConcurrentLinkedQueue;
import java.util.concurrent.ExecutorService;
import java.util.concurrent.Executors;
import java.util.concurrent.Future;

/* JADX INFO: loaded from: classes5.dex */
public class JobExecutor {
    private static final String TAG = "JobExecutor";
    private Future<?> currentFuture;
    private ExecutorService executorService = Executors.newSingleThreadExecutor();
    private Queue<Runnable> jobQueue = new ConcurrentLinkedQueue();
    private volatile boolean isRunning = false;

    public synchronized void addJob(Runnable runnable) {
        this.jobQueue.add(runnable);
    }

    public synchronized void cancelAllJobs() {
        Future<?> future = this.currentFuture;
        if (future != null) {
            future.cancel(true);
            this.currentFuture = null;
        }
        this.jobQueue.clear();
        this.isRunning = false;
    }

    public void executeJob(Runnable runnable) {
        LogUtils.d(TAG, "jobQueue isEmpty");
        this.currentFuture = this.executorService.submit(runnable);
    }

    public boolean isRunning() {
        return this.isRunning;
    }

    public void setRunning(boolean z10) {
        this.isRunning = z10;
    }

    public synchronized void shutdown() {
        cancelAllJobs();
        this.executorService.shutdownNow();
    }

    public void startNextJob() {
        if (this.jobQueue.isEmpty()) {
            this.isRunning = false;
            LogUtils.d(TAG, "jobQueue isEmpty");
            return;
        }
        this.isRunning = true;
        Runnable runnablePoll = this.jobQueue.poll();
        if (runnablePoll != null) {
            executeJob(runnablePoll);
        }
    }
}
