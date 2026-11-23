package io.netty.handler.ssl;

import com.haima.hmcp.cloud.BaseCloudFileManager;
import io.netty.buffer.ByteBuf;
import io.netty.buffer.ByteBufAllocator;
import io.netty.buffer.ByteBufUtil;
import io.netty.buffer.CompositeByteBuf;
import io.netty.buffer.Unpooled;
import io.netty.channel.AbstractCoalescingBufferQueue;
import io.netty.channel.Channel;
import io.netty.channel.ChannelException;
import io.netty.channel.ChannelFuture;
import io.netty.channel.ChannelFutureListener;
import io.netty.channel.ChannelHandlerContext;
import io.netty.channel.ChannelOutboundHandler;
import io.netty.channel.ChannelPromise;
import io.netty.channel.ChannelPromiseNotifier;
import io.netty.handler.codec.ByteToMessageDecoder;
import io.netty.handler.codec.DecoderException;
import io.netty.handler.codec.UnsupportedMessageTypeException;
import io.netty.util.ReferenceCountUtil;
import io.netty.util.ReferenceCounted;
import io.netty.util.concurrent.DefaultPromise;
import io.netty.util.concurrent.EventExecutor;
import io.netty.util.concurrent.Future;
import io.netty.util.concurrent.FutureListener;
import io.netty.util.concurrent.GenericFutureListener;
import io.netty.util.concurrent.ImmediateExecutor;
import io.netty.util.concurrent.Promise;
import io.netty.util.concurrent.PromiseNotifier;
import io.netty.util.concurrent.ScheduledFuture;
import io.netty.util.internal.ObjectUtil;
import io.netty.util.internal.PlatformDependent;
import io.netty.util.internal.logging.InternalLogger;
import io.netty.util.internal.logging.InternalLoggerFactory;
import java.io.IOException;
import java.net.SocketAddress;
import java.nio.ByteBuffer;
import java.nio.channels.ClosedChannelException;
import java.nio.channels.DatagramChannel;
import java.nio.channels.SocketChannel;
import java.util.List;
import java.util.concurrent.Executor;
import java.util.concurrent.RejectedExecutionException;
import java.util.concurrent.TimeUnit;
import java.util.regex.Pattern;
import javax.net.ssl.SSLEngine;
import javax.net.ssl.SSLEngineResult;
import javax.net.ssl.SSLException;
import javax.net.ssl.SSLSession;

/* JADX INFO: loaded from: classes.dex */
public class SslHandler extends ByteToMessageDecoder implements ChannelOutboundHandler {
    static final /* synthetic */ boolean $assertionsDisabled = false;
    private static final int MAX_PLAINTEXT_LENGTH = 16384;
    private boolean closeNotify;
    private volatile long closeNotifyFlushTimeoutMillis;
    private volatile long closeNotifyReadTimeoutMillis;
    private volatile ChannelHandlerContext ctx;
    private final Executor delegatedTaskExecutor;
    private final SSLEngine engine;
    private final SslEngineType engineType;
    private boolean firedChannelRead;
    private boolean flushedBeforeHandshake;
    private Promise<Channel> handshakePromise;
    private boolean handshakeStarted;
    private volatile long handshakeTimeoutMillis;
    private final boolean jdkCompatibilityMode;
    private boolean needsFlush;
    private boolean outboundClosed;
    private int packetLength;
    private SslHandlerCoalescingBufferQueue pendingUnencryptedWrites;
    private boolean processTask;
    private boolean readDuringHandshake;
    private boolean sentFirstMessage;
    private final ByteBuffer[] singleBuffer;
    private final LazyChannelPromise sslClosePromise;
    private final boolean startTls;
    volatile int wrapDataSize;
    private static final InternalLogger logger = InternalLoggerFactory.getInstance((Class<?>) SslHandler.class);
    private static final Pattern IGNORABLE_CLASS_IN_STACK = Pattern.compile("^.*(?:Socket|Datagram|Sctp|Udt)Channel.*$");
    private static final Pattern IGNORABLE_ERROR_MESSAGE = Pattern.compile("^.*(?:connection.*(?:reset|closed|abort|broken)|broken.*pipe).*$", 2);

    /* JADX INFO: renamed from: io.netty.handler.ssl.SslHandler$9, reason: invalid class name */
    static /* synthetic */ class AnonymousClass9 {
        static final /* synthetic */ int[] $SwitchMap$javax$net$ssl$SSLEngineResult$HandshakeStatus;
        static final /* synthetic */ int[] $SwitchMap$javax$net$ssl$SSLEngineResult$Status;

        static {
            int[] iArr = new int[SSLEngineResult.Status.values().length];
            $SwitchMap$javax$net$ssl$SSLEngineResult$Status = iArr;
            try {
                iArr[SSLEngineResult.Status.BUFFER_OVERFLOW.ordinal()] = 1;
            } catch (NoSuchFieldError unused) {
            }
            try {
                $SwitchMap$javax$net$ssl$SSLEngineResult$Status[SSLEngineResult.Status.CLOSED.ordinal()] = 2;
            } catch (NoSuchFieldError unused2) {
            }
            int[] iArr2 = new int[SSLEngineResult.HandshakeStatus.values().length];
            $SwitchMap$javax$net$ssl$SSLEngineResult$HandshakeStatus = iArr2;
            try {
                iArr2[SSLEngineResult.HandshakeStatus.NEED_TASK.ordinal()] = 1;
            } catch (NoSuchFieldError unused3) {
            }
            try {
                $SwitchMap$javax$net$ssl$SSLEngineResult$HandshakeStatus[SSLEngineResult.HandshakeStatus.FINISHED.ordinal()] = 2;
            } catch (NoSuchFieldError unused4) {
            }
            try {
                $SwitchMap$javax$net$ssl$SSLEngineResult$HandshakeStatus[SSLEngineResult.HandshakeStatus.NOT_HANDSHAKING.ordinal()] = 3;
            } catch (NoSuchFieldError unused5) {
            }
            try {
                $SwitchMap$javax$net$ssl$SSLEngineResult$HandshakeStatus[SSLEngineResult.HandshakeStatus.NEED_WRAP.ordinal()] = 4;
            } catch (NoSuchFieldError unused6) {
            }
            try {
                $SwitchMap$javax$net$ssl$SSLEngineResult$HandshakeStatus[SSLEngineResult.HandshakeStatus.NEED_UNWRAP.ordinal()] = 5;
            } catch (NoSuchFieldError unused7) {
            }
        }
    }

    private final class LazyChannelPromise extends DefaultPromise<Channel> {
        private LazyChannelPromise() {
        }

        @Override // io.netty.util.concurrent.DefaultPromise
        protected void checkDeadLock() {
            if (SslHandler.this.ctx == null) {
                return;
            }
            super.checkDeadLock();
        }

        @Override // io.netty.util.concurrent.DefaultPromise
        protected EventExecutor executor() {
            if (SslHandler.this.ctx != null) {
                return SslHandler.this.ctx.executor();
            }
            throw new IllegalStateException();
        }
    }

    /* JADX WARN: Enum visitor error
    jadx.core.utils.exceptions.JadxRuntimeException: Init of enum field 'TCNATIVE' uses external variables
    	at jadx.core.dex.visitors.EnumVisitor.createEnumFieldByConstructor(EnumVisitor.java:485)
    	at jadx.core.dex.visitors.EnumVisitor.processEnumFieldByRegister(EnumVisitor.java:422)
    	at jadx.core.dex.visitors.EnumVisitor.extractEnumFieldsFromFilledArray(EnumVisitor.java:351)
    	at jadx.core.dex.visitors.EnumVisitor.extractEnumFieldsFromInsn(EnumVisitor.java:284)
    	at jadx.core.dex.visitors.EnumVisitor.convertToEnum(EnumVisitor.java:153)
    	at jadx.core.dex.visitors.EnumVisitor.visit(EnumVisitor.java:102)
     */
    /* JADX WARN: Failed to restore enum class, 'enum' modifier and super class removed */
    private static abstract class SslEngineType {
        private static final /* synthetic */ SslEngineType[] $VALUES;
        public static final SslEngineType CONSCRYPT;
        public static final SslEngineType JDK;
        public static final SslEngineType TCNATIVE;
        final ByteToMessageDecoder.Cumulator cumulator;
        final boolean wantsDirectBuffer;

