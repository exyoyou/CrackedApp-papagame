package io.netty.channel;

import io.netty.buffer.ByteBuf;
import io.netty.buffer.ByteBufAllocator;
import io.netty.buffer.CompositeByteBuf;
import io.netty.util.ReferenceCountUtil;
import io.netty.util.concurrent.Future;
import io.netty.util.concurrent.GenericFutureListener;
import io.netty.util.internal.ObjectUtil;
import io.netty.util.internal.PlatformDependent;
import io.netty.util.internal.logging.InternalLogger;
import io.netty.util.internal.logging.InternalLoggerFactory;
import java.util.ArrayDeque;

/* JADX INFO: loaded from: classes.dex */
public abstract class AbstractCoalescingBufferQueue {
    static final /* synthetic */ boolean $assertionsDisabled = false;
    private static final InternalLogger logger = InternalLoggerFactory.getInstance((Class<?>) AbstractCoalescingBufferQueue.class);
    private final ArrayDeque<Object> bufAndListenerPairs;
    private int readableBytes;
    private final PendingBytesTracker tracker;

    protected AbstractCoalescingBufferQueue(Channel channel, int i10) {
        this.bufAndListenerPairs = new ArrayDeque<>(i10);
        this.tracker = channel == null ? null : PendingBytesTracker.newTracker(channel);
    }

    private void decrementReadableBytes(int i10) {
        this.readableBytes -= i10;
        PendingBytesTracker pendingBytesTracker = this.tracker;
        if (pendingBytesTracker != null) {
            pendingBytesTracker.decrementPendingOutboundBytes(i10);
        }
    }

    private void incrementReadableBytes(int i10) {
        int i11 = this.readableBytes;
        int i12 = i11 + i10;
        if (i12 >= i11) {
            this.readableBytes = i12;
            PendingBytesTracker pendingBytesTracker = this.tracker;
            if (pendingBytesTracker != null) {
                pendingBytesTracker.incrementPendingOutboundBytes(i10);
                return;
            }
            return;
        }
        throw new IllegalStateException("buffer queue length overflow: " + this.readableBytes + " + " + i10);
    }

    private void releaseAndCompleteAll(ChannelFuture channelFuture) {
        decrementReadableBytes(this.readableBytes);
        Throwable th = null;
        while (true) {
            Object objPoll = this.bufAndListenerPairs.poll();
            if (objPoll == null) {
                break;
            }
            try {
                if (objPoll instanceof ByteBuf) {
                    ReferenceCountUtil.safeRelease(objPoll);
                } else {
                    ((ChannelFutureListener) objPoll).operationComplete(channelFuture);
                }
            } catch (Throwable th2) {
                if (th == null) {
                    th = th2;
                } else {
                    logger.info("Throwable being suppressed because Throwable {} is already pending", th, th2);
                }
            }
        }
        if (th != null) {
            throw new IllegalStateException(th);
        }
    }

    private static ChannelFutureListener toChannelFutureListener(ChannelPromise channelPromise) {
        if (channelPromise.isVoid()) {
            return null;
        }
        return new DelegatingChannelPromiseNotifier(channelPromise);
    }

    public final void add(ByteBuf byteBuf) {
        add(byteBuf, (ChannelFutureListener) null);
    }

    public final void addFirst(ByteBuf byteBuf, ChannelPromise channelPromise) {
        addFirst(byteBuf, toChannelFutureListener(channelPromise));
    }

    protected abstract ByteBuf compose(ByteBufAllocator byteBufAllocator, ByteBuf byteBuf, ByteBuf byteBuf2);

    protected ByteBuf composeFirst(ByteBufAllocator byteBufAllocator, ByteBuf byteBuf) {
        return byteBuf;
    }

    protected final ByteBuf composeIntoComposite(ByteBufAllocator byteBufAllocator, ByteBuf byteBuf, ByteBuf byteBuf2) {
        CompositeByteBuf compositeByteBufCompositeBuffer = byteBufAllocator.compositeBuffer(size() + 2);
        try {
            compositeByteBufCompositeBuffer.addComponent(true, byteBuf);
            compositeByteBufCompositeBuffer.addComponent(true, byteBuf2);
        } catch (Throwable th) {
            compositeByteBufCompositeBuffer.release();
            ReferenceCountUtil.safeRelease(byteBuf2);
            PlatformDependent.throwException(th);
        }
        return compositeByteBufCompositeBuffer;
    }

    protected final ByteBuf copyAndCompose(ByteBufAllocator byteBufAllocator, ByteBuf byteBuf, ByteBuf byteBuf2) {
        ByteBuf byteBufIoBuffer = byteBufAllocator.ioBuffer(byteBuf.readableBytes() + byteBuf2.readableBytes());
        try {
            byteBufIoBuffer.writeBytes(byteBuf).writeBytes(byteBuf2);
        } catch (Throwable th) {
            byteBufIoBuffer.release();
            ReferenceCountUtil.safeRelease(byteBuf2);
            PlatformDependent.throwException(th);
        }
        byteBuf.release();
        byteBuf2.release();
        return byteBufIoBuffer;
    }

    public final void copyTo(AbstractCoalescingBufferQueue abstractCoalescingBufferQueue) {
        abstractCoalescingBufferQueue.bufAndListenerPairs.addAll(this.bufAndListenerPairs);
        abstractCoalescingBufferQueue.incrementReadableBytes(this.readableBytes);
    }

    public final boolean isEmpty() {
        return this.bufAndListenerPairs.isEmpty();
    }

    public final int readableBytes() {
        return this.readableBytes;
    }

