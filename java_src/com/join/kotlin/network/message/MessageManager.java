package com.join.kotlin.network.message;

import com.MApplication;
import com.baidu.mobads.sdk.internal.ay;
import com.coremedia.iso.boxes.k1;
import com.join.mgps.Util.AccountUtil_;
import com.join.mgps.event.s;
import com.join.mgps.event.t;
import com.join.mgps.rpc.h;
import com.wufan.user.service.protobuf.MessageProto;
import com.wufan.user.service.protobuf.UserInfo;
import com.xinzhu.overmind.client.frameworks.accounts.GrantCredentialsPermissionActivity;
import java.util.List;
import kotlin.Metadata;
import kotlin.jvm.internal.Intrinsics;
import kotlin.random.Random;
import kotlin.text.StringsKt__StringsKt;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;

/* JADX INFO: loaded from: classes4.dex */
@Metadata(d1 = {"\u00008\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\b\u0003\n\u0002\u0010\u000e\n\u0002\b\u0005\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000b\n\u0000\n\u0002\u0010\t\n\u0002\b\u0002\n\u0002\u0010\u0002\n\u0002\b\b\n\u0002\u0018\u0002\n\u0002\b\u000f\bÆ\u0002\u0018\u00002\u00020\u0001B\t\b\u0002¢\u0006\u0004\b\u0002\u0010\u0003J\u0006\u0010\u0011\u001a\u00020\u0012J\u0006\u0010\u0013\u001a\u00020\u0012J\u000e\u0010\u0014\u001a\u00020\u00122\u0006\u0010\u0015\u001a\u00020\rJ\u000e\u0010\u0016\u001a\u00020\u00122\u0006\u0010\u0017\u001a\u00020\rJ\u0006\u0010\u0010\u001a\u00020\rJ\u0006\u0010\u0018\u001a\u00020\u0012J\u000e\u0010\u0019\u001a\u00020\u00122\u0006\u0010\u001a\u001a\u00020\u001bJ\u0006\u0010\u0017\u001a\u00020\u0012J\u0006\u0010\u001c\u001a\u00020\u0012J\u0006\u0010\u001d\u001a\u00020\u0012J\u0006\u0010\u001e\u001a\u00020\rJ\u0016\u0010\u001f\u001a\u00020\u00122\u0006\u0010 \u001a\u00020\u000f2\u0006\u0010!\u001a\u00020\u0005J&\u0010\"\u001a\u00020\u00122\u0006\u0010 \u001a\u00020\u000f2\u0006\u0010!\u001a\u00020\u00052\u0006\u0010#\u001a\u00020\u00052\u0006\u0010$\u001a\u00020\u0005J\u0016\u0010%\u001a\u00020\u00122\u0006\u0010 \u001a\u00020\u000f2\u0006\u0010!\u001a\u00020\u0005J\u001e\u0010&\u001a\u00020\u00122\u0006\u0010 \u001a\u00020\u000f2\u0006\u0010!\u001a\u00020\u00052\u0006\u0010#\u001a\u00020\u0005J\u001e\u0010'\u001a\u00020\u00122\u0006\u0010 \u001a\u00020\u000f2\u0006\u0010!\u001a\u00020\u00052\u0006\u0010(\u001a\u00020\u000fJ&\u0010)\u001a\u00020\u00122\u0006\u0010 \u001a\u00020\u000f2\u0006\u0010!\u001a\u00020\u00052\u0006\u0010#\u001a\u00020\u00052\u0006\u0010$\u001a\u00020\u0005R\u001c\u0010\u0004\u001a\u0004\u0018\u00010\u0005X\u0086\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b\u0006\u0010\u0007\"\u0004\b\b\u0010\tR\u0010\u0010\n\u001a\u0004\u0018\u00010\u000bX\u0082\u000e¢\u0006\u0002\n\u0000R\u000e\u0010\f\u001a\u00020\rX\u0082\u000e¢\u0006\u0002\n\u0000R\u000e\u0010\u000e\u001a\u00020\u000fX\u0082\u000e¢\u0006\u0002\n\u0000R\u000e\u0010\u0010\u001a\u00020\rX\u0082\u000e¢\u0006\u0002\n\u0000¨\u0006*"}, d2 = {"Lcom/join/kotlin/network/message/MessageManager;", "", "<init>", "()V", "currentUid", "", "getCurrentUid", "()Ljava/lang/String;", "setCurrentUid", "(Ljava/lang/String;)V", "client", "Lcom/join/kotlin/network/message/MessageClient;", "isActive", "", k1.f24950p, "", "isLogin", "initMessageClient", "", "reConnect", "setActiveState", "logined", "setLoginState", "login", "handleChanelActive", "handleResponseMessage", GrantCredentialsPermissionActivity.f89267i, "Lcom/wufan/user/service/protobuf/MessageProto$Response;", ay.f7498b, "sendHeartBeat", "isMessageAlive", "joinQueue", "gameId", "serverName", "enterGame", "jobId", "resId", "queryQueueState", "quitQueue", "changeGame", "switchoverGameId", "release", "app_wufunNormalRelease"}, k = 1, mv = {2, 1, 0}, xi = 48)
public final class MessageManager {

