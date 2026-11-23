package io.netty.channel;

import io.netty.util.concurrent.AbstractEventExecutorGroup;
import io.netty.util.concurrent.DefaultPromise;
import io.netty.util.concurrent.EventExecutor;
import io.netty.util.concurrent.Future;
import io.netty.util.concurrent.FutureListener;
import io.netty.util.concurrent.GlobalEventExecutor;
import io.netty.util.concurrent.Promise;
import io.netty.util.concurrent.ThreadPerTaskExecutor;
import io.netty.util.internal.EmptyArrays;
import io.netty.util.internal.ObjectUtil;
import io.netty.util.internal.PlatformDependent;
import io.netty.util.internal.ReadOnlyIterator;
import io.netty.util.internal.ThrowableUtil;
import java.util.Collections;
import java.util.Iterator;
import java.util.Queue;
import java.util.Set;
import java.util.concurrent.ConcurrentLinkedQueue;
import java.util.concurrent.Executor;
import java.util.concurrent.Executors;
import java.util.concurrent.RejectedExecutionException;
import java.util.concurrent.ThreadFactory;
import java.util.concurrent.TimeUnit;

/* JADX INFO: loaded from: classes.dex */
@Deprecated
public class ThreadPerChannelEventLoopGroup extends AbstractEventExecutorGroup implements EventLoopGroup {
    final Set<EventLoop> activeChildren;
    private final Object[] childArgs;
    private final FutureListener<Object> childTerminationListener;
    final Executor executor;
    final Queue<EventLoop> idleChildren;
    private final int maxChannels;
    private volatile boolean shuttingDown;
    private final Promise<?> terminationFuture;
    private final ChannelException tooManyChannels;

    protected ThreadPerChannelEventLoopGroup() {
        this(0);
    }

    private EventLoop nextChild() throws Exception {
        if (this.shuttingDown) {
            throw new RejectedExecutionException("shutting down");
        }
        EventLoop eventLoopPoll = this.idleChildren.poll();
        if (eventLoopPoll == null) {
            if (this.maxChannels > 0 && this.activeChildren.size() >= this.maxChannels) {
                throw this.tooManyChannels;
            }
            eventLoopPoll = newChild(this.childArgs);
            eventLoopPoll.terminationFuture().addListener(this.childTerminationListener);
        }
        this.activeChildren.add(eventLoopPoll);
        return eventLoopPoll;
    }

    @Override // java.util.concurrent.ExecutorService
    public boolean awaitTermination(long j10, TimeUnit timeUnit) throws InterruptedException {
        long jNanoTime;
        long jNanoTime2;
        long jNanoTime3 = System.nanoTime() + timeUnit.toNanos(j10);
        for (EventLoop eventLoop : this.activeChildren) {
            do {
                jNanoTime2 = jNanoTime3 - System.nanoTime();
                if (jNanoTime2 <= 0) {
                    return isTerminated();
                }
            } while (!eventLoop.awaitTermination(jNanoTime2, TimeUnit.NANOSECONDS));
        }
        for (EventLoop eventLoop2 : this.idleChildren) {
            do {
                jNanoTime = jNanoTime3 - System.nanoTime();
                if (jNanoTime <= 0) {
                    return isTerminated();
                }
            } while (!eventLoop2.awaitTermination(jNanoTime, TimeUnit.NANOSECONDS));
        }
        return isTerminated();
    }

    @Override // java.util.concurrent.ExecutorService
    public boolean isShutdown() {
        Iterator<EventLoop> it2 = this.activeChildren.iterator();
        while (it2.hasNext()) {
            if (!it2.next().isShutdown()) {
                return false;
            }
        }
        Iterator<EventLoop> it3 = this.idleChildren.iterator();
        while (it3.hasNext()) {
            if (!it3.next().isShutdown()) {
                return false;
            }
        }
        return true;
    }

    @Override // io.netty.util.concurrent.EventExecutorGroup
    public boolean isShuttingDown() {
        Iterator<EventLoop> it2 = this.activeChildren.iterator();
        while (it2.hasNext()) {
            if (!it2.next().isShuttingDown()) {
                return false;
            }
        }
        Iterator<EventLoop> it3 = this.idleChildren.iterator();
        while (it3.hasNext()) {
            if (!it3.next().isShuttingDown()) {
                return false;
            }
        }
        return true;
    }

    @Override // java.util.concurrent.ExecutorService
    public boolean isTerminated() {
        Iterator<EventLoop> it2 = this.activeChildren.iterator();
        while (it2.hasNext()) {
            if (!it2.next().isTerminated()) {
                return false;
            }
        }
        Iterator<EventLoop> it3 = this.idleChildren.iterator();
        while (it3.hasNext()) {
            if (!it3.next().isTerminated()) {
                return false;
            }
        }
        return true;
    }

