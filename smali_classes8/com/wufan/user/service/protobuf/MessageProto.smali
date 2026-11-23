.class public final Lcom/wufan/user/service/protobuf/MessageProto;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/wufan/user/service/protobuf/MessageProto$Pong;,
        Lcom/wufan/user/service/protobuf/MessageProto$f;,
        Lcom/wufan/user/service/protobuf/MessageProto$QueueInfo;,
        Lcom/wufan/user/service/protobuf/MessageProto$h;,
        Lcom/wufan/user/service/protobuf/MessageProto$MessageInfo;,
        Lcom/wufan/user/service/protobuf/MessageProto$c;,
        Lcom/wufan/user/service/protobuf/MessageProto$Response;,
        Lcom/wufan/user/service/protobuf/MessageProto$i;,
        Lcom/wufan/user/service/protobuf/MessageProto$PushParams;,
        Lcom/wufan/user/service/protobuf/MessageProto$g;,
        Lcom/wufan/user/service/protobuf/MessageProto$Params;,
        Lcom/wufan/user/service/protobuf/MessageProto$e;,
        Lcom/wufan/user/service/protobuf/MessageProto$Account;,
        Lcom/wufan/user/service/protobuf/MessageProto$b;,
        Lcom/wufan/user/service/protobuf/MessageProto$MessageRequest;,
        Lcom/wufan/user/service/protobuf/MessageProto$d;
    }
.end annotation


# static fields
.field private static final a:Lcom/google/protobuf/Descriptors$Descriptor;

.field private static final b:Lcom/google/protobuf/GeneratedMessageV3$FieldAccessorTable;

.field private static final c:Lcom/google/protobuf/Descriptors$Descriptor;

.field private static final d:Lcom/google/protobuf/GeneratedMessageV3$FieldAccessorTable;

.field private static final e:Lcom/google/protobuf/Descriptors$Descriptor;

.field private static final f:Lcom/google/protobuf/GeneratedMessageV3$FieldAccessorTable;

.field private static final g:Lcom/google/protobuf/Descriptors$Descriptor;

.field private static final h:Lcom/google/protobuf/GeneratedMessageV3$FieldAccessorTable;

.field private static final i:Lcom/google/protobuf/Descriptors$Descriptor;

.field private static final j:Lcom/google/protobuf/GeneratedMessageV3$FieldAccessorTable;

.field private static final k:Lcom/google/protobuf/Descriptors$Descriptor;

.field private static final l:Lcom/google/protobuf/GeneratedMessageV3$FieldAccessorTable;

.field private static final m:Lcom/google/protobuf/Descriptors$Descriptor;

.field private static final n:Lcom/google/protobuf/GeneratedMessageV3$FieldAccessorTable;

.field private static final o:Lcom/google/protobuf/Descriptors$Descriptor;

.field private static final p:Lcom/google/protobuf/GeneratedMessageV3$FieldAccessorTable;

.field private static q:Lcom/google/protobuf/Descriptors$FileDescriptor;