    @NotNull
    public static final MessageManager INSTANCE = new MessageManager();

    @Nullable
    private static MessageClient client;

    @Nullable
    private static String currentUid;
    private static boolean isActive;
    private static boolean isLogin;
    private static long uuid;

    private MessageManager() {
    }

    public final void changeGame(long gameId, @NotNull String serverName, long switchoverGameId) {
        Intrinsics.checkNotNullParameter(serverName, "serverName");
        UserInfo accountData = AccountUtil_.getInstance_(MApplication.f3182z).getAccountData();
        MessageProto.MessageRequest messageRequestBuild = MessageProto.MessageRequest.newBuilder().setAppVersion("517_6.1.7.0").setVersion(1).setType(MessageProto.MessageRequest.ProtoType.SWITCHOVER_QUEUE_MESSAGE).setRequestId(uuid).setParams(MessageProto.Params.newBuilder().setUid(accountData.getUid()).setToken(accountData.getToken()).setGameId(gameId).setServerName(serverName).setSwitchoverGameId(switchoverGameId).build()).setAccount(MessageProto.Account.newBuilder().setUid(accountData.getUid()).setNickname(accountData.getNickname()).setAvatar(accountData.getAvatarSrc()).setVip(com.join.mgps.Util.b.pivc(accountData)).build()).build();
        MessageClient messageClient = client;
        if (messageClient != null) {
            Intrinsics.checkNotNull(messageRequestBuild);
            messageClient.send(messageRequestBuild);
        }
    }

    public final void enterGame(long gameId, @NotNull String serverName, @NotNull String jobId, @NotNull String resId) {
        Intrinsics.checkNotNullParameter(serverName, "serverName");
        Intrinsics.checkNotNullParameter(jobId, "jobId");
        Intrinsics.checkNotNullParameter(resId, "resId");
        UserInfo accountData = AccountUtil_.getInstance_(MApplication.f3182z).getAccountData();
        MessageProto.MessageRequest messageRequestBuild = MessageProto.MessageRequest.newBuilder().setAppVersion("517_6.1.7.0").setVersion(1).setType(MessageProto.MessageRequest.ProtoType.CONFIRM_QUEUE_MESSAGE).setRequestId(uuid).setParams(MessageProto.Params.newBuilder().setUid(accountData.getUid()).setToken(accountData.getToken()).setGameId(gameId).setServerName(serverName).setJobId(jobId).setResourceId(resId).build()).setAccount(MessageProto.Account.newBuilder().setUid(accountData.getUid()).setNickname(accountData.getNickname()).setAvatar(accountData.getAvatarSrc()).setVip(com.join.mgps.Util.b.pivc(accountData)).build()).build();
        MessageClient messageClient = client;
        if (messageClient != null) {
            Intrinsics.checkNotNull(messageRequestBuild);
            messageClient.send(messageRequestBuild);
        }
    }

    @Nullable
    public final String getCurrentUid() {
        return currentUid;
    }

    public final void handleChanelActive() {
        login();
        isActive = true;
    }

    public final void handleResponseMessage(@NotNull MessageProto.Response response) {
        Intrinsics.checkNotNullParameter(response, "response");
        org.greenrobot.eventbus.c.f().q(new s(response));
    }

    public final void initMessageClient() {
        Object obj = "42.194.227.177";
        int i10 = 19708;
        try {
            String str = h.P;
            List listSplit$default = str != null ? StringsKt__StringsKt.split$default((CharSequence) str, new String[]{":"}, false, 0, 6, (Object) null) : null;
            if (listSplit$default != null && listSplit$default.size() == 2) {
                i10 = Integer.parseInt((String) listSplit$default.get(1));
                obj = listSplit$default.get(0);
            }
        } catch (Exception e10) {
            e10.printStackTrace();
        }
        try {
            MessageClient messageClient = client;
            if (messageClient != null) {
                Intrinsics.checkNotNull(messageClient);
                if (!messageClient.isCfgChanged((String) obj, i10)) {
                    return;
                }
            }
            uuid = Random.INSTANCE.nextLong();
            MessageClient messageClient2 = new MessageClient((String) obj, Integer.valueOf(i10));
            client = messageClient2;
            Intrinsics.checkNotNull(messageClient2);
            messageClient2.connect();
        } catch (Exception e11) {
            e11.printStackTrace();
        }
    }

