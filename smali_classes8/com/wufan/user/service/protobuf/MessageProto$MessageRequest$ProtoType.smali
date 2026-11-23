.class public final enum Lcom/wufan/user/service/protobuf/MessageProto$MessageRequest$ProtoType;
.super Ljava/lang/Enum;
.source "SourceFile"

# interfaces
.implements Lcom/google/protobuf/ProtocolMessageEnum;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/wufan/user/service/protobuf/MessageProto$MessageRequest;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "ProtoType"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/wufan/user/service/protobuf/MessageProto$MessageRequest$ProtoType;",
        ">;",
        "Lcom/google/protobuf/ProtocolMessageEnum;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/wufan/user/service/protobuf/MessageProto$MessageRequest$ProtoType;

.field public static final enum CONFIRM_QUEUE_MESSAGE:Lcom/wufan/user/service/protobuf/MessageProto$MessageRequest$ProtoType;

.field public static final CONFIRM_QUEUE_MESSAGE_VALUE:I = 0x8

.field public static final enum CONFIRM_SWITCHOVER_QUEUE_MESSAGE:Lcom/wufan/user/service/protobuf/MessageProto$MessageRequest$ProtoType;

.field public static final CONFIRM_SWITCHOVER_QUEUE_MESSAGE_VALUE:I = 0xc

.field public static final enum EXIT_QUEUE_MESSAGE:Lcom/wufan/user/service/protobuf/MessageProto$MessageRequest$ProtoType;

.field public static final EXIT_QUEUE_MESSAGE_VALUE:I = 0xd

.field public static final enum JOIN_QUEUE_MESSAGE:Lcom/wufan/user/service/protobuf/MessageProto$MessageRequest$ProtoType;

.field public static final JOIN_QUEUE_MESSAGE_VALUE:I = 0x7

.field public static final enum LOGIN:Lcom/wufan/user/service/protobuf/MessageProto$MessageRequest$ProtoType;

.field public static final LOGIN_VALUE:I = 0x0

.field public static final enum NOTIFICATION_QUEUE_MESSAGE:Lcom/wufan/user/service/protobuf/MessageProto$MessageRequest$ProtoType;

.field public static final NOTIFICATION_QUEUE_MESSAGE_VALUE:I = 0x9

.field public static final enum NOTIFICATION_UPDATE_QUEUE_STATUS_MESSAGE:Lcom/wufan/user/service/protobuf/MessageProto$MessageRequest$ProtoType;

.field public static final NOTIFICATION_UPDATE_QUEUE_STATUS_MESSAGE_VALUE:I = 0xf

.field public static final enum PING:Lcom/wufan/user/service/protobuf/MessageProto$MessageRequest$ProtoType;

.field public static final PING_VALUE:I = 0x5

.field public static final enum PULL_REMOTE_USER_NOTIFICATION_MESSAGE:Lcom/wufan/user/service/protobuf/MessageProto$MessageRequest$ProtoType;

.field public static final PULL_REMOTE_USER_NOTIFICATION_MESSAGE_VALUE:I = 0x6

.field public static final enum PULL_USER_NOTIFICATION_MESSAGE:Lcom/wufan/user/service/protobuf/MessageProto$MessageRequest$ProtoType;

.field public static final PULL_USER_NOTIFICATION_MESSAGE_VALUE:I = 0x3

.field public static final enum PUSH_ALL_USER_NOTIFICATION_MESSAGE:Lcom/wufan/user/service/protobuf/MessageProto$MessageRequest$ProtoType;

.field public static final PUSH_ALL_USER_NOTIFICATION_MESSAGE_VALUE:I = 0x2

.field public static final enum PUSH_USER_NOTIFICATION_MESSAGE:Lcom/wufan/user/service/protobuf/MessageProto$MessageRequest$ProtoType;

.field public static final PUSH_USER_NOTIFICATION_MESSAGE_VALUE:I = 0x1

.field public static final enum REQUEST_QUEUE_MESSAGE:Lcom/wufan/user/service/protobuf/MessageProto$MessageRequest$ProtoType;

.field public static final REQUEST_QUEUE_MESSAGE_VALUE:I = 0xa

.field public static final enum RESOURCE_TIME_OUT:Lcom/wufan/user/service/protobuf/MessageProto$MessageRequest$ProtoType;

.field public static final RESOURCE_TIME_OUT_VALUE:I = 0xe

.field public static final enum SET_READ_STATUS:Lcom/wufan/user/service/protobuf/MessageProto$MessageRequest$ProtoType;

.field public static final SET_READ_STATUS_VALUE:I = 0x4

.field public static final enum SWITCHOVER_QUEUE_MESSAGE:Lcom/wufan/user/service/protobuf/MessageProto$MessageRequest$ProtoType;

.field public static final SWITCHOVER_QUEUE_MESSAGE_VALUE:I = 0xb

.field public static final enum UNRECOGNIZED:Lcom/wufan/user/service/protobuf/MessageProto$MessageRequest$ProtoType;

