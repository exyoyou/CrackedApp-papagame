package io.netty.channel;

import io.netty.util.concurrent.FastThreadLocal;
import io.netty.util.internal.PlatformDependent;
import io.netty.util.internal.logging.InternalLogger;
import io.netty.util.internal.logging.InternalLoggerFactory;
import io.socket.client.Socket;
import java.lang.annotation.ElementType;
import java.lang.annotation.Retention;
import java.lang.annotation.RetentionPolicy;
import java.lang.annotation.Target;
import java.lang.reflect.Method;
import java.net.SocketAddress;
import java.security.AccessController;
import java.security.PrivilegedExceptionAction;
import java.util.Map;
import java.util.WeakHashMap;

/* JADX INFO: loaded from: classes.dex */
final class ChannelHandlerMask {
    private static final int MASK_ALL_INBOUND = 511;
    private static final int MASK_ALL_OUTBOUND = 130561;
    static final int MASK_BIND = 512;
    static final int MASK_CHANNEL_ACTIVE = 8;
    static final int MASK_CHANNEL_INACTIVE = 16;
    static final int MASK_CHANNEL_READ = 32;
    static final int MASK_CHANNEL_READ_COMPLETE = 64;
    static final int MASK_CHANNEL_REGISTERED = 2;
    static final int MASK_CHANNEL_UNREGISTERED = 4;
    static final int MASK_CHANNEL_WRITABILITY_CHANGED = 256;
    static final int MASK_CLOSE = 4096;
    static final int MASK_CONNECT = 1024;
    static final int MASK_DEREGISTER = 8192;
    static final int MASK_DISCONNECT = 2048;
    static final int MASK_EXCEPTION_CAUGHT = 1;
    static final int MASK_FLUSH = 65536;
    static final int MASK_READ = 16384;
    static final int MASK_USER_EVENT_TRIGGERED = 128;
    static final int MASK_WRITE = 32768;
    private static final InternalLogger logger = InternalLoggerFactory.getInstance((Class<?>) ChannelHandlerMask.class);
    private static final FastThreadLocal<Map<Class<? extends ChannelHandler>, Integer>> MASKS = new FastThreadLocal<Map<Class<? extends ChannelHandler>, Integer>>() { // from class: io.netty.channel.ChannelHandlerMask.1
        /* JADX INFO: Access modifiers changed from: protected */
        @Override // io.netty.util.concurrent.FastThreadLocal
        public Map<Class<? extends ChannelHandler>, Integer> initialValue() {
            return new WeakHashMap(32);
        }
    };

    @Target({ElementType.METHOD})
    @Retention(RetentionPolicy.RUNTIME)
    @interface Skip {
    }

    private ChannelHandlerMask() {
    }

    private static boolean isSkippable(final Class<?> cls, final String str, final Class<?>... clsArr) throws Exception {
        return ((Boolean) AccessController.doPrivileged(new PrivilegedExceptionAction<Boolean>() { // from class: io.netty.channel.ChannelHandlerMask.2
            /* JADX WARN: Can't rename method to resolve collision */
            @Override // java.security.PrivilegedExceptionAction
            public Boolean run() throws Exception {
                try {
                    Method method = cls.getMethod(str, clsArr);
                    return Boolean.valueOf(method != null && method.isAnnotationPresent(Skip.class));
                } catch (NoSuchMethodException e10) {
                    ChannelHandlerMask.logger.debug("Class {} missing method {}, assume we can not skip execution", cls, str, e10);
                    return Boolean.FALSE;
                }
            }
        })).booleanValue();
    }

    static int mask(Class<? extends ChannelHandler> cls) {
        Map<Class<? extends ChannelHandler>, Integer> map = MASKS.get();
        Integer numValueOf = map.get(cls);
        if (numValueOf == null) {
            numValueOf = Integer.valueOf(mask0(cls));
            map.put(cls, numValueOf);
        }
        return numValueOf.intValue();
    }

    private static int mask0(Class<? extends ChannelHandler> cls) {
        int i10;
        int i11 = 1;
        try {
            if (ChannelInboundHandler.class.isAssignableFrom(cls)) {
                try {
                    i10 = isSkippable(cls, "channelRegistered", ChannelHandlerContext.class) ? 509 : 511;
                    try {
                        if (isSkippable(cls, "channelUnregistered", ChannelHandlerContext.class)) {
                            i10 &= -5;
                        }
                        if (isSkippable(cls, "channelActive", ChannelHandlerContext.class)) {
                            i10 &= -9;
                        }
                        if (isSkippable(cls, "channelInactive", ChannelHandlerContext.class)) {
                            i10 &= -17;
                        }
                        if (isSkippable(cls, "channelRead", ChannelHandlerContext.class, Object.class)) {
                            i10 &= -33;
                        }
                        if (isSkippable(cls, "channelReadComplete", ChannelHandlerContext.class)) {
                            i10 &= -65;
                        }
                        if (isSkippable(cls, "channelWritabilityChanged", ChannelHandlerContext.class)) {
                            i10 &= -257;
                        }
                        if (isSkippable(cls, "userEventTriggered", ChannelHandlerContext.class, Object.class)) {
                            i10 &= -129;
                        }
                    } catch (Exception e10) {
                        e = e10;
                        i11 = i10;
                        PlatformDependent.throwException(e);
                        return i11;
                    }
                } catch (Exception e11) {
                    e = e11;
                    i11 = 511;
                    PlatformDependent.throwException(e);
                    return i11;
                }
            } else {
                i10 = 1;
            }
            if (ChannelOutboundHandler.class.isAssignableFrom(cls)) {
                i10 |= MASK_ALL_OUTBOUND;
                if (isSkippable(cls, "bind", ChannelHandlerContext.class, SocketAddress.class, ChannelPromise.class)) {
                    i10 &= -513;
                }
                if (isSkippable(cls, "connect", ChannelHandlerContext.class, SocketAddress.class, SocketAddress.class, ChannelPromise.class)) {
                    i10 &= -1025;
                }
                if (isSkippable(cls, Socket.EVENT_DISCONNECT, ChannelHandlerContext.class, ChannelPromise.class)) {
                    i10 &= -2049;
                }
                if (isSkippable(cls, "close", ChannelHandlerContext.class, ChannelPromise.class)) {
                    i10 &= -4097;
                }
                if (isSkippable(cls, "deregister", ChannelHandlerContext.class, ChannelPromise.class)) {
                    i10 &= -8193;
                }
                if (isSkippable(cls, "read", ChannelHandlerContext.class)) {
                    i10 &= -16385;
                }
                if (isSkippable(cls, "write", ChannelHandlerContext.class, Object.class, ChannelPromise.class)) {
                    i10 = (-32769) & i10;
                }
                if (isSkippable(cls, io.socket.engineio.client.Socket.EVENT_FLUSH, ChannelHandlerContext.class)) {
                    i10 &= -65537;
                }
            }
            return isSkippable(cls, "exceptionCaught", ChannelHandlerContext.class, Throwable.class) ? i10 & (-2) : i10;
        } catch (Exception e12) {
            e = e12;
        }
    }
}
