package io.netty.channel.nio;

import com.bykv.vk.component.ttvideo.player.C;
import io.netty.channel.ChannelException;
import io.netty.channel.EventLoopException;
import io.netty.channel.EventLoopTaskQueueFactory;
import io.netty.channel.SelectStrategy;
import io.netty.channel.SingleThreadEventLoop;
import io.netty.util.IntSupplier;
import io.netty.util.concurrent.AbstractScheduledEventExecutor;
import io.netty.util.concurrent.RejectedExecutionHandler;
import io.netty.util.internal.ObjectUtil;
import io.netty.util.internal.PlatformDependent;
import io.netty.util.internal.ReflectionUtil;
import io.netty.util.internal.SystemPropertyUtil;
import io.netty.util.internal.logging.InternalLogger;
import io.netty.util.internal.logging.InternalLoggerFactory;
import java.io.IOException;
import java.lang.reflect.Field;
import java.nio.channels.CancelledKeyException;
import java.nio.channels.SelectableChannel;
import java.nio.channels.SelectionKey;
import java.nio.channels.Selector;
import java.nio.channels.spi.AbstractSelector;
import java.nio.channels.spi.SelectorProvider;
import java.security.AccessController;
import java.security.PrivilegedAction;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.Queue;
import java.util.Set;
import java.util.concurrent.Executor;
import java.util.concurrent.atomic.AtomicLong;

/* JADX INFO: loaded from: classes.dex */
public final class NioEventLoop extends SingleThreadEventLoop {
    private static final long AWAKE = -1;
    private static final int CLEANUP_INTERVAL = 256;
    private static final int MIN_PREMATURE_SELECTOR_RETURNS = 3;
    private static final long NONE = Long.MAX_VALUE;
    private static final int SELECTOR_AUTO_REBUILD_THRESHOLD;
    private int cancelledKeys;
    private volatile int ioRatio;
    private boolean needsToSelectAgain;
    private final AtomicLong nextWakeupNanos;
    private final SelectorProvider provider;
    private final IntSupplier selectNowSupplier;
    private final SelectStrategy selectStrategy;
    private SelectedSelectionKeySet selectedKeys;
    private Selector selector;
    private Selector unwrappedSelector;
    private static final InternalLogger logger = InternalLoggerFactory.getInstance((Class<?>) NioEventLoop.class);
    private static final boolean DISABLE_KEY_SET_OPTIMIZATION = SystemPropertyUtil.getBoolean("io.netty.noKeySetOptimization", false);

    static {
        if (SystemPropertyUtil.get("sun.nio.ch.bugLevel") == null) {
            try {
                AccessController.doPrivileged(new PrivilegedAction<Void>() { // from class: io.netty.channel.nio.NioEventLoop.2
                    @Override // java.security.PrivilegedAction
                    public Void run() {
                        System.setProperty("sun.nio.ch.bugLevel", "");
                        return null;
                    }
                });
            } catch (SecurityException e10) {
                logger.debug("Unable to get/set System Property: sun.nio.ch.bugLevel", (Throwable) e10);
            }
        }
        int i10 = SystemPropertyUtil.getInt("io.netty.selectorAutoRebuildThreshold", 512);
        int i11 = i10 >= 3 ? i10 : 0;
        SELECTOR_AUTO_REBUILD_THRESHOLD = i11;
        InternalLogger internalLogger = logger;
        if (internalLogger.isDebugEnabled()) {
            internalLogger.debug("-Dio.netty.noKeySetOptimization: {}", Boolean.valueOf(DISABLE_KEY_SET_OPTIMIZATION));
            internalLogger.debug("-Dio.netty.selectorAutoRebuildThreshold: {}", Integer.valueOf(i11));
        }
    }

