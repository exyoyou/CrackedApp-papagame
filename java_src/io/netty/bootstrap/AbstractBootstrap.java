package io.netty.bootstrap;

import io.netty.bootstrap.AbstractBootstrap;
import io.netty.channel.Channel;
import io.netty.channel.ChannelFuture;
import io.netty.channel.ChannelFutureListener;
import io.netty.channel.ChannelHandler;
import io.netty.channel.ChannelOption;
import io.netty.channel.ChannelPromise;
import io.netty.channel.DefaultChannelPromise;
import io.netty.channel.EventLoopGroup;
import io.netty.channel.ReflectiveChannelFactory;
import io.netty.util.AttributeKey;
import io.netty.util.concurrent.EventExecutor;
import io.netty.util.concurrent.Future;
import io.netty.util.concurrent.GenericFutureListener;
import io.netty.util.concurrent.GlobalEventExecutor;
import io.netty.util.internal.ObjectUtil;
import io.netty.util.internal.SocketUtils;
import io.netty.util.internal.StringUtil;
import io.netty.util.internal.logging.InternalLogger;
import java.net.InetAddress;
import java.net.InetSocketAddress;
import java.net.SocketAddress;
import java.util.Collections;
import java.util.HashMap;
import java.util.LinkedHashMap;
import java.util.Map;
import java.util.concurrent.ConcurrentHashMap;

/* JADX INFO: loaded from: classes5.dex */
public abstract class AbstractBootstrap<B extends AbstractBootstrap<B, C>, C extends Channel> implements Cloneable {
    private final Map<AttributeKey<?>, Object> attrs;
    private volatile ChannelFactory<? extends C> channelFactory;
    volatile EventLoopGroup group;
    private volatile ChannelHandler handler;
    private volatile SocketAddress localAddress;
    private final Map<ChannelOption<?>, Object> options;
    static final Map.Entry<ChannelOption<?>, Object>[] EMPTY_OPTION_ARRAY = new Map.Entry[0];
    static final Map.Entry<AttributeKey<?>, Object>[] EMPTY_ATTRIBUTE_ARRAY = new Map.Entry[0];

    static final class PendingRegistrationPromise extends DefaultChannelPromise {
        private volatile boolean registered;

        PendingRegistrationPromise(Channel channel) {
            super(channel);
        }

        @Override // io.netty.channel.DefaultChannelPromise, io.netty.util.concurrent.DefaultPromise
        protected EventExecutor executor() {
            return this.registered ? super.executor() : GlobalEventExecutor.INSTANCE;
        }

        void registered() {
            this.registered = true;
        }
    }

    AbstractBootstrap() {
        this.options = new LinkedHashMap();
        this.attrs = new ConcurrentHashMap();
    }

    static <K, V> Map<K, V> copiedMap(Map<K, V> map) {
        return map.isEmpty() ? Collections.emptyMap() : Collections.unmodifiableMap(new HashMap(map));
    }

