package io.netty.channel.epoll;

import io.netty.channel.EventLoopGroup;
import io.netty.channel.EventLoopTaskQueueFactory;
import io.netty.channel.SelectStrategy;
import io.netty.channel.SingleThreadEventLoop;
import io.netty.channel.unix.FileDescriptor;
import io.netty.channel.unix.IovArray;
import io.netty.util.IntSupplier;
import io.netty.util.collection.IntObjectHashMap;
import io.netty.util.collection.IntObjectMap;
import io.netty.util.concurrent.AbstractScheduledEventExecutor;
import io.netty.util.concurrent.RejectedExecutionHandler;
import io.netty.util.internal.ObjectUtil;
import io.netty.util.internal.PlatformDependent;
import io.netty.util.internal.logging.InternalLogger;
import io.netty.util.internal.logging.InternalLoggerFactory;
import java.io.IOException;
import java.util.Queue;
import java.util.concurrent.Executor;
import java.util.concurrent.atomic.AtomicLong;

/* JADX INFO: loaded from: classes.dex */
class EpollEventLoop extends SingleThreadEventLoop {
    static final /* synthetic */ boolean $assertionsDisabled = false;
    private static final long AWAKE = -1;
    private static final long MAX_SCHEDULED_TIMERFD_NS = 999999999;
    private static final long NONE = Long.MAX_VALUE;
    private static final InternalLogger logger = InternalLoggerFactory.getInstance((Class<?>) EpollEventLoop.class);
    private final boolean allowGrowing;
    private final IntObjectMap<AbstractEpollChannel> channels;
    private NativeDatagramPacketArray datagramPacketArray;
    private final FileDescriptor epollFd;
    private final FileDescriptor eventFd;
    private final EpollEventArray events;
    private volatile int ioRatio;
    private IovArray iovArray;
    private final AtomicLong nextWakeupNanos;
    private boolean pendingWakeup;
    private final IntSupplier selectNowSupplier;
    private final SelectStrategy selectStrategy;
    private final FileDescriptor timerFd;

    static {
        Epoll.ensureAvailability();
    }

    EpollEventLoop(EventLoopGroup eventLoopGroup, Executor executor, int i10, SelectStrategy selectStrategy, RejectedExecutionHandler rejectedExecutionHandler, EventLoopTaskQueueFactory eventLoopTaskQueueFactory) throws Throwable {
        FileDescriptor fileDescriptor;
        FileDescriptor fileDescriptorNewEventFd;
        super(eventLoopGroup, executor, false, newTaskQueue(eventLoopTaskQueueFactory), newTaskQueue(eventLoopTaskQueueFactory), rejectedExecutionHandler);
        this.channels = new IntObjectHashMap(4096);
        this.selectNowSupplier = new IntSupplier() { // from class: io.netty.channel.epoll.EpollEventLoop.1
            @Override // io.netty.util.IntSupplier
            public int get() throws Exception {
                return EpollEventLoop.this.epollWaitNow();
            }
        };
        this.nextWakeupNanos = new AtomicLong(-1L);
        this.ioRatio = 50;
        this.selectStrategy = (SelectStrategy) ObjectUtil.checkNotNull(selectStrategy, "strategy");
        if (i10 == 0) {
            this.allowGrowing = true;
            this.events = new EpollEventArray(4096);
        } else {
            this.allowGrowing = false;
            this.events = new EpollEventArray(i10);
        }
        FileDescriptor fileDescriptorNewTimerFd = null;
        try {
            FileDescriptor fileDescriptorNewEpollCreate = Native.newEpollCreate();
            try {
                this.epollFd = fileDescriptorNewEpollCreate;
                fileDescriptorNewEventFd = Native.newEventFd();
                try {
                    this.eventFd = fileDescriptorNewEventFd;
                    try {
                        int iIntValue = fileDescriptorNewEpollCreate.intValue();
                        int iIntValue2 = fileDescriptorNewEventFd.intValue();
                        int i11 = Native.EPOLLIN;
                        int i12 = Native.EPOLLET;
                        Native.epollCtlAdd(iIntValue, iIntValue2, i11 | i12);
                        fileDescriptorNewTimerFd = Native.newTimerFd();
                        this.timerFd = fileDescriptorNewTimerFd;
                        try {
                            Native.epollCtlAdd(fileDescriptorNewEpollCreate.intValue(), fileDescriptorNewTimerFd.intValue(), i11 | i12);
                        } catch (IOException e10) {
                            throw new IllegalStateException("Unable to add timerFd filedescriptor to epoll", e10);
                        }
                    } catch (IOException e11) {
                        throw new IllegalStateException("Unable to add eventFd filedescriptor to epoll", e11);
                    }
                } catch (Throwable th) {
                    th = th;
                    fileDescriptor = fileDescriptorNewTimerFd;
                    fileDescriptorNewTimerFd = fileDescriptorNewEpollCreate;
                    if (fileDescriptorNewTimerFd != null) {
                        try {
                            fileDescriptorNewTimerFd.close();
                        } catch (Exception unused) {
                        }
                    }
                    if (fileDescriptorNewEventFd != null) {
                        try {
                            fileDescriptorNewEventFd.close();
                        } catch (Exception unused2) {
                        }
                    }
                    if (fileDescriptor == null) {
                        throw th;
                    }
                    try {
                        fileDescriptor.close();
                        throw th;
                    } catch (Exception unused3) {
                        throw th;
                    }
                }
            } catch (Throwable th2) {
                th = th2;
                fileDescriptorNewEventFd = null;
                fileDescriptorNewTimerFd = fileDescriptorNewEpollCreate;
                fileDescriptor = null;
            }
        } catch (Throwable th3) {
            th = th3;
            fileDescriptor = null;
            fileDescriptorNewEventFd = null;
        }
    }

