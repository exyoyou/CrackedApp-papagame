package com.wufan.friend.chat.rpc;

import android.text.TextUtils;
import com.join.mgps.event.w;
import com.wufan.friend.chat.protocol.ChatMessageArgs;
import com.wufan.friend.chat.protocol.ChatRoomArgs;
import com.wufan.friend.chat.protocol.GameInviteArgs;
import com.wufan.friend.chat.protocol.GetLocalBattleGameArgs;
import com.wufan.friend.chat.protocol.HeartArgs;
import com.wufan.friend.chat.protocol.LoginArgs;
import com.wufan.friend.chat.protocol.OnlineState;
import com.wufan.friend.chat.protocol.OnlineStateArgs;
import com.wufan.friend.chat.protocol.PlayGameArgs;
import com.wufan.friend.chat.protocol.PlayType;
import com.wufan.friend.chat.protocol.RecommendPlayerArgs;
import com.wufan.friend.chat.protocol.Request;
import com.wufan.friend.chat.protocol.RequestArgs;
import com.wufan.friend.chat.protocol.ServiceName;
import com.wufan.friend.chat.protocol.ServicePath;
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
import java.util.List;
import java.util.concurrent.TimeUnit;

/* JADX INFO: loaded from: classes8.dex */
public class b {

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    Bootstrap f87912b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    private String f87913c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    private int f87914d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    private Channel f87915e;

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    EventLoopGroup f87911a = new NioEventLoopGroup();

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    boolean f87916f = false;

    /* JADX INFO: renamed from: g, reason: collision with root package name */
    long f87917g = 0;

    class a implements Runnable {
        a() {
        }

        @Override // java.lang.Runnable
        public void run() {
            b.this.d();
        }
    }