.field private static final VALUES:[Lcom/wufan/user/service/protobuf/MessageProto$MessageRequest$ProtoType;

.field private static final internalValueMap:Lcom/google/protobuf/Internal$EnumLiteMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/protobuf/Internal$EnumLiteMap<",
            "Lcom/wufan/user/service/protobuf/MessageProto$MessageRequest$ProtoType;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private final value:I


# direct methods
.method private static synthetic $values()[Lcom/wufan/user/service/protobuf/MessageProto$MessageRequest$ProtoType;
    .locals 3

    .line 1
    const/16 v0, 0x11

    .line 2
    .line 3
    new-array v0, v0, [Lcom/wufan/user/service/protobuf/MessageProto$MessageRequest$ProtoType;

    .line 4
    .line 5
    const/4 v1, 0x0

    .line 6
    sget-object v2, Lcom/wufan/user/service/protobuf/MessageProto$MessageRequest$ProtoType;->LOGIN:Lcom/wufan/user/service/protobuf/MessageProto$MessageRequest$ProtoType;

    .line 7
    .line 8
    aput-object v2, v0, v1

    .line 9
    .line 10
    const/4 v1, 0x1

    .line 11
    sget-object v2, Lcom/wufan/user/service/protobuf/MessageProto$MessageRequest$ProtoType;->PUSH_USER_NOTIFICATION_MESSAGE:Lcom/wufan/user/service/protobuf/MessageProto$MessageRequest$ProtoType;

    .line 12
    .line 13
    aput-object v2, v0, v1

    .line 14
    .line 15
    const/4 v1, 0x2

    .line 16
    sget-object v2, Lcom/wufan/user/service/protobuf/MessageProto$MessageRequest$ProtoType;->PUSH_ALL_USER_NOTIFICATION_MESSAGE:Lcom/wufan/user/service/protobuf/MessageProto$MessageRequest$ProtoType;

    .line 17
    .line 18
    aput-object v2, v0, v1

    .line 19
    .line 20
    const/4 v1, 0x3

    .line 21
    sget-object v2, Lcom/wufan/user/service/protobuf/MessageProto$MessageRequest$ProtoType;->PULL_USER_NOTIFICATION_MESSAGE:Lcom/wufan/user/service/protobuf/MessageProto$MessageRequest$ProtoType;

    .line 22
    .line 23
    aput-object v2, v0, v1

    .line 24
    .line 25
    const/4 v1, 0x4

    .line 26
    sget-object v2, Lcom/wufan/user/service/protobuf/MessageProto$MessageRequest$ProtoType;->SET_READ_STATUS:Lcom/wufan/user/service/protobuf/MessageProto$MessageRequest$ProtoType;

    .line 27
    .line 28
    aput-object v2, v0, v1

    .line 29
    .line 30
    const/4 v1, 0x5

    .line 31
    sget-object v2, Lcom/wufan/user/service/protobuf/MessageProto$MessageRequest$ProtoType;->PING:Lcom/wufan/user/service/protobuf/MessageProto$MessageRequest$ProtoType;

    .line 32
    .line 33
    aput-object v2, v0, v1

    .line 34
    .line 35
    const/4 v1, 0x6

    .line 36
    sget-object v2, Lcom/wufan/user/service/protobuf/MessageProto$MessageRequest$ProtoType;->PULL_REMOTE_USER_NOTIFICATION_MESSAGE:Lcom/wufan/user/service/protobuf/MessageProto$MessageRequest$ProtoType;

    .line 37
    .line 38
    aput-object v2, v0, v1

    .line 39
    .line 40
    const/4 v1, 0x7

    .line 41
    sget-object v2, Lcom/wufan/user/service/protobuf/MessageProto$MessageRequest$ProtoType;->JOIN_QUEUE_MESSAGE:Lcom/wufan/user/service/protobuf/MessageProto$MessageRequest$ProtoType;

    .line 42
    .line 43
    aput-object v2, v0, v1

    .line 44
    .line 45
    const/16 v1, 0x8

    .line 46
    .line 47
    sget-object v2, Lcom/wufan/user/service/protobuf/MessageProto$MessageRequest$ProtoType;->CONFIRM_QUEUE_MESSAGE:Lcom/wufan/user/service/protobuf/MessageProto$MessageRequest$ProtoType;

    .line 48
    .line 49
    aput-object v2, v0, v1

    .line 50
    .line 51
    const/16 v1, 0x9

    .line 52
    .line 53
    sget-object v2, Lcom/wufan/user/service/protobuf/MessageProto$MessageRequest$ProtoType;->NOTIFICATION_QUEUE_MESSAGE:Lcom/wufan/user/service/protobuf/MessageProto$MessageRequest$ProtoType;

    .line 54
    .line 55
    aput-object v2, v0, v1

    .line 56
    .line 57
    const/16 v1, 0xa

    .line 58
    .line 59
    sget-object v2, Lcom/wufan/user/service/protobuf/MessageProto$MessageRequest$ProtoType;->REQUEST_QUEUE_MESSAGE:Lcom/wufan/user/service/protobuf/MessageProto$MessageRequest$ProtoType;

    .line 60
    .line 61
    aput-object v2, v0, v1

    .line 62
    .line 63
    const/16 v1, 0xb

    .line 64
    .line 65
    sget-object v2, Lcom/wufan/user/service/protobuf/MessageProto$MessageRequest$ProtoType;->SWITCHOVER_QUEUE_MESSAGE:Lcom/wufan/user/service/protobuf/MessageProto$MessageRequest$ProtoType;

    .line 66
    .line 67
    aput-object v2, v0, v1

    .line 68
    .line 69
    const/16 v1, 0xc

    .line 70
    .line 71
    sget-object v2, Lcom/wufan/user/service/protobuf/MessageProto$MessageRequest$ProtoType;->CONFIRM_SWITCHOVER_QUEUE_MESSAGE:Lcom/wufan/user/service/protobuf/MessageProto$MessageRequest$ProtoType;

    .line 72
    .line 73
    aput-object v2, v0, v1

    .line 74
    .line 75
    const/16 v1, 0xd

    .line 76
    .line 77
    sget-object v2, Lcom/wufan/user/service/protobuf/MessageProto$MessageRequest$ProtoType;->EXIT_QUEUE_MESSAGE:Lcom/wufan/user/service/protobuf/MessageProto$MessageRequest$ProtoType;

    .line 78
    .line 79
    aput-object v2, v0, v1

    .line 80
    .line 81
    const/16 v1, 0xe

    .line 82
    .line 83
    sget-object v2, Lcom/wufan/user/service/protobuf/MessageProto$MessageRequest$ProtoType;->RESOURCE_TIME_OUT:Lcom/wufan/user/service/protobuf/MessageProto$MessageRequest$ProtoType;

    .line 84
    .line 85
    aput-object v2, v0, v1

    .line 86
    .line 87
    const/16 v1, 0xf

    .line 88
    .line 89
    sget-object v2, Lcom/wufan/user/service/protobuf/MessageProto$MessageRequest$ProtoType;->NOTIFICATION_UPDATE_QUEUE_STATUS_MESSAGE:Lcom/wufan/user/service/protobuf/MessageProto$MessageRequest$ProtoType;

    .line 90
    .line 91
    aput-object v2, v0, v1

    .line 92
    .line 93
    const/16 v1, 0x10

    .line 94
    .line 95
    sget-object v2, Lcom/wufan/user/service/protobuf/MessageProto$MessageRequest$ProtoType;->UNRECOGNIZED:Lcom/wufan/user/service/protobuf/MessageProto$MessageRequest$ProtoType;

    .line 96
    .line 97
    aput-object v2, v0, v1

    .line 98
    .line 99
    return-object v0
.end method

.method static constructor <clinit>()V
    .locals 4

    .line 1
    new-instance v0, Lcom/wufan/user/service/protobuf/MessageProto$MessageRequest$ProtoType;

    .line 2
    .line 3
    const-string v1, "LOGIN"

    .line 4
    .line 5
    const/4 v2, 0x0

    .line 6
    invoke-direct {v0, v1, v2, v2}, Lcom/wufan/user/service/protobuf/MessageProto$MessageRequest$ProtoType;-><init>(Ljava/lang/String;II)V

    .line 7
    .line 8
    .line 9
    sput-object v0, Lcom/wufan/user/service/protobuf/MessageProto$MessageRequest$ProtoType;->LOGIN:Lcom/wufan/user/service/protobuf/MessageProto$MessageRequest$ProtoType;

    .line 10
    .line 11
    new-instance v0, Lcom/wufan/user/service/protobuf/MessageProto$MessageRequest$ProtoType;

    .line 12
    .line 13
    const-string v1, "PUSH_USER_NOTIFICATION_MESSAGE"

    .line 14
    .line 15
    const/4 v2, 0x1

    .line 16
    invoke-direct {v0, v1, v2, v2}, Lcom/wufan/user/service/protobuf/MessageProto$MessageRequest$ProtoType;-><init>(Ljava/lang/String;II)V

    .line 17
    .line 18
    .line 19
    sput-object v0, Lcom/wufan/user/service/protobuf/MessageProto$MessageRequest$ProtoType;->PUSH_USER_NOTIFICATION_MESSAGE:Lcom/wufan/user/service/protobuf/MessageProto$MessageRequest$ProtoType;

    .line 20
    .line 21
    new-instance v0, Lcom/wufan/user/service/protobuf/MessageProto$MessageRequest$ProtoType;

    .line 22
    .line 23
    const-string v1, "PUSH_ALL_USER_NOTIFICATION_MESSAGE"

    .line 24
    .line 25
    const/4 v2, 0x2

    .line 26
    invoke-direct {v0, v1, v2, v2}, Lcom/wufan/user/service/protobuf/MessageProto$MessageRequest$ProtoType;-><init>(Ljava/lang/String;II)V

    .line 27
    .line 28
    .line 29
    sput-object v0, Lcom/wufan/user/service/protobuf/MessageProto$MessageRequest$ProtoType;->PUSH_ALL_USER_NOTIFICATION_MESSAGE:Lcom/wufan/user/service/protobuf/MessageProto$MessageRequest$ProtoType;

    .line 30
    .line 31
    new-instance v0, Lcom/wufan/user/service/protobuf/MessageProto$MessageRequest$ProtoType;

    .line 32
    .line 33
    const-string v1, "PULL_USER_NOTIFICATION_MESSAGE"

    .line 34
    .line 35
    const/4 v2, 0x3

    .line 36
    invoke-direct {v0, v1, v2, v2}, Lcom/wufan/user/service/protobuf/MessageProto$MessageRequest$ProtoType;-><init>(Ljava/lang/String;II)V

    .line 37
    .line 38
    .line 39
    sput-object v0, Lcom/wufan/user/service/protobuf/MessageProto$MessageRequest$ProtoType;->PULL_USER_NOTIFICATION_MESSAGE:Lcom/wufan/user/service/protobuf/MessageProto$MessageRequest$ProtoType;

    .line 40
    .line 41
    new-instance v0, Lcom/wufan/user/service/protobuf/MessageProto$MessageRequest$ProtoType;

    .line 42
    .line 43
    const-string v1, "SET_READ_STATUS"

    .line 44
    .line 45
    const/4 v2, 0x4

    .line 46
    invoke-direct {v0, v1, v2, v2}, Lcom/wufan/user/service/protobuf/MessageProto$MessageRequest$ProtoType;-><init>(Ljava/lang/String;II)V

    .line 47
    .line 48
    .line 49
    sput-object v0, Lcom/wufan/user/service/protobuf/MessageProto$MessageRequest$ProtoType;->SET_READ_STATUS:Lcom/wufan/user/service/protobuf/MessageProto$MessageRequest$ProtoType;

    .line 50
    .line 51
    new-instance v0, Lcom/wufan/user/service/protobuf/MessageProto$MessageRequest$ProtoType;

    .line 52
    .line 53
    const-string v1, "PING"

    .line 54
    .line 55
    const/4 v2, 0x5

    .line 56
    invoke-direct {v0, v1, v2, v2}, Lcom/wufan/user/service/protobuf/MessageProto$MessageRequest$ProtoType;-><init>(Ljava/lang/String;II)V

    .line 57
    .line 58
    .line 59
    sput-object v0, Lcom/wufan/user/service/protobuf/MessageProto$MessageRequest$ProtoType;->PING:Lcom/wufan/user/service/protobuf/MessageProto$MessageRequest$ProtoType;

    .line 60
    .line 61
    new-instance v0, Lcom/wufan/user/service/protobuf/MessageProto$MessageRequest$ProtoType;

    .line 62
    .line 63
    const-string v1, "PULL_REMOTE_USER_NOTIFICATION_MESSAGE"

    .line 64
    .line 65
    const/4 v2, 0x6

    .line 66
    invoke-direct {v0, v1, v2, v2}, Lcom/wufan/user/service/protobuf/MessageProto$MessageRequest$ProtoType;-><init>(Ljava/lang/String;II)V

    .line 67
    .line 68
    .line 69
    sput-object v0, Lcom/wufan/user/service/protobuf/MessageProto$MessageRequest$ProtoType;->PULL_REMOTE_USER_NOTIFICATION_MESSAGE:Lcom/wufan/user/service/protobuf/MessageProto$MessageRequest$ProtoType;

    .line 70
    .line 71
    new-instance v0, Lcom/wufan/user/service/protobuf/MessageProto$MessageRequest$ProtoType;

    .line 72
    .line 73
    const-string v1, "JOIN_QUEUE_MESSAGE"

    .line 74
    .line 75
    const/4 v2, 0x7

    .line 76
    invoke-direct {v0, v1, v2, v2}, Lcom/wufan/user/service/protobuf/MessageProto$MessageRequest$ProtoType;-><init>(Ljava/lang/String;II)V

    .line 77
    .line 78
    .line 79
    sput-object v0, Lcom/wufan/user/service/protobuf/MessageProto$MessageRequest$ProtoType;->JOIN_QUEUE_MESSAGE:Lcom/wufan/user/service/protobuf/MessageProto$MessageRequest$ProtoType;

    .line 80
    .line 81
    new-instance v0, Lcom/wufan/user/service/protobuf/MessageProto$MessageRequest$ProtoType;

    .line 82
    .line 83
    const-string v1, "CONFIRM_QUEUE_MESSAGE"

    .line 84
    .line 85
    const/16 v2, 0x8

    .line 86
    .line 87
    invoke-direct {v0, v1, v2, v2}, Lcom/wufan/user/service/protobuf/MessageProto$MessageRequest$ProtoType;-><init>(Ljava/lang/String;II)V

    .line 88
    .line 89
    .line 90
    sput-object v0, Lcom/wufan/user/service/protobuf/MessageProto$MessageRequest$ProtoType;->CONFIRM_QUEUE_MESSAGE:Lcom/wufan/user/service/protobuf/MessageProto$MessageRequest$ProtoType;

    .line 91
    .line 92
    new-instance v0, Lcom/wufan/user/service/protobuf/MessageProto$MessageRequest$ProtoType;

    .line 93
    .line 94
    const-string v1, "NOTIFICATION_QUEUE_MESSAGE"

    .line 95
    .line 96
    const/16 v2, 0x9

    .line 97
    .line 98
    invoke-direct {v0, v1, v2, v2}, Lcom/wufan/user/service/protobuf/MessageProto$MessageRequest$ProtoType;-><init>(Ljava/lang/String;II)V

    .line 99
    .line 100
    .line 101
    sput-object v0, Lcom/wufan/user/service/protobuf/MessageProto$MessageRequest$ProtoType;->NOTIFICATION_QUEUE_MESSAGE:Lcom/wufan/user/service/protobuf/MessageProto$MessageRequest$ProtoType;

    .line 102
    .line 103
    new-instance v0, Lcom/wufan/user/service/protobuf/MessageProto$MessageRequest$ProtoType;

    .line 104
    .line 105
    const-string v1, "REQUEST_QUEUE_MESSAGE"

    .line 106
    .line 107
    const/16 v2, 0xa

    .line 108
    .line 109
    invoke-direct {v0, v1, v2, v2}, Lcom/wufan/user/service/protobuf/MessageProto$MessageRequest$ProtoType;-><init>(Ljava/lang/String;II)V

    .line 110
    .line 111
    .line 112
    sput-object v0, Lcom/wufan/user/service/protobuf/MessageProto$MessageRequest$ProtoType;->REQUEST_QUEUE_MESSAGE:Lcom/wufan/user/service/protobuf/MessageProto$MessageRequest$ProtoType;

    .line 113
    .line 114
    new-instance v0, Lcom/wufan/user/service/protobuf/MessageProto$MessageRequest$ProtoType;

    .line 115
    .line 116
    const-string v1, "SWITCHOVER_QUEUE_MESSAGE"

    .line 117
    .line 118
    const/16 v2, 0xb

    .line 119
    .line 120
    invoke-direct {v0, v1, v2, v2}, Lcom/wufan/user/service/protobuf/MessageProto$MessageRequest$ProtoType;-><init>(Ljava/lang/String;II)V

    .line 121
    .line 122
    .line 123
    sput-object v0, Lcom/wufan/user/service/protobuf/MessageProto$MessageRequest$ProtoType;->SWITCHOVER_QUEUE_MESSAGE:Lcom/wufan/user/service/protobuf/MessageProto$MessageRequest$ProtoType;

    .line 124
    .line 125
    new-instance v0, Lcom/wufan/user/service/protobuf/MessageProto$MessageRequest$ProtoType;

    .line 126
    .line 127
    const-string v1, "CONFIRM_SWITCHOVER_QUEUE_MESSAGE"

    .line 128
    .line 129
    const/16 v2, 0xc

    .line 130
    .line 131
    invoke-direct {v0, v1, v2, v2}, Lcom/wufan/user/service/protobuf/MessageProto$MessageRequest$ProtoType;-><init>(Ljava/lang/String;II)V

    .line 132
    .line 133
    .line 134
    sput-object v0, Lcom/wufan/user/service/protobuf/MessageProto$MessageRequest$ProtoType;->CONFIRM_SWITCHOVER_QUEUE_MESSAGE:Lcom/wufan/user/service/protobuf/MessageProto$MessageRequest$ProtoType;

    .line 135
    .line 136
    new-instance v0, Lcom/wufan/user/service/protobuf/MessageProto$MessageRequest$ProtoType;

    .line 137
    .line 138
    const-string v1, "EXIT_QUEUE_MESSAGE"

    .line 139
    .line 140
    const/16 v2, 0xd

    .line 141
    .line 142
    invoke-direct {v0, v1, v2, v2}, Lcom/wufan/user/service/protobuf/MessageProto$MessageRequest$ProtoType;-><init>(Ljava/lang/String;II)V

    .line 143
    .line 144
    .line 145
    sput-object v0, Lcom/wufan/user/service/protobuf/MessageProto$MessageRequest$ProtoType;->EXIT_QUEUE_MESSAGE:Lcom/wufan/user/service/protobuf/MessageProto$MessageRequest$ProtoType;

    .line 146
    .line 147
    new-instance v0, Lcom/wufan/user/service/protobuf/MessageProto$MessageRequest$ProtoType;

    .line 148
    .line 149
    const-string v1, "RESOURCE_TIME_OUT"

    .line 150
    .line 151
    const/16 v2, 0xe

    .line 152
    .line 153
    invoke-direct {v0, v1, v2, v2}, Lcom/wufan/user/service/protobuf/MessageProto$MessageRequest$ProtoType;-><init>(Ljava/lang/String;II)V

    .line 154
    .line 155
    .line 156
    sput-object v0, Lcom/wufan/user/service/protobuf/MessageProto$MessageRequest$ProtoType;->RESOURCE_TIME_OUT:Lcom/wufan/user/service/protobuf/MessageProto$MessageRequest$ProtoType;

    .line 157
    .line 158
    new-instance v0, Lcom/wufan/user/service/protobuf/MessageProto$MessageRequest$ProtoType;

    .line 159
    .line 160
    const-string v1, "NOTIFICATION_UPDATE_QUEUE_STATUS_MESSAGE"

    .line 161
    .line 162
    const/16 v2, 0xf

    .line 163
    .line 164
    invoke-direct {v0, v1, v2, v2}, Lcom/wufan/user/service/protobuf/MessageProto$MessageRequest$ProtoType;-><init>(Ljava/lang/String;II)V

    .line 165
    .line 166
    .line 167
    sput-object v0, Lcom/wufan/user/service/protobuf/MessageProto$MessageRequest$ProtoType;->NOTIFICATION_UPDATE_QUEUE_STATUS_MESSAGE:Lcom/wufan/user/service/protobuf/MessageProto$MessageRequest$ProtoType;

    .line 168
    .line 169
    new-instance v0, Lcom/wufan/user/service/protobuf/MessageProto$MessageRequest$ProtoType;

    .line 170
    .line 171
    const/16 v1, 0x10

    .line 172
    .line 173
    const/4 v2, -0x1

    .line 174
    const-string v3, "UNRECOGNIZED"

    .line 175
    .line 176
    invoke-direct {v0, v3, v1, v2}, Lcom/wufan/user/service/protobuf/MessageProto$MessageRequest$ProtoType;-><init>(Ljava/lang/String;II)V

    .line 177
    .line 178
    .line 179
    sput-object v0, Lcom/wufan/user/service/protobuf/MessageProto$MessageRequest$ProtoType;->UNRECOGNIZED:Lcom/wufan/user/service/protobuf/MessageProto$MessageRequest$ProtoType;

    .line 180
    .line 181
    invoke-static {}, Lcom/wufan/user/service/protobuf/MessageProto$MessageRequest$ProtoType;->$values()[Lcom/wufan/user/service/protobuf/MessageProto$MessageRequest$ProtoType;

    .line 182
    .line 183
    .line 184
    move-result-object v0

    .line 185
    sput-object v0, Lcom/wufan/user/service/protobuf/MessageProto$MessageRequest$ProtoType;->$VALUES:[Lcom/wufan/user/service/protobuf/MessageProto$MessageRequest$ProtoType;

    .line 186
    .line 187
    new-instance v0, Lcom/wufan/user/service/protobuf/MessageProto$MessageRequest$ProtoType$a;

    .line 188
    .line 189
    invoke-direct {v0}, Lcom/wufan/user/service/protobuf/MessageProto$MessageRequest$ProtoType$a;-><init>()V

    .line 190
    .line 191
    .line 192
    sput-object v0, Lcom/wufan/user/service/protobuf/MessageProto$MessageRequest$ProtoType;->internalValueMap:Lcom/google/protobuf/Internal$EnumLiteMap;

    .line 193
    .line 194
    invoke-static {}, Lcom/wufan/user/service/protobuf/MessageProto$MessageRequest$ProtoType;->values()[Lcom/wufan/user/service/protobuf/MessageProto$MessageRequest$ProtoType;

    .line 195
    .line 196
    .line 197
    move-result-object v0

    .line 198
    sput-object v0, Lcom/wufan/user/service/protobuf/MessageProto$MessageRequest$ProtoType;->VALUES:[Lcom/wufan/user/service/protobuf/MessageProto$MessageRequest$ProtoType;

    .line 199
    .line 200
    return-void
.end method

.method private constructor <init>(Ljava/lang/String;II)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1000,
            0x1000,
            0x0
        }
        names = {
            "$enum$name",
            "$enum$ordinal",
            "value"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)V"
        }
    .end annotation

    .line 1
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 2
    .line 3
    .line 4
    iput p3, p0, Lcom/wufan/user/service/protobuf/MessageProto$MessageRequest$ProtoType;->value:I

    .line 5
    .line 6
    return-void
.end method

.method public static forNumber(I)Lcom/wufan/user/service/protobuf/MessageProto$MessageRequest$ProtoType;
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "value"
        }
    .end annotation

    .line 1
    packed-switch p0, :pswitch_data_0

    .line 2
    .line 3
    .line 4
    const/4 p0, 0x0

    .line 5
    return-object p0

    .line 6
    :pswitch_0
    sget-object p0, Lcom/wufan/user/service/protobuf/MessageProto$MessageRequest$ProtoType;->NOTIFICATION_UPDATE_QUEUE_STATUS_MESSAGE:Lcom/wufan/user/service/protobuf/MessageProto$MessageRequest$ProtoType;

    .line 7
    .line 8
    return-object p0

    .line 9
    :pswitch_1
    sget-object p0, Lcom/wufan/user/service/protobuf/MessageProto$MessageRequest$ProtoType;->RESOURCE_TIME_OUT:Lcom/wufan/user/service/protobuf/MessageProto$MessageRequest$ProtoType;

    .line 10
    .line 11
    return-object p0

    .line 12
    :pswitch_2
    sget-object p0, Lcom/wufan/user/service/protobuf/MessageProto$MessageRequest$ProtoType;->EXIT_QUEUE_MESSAGE:Lcom/wufan/user/service/protobuf/MessageProto$MessageRequest$ProtoType;

    .line 13
    .line 14
    return-object p0

    .line 15
    :pswitch_3
    sget-object p0, Lcom/wufan/user/service/protobuf/MessageProto$MessageRequest$ProtoType;->CONFIRM_SWITCHOVER_QUEUE_MESSAGE:Lcom/wufan/user/service/protobuf/MessageProto$MessageRequest$ProtoType;

    .line 16
    .line 17
    return-object p0

    .line 18
    :pswitch_4
    sget-object p0, Lcom/wufan/user/service/protobuf/MessageProto$MessageRequest$ProtoType;->SWITCHOVER_QUEUE_MESSAGE:Lcom/wufan/user/service/protobuf/MessageProto$MessageRequest$ProtoType;

    .line 19
    .line 20
    return-object p0

    .line 21
    :pswitch_5
    sget-object p0, Lcom/wufan/user/service/protobuf/MessageProto$MessageRequest$ProtoType;->REQUEST_QUEUE_MESSAGE:Lcom/wufan/user/service/protobuf/MessageProto$MessageRequest$ProtoType;

    .line 22
    .line 23
    return-object p0

    .line 24
    :pswitch_6
    sget-object p0, Lcom/wufan/user/service/protobuf/MessageProto$MessageRequest$ProtoType;->NOTIFICATION_QUEUE_MESSAGE:Lcom/wufan/user/service/protobuf/MessageProto$MessageRequest$ProtoType;

    .line 25
    .line 26
    return-object p0

    .line 27
    :pswitch_7
    sget-object p0, Lcom/wufan/user/service/protobuf/MessageProto$MessageRequest$ProtoType;->CONFIRM_QUEUE_MESSAGE:Lcom/wufan/user/service/protobuf/MessageProto$MessageRequest$ProtoType;

    .line 28
    .line 29
    return-object p0

    .line 30
    :pswitch_8
    sget-object p0, Lcom/wufan/user/service/protobuf/MessageProto$MessageRequest$ProtoType;->JOIN_QUEUE_MESSAGE:Lcom/wufan/user/service/protobuf/MessageProto$MessageRequest$ProtoType;

    .line 31
    .line 32
    return-object p0

    .line 33
    :pswitch_9
    sget-object p0, Lcom/wufan/user/service/protobuf/MessageProto$MessageRequest$ProtoType;->PULL_REMOTE_USER_NOTIFICATION_MESSAGE:Lcom/wufan/user/service/protobuf/MessageProto$MessageRequest$ProtoType;

    .line 34
    .line 35
    return-object p0

    .line 36
    :pswitch_a
    sget-object p0, Lcom/wufan/user/service/protobuf/MessageProto$MessageRequest$ProtoType;->PING:Lcom/wufan/user/service/protobuf/MessageProto$MessageRequest$ProtoType;

    .line 37
    .line 38
    return-object p0

    .line 39
    :pswitch_b
    sget-object p0, Lcom/wufan/user/service/protobuf/MessageProto$MessageRequest$ProtoType;->SET_READ_STATUS:Lcom/wufan/user/service/protobuf/MessageProto$MessageRequest$ProtoType;

    .line 40
    .line 41
    return-object p0

    .line 42
    :pswitch_c
    sget-object p0, Lcom/wufan/user/service/protobuf/MessageProto$MessageRequest$ProtoType;->PULL_USER_NOTIFICATION_MESSAGE:Lcom/wufan/user/service/protobuf/MessageProto$MessageRequest$ProtoType;

    .line 43
    .line 44
    return-object p0

    .line 45
    :pswitch_d
    sget-object p0, Lcom/wufan/user/service/protobuf/MessageProto$MessageRequest$ProtoType;->PUSH_ALL_USER_NOTIFICATION_MESSAGE:Lcom/wufan/user/service/protobuf/MessageProto$MessageRequest$ProtoType;

    .line 46
    .line 47
    return-object p0

    .line 48
    :pswitch_e
    sget-object p0, Lcom/wufan/user/service/protobuf/MessageProto$MessageRequest$ProtoType;->PUSH_USER_NOTIFICATION_MESSAGE:Lcom/wufan/user/service/protobuf/MessageProto$MessageRequest$ProtoType;

    .line 49
    .line 50
    return-object p0

    .line 51
    :pswitch_f
    sget-object p0, Lcom/wufan/user/service/protobuf/MessageProto$MessageRequest$ProtoType;->LOGIN:Lcom/wufan/user/service/protobuf/MessageProto$MessageRequest$ProtoType;

    .line 52
    .line 53
    return-object p0

    .line 54
    nop

    .line 55
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_f
        :pswitch_e
        :pswitch_d
        :pswitch_c
        :pswitch_b
        :pswitch_a
        :pswitch_9
        :pswitch_8
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public static final getDescriptor()Lcom/google/protobuf/Descriptors$EnumDescriptor;
    .locals 2

    .line 1
    invoke-static {}, Lcom/wufan/user/service/protobuf/MessageProto$MessageRequest;->getDescriptor()Lcom/google/protobuf/Descriptors$Descriptor;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    invoke-virtual {v0}, Lcom/google/protobuf/Descriptors$Descriptor;->getEnumTypes()Ljava/util/List;

    .line 6
    .line 7
    .line 8
    move-result-object v0

    .line 9
    const/4 v1, 0x0

    .line 10
    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 11
    .line 12
    .line 13
    move-result-object v0

    .line 14
    check-cast v0, Lcom/google/protobuf/Descriptors$EnumDescriptor;

    .line 15
    .line 16
    return-object v0
.end method

.method public static internalGetValueMap()Lcom/google/protobuf/Internal$EnumLiteMap;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/google/protobuf/Internal$EnumLiteMap<",
            "Lcom/wufan/user/service/protobuf/MessageProto$MessageRequest$ProtoType;",
            ">;"
        }
    .end annotation

    .line 1
    sget-object v0, Lcom/wufan/user/service/protobuf/MessageProto$MessageRequest$ProtoType;->internalValueMap:Lcom/google/protobuf/Internal$EnumLiteMap;

    .line 2
    .line 3
    return-object v0
.end method

.method public static valueOf(I)Lcom/wufan/user/service/protobuf/MessageProto$MessageRequest$ProtoType;
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "value"
        }
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 2
    invoke-static {p0}, Lcom/wufan/user/service/protobuf/MessageProto$MessageRequest$ProtoType;->forNumber(I)Lcom/wufan/user/service/protobuf/MessageProto$MessageRequest$ProtoType;

    move-result-object p0

    return-object p0
.end method

.method public static valueOf(Lcom/google/protobuf/Descriptors$EnumValueDescriptor;)Lcom/wufan/user/service/protobuf/MessageProto$MessageRequest$ProtoType;
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "desc"
        }
    .end annotation

    .line 3
    invoke-virtual {p0}, Lcom/google/protobuf/Descriptors$EnumValueDescriptor;->getType()Lcom/google/protobuf/Descriptors$EnumDescriptor;

    move-result-object v0

    invoke-static {}, Lcom/wufan/user/service/protobuf/MessageProto$MessageRequest$ProtoType;->getDescriptor()Lcom/google/protobuf/Descriptors$EnumDescriptor;

    move-result-object v1

    if-ne v0, v1, :cond_1

    .line 4
    invoke-virtual {p0}, Lcom/google/protobuf/Descriptors$EnumValueDescriptor;->getIndex()I

    move-result v0

    const/4 v1, -0x1

    if-ne v0, v1, :cond_0

    .line 5
    sget-object p0, Lcom/wufan/user/service/protobuf/MessageProto$MessageRequest$ProtoType;->UNRECOGNIZED:Lcom/wufan/user/service/protobuf/MessageProto$MessageRequest$ProtoType;

    return-object p0

    .line 6
    :cond_0
    sget-object v0, Lcom/wufan/user/service/protobuf/MessageProto$MessageRequest$ProtoType;->VALUES:[Lcom/wufan/user/service/protobuf/MessageProto$MessageRequest$ProtoType;

    invoke-virtual {p0}, Lcom/google/protobuf/Descriptors$EnumValueDescriptor;->getIndex()I

    move-result p0

    aget-object p0, v0, p0

    return-object p0

    .line 7
    :cond_1
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string v0, "EnumValueDescriptor is not for this type."

    invoke-direct {p0, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/wufan/user/service/protobuf/MessageProto$MessageRequest$ProtoType;
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8000
        }
        names = {
            "name"
        }
    .end annotation

    .line 1
    const-class v0, Lcom/wufan/user/service/protobuf/MessageProto$MessageRequest$ProtoType;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/wufan/user/service/protobuf/MessageProto$MessageRequest$ProtoType;

    return-object p0
.end method

.method public static values()[Lcom/wufan/user/service/protobuf/MessageProto$MessageRequest$ProtoType;
    .locals 1

    .line 1
    sget-object v0, Lcom/wufan/user/service/protobuf/MessageProto$MessageRequest$ProtoType;->$VALUES:[Lcom/wufan/user/service/protobuf/MessageProto$MessageRequest$ProtoType;

    .line 2
    .line 3
    invoke-virtual {v0}, [Lcom/wufan/user/service/protobuf/MessageProto$MessageRequest$ProtoType;->clone()Ljava/lang/Object;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    check-cast v0, [Lcom/wufan/user/service/protobuf/MessageProto$MessageRequest$ProtoType;

    .line 8
    .line 9
    return-object v0
.end method


# virtual methods
.method public final getDescriptorForType()Lcom/google/protobuf/Descriptors$EnumDescriptor;
    .locals 1

    .line 1
    invoke-static {}, Lcom/wufan/user/service/protobuf/MessageProto$MessageRequest$ProtoType;->getDescriptor()Lcom/google/protobuf/Descriptors$EnumDescriptor;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    return-object v0
.end method

.method public final getNumber()I
    .locals 2

    .line 1
    sget-object v0, Lcom/wufan/user/service/protobuf/MessageProto$MessageRequest$ProtoType;->UNRECOGNIZED:Lcom/wufan/user/service/protobuf/MessageProto$MessageRequest$ProtoType;

    .line 2
    .line 3
    if-eq p0, v0, :cond_0

    .line 4
    .line 5
    iget v0, p0, Lcom/wufan/user/service/protobuf/MessageProto$MessageRequest$ProtoType;->value:I

    .line 6
    .line 7
    return v0

    .line 8
    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    .line 9
    .line 10
    const-string v1, "Can\'t get the number of an unknown enum value."

    .line 11
    .line 12
    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .line 13
    .line 14
    .line 15
    throw v0
.end method

.method public final getValueDescriptor()Lcom/google/protobuf/Descriptors$EnumValueDescriptor;
    .locals 2

    .line 1
    invoke-static {}, Lcom/wufan/user/service/protobuf/MessageProto$MessageRequest$ProtoType;->getDescriptor()Lcom/google/protobuf/Descriptors$EnumDescriptor;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    invoke-virtual {v0}, Lcom/google/protobuf/Descriptors$EnumDescriptor;->getValues()Ljava/util/List;

    .line 6
    .line 7
    .line 8
    move-result-object v0

    .line 9
    invoke-virtual {p0}, Ljava/lang/Enum;->ordinal()I

    .line 10
    .line 11
    .line 12
    move-result v1

    .line 13
    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 14
    .line 15
    .line 16
    move-result-object v0

    .line 17
    check-cast v0, Lcom/google/protobuf/Descriptors$EnumValueDescriptor;

    .line 18
    .line 19
    return-object v0
.end method