        /* JADX WARN: Multi-variable type inference failed */
        static {
            ByteToMessageDecoder.Cumulator cumulator = ByteToMessageDecoder.COMPOSITE_CUMULATOR;
            SslEngineType sslEngineType = new SslEngineType("TCNATIVE", 0, true, cumulator) { // from class: io.netty.handler.ssl.SslHandler.SslEngineType.1
                @Override // io.netty.handler.ssl.SslHandler.SslEngineType
                ByteBuf allocateWrapBuffer(SslHandler sslHandler, ByteBufAllocator byteBufAllocator, int i10, int i11) {
                    return byteBufAllocator.directBuffer(((ReferenceCountedOpenSslEngine) sslHandler.engine).calculateMaxLengthForWrap(i10, i11));
                }

                @Override // io.netty.handler.ssl.SslHandler.SslEngineType
                int calculatePendingData(SslHandler sslHandler, int i10) {
                    int iSslPending = ((ReferenceCountedOpenSslEngine) sslHandler.engine).sslPending();
                    return iSslPending > 0 ? iSslPending : i10;
                }

                @Override // io.netty.handler.ssl.SslHandler.SslEngineType
                boolean jdkCompatibilityMode(SSLEngine sSLEngine) {
                    return ((ReferenceCountedOpenSslEngine) sSLEngine).jdkCompatibilityMode;
                }

                @Override // io.netty.handler.ssl.SslHandler.SslEngineType
                SSLEngineResult unwrap(SslHandler sslHandler, ByteBuf byteBuf, int i10, int i11, ByteBuf byteBuf2) throws SSLException {
                    SSLEngineResult sSLEngineResultUnwrap;
                    int iNioBufferCount = byteBuf.nioBufferCount();
                    int iWriterIndex = byteBuf2.writerIndex();
                    if (iNioBufferCount > 1) {
                        ReferenceCountedOpenSslEngine referenceCountedOpenSslEngine = (ReferenceCountedOpenSslEngine) sslHandler.engine;
                        try {
                            sslHandler.singleBuffer[0] = SslHandler.toByteBuffer(byteBuf2, iWriterIndex, byteBuf2.writableBytes());
                            sSLEngineResultUnwrap = referenceCountedOpenSslEngine.unwrap(byteBuf.nioBuffers(i10, i11), sslHandler.singleBuffer);
                            sslHandler.singleBuffer[0] = null;
                        } catch (Throwable th) {
                            sslHandler.singleBuffer[0] = null;
                            throw th;
                        }
                    } else {
                        sSLEngineResultUnwrap = sslHandler.engine.unwrap(SslHandler.toByteBuffer(byteBuf, i10, i11), SslHandler.toByteBuffer(byteBuf2, iWriterIndex, byteBuf2.writableBytes()));
                    }
                    byteBuf2.writerIndex(iWriterIndex + sSLEngineResultUnwrap.bytesProduced());
                    return sSLEngineResultUnwrap;
                }
            };
            TCNATIVE = sslEngineType;
            SslEngineType sslEngineType2 = new SslEngineType("CONSCRYPT", 1 == true ? 1 : 0, 1 == true ? 1 : 0, cumulator) { // from class: io.netty.handler.ssl.SslHandler.SslEngineType.2
                @Override // io.netty.handler.ssl.SslHandler.SslEngineType
                ByteBuf allocateWrapBuffer(SslHandler sslHandler, ByteBufAllocator byteBufAllocator, int i10, int i11) {
                    return byteBufAllocator.directBuffer(((ConscryptAlpnSslEngine) sslHandler.engine).calculateOutNetBufSize(i10, i11));
                }

                @Override // io.netty.handler.ssl.SslHandler.SslEngineType
                int calculatePendingData(SslHandler sslHandler, int i10) {
                    return i10;
                }

                @Override // io.netty.handler.ssl.SslHandler.SslEngineType
                boolean jdkCompatibilityMode(SSLEngine sSLEngine) {
                    return true;
                }

                @Override // io.netty.handler.ssl.SslHandler.SslEngineType
                SSLEngineResult unwrap(SslHandler sslHandler, ByteBuf byteBuf, int i10, int i11, ByteBuf byteBuf2) throws SSLException {
                    SSLEngineResult sSLEngineResultUnwrap;
                    int iNioBufferCount = byteBuf.nioBufferCount();
                    int iWriterIndex = byteBuf2.writerIndex();
                    if (iNioBufferCount > 1) {
                        try {
                            sslHandler.singleBuffer[0] = SslHandler.toByteBuffer(byteBuf2, iWriterIndex, byteBuf2.writableBytes());
                            sSLEngineResultUnwrap = ((ConscryptAlpnSslEngine) sslHandler.engine).unwrap(byteBuf.nioBuffers(i10, i11), sslHandler.singleBuffer);
                            sslHandler.singleBuffer[0] = null;
                        } catch (Throwable th) {
                            sslHandler.singleBuffer[0] = null;
                            throw th;
                        }
                    } else {
                        sSLEngineResultUnwrap = sslHandler.engine.unwrap(SslHandler.toByteBuffer(byteBuf, i10, i11), SslHandler.toByteBuffer(byteBuf2, iWriterIndex, byteBuf2.writableBytes()));
                    }
                    byteBuf2.writerIndex(iWriterIndex + sSLEngineResultUnwrap.bytesProduced());
                    return sSLEngineResultUnwrap;
                }
            };
            CONSCRYPT = sslEngineType2;
            SslEngineType sslEngineType3 = new SslEngineType("JDK", 2, 0 == true ? 1 : 0, ByteToMessageDecoder.MERGE_CUMULATOR) { // from class: io.netty.handler.ssl.SslHandler.SslEngineType.3
                @Override // io.netty.handler.ssl.SslHandler.SslEngineType
                ByteBuf allocateWrapBuffer(SslHandler sslHandler, ByteBufAllocator byteBufAllocator, int i10, int i11) {
                    return byteBufAllocator.heapBuffer(sslHandler.engine.getSession().getPacketBufferSize());
                }

                @Override // io.netty.handler.ssl.SslHandler.SslEngineType
                int calculatePendingData(SslHandler sslHandler, int i10) {
                    return i10;
                }

                @Override // io.netty.handler.ssl.SslHandler.SslEngineType
                boolean jdkCompatibilityMode(SSLEngine sSLEngine) {
                    return true;
                }

                @Override // io.netty.handler.ssl.SslHandler.SslEngineType
                SSLEngineResult unwrap(SslHandler sslHandler, ByteBuf byteBuf, int i10, int i11, ByteBuf byteBuf2) throws SSLException {
                    int iPosition;
                    int iWriterIndex = byteBuf2.writerIndex();
                    ByteBuffer byteBuffer = SslHandler.toByteBuffer(byteBuf, i10, i11);
                    int iPosition2 = byteBuffer.position();
                    SSLEngineResult sSLEngineResultUnwrap = sslHandler.engine.unwrap(byteBuffer, SslHandler.toByteBuffer(byteBuf2, iWriterIndex, byteBuf2.writableBytes()));
                    byteBuf2.writerIndex(iWriterIndex + sSLEngineResultUnwrap.bytesProduced());
                    return (sSLEngineResultUnwrap.bytesConsumed() != 0 || (iPosition = byteBuffer.position() - iPosition2) == sSLEngineResultUnwrap.bytesConsumed()) ? sSLEngineResultUnwrap : new SSLEngineResult(sSLEngineResultUnwrap.getStatus(), sSLEngineResultUnwrap.getHandshakeStatus(), iPosition, sSLEngineResultUnwrap.bytesProduced());
                }
            };
            JDK = sslEngineType3;
            $VALUES = new SslEngineType[]{sslEngineType, sslEngineType2, sslEngineType3};
        }

        static SslEngineType forEngine(SSLEngine sSLEngine) {
            if (sSLEngine instanceof ReferenceCountedOpenSslEngine) {
                return TCNATIVE;
            }
            return sSLEngine instanceof ConscryptAlpnSslEngine ? CONSCRYPT : JDK;
        }

        public static SslEngineType valueOf(String str) {
            return (SslEngineType) Enum.valueOf(SslEngineType.class, str);
        }

        public static SslEngineType[] values() {
            return (SslEngineType[]) $VALUES.clone();
        }

        abstract ByteBuf allocateWrapBuffer(SslHandler sslHandler, ByteBufAllocator byteBufAllocator, int i10, int i11);

        abstract int calculatePendingData(SslHandler sslHandler, int i10);

        abstract boolean jdkCompatibilityMode(SSLEngine sSLEngine);

        abstract SSLEngineResult unwrap(SslHandler sslHandler, ByteBuf byteBuf, int i10, int i11, ByteBuf byteBuf2) throws SSLException;

        private SslEngineType(String str, int i10, boolean z10, ByteToMessageDecoder.Cumulator cumulator) {
            super(str, i10);
            this.wantsDirectBuffer = z10;
            this.cumulator = cumulator;
        }
    }

    private final class SslHandlerCoalescingBufferQueue extends AbstractCoalescingBufferQueue {
        SslHandlerCoalescingBufferQueue(Channel channel, int i10) {
            super(channel, i10);
        }

        @Override // io.netty.channel.AbstractCoalescingBufferQueue
        protected ByteBuf compose(ByteBufAllocator byteBufAllocator, ByteBuf byteBuf, ByteBuf byteBuf2) {
            int i10 = SslHandler.this.wrapDataSize;
            if (!(byteBuf instanceof CompositeByteBuf)) {
                return SslHandler.attemptCopyToCumulation(byteBuf, byteBuf2, i10) ? byteBuf : copyAndCompose(byteBufAllocator, byteBuf, byteBuf2);
            }
            CompositeByteBuf compositeByteBuf = (CompositeByteBuf) byteBuf;
            int iNumComponents = compositeByteBuf.numComponents();
            if (iNumComponents == 0 || !SslHandler.attemptCopyToCumulation(compositeByteBuf.internalComponent(iNumComponents - 1), byteBuf2, i10)) {
                compositeByteBuf.addComponent(true, byteBuf2);
            }
            return compositeByteBuf;
        }

        @Override // io.netty.channel.AbstractCoalescingBufferQueue
        protected ByteBuf composeFirst(ByteBufAllocator byteBufAllocator, ByteBuf byteBuf) {
            if (!(byteBuf instanceof CompositeByteBuf)) {
                return byteBuf;
            }
            CompositeByteBuf compositeByteBuf = (CompositeByteBuf) byteBuf;
            ByteBuf byteBufDirectBuffer = SslHandler.this.engineType.wantsDirectBuffer ? byteBufAllocator.directBuffer(compositeByteBuf.readableBytes()) : byteBufAllocator.heapBuffer(compositeByteBuf.readableBytes());
            try {
                byteBufDirectBuffer.writeBytes(compositeByteBuf);
            } catch (Throwable th) {
                byteBufDirectBuffer.release();
                PlatformDependent.throwException(th);
            }
            compositeByteBuf.release();
            return byteBufDirectBuffer;
        }

        @Override // io.netty.channel.AbstractCoalescingBufferQueue
        protected ByteBuf removeEmptyValue() {
            return null;
        }
    }

    private final class SslTasksRunner implements Runnable {
        static final /* synthetic */ boolean $assertionsDisabled = false;
        private final boolean inUnwrap;

        SslTasksRunner(boolean z10) {
            this.inUnwrap = z10;
        }

        private void handleException(final Throwable th) {
            if (SslHandler.this.ctx.executor().inEventLoop()) {
                SslHandler.this.processTask = false;
                safeExceptionCaught(th);
            } else {
                try {
                    SslHandler.this.ctx.executor().execute(new Runnable() { // from class: io.netty.handler.ssl.SslHandler.SslTasksRunner.2
                        @Override // java.lang.Runnable
                        public void run() {
                            SslHandler.this.processTask = false;
                            SslTasksRunner.this.safeExceptionCaught(th);
                        }
                    });
                } catch (RejectedExecutionException unused) {
                    SslHandler.this.processTask = false;
                    SslHandler.this.ctx.fireExceptionCaught(th);
                }
            }
        }

