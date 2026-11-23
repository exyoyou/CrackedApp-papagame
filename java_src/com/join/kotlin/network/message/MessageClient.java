package com.join.kotlin.network.message;

import android.text.TextUtils;
import com.papa91.arc.ext.Log;
import com.sigmob.sdk.base.mta.PointCategory;
import com.wufan.user.service.protobuf.MessageProto;
import io.netty.bootstrap.Bootstrap;
import io.netty.channel.Channel;
import io.netty.channel.ChannelFuture;
import io.netty.channel.ChannelFutureListener;
import io.netty.channel.ChannelOption;
import io.netty.channel.EventLoopGroup;
import io.netty.channel.nio.NioEventLoopGroup;
import io.netty.channel.socket.nio.NioSocketChannel;
import io.netty.util.concurrent.Future;
import io.netty.util.concurrent.GenericFutureListener;
import io.socket.client.Socket;
import java.util.concurrent.TimeUnit;
import kotlin.Lazy;
import kotlin.LazyKt__LazyJVMKt;
import kotlin.Metadata;
import kotlin.jvm.functions.Function0;
import kotlin.jvm.internal.Intrinsics;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;

/* JADX INFO: loaded from: classes4.dex */
@Metadata(d1 = {"\u0000N\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\n\u0002\u0010\u000e\n\u0000\n\u0002\u0010\b\n\u0002\b\u000e\n\u0002\u0018\u0002\n\u0002\b\u0005\n\u0002\u0018\u0002\n\u0002\b\u0005\n\u0002\u0018\u0002\n\u0002\b\u0005\n\u0002\u0010\u000b\n\u0002\b\u0004\n\u0002\u0010\t\n\u0002\b\u0005\n\u0002\u0010\u0002\n\u0002\b\u0005\n\u0002\u0018\u0002\n\u0000\u0018\u00002\u00020\u0001B\u001b\u0012\b\u0010\u0002\u001a\u0004\u0018\u00010\u0003\u0012\b\u0010\u0004\u001a\u0004\u0018\u00010\u0005¢\u0006\u0004\b\u0006\u0010\u0007J\u0006\u00100\u001a\u000201J\u0006\u00102\u001a\u000201J\u0006\u00103\u001a\u00020&J\u0016\u00104\u001a\u00020&2\u0006\u0010\u0002\u001a\u00020\u00032\u0006\u0010\u0004\u001a\u00020\u0005J\u000e\u00105\u001a\u0002012\u0006\u00106\u001a\u000207R\u001c\u0010\u0002\u001a\u0004\u0018\u00010\u0003X\u0086\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b\b\u0010\t\"\u0004\b\n\u0010\u000bR\u001e\u0010\u0004\u001a\u0004\u0018\u00010\u0005X\u0086\u000e¢\u0006\u0010\n\u0002\u0010\u0010\u001a\u0004\b\f\u0010\r\"\u0004\b\u000e\u0010\u000fR\u0014\u0010\u0011\u001a\u00020\u0003X\u0086D¢\u0006\b\n\u0000\u001a\u0004\b\u0012\u0010\tR\u001b\u0010\u0013\u001a\u00020\u00148FX\u0086\u0084\u0002¢\u0006\f\n\u0004\b\u0017\u0010\u0018\u001a\u0004\b\u0015\u0010\u0016R\u001c\u0010\u0019\u001a\u0004\u0018\u00010\u001aX\u0086\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b\u001b\u0010\u001c\"\u0004\b\u001d\u0010\u001eR\u001c\u0010\u001f\u001a\u0004\u0018\u00010 X\u0086\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b!\u0010\"\"\u0004\b#\u0010$R\u001a\u0010%\u001a\u00020&X\u0086\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b%\u0010'\"\u0004\b(\u0010)R\u001a\u0010*\u001a\u00020+X\u0086\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b,\u0010-\"\u0004\b.\u0010/¨\u00068"}, d2 = {"Lcom/join/kotlin/network/message/MessageClient;", "", u.c.f97430f, "", "port", "", "<init>", "(Ljava/lang/String;Ljava/lang/Integer;)V", "getHost", "()Ljava/lang/String;", "setHost", "(Ljava/lang/String;)V", "getPort", "()Ljava/lang/Integer;", "setPort", "(Ljava/lang/Integer;)V", "Ljava/lang/Integer;", "TAG", "getTAG", "work", "Lio/netty/channel/EventLoopGroup;", "getWork", "()Lio/netty/channel/EventLoopGroup;", "work$delegate", "Lkotlin/Lazy;", "bootstrap", "Lio/netty/bootstrap/Bootstrap;", "getBootstrap", "()Lio/netty/bootstrap/Bootstrap;", "setBootstrap", "(Lio/netty/bootstrap/Bootstrap;)V", "channel", "Lio/netty/channel/Channel;", "getChannel", "()Lio/netty/channel/Channel;", "setChannel", "(Lio/netty/channel/Channel;)V", "isConnecting", "", "()Z", "setConnecting", "(Z)V", "lastConnectTime", "", "getLastConnectTime", "()J", "setLastConnectTime", "(J)V", "connect", "", Socket.EVENT_DISCONNECT, "isAlive", "isCfgChanged", "send", PointCategory.REQUEST, "Lcom/wufan/user/service/protobuf/MessageProto$MessageRequest;", "app_wufunNormalRelease"}, k = 1, mv = {2, 1, 0}, xi = 48)
public final class MessageClient {

    @Nullable
    private Bootstrap bootstrap;

    @Nullable
    private Channel channel;

    @Nullable
    private String host;
    private boolean isConnecting;
    private long lastConnectTime;

    @Nullable
    private Integer port;

    @NotNull
    private final String TAG = "HMCloudMessage:  send";