    NioEventLoop(NioEventLoopGroup nioEventLoopGroup, Executor executor, SelectorProvider selectorProvider, SelectStrategy selectStrategy, RejectedExecutionHandler rejectedExecutionHandler, EventLoopTaskQueueFactory eventLoopTaskQueueFactory) {
        super(nioEventLoopGroup, executor, false, newTaskQueue(eventLoopTaskQueueFactory), newTaskQueue(eventLoopTaskQueueFactory), rejectedExecutionHandler);
        this.selectNowSupplier = new IntSupplier() { // from class: io.netty.channel.nio.NioEventLoop.1
            @Override // io.netty.util.IntSupplier
            public int get() throws Exception {
                return NioEventLoop.this.selectNow();
            }
        };
        this.nextWakeupNanos = new AtomicLong(-1L);
        this.ioRatio = 50;
        this.provider = (SelectorProvider) ObjectUtil.checkNotNull(selectorProvider, "selectorProvider");
        this.selectStrategy = (SelectStrategy) ObjectUtil.checkNotNull(selectStrategy, "selectStrategy");
        SelectorTuple selectorTupleOpenSelector = openSelector();
        this.selector = selectorTupleOpenSelector.selector;
        this.unwrappedSelector = selectorTupleOpenSelector.unwrappedSelector;
    }

    private void closeAll() {
        selectAgain();
        Set<SelectionKey> setKeys = this.selector.keys();
        ArrayList<AbstractNioChannel> arrayList = new ArrayList(setKeys.size());
        for (SelectionKey selectionKey : setKeys) {
            Object objAttachment = selectionKey.attachment();
            if (objAttachment instanceof AbstractNioChannel) {
                arrayList.add((AbstractNioChannel) objAttachment);
            } else {
                selectionKey.cancel();
                invokeChannelUnregistered((NioTask) objAttachment, selectionKey, null);
            }
        }
        for (AbstractNioChannel abstractNioChannel : arrayList) {
            abstractNioChannel.unsafe().close(abstractNioChannel.unsafe().voidPromise());
        }
    }

    private static void handleLoopException(Throwable th) {
        logger.warn("Unexpected exception in the selector loop.", th);
        try {
            Thread.sleep(1000L);
        } catch (InterruptedException unused) {
        }
    }

    private static void invokeChannelUnregistered(NioTask<SelectableChannel> nioTask, SelectionKey selectionKey, Throwable th) {
        try {
            nioTask.channelUnregistered(selectionKey.channel(), th);
        } catch (Exception e10) {
            logger.warn("Unexpected exception while running NioTask.channelUnregistered()", (Throwable) e10);
        }
    }

    private static Queue<Runnable> newTaskQueue(EventLoopTaskQueueFactory eventLoopTaskQueueFactory) {
        return eventLoopTaskQueueFactory == null ? newTaskQueue0(SingleThreadEventLoop.DEFAULT_MAX_PENDING_TASKS) : eventLoopTaskQueueFactory.newTaskQueue(SingleThreadEventLoop.DEFAULT_MAX_PENDING_TASKS);
    }

    private static Queue<Runnable> newTaskQueue0(int i10) {
        return i10 == Integer.MAX_VALUE ? PlatformDependent.newMpscQueue() : PlatformDependent.newMpscQueue(i10);
    }