    private void closeAll() {
        for (AbstractEpollChannel abstractEpollChannel : (AbstractEpollChannel[]) this.channels.values().toArray(new AbstractEpollChannel[0])) {
            abstractEpollChannel.unsafe().close(abstractEpollChannel.unsafe().voidPromise());
        }
    }

    private int epollBusyWait() throws IOException {
        return Native.epollBusyWait(this.epollFd, this.events);
    }

    private int epollWait(long j10) throws IOException {
        if (j10 == Long.MAX_VALUE) {
            return Native.epollWait(this.epollFd, this.events, this.timerFd, Integer.MAX_VALUE, 0);
        }
        long jDeadlineToDelayNanos = AbstractScheduledEventExecutor.deadlineToDelayNanos(j10);
        int iMin = (int) Math.min(jDeadlineToDelayNanos / 1000000000, 2147483647L);
        return Native.epollWait(this.epollFd, this.events, this.timerFd, iMin, (int) Math.min(jDeadlineToDelayNanos - (((long) iMin) * 1000000000), MAX_SCHEDULED_TIMERFD_NS));
    }

    private int epollWaitNoTimerChange() throws IOException {
        return Native.epollWait(this.epollFd, this.events, false);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public int epollWaitNow() throws IOException {
        return Native.epollWait(this.epollFd, this.events, true);
    }

    private int epollWaitTimeboxed() throws IOException {
        return Native.epollWait(this.epollFd, this.events, 1000);
    }

    private static Queue<Runnable> newTaskQueue(EventLoopTaskQueueFactory eventLoopTaskQueueFactory) {
        return eventLoopTaskQueueFactory == null ? newTaskQueue0(SingleThreadEventLoop.DEFAULT_MAX_PENDING_TASKS) : eventLoopTaskQueueFactory.newTaskQueue(SingleThreadEventLoop.DEFAULT_MAX_PENDING_TASKS);
    }

    private static Queue<Runnable> newTaskQueue0(int i10) {
        return i10 == Integer.MAX_VALUE ? PlatformDependent.newMpscQueue() : PlatformDependent.newMpscQueue(i10);
    }

    private boolean processReady(EpollEventArray epollEventArray, int i10) {
        boolean z10 = false;
        for (int i11 = 0; i11 < i10; i11++) {
            int iFd = epollEventArray.fd(i11);
            if (iFd == this.eventFd.intValue()) {
                this.pendingWakeup = false;
            } else if (iFd == this.timerFd.intValue()) {
                z10 = true;
            } else {
                long jEvents = epollEventArray.events(i11);
                AbstractEpollChannel abstractEpollChannel = this.channels.get(iFd);
                if (abstractEpollChannel != null) {
                    AbstractEpollChannel.AbstractEpollUnsafe abstractEpollUnsafe = (AbstractEpollChannel.AbstractEpollUnsafe) abstractEpollChannel.unsafe();
                    int i12 = Native.EPOLLERR;
                    if ((((long) (Native.EPOLLOUT | i12)) & jEvents) != 0) {
                        abstractEpollUnsafe.epollOutReady();
                    }
                    if ((((long) (i12 | Native.EPOLLIN)) & jEvents) != 0) {
                        abstractEpollUnsafe.epollInReady();
                    }
                    if ((jEvents & ((long) Native.EPOLLRDHUP)) != 0) {
                        abstractEpollUnsafe.epollRdHupReady();
                    }
                } else {
                    try {
                        Native.epollCtlDel(this.epollFd.intValue(), iFd);
                    } catch (IOException unused) {
                    }
                }
            }
        }
        return z10;
    }

    void add(AbstractEpollChannel abstractEpollChannel) throws IOException {
        int iIntValue = abstractEpollChannel.socket.intValue();
        Native.epollCtlAdd(this.epollFd.intValue(), iIntValue, abstractEpollChannel.flags);
        this.channels.put(iIntValue, abstractEpollChannel);
    }

    @Override // io.netty.util.concurrent.AbstractScheduledEventExecutor
    protected boolean afterScheduledTaskSubmitted(long j10) {
        return j10 < this.nextWakeupNanos.get();
    }

    @Override // io.netty.util.concurrent.AbstractScheduledEventExecutor
    protected boolean beforeScheduledTaskSubmitted(long j10) {
        return j10 < this.nextWakeupNanos.get();
    }

    NativeDatagramPacketArray cleanDatagramPacketArray() {
        NativeDatagramPacketArray nativeDatagramPacketArray = this.datagramPacketArray;
        if (nativeDatagramPacketArray == null) {
            this.datagramPacketArray = new NativeDatagramPacketArray();
        } else {
            nativeDatagramPacketArray.clear();
        }
        return this.datagramPacketArray;
    }

    IovArray cleanIovArray() {
        IovArray iovArray = this.iovArray;
        if (iovArray == null) {
            this.iovArray = new IovArray();
        } else {
            iovArray.clear();
        }
        return this.iovArray;
    }

    @Override // io.netty.util.concurrent.SingleThreadEventExecutor
    protected void cleanup() {
        while (this.pendingWakeup) {
            try {
                try {
                    int iEpollWaitTimeboxed = epollWaitTimeboxed();
                    if (iEpollWaitTimeboxed == 0) {
                        break;
                    }
                    for (int i10 = 0; i10 < iEpollWaitTimeboxed; i10++) {
                        if (this.events.fd(i10) == this.eventFd.intValue()) {
                            this.pendingWakeup = false;
                            break;
                        }
                    }
                } catch (IOException unused) {
                }
            } catch (Throwable th) {
                IovArray iovArray = this.iovArray;
                if (iovArray != null) {
                    iovArray.release();
                    this.iovArray = null;
                }
                NativeDatagramPacketArray nativeDatagramPacketArray = this.datagramPacketArray;
                if (nativeDatagramPacketArray != null) {
                    nativeDatagramPacketArray.release();
                    this.datagramPacketArray = null;
                }
                this.events.free();
                throw th;
            }
        }
        try {
            this.eventFd.close();
        } catch (IOException e10) {
            logger.warn("Failed to close the event fd.", (Throwable) e10);
        }
        try {
            this.timerFd.close();
        } catch (IOException e11) {
            logger.warn("Failed to close the timer fd.", (Throwable) e11);
        }
        try {
            this.epollFd.close();
        } catch (IOException e12) {
            logger.warn("Failed to close the epoll fd.", (Throwable) e12);
        }
        IovArray iovArray2 = this.iovArray;
        if (iovArray2 != null) {
            iovArray2.release();
            this.iovArray = null;
        }
        NativeDatagramPacketArray nativeDatagramPacketArray2 = this.datagramPacketArray;
        if (nativeDatagramPacketArray2 != null) {
            nativeDatagramPacketArray2.release();
            this.datagramPacketArray = null;
        }
        this.events.free();
    }

    public int getIoRatio() {
        return this.ioRatio;
    }

    void handleLoopException(Throwable th) {
        logger.warn("Unexpected exception in the selector loop.", th);
        try {
            Thread.sleep(1000L);
        } catch (InterruptedException unused) {
        }
    }

    void modify(AbstractEpollChannel abstractEpollChannel) throws IOException {
        Native.epollCtlMod(this.epollFd.intValue(), abstractEpollChannel.socket.intValue(), abstractEpollChannel.flags);
    }

    @Override // io.netty.channel.SingleThreadEventLoop
    public int registeredChannels() {
        return this.channels.size();
    }

    void remove(AbstractEpollChannel abstractEpollChannel) throws IOException {
        int iIntValue = abstractEpollChannel.socket.intValue();
        AbstractEpollChannel abstractEpollChannelRemove = this.channels.remove(iIntValue);
        if (abstractEpollChannelRemove != null && abstractEpollChannelRemove != abstractEpollChannel) {
            this.channels.put(iIntValue, abstractEpollChannelRemove);
        } else if (abstractEpollChannel.isOpen()) {
            Native.epollCtlDel(this.epollFd.intValue(), iIntValue);
        }
    }

    /* JADX WARN: Code duplicated, block: B:18:0x003a A[Catch: all -> 0x00f9, PHI: r4
      0x003a: PHI (r4v11 int) = (r4v5 int), (r4v19 int) binds: [B:11:0x001f, B:16:0x0037] A[DONT_GENERATE, DONT_INLINE], TryCatch #3 {all -> 0x00f9, blocks: (B:3:0x0006, B:46:0x0097, B:56:0x00ae, B:67:0x00e7, B:69:0x00eb, B:71:0x00f3, B:54:0x00aa, B:55:0x00ad, B:58:0x00b4, B:62:0x00c1, B:64:0x00d2, B:65:0x00e1, B:66:0x00e2, B:10:0x001d, B:12:0x0021, B:15:0x0029, B:18:0x003a, B:21:0x0045, B:39:0x007c, B:41:0x0086, B:44:0x0092, B:43:0x0090, B:33:0x0064, B:35:0x006e, B:37:0x0078, B:45:0x0093, B:59:0x00b8, B:50:0x009f), top: B:88:0x0006, inners: #1, #2 }] */
    /* JADX WARN: Code duplicated, block: B:20:0x0044  */
    /* JADX WARN: Code duplicated, block: B:25:0x0051  */
    /* JADX WARN: Code duplicated, block: B:27:0x0055 A[Catch: all -> 0x007b, TRY_LEAVE, TryCatch #4 {all -> 0x007b, blocks: (B:23:0x004b, B:27:0x0055), top: B:89:0x004b }] */
    /* JADX WARN: Code duplicated, block: B:37:0x0078 A[Catch: all -> 0x00f9, TryCatch #3 {all -> 0x00f9, blocks: (B:3:0x0006, B:46:0x0097, B:56:0x00ae, B:67:0x00e7, B:69:0x00eb, B:71:0x00f3, B:54:0x00aa, B:55:0x00ad, B:58:0x00b4, B:62:0x00c1, B:64:0x00d2, B:65:0x00e1, B:66:0x00e2, B:10:0x001d, B:12:0x0021, B:15:0x0029, B:18:0x003a, B:21:0x0045, B:39:0x007c, B:41:0x0086, B:44:0x0092, B:43:0x0090, B:33:0x0064, B:35:0x006e, B:37:0x0078, B:45:0x0093, B:59:0x00b8, B:50:0x009f), top: B:88:0x0006, inners: #1, #2 }] */
    /* JADX WARN: Code duplicated, block: B:82:0x005a A[EXC_TOP_SPLITTER, SYNTHETIC] */
    @Override // io.netty.util.concurrent.SingleThreadEventExecutor
    protected void run() throws IOException {
        long jNextScheduledTaskDeadlineNanos;
        long j10 = Long.MAX_VALUE;
        while (true) {
            try {
                int iCalculateStrategy = this.selectStrategy.calculateStrategy(this.selectNowSupplier, hasTasks());
                try {
                    if (iCalculateStrategy == -3) {
                        iCalculateStrategy = epollBusyWait();
                    } else if (iCalculateStrategy == -2) {
                        continue;
                    } else if (iCalculateStrategy == -1) {
                        if (this.pendingWakeup) {
                            iCalculateStrategy = epollWaitTimeboxed();
                            if (iCalculateStrategy == 0) {
                                logger.warn("Missed eventfd write (not seen after > 1 second)");
                                this.pendingWakeup = false;
                                if (!hasTasks()) {
                                    jNextScheduledTaskDeadlineNanos = nextScheduledTaskDeadlineNanos();
                                    if (jNextScheduledTaskDeadlineNanos == -1) {
                                        jNextScheduledTaskDeadlineNanos = Long.MAX_VALUE;
                                    }
                                    this.nextWakeupNanos.set(jNextScheduledTaskDeadlineNanos);
                                    if (!hasTasks()) {
                                        if (jNextScheduledTaskDeadlineNanos == j10) {
                                            iCalculateStrategy = epollWaitNoTimerChange();
                                        } else {
                                            iCalculateStrategy = epollWait(jNextScheduledTaskDeadlineNanos);
                                            j10 = jNextScheduledTaskDeadlineNanos;
                                        }
                                    }
                                    if (this.nextWakeupNanos.get() != -1) {
                                        this.pendingWakeup = true;
                                    } else {
                                        this.pendingWakeup = true;
                                    }
                                }
                            }
                        } else {
                            jNextScheduledTaskDeadlineNanos = nextScheduledTaskDeadlineNanos();
                            if (jNextScheduledTaskDeadlineNanos == -1) {
                                jNextScheduledTaskDeadlineNanos = Long.MAX_VALUE;
                            }
                            this.nextWakeupNanos.set(jNextScheduledTaskDeadlineNanos);
                            try {
                                if (!hasTasks()) {
                                    if (jNextScheduledTaskDeadlineNanos == j10) {
                                        iCalculateStrategy = epollWaitNoTimerChange();
                                    } else {
                                        try {
                                            iCalculateStrategy = epollWait(jNextScheduledTaskDeadlineNanos);
                                            j10 = jNextScheduledTaskDeadlineNanos;
                                        } catch (Throwable th) {
                                            th = th;
                                            if (this.nextWakeupNanos.get() == -1 || this.nextWakeupNanos.getAndSet(-1L) == -1) {
                                                this.pendingWakeup = true;
                                            }
                                            throw th;
                                        }
                                    }
                                }
                                if (this.nextWakeupNanos.get() != -1 || this.nextWakeupNanos.getAndSet(-1L) == -1) {
                                    this.pendingWakeup = true;
                                }
                            } catch (Throwable th2) {
                                th = th2;
                            }
                        }
                    }
                    if (isShuttingDown()) {
                        closeAll();
                        if (confirmShutdown()) {
                            return;
                        }
                    } else {
                        continue;
                    }
                } catch (Throwable th3) {
                    handleLoopException(th3);
                }
                int i10 = this.ioRatio;
                if (i10 == 100) {
                    if (iCalculateStrategy > 0) {
                        try {
                            if (processReady(this.events, iCalculateStrategy)) {
                                j10 = Long.MAX_VALUE;
                            }
                        } catch (Throwable th4) {
                            runAllTasks();
                            throw th4;
                        }
                    }
                    runAllTasks();
                } else if (iCalculateStrategy > 0) {
                    long jNanoTime = System.nanoTime();
                    try {
                        if (processReady(this.events, iCalculateStrategy)) {
                            j10 = Long.MAX_VALUE;
                        }
                        runAllTasks(((System.nanoTime() - jNanoTime) * ((long) (100 - i10))) / ((long) i10));
                    } catch (Throwable th5) {
                        runAllTasks(((System.nanoTime() - jNanoTime) * ((long) (100 - i10))) / ((long) i10));
                        throw th5;
                    }
                } else {
                    runAllTasks(0L);
                }
                if (this.allowGrowing && iCalculateStrategy == this.events.length()) {
                    this.events.increase();
                }
            } catch (Throwable th6) {
                handleLoopException(th6);
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
        if (z10 || this.nextWakeupNanos.getAndSet(-1L) == -1) {
            return;
        }
        Native.eventFdWrite(this.eventFd.intValue(), 1L);
    }

    @Override // io.netty.util.concurrent.SingleThreadEventExecutor
    protected Queue<Runnable> newTaskQueue(int i10) {
        return newTaskQueue0(i10);
    }
}