        /* JADX INFO: Access modifiers changed from: private */
        public void resumeOnEventExecutor() {
            SslHandler.this.processTask = false;
            try {
                int i10 = AnonymousClass9.$SwitchMap$javax$net$ssl$SSLEngineResult$HandshakeStatus[SslHandler.this.engine.getHandshakeStatus().ordinal()];
                if (i10 == 1) {
                    SslHandler.this.executeDelegatedTasks(this.inUnwrap);
                    return;
                }
                if (i10 != 2) {
                    if (i10 != 3) {
                        if (i10 != 4) {
                            if (i10 != 5) {
                                throw new AssertionError();
                            }
                            try {
                                SslHandler sslHandler = SslHandler.this;
                                sslHandler.unwrapNonAppData(sslHandler.ctx);
                                tryDecodeAgain();
                                return;
                            } catch (SSLException e10) {
                                SslHandler sslHandler2 = SslHandler.this;
                                sslHandler2.handleUnwrapThrowable(sslHandler2.ctx, e10);
                                return;
                            }
                        }
                        try {
                            SslHandler sslHandler3 = SslHandler.this;
                            if (!sslHandler3.wrapNonAppData(sslHandler3.ctx, false) && this.inUnwrap) {
                                SslHandler sslHandler4 = SslHandler.this;
                                sslHandler4.unwrapNonAppData(sslHandler4.ctx);
                            }
                            SslHandler sslHandler5 = SslHandler.this;
                            sslHandler5.forceFlush(sslHandler5.ctx);
                            tryDecodeAgain();
                            return;
                        } catch (Throwable th) {
                            taskError(th);
                            return;
                        }
                    }
                    safeExceptionCaught(th);
                }
                SslHandler.this.setHandshakeSuccess();
                SslHandler.this.setHandshakeSuccessIfStillHandshaking();
                try {
                    SslHandler sslHandler6 = SslHandler.this;
                    sslHandler6.wrap(sslHandler6.ctx, this.inUnwrap);
                    if (this.inUnwrap) {
                        SslHandler sslHandler7 = SslHandler.this;
                        sslHandler7.unwrapNonAppData(sslHandler7.ctx);
                    }
                    SslHandler sslHandler8 = SslHandler.this;
                    sslHandler8.forceFlush(sslHandler8.ctx);
                    tryDecodeAgain();
                } catch (Throwable th2) {
                    taskError(th2);
                }
            } catch (Throwable th3) {
                safeExceptionCaught(th3);
            }
        }

        /* JADX INFO: Access modifiers changed from: private */
        public void safeExceptionCaught(Throwable th) {
            try {
                SslHandler sslHandler = SslHandler.this;
                sslHandler.exceptionCaught(sslHandler.ctx, wrapIfNeeded(th));
            } catch (Throwable th2) {
                SslHandler.this.ctx.fireExceptionCaught(th2);
            }
        }

        private void taskError(Throwable th) {
            if (!this.inUnwrap) {
                SslHandler sslHandler = SslHandler.this;
                sslHandler.setHandshakeFailure(sslHandler.ctx, th);
                SslHandler sslHandler2 = SslHandler.this;
                sslHandler2.forceFlush(sslHandler2.ctx);
                return;
            }
            try {
                SslHandler sslHandler3 = SslHandler.this;
                sslHandler3.handleUnwrapThrowable(sslHandler3.ctx, th);
            } catch (Throwable th2) {
                safeExceptionCaught(th2);
            }
        }

        private void tryDecodeAgain() {
            try {
                SslHandler sslHandler = SslHandler.this;
                sslHandler.channelRead(sslHandler.ctx, Unpooled.EMPTY_BUFFER);
            } catch (Throwable th) {
                try {
                    safeExceptionCaught(th);
                } finally {
                    SslHandler.this.channelReadComplete0(SslHandler.this.ctx);
                }
            }
        }

        private Throwable wrapIfNeeded(Throwable th) {
            return (this.inUnwrap && !(th instanceof DecoderException)) ? new DecoderException(th) : th;
        }

        @Override // java.lang.Runnable
        public void run() {
            try {
                SslHandler.runAllDelegatedTasks(SslHandler.this.engine);
                SslHandler.this.ctx.executor().execute(new Runnable() { // from class: io.netty.handler.ssl.SslHandler.SslTasksRunner.1
                    @Override // java.lang.Runnable
                    public void run() {
                        SslTasksRunner.this.resumeOnEventExecutor();
                    }
                });
            } catch (Throwable th) {
                handleException(th);
            }
        }
    }