    public final boolean isLogin() {
        return isLogin;
    }

    public final boolean isMessageAlive() {
        MessageClient messageClient = client;
        if (messageClient != null) {
            Intrinsics.checkNotNull(messageClient);
            if (messageClient.isAlive() && isActive) {
                return true;
            }
        }
        return false;
    }

    public final void joinQueue(long gameId, @NotNull String serverName) {
        Intrinsics.checkNotNullParameter(serverName, "serverName");
        UserInfo accountData = AccountUtil_.getInstance_(MApplication.f3182z).getAccountData();
        MessageProto.MessageRequest messageRequestBuild = MessageProto.MessageRequest.newBuilder().setAppVersion("517_6.1.7.0").setVersion(1).setType(MessageProto.MessageRequest.ProtoType.JOIN_QUEUE_MESSAGE).setRequestId(uuid).setParams(MessageProto.Params.newBuilder().setUid(accountData.getUid()).setToken(accountData.getToken()).setGameId(gameId).setServerName(serverName).build()).setAccount(MessageProto.Account.newBuilder().setUid(accountData.getUid()).setNickname(accountData.getNickname()).setAvatar(accountData.getAvatarSrc()).setVip(com.join.mgps.Util.b.pivc(accountData)).build()).build();
        MessageClient messageClient = client;
        if (messageClient != null) {
            Intrinsics.checkNotNull(messageRequestBuild);
            messageClient.send(messageRequestBuild);
        }
    }

    public final void login() {
        currentUid = AccountUtil_.getInstance_(MApplication.f3182z).getUid();
        UserInfo accountData = AccountUtil_.getInstance_(MApplication.f3182z).getAccountData();
        MessageProto.MessageRequest.b bVarNewBuilder = MessageProto.MessageRequest.newBuilder();
        bVarNewBuilder.setRequestId(uuid);
        bVarNewBuilder.setAppVersion("517_6.1.7.0");
        bVarNewBuilder.setVersion(1);
        bVarNewBuilder.setType(MessageProto.MessageRequest.ProtoType.LOGIN);
        MessageProto.Params.b bVarNewBuilder2 = MessageProto.Params.newBuilder();
        bVarNewBuilder2.setUid(accountData.getUid());
        bVarNewBuilder2.setToken(accountData.getToken());
        bVarNewBuilder2.setIsReconnect(isLogin);
        bVarNewBuilder.setParams(bVarNewBuilder2.build());
        MessageProto.Account.b bVarNewBuilder3 = MessageProto.Account.newBuilder();
        bVarNewBuilder3.setUid(accountData.getUid());
        bVarNewBuilder3.setNickname(accountData.getNickname());
        bVarNewBuilder3.setAvatar(accountData.getAvatarSrc());
        bVarNewBuilder3.setVip(com.join.mgps.Util.b.pivc(accountData));
        bVarNewBuilder.setAccount(bVarNewBuilder3.build());
        MessageClient messageClient = client;
        if (messageClient != null) {
            MessageProto.MessageRequest messageRequestBuild = bVarNewBuilder.build();
            Intrinsics.checkNotNullExpressionValue(messageRequestBuild, "build(...)");
            messageClient.send(messageRequestBuild);
        }
    }

    public final void logout() {
        try {
            isLogin = false;
            isActive = false;
            MessageClient messageClient = client;
            if (messageClient == null) {
                return;
            }
            Intrinsics.checkNotNull(messageClient);
            if (messageClient.isAlive()) {
                MessageClient messageClient2 = client;
                Intrinsics.checkNotNull(messageClient2);
                messageClient2.disconnect();
            }
            client = null;
        } catch (Exception e10) {
            e10.printStackTrace();
        }
    }

    public final void queryQueueState(long gameId, @NotNull String serverName) {
        Intrinsics.checkNotNullParameter(serverName, "serverName");
        UserInfo accountData = AccountUtil_.getInstance_(MApplication.f3182z).getAccountData();
        MessageProto.MessageRequest messageRequestBuild = MessageProto.MessageRequest.newBuilder().setAppVersion("517_6.1.7.0").setVersion(1).setType(MessageProto.MessageRequest.ProtoType.REQUEST_QUEUE_MESSAGE).setRequestId(uuid).setParams(MessageProto.Params.newBuilder().setUid(accountData.getUid()).setToken(accountData.getToken()).setGameId(gameId).setServerName(serverName).build()).setAccount(MessageProto.Account.newBuilder().setUid(accountData.getUid()).setNickname(accountData.getNickname()).setAvatar(accountData.getAvatarSrc()).setVip(com.join.mgps.Util.b.pivc(accountData)).build()).build();
        MessageClient messageClient = client;
        if (messageClient != null) {
            Intrinsics.checkNotNull(messageRequestBuild);
            messageClient.send(messageRequestBuild);
        }
    }

