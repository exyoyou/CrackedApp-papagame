package io.netty.channel.kqueue;

import io.netty.channel.EventLoopGroup;
import io.netty.channel.EventLoopTaskQueueFactory;
import io.netty.channel.SelectStrategy;
import io.netty.channel.SingleThreadEventLoop;
import io.netty.channel.unix.FileDescriptor;
import io.netty.channel.unix.IovArray;
import io.netty.util.IntSupplier;
import io.netty.util.collection.IntObjectHashMap;
import io.netty.util.collection.IntObjectMap;
import io.netty.util.concurrent.RejectedExecutionHandler;
import io.netty.util.internal.ObjectUtil;
import io.netty.util.internal.PlatformDependent;
import io.netty.util.internal.logging.InternalLogger;
import io.netty.util.internal.logging.InternalLoggerFactory;
import java.io.IOException;
import java.util.Queue;
import java.util.concurrent.Executor;
import java.util.concurrent.atomic.AtomicIntegerFieldUpdater;

/* JADX INFO: loaded from: classes.dex */
final class KQueueEventLoop extends SingleThreadEventLoop {
    static final /* synthetic */ boolean $assertionsDisabled = false;
    private static final int KQUEUE_WAKE_UP_IDENT = 0;
    private final boolean allowGrowing;
    private final KQueueEventArray changeList;
    private final IntObjectMap<AbstractKQueueChannel> channels;
    private final KQueueEventArray eventList;
    private volatile int ioRatio;
    private final IovArray iovArray;
    private final FileDescriptor kqueueFd;
    private final IntSupplier selectNowSupplier;
    private final SelectStrategy selectStrategy;
    private volatile int wakenUp;
    private static final InternalLogger logger = InternalLoggerFactory.getInstance((Class<?>) KQueueEventLoop.class);
    private static final AtomicIntegerFieldUpdater<KQueueEventLoop> WAKEN_UP_UPDATER = AtomicIntegerFieldUpdater.newUpdater(KQueueEventLoop.class, "wakenUp");

    static {
        KQueue.ensureAvailability();
    }

    KQueueEventLoop(EventLoopGroup eventLoopGroup, Executor executor, int i10, SelectStrategy selectStrategy, RejectedExecutionHandler rejectedExecutionHandler, EventLoopTaskQueueFactory eventLoopTaskQueueFactory) {
        super(eventLoopGroup, executor, false, newTaskQueue(eventLoopTaskQueueFactory), newTaskQueue(eventLoopTaskQueueFactory), rejectedExecutionHandler);
        this.iovArray = new IovArray();
        this.selectNowSupplier = new IntSupplier() { // from class: io.netty.channel.kqueue.KQueueEventLoop.1
            @Override // io.netty.util.IntSupplier
            public int get() throws Exception {
                return KQueueEventLoop.this.kqueueWaitNow();
            }
        };
        this.channels = new IntObjectHashMap(4096);
        this.ioRatio = 50;
        this.selectStrategy = (SelectStrategy) ObjectUtil.checkNotNull(selectStrategy, "strategy");
        FileDescriptor fileDescriptorNewKQueue = Native.newKQueue();
        this.kqueueFd = fileDescriptorNewKQueue;
        if (i10 == 0) {
            this.allowGrowing = true;
            i10 = 4096;
        } else {
            this.allowGrowing = false;
        }
        this.changeList = new KQueueEventArray(i10);
        this.eventList = new KQueueEventArray(i10);
        int iKeventAddUserEvent = Native.keventAddUserEvent(fileDescriptorNewKQueue.intValue(), 0);
        if (iKeventAddUserEvent >= 0) {
            return;
        }
        cleanup();
        throw new IllegalStateException("kevent failed to add user event with errno: " + (-iKeventAddUserEvent));
    }

    private void closeAll() {
        try {
            kqueueWaitNow();
        } catch (IOException unused) {
        }
        for (AbstractKQueueChannel abstractKQueueChannel : (AbstractKQueueChannel[]) this.channels.values().toArray(new AbstractKQueueChannel[0])) {
            abstractKQueueChannel.unsafe().close(abstractKQueueChannel.unsafe().voidPromise());
        }
    }

    private static void handleLoopException(Throwable th) {
        logger.warn("Unexpected exception in the selector loop.", th);
        try {
            Thread.sleep(1000L);
        } catch (InterruptedException unused) {
        }
    }

    private int kqueueWait(boolean z10) throws IOException {
        if (z10 && hasTasks()) {
            return kqueueWaitNow();
        }
        long jDelayNanos = delayNanos(System.nanoTime());
        int iMin = (int) Math.min(jDelayNanos / 1000000000, 2147483647L);
        return kqueueWait(iMin, (int) Math.min(jDelayNanos - (((long) iMin) * 1000000000), 2147483647L));
    }