# direct methods
.method static constructor <clinit>()V
    .locals 15

    .line 1
    const-string v0, "\n\rmessage.proto\"\u00a8\u0005\n\u000eMessageRequest\u0012\u0012\n\nappVersion\u0018\u0001 \u0001(\t\u0012\u000f\n\u0007version\u0018\u0002 \u0001(\u0005\u0012\'\n\u0004type\u0018\u0003 \u0001(\u000e2\u0019.MessageRequest.ProtoType\u0012\u0011\n\trequestId\u0018\u0004 \u0001(\u0003\u0012\u0017\n\u0006params\u0018\u0005 \u0001(\u000b2\u0007.Params\u0012\u001f\n\npushParams\u0018\u0006 \u0003(\u000b2\u000b.PushParams\u0012\u0019\n\u0007account\u0018\u0007 \u0001(\u000b2\u0008.Account\"\u00df\u0003\n\tProtoType\u0012\t\n\u0005LOGIN\u0010\u0000\u0012\"\n\u001ePUSH_USER_NOTIFICATION_MESSAGE\u0010\u0001\u0012&\n\"PUSH_ALL_USER_NOTIFICATION_MESSAGE\u0010\u0002\u0012\"\n\u001ePULL_USER_NOTIFICATION_MESSAGE\u0010\u0003\u0012\u0013\n\u000fSET_READ_STATUS\u0010\u0004\u0012\u0008\n\u0004PING\u0010\u0005\u0012)\n%PULL_REMOTE_USER_NOTIFICATION_MESSAGE\u0010\u0006\u0012\u0016\n\u0012JOIN_QUEUE_MESSAGE\u0010\u0007\u0012\u0019\n\u0015CONFIRM_QUEUE_MESSAGE\u0010\u0008\u0012\u001e\n\u001aNOTIFICATION_QUEUE_MESSAGE\u0010\t\u0012\u0019\n\u0015REQUEST_QUEUE_MESSAGE\u0010\n\u0012\u001c\n\u0018SWITCHOVER_QUEUE_MESSAGE\u0010\u000b\u0012$\n CONFIRM_SWITCHOVER_QUEUE_MESSAGE\u0010\u000c\u0012\u0016\n\u0012EXIT_QUEUE_MESSAGE\u0010\r\u0012\u0015\n\u0011RESOURCE_TIME_OUT\u0010\u000e\u0012,\n(NOTIFICATION_UPDATE_QUEUE_STATUS_MESSAGE\u0010\u000f\"m\n\u0007Account\u0012\u000b\n\u0003uid\u0018\u0001 \u0001(\u0005\u0012\u0013\n\u000baccountName\u0018\u0002 \u0001(\t\u0012\u0010\n\u0008nickname\u0018\u0003 \u0001(\t\u0012\u000e\n\u0006avatar\u0018\u0004 \u0001(\t\u0012\u000b\n\u0003vip\u0018\u0005 \u0001(\u0008\u0012\u0011\n\tuserToken\u0018\u0006 \u0001(\t\"\u00e9\u0001\n\u0006Params\u0012\u000b\n\u0003uid\u0018\u0001 \u0001(\u0005\u0012\r\n\u0005token\u0018\u0002 \u0001(\t\u0012\u0010\n\u0008recordId\u0018\u0003 \u0001(\t\u0012\u001a\n\u0012lastMessageAddTime\u0018\u0004 \u0001(\u0003\u0012\u000e\n\u0006isInit\u0018\u0005 \u0001(\u0008\u0012\u000e\n\u0006gameId\u0018\u0006 \u0001(\u0003\u0012\u0012\n\nserverName\u0018\u0007 \u0001(\t\u0012\u0012\n\nresourceId\u0018\u0008 \u0001(\t\u0012\r\n\u0005jobId\u0018\t \u0001(\t\u0012\u0018\n\u0010switchoverGameId\u0018\n \u0001(\u0003\u0012\u000f\n\u0007fromUid\u0018\u000b \u0001(\u0005\u0012\u0013\n\u000bisReconnect\u0018\u000c \u0001(\u0008\"\u00f5\u0001\n\nPushParams\u0012\u0010\n\u0008recordId\u0018\u0001 \u0001(\t\u0012\u0013\n\u000bmessageType\u0018\u0002 \u0001(\u0005\u0012\r\n\u0005title\u0018\u0003 \u0001(\t\u0012\u000f\n\u0007content\u0018\u0004 \u0001(\t\u0012\u0013\n\u000bjumpContent\u0018\u0005 \u0001(\t\u0012\u000b\n\u0003uid\u0018\u0006 \u0001(\u0005\u0012\u000f\n\u0007addTime\u0018\u0007 \u0001(\u0003\u0012\u0012\n\nresourceId\u0018\u0008 \u0001(\t\u0012\r\n\u0005jobId\u0018\t \u0001(\t\u0012\u000e\n\u0006gameId\u0018\n \u0001(\u0003\u0012\u0012\n\nserverName\u0018\u000b \u0001(\t\u0012\u0010\n\u0008position\u0018\u000c \u0001(\u0005\u0012\u0014\n\u000cwaitPosition\u0018\r \u0001(\u0005\"\u00b2\n\n\u0008Response\u0012(\n\nstatusCode\u0018\u0001 \u0001(\u000e2\u0014.Response.StatusCode\u0012\u0011\n\trequestId\u0018\u0002 \u0001(\u0003\u0012!\n\u0004type\u0018\u0003 \u0001(\u000e2\u0013.Response.ProtoType\u0012!\n\u000bmessageInfo\u0018\u0004 \u0003(\u000b2\u000c.MessageInfo\u0012\u0016\n\u000ebroadcastUsers\u0018\u0005 \u0003(\u0005\u0012\r\n\u0005error\u0018\u0006 \u0001(\t\u0012\u0013\n\u0004pong\u0018\u0007 \u0001(\u000b2\u0005.Pong\u00120\n\u000elogicErrorCode\u0018\u0008 \u0001(\u000e2\u0018.Response.LogicErrorCode\u0012\u0019\n\u0011onlinePeopleCount\u0018\t \u0001(\u0005\u0012\u001d\n\tqueueInfo\u0018\n \u0001(\u000b2\n.QueueInfo\u0012\u0011\n\terrorCode\u0018\u000b \u0001(\u0005\"\u00d5\u0001\n\nStatusCode\u0012\u0012\n\u000eUNDEFINED_CODE\u0010\u0000\u0012\u0013\n\u000fSERVICE_FAILURE\u0010\u0001\u0012\u0012\n\u000ePARAMS_FAILURE\u0010\u0002\u0012\u0014\n\u0010INTERNAL_FAILURE\u0010\u0003\u0012\u0014\n\u0010UN_LOGIN_FAILURE\u0010\u0004\u0012\u0012\n\u000eRESULT_FAILURE\u0010\u0005\u0012\u0012\n\u000eRESULT_SUCCESS\u0010\u0006\u0012\u0016\n\u0012USER_TOKEN_FAILURE\u0010\u0007\u0012\u001e\n\u001aPUSH_AUTHORIZATION_FAILURE\u0010\u0008\"\u0080\u0004\n\tProtoType\u0012\u0016\n\u0012UNDEFINED_RESPONSE\u0010\u0000\u0012\u0008\n\u0004PONG\u0010\u0001\u0012\u0010\n\u000cMESSAGE_LIST\u0010\u0002\u0012\'\n#UPDATE_AREA_ONLINE_PEOPLE_BROADCAST\u0010\u0003\u0012\u0010\n\u000cIDLE_TIMEOUT\u0010\u0004\u0012\u0013\n\u000fPUSH_LIMIT_TIPS\u0010\u0005\u0012\u0012\n\u000eMESSAGE_STATUS\u0010\u0006\u0012\u0010\n\u000cLOGIN_STATUS\u0010\u0007\u0012\u001d\n\u0019NOTIFICATION_MESSAGE_LIST\u0010\u0008\u0012\u0015\n\u0011JOIN_QUEUE_STATUS\u0010\n\u0012\u001d\n\u0019NOTIFICATION_QUEUE_STATUS\u0010\t\u0012\u0018\n\u0014CONFIRM_QUEUE_STATUS\u0010\u000b\u0012\u0019\n\u0015RESPONSE_QUEUE_STATUS\u0010\u000c\u0012\u001b\n\u0017SWITCHOVER_QUEUE_STATUS\u0010\r\u0012#\n\u001fCONFIRM_SWITCHOVER_QUEUE_STATUS\u0010\u000e\u0012\u001b\n\u0017RESPONSE_MESSAGE_STATUS\u0010\u000f\u0012\u0015\n\u0011EXIT_QUEUE_STATUS\u0010\u0010\u0012\u001c\n\u0018RESOURCE_TIME_OUT_STATUS\u0010\u0011\u0012+\n\'NOTIFICATION_UPDATE_QUEUE_STATUS_STATUS\u0010\u0012\"\u008c\u0002\n\u000eLogicErrorCode\u0012\u0018\n\u0014UNDEFINED_ERROR_CODE\u0010\u0000\u0012\u0015\n\u0011NOT_FOUND_MESSAGE\u0010\u0001\u0012\u000e\n\nLOGIN_FAIL\u0010\u0002\u0012\u0014\n\u0010LOGIN_TOKEN_FAIL\u0010\u0003\u0012\u0012\n\u000eLOGIN_UID_FAIL\u0010\u0004\u0012\u0013\n\u000fJOIN_QUEUE_FAIL\u0010\u0005\u0012\u001b\n\u0017NOTIFICATION_QUEUE_FAIL\u0010\u0006\u0012\u0015\n\u0011STATUS_QUEUE_FAIL\u0010\u0007\u0012\u0016\n\u0012CONFIRM_QUEUE_FAIL\u0010\u0008\u0012\u0019\n\u0015SWITCHOVER_QUEUE_FAIL\u0010\t\u0012\u0013\n\u000fEXIT_QUEUE_FAIL\u0010\n\"\u00a7\u0001\n\u000bMessageInfo\u0012\u0010\n\u0008recordId\u0018\u0001 \u0001(\t\u0012\u0013\n\u000bmessageType\u0018\u0002 \u0001(\u0005\u0012\r\n\u0005title\u0018\u0003 \u0001(\t\u0012\u000f\n\u0007content\u0018\u0004 \u0001(\t\u0012\u0013\n\u000bjumpContent\u0018\u0005 \u0001(\t\u0012\u000b\n\u0003uid\u0018\u0006 \u0001(\u0005\u0012\u000e\n\u0006status\u0018\u0007 \u0001(\u0005\u0012\u000f\n\u0007addTime\u0018\u0008 \u0001(\u0003\u0012\u000e\n\u0006isRead\u0018\t \u0001(\u0008\"\u00fb\u0001\n\tQueueInfo\u0012\u0012\n\nresourceId\u0018\u0001 \u0001(\t\u0012\r\n\u0005jobId\u0018\u0002 \u0001(\t\u0012\u000b\n\u0003bid\u0018\u0003 \u0001(\t\u0012\u0011\n\taccessKey\u0018\u0004 \u0001(\t\u0012\u0012\n\nappChannel\u0018\u0005 \u0001(\t\u0012\u0010\n\u0008position\u0018\u0006 \u0001(\u0005\u0012\u0014\n\u000cwaitPosition\u0018\u0007 \u0001(\u0005\u0012\u001e\n\u0016switchoverWaitPosition\u0018\u0008 \u0001(\u0005\u0012\u0014\n\u000cquitGameTime\u0018\t \u0001(\u0003\u0012\u0018\n\u0010unusedQueueCards\u0018\n \u0001(\u0008\u0012\u000f\n\u0007isQueue\u0018\u000b \u0001(\u0008\u0012\u000e\n\u0006gameId\u0018\u000c \u0001(\u0003\"\u0019\n\u0004Pong\u0012\u0011\n\ttimestamp\u0018\u0001 \u0001(\u0003B/\n\u001fcom.wufan.user.service.protobufB\u000cMessageProtob\u0006proto3"

    .line 2
    .line 3
    filled-new-array {v0}, [Ljava/lang/String;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    new-instance v1, Lcom/wufan/user/service/protobuf/MessageProto$a;

    .line 8
    .line 9
    invoke-direct {v1}, Lcom/wufan/user/service/protobuf/MessageProto$a;-><init>()V

    .line 10
    .line 11
    .line 12
    const/4 v2, 0x0

    .line 13
    new-array v3, v2, [Lcom/google/protobuf/Descriptors$FileDescriptor;

    .line 14
    .line 15
    invoke-static {v0, v3, v1}, Lcom/google/protobuf/Descriptors$FileDescriptor;->internalBuildGeneratedFileFrom([Ljava/lang/String;[Lcom/google/protobuf/Descriptors$FileDescriptor;Lcom/google/protobuf/Descriptors$FileDescriptor$InternalDescriptorAssigner;)V

    .line 16
    .line 17
    .line 18
    invoke-static {}, Lcom/wufan/user/service/protobuf/MessageProto;->r()Lcom/google/protobuf/Descriptors$FileDescriptor;

    .line 19
    .line 20
    .line 21
    move-result-object v0

    .line 22
    invoke-virtual {v0}, Lcom/google/protobuf/Descriptors$FileDescriptor;->getMessageTypes()Ljava/util/List;

    .line 23
    .line 24
    .line 25
    move-result-object v0

    .line 26
    invoke-interface {v0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 27
    .line 28
    .line 29
    move-result-object v0

    .line 30
    check-cast v0, Lcom/google/protobuf/Descriptors$Descriptor;

    .line 31
    .line 32
    sput-object v0, Lcom/wufan/user/service/protobuf/MessageProto;->a:Lcom/google/protobuf/Descriptors$Descriptor;

    .line 33
    .line 34
    new-instance v1, Lcom/google/protobuf/GeneratedMessageV3$FieldAccessorTable;

    .line 35
    .line 36
    const-string v2, "AppVersion"

    .line 37
    .line 38
    const-string v3, "Version"

    .line 39
    .line 40
    const-string v4, "Type"

    .line 41
    .line 42
    const-string v5, "RequestId"

    .line 43
    .line 44
    const-string v6, "Params"

    .line 45
    .line 46
    const-string v7, "PushParams"

    .line 47
    .line 48
    const-string v8, "Account"

    .line 49
    .line 50
    filled-new-array/range {v2 .. v8}, [Ljava/lang/String;

    .line 51
    .line 52
    .line 53
    move-result-object v2

    .line 54
    invoke-direct {v1, v0, v2}, Lcom/google/protobuf/GeneratedMessageV3$FieldAccessorTable;-><init>(Lcom/google/protobuf/Descriptors$Descriptor;[Ljava/lang/String;)V

    .line 55
    .line 56
    .line 57
    sput-object v1, Lcom/wufan/user/service/protobuf/MessageProto;->b:Lcom/google/protobuf/GeneratedMessageV3$FieldAccessorTable;

    .line 58
    .line 59
    invoke-static {}, Lcom/wufan/user/service/protobuf/MessageProto;->r()Lcom/google/protobuf/Descriptors$FileDescriptor;

    .line 60
    .line 61
    .line 62
    move-result-object v0

    .line 63
    invoke-virtual {v0}, Lcom/google/protobuf/Descriptors$FileDescriptor;->getMessageTypes()Ljava/util/List;

    .line 64
    .line 65
    .line 66
    move-result-object v0

    .line 67
    const/4 v1, 0x1

    .line 68
    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 69
    .line 70
    .line 71
    move-result-object v0

    .line 72
    check-cast v0, Lcom/google/protobuf/Descriptors$Descriptor;

    .line 73
    .line 74
    sput-object v0, Lcom/wufan/user/service/protobuf/MessageProto;->c:Lcom/google/protobuf/Descriptors$Descriptor;

    .line 75
    .line 76
    new-instance v1, Lcom/google/protobuf/GeneratedMessageV3$FieldAccessorTable;

    .line 77
    .line 78
    const-string v2, "Uid"

    .line 79
    .line 80
    const-string v3, "AccountName"

    .line 81
    .line 82
    const-string v4, "Nickname"

    .line 83
    .line 84
    const-string v5, "Avatar"

    .line 85
    .line 86
    const-string v6, "Vip"

    .line 87
    .line 88
    const-string v7, "UserToken"

    .line 89
    .line 90
    filled-new-array/range {v2 .. v7}, [Ljava/lang/String;

    .line 91
    .line 92
    .line 93
    move-result-object v2

    .line 94
    invoke-direct {v1, v0, v2}, Lcom/google/protobuf/GeneratedMessageV3$FieldAccessorTable;-><init>(Lcom/google/protobuf/Descriptors$Descriptor;[Ljava/lang/String;)V

    .line 95
    .line 96
    .line 97
    sput-object v1, Lcom/wufan/user/service/protobuf/MessageProto;->d:Lcom/google/protobuf/GeneratedMessageV3$FieldAccessorTable;

    .line 98
    .line 99
    invoke-static {}, Lcom/wufan/user/service/protobuf/MessageProto;->r()Lcom/google/protobuf/Descriptors$FileDescriptor;

    .line 100
    .line 101
    .line 102
    move-result-object v0

    .line 103
    invoke-virtual {v0}, Lcom/google/protobuf/Descriptors$FileDescriptor;->getMessageTypes()Ljava/util/List;

    .line 104
    .line 105
    .line 106
    move-result-object v0

    .line 107
    const/4 v1, 0x2

    .line 108
    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 109
    .line 110
    .line 111
    move-result-object v0

    .line 112
    check-cast v0, Lcom/google/protobuf/Descriptors$Descriptor;

    .line 113
    .line 114
    sput-object v0, Lcom/wufan/user/service/protobuf/MessageProto;->e:Lcom/google/protobuf/Descriptors$Descriptor;

    .line 115
    .line 116
    new-instance v1, Lcom/google/protobuf/GeneratedMessageV3$FieldAccessorTable;

    .line 117
    .line 118
    const-string v2, "Uid"

    .line 119
    .line 120
    const-string v3, "Token"

    .line 121
    .line 122
    const-string v4, "RecordId"

    .line 123
    .line 124
    const-string v5, "LastMessageAddTime"

    .line 125
    .line 126
    const-string v6, "IsInit"

    .line 127
    .line 128
    const-string v7, "GameId"

    .line 129
    .line 130
    const-string v8, "ServerName"

    .line 131
    .line 132
    const-string v9, "ResourceId"

    .line 133
    .line 134
    const-string v10, "JobId"

    .line 135
    .line 136
    const-string v11, "SwitchoverGameId"

    .line 137
    .line 138
    const-string v12, "FromUid"

    .line 139
    .line 140
    const-string v13, "IsReconnect"

    .line 141
    .line 142
    filled-new-array/range {v2 .. v13}, [Ljava/lang/String;

    .line 143
    .line 144
    .line 145
    move-result-object v2

    .line 146
    invoke-direct {v1, v0, v2}, Lcom/google/protobuf/GeneratedMessageV3$FieldAccessorTable;-><init>(Lcom/google/protobuf/Descriptors$Descriptor;[Ljava/lang/String;)V

    .line 147
    .line 148
    .line 149
    sput-object v1, Lcom/wufan/user/service/protobuf/MessageProto;->f:Lcom/google/protobuf/GeneratedMessageV3$FieldAccessorTable;

    .line 150
    .line 151
    invoke-static {}, Lcom/wufan/user/service/protobuf/MessageProto;->r()Lcom/google/protobuf/Descriptors$FileDescriptor;

    .line 152
    .line 153
    .line 154
    move-result-object v0

    .line 155
    invoke-virtual {v0}, Lcom/google/protobuf/Descriptors$FileDescriptor;->getMessageTypes()Ljava/util/List;

    .line 156
    .line 157
    .line 158
    move-result-object v0

    .line 159
    const/4 v1, 0x3

    .line 160
    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 161
    .line 162
    .line 163
    move-result-object v0

    .line 164
    check-cast v0, Lcom/google/protobuf/Descriptors$Descriptor;

    .line 165
    .line 166
    sput-object v0, Lcom/wufan/user/service/protobuf/MessageProto;->g:Lcom/google/protobuf/Descriptors$Descriptor;

    .line 167
    .line 168
    new-instance v1, Lcom/google/protobuf/GeneratedMessageV3$FieldAccessorTable;

    .line 169
    .line 170
    const-string v2, "RecordId"

    .line 171
    .line 172
    const-string v3, "MessageType"

    .line 173
    .line 174
    const-string v4, "Title"

    .line 175
    .line 176
    const-string v5, "Content"

    .line 177
    .line 178
    const-string v6, "JumpContent"

    .line 179
    .line 180
    const-string v7, "Uid"

    .line 181
    .line 182
    const-string v8, "AddTime"

    .line 183
    .line 184
    const-string v9, "ResourceId"

    .line 185
    .line 186
    const-string v10, "JobId"

    .line 187
    .line 188
    const-string v11, "GameId"

    .line 189
    .line 190
    const-string v12, "ServerName"

    .line 191
    .line 192
    const-string v13, "Position"

    .line 193
    .line 194
    const-string v14, "WaitPosition"

    .line 195
    .line 196
    filled-new-array/range {v2 .. v14}, [Ljava/lang/String;

    .line 197
    .line 198
    .line 199
    move-result-object v2

    .line 200
    invoke-direct {v1, v0, v2}, Lcom/google/protobuf/GeneratedMessageV3$FieldAccessorTable;-><init>(Lcom/google/protobuf/Descriptors$Descriptor;[Ljava/lang/String;)V

    .line 201
    .line 202
    .line 203
    sput-object v1, Lcom/wufan/user/service/protobuf/MessageProto;->h:Lcom/google/protobuf/GeneratedMessageV3$FieldAccessorTable;

    .line 204
    .line 205
    invoke-static {}, Lcom/wufan/user/service/protobuf/MessageProto;->r()Lcom/google/protobuf/Descriptors$FileDescriptor;

    .line 206
    .line 207
    .line 208
    move-result-object v0

    .line 209
    invoke-virtual {v0}, Lcom/google/protobuf/Descriptors$FileDescriptor;->getMessageTypes()Ljava/util/List;

    .line 210
    .line 211
    .line 212
    move-result-object v0

    .line 213
    const/4 v1, 0x4

    .line 214
    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 215
    .line 216
    .line 217
    move-result-object v0

    .line 218
    check-cast v0, Lcom/google/protobuf/Descriptors$Descriptor;

    .line 219
    .line 220
    sput-object v0, Lcom/wufan/user/service/protobuf/MessageProto;->i:Lcom/google/protobuf/Descriptors$Descriptor;

    .line 221
    .line 222
    new-instance v1, Lcom/google/protobuf/GeneratedMessageV3$FieldAccessorTable;

    .line 223
    .line 224
    const-string v2, "StatusCode"

    .line 225
    .line 226
    const-string v3, "RequestId"

    .line 227
    .line 228
    const-string v4, "Type"

    .line 229
    .line 230
    const-string v5, "MessageInfo"

    .line 231
    .line 232
    const-string v6, "BroadcastUsers"

    .line 233
    .line 234
    const-string v7, "Error"

    .line 235
    .line 236
    const-string v8, "Pong"

    .line 237
    .line 238
    const-string v9, "LogicErrorCode"

    .line 239
    .line 240
    const-string v10, "OnlinePeopleCount"

    .line 241
    .line 242
    const-string v11, "QueueInfo"

    .line 243
    .line 244
    const-string v12, "ErrorCode"

    .line 245
    .line 246
    filled-new-array/range {v2 .. v12}, [Ljava/lang/String;

    .line 247
    .line 248
    .line 249
    move-result-object v2

    .line 250
    invoke-direct {v1, v0, v2}, Lcom/google/protobuf/GeneratedMessageV3$FieldAccessorTable;-><init>(Lcom/google/protobuf/Descriptors$Descriptor;[Ljava/lang/String;)V

    .line 251
    .line 252
    .line 253
    sput-object v1, Lcom/wufan/user/service/protobuf/MessageProto;->j:Lcom/google/protobuf/GeneratedMessageV3$FieldAccessorTable;

    .line 254
    .line 255
    invoke-static {}, Lcom/wufan/user/service/protobuf/MessageProto;->r()Lcom/google/protobuf/Descriptors$FileDescriptor;

    .line 256
    .line 257
    .line 258
    move-result-object v0

    .line 259
    invoke-virtual {v0}, Lcom/google/protobuf/Descriptors$FileDescriptor;->getMessageTypes()Ljava/util/List;

    .line 260
    .line 261
    .line 262
    move-result-object v0

    .line 263
    const/4 v1, 0x5

    .line 264
    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 265
    .line 266
    .line 267
    move-result-object v0

    .line 268
    check-cast v0, Lcom/google/protobuf/Descriptors$Descriptor;

    .line 269
    .line 270
    sput-object v0, Lcom/wufan/user/service/protobuf/MessageProto;->k:Lcom/google/protobuf/Descriptors$Descriptor;

    .line 271
    .line 272
    new-instance v1, Lcom/google/protobuf/GeneratedMessageV3$FieldAccessorTable;

    .line 273
    .line 274
    const-string v2, "RecordId"

    .line 275
    .line 276
    const-string v3, "MessageType"

    .line 277
    .line 278
    const-string v4, "Title"

    .line 279
    .line 280
    const-string v5, "Content"

    .line 281
    .line 282
    const-string v6, "JumpContent"

    .line 283
    .line 284
    const-string v7, "Uid"

    .line 285
    .line 286
    const-string v8, "Status"

    .line 287
    .line 288
    const-string v9, "AddTime"

    .line 289
    .line 290
    const-string v10, "IsRead"

    .line 291
    .line 292
    filled-new-array/range {v2 .. v10}, [Ljava/lang/String;

    .line 293
    .line 294
    .line 295
    move-result-object v2

    .line 296
    invoke-direct {v1, v0, v2}, Lcom/google/protobuf/GeneratedMessageV3$FieldAccessorTable;-><init>(Lcom/google/protobuf/Descriptors$Descriptor;[Ljava/lang/String;)V

    .line 297
    .line 298
    .line 299
    sput-object v1, Lcom/wufan/user/service/protobuf/MessageProto;->l:Lcom/google/protobuf/GeneratedMessageV3$FieldAccessorTable;

    .line 300
    .line 301
    invoke-static {}, Lcom/wufan/user/service/protobuf/MessageProto;->r()Lcom/google/protobuf/Descriptors$FileDescriptor;

    .line 302
    .line 303
    .line 304
    move-result-object v0

    .line 305
    invoke-virtual {v0}, Lcom/google/protobuf/Descriptors$FileDescriptor;->getMessageTypes()Ljava/util/List;

    .line 306
    .line 307
    .line 308
    move-result-object v0

    .line 309
    const/4 v1, 0x6

    .line 310
    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 311
    .line 312
    .line 313
    move-result-object v0

    .line 314
    check-cast v0, Lcom/google/protobuf/Descriptors$Descriptor;

    .line 315
    .line 316
    sput-object v0, Lcom/wufan/user/service/protobuf/MessageProto;->m:Lcom/google/protobuf/Descriptors$Descriptor;

    .line 317
    .line 318
    new-instance v1, Lcom/google/protobuf/GeneratedMessageV3$FieldAccessorTable;

    .line 319
    .line 320
    const-string v2, "ResourceId"

    .line 321
    .line 322
    const-string v3, "JobId"

    .line 323
    .line 324
    const-string v4, "Bid"

    .line 325
    .line 326
    const-string v5, "AccessKey"

    .line 327
    .line 328
    const-string v6, "AppChannel"

    .line 329
    .line 330
    const-string v7, "Position"

    .line 331
    .line 332
    const-string v8, "WaitPosition"

    .line 333
    .line 334
    const-string v9, "SwitchoverWaitPosition"

    .line 335
    .line 336
    const-string v10, "QuitGameTime"

    .line 337
    .line 338
    const-string v11, "UnusedQueueCards"

    .line 339
    .line 340
    const-string v12, "IsQueue"

    .line 341
    .line 342
    const-string v13, "GameId"

    .line 343
    .line 344
    filled-new-array/range {v2 .. v13}, [Ljava/lang/String;

    .line 345
    .line 346
    .line 347
    move-result-object v2

    .line 348
    invoke-direct {v1, v0, v2}, Lcom/google/protobuf/GeneratedMessageV3$FieldAccessorTable;-><init>(Lcom/google/protobuf/Descriptors$Descriptor;[Ljava/lang/String;)V

    .line 349
    .line 350
    .line 351
    sput-object v1, Lcom/wufan/user/service/protobuf/MessageProto;->n:Lcom/google/protobuf/GeneratedMessageV3$FieldAccessorTable;

    .line 352
    .line 353
    invoke-static {}, Lcom/wufan/user/service/protobuf/MessageProto;->r()Lcom/google/protobuf/Descriptors$FileDescriptor;

    .line 354
    .line 355
    .line 356
    move-result-object v0

    .line 357
    invoke-virtual {v0}, Lcom/google/protobuf/Descriptors$FileDescriptor;->getMessageTypes()Ljava/util/List;

    .line 358
    .line 359
    .line 360
    move-result-object v0

    .line 361
    const/4 v1, 0x7

    .line 362
    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 363
    .line 364
    .line 365
    move-result-object v0

    .line 366
    check-cast v0, Lcom/google/protobuf/Descriptors$Descriptor;

    .line 367
    .line 368
    sput-object v0, Lcom/wufan/user/service/protobuf/MessageProto;->o:Lcom/google/protobuf/Descriptors$Descriptor;

    .line 369
    .line 370
    new-instance v1, Lcom/google/protobuf/GeneratedMessageV3$FieldAccessorTable;

    .line 371
    .line 372
    const-string v2, "Timestamp"

    .line 373
    .line 374
    filled-new-array {v2}, [Ljava/lang/String;

    .line 375
    .line 376
    .line 377
    move-result-object v2

    .line 378
    invoke-direct {v1, v0, v2}, Lcom/google/protobuf/GeneratedMessageV3$FieldAccessorTable;-><init>(Lcom/google/protobuf/Descriptors$Descriptor;[Ljava/lang/String;)V

    .line 379
    .line 380
    .line 381
    sput-object v1, Lcom/wufan/user/service/protobuf/MessageProto;->p:Lcom/google/protobuf/GeneratedMessageV3$FieldAccessorTable;

    .line 382
    .line 383
    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method static synthetic a()Lcom/google/protobuf/Descriptors$Descriptor;
    .locals 1

    .line 1
    sget-object v0, Lcom/wufan/user/service/protobuf/MessageProto;->a:Lcom/google/protobuf/Descriptors$Descriptor;

    .line 2
    .line 3
    return-object v0
.end method

.method static synthetic b()Lcom/google/protobuf/GeneratedMessageV3$FieldAccessorTable;
    .locals 1

    .line 1
    sget-object v0, Lcom/wufan/user/service/protobuf/MessageProto;->b:Lcom/google/protobuf/GeneratedMessageV3$FieldAccessorTable;

    .line 2
    .line 3
    return-object v0
.end method

.method static synthetic c()Lcom/google/protobuf/Descriptors$Descriptor;
    .locals 1

    .line 1
    sget-object v0, Lcom/wufan/user/service/protobuf/MessageProto;->k:Lcom/google/protobuf/Descriptors$Descriptor;

    .line 2
    .line 3
    return-object v0
.end method

.method static synthetic d()Lcom/google/protobuf/GeneratedMessageV3$FieldAccessorTable;
    .locals 1

    .line 1
    sget-object v0, Lcom/wufan/user/service/protobuf/MessageProto;->l:Lcom/google/protobuf/GeneratedMessageV3$FieldAccessorTable;

    .line 2
    .line 3
    return-object v0
.end method

.method static synthetic e()Lcom/google/protobuf/Descriptors$Descriptor;
    .locals 1

    .line 1
    sget-object v0, Lcom/wufan/user/service/protobuf/MessageProto;->m:Lcom/google/protobuf/Descriptors$Descriptor;

    .line 2
    .line 3
    return-object v0
.end method

.method static synthetic f()Lcom/google/protobuf/GeneratedMessageV3$FieldAccessorTable;
    .locals 1

    .line 1
    sget-object v0, Lcom/wufan/user/service/protobuf/MessageProto;->n:Lcom/google/protobuf/GeneratedMessageV3$FieldAccessorTable;

    .line 2
    .line 3
    return-object v0
.end method

.method static synthetic g()Lcom/google/protobuf/Descriptors$Descriptor;
    .locals 1

    .line 1
    sget-object v0, Lcom/wufan/user/service/protobuf/MessageProto;->o:Lcom/google/protobuf/Descriptors$Descriptor;

    .line 2
    .line 3
    return-object v0
.end method

.method static synthetic h()Lcom/google/protobuf/GeneratedMessageV3$FieldAccessorTable;
    .locals 1

    .line 1
    sget-object v0, Lcom/wufan/user/service/protobuf/MessageProto;->p:Lcom/google/protobuf/GeneratedMessageV3$FieldAccessorTable;

    .line 2
    .line 3
    return-object v0
.end method

.method static synthetic i(Lcom/google/protobuf/Descriptors$FileDescriptor;)Lcom/google/protobuf/Descriptors$FileDescriptor;
    .locals 0

    .line 1
    sput-object p0, Lcom/wufan/user/service/protobuf/MessageProto;->q:Lcom/google/protobuf/Descriptors$FileDescriptor;

    .line 2
    .line 3
    return-object p0
.end method

.method static synthetic j()Lcom/google/protobuf/Descriptors$Descriptor;
    .locals 1

    .line 1
    sget-object v0, Lcom/wufan/user/service/protobuf/MessageProto;->c:Lcom/google/protobuf/Descriptors$Descriptor;

    .line 2
    .line 3
    return-object v0
.end method

.method static synthetic k()Lcom/google/protobuf/GeneratedMessageV3$FieldAccessorTable;
    .locals 1

    .line 1
    sget-object v0, Lcom/wufan/user/service/protobuf/MessageProto;->d:Lcom/google/protobuf/GeneratedMessageV3$FieldAccessorTable;

    .line 2
    .line 3
    return-object v0
.end method

.method static synthetic l()Lcom/google/protobuf/Descriptors$Descriptor;
    .locals 1

    .line 1
    sget-object v0, Lcom/wufan/user/service/protobuf/MessageProto;->e:Lcom/google/protobuf/Descriptors$Descriptor;

    .line 2
    .line 3
    return-object v0
.end method

.method static synthetic m()Lcom/google/protobuf/GeneratedMessageV3$FieldAccessorTable;
    .locals 1

    .line 1
    sget-object v0, Lcom/wufan/user/service/protobuf/MessageProto;->f:Lcom/google/protobuf/GeneratedMessageV3$FieldAccessorTable;

    .line 2
    .line 3
    return-object v0
.end method

.method static synthetic n()Lcom/google/protobuf/Descriptors$Descriptor;
    .locals 1

    .line 1
    sget-object v0, Lcom/wufan/user/service/protobuf/MessageProto;->g:Lcom/google/protobuf/Descriptors$Descriptor;

    .line 2
    .line 3
    return-object v0
.end method

.method static synthetic o()Lcom/google/protobuf/GeneratedMessageV3$FieldAccessorTable;
    .locals 1

    .line 1
    sget-object v0, Lcom/wufan/user/service/protobuf/MessageProto;->h:Lcom/google/protobuf/GeneratedMessageV3$FieldAccessorTable;

    .line 2
    .line 3
    return-object v0
.end method

.method static synthetic p()Lcom/google/protobuf/Descriptors$Descriptor;
    .locals 1

    .line 1
    sget-object v0, Lcom/wufan/user/service/protobuf/MessageProto;->i:Lcom/google/protobuf/Descriptors$Descriptor;

    .line 2
    .line 3
    return-object v0
.end method

.method static synthetic q()Lcom/google/protobuf/GeneratedMessageV3$FieldAccessorTable;
    .locals 1

    .line 1
    sget-object v0, Lcom/wufan/user/service/protobuf/MessageProto;->j:Lcom/google/protobuf/GeneratedMessageV3$FieldAccessorTable;

    .line 2
    .line 3
    return-object v0
.end method

.method public static r()Lcom/google/protobuf/Descriptors$FileDescriptor;
    .locals 1

    .line 1
    sget-object v0, Lcom/wufan/user/service/protobuf/MessageProto;->q:Lcom/google/protobuf/Descriptors$FileDescriptor;

    .line 2
    .line 3
    return-object v0
.end method

.method public static s(Lcom/google/protobuf/ExtensionRegistry;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "registry"
        }
    .end annotation

    .line 1
    invoke-static {p0}, Lcom/wufan/user/service/protobuf/MessageProto;->t(Lcom/google/protobuf/ExtensionRegistryLite;)V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method public static t(Lcom/google/protobuf/ExtensionRegistryLite;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "registry"
        }
    .end annotation

    .line 1
    return-void
.end method