    public SslHandler(SSLEngine sSLEngine) {
        this(sSLEngine, false);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static void addCloseListener(ChannelFuture channelFuture, ChannelPromise channelPromise) {
        channelFuture.addListener((GenericFutureListener<? extends Future<? super Void>>) new ChannelPromiseNotifier(false, channelPromise));
    }

    private ByteBuf allocate(ChannelHandlerContext channelHandlerContext, int i10) {
        ByteBufAllocator byteBufAllocatorAlloc = channelHandlerContext.alloc();
        return this.engineType.wantsDirectBuffer ? byteBufAllocatorAlloc.directBuffer(i10) : byteBufAllocatorAlloc.buffer(i10);
    }

    private ByteBuf allocateOutNetBuf(ChannelHandlerContext channelHandlerContext, int i10, int i11) {
        return this.engineType.allocateWrapBuffer(this, channelHandlerContext.alloc(), i10, i11);
    }

    private void applyHandshakeTimeout() {
        final Promise<Channel> promise = this.handshakePromise;
        final long j10 = this.handshakeTimeoutMillis;
        if (j10 <= 0 || promise.isDone()) {
            return;
        }
        final ScheduledFuture<?> scheduledFutureSchedule = this.ctx.executor().schedule(new Runnable() { // from class: io.netty.handler.ssl.SslHandler.5
            @Override // java.lang.Runnable
            public void run() {
                if (promise.isDone()) {
                    return;
                }
                SslHandshakeTimeoutException sslHandshakeTimeoutException = new SslHandshakeTimeoutException("handshake timed out after " + j10 + "ms");
                try {
                    if (promise.tryFailure(sslHandshakeTimeoutException)) {
                        SslUtils.handleHandshakeFailure(SslHandler.this.ctx, sslHandshakeTimeoutException, true);
                    }
                } finally {
                    SslHandler sslHandler = SslHandler.this;
                    sslHandler.releaseAndFailAll(sslHandler.ctx, sslHandshakeTimeoutException);
                }
            }
        }, j10, TimeUnit.MILLISECONDS);
        promise.addListener((GenericFutureListener<? extends Future<? super Channel>>) new FutureListener<Channel>() { // from class: io.netty.handler.ssl.SslHandler.6
            @Override // io.netty.util.concurrent.GenericFutureListener
            public void operationComplete(Future<Channel> future) throws Exception {
                scheduledFutureSchedule.cancel(false);
            }
        });
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static boolean attemptCopyToCumulation(ByteBuf byteBuf, ByteBuf byteBuf2, int i10) {
        int i11 = byteBuf2.readableBytes();
        int iCapacity = byteBuf.capacity();
        if (i10 - byteBuf.readableBytes() < i11 || ((!byteBuf.isWritable(i11) || iCapacity < i10) && (iCapacity >= i10 || !ByteBufUtil.ensureWritableSuccess(byteBuf.ensureWritable(i11, false))))) {
            return false;
        }
        byteBuf.writeBytes(byteBuf2);
        byteBuf2.release();
        return true;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void channelReadComplete0(ChannelHandlerContext channelHandlerContext) {
        discardSomeReadBytes();
        flushIfNeeded(channelHandlerContext);
        readIfNeeded(channelHandlerContext);
        this.firedChannelRead = false;
        channelHandlerContext.fireChannelReadComplete();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void closeOutbound0(ChannelPromise channelPromise) {
        this.outboundClosed = true;
        this.engine.closeOutbound();
        try {
            flush(this.ctx, channelPromise);
        } catch (Exception e10) {
            if (channelPromise.tryFailure(e10)) {
                return;
            }
            logger.warn("{} flush() raised a masked exception.", this.ctx.channel(), e10);
        }
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Type inference failed for: r7v1, types: [io.netty.channel.ChannelPromise] */
    /* JADX WARN: Type inference failed for: r7v2, types: [io.netty.channel.ChannelPromise] */
    private void closeOutboundAndChannel(ChannelHandlerContext channelHandlerContext, final ChannelPromise channelPromise, boolean z10) throws Exception {
        this.outboundClosed = true;
        this.engine.closeOutbound();
        if (!channelHandlerContext.channel().isActive()) {
            if (z10) {
                channelHandlerContext.disconnect(channelPromise);
                return;
            } else {
                channelHandlerContext.close(channelPromise);
                return;
            }
        }
        ChannelPromise channelPromiseNewPromise = channelHandlerContext.newPromise();
        try {
            flush(channelHandlerContext, channelPromiseNewPromise);
            if (this.closeNotify) {
                return;
            }
            this.closeNotify = true;
            ChannelPromise channelPromiseNewPromise2 = channelHandlerContext.newPromise();
            ChannelPromiseNotifier channelPromiseNotifier = new ChannelPromiseNotifier(false, channelPromise);
        } finally {
            if (this.closeNotify) {
                this.sslClosePromise.addListener((GenericFutureListener) new FutureListener<Channel>() { // from class: io.netty.handler.ssl.SslHandler.3
                    @Override // io.netty.util.concurrent.GenericFutureListener
                    public void operationComplete(Future<Channel> future) {
                        channelPromise.setSuccess();
                    }
                });
            } else {
                this.closeNotify = true;
                safeClose(channelHandlerContext, channelPromiseNewPromise, channelHandlerContext.newPromise().addListener((GenericFutureListener<? extends Future<? super Void>>) new ChannelPromiseNotifier(false, channelPromise)));
            }
        }
    }

    private void decodeJdkCompatible(ChannelHandlerContext channelHandlerContext, ByteBuf byteBuf) throws NotSslRecordException {
        int i10 = this.packetLength;
        if (i10 <= 0) {
            int i11 = byteBuf.readableBytes();
            if (i11 < 5) {
                return;
            }
            int encryptedPacketLength = SslUtils.getEncryptedPacketLength(byteBuf, byteBuf.readerIndex());
            if (encryptedPacketLength == -2) {
                NotSslRecordException notSslRecordException = new NotSslRecordException("not an SSL/TLS record: " + ByteBufUtil.hexDump(byteBuf));
                byteBuf.skipBytes(byteBuf.readableBytes());
                setHandshakeFailure(channelHandlerContext, notSslRecordException);
                throw notSslRecordException;
            }
            if (encryptedPacketLength > i11) {
                this.packetLength = encryptedPacketLength;
                return;
            }
            i10 = encryptedPacketLength;
        } else if (byteBuf.readableBytes() < i10) {
            return;
        }
        this.packetLength = 0;
        try {
            byteBuf.skipBytes(unwrap(channelHandlerContext, byteBuf, byteBuf.readerIndex(), i10));
        } catch (Throwable th) {
            handleUnwrapThrowable(channelHandlerContext, th);
        }
    }

    private void decodeNonJdkCompatible(ChannelHandlerContext channelHandlerContext, ByteBuf byteBuf) {
        try {
            byteBuf.skipBytes(unwrap(channelHandlerContext, byteBuf, byteBuf.readerIndex(), byteBuf.readableBytes()));
        } catch (Throwable th) {
            handleUnwrapThrowable(channelHandlerContext, th);
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void executeDelegatedTasks(boolean z10) {
        this.processTask = true;
        try {
            this.delegatedTaskExecutor.execute(new SslTasksRunner(z10));
        } catch (RejectedExecutionException e10) {
            this.processTask = false;
            throw e10;
        }
    }

    private void finishWrap(ChannelHandlerContext channelHandlerContext, ByteBuf byteBuf, ChannelPromise channelPromise, boolean z10, boolean z11) {
        if (byteBuf == null) {
            byteBuf = Unpooled.EMPTY_BUFFER;
        } else if (!byteBuf.isReadable()) {
            byteBuf.release();
            byteBuf = Unpooled.EMPTY_BUFFER;
        }
        if (channelPromise != null) {
            channelHandlerContext.write(byteBuf, channelPromise);
        } else {
            channelHandlerContext.write(byteBuf);
        }
        if (z10) {
            this.needsFlush = true;
        }
        if (z11) {
            readIfNeeded(channelHandlerContext);
        }
    }

    private void flushIfNeeded(ChannelHandlerContext channelHandlerContext) {
        if (this.needsFlush) {
            forceFlush(channelHandlerContext);
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void forceFlush(ChannelHandlerContext channelHandlerContext) {
        this.needsFlush = false;
        channelHandlerContext.flush();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void handleUnwrapThrowable(ChannelHandlerContext channelHandlerContext, Throwable th) {
        try {
            try {
                if (this.handshakePromise.tryFailure(th)) {
                    channelHandlerContext.fireUserEventTriggered((Object) new SslHandshakeCompletionEvent(th));
                }
                wrapAndFlush(channelHandlerContext);
                setHandshakeFailure(channelHandlerContext, th, true, false, true);
            } catch (SSLException e10) {
                logger.debug("SSLException during trying to call SSLEngine.wrap(...) because of an previous SSLException, ignoring...", (Throwable) e10);
                setHandshakeFailure(channelHandlerContext, th, true, false, true);
            }
            PlatformDependent.throwException(th);
        } catch (Throwable th2) {
            setHandshakeFailure(channelHandlerContext, th, true, false, true);
            throw th2;
        }
    }

    private void handshake() {
        if (this.engine.getHandshakeStatus() == SSLEngineResult.HandshakeStatus.NOT_HANDSHAKING && !this.handshakePromise.isDone()) {
            ChannelHandlerContext channelHandlerContext = this.ctx;
            try {
                this.engine.beginHandshake();
                wrapNonAppData(channelHandlerContext, false);
            } catch (Throwable th) {
                try {
                    setHandshakeFailure(channelHandlerContext, th);
                } finally {
                    forceFlush(channelHandlerContext);
                }
            }
        }
    }

    private boolean ignoreException(Throwable th) {
        if (!(th instanceof SSLException) && (th instanceof IOException) && this.sslClosePromise.isDone()) {
            String message = th.getMessage();
            if (message != null && IGNORABLE_ERROR_MESSAGE.matcher(message).matches()) {
                return true;
            }
            for (StackTraceElement stackTraceElement : th.getStackTrace()) {
                String className = stackTraceElement.getClassName();
                String methodName = stackTraceElement.getMethodName();
                if (!className.startsWith("io.netty.") && "read".equals(methodName)) {
                    if (IGNORABLE_CLASS_IN_STACK.matcher(className).matches()) {
                        return true;
                    }
                    try {
                        Class<?> clsLoadClass = PlatformDependent.getClassLoader(getClass()).loadClass(className);
                        if (!SocketChannel.class.isAssignableFrom(clsLoadClass) && !DatagramChannel.class.isAssignableFrom(clsLoadClass) && (PlatformDependent.javaVersion() < 7 || !"com.sun.nio.sctp.SctpChannel".equals(clsLoadClass.getSuperclass().getName()))) {
                        }
                        return true;
                    } catch (Throwable th2) {
                        logger.debug("Unexpected exception while loading class {} classname {}", getClass(), className, th2);
                    }
                }
            }
        }
        return false;
    }

    private static boolean inEventLoop(Executor executor) {
        return (executor instanceof EventExecutor) && ((EventExecutor) executor).inEventLoop();
    }

    public static boolean isEncrypted(ByteBuf byteBuf) {
        if (byteBuf.readableBytes() >= 5) {
            return SslUtils.getEncryptedPacketLength(byteBuf, byteBuf.readerIndex()) != -2;
        }
        throw new IllegalArgumentException("buffer must have at least 5 readable bytes");
    }

    private static IllegalStateException newPendingWritesNullException() {
        return new IllegalStateException("pendingUnencryptedWrites is null, handlerRemoved0 called?");
    }

    private void notifyClosePromise(Throwable th) {
        if (th == null) {
            if (this.sslClosePromise.trySuccess(this.ctx.channel())) {
                this.ctx.fireUserEventTriggered((Object) SslCloseCompletionEvent.SUCCESS);
            }
        } else if (this.sslClosePromise.tryFailure(th)) {
            this.ctx.fireUserEventTriggered((Object) new SslCloseCompletionEvent(th));
        }
    }

    private void readIfNeeded(ChannelHandlerContext channelHandlerContext) {
        if (channelHandlerContext.channel().config().isAutoRead()) {
            return;
        }
        if (this.firedChannelRead && this.handshakePromise.isDone()) {
            return;
        }
        channelHandlerContext.read();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void releaseAndFailAll(ChannelHandlerContext channelHandlerContext, Throwable th) {
        SslHandlerCoalescingBufferQueue sslHandlerCoalescingBufferQueue = this.pendingUnencryptedWrites;
        if (sslHandlerCoalescingBufferQueue != null) {
            sslHandlerCoalescingBufferQueue.releaseAndFailAll(channelHandlerContext, th);
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void renegotiateOnEventLoop(Promise<Channel> promise) {
        Promise<Channel> promise2 = this.handshakePromise;
        if (!promise2.isDone()) {
            promise2.addListener((GenericFutureListener<? extends Future<? super Channel>>) new PromiseNotifier(promise));
            return;
        }
        this.handshakePromise = promise;
        handshake();
        applyHandshakeTimeout();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static void runAllDelegatedTasks(SSLEngine sSLEngine) {
        while (true) {
            Runnable delegatedTask = sSLEngine.getDelegatedTask();
            if (delegatedTask == null) {
                return;
            } else {
                delegatedTask.run();
            }
        }
    }

    private boolean runDelegatedTasks(boolean z10) {
        Executor executor = this.delegatedTaskExecutor;
        if (executor == ImmediateExecutor.INSTANCE || inEventLoop(executor)) {
            runAllDelegatedTasks(this.engine);
            return true;
        }
        executeDelegatedTasks(z10);
        return false;
    }

    private void safeClose(final ChannelHandlerContext channelHandlerContext, final ChannelFuture channelFuture, final ChannelPromise channelPromise) {
        if (!channelHandlerContext.channel().isActive()) {
            channelHandlerContext.close(channelPromise);
            return;
        }
        final ScheduledFuture<?> scheduledFutureSchedule = null;
        if (!channelFuture.isDone()) {
            long j10 = this.closeNotifyFlushTimeoutMillis;
            if (j10 > 0) {
                scheduledFutureSchedule = channelHandlerContext.executor().schedule(new Runnable() { // from class: io.netty.handler.ssl.SslHandler.7
                    @Override // java.lang.Runnable
                    public void run() {
                        if (channelFuture.isDone()) {
                            return;
                        }
                        SslHandler.logger.warn("{} Last write attempt timed out; force-closing the connection.", channelHandlerContext.channel());
                        ChannelHandlerContext channelHandlerContext2 = channelHandlerContext;
                        SslHandler.addCloseListener(channelHandlerContext2.close(channelHandlerContext2.newPromise()), channelPromise);
                    }
                }, j10, TimeUnit.MILLISECONDS);
            }
        }
        channelFuture.addListener((GenericFutureListener<? extends Future<? super Void>>) new ChannelFutureListener() { // from class: io.netty.handler.ssl.SslHandler.8
            @Override // io.netty.util.concurrent.GenericFutureListener
            public void operationComplete(ChannelFuture channelFuture2) throws Exception {
                java.util.concurrent.ScheduledFuture scheduledFuture = scheduledFutureSchedule;
                if (scheduledFuture != null) {
                    scheduledFuture.cancel(false);
                }
                final long j11 = SslHandler.this.closeNotifyReadTimeoutMillis;
                if (j11 <= 0) {
                    ChannelHandlerContext channelHandlerContext2 = channelHandlerContext;
                    SslHandler.addCloseListener(channelHandlerContext2.close(channelHandlerContext2.newPromise()), channelPromise);
                } else {
                    final ScheduledFuture<?> scheduledFutureSchedule2 = !SslHandler.this.sslClosePromise.isDone() ? channelHandlerContext.executor().schedule(new Runnable() { // from class: io.netty.handler.ssl.SslHandler.8.1
                        @Override // java.lang.Runnable
                        public void run() {
                            if (SslHandler.this.sslClosePromise.isDone()) {
                                return;
                            }
                            SslHandler.logger.debug("{} did not receive close_notify in {}ms; force-closing the connection.", channelHandlerContext.channel(), Long.valueOf(j11));
                            ChannelHandlerContext channelHandlerContext3 = channelHandlerContext;
                            SslHandler.addCloseListener(channelHandlerContext3.close(channelHandlerContext3.newPromise()), channelPromise);
                        }
                    }, j11, TimeUnit.MILLISECONDS) : null;
                    SslHandler.this.sslClosePromise.addListener((GenericFutureListener) new FutureListener<Channel>() { // from class: io.netty.handler.ssl.SslHandler.8.2
                        @Override // io.netty.util.concurrent.GenericFutureListener
                        public void operationComplete(Future<Channel> future) throws Exception {
                            java.util.concurrent.ScheduledFuture scheduledFuture2 = scheduledFutureSchedule2;
                            if (scheduledFuture2 != null) {
                                scheduledFuture2.cancel(false);
                            }
                            ChannelHandlerContext channelHandlerContext3 = channelHandlerContext;
                            SslHandler.addCloseListener(channelHandlerContext3.close(channelHandlerContext3.newPromise()), channelPromise);
                        }
                    });
                }
            }
        });
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void setHandshakeFailure(ChannelHandlerContext channelHandlerContext, Throwable th) {
        setHandshakeFailure(channelHandlerContext, th, true, true, false);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void setHandshakeFailureTransportFailure(ChannelHandlerContext channelHandlerContext, Throwable th) {
        try {
            SSLException sSLException = new SSLException("failure when writing TLS control frames", th);
            releaseAndFailAll(channelHandlerContext, sSLException);
            if (this.handshakePromise.tryFailure(sSLException)) {
                channelHandlerContext.fireUserEventTriggered((Object) new SslHandshakeCompletionEvent(sSLException));
            }
        } finally {
            channelHandlerContext.close();
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void setHandshakeSuccess() {
        this.handshakePromise.trySuccess(this.ctx.channel());
        InternalLogger internalLogger = logger;
        if (internalLogger.isDebugEnabled()) {
            internalLogger.debug("{} HANDSHAKEN: {}", this.ctx.channel(), this.engine.getSession().getCipherSuite());
        }
        this.ctx.fireUserEventTriggered((Object) SslHandshakeCompletionEvent.SUCCESS);
        if (!this.readDuringHandshake || this.ctx.channel().config().isAutoRead()) {
            return;
        }
        this.readDuringHandshake = false;
        this.ctx.read();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public boolean setHandshakeSuccessIfStillHandshaking() {
        if (this.handshakePromise.isDone()) {
            return false;
        }
        setHandshakeSuccess();
        return true;
    }

    private void startHandshakeProcessing() {
        if (this.handshakeStarted) {
            return;
        }
        this.handshakeStarted = true;
        if (this.engine.getUseClientMode()) {
            handshake();
        }
        applyHandshakeTimeout();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static ByteBuffer toByteBuffer(ByteBuf byteBuf, int i10, int i11) {
        return byteBuf.nioBufferCount() == 1 ? byteBuf.internalNioBuffer(i10, i11) : byteBuf.nioBuffer(i10, i11);
    }

    /* JADX WARN: Code duplicated, block: B:49:0x00b2 A[Catch: all -> 0x0156, EDGE_INSN: B:49:0x00b2->B:67:0x0127 BREAK  A[LOOP:0: B:3:0x0013->B:114:0x0013], TryCatch #1 {all -> 0x0156, blocks: (B:8:0x0026, B:14:0x004c, B:39:0x009e, B:41:0x00a2, B:47:0x00ae, B:49:0x00b2, B:67:0x0127, B:69:0x012b, B:71:0x0133, B:74:0x013a, B:76:0x013f, B:24:0x0062, B:25:0x0078, B:26:0x0079, B:30:0x0083, B:35:0x0090, B:36:0x0095, B:50:0x00b7, B:52:0x00c8, B:56:0x00da), top: B:96:0x0026 }] */
    private int unwrap(ChannelHandlerContext channelHandlerContext, ByteBuf byteBuf, int i10, int i11) throws Throwable {
        boolean z10;
        boolean z11;
        int i12 = i10;
        int i13 = i11;
        ByteBuf byteBufAllocate = allocate(channelHandlerContext, i11);
        int i14 = -1;
        boolean z12 = false;
        boolean z13 = false;
        while (true) {
            try {
                if (channelHandlerContext.isRemoved()) {
                    z10 = true;
                    break;
                }
                z10 = true;
                try {
                    SSLEngineResult sSLEngineResultUnwrap = this.engineType.unwrap(this, byteBuf, i12, i13, byteBufAllocate);
                    SSLEngineResult.Status status = sSLEngineResultUnwrap.getStatus();
                    SSLEngineResult.HandshakeStatus handshakeStatus = sSLEngineResultUnwrap.getHandshakeStatus();
                    int iBytesProduced = sSLEngineResultUnwrap.bytesProduced();
                    int iBytesConsumed = sSLEngineResultUnwrap.bytesConsumed();
                    i12 += iBytesConsumed;
                    i13 -= iBytesConsumed;
                    int i15 = AnonymousClass9.$SwitchMap$javax$net$ssl$SSLEngineResult$Status[status.ordinal()];
                    if (i15 != 1) {
                        if (i15 == 2) {
                            z13 = true;
                        }
                        int i16 = AnonymousClass9.$SwitchMap$javax$net$ssl$SSLEngineResult$HandshakeStatus[handshakeStatus.ordinal()];
                        if (i16 == 1) {
                            if (!runDelegatedTasks(true)) {
                                z12 = false;
                                break;
                            }
                            if (status != SSLEngineResult.Status.BUFFER_UNDERFLOW) {
                                i14 = -1;
                            }
                            if (handshakeStatus == SSLEngineResult.HandshakeStatus.NEED_UNWRAP) {
                                break;
                            }
                            readIfNeeded(channelHandlerContext);
                            break;
                        }
                        if (i16 == 2) {
                            setHandshakeSuccess();
                            z12 = true;
                        } else if (i16 == 3) {
                            if (!setHandshakeSuccessIfStillHandshaking()) {
                                if (i13 != 0) {
                                    break;
                                }
                                break;
                            }
                            i14 = -1;
                            z12 = true;
                        } else if (i16 == 4) {
                            if (wrapNonAppData(channelHandlerContext, true) && i13 == 0) {
                                break;
                            }
                        } else if (i16 != 5) {
                            throw new IllegalStateException("unknown handshake status: " + handshakeStatus);
                        }
                        if (status != SSLEngineResult.Status.BUFFER_UNDERFLOW && (handshakeStatus == SSLEngineResult.HandshakeStatus.NEED_TASK || iBytesConsumed != 0 || iBytesProduced != 0)) {
                            i14 = -1;
                        }
                        if (handshakeStatus == SSLEngineResult.HandshakeStatus.NEED_UNWRAP) {
                            break;
                        }
                        readIfNeeded(channelHandlerContext);
                        break;
                    }
                    int i17 = byteBufAllocate.readableBytes();
                    int applicationBufferSize = this.engine.getSession().getApplicationBufferSize() - i17;
                    if (i17 > 0) {
                        this.firedChannelRead = true;
                        channelHandlerContext.fireChannelRead((Object) byteBufAllocate);
                        if (applicationBufferSize <= 0) {
                            try {
                                applicationBufferSize = this.engine.getSession().getApplicationBufferSize();
                            } catch (Throwable th) {
                                th = th;
                                byteBufAllocate = null;
                                if (byteBufAllocate != null) {
                                    if (byteBufAllocate.isReadable()) {
                                        this.firedChannelRead = z10;
                                        channelHandlerContext.fireChannelRead((Object) byteBufAllocate);
                                    } else {
                                        byteBufAllocate.release();
                                    }
                                }
                                throw th;
                            }
                        }
                    } else {
                        byteBufAllocate.release();
                    }
                    if (i17 == 0 && i14 == 0) {
                        throw new IllegalStateException("Two consecutive overflows but no content was consumed. " + SSLSession.class.getSimpleName() + " getApplicationBufferSize: " + this.engine.getSession().getApplicationBufferSize() + " maybe too small.");
                    }
                    byteBufAllocate = allocate(channelHandlerContext, this.engineType.calculatePendingData(this, applicationBufferSize));
                    i14 = i17;
                } catch (Throwable th2) {
                    th = th2;
                }
            } catch (Throwable th3) {
                th = th3;
                z10 = true;
            }
        }
        if (this.flushedBeforeHandshake && this.handshakePromise.isDone()) {
            this.flushedBeforeHandshake = false;
            z11 = true;
        } else {
            z11 = z12;
        }
        if (z11) {
            wrap(channelHandlerContext, z10);
        }
        if (z13) {
            notifyClosePromise(null);
        }
        if (byteBufAllocate != null) {
            if (byteBufAllocate.isReadable()) {
                this.firedChannelRead = z10;
                channelHandlerContext.fireChannelRead((Object) byteBufAllocate);
            } else {
                byteBufAllocate.release();
            }
        }
        return i11 - i13;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void unwrapNonAppData(ChannelHandlerContext channelHandlerContext) throws Throwable {
        unwrap(channelHandlerContext, Unpooled.EMPTY_BUFFER, 0, 0);
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* JADX WARN: Code duplicated, block: B:101:0x004e A[SYNTHETIC] */
    /* JADX WARN: Code duplicated, block: B:102:0x00e1 A[SYNTHETIC] */
    /* JADX WARN: Code duplicated, block: B:103:0x0097 A[SYNTHETIC] */
    /* JADX WARN: Code duplicated, block: B:104:0x008e A[SYNTHETIC] */
    /* JADX WARN: Code duplicated, block: B:105:0x00e7 A[SYNTHETIC] */
    /* JADX WARN: Code duplicated, block: B:30:0x006e A[Catch: all -> 0x00f2, TRY_ENTER, TryCatch #0 {all -> 0x00f2, blocks: (B:19:0x0040, B:21:0x004e, B:30:0x006e, B:32:0x0074, B:33:0x007b), top: B:84:0x0040 }] */
    /* JADX WARN: Code duplicated, block: B:32:0x0074 A[Catch: all -> 0x00f2, TryCatch #0 {all -> 0x00f2, blocks: (B:19:0x0040, B:21:0x004e, B:30:0x006e, B:32:0x0074, B:33:0x007b), top: B:84:0x0040 }] */
    /* JADX WARN: Code duplicated, block: B:33:0x007b A[Catch: all -> 0x00f2, TRY_LEAVE, TryCatch #0 {all -> 0x00f2, blocks: (B:19:0x0040, B:21:0x004e, B:30:0x006e, B:32:0x0074, B:33:0x007b), top: B:84:0x0040 }] */
    /* JADX WARN: Code duplicated, block: B:39:0x0091  */
    /* JADX WARN: Code duplicated, block: B:41:0x0094  */
    /* JADX WARN: Code duplicated, block: B:45:0x009a  */
    /* JADX WARN: Code duplicated, block: B:46:0x00a1 A[Catch: all -> 0x00ee, TryCatch #7 {all -> 0x00ee, blocks: (B:24:0x005c, B:35:0x007f, B:46:0x00a1, B:47:0x00bb, B:49:0x00bf, B:48:0x00bc, B:61:0x00e1), top: B:98:0x007f }] */
    /* JADX WARN: Code duplicated, block: B:48:0x00bc A[Catch: all -> 0x00ee, TryCatch #7 {all -> 0x00ee, blocks: (B:24:0x005c, B:35:0x007f, B:46:0x00a1, B:47:0x00bb, B:49:0x00bf, B:48:0x00bc, B:61:0x00e1), top: B:98:0x007f }] */
    /* JADX WARN: Code duplicated, block: B:52:0x00c8  */
    /* JADX WARN: Code duplicated, block: B:53:0x00cb  */
    /* JADX WARN: Code duplicated, block: B:64:0x00ea  */
    /* JADX WARN: Code duplicated, block: B:81:0x010f  */
    /* JADX WARN: Instruction removed from duplicated block: B:46:0x00a1, please report this as an issue */
    public void wrap(ChannelHandlerContext channelHandlerContext, boolean z10) throws Throwable {
        ByteBuf byteBuf;
        ChannelPromise channelPromise;
        ByteBuf byteBuf2;
        ChannelPromise channelPromise2;
        ByteBuf byteBuf3;
        SSLEngineResult sSLEngineResultWrap;
        ChannelPromise channelPromise3;
        boolean z11;
        ChannelPromise channelPromise4;
        int i10;
        ByteBuf byteBuf4;
        ByteBuf byteBuf5;
        ByteBufAllocator byteBufAllocatorAlloc = channelHandlerContext.alloc();
        ByteBuf byteBuf6 = null;
        try {
            int i11 = this.wrapDataSize;
            ByteBuf byteBufAllocateOutNetBuf = null;
            ChannelPromise channelPromiseNewPromise = null;
            while (true) {
                try {
                    if (channelHandlerContext.isRemoved()) {
                        byteBuf2 = byteBufAllocateOutNetBuf;
                        channelPromise2 = channelPromiseNewPromise;
                        break;
                    }
                    channelPromiseNewPromise = channelHandlerContext.newPromise();
                    ByteBuf byteBufRemove = i11 > 0 ? this.pendingUnencryptedWrites.remove(byteBufAllocatorAlloc, i11, channelPromiseNewPromise) : this.pendingUnencryptedWrites.removeFirst(channelPromiseNewPromise);
                    if (byteBufRemove == null) {
                        channelPromise2 = channelPromiseNewPromise;
                        byteBuf6 = byteBufRemove;
                        byteBuf2 = byteBufAllocateOutNetBuf;
                        break;
                    }
                    if (byteBufAllocateOutNetBuf != null) {
                        byteBuf3 = byteBufAllocateOutNetBuf;
                        sSLEngineResultWrap = wrap(byteBufAllocatorAlloc, this.engine, byteBufRemove, byteBuf3);
                        if (sSLEngineResultWrap.getStatus() == SSLEngineResult.Status.CLOSED) {
                            byteBufRemove.release();
                            SSLException sSLException = new SSLException("SSLEngine closed already");
                            channelPromiseNewPromise.tryFailure(sSLException);
                            this.pendingUnencryptedWrites.releaseAndFailAll(channelHandlerContext, sSLException);
                            channelPromise3 = null;
                            z11 = false;
                        } else {
                            if (byteBufRemove.isReadable()) {
                                this.pendingUnencryptedWrites.addFirst(byteBufRemove, channelPromiseNewPromise);
                                channelPromise4 = null;
                            } else {
                                byteBufRemove.release();
                                channelPromise4 = channelPromiseNewPromise;
                            }
                            i10 = AnonymousClass9.$SwitchMap$javax$net$ssl$SSLEngineResult$HandshakeStatus[sSLEngineResultWrap.getHandshakeStatus().ordinal()];
                            if (i10 != 1) {
                                if (i10 != 2) {
                                    if (i10 != 3) {
                                        if (i10 != 4) {
                                            if (i10 == 5) {
                                                throw new IllegalStateException("Unknown handshake status: " + sSLEngineResultWrap.getHandshakeStatus());
                                            }
                                            z11 = true;
                                            channelPromise3 = channelPromise4;
                                        }
                                    }
                                    if (byteBuf3.isReadable()) {
                                        byteBuf5 = byteBuf3;
                                        byteBuf4 = null;
                                    } else {
                                        byteBuf4 = byteBuf3;
                                        byteBuf5 = null;
                                    }
                                    finishWrap(channelHandlerContext, byteBuf5, channelPromise4, z10, false);
                                    channelPromiseNewPromise = null;
                                    byteBufAllocateOutNetBuf = byteBuf4;
                                } else {
                                    setHandshakeSuccess();
                                }
                                setHandshakeSuccessIfStillHandshaking();
                                if (byteBuf3.isReadable()) {
                                    byteBuf5 = byteBuf3;
                                    byteBuf4 = null;
                                } else {
                                    byteBuf4 = byteBuf3;
                                    byteBuf5 = null;
                                }
                                finishWrap(channelHandlerContext, byteBuf5, channelPromise4, z10, false);
                                channelPromiseNewPromise = null;
                                byteBufAllocateOutNetBuf = byteBuf4;
                            } else if (!runDelegatedTasks(z10)) {
                                byteBuf2 = byteBuf3;
                                channelPromise2 = channelPromise4;
                                break;
                            } else {
                                byteBufAllocateOutNetBuf = byteBuf3;
                                channelPromiseNewPromise = channelPromise4;
                            }
                        }
                        finishWrap(channelHandlerContext, byteBuf3, channelPromise3, z10, z11);
                        return;
                    }
                    try {
                        byteBufAllocateOutNetBuf = allocateOutNetBuf(channelHandlerContext, byteBufRemove.readableBytes(), byteBufRemove.nioBufferCount());
                        byteBuf3 = byteBufAllocateOutNetBuf;
                        try {
                            sSLEngineResultWrap = wrap(byteBufAllocatorAlloc, this.engine, byteBufRemove, byteBuf3);
                            if (sSLEngineResultWrap.getStatus() == SSLEngineResult.Status.CLOSED) {
                                byteBufRemove.release();
                                try {
                                    SSLException sSLException2 = new SSLException("SSLEngine closed already");
                                    channelPromiseNewPromise.tryFailure(sSLException2);
                                    this.pendingUnencryptedWrites.releaseAndFailAll(channelHandlerContext, sSLException2);
                                    channelPromise3 = null;
                                    z11 = false;
                                } catch (Throwable th) {
                                    th = th;
                                    byteBuf = byteBuf3;
                                    channelPromise = channelPromiseNewPromise;
                                    if (byteBuf6 != null) {
                                        byteBuf6.release();
                                    }
                                    finishWrap(channelHandlerContext, byteBuf, channelPromise, z10, false);
                                    throw th;
                                }
                            } else {
                                if (byteBufRemove.isReadable()) {
                                    this.pendingUnencryptedWrites.addFirst(byteBufRemove, channelPromiseNewPromise);
                                    channelPromise4 = null;
                                } else {
                                    byteBufRemove.release();
                                    channelPromise4 = channelPromiseNewPromise;
                                }
                                try {
                                    i10 = AnonymousClass9.$SwitchMap$javax$net$ssl$SSLEngineResult$HandshakeStatus[sSLEngineResultWrap.getHandshakeStatus().ordinal()];
                                    if (i10 != 1) {
                                        try {
                                            try {
                                                if (i10 != 2) {
                                                    if (i10 != 3) {
                                                        if (i10 != 4) {
                                                            if (i10 == 5) {
                                                                throw new IllegalStateException("Unknown handshake status: " + sSLEngineResultWrap.getHandshakeStatus());
                                                            }
                                                            z11 = true;
                                                            channelPromise3 = channelPromise4;
                                                        }
                                                    }
                                                    if (byteBuf3.isReadable()) {
                                                        byteBuf5 = byteBuf3;
                                                        byteBuf4 = null;
                                                    } else {
                                                        byteBuf4 = byteBuf3;
                                                        byteBuf5 = null;
                                                    }
                                                    finishWrap(channelHandlerContext, byteBuf5, channelPromise4, z10, false);
                                                    channelPromiseNewPromise = null;
                                                    byteBufAllocateOutNetBuf = byteBuf4;
                                                } else {
                                                    setHandshakeSuccess();
                                                }
                                                finishWrap(channelHandlerContext, byteBuf5, channelPromise4, z10, false);
                                                channelPromiseNewPromise = null;
                                                byteBufAllocateOutNetBuf = byteBuf4;
                                            } catch (Throwable th2) {
                                                th = th2;
                                                channelPromise = null;
                                                byteBuf = byteBuf4;
                                            }
                                            if (byteBuf3.isReadable()) {
                                                byteBuf5 = byteBuf3;
                                                byteBuf4 = null;
                                            } else {
                                                byteBuf4 = byteBuf3;
                                                byteBuf5 = null;
                                            }
                                        } catch (Throwable th3) {
                                            th = th3;
                                            byteBuf = byteBuf3;
                                            channelPromise = null;
                                        }
                                        setHandshakeSuccessIfStillHandshaking();
                                    } else if (!runDelegatedTasks(z10)) {
                                        byteBuf2 = byteBuf3;
                                        channelPromise2 = channelPromise4;
                                        break;
                                    } else {
                                        byteBufAllocateOutNetBuf = byteBuf3;
                                        channelPromiseNewPromise = channelPromise4;
                                    }
                                } catch (Throwable th4) {
                                    th = th4;
                                    byteBuf = byteBuf3;
                                    channelPromise = channelPromise4;
                                }
                            }
                            finishWrap(channelHandlerContext, byteBuf3, channelPromise3, z10, z11);
                            return;
                        } catch (Throwable th5) {
                            th = th5;
                            byteBuf6 = byteBufRemove;
                        }
                    } catch (Throwable th6) {
                        th = th6;
                        channelPromise = channelPromiseNewPromise;
                        byteBuf6 = byteBufRemove;
                        byteBuf = byteBufAllocateOutNetBuf;
                    }
                    if (byteBuf6 != null) {
                        byteBuf6.release();
                    }
                    finishWrap(channelHandlerContext, byteBuf, channelPromise, z10, false);
                    throw th;
                } catch (Throwable th7) {
                    th = th7;
                    byteBuf = byteBufAllocateOutNetBuf;
                }
            }
            if (byteBuf6 != null) {
                byteBuf6.release();
            }
            finishWrap(channelHandlerContext, byteBuf2, channelPromise2, z10, false);
        } catch (Throwable th8) {
            th = th8;
            byteBuf = null;
            channelPromise = null;
        }
    }

    private void wrapAndFlush(ChannelHandlerContext channelHandlerContext) throws SSLException {
        if (this.pendingUnencryptedWrites.isEmpty()) {
            this.pendingUnencryptedWrites.add(Unpooled.EMPTY_BUFFER, channelHandlerContext.newPromise());
        }
        if (!this.handshakePromise.isDone()) {
            this.flushedBeforeHandshake = true;
        }
        try {
            wrap(channelHandlerContext, false);
        } finally {
            forceFlush(channelHandlerContext);
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public boolean wrapNonAppData(final ChannelHandlerContext channelHandlerContext, boolean z10) throws SSLException {
        ByteBufAllocator byteBufAllocatorAlloc = channelHandlerContext.alloc();
        ByteBuf byteBufAllocateOutNetBuf = null;
        while (!channelHandlerContext.isRemoved()) {
            try {
                if (byteBufAllocateOutNetBuf == null) {
                    byteBufAllocateOutNetBuf = allocateOutNetBuf(channelHandlerContext, 2048, 1);
                }
                SSLEngineResult sSLEngineResultWrap = wrap(byteBufAllocatorAlloc, this.engine, Unpooled.EMPTY_BUFFER, byteBufAllocateOutNetBuf);
                if (sSLEngineResultWrap.bytesProduced() > 0) {
                    channelHandlerContext.write(byteBufAllocateOutNetBuf).addListener((GenericFutureListener<? extends Future<? super Void>>) new ChannelFutureListener() { // from class: io.netty.handler.ssl.SslHandler.2
                        @Override // io.netty.util.concurrent.GenericFutureListener
                        public void operationComplete(ChannelFuture channelFuture) {
                            Throwable thCause = channelFuture.cause();
                            if (thCause != null) {
                                SslHandler.this.setHandshakeFailureTransportFailure(channelHandlerContext, thCause);
                            }
                        }
                    });
                    if (z10) {
                        this.needsFlush = true;
                    }
                    byteBufAllocateOutNetBuf = null;
                }
                SSLEngineResult.HandshakeStatus handshakeStatus = sSLEngineResultWrap.getHandshakeStatus();
                int i10 = AnonymousClass9.$SwitchMap$javax$net$ssl$SSLEngineResult$HandshakeStatus[handshakeStatus.ordinal()];
                if (i10 == 1) {
                    if (!runDelegatedTasks(z10)) {
                        break;
                    }
                    break;
                }
                if (i10 == 2) {
                    setHandshakeSuccess();
                    if (byteBufAllocateOutNetBuf != null) {
                        byteBufAllocateOutNetBuf.release();
                    }
                    return false;
                }
                if (i10 == 3) {
                    setHandshakeSuccessIfStillHandshaking();
                    if (!z10) {
                        unwrapNonAppData(channelHandlerContext);
                    }
                    if (byteBufAllocateOutNetBuf != null) {
                        byteBufAllocateOutNetBuf.release();
                    }
                    return true;
                }
                if (i10 != 4) {
                    if (i10 != 5) {
                        throw new IllegalStateException("Unknown handshake status: " + sSLEngineResultWrap.getHandshakeStatus());
                    }
                    if (z10) {
                        if (byteBufAllocateOutNetBuf != null) {
                            byteBufAllocateOutNetBuf.release();
                        }
                        return false;
                    }
                    unwrapNonAppData(channelHandlerContext);
                }
                if ((sSLEngineResultWrap.bytesProduced() == 0 && handshakeStatus != SSLEngineResult.HandshakeStatus.NEED_TASK) || (sSLEngineResultWrap.bytesConsumed() == 0 && sSLEngineResultWrap.getHandshakeStatus() == SSLEngineResult.HandshakeStatus.NOT_HANDSHAKING)) {
                    break;
                    break;
                }
            } catch (Throwable th) {
                if (byteBufAllocateOutNetBuf != null) {
                    byteBufAllocateOutNetBuf.release();
                }
                throw th;
            }
        }
        if (byteBufAllocateOutNetBuf != null) {
            byteBufAllocateOutNetBuf.release();
        }
        return false;
    }

    public String applicationProtocol() {
        Object objEngine = engine();
        if (objEngine instanceof ApplicationProtocolAccessor) {
            return ((ApplicationProtocolAccessor) objEngine).getNegotiatedApplicationProtocol();
        }
        return null;
    }

    @Override // io.netty.channel.ChannelOutboundHandler
    public void bind(ChannelHandlerContext channelHandlerContext, SocketAddress socketAddress, ChannelPromise channelPromise) throws Exception {
        channelHandlerContext.bind(socketAddress, channelPromise);
    }

    @Override // io.netty.channel.ChannelInboundHandlerAdapter, io.netty.channel.ChannelInboundHandler
    public void channelActive(ChannelHandlerContext channelHandlerContext) throws Exception {
        if (!this.startTls) {
            startHandshakeProcessing();
        }
        channelHandlerContext.fireChannelActive();
    }

    @Override // io.netty.handler.codec.ByteToMessageDecoder, io.netty.channel.ChannelInboundHandlerAdapter, io.netty.channel.ChannelInboundHandler
    public void channelInactive(ChannelHandlerContext channelHandlerContext) throws Exception {
        ClosedChannelException closedChannelException = new ClosedChannelException();
        setHandshakeFailure(channelHandlerContext, closedChannelException, !this.outboundClosed, this.handshakeStarted, false);
        notifyClosePromise(closedChannelException);
        super.channelInactive(channelHandlerContext);
    }

    @Override // io.netty.handler.codec.ByteToMessageDecoder, io.netty.channel.ChannelInboundHandlerAdapter, io.netty.channel.ChannelInboundHandler
    public void channelReadComplete(ChannelHandlerContext channelHandlerContext) throws Exception {
        channelReadComplete0(channelHandlerContext);
    }

    @Deprecated
    public ChannelFuture close() {
        return closeOutbound();
    }

    public ChannelFuture closeOutbound() {
        return closeOutbound(this.ctx.newPromise());
    }

    @Override // io.netty.channel.ChannelOutboundHandler
    public void connect(ChannelHandlerContext channelHandlerContext, SocketAddress socketAddress, SocketAddress socketAddress2, ChannelPromise channelPromise) throws Exception {
        channelHandlerContext.connect(socketAddress, socketAddress2, channelPromise);
    }

    @Override // io.netty.handler.codec.ByteToMessageDecoder
    protected void decode(ChannelHandlerContext channelHandlerContext, ByteBuf byteBuf, List<Object> list) throws SSLException {
        if (this.processTask) {
            return;
        }
        if (this.jdkCompatibilityMode) {
            decodeJdkCompatible(channelHandlerContext, byteBuf);
        } else {
            decodeNonJdkCompatible(channelHandlerContext, byteBuf);
        }
    }

    @Override // io.netty.channel.ChannelOutboundHandler
    public void deregister(ChannelHandlerContext channelHandlerContext, ChannelPromise channelPromise) throws Exception {
        channelHandlerContext.deregister(channelPromise);
    }

    @Override // io.netty.channel.ChannelOutboundHandler
    public void disconnect(ChannelHandlerContext channelHandlerContext, ChannelPromise channelPromise) throws Exception {
        closeOutboundAndChannel(channelHandlerContext, channelPromise, true);
    }

    public SSLEngine engine() {
        return this.engine;
    }

    @Override // io.netty.channel.ChannelInboundHandlerAdapter, io.netty.channel.ChannelHandlerAdapter, io.netty.channel.ChannelHandler, io.netty.channel.ChannelInboundHandler
    public void exceptionCaught(ChannelHandlerContext channelHandlerContext, Throwable th) throws Exception {
        if (!ignoreException(th)) {
            channelHandlerContext.fireExceptionCaught(th);
            return;
        }
        InternalLogger internalLogger = logger;
        if (internalLogger.isDebugEnabled()) {
            internalLogger.debug("{} Swallowing a harmless 'connection reset by peer / broken pipe' error that occurred while writing close_notify in response to the peer's close_notify", channelHandlerContext.channel(), th);
        }
        if (channelHandlerContext.channel().isActive()) {
            channelHandlerContext.close();
        }
    }

    @Override // io.netty.channel.ChannelOutboundHandler
    public void flush(ChannelHandlerContext channelHandlerContext) throws Exception {
        if (this.startTls && !this.sentFirstMessage) {
            this.sentFirstMessage = true;
            this.pendingUnencryptedWrites.writeAndRemoveAll(channelHandlerContext);
            forceFlush(channelHandlerContext);
            startHandshakeProcessing();
            return;
        }
        if (this.processTask) {
            return;
        }
        try {
            wrapAndFlush(channelHandlerContext);
        } catch (Throwable th) {
            setHandshakeFailure(channelHandlerContext, th);
            PlatformDependent.throwException(th);
        }
    }

    public final long getCloseNotifyFlushTimeoutMillis() {
        return this.closeNotifyFlushTimeoutMillis;
    }

    public final long getCloseNotifyReadTimeoutMillis() {
        return this.closeNotifyReadTimeoutMillis;
    }

    @Deprecated
    public long getCloseNotifyTimeoutMillis() {
        return getCloseNotifyFlushTimeoutMillis();
    }

    public long getHandshakeTimeoutMillis() {
        return this.handshakeTimeoutMillis;
    }

    @Override // io.netty.channel.ChannelHandlerAdapter, io.netty.channel.ChannelHandler
    public void handlerAdded(ChannelHandlerContext channelHandlerContext) throws Exception {
        this.ctx = channelHandlerContext;
        this.pendingUnencryptedWrites = new SslHandlerCoalescingBufferQueue(channelHandlerContext.channel(), 16);
        if (channelHandlerContext.channel().isActive()) {
            startHandshakeProcessing();
        }
    }

    @Override // io.netty.handler.codec.ByteToMessageDecoder
    public void handlerRemoved0(ChannelHandlerContext channelHandlerContext) throws Exception {
        if (!this.pendingUnencryptedWrites.isEmpty()) {
            this.pendingUnencryptedWrites.releaseAndFailAll(channelHandlerContext, new ChannelException("Pending write on removal of SslHandler"));
        }
        this.pendingUnencryptedWrites = null;
        Object obj = this.engine;
        if (obj instanceof ReferenceCounted) {
            ((ReferenceCounted) obj).release();
        }
    }

    public Future<Channel> handshakeFuture() {
        return this.handshakePromise;
    }

    @Override // io.netty.channel.ChannelOutboundHandler
    public void read(ChannelHandlerContext channelHandlerContext) throws Exception {
        if (!this.handshakePromise.isDone()) {
            this.readDuringHandshake = true;
        }
        channelHandlerContext.read();
    }

    public Future<Channel> renegotiate() {
        ChannelHandlerContext channelHandlerContext = this.ctx;
        if (channelHandlerContext != null) {
            return renegotiate(channelHandlerContext.executor().newPromise());
        }
        throw new IllegalStateException();
    }

    public final void setCloseNotifyFlushTimeout(long j10, TimeUnit timeUnit) {
        setCloseNotifyFlushTimeoutMillis(timeUnit.toMillis(j10));
    }

    public final void setCloseNotifyFlushTimeoutMillis(long j10) {
        if (j10 >= 0) {
            this.closeNotifyFlushTimeoutMillis = j10;
            return;
        }
        throw new IllegalArgumentException("closeNotifyFlushTimeoutMillis: " + j10 + " (expected: >= 0)");
    }

    public final void setCloseNotifyReadTimeout(long j10, TimeUnit timeUnit) {
        setCloseNotifyReadTimeoutMillis(timeUnit.toMillis(j10));
    }

    public final void setCloseNotifyReadTimeoutMillis(long j10) {
        if (j10 >= 0) {
            this.closeNotifyReadTimeoutMillis = j10;
            return;
        }
        throw new IllegalArgumentException("closeNotifyReadTimeoutMillis: " + j10 + " (expected: >= 0)");
    }

    @Deprecated
    public void setCloseNotifyTimeout(long j10, TimeUnit timeUnit) {
        setCloseNotifyFlushTimeout(j10, timeUnit);
    }

    @Deprecated
    public void setCloseNotifyTimeoutMillis(long j10) {
        setCloseNotifyFlushTimeoutMillis(j10);
    }

    public void setHandshakeTimeout(long j10, TimeUnit timeUnit) {
        ObjectUtil.checkNotNull(timeUnit, "unit");
        setHandshakeTimeoutMillis(timeUnit.toMillis(j10));
    }

    public void setHandshakeTimeoutMillis(long j10) {
        if (j10 >= 0) {
            this.handshakeTimeoutMillis = j10;
            return;
        }
        throw new IllegalArgumentException("handshakeTimeoutMillis: " + j10 + " (expected: >= 0)");
    }

    public final void setWrapDataSize(int i10) {
        this.wrapDataSize = i10;
    }

    public Future<Channel> sslCloseFuture() {
        return this.sslClosePromise;
    }

    @Override // io.netty.channel.ChannelOutboundHandler
    public void write(ChannelHandlerContext channelHandlerContext, Object obj, ChannelPromise channelPromise) throws Exception {
        if (!(obj instanceof ByteBuf)) {
            UnsupportedMessageTypeException unsupportedMessageTypeException = new UnsupportedMessageTypeException(obj, (Class<?>[]) new Class[]{ByteBuf.class});
            ReferenceCountUtil.safeRelease(obj);
            channelPromise.setFailure((Throwable) unsupportedMessageTypeException);
        } else {
            SslHandlerCoalescingBufferQueue sslHandlerCoalescingBufferQueue = this.pendingUnencryptedWrites;
            if (sslHandlerCoalescingBufferQueue != null) {
                sslHandlerCoalescingBufferQueue.add((ByteBuf) obj, channelPromise);
            } else {
                ReferenceCountUtil.safeRelease(obj);
                channelPromise.setFailure((Throwable) newPendingWritesNullException());
            }
        }
    }

    public SslHandler(SSLEngine sSLEngine, boolean z10) {
        this(sSLEngine, z10, ImmediateExecutor.INSTANCE);
    }

    private void setHandshakeFailure(ChannelHandlerContext channelHandlerContext, Throwable th, boolean z10, boolean z11, boolean z12) {
        String message;
        try {
            this.outboundClosed = true;
            this.engine.closeOutbound();
            if (z10) {
                try {
                    this.engine.closeInbound();
                } catch (SSLException e10) {
                    InternalLogger internalLogger = logger;
                    if (internalLogger.isDebugEnabled() && ((message = e10.getMessage()) == null || (!message.contains("possible truncation attack") && !message.contains("closing inbound before receiving peer's close_notify")))) {
                        internalLogger.debug("{} SSLEngine.closeInbound() raised an exception.", channelHandlerContext.channel(), e10);
                    }
                }
            }
            if (this.handshakePromise.tryFailure(th) || z12) {
                SslUtils.handleHandshakeFailure(channelHandlerContext, th, z11);
            }
            releaseAndFailAll(channelHandlerContext, th);
        } catch (Throwable th2) {
            releaseAndFailAll(channelHandlerContext, th);
            throw th2;
        }
    }

    @Deprecated
    public ChannelFuture close(ChannelPromise channelPromise) {
        return closeOutbound(channelPromise);
    }

    public ChannelFuture closeOutbound(final ChannelPromise channelPromise) {
        ChannelHandlerContext channelHandlerContext = this.ctx;
        if (channelHandlerContext.executor().inEventLoop()) {
            closeOutbound0(channelPromise);
        } else {
            channelHandlerContext.executor().execute(new Runnable() { // from class: io.netty.handler.ssl.SslHandler.1
                @Override // java.lang.Runnable
                public void run() {
                    SslHandler.this.closeOutbound0(channelPromise);
                }
            });
        }
        return channelPromise;
    }

    public SslHandler(SSLEngine sSLEngine, Executor executor) {
        this(sSLEngine, false, executor);
    }

    @Override // io.netty.channel.ChannelOutboundHandler
    public void close(ChannelHandlerContext channelHandlerContext, ChannelPromise channelPromise) throws Exception {
        closeOutboundAndChannel(channelHandlerContext, channelPromise, false);
    }

    public SslHandler(SSLEngine sSLEngine, boolean z10, Executor executor) {
        this.singleBuffer = new ByteBuffer[1];
        this.handshakePromise = new LazyChannelPromise();
        this.sslClosePromise = new LazyChannelPromise();
        this.handshakeTimeoutMillis = 10000L;
        this.closeNotifyFlushTimeoutMillis = BaseCloudFileManager.ACK_TIMEOUT;
        this.wrapDataSize = 16384;
        this.engine = (SSLEngine) ObjectUtil.checkNotNull(sSLEngine, "engine");
        this.delegatedTaskExecutor = (Executor) ObjectUtil.checkNotNull(executor, "delegatedTaskExecutor");
        SslEngineType sslEngineTypeForEngine = SslEngineType.forEngine(sSLEngine);
        this.engineType = sslEngineTypeForEngine;
        this.startTls = z10;
        this.jdkCompatibilityMode = sslEngineTypeForEngine.jdkCompatibilityMode(sSLEngine);
        setCumulator(sslEngineTypeForEngine.cumulator);
    }

    public Future<Channel> renegotiate(final Promise<Channel> promise) {
        ObjectUtil.checkNotNull(promise, "promise");
        ChannelHandlerContext channelHandlerContext = this.ctx;
        if (channelHandlerContext != null) {
            EventExecutor eventExecutorExecutor = channelHandlerContext.executor();
            if (!eventExecutorExecutor.inEventLoop()) {
                eventExecutorExecutor.execute(new Runnable() { // from class: io.netty.handler.ssl.SslHandler.4
                    @Override // java.lang.Runnable
                    public void run() {
                        SslHandler.this.renegotiateOnEventLoop(promise);
                    }
                });
                return promise;
            }
            renegotiateOnEventLoop(promise);
            return promise;
        }
        throw new IllegalStateException();
    }

    private void flush(ChannelHandlerContext channelHandlerContext, ChannelPromise channelPromise) throws Exception {
        SslHandlerCoalescingBufferQueue sslHandlerCoalescingBufferQueue = this.pendingUnencryptedWrites;
        if (sslHandlerCoalescingBufferQueue != null) {
            sslHandlerCoalescingBufferQueue.add(Unpooled.EMPTY_BUFFER, channelPromise);
        } else {
            channelPromise.setFailure((Throwable) newPendingWritesNullException());
        }
        flush(channelHandlerContext);
    }

    private SSLEngineResult wrap(ByteBufAllocator byteBufAllocator, SSLEngine sSLEngine, ByteBuf byteBuf, ByteBuf byteBuf2) throws Throwable {
        ByteBuf byteBufDirectBuffer;
        ByteBuffer[] byteBufferArrNioBuffers;
        SSLEngineResult sSLEngineResultWrap;
        try {
            int i10 = byteBuf.readerIndex();
            int i11 = byteBuf.readableBytes();
            if (!byteBuf.isDirect() && this.engineType.wantsDirectBuffer) {
                byteBufDirectBuffer = byteBufAllocator.directBuffer(i11);
                try {
                    byteBufDirectBuffer.writeBytes(byteBuf, i10, i11);
                    byteBufferArrNioBuffers = this.singleBuffer;
                    byteBufferArrNioBuffers[0] = byteBufDirectBuffer.internalNioBuffer(byteBufDirectBuffer.readerIndex(), i11);
                } catch (Throwable th) {
                    th = th;
                    this.singleBuffer[0] = null;
                    if (byteBufDirectBuffer != null) {
                        byteBufDirectBuffer.release();
                    }
                    throw th;
                }
            } else {
                if (!(byteBuf instanceof CompositeByteBuf) && byteBuf.nioBufferCount() == 1) {
                    ByteBuffer[] byteBufferArr = this.singleBuffer;
                    byteBufferArr[0] = byteBuf.internalNioBuffer(i10, i11);
                    byteBufferArrNioBuffers = byteBufferArr;
                } else {
                    byteBufferArrNioBuffers = byteBuf.nioBuffers();
                }
                byteBufDirectBuffer = null;
            }
            while (true) {
                sSLEngineResultWrap = sSLEngine.wrap(byteBufferArrNioBuffers, byteBuf2.nioBuffer(byteBuf2.writerIndex(), byteBuf2.writableBytes()));
                byteBuf.skipBytes(sSLEngineResultWrap.bytesConsumed());
                byteBuf2.writerIndex(byteBuf2.writerIndex() + sSLEngineResultWrap.bytesProduced());
                if (AnonymousClass9.$SwitchMap$javax$net$ssl$SSLEngineResult$Status[sSLEngineResultWrap.getStatus().ordinal()] != 1) {
                    break;
                }
                byteBuf2.ensureWritable(sSLEngine.getSession().getPacketBufferSize());
            }
            this.singleBuffer[0] = null;
            if (byteBufDirectBuffer != null) {
                byteBufDirectBuffer.release();
            }
            return sSLEngineResultWrap;
        } catch (Throwable th2) {
            th = th2;
            byteBufDirectBuffer = null;
        }
    }
}