    /* JADX INFO: Access modifiers changed from: private */
    public int kqueueWaitNow() throws IOException {
        return kqueueWait(0, 0);
    }

    private static Queue<Runnable> newTaskQueue(EventLoopTaskQueueFactory eventLoopTaskQueueFactory) {
        return eventLoopTaskQueueFactory == null ? newTaskQueue0(SingleThreadEventLoop.DEFAULT_MAX_PENDING_TASKS) : eventLoopTaskQueueFactory.newTaskQueue(SingleThreadEventLoop.DEFAULT_MAX_PENDING_TASKS);
    }

    private static Queue<Runnable> newTaskQueue0(int i10) {
        return i10 == Integer.MAX_VALUE ? PlatformDependent.newMpscQueue() : PlatformDependent.newMpscQueue(i10);
    }

    private void processReady(int i10) {
        for (int i11 = 0; i11 < i10; i11++) {
            short sFilter = this.eventList.filter(i11);
            short sFlags = this.eventList.flags(i11);
            int iFd = this.eventList.fd(i11);
            if (sFilter != Native.EVFILT_USER && (Native.EV_ERROR & sFlags) == 0) {
                AbstractKQueueChannel abstractKQueueChannel = this.channels.get(iFd);
                if (abstractKQueueChannel == null) {
                    logger.warn("events[{}]=[{}, {}] had no channel!", Integer.valueOf(i11), Integer.valueOf(this.eventList.fd(i11)), Short.valueOf(sFilter));
                } else {
                    AbstractKQueueChannel.AbstractKQueueUnsafe abstractKQueueUnsafe = (AbstractKQueueChannel.AbstractKQueueUnsafe) abstractKQueueChannel.unsafe();
                    if (sFilter == Native.EVFILT_WRITE) {
                        abstractKQueueUnsafe.writeReady();
                    } else if (sFilter == Native.EVFILT_READ) {
                        abstractKQueueUnsafe.readReady(this.eventList.data(i11));
                    } else if (sFilter == Native.EVFILT_SOCK && (this.eventList.fflags(i11) & Native.NOTE_RDHUP) != 0) {
                        abstractKQueueUnsafe.readEOF();
                    }
                    if ((Native.EV_EOF & sFlags) != 0) {
                        abstractKQueueUnsafe.readEOF();
                    }
                }
            }
        }
    }

    void add(AbstractKQueueChannel abstractKQueueChannel) {
        this.channels.put(abstractKQueueChannel.fd().intValue(), abstractKQueueChannel);
    }

    IovArray cleanArray() {
        this.iovArray.clear();
        return this.iovArray;
    }

    @Override // io.netty.util.concurrent.SingleThreadEventExecutor
    protected void cleanup() {
        try {
            try {
                this.kqueueFd.close();
            } catch (IOException e10) {
                logger.warn("Failed to close the kqueue fd.", (Throwable) e10);
            }
        } finally {
            this.changeList.free();
            this.eventList.free();
        }
    }

    void evSet(AbstractKQueueChannel abstractKQueueChannel, short s10, short s11, int i10) {
        this.changeList.evSet(abstractKQueueChannel, s10, s11, i10);
    }

    public int getIoRatio() {
        return this.ioRatio;
    }

    @Override // io.netty.channel.SingleThreadEventLoop
    public int registeredChannels() {
        return this.channels.size();
    }

    void remove(AbstractKQueueChannel abstractKQueueChannel) throws Exception {
        int iIntValue = abstractKQueueChannel.fd().intValue();
        AbstractKQueueChannel abstractKQueueChannelRemove = this.channels.remove(iIntValue);
        if (abstractKQueueChannelRemove != null && abstractKQueueChannelRemove != abstractKQueueChannel) {
            this.channels.put(iIntValue, abstractKQueueChannelRemove);
        } else if (abstractKQueueChannel.isOpen()) {
            abstractKQueueChannel.unregisterFilters();
        }
    }