    public b(String host, int port) {
        this.f87913c = host;
        this.f87914d = port;
        Bootstrap bootstrap = new Bootstrap();
        this.f87912b = bootstrap;
        bootstrap.group(this.f87911a).channel(NioSocketChannel.class).handler(new d());
        this.f87912b.option(ChannelOption.SO_KEEPALIVE, Boolean.TRUE);
        d();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void p(ChannelFuture channelFuture) throws Exception {
        this.f87916f = false;
        if (!channelFuture.isSuccess()) {
            channelFuture.channel().eventLoop().schedule((Runnable) new a(), 5L, TimeUnit.SECONDS);
        } else {
            this.f87915e = channelFuture.channel();
            org.greenrobot.eventbus.c.f().q(new w(1));
        }
    }

    private void r(Request request) {
        try {
            Channel channel = this.f87915e;
            if (channel != null && channel.isActive()) {
                this.f87915e.writeAndFlush(request);
                return;
            }
            d();
        } catch (Exception e10) {
            e10.printStackTrace();
        }
    }

    public void b(ChatRoomArgs.State state, long roomId, int uid) {
        r(Request.newBuilder().setService(ServiceName.BATTLE).setPath(ServicePath.BAT_CHAT_ROOM).setTimestamp(System.currentTimeMillis()).setArgs(RequestArgs.newBuilder().setChatRoomArgs(ChatRoomArgs.newBuilder().setState(state).setLobbyRoomId(roomId).setAccountId(uid).build()).build()).build());
    }

    public void c(String msg) {
        r(Request.newBuilder().setService(ServiceName.BATTLE).setPath(ServicePath.BAT_CHAT_SEND).setTimestamp(System.currentTimeMillis()).setArgs(RequestArgs.newBuilder().setChatMessageArgs(ChatMessageArgs.newBuilder().setMessage(msg).build()).build()).build());
    }

    public void d() {
        try {
            Channel channel = this.f87915e;
            if ((channel == null || !channel.isActive()) && !this.f87916f && System.currentTimeMillis() - this.f87917g >= 2000) {
                this.f87916f = true;
                this.f87917g = System.currentTimeMillis();
                this.f87912b.connect(this.f87913c, this.f87914d).addListener((GenericFutureListener<? extends Future<? super Void>>) new ChannelFutureListener() { // from class: com.wufan.friend.chat.rpc.a
                    @Override // io.netty.util.concurrent.GenericFutureListener
                    public final void operationComplete(Future future) throws Exception {
                        this.f87910b.p((ChannelFuture) future);
                    }
                });
            }
        } catch (Exception e10) {
            e10.printStackTrace();
        }
    }

    public void e() {
        try {
            Channel channel = this.f87915e;
            if (channel == null || !channel.isActive()) {
                return;
            }
            this.f87915e.close();
        } catch (Exception e10) {
            e10.printStackTrace();
        }
    }

    public void f(int uid, int roomId, String roomPwd, boolean elite, long gameId, boolean versus) {
        r(Request.newBuilder().setService(ServiceName.BATTLE).setPath(ServicePath.BTL_GAME_INVITE).setTimestamp(System.currentTimeMillis()).setArgs(RequestArgs.newBuilder().setGameInviteArgs(GameInviteArgs.newBuilder().setGameId(gameId).setLobbyRoomId(roomId).setFriendId(uid).setRoomPasswd(roomPwd).setEliteField(elite).setVersus(versus).build()).build()).build());
    }

    public void g(PlayGameArgs.State state, PlayType type, long gameId, int roomId, int uid, boolean versus) {
        r(Request.newBuilder().setService(ServiceName.BATTLE).setPath(ServicePath.BTL_GAME_PLAY).setTimestamp(System.currentTimeMillis()).setArgs(RequestArgs.newBuilder().setPlayGameArgs(PlayGameArgs.newBuilder().setState(state).setType(type).setGameId(gameId).setLobbyRoomId(roomId).setAccountId(uid).setVersus(versus).build()).build()).build());
    }

    public void h(PlayGameArgs.State state, PlayType type, long gameId, int roomId, int uid, boolean versus, List<Long> downloadGameIds) {
        r(Request.newBuilder().setService(ServiceName.BATTLE).setPath(ServicePath.BTL_GAME_PLAY).setTimestamp(System.currentTimeMillis()).setArgs(RequestArgs.newBuilder().setPlayGameArgs(PlayGameArgs.newBuilder().setState(state).setType(type).setGameId(gameId).setLobbyRoomId(roomId).setAccountId(uid).setVersus(versus).addAllLocalBattleGameIds(downloadGameIds).build()).build()).build());
    }

    public void i() {
        r(Request.newBuilder().setService(ServiceName.FRIEND).setPath(ServicePath.FRD_GET_ALL_FRIENDS).setTimestamp(System.currentTimeMillis()).build());
    }

    public void j(int uid, long gameId) {
        r(Request.newBuilder().setService(ServiceName.RECOMMEND).setPath(ServicePath.RCM_GET_LOCAL_BATTLE_GAME).setTimestamp(System.currentTimeMillis()).setArgs(RequestArgs.newBuilder().setLocalBattleGameArgs(GetLocalBattleGameArgs.newBuilder().setGameId(gameId).setAccountId(uid).build()).build()).build());
    }

    public void k(long gameId, String gameSeries, List<Long> downloadGameIds, int locationPageTypeValue) {
        RecommendPlayerArgs.b bVarNewBuilder = RecommendPlayerArgs.newBuilder();
        if (downloadGameIds != null && downloadGameIds.size() > 0) {
            bVarNewBuilder.addAllLocalDownloadGameIds(downloadGameIds);
        }
        r(Request.newBuilder().setService(ServiceName.RECOMMEND).setPath(ServicePath.RCM_GET_PLAYER).setArgs(RequestArgs.newBuilder().setRecommendPlayerArgs(bVarNewBuilder.setGameId(gameId).setGameSeries(gameSeries).setLocationPageTypeValue(locationPageTypeValue).build()).build()).setTimestamp(System.currentTimeMillis()).build());
    }

    public void l(long gameId, String gameSeries, List<Long> downloadGameIds, int locationPageTypeValue) {
        RecommendPlayerArgs.b bVarNewBuilder = RecommendPlayerArgs.newBuilder();
        if (downloadGameIds != null && downloadGameIds.size() > 0) {
            bVarNewBuilder.addAllLocalDownloadGameIds(downloadGameIds);
        }
        r(Request.newBuilder().setService(ServiceName.RECOMMEND).setPath(ServicePath.RCM_GET_PLAYER_V2).setArgs(RequestArgs.newBuilder().setRecommendPlayerArgs(bVarNewBuilder.setGameId(gameId).setGameSeries(gameSeries).setLocationPageTypeValue(locationPageTypeValue).build()).build()).setTimestamp(System.currentTimeMillis()).build());
    }

    public void m() {
        r(Request.newBuilder().setService(ServiceName.SYSTEM).setPath(ServicePath.SYS_HEART).setArgs(RequestArgs.newBuilder().setHeartArgs(HeartArgs.newBuilder().setState(HeartArgs.State.APP).build()).build()).setRequestId(System.currentTimeMillis()).setTimestamp(System.currentTimeMillis()).build());
    }

    public boolean n() {
        Channel channel = this.f87915e;
        return channel != null && channel.isActive();
    }

    public boolean o(String host, int port) {
        if (TextUtils.isEmpty(host)) {
            host = "";
        }
        return (this.f87914d == port && !TextUtils.isEmpty(this.f87913c) && this.f87913c.equals(host)) ? false : true;
    }

    public void q(String uid, String token) {
        r(Request.newBuilder().setService(ServiceName.SYSTEM).setPath(ServicePath.SYS_LOGIN).setTimestamp(System.currentTimeMillis()).setRequestId(System.currentTimeMillis()).setArgs(RequestArgs.newBuilder().setLoginArgs(LoginArgs.newBuilder().setAccountId(Integer.parseInt(uid)).setToken(token).build()).build()).build());
    }

    public void s(OnlineState state) {
        r(Request.newBuilder().setService(ServiceName.SYSTEM).setPath(ServicePath.SYS_ONLINE_STATE).setTimestamp(System.currentTimeMillis()).setArgs(RequestArgs.newBuilder().setStateArgs(OnlineStateArgs.newBuilder().setStateValue(state.getNumber()).build()).build()).build());
    }
}