    /* JADX INFO: renamed from: work$delegate, reason: from kotlin metadata */
    @NotNull
    private final Lazy work = LazyKt__LazyJVMKt.lazy(new Function0() { // from class: com.join.kotlin.network.message.b
        @Override // kotlin.jvm.functions.Function0
        public final Object invoke() {
            return MessageClient.work_delegate$lambda$0();
        }
    });

    public MessageClient(@Nullable String str, @Nullable Integer num) {
        Bootstrap bootstrapChannel;
        this.host = str;
        this.port = num;
        Bootstrap bootstrap = new Bootstrap();
        this.bootstrap = bootstrap;
        Bootstrap bootstrapGroup = bootstrap.group(getWork());
        if (bootstrapGroup != null && (bootstrapChannel = bootstrapGroup.channel(NioSocketChannel.class)) != null) {
            bootstrapChannel.handler(new MessageClientInitializer());
        }
        Bootstrap bootstrap2 = this.bootstrap;
        if (bootstrap2 != null) {
            bootstrap2.option(ChannelOption.SO_KEEPALIVE, Boolean.TRUE);
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final void connect$lambda$2(final MessageClient messageClient, ChannelFuture future) {
        Intrinsics.checkNotNullParameter(future, "future");
        messageClient.isConnecting = false;
        if (future.isSuccess()) {
            messageClient.channel = future.channel();
        } else {
            future.channel().eventLoop().schedule(new Runnable() { // from class: com.join.kotlin.network.message.a
                @Override // java.lang.Runnable
                public final void run() {
                    this.f48850b.connect();
                }
            }, 5L, TimeUnit.SECONDS);
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final NioEventLoopGroup work_delegate$lambda$0() {
        return new NioEventLoopGroup();
    }

    public final void connect() {
        ChannelFuture channelFutureConnect;
        try {
            if (!isAlive() && !this.isConnecting && System.currentTimeMillis() - this.lastConnectTime >= 2000) {
                this.isConnecting = true;
                this.lastConnectTime = System.currentTimeMillis();
                Bootstrap bootstrap = this.bootstrap;
                if (bootstrap != null) {
                    String str = this.host;
                    Integer num = this.port;
                    channelFutureConnect = bootstrap.connect(str, num != null ? num.intValue() : 80);
                } else {
                    channelFutureConnect = null;
                }
                if (channelFutureConnect != null) {
                    channelFutureConnect.addListener((GenericFutureListener<? extends Future<? super Void>>) new ChannelFutureListener() { // from class: com.join.kotlin.network.message.c
                        @Override // io.netty.util.concurrent.GenericFutureListener
                        public final void operationComplete(Future future) {
                            MessageClient.connect$lambda$2(this.f48851b, (ChannelFuture) future);
                        }
                    });
                }
            }
        } catch (Exception e10) {
            e10.printStackTrace();
        }
    }

    public final void disconnect() {
        try {
            Channel channel = this.channel;
            if (channel != null) {
                Intrinsics.checkNotNull(channel);
                if (channel.isActive()) {
                    Channel channel2 = this.channel;
                    Intrinsics.checkNotNull(channel2);
                    channel2.disconnect();
                    Channel channel3 = this.channel;
                    Intrinsics.checkNotNull(channel3);
                    channel3.close();
                }
            }
        } catch (Exception e10) {
            e10.printStackTrace();
        }
    }

    @Nullable
    public final Bootstrap getBootstrap() {
        return this.bootstrap;
    }

    @Nullable
    public final Channel getChannel() {
        return this.channel;
    }

    @Nullable
    public final String getHost() {
        return this.host;
    }

    public final long getLastConnectTime() {
        return this.lastConnectTime;
    }

    @Nullable
    public final Integer getPort() {
        return this.port;
    }

    @NotNull
    public final String getTAG() {
        return this.TAG;
    }

    @NotNull
    public final EventLoopGroup getWork() {
        return (EventLoopGroup) this.work.getValue();
    }

    public final boolean isAlive() {
        Channel channel = this.channel;
        if (channel != null) {
            Intrinsics.checkNotNull(channel);
            if (channel.isActive()) {
                return true;
            }
        }
        return false;
    }

    public final boolean isCfgChanged(@NotNull String host, int port) {
        Intrinsics.checkNotNullParameter(host, "host");
        if (TextUtils.isEmpty(host)) {
            host = "";
        }
        Integer num = this.port;
        return num == null || num.intValue() != port || TextUtils.isEmpty(this.host) || !Intrinsics.areEqual(this.host, host);
    }

    /* JADX INFO: renamed from: isConnecting, reason: from getter */
    public final boolean getIsConnecting() {
        return this.isConnecting;
    }

    public final void send(@NotNull MessageProto.MessageRequest request) {
        Intrinsics.checkNotNullParameter(request, "request");
        try {
            Log.e(this.TAG, request.toString());
            Channel channel = this.channel;
            if (channel != null) {
                Intrinsics.checkNotNull(channel);
                if (channel.isActive()) {
                    Channel channel2 = this.channel;
                    Intrinsics.checkNotNull(channel2);
                    channel2.writeAndFlush(request);
                    return;
                }
            }
            connect();
        } catch (Exception e10) {
            e10.printStackTrace();
        }
    }

    public final void setBootstrap(@Nullable Bootstrap bootstrap) {
        this.bootstrap = bootstrap;
    }

    public final void setChannel(@Nullable Channel channel) {
        this.channel = channel;
    }

    public final void setConnecting(boolean z10) {
        this.isConnecting = z10;
    }

    public final void setHost(@Nullable String str) {
        this.host = str;
    }

    public final void setLastConnectTime(long j10) {
        this.lastConnectTime = j10;
    }

    public final void setPort(@Nullable Integer num) {
        this.port = num;
    }
}