    public final void quitQueue(long gameId, @NotNull String serverName, @NotNull String jobId) {
        Intrinsics.checkNotNullParameter(serverName, "serverName");
        Intrinsics.checkNotNullParameter(jobId, "jobId");
        UserInfo accountData = AccountUtil_.getInstance_(MApplication.f3182z).getAccountData();
        MessageProto.MessageRequest messageRequestBuild = MessageProto.MessageRequest.newBuilder().setAppVersion("517_6.1.7.0").setVersion(1).setType(MessageProto.MessageRequest.ProtoType.EXIT_QUEUE_MESSAGE).setRequestId(uuid).setParams(MessageProto.Params.newBuilder().setUid(accountData.getUid()).setToken(accountData.getToken()).setGameId(gameId).setServerName(serverName).setJobId(jobId).build()).setAccount(MessageProto.Account.newBuilder().setUid(accountData.getUid()).setNickname(accountData.getNickname()).setAvatar(accountData.getAvatarSrc()).setVip(com.join.mgps.Util.b.pivc(accountData)).setVip(com.join.mgps.Util.b.pivc(accountData)).build()).build();
        MessageClient messageClient = client;
        if (messageClient != null) {
            Intrinsics.checkNotNull(messageRequestBuild);
            messageClient.send(messageRequestBuild);
        }
    }

    public final void reConnect() {
        isActive = false;
        MessageClient messageClient = client;
        if (messageClient != null) {
            messageClient.disconnect();
        }
        MessageClient messageClient2 = client;
        if (messageClient2 != null) {
            messageClient2.connect();
        }
    }

    public final void release(long gameId, @NotNull String serverName, @NotNull String jobId, @NotNull String resId) {
        Intrinsics.checkNotNullParameter(serverName, "serverName");
        Intrinsics.checkNotNullParameter(jobId, "jobId");
        Intrinsics.checkNotNullParameter(resId, "resId");
        UserInfo accountData = AccountUtil_.getInstance_(MApplication.f3182z).getAccountData();
        MessageProto.MessageRequest messageRequestBuild = MessageProto.MessageRequest.newBuilder().setAppVersion("517_6.1.7.0").setVersion(1).setType(MessageProto.MessageRequest.ProtoType.RESOURCE_TIME_OUT).setRequestId(uuid).setParams(MessageProto.Params.newBuilder().setUid(accountData.getUid()).setToken(accountData.getToken()).setGameId(gameId).setServerName(serverName).setJobId(jobId).setResourceId(resId).build()).setAccount(MessageProto.Account.newBuilder().setUid(accountData.getUid()).setNickname(accountData.getNickname()).setAvatar(accountData.getAvatarSrc()).setVip(com.join.mgps.Util.b.pivc(accountData)).build()).build();
        MessageClient messageClient = client;
        if (messageClient != null) {
            Intrinsics.checkNotNull(messageRequestBuild);
            messageClient.send(messageRequestBuild);
        }
    }

    public final void sendHeartBeat() {
        UserInfo accountData = AccountUtil_.getInstance_(MApplication.f3182z).getAccountData();
        MessageProto.MessageRequest.b bVarNewBuilder = MessageProto.MessageRequest.newBuilder();
        bVarNewBuilder.setRequestId(uuid);
        bVarNewBuilder.setAppVersion("517_6.1.7.0");
        bVarNewBuilder.setVersion(1);
        bVarNewBuilder.setType(MessageProto.MessageRequest.ProtoType.PING);
        bVarNewBuilder.setParams(MessageProto.Params.newBuilder().setUid(accountData.getUid()).build());
        MessageClient messageClient = client;
        if (messageClient != null) {
            MessageProto.MessageRequest messageRequestBuild = bVarNewBuilder.build();
            Intrinsics.checkNotNullExpressionValue(messageRequestBuild, "build(...)");
            messageClient.send(messageRequestBuild);
        }
    }

    public final void setActiveState(boolean logined) {
        isActive = logined;
        if (isLogin) {
            org.greenrobot.eventbus.c.f().q(new t(0, logined));
        }
    }

    public final void setCurrentUid(@Nullable String str) {
        currentUid = str;
    }

    public final void setLoginState(boolean login) {
        isLogin = login;
    }
}