    /* JADX WARN: Code duplicated, block: B:19:0x0034 A[DONT_INVERT] */
    /* JADX WARN: Code duplicated, block: B:26:0x0043 A[Catch: all -> 0x007f, TRY_LEAVE, TryCatch #3 {all -> 0x007f, blocks: (B:2:0x0000, B:16:0x002e, B:25:0x003f, B:34:0x006d, B:36:0x0071, B:38:0x0079, B:23:0x003b, B:24:0x003e, B:26:0x0043, B:33:0x005e, B:31:0x004e, B:32:0x005d, B:9:0x0017, B:13:0x0023, B:15:0x002b, B:20:0x0036, B:28:0x0049), top: B:55:0x0000, inners: #1, #2 }] */
    /* JADX WARN: Code duplicated, block: B:51:0x0036 A[EXC_TOP_SPLITTER, SYNTHETIC] */
    /* JADX WARN: Code duplicated, block: B:53:0x0049 A[EXC_TOP_SPLITTER, SYNTHETIC] */
    /* JADX WARN: Code duplicated, block: B:58:0x0089 A[SYNTHETIC] */
    /* JADX WARN: Code duplicated, block: B:59:0x0092 A[SYNTHETIC] */
    /* JADX WARN: Code duplicated, block: B:63:0x0000 A[SYNTHETIC] */
    /* JADX WARN: Code duplicated, block: B:64:0x0000 A[SYNTHETIC] */
    @Override // io.netty.util.concurrent.SingleThreadEventExecutor
    protected void run() {
        int i10;
        while (true) {
            try {
                try {
                    int iCalculateStrategy = this.selectStrategy.calculateStrategy(this.selectNowSupplier, hasTasks());
                    if (iCalculateStrategy != -3) {
                        if (iCalculateStrategy == -2) {
                            continue;
                        } else {
                            if (iCalculateStrategy != -1) {
                            }
                            i10 = this.ioRatio;
                            if (i10 == 100) {
                                if (iCalculateStrategy > 0) {
                                    try {
                                        processReady(iCalculateStrategy);
                                    } catch (Throwable th) {
                                        runAllTasks();
                                        throw th;
                                    }
                                }
                                runAllTasks();
                            } else {
                                long jNanoTime = System.nanoTime();
                                if (iCalculateStrategy > 0) {
                                    try {
                                        processReady(iCalculateStrategy);
                                    } catch (Throwable th2) {
                                        runAllTasks(((System.nanoTime() - jNanoTime) * ((long) (100 - i10))) / ((long) i10));
                                        throw th2;
                                    }
                                }
                                runAllTasks(((System.nanoTime() - jNanoTime) * ((long) (100 - i10))) / ((long) i10));
                            }
                            if (this.allowGrowing && iCalculateStrategy == this.eventList.capacity()) {
                                this.eventList.realloc(false);
                            }
                            if (isShuttingDown()) {
                                closeAll();
                                if (confirmShutdown()) {
                                    return;
                                }
                            } else {
                                continue;
                            }
                        }
                    }
                    iCalculateStrategy = kqueueWait(WAKEN_UP_UPDATER.getAndSet(this, 0) == 1);
                    if (this.wakenUp == 1) {
                        wakeup();
                    }
                    i10 = this.ioRatio;
                    if (i10 == 100) {
                        if (iCalculateStrategy > 0) {
                            processReady(iCalculateStrategy);
                        }
                        runAllTasks();
                    } else {
                        long jNanoTime2 = System.nanoTime();
                        if (iCalculateStrategy > 0) {
                            processReady(iCalculateStrategy);
                        }
                        runAllTasks(((System.nanoTime() - jNanoTime2) * ((long) (100 - i10))) / ((long) i10));
                    }
                    if (this.allowGrowing) {
                        this.eventList.realloc(false);
                    }
                } catch (Throwable th3) {
                    handleLoopException(th3);
                }
                if (isShuttingDown()) {
                    closeAll();
                    if (confirmShutdown()) {
                        return;
                    }
                } else {
                    continue;
                }
            } catch (Throwable th4) {
                handleLoopException(th4);
            }
        }
    }

    public void setIoRatio(int i10) {
        if (i10 > 0 && i10 <= 100) {
            this.ioRatio = i10;
            return;
        }
        throw new IllegalArgumentException("ioRatio: " + i10 + " (expected: 0 < ioRatio <= 100)");
    }

    @Override // io.netty.util.concurrent.SingleThreadEventExecutor
    protected void wakeup(boolean z10) {
        if (z10 || !WAKEN_UP_UPDATER.compareAndSet(this, 0, 1)) {
            return;
        }
        wakeup();
    }

    private void wakeup() {
        Native.keventTriggerUserEvent(this.kqueueFd.intValue(), 0);
    }

    @Override // io.netty.util.concurrent.SingleThreadEventExecutor
    protected Queue<Runnable> newTaskQueue(int i10) {
        return newTaskQueue0(i10);
    }

    private int kqueueWait(int i10, int i11) throws IOException {
        int iKeventWait = Native.keventWait(this.kqueueFd.intValue(), this.changeList, this.eventList, i10, i11);
        this.changeList.clear();
        return iKeventWait;
    }
}