    private ChannelFuture doBind(final SocketAddress socketAddress) {
        final ChannelFuture channelFutureInitAndRegister = initAndRegister();
        final Channel channel = channelFutureInitAndRegister.channel();
        if (channelFutureInitAndRegister.cause() != null) {
            return channelFutureInitAndRegister;
        }
        if (channelFutureInitAndRegister.isDone()) {
            ChannelPromise channelPromiseNewPromise = channel.newPromise();
            doBind0(channelFutureInitAndRegister, channel, socketAddress, channelPromiseNewPromise);
            return channelPromiseNewPromise;
        }
        final PendingRegistrationPromise pendingRegistrationPromise = new PendingRegistrationPromise(channel);
        channelFutureInitAndRegister.addListener((GenericFutureListener<? extends Future<? super Void>>) new ChannelFutureListener() { // from class: io.netty.bootstrap.AbstractBootstrap.1
            @Override // io.netty.util.concurrent.GenericFutureListener
            public void operationComplete(ChannelFuture channelFuture) throws Exception {
                Throwable thCause = channelFuture.cause();
                if (thCause != null) {
                    pendingRegistrationPromise.setFailure(thCause);
                } else {
                    pendingRegistrationPromise.registered();
                    AbstractBootstrap.doBind0(channelFutureInitAndRegister, channel, socketAddress, pendingRegistrationPromise);
                }
            }
        });
        return pendingRegistrationPromise;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static void doBind0(final ChannelFuture channelFuture, final Channel channel, final SocketAddress socketAddress, final ChannelPromise channelPromise) {
        channel.eventLoop().execute(new Runnable() { // from class: io.netty.bootstrap.AbstractBootstrap.2
            @Override // java.lang.Runnable
            public void run() {
                if (channelFuture.isSuccess()) {
                    channel.bind(socketAddress, channelPromise).addListener((GenericFutureListener<? extends Future<? super Void>>) ChannelFutureListener.CLOSE_ON_FAILURE);
                } else {
                    channelPromise.setFailure(channelFuture.cause());
                }
            }
        });
    }

    private B self() {
        return this;
    }

    static void setAttributes(Channel channel, Map.Entry<AttributeKey<?>, Object>[] entryArr) {
        for (Map.Entry<AttributeKey<?>, Object> entry : entryArr) {
            channel.attr(entry.getKey()).set(entry.getValue());
        }
    }

    private static void setChannelOption(Channel channel, ChannelOption<?> channelOption, Object obj, InternalLogger internalLogger) {
        try {
            if (channel.config().setOption(channelOption, obj)) {
                return;
            }
            internalLogger.warn("Unknown channel option '{}' for channel '{}'", channelOption, channel);
        } catch (Throwable th) {
            internalLogger.warn("Failed to set channel option '{}' with value '{}' for channel '{}'", channelOption, obj, channel, th);
        }
    }

    static void setChannelOptions(Channel channel, Map.Entry<ChannelOption<?>, Object>[] entryArr, InternalLogger internalLogger) {
        for (Map.Entry<ChannelOption<?>, Object> entry : entryArr) {
            setChannelOption(channel, entry.getKey(), entry.getValue(), internalLogger);
        }
    }

    public <T> B attr(AttributeKey<T> attributeKey, T t10) {
        ObjectUtil.checkNotNull(attributeKey, "key");
        if (t10 == null) {
            this.attrs.remove(attributeKey);
        } else {
            this.attrs.put(attributeKey, t10);
        }
        return (B) self();
    }

    final Map<AttributeKey<?>, Object> attrs() {
        return copiedMap(this.attrs);
    }

    final Map<AttributeKey<?>, Object> attrs0() {
        return this.attrs;
    }

    public ChannelFuture bind() {
        validate();
        SocketAddress socketAddress = this.localAddress;
        if (socketAddress != null) {
            return doBind(socketAddress);
        }
        throw new IllegalStateException("localAddress not set");
    }

    public B channel(Class<? extends C> cls) {
        return (B) channelFactory((io.netty.channel.ChannelFactory) new ReflectiveChannelFactory((Class) ObjectUtil.checkNotNull(cls, "channelClass")));
    }

    @Deprecated
    public B channelFactory(ChannelFactory<? extends C> channelFactory) {
        ObjectUtil.checkNotNull(channelFactory, "channelFactory");
        if (this.channelFactory != null) {
            throw new IllegalStateException("channelFactory set already");
        }
        this.channelFactory = channelFactory;
        return (B) self();
    }

    @Override // 
    /* JADX INFO: renamed from: clone, reason: merged with bridge method [inline-methods] */
    public abstract B mo44clone();

    public abstract AbstractBootstrapConfig<B, C> config();

    public B group(EventLoopGroup eventLoopGroup) {
        ObjectUtil.checkNotNull(eventLoopGroup, "group");
        if (this.group != null) {
            throw new IllegalStateException("group set already");
        }
        this.group = eventLoopGroup;
        return (B) self();
    }

    public B handler(ChannelHandler channelHandler) {
        this.handler = (ChannelHandler) ObjectUtil.checkNotNull(channelHandler, "handler");
        return (B) self();
    }

    abstract void init(Channel channel) throws Exception;

    final ChannelFuture initAndRegister() {
        Channel channelNewChannel = null;
        try {
            channelNewChannel = this.channelFactory.newChannel();
            init(channelNewChannel);
            ChannelFuture channelFutureRegister = config().group().register(channelNewChannel);
            if (channelFutureRegister.cause() != null) {
                if (channelNewChannel.isRegistered()) {
                    channelNewChannel.close();
                } else {
                    channelNewChannel.unsafe().closeForcibly();
                }
            }
            return channelFutureRegister;
        } catch (Throwable th) {
            if (channelNewChannel == null) {
                return new DefaultChannelPromise(new FailedChannel(), GlobalEventExecutor.INSTANCE).setFailure(th);
            }
            channelNewChannel.unsafe().closeForcibly();
            return new DefaultChannelPromise(channelNewChannel, GlobalEventExecutor.INSTANCE).setFailure(th);
        }
    }

    public B localAddress(SocketAddress socketAddress) {
        this.localAddress = socketAddress;
        return (B) self();
    }

    final Map.Entry<ChannelOption<?>, Object>[] newOptionsArray() {
        Map.Entry<ChannelOption<?>, Object>[] entryArr;
        synchronized (this.options) {
            entryArr = (Map.Entry[]) this.options.entrySet().toArray(EMPTY_OPTION_ARRAY);
        }
        return entryArr;
    }

    public <T> B option(ChannelOption<T> channelOption, T t10) {
        ObjectUtil.checkNotNull(channelOption, "option");
        synchronized (this.options) {
            try {
                if (t10 == null) {
                    this.options.remove(channelOption);
                } else {
                    this.options.put(channelOption, t10);
                }
            } catch (Throwable th) {
                throw th;
            }
        }
        return (B) self();
    }

    final Map<ChannelOption<?>, Object> options() {
        Map<ChannelOption<?>, Object> mapCopiedMap;
        synchronized (this.options) {
            mapCopiedMap = copiedMap(this.options);
        }
        return mapCopiedMap;
    }

    final Map<ChannelOption<?>, Object> options0() {
        return this.options;
    }

    public ChannelFuture register() {
        validate();
        return initAndRegister();
    }

    public String toString() {
        return StringUtil.simpleClassName(this) + '(' + config() + ')';
    }

    public B validate() {
        if (this.group == null) {
            throw new IllegalStateException("group not set");
        }
        if (this.channelFactory != null) {
            return (B) self();
        }
        throw new IllegalStateException("channel or channelFactory not set");
    }

    final ChannelHandler handler() {
        return this.handler;
    }

    public B localAddress(int i10) {
        return (B) localAddress(new InetSocketAddress(i10));
    }

    AbstractBootstrap(AbstractBootstrap<B, C> abstractBootstrap) {
        LinkedHashMap linkedHashMap = new LinkedHashMap();
        this.options = linkedHashMap;
        ConcurrentHashMap concurrentHashMap = new ConcurrentHashMap();
        this.attrs = concurrentHashMap;
        this.group = abstractBootstrap.group;
        this.channelFactory = abstractBootstrap.channelFactory;
        this.handler = abstractBootstrap.handler;
        this.localAddress = abstractBootstrap.localAddress;
        synchronized (abstractBootstrap.options) {
            linkedHashMap.putAll(abstractBootstrap.options);
        }
        concurrentHashMap.putAll(abstractBootstrap.attrs);
    }

    public B localAddress(String str, int i10) {
        return (B) localAddress(SocketUtils.socketAddress(str, i10));
    }

    public ChannelFuture bind(int i10) {
        return bind(new InetSocketAddress(i10));
    }

    public B localAddress(InetAddress inetAddress, int i10) {
        return (B) localAddress(new InetSocketAddress(inetAddress, i10));
    }

    public ChannelFuture bind(String str, int i10) {
        return bind(SocketUtils.socketAddress(str, i10));
    }

    public B channelFactory(io.netty.channel.ChannelFactory<? extends C> channelFactory) {
        return (B) channelFactory((ChannelFactory) channelFactory);
    }

    @Deprecated
    public final EventLoopGroup group() {
        return this.group;
    }

    final SocketAddress localAddress() {
        return this.localAddress;
    }

    public ChannelFuture bind(InetAddress inetAddress, int i10) {
        return bind(new InetSocketAddress(inetAddress, i10));
    }

    final ChannelFactory<? extends C> channelFactory() {
        return this.channelFactory;
    }

    public ChannelFuture bind(SocketAddress socketAddress) {
        validate();
        return doBind((SocketAddress) ObjectUtil.checkNotNull(socketAddress, "localAddress"));
    }
}
