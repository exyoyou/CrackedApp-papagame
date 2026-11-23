package io.netty.util.concurrent;

import io.netty.util.internal.DefaultPriorityQueue;
import io.netty.util.internal.PriorityQueueNode;
import io.netty.util.internal.StringUtil;
import java.util.concurrent.Callable;
import java.util.concurrent.Delayed;
import java.util.concurrent.TimeUnit;

/* JADX INFO: loaded from: classes.dex */
final class ScheduledFutureTask<V> extends PromiseTask<V> implements ScheduledFuture<V>, PriorityQueueNode {
    static final /* synthetic */ boolean $assertionsDisabled = false;
    private static final long START_TIME = System.nanoTime();
    private long deadlineNanos;

    /* JADX INFO: renamed from: id, reason: collision with root package name */
    private long f91666id;
    private final long periodNanos;
    private int queueIndex;

    ScheduledFutureTask(AbstractScheduledEventExecutor abstractScheduledEventExecutor, Runnable runnable, long j10) {
        super(abstractScheduledEventExecutor, runnable);
        this.queueIndex = -1;
        this.deadlineNanos = j10;
        this.periodNanos = 0L;
    }

    static long deadlineNanos(long j10) {
        long jNanoTime = nanoTime() + j10;
        if (jNanoTime < 0) {
            return Long.MAX_VALUE;
        }
        return jNanoTime;
    }

    static long deadlineToDelayNanos(long j10) {
        if (j10 == 0) {
            return 0L;
        }
        return Math.max(0L, j10 - nanoTime());
    }

    static long initialNanoTime() {
        return START_TIME;
    }

    static long nanoTime() {
        return System.nanoTime() - START_TIME;
    }

    private AbstractScheduledEventExecutor scheduledExecutor() {
        return (AbstractScheduledEventExecutor) executor();
    }

    private static long validatePeriod(long j10) {
        if (j10 != 0) {
            return j10;
        }
        throw new IllegalArgumentException("period: 0 (expected: != 0)");
    }

    @Override // io.netty.util.concurrent.PromiseTask, io.netty.util.concurrent.DefaultPromise, io.netty.util.concurrent.Future, java.util.concurrent.Future
    public boolean cancel(boolean z10) {
        boolean zCancel = super.cancel(z10);
        if (zCancel) {
            scheduledExecutor().removeScheduled(this);
        }
        return zCancel;
    }

    boolean cancelWithoutRemove(boolean z10) {
        return super.cancel(z10);
    }

    public long delayNanos() {
        return deadlineToDelayNanos(deadlineNanos());
    }

    @Override // io.netty.util.concurrent.DefaultPromise
    protected EventExecutor executor() {
        return super.executor();
    }

    @Override // java.util.concurrent.Delayed
    public long getDelay(TimeUnit timeUnit) {
        return timeUnit.convert(delayNanos(), TimeUnit.NANOSECONDS);
    }

    @Override // io.netty.util.internal.PriorityQueueNode
    public int priorityQueueIndex(DefaultPriorityQueue<?> defaultPriorityQueue) {
        return this.queueIndex;
    }

    @Override // io.netty.util.concurrent.PromiseTask, java.util.concurrent.RunnableFuture, java.lang.Runnable
    public void run() {
        try {
            if (delayNanos() > 0) {
                if (isCancelled()) {
                    scheduledExecutor().scheduledTaskQueue().removeTyped(this);
                    return;
                } else {
                    scheduledExecutor().scheduleFromEventLoop(this);
                    return;
                }
            }
            if (this.periodNanos == 0) {
                if (setUncancellableInternal()) {
                    setSuccessInternal(runTask());
                }
            } else {
                if (isCancelled()) {
                    return;
                }
                runTask();
                if (executor().isShutdown()) {
                    return;
                }
                long j10 = this.periodNanos;
                if (j10 > 0) {
                    this.deadlineNanos += j10;
                } else {
                    this.deadlineNanos = nanoTime() - this.periodNanos;
                }
                if (isCancelled()) {
                    return;
                }
                scheduledExecutor().scheduledTaskQueue().add(this);
            }
        } catch (Throwable th) {
            setFailureInternal(th);
        }
    }

    void setConsumed() {
        if (this.periodNanos == 0) {
            this.deadlineNanos = 0L;
        }
    }

    ScheduledFutureTask<V> setId(long j10) {
        if (this.f91666id == 0) {
            this.f91666id = j10;
        }
        return this;
    }

    @Override // io.netty.util.concurrent.PromiseTask, io.netty.util.concurrent.DefaultPromise
    protected StringBuilder toStringBuilder() {
        StringBuilder stringBuilder = super.toStringBuilder();
        stringBuilder.setCharAt(stringBuilder.length() - 1, StringUtil.COMMA);
        stringBuilder.append(" deadline: ");
        stringBuilder.append(this.deadlineNanos);
        stringBuilder.append(", period: ");
        stringBuilder.append(this.periodNanos);
        stringBuilder.append(')');
        return stringBuilder;
    }

    @Override // java.lang.Comparable
    public int compareTo(Delayed delayed) {
        if (this == delayed) {
            return 0;
        }
        ScheduledFutureTask scheduledFutureTask = (ScheduledFutureTask) delayed;
        long jDeadlineNanos = deadlineNanos() - scheduledFutureTask.deadlineNanos();
        if (jDeadlineNanos < 0) {
            return -1;
        }
        return (jDeadlineNanos <= 0 && this.f91666id < scheduledFutureTask.f91666id) ? -1 : 1;
    }

    public long deadlineNanos() {
        return this.deadlineNanos;
    }

    public long delayNanos(long j10) {
        if (this.deadlineNanos == 0) {
            return 0L;
        }
        return Math.max(0L, deadlineNanos() - (j10 - START_TIME));
    }

    @Override // io.netty.util.internal.PriorityQueueNode
    public void priorityQueueIndex(DefaultPriorityQueue<?> defaultPriorityQueue, int i10) {
        this.queueIndex = i10;
    }

    ScheduledFutureTask(AbstractScheduledEventExecutor abstractScheduledEventExecutor, Runnable runnable, long j10, long j11) {
        super(abstractScheduledEventExecutor, runnable);
        this.queueIndex = -1;
        this.deadlineNanos = j10;
        this.periodNanos = validatePeriod(j11);
    }

    ScheduledFutureTask(AbstractScheduledEventExecutor abstractScheduledEventExecutor, Callable<V> callable, long j10, long j11) {
        super(abstractScheduledEventExecutor, callable);
        this.queueIndex = -1;
        this.deadlineNanos = j10;
        this.periodNanos = validatePeriod(j11);
    }

    ScheduledFutureTask(AbstractScheduledEventExecutor abstractScheduledEventExecutor, Callable<V> callable, long j10) {
        super(abstractScheduledEventExecutor, callable);
        this.queueIndex = -1;
        this.deadlineNanos = j10;
        this.periodNanos = 0L;
    }
}