    public final void releaseAndFailAll(ChannelOutboundInvoker channelOutboundInvoker, Throwable th) {
        releaseAndCompleteAll(channelOutboundInvoker.newFailedFuture(th));
    }

    public final ByteBuf remove(ByteBufAllocator byteBufAllocator, int i10, ChannelPromise channelPromise) {
        ObjectUtil.checkPositiveOrZero(i10, "bytes");
        ObjectUtil.checkNotNull(channelPromise, "aggregatePromise");
        if (this.bufAndListenerPairs.isEmpty()) {
            return removeEmptyValue();
        }
        int iMin = Math.min(i10, this.readableBytes);
        ByteBuf byteBuf = null;
        int i11 = iMin;
        ByteBuf byteBufComposeFirst = null;
        while (true) {
            try {
                Object objPoll = this.bufAndListenerPairs.poll();
                if (objPoll == null) {
                    break;
                }
                if (objPoll instanceof ChannelFutureListener) {
                    channelPromise.addListener((GenericFutureListener<? extends Future<? super Void>>) objPoll);
                } else {
                    ByteBuf byteBuf2 = (ByteBuf) objPoll;
                    try {
                        if (byteBuf2.readableBytes() > i11) {
                            this.bufAndListenerPairs.addFirst(byteBuf2);
                            if (i11 <= 0) {
                                break;
                            }
                            ByteBuf retainedSlice = byteBuf2.readRetainedSlice(i11);
                            byteBufComposeFirst = byteBufComposeFirst == null ? composeFirst(byteBufAllocator, retainedSlice) : compose(byteBufAllocator, byteBufComposeFirst, retainedSlice);
                            i11 = 0;
                            break;
                        }
                        i11 -= byteBuf2.readableBytes();
                        byteBufComposeFirst = byteBufComposeFirst == null ? composeFirst(byteBufAllocator, byteBuf2) : compose(byteBufAllocator, byteBufComposeFirst, byteBuf2);
                    } catch (Throwable th) {
                        th = th;
                        byteBuf = byteBuf2;
                        ReferenceCountUtil.safeRelease(byteBuf);
                        ReferenceCountUtil.safeRelease(byteBufComposeFirst);
                        channelPromise.setFailure(th);
                        PlatformDependent.throwException(th);
                    }
                }
            } catch (Throwable th2) {
                th = th2;
            }
        }
        decrementReadableBytes(iMin - i11);
        return byteBufComposeFirst;
    }

    protected abstract ByteBuf removeEmptyValue();

    public final ByteBuf removeFirst(ChannelPromise channelPromise) {
        Object objPoll = this.bufAndListenerPairs.poll();
        if (objPoll == null) {
            return null;
        }
        ByteBuf byteBuf = (ByteBuf) objPoll;
        decrementReadableBytes(byteBuf.readableBytes());
        Object objPeek = this.bufAndListenerPairs.peek();
        if (objPeek instanceof ChannelFutureListener) {
            channelPromise.addListener((GenericFutureListener<? extends Future<? super Void>>) objPeek);
            this.bufAndListenerPairs.poll();
        }
        return byteBuf;
    }

    protected final int size() {
        return this.bufAndListenerPairs.size();
    }

    /* JADX WARN: Code duplicated, block: B:30:0x004d A[SYNTHETIC] */
    /* JADX WARN: Code duplicated, block: B:31:0x004b A[SYNTHETIC] */
    public final void writeAndRemoveAll(ChannelHandlerContext channelHandlerContext) {
        decrementReadableBytes(this.readableBytes);
        ByteBuf byteBuf = null;
        Throwable th = null;
        while (true) {
            Object objPoll = this.bufAndListenerPairs.poll();
            if (objPoll == null) {
                if (byteBuf == null) {
                    break;
                }
                channelHandlerContext.write(byteBuf, channelHandlerContext.voidPromise());
                break;
            }
            try {
                if (objPoll instanceof ByteBuf) {
                    if (byteBuf != null) {
                        channelHandlerContext.write(byteBuf, channelHandlerContext.voidPromise());
                    }
                    byteBuf = (ByteBuf) objPoll;
                } else {
                    if (objPoll instanceof ChannelPromise) {
                        channelHandlerContext.write(byteBuf, (ChannelPromise) objPoll);
                    } else {
                        channelHandlerContext.write(byteBuf).addListener((GenericFutureListener<? extends Future<? super Void>>) objPoll);
                    }
                    byteBuf = null;
                }
            } catch (Throwable th2) {
                if (th == null) {
                    th = th2;
                } else {
                    logger.info("Throwable being suppressed because Throwable {} is already pending", th, th2);
                }
            }
            if (th == null) {
                th = th2;
            } else {
                logger.info("Throwable being suppressed because Throwable {} is already pending", th, th2);
            }
        }
        if (th != null) {
            throw new IllegalStateException(th);
        }
    }

    private void addFirst(ByteBuf byteBuf, ChannelFutureListener channelFutureListener) {
        if (channelFutureListener != null) {
            this.bufAndListenerPairs.addFirst(channelFutureListener);
        }
        this.bufAndListenerPairs.addFirst(byteBuf);
        incrementReadableBytes(byteBuf.readableBytes());
    }

    public final void add(ByteBuf byteBuf, ChannelPromise channelPromise) {
        add(byteBuf, toChannelFutureListener(channelPromise));
    }

    public final void add(ByteBuf byteBuf, ChannelFutureListener channelFutureListener) {
        this.bufAndListenerPairs.add(byteBuf);
        if (channelFutureListener != null) {
            this.bufAndListenerPairs.add(channelFutureListener);
        }
        incrementReadableBytes(byteBuf.readableBytes());
    }
}