    @Override // io.netty.util.concurrent.EventExecutorGroup, java.lang.Iterable
    public Iterator<EventExecutor> iterator() {
        return new ReadOnlyIterator(this.activeChildren.iterator());
    }

    protected EventLoop newChild(Object... objArr) throws Exception {
        return new ThreadPerChannelEventLoop(this);
    }

    @Override // io.netty.channel.EventLoopGroup
    public ChannelFuture register(Channel channel) {
        ObjectUtil.checkNotNull(channel, "channel");
        try {
            EventLoop eventLoopNextChild = nextChild();
            return eventLoopNextChild.register(new DefaultChannelPromise(channel, eventLoopNextChild));
        } catch (Throwable th) {
            return new FailedChannelFuture(channel, GlobalEventExecutor.INSTANCE, th);
        }
    }

    @Override // io.netty.util.concurrent.AbstractEventExecutorGroup, io.netty.util.concurrent.EventExecutorGroup, java.util.concurrent.ExecutorService
    @Deprecated
    public void shutdown() {
        this.shuttingDown = true;
        Iterator<EventLoop> it2 = this.activeChildren.iterator();
        while (it2.hasNext()) {
            it2.next().shutdown();
        }
        Iterator<EventLoop> it3 = this.idleChildren.iterator();
        while (it3.hasNext()) {
            it3.next().shutdown();
        }
        if (isTerminated()) {
            this.terminationFuture.trySuccess(null);
        }
    }

    @Override // io.netty.util.concurrent.EventExecutorGroup
    public Future<?> shutdownGracefully(long j10, long j11, TimeUnit timeUnit) {
        this.shuttingDown = true;
        Iterator<EventLoop> it2 = this.activeChildren.iterator();
        while (it2.hasNext()) {
            it2.next().shutdownGracefully(j10, j11, timeUnit);
        }
        Iterator<EventLoop> it3 = this.idleChildren.iterator();
        while (it3.hasNext()) {
            it3.next().shutdownGracefully(j10, j11, timeUnit);
        }
        if (isTerminated()) {
            this.terminationFuture.trySuccess(null);
        }
        return terminationFuture();
    }

    @Override // io.netty.util.concurrent.EventExecutorGroup
    public Future<?> terminationFuture() {
        return this.terminationFuture;
    }

    protected ThreadPerChannelEventLoopGroup(int i10) {
        this(i10, Executors.defaultThreadFactory(), new Object[0]);
    }

    @Override // io.netty.util.concurrent.EventExecutorGroup, io.netty.channel.EventLoopGroup
    public EventLoop next() {
        throw new UnsupportedOperationException();
    }

    protected ThreadPerChannelEventLoopGroup(int i10, ThreadFactory threadFactory, Object... objArr) {
        this(i10, new ThreadPerTaskExecutor(threadFactory), objArr);
    }

    protected ThreadPerChannelEventLoopGroup(int i10, Executor executor, Object... objArr) {
        this.activeChildren = Collections.newSetFromMap(PlatformDependent.newConcurrentHashMap());
        this.idleChildren = new ConcurrentLinkedQueue();
        this.terminationFuture = new DefaultPromise(GlobalEventExecutor.INSTANCE);
        this.childTerminationListener = new FutureListener<Object>() { // from class: io.netty.channel.ThreadPerChannelEventLoopGroup.1
            @Override // io.netty.util.concurrent.GenericFutureListener
            public void operationComplete(Future<Object> future) throws Exception {
                if (ThreadPerChannelEventLoopGroup.this.isTerminated()) {
                    ThreadPerChannelEventLoopGroup.this.terminationFuture.trySuccess(null);
                }
            }
        };
        ObjectUtil.checkPositiveOrZero(i10, "maxChannels");
        ObjectUtil.checkNotNull(executor, "executor");
        if (objArr == null) {
            this.childArgs = EmptyArrays.EMPTY_OBJECTS;
        } else {
            this.childArgs = (Object[]) objArr.clone();
        }
        this.maxChannels = i10;
        this.executor = executor;
        this.tooManyChannels = (ChannelException) ThrowableUtil.unknownStackTrace(ChannelException.newStatic("too many channels (max: " + i10 + ')', null), ThreadPerChannelEventLoopGroup.class, "nextChild()");
    }

    @Override // io.netty.channel.EventLoopGroup
    public ChannelFuture register(ChannelPromise channelPromise) {
        try {
            return nextChild().register(channelPromise);
        } catch (Throwable th) {
            channelPromise.setFailure(th);
            return channelPromise;
        }
    }

    @Override // io.netty.channel.EventLoopGroup
    @Deprecated
    public ChannelFuture register(Channel channel, ChannelPromise channelPromise) {
        ObjectUtil.checkNotNull(channel, "channel");
        try {
            return nextChild().register(channel, channelPromise);
        } catch (Throwable th) {
            channelPromise.setFailure(th);
            return channelPromise;
        }
    }
}