    private SelectorTuple openSelector() {
        try {
            final AbstractSelector abstractSelectorOpenSelector = this.provider.openSelector();
            if (DISABLE_KEY_SET_OPTIMIZATION) {
                return new SelectorTuple(abstractSelectorOpenSelector);
            }
            Object objDoPrivileged = AccessController.doPrivileged(new PrivilegedAction<Object>() { // from class: io.netty.channel.nio.NioEventLoop.3
                @Override // java.security.PrivilegedAction
                public Object run() {
                    try {
                        return Class.forName("sun.nio.ch.SelectorImpl", false, PlatformDependent.getSystemClassLoader());
                    } catch (Throwable th) {
                        return th;
                    }
                }
            });
            if (objDoPrivileged instanceof Class) {
                final Class cls = (Class) objDoPrivileged;
                if (cls.isAssignableFrom(abstractSelectorOpenSelector.getClass())) {
                    final SelectedSelectionKeySet selectedSelectionKeySet = new SelectedSelectionKeySet();
                    Object objDoPrivileged2 = AccessController.doPrivileged(new PrivilegedAction<Object>() { // from class: io.netty.channel.nio.NioEventLoop.4
                        @Override // java.security.PrivilegedAction
                        public Object run() {
                            try {
                                Field declaredField = cls.getDeclaredField("selectedKeys");
                                Field declaredField2 = cls.getDeclaredField("publicSelectedKeys");
                                if (PlatformDependent.javaVersion() >= 9 && PlatformDependent.hasUnsafe()) {
                                    long jObjectFieldOffset = PlatformDependent.objectFieldOffset(declaredField);
                                    long jObjectFieldOffset2 = PlatformDependent.objectFieldOffset(declaredField2);
                                    if (jObjectFieldOffset != -1 && jObjectFieldOffset2 != -1) {
                                        PlatformDependent.putObject(abstractSelectorOpenSelector, jObjectFieldOffset, selectedSelectionKeySet);
                                        PlatformDependent.putObject(abstractSelectorOpenSelector, jObjectFieldOffset2, selectedSelectionKeySet);
                                        return null;
                                    }
                                }
                                Throwable thTrySetAccessible = ReflectionUtil.trySetAccessible(declaredField, true);
                                if (thTrySetAccessible != null) {
                                    return thTrySetAccessible;
                                }
                                Throwable thTrySetAccessible2 = ReflectionUtil.trySetAccessible(declaredField2, true);
                                if (thTrySetAccessible2 != null) {
                                    return thTrySetAccessible2;
                                }
                                declaredField.set(abstractSelectorOpenSelector, selectedSelectionKeySet);
                                declaredField2.set(abstractSelectorOpenSelector, selectedSelectionKeySet);
                                return null;
                            } catch (IllegalAccessException e10) {
                                return e10;
                            } catch (NoSuchFieldException e11) {
                                return e11;
                            }
                        }
                    });
                    if (!(objDoPrivileged2 instanceof Exception)) {
                        this.selectedKeys = selectedSelectionKeySet;
                        logger.trace("instrumented a special java.util.Set into: {}", abstractSelectorOpenSelector);
                        return new SelectorTuple(abstractSelectorOpenSelector, new SelectedSelectionKeySetSelector(abstractSelectorOpenSelector, selectedSelectionKeySet));
                    }
                    this.selectedKeys = null;
                    logger.trace("failed to instrument a special java.util.Set into: {}", abstractSelectorOpenSelector, (Exception) objDoPrivileged2);
                    return new SelectorTuple(abstractSelectorOpenSelector);
                }
            }
            if (objDoPrivileged instanceof Throwable) {
                logger.trace("failed to instrument a special java.util.Set into: {}", abstractSelectorOpenSelector, (Throwable) objDoPrivileged);
            }
            return new SelectorTuple(abstractSelectorOpenSelector);
        } catch (IOException e10) {
            throw new ChannelException("failed to open a new selector", e10);
        }
    }

    private void processSelectedKey(SelectionKey selectionKey, AbstractNioChannel abstractNioChannel) {
        AbstractNioChannel.NioUnsafe nioUnsafeUnsafe = abstractNioChannel.unsafe();
        if (!selectionKey.isValid()) {
            try {
                if (abstractNioChannel.eventLoop() == this) {
                    nioUnsafeUnsafe.close(nioUnsafeUnsafe.voidPromise());
                    return;
                }
                return;
            } catch (Throwable unused) {
                return;
            }
        }
        try {
            int i10 = selectionKey.readyOps();
            if ((i10 & 8) != 0) {
                selectionKey.interestOps(selectionKey.interestOps() & (-9));
                nioUnsafeUnsafe.finishConnect();
            }
            if ((i10 & 4) != 0) {
                abstractNioChannel.unsafe().forceFlush();
            }
            if ((i10 & 17) != 0 || i10 == 0) {
                nioUnsafeUnsafe.read();
            }
        } catch (CancelledKeyException unused2) {
            nioUnsafeUnsafe.close(nioUnsafeUnsafe.voidPromise());
        }
    }

    private void processSelectedKeys() {
        if (this.selectedKeys != null) {
            processSelectedKeysOptimized();
        } else {
            processSelectedKeysPlain(this.selector.selectedKeys());
        }
    }

    private void processSelectedKeysOptimized() {
        int i10 = 0;
        while (true) {
            SelectedSelectionKeySet selectedSelectionKeySet = this.selectedKeys;
            if (i10 >= selectedSelectionKeySet.size) {
                return;
            }
            SelectionKey[] selectionKeyArr = selectedSelectionKeySet.keys;
            SelectionKey selectionKey = selectionKeyArr[i10];
            selectionKeyArr[i10] = null;
            Object objAttachment = selectionKey.attachment();
            if (objAttachment instanceof AbstractNioChannel) {
                processSelectedKey(selectionKey, (AbstractNioChannel) objAttachment);
            } else {
                processSelectedKey(selectionKey, (NioTask<SelectableChannel>) objAttachment);
            }
            if (this.needsToSelectAgain) {
                this.selectedKeys.reset(i10 + 1);
                selectAgain();
                i10 = -1;
            }
            i10++;
        }
    }

    private void processSelectedKeysPlain(Set<SelectionKey> set) {
        if (set.isEmpty()) {
            return;
        }
        Iterator<SelectionKey> it2 = set.iterator();
        while (true) {
            SelectionKey next = it2.next();
            Object objAttachment = next.attachment();
            it2.remove();
            if (objAttachment instanceof AbstractNioChannel) {
                processSelectedKey(next, (AbstractNioChannel) objAttachment);
            } else {
                processSelectedKey(next, (NioTask<SelectableChannel>) objAttachment);
            }
            if (!it2.hasNext()) {
                return;
            }
            if (this.needsToSelectAgain) {
                selectAgain();
                Set<SelectionKey> setSelectedKeys = this.selector.selectedKeys();
                if (setSelectedKeys.isEmpty()) {
                    return;
                } else {
                    it2 = setSelectedKeys.iterator();
                }
            }
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void rebuildSelector0() {
        Selector selector = this.selector;
        if (selector == null) {
            return;
        }
        try {
            SelectorTuple selectorTupleOpenSelector = openSelector();
            int i10 = 0;
            for (SelectionKey selectionKey : selector.keys()) {
                Object objAttachment = selectionKey.attachment();
                try {
                    if (selectionKey.isValid() && selectionKey.channel().keyFor(selectorTupleOpenSelector.unwrappedSelector) == null) {
                        int iInterestOps = selectionKey.interestOps();
                        selectionKey.cancel();
                        SelectionKey selectionKeyRegister = selectionKey.channel().register(selectorTupleOpenSelector.unwrappedSelector, iInterestOps, objAttachment);
                        if (objAttachment instanceof AbstractNioChannel) {
                            ((AbstractNioChannel) objAttachment).selectionKey = selectionKeyRegister;
                        }
                        i10++;
                    }
                } catch (Exception e10) {
                    logger.warn("Failed to re-register a Channel to the new Selector.", (Throwable) e10);
                    if (objAttachment instanceof AbstractNioChannel) {
                        AbstractNioChannel abstractNioChannel = (AbstractNioChannel) objAttachment;
                        abstractNioChannel.unsafe().close(abstractNioChannel.unsafe().voidPromise());
                    } else {
                        invokeChannelUnregistered((NioTask) objAttachment, selectionKey, e10);
                    }
                }
            }
            this.selector = selectorTupleOpenSelector.selector;
            this.unwrappedSelector = selectorTupleOpenSelector.unwrappedSelector;
            try {
                selector.close();
            } catch (Throwable th) {
                if (logger.isWarnEnabled()) {
                    logger.warn("Failed to close the old Selector.", th);
                }
            }
            InternalLogger internalLogger = logger;
            if (internalLogger.isInfoEnabled()) {
                internalLogger.info("Migrated " + i10 + " channel(s) to the new Selector.");
            }
        } catch (Exception e11) {
            logger.warn("Failed to create a new Selector.", (Throwable) e11);
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void register0(SelectableChannel selectableChannel, int i10, NioTask<?> nioTask) {
        try {
            selectableChannel.register(this.unwrappedSelector, i10, nioTask);
        } catch (Exception e10) {
            throw new EventLoopException("failed to register a channel", e10);
        }
    }

    private int select(long j10) throws IOException {
        if (j10 == Long.MAX_VALUE) {
            return this.selector.select();
        }
        long jDeadlineToDelayNanos = AbstractScheduledEventExecutor.deadlineToDelayNanos(j10 + 995000) / C.MICROS_PER_SECOND;
        return jDeadlineToDelayNanos <= 0 ? this.selector.selectNow() : this.selector.select(jDeadlineToDelayNanos);
    }

    private void selectAgain() {
        this.needsToSelectAgain = false;
        try {
            this.selector.selectNow();
        } catch (Throwable th) {
            logger.warn("Failed to update SelectionKeys.", th);
        }
    }

    private boolean unexpectedSelectorWakeup(int i10) {
        if (Thread.interrupted()) {
            InternalLogger internalLogger = logger;
            if (internalLogger.isDebugEnabled()) {
                internalLogger.debug("Selector.select() returned prematurely because Thread.currentThread().interrupt() was called. Use NioEventLoop.shutdownGracefully() to shutdown the NioEventLoop.");
            }
            return true;
        }
        int i11 = SELECTOR_AUTO_REBUILD_THRESHOLD;
        if (i11 <= 0 || i10 < i11) {
            return false;
        }
        logger.warn("Selector.select() returned prematurely {} times in a row; rebuilding Selector {}.", Integer.valueOf(i10), this.selector);
        rebuildSelector();
        return true;
    }

    @Override // io.netty.util.concurrent.AbstractScheduledEventExecutor
    protected boolean afterScheduledTaskSubmitted(long j10) {
        return j10 < this.nextWakeupNanos.get();
    }

    @Override // io.netty.util.concurrent.AbstractScheduledEventExecutor
    protected boolean beforeScheduledTaskSubmitted(long j10) {
        return j10 < this.nextWakeupNanos.get();
    }

    void cancel(SelectionKey selectionKey) {
        selectionKey.cancel();
        int i10 = this.cancelledKeys + 1;
        this.cancelledKeys = i10;
        if (i10 >= 256) {
            this.cancelledKeys = 0;
            this.needsToSelectAgain = true;
        }
    }

    @Override // io.netty.util.concurrent.SingleThreadEventExecutor
    protected void cleanup() {
        try {
            this.selector.close();
        } catch (IOException e10) {
            logger.warn("Failed to close a selector.", (Throwable) e10);
        }
    }

    public int getIoRatio() {
        return this.ioRatio;
    }

    public void rebuildSelector() {
        if (inEventLoop()) {
            rebuildSelector0();
        } else {
            execute(new Runnable() { // from class: io.netty.channel.nio.NioEventLoop.6
                @Override // java.lang.Runnable
                public void run() {
                    NioEventLoop.this.rebuildSelector0();
                }
            });
        }
    }

    public void register(final SelectableChannel selectableChannel, final int i10, final NioTask<?> nioTask) {
        ObjectUtil.checkNotNull(selectableChannel, "ch");
        if (i10 == 0) {
            throw new IllegalArgumentException("interestOps must be non-zero.");
        }
        if (((~selectableChannel.validOps()) & i10) != 0) {
            throw new IllegalArgumentException("invalid interestOps: " + i10 + "(validOps: " + selectableChannel.validOps() + ')');
        }
        ObjectUtil.checkNotNull(nioTask, "task");
        if (isShutdown()) {
            throw new IllegalStateException("event loop shut down");
        }
        if (inEventLoop()) {
            register0(selectableChannel, i10, nioTask);
            return;
        }
        try {
            submit(new Runnable() { // from class: io.netty.channel.nio.NioEventLoop.5
                @Override // java.lang.Runnable
                public void run() {
                    NioEventLoop.this.register0(selectableChannel, i10, nioTask);
                }
            }).sync();
        } catch (InterruptedException unused) {
            Thread.currentThread().interrupt();
        }
    }

    @Override // io.netty.channel.SingleThreadEventLoop
    public int registeredChannels() {
        return this.selector.keys().size() - this.cancelledKeys;
    }

    /* JADX WARN: Code duplicated, block: B:23:0x0047 A[DONT_INVERT] */
    /* JADX WARN: Code duplicated, block: B:30:0x0057 A[DONT_INVERT] */
    /* JADX WARN: Code duplicated, block: B:31:0x0059 A[Catch: all -> 0x00b5, CancelledKeyException -> 0x00b7, TRY_LEAVE, TryCatch #8 {CancelledKeyException -> 0x00b7, all -> 0x00b5, blocks: (B:4:0x0002, B:20:0x003d, B:29:0x0052, B:41:0x008d, B:46:0x0097, B:48:0x009f, B:27:0x004e, B:28:0x0051, B:31:0x0059, B:33:0x0060, B:35:0x0072, B:36:0x0081, B:37:0x0082, B:11:0x0018, B:14:0x0027, B:18:0x0036, B:51:0x00af, B:52:0x00b4, B:58:0x00ba), top: B:78:0x0002 }] */
    /* JADX WARN: Code duplicated, block: B:37:0x0082 A[Catch: all -> 0x00b5, CancelledKeyException -> 0x00b7, TryCatch #8 {CancelledKeyException -> 0x00b7, all -> 0x00b5, blocks: (B:4:0x0002, B:20:0x003d, B:29:0x0052, B:41:0x008d, B:46:0x0097, B:48:0x009f, B:27:0x004e, B:28:0x0051, B:31:0x0059, B:33:0x0060, B:35:0x0072, B:36:0x0081, B:37:0x0082, B:11:0x0018, B:14:0x0027, B:18:0x0036, B:51:0x00af, B:52:0x00b4, B:58:0x00ba), top: B:78:0x0002 }] */
    /* JADX WARN: Code duplicated, block: B:44:0x0094  */
    /* JADX WARN: Code duplicated, block: B:46:0x0097 A[Catch: all -> 0x00b5, CancelledKeyException -> 0x00b7, TryCatch #8 {CancelledKeyException -> 0x00b7, all -> 0x00b5, blocks: (B:4:0x0002, B:20:0x003d, B:29:0x0052, B:41:0x008d, B:46:0x0097, B:48:0x009f, B:27:0x004e, B:28:0x0051, B:31:0x0059, B:33:0x0060, B:35:0x0072, B:36:0x0081, B:37:0x0082, B:11:0x0018, B:14:0x0027, B:18:0x0036, B:51:0x00af, B:52:0x00b4, B:58:0x00ba), top: B:78:0x0002 }] */
    /* JADX WARN: Code duplicated, block: B:48:0x009f A[Catch: all -> 0x00b5, CancelledKeyException -> 0x00b7, TRY_LEAVE, TryCatch #8 {CancelledKeyException -> 0x00b7, all -> 0x00b5, blocks: (B:4:0x0002, B:20:0x003d, B:29:0x0052, B:41:0x008d, B:46:0x0097, B:48:0x009f, B:27:0x004e, B:28:0x0051, B:31:0x0059, B:33:0x0060, B:35:0x0072, B:36:0x0081, B:37:0x0082, B:11:0x0018, B:14:0x0027, B:18:0x0036, B:51:0x00af, B:52:0x00b4, B:58:0x00ba), top: B:78:0x0002 }] */
    /* JADX WARN: Code duplicated, block: B:68:0x00d4  */
    /* JADX WARN: Code duplicated, block: B:82:0x0049 A[EXC_TOP_SPLITTER, SYNTHETIC] */
    /* JADX WARN: Code duplicated, block: B:89:0x00ff A[SYNTHETIC] */
    /* JADX WARN: Code duplicated, block: B:93:0x00f6 A[SYNTHETIC] */
    /* JADX WARN: Code duplicated, block: B:97:0x0002 A[SYNTHETIC] */
    /* JADX WARN: Code duplicated, block: B:98:0x0002 A[SYNTHETIC] */
    /* JADX WARN: Instruction removed from duplicated block: B:68:0x00d4, please report this as an issue */
    @Override // io.netty.util.concurrent.SingleThreadEventExecutor
    protected void run() {
        InternalLogger internalLogger;
        long jNextScheduledTaskDeadlineNanos;
        int i10;
        boolean zRunAllTasks;
        long jNanoTime;
        InternalLogger internalLogger2;
        while (true) {
            int i11 = 0;
            while (true) {
                try {
                    try {
                        try {
                            int iCalculateStrategy = this.selectStrategy.calculateStrategy(this.selectNowSupplier, hasTasks());
                            try {
                                if (iCalculateStrategy != -3) {
                                    if (iCalculateStrategy == -2) {
                                        continue;
                                    } else {
                                        if (iCalculateStrategy != -1) {
                                        }
                                        i11++;
                                        this.cancelledKeys = 0;
                                        this.needsToSelectAgain = false;
                                        i10 = this.ioRatio;
                                        if (i10 == 100) {
                                            if (iCalculateStrategy > 0) {
                                                try {
                                                    processSelectedKeys();
                                                } catch (Throwable th) {
                                                    runAllTasks();
                                                    throw th;
                                                }
                                            }
                                            zRunAllTasks = runAllTasks();
                                        } else if (iCalculateStrategy > 0) {
                                            jNanoTime = System.nanoTime();
                                            try {
                                                processSelectedKeys();
                                                zRunAllTasks = runAllTasks(((System.nanoTime() - jNanoTime) * ((long) (100 - i10))) / ((long) i10));
                                            } catch (Throwable th2) {
                                                runAllTasks(((System.nanoTime() - jNanoTime) * ((long) (100 - i10))) / ((long) i10));
                                                throw th2;
                                            }
                                        } else {
                                            zRunAllTasks = runAllTasks(0L);
                                        }
                                        if (!zRunAllTasks || iCalculateStrategy > 0) {
                                            if (i11 > 3) {
                                                internalLogger2 = logger;
                                                if (internalLogger2.isDebugEnabled()) {
                                                    internalLogger2.debug("Selector.select() returned prematurely {} times in a row for Selector {}.", Integer.valueOf(i11 - 1), this.selector);
                                                }
                                            }
                                        } else if (!unexpectedSelectorWakeup(i11)) {
                                            if (isShuttingDown()) {
                                                closeAll();
                                                if (confirmShutdown()) {
                                                    return;
                                                }
                                            } else {
                                                continue;
                                            }
                                        }
                                        i11 = 0;
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
                                if (!hasTasks()) {
                                    iCalculateStrategy = select(jNextScheduledTaskDeadlineNanos);
                                }
                                this.nextWakeupNanos.lazySet(-1L);
                                i11++;
                                this.cancelledKeys = 0;
                                this.needsToSelectAgain = false;
                                i10 = this.ioRatio;
                                if (i10 == 100) {
                                    if (iCalculateStrategy > 0) {
                                        processSelectedKeys();
                                    }
                                    zRunAllTasks = runAllTasks();
                                } else if (iCalculateStrategy > 0) {
                                    jNanoTime = System.nanoTime();
                                    processSelectedKeys();
                                    zRunAllTasks = runAllTasks(((System.nanoTime() - jNanoTime) * ((long) (100 - i10))) / ((long) i10));
                                } else {
                                    zRunAllTasks = runAllTasks(0L);
                                }
                                if (zRunAllTasks) {
                                    if (i11 > 3) {
                                        internalLogger2 = logger;
                                        if (internalLogger2.isDebugEnabled()) {
                                            internalLogger2.debug("Selector.select() returned prematurely {} times in a row for Selector {}.", Integer.valueOf(i11 - 1), this.selector);
                                        }
                                    }
                                    i11 = 0;
                                } else {
                                    if (i11 > 3) {
                                        internalLogger2 = logger;
                                        if (internalLogger2.isDebugEnabled()) {
                                            internalLogger2.debug("Selector.select() returned prematurely {} times in a row for Selector {}.", Integer.valueOf(i11 - 1), this.selector);
                                        }
                                    }
                                    i11 = 0;
                                }
                            } catch (Throwable th3) {
                                this.nextWakeupNanos.lazySet(-1L);
                                throw th3;
                            }
                            jNextScheduledTaskDeadlineNanos = nextScheduledTaskDeadlineNanos();
                            if (jNextScheduledTaskDeadlineNanos == -1) {
                                jNextScheduledTaskDeadlineNanos = Long.MAX_VALUE;
                            }
                            this.nextWakeupNanos.set(jNextScheduledTaskDeadlineNanos);
                        } catch (IOException e10) {
                            rebuildSelector0();
                            try {
                                handleLoopException(e10);
                            } catch (CancelledKeyException e11) {
                                e = e11;
                                i11 = 0;
                                internalLogger = logger;
                                if (internalLogger.isDebugEnabled()) {
                                    internalLogger.debug(CancelledKeyException.class.getSimpleName() + " raised by a Selector {} - JDK bug?", this.selector, e);
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
                                th = th4;
                                i11 = 0;
                                handleLoopException(th);
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
                    } catch (CancelledKeyException e12) {
                        e = e12;
                        internalLogger = logger;
                        if (internalLogger.isDebugEnabled()) {
                            internalLogger.debug(CancelledKeyException.class.getSimpleName() + " raised by a Selector {} - JDK bug?", this.selector, e);
                        }
                    } catch (Throwable th5) {
                        th = th5;
                        handleLoopException(th);
                    }
                    if (isShuttingDown()) {
                        closeAll();
                        if (confirmShutdown()) {
                            return;
                        }
                    } else {
                        continue;
                    }
                } catch (Throwable th6) {
                    handleLoopException(th6);
                }
            }
        }
    }

    int selectNow() throws IOException {
        return this.selector.selectNow();
    }

    public SelectorProvider selectorProvider() {
        return this.provider;
    }

    public void setIoRatio(int i10) {
        if (i10 > 0 && i10 <= 100) {
            this.ioRatio = i10;
            return;
        }
        throw new IllegalArgumentException("ioRatio: " + i10 + " (expected: 0 < ioRatio <= 100)");
    }

    Selector unwrappedSelector() {
        return this.unwrappedSelector;
    }

    @Override // io.netty.util.concurrent.SingleThreadEventExecutor
    protected void wakeup(boolean z10) {
        if (z10 || this.nextWakeupNanos.getAndSet(-1L) == -1) {
            return;
        }
        this.selector.wakeup();
    }

    private static final class SelectorTuple {
        final Selector selector;
        final Selector unwrappedSelector;

        SelectorTuple(Selector selector) {
            this.unwrappedSelector = selector;
            this.selector = selector;
        }

        SelectorTuple(Selector selector, Selector selector2) {
            this.unwrappedSelector = selector;
            this.selector = selector2;
        }
    }

    @Override // io.netty.util.concurrent.SingleThreadEventExecutor
    protected Queue<Runnable> newTaskQueue(int i10) {
        return newTaskQueue0(i10);
    }

    private static void processSelectedKey(SelectionKey selectionKey, NioTask<SelectableChannel> nioTask) {
        try {
            try {
                nioTask.channelReady(selectionKey.channel(), selectionKey);
                if (!selectionKey.isValid()) {
                    invokeChannelUnregistered(nioTask, selectionKey, null);
                }
            } catch (Exception e10) {
                selectionKey.cancel();
                invokeChannelUnregistered(nioTask, selectionKey, e10);
            }
        } catch (Throwable th) {
            selectionKey.cancel();
            invokeChannelUnregistered(nioTask, selectionKey, null);
            throw th;
        }
    }
}
