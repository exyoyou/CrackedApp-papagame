.class public final Lcom/wufan/user/service/protobuf/MessageCloudGamingServerListResponse;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/wufan/user/service/protobuf/MessageCloudGamingServerListResponse$LineList;,
        Lcom/wufan/user/service/protobuf/MessageCloudGamingServerListResponse$b;,
        Lcom/wufan/user/service/protobuf/MessageCloudGamingServerListResponse$ServerInfo;,
        Lcom/wufan/user/service/protobuf/MessageCloudGamingServerListResponse$d;,
        Lcom/wufan/user/service/protobuf/MessageCloudGamingServerListResponse$MessageCloudGamingServerListResponseResult;,
        Lcom/wufan/user/service/protobuf/MessageCloudGamingServerListResponse$c;
    }
.end annotation


# static fields
.field private static final a:Lcom/google/protobuf/Descriptors$Descriptor;

.field private static final b:Lcom/google/protobuf/GeneratedMessageV3$FieldAccessorTable;

.field private static final c:Lcom/google/protobuf/Descriptors$Descriptor;

.field private static final d:Lcom/google/protobuf/GeneratedMessageV3$FieldAccessorTable;

.field private static final e:Lcom/google/protobuf/Descriptors$Descriptor;

.field private static final f:Lcom/google/protobuf/GeneratedMessageV3$FieldAccessorTable;

.field private static g:Lcom/google/protobuf/Descriptors$FileDescriptor;


# direct methods
.method static constructor <clinit>()V
    .locals 11

    .line 1
    const-string v0, "\n\'cloud_gaming_server_list_response.proto\u001a\u001denumeration/enumeration.proto\"l\n*MessageCloudGamingServerListResponseResult\u0012\r\n\u0005error\u0018\u0001 \u0001(\u0005\u0012\u001d\n\u0008dataInfo\u0018\u0002 \u0001(\u000b2\u000b.ServerInfo\u0012\u0010\n\u0008errorMsg\u0018\u0003 \u0001(\t\"N\n\nServerInfo\u0012\u000e\n\u0006gameId\u0018\u0001 \u0001(\u0003\u0012\u0013\n\u000bpackageName\u0018\u0002 \u0001(\t\u0012\u001b\n\u0008listInfo\u0018\u0003 \u0003(\u000b2\t.LineList\"\u00da\u0001\n\u0008LineList\u0012\u0015\n\rserverLineNum\u0018\u0001 \u0001(\t\u0012\u0012\n\nserverName\u0018\u0002 \u0001(\t\u0012\u0017\n\u000fcurrentHsnTotal\u0018\u0003 \u0001(\u0005\u0012\u001a\n\u0012currentInServerNum\u0018\u0004 \u0001(\u0005\u0012\r\n\u0005isVip\u0018\u0005 \u0001(\u0008\u0012\'\n\u0005state\u0018\u0006 \u0001(\u000e2\u0018.enumeration.ServerState\u0012\t\n\u0001k\u0018\u0007 \u0001(\t\u0012\u001a\n\u0012videoCodeRateTitle\u0018\u0008 \u0001(\t\u0012\u000f\n\u0007timeOut\u0018\t \u0001(\u0005BG\n\u001fcom.wufan.user.service.protobufB$MessageCloudGamingServerListResponseb\u0006proto3"

    .line 2
    .line 3
    filled-new-array {v0}, [Ljava/lang/String;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    new-instance v1, Lcom/wufan/user/service/protobuf/MessageCloudGamingServerListResponse$a;

    .line 8
    .line 9
    invoke-direct {v1}, Lcom/wufan/user/service/protobuf/MessageCloudGamingServerListResponse$a;-><init>()V

    .line 10
    .line 11
    .line 12
    const/4 v2, 0x1

    .line 13
    new-array v3, v2, [Lcom/google/protobuf/Descriptors$FileDescriptor;

    .line 14
    .line 15
    invoke-static {}, Lcom/wufan/user/service/protobuf/enumeration/a;->b()Lcom/google/protobuf/Descriptors$FileDescriptor;

    .line 16
    .line 17
    .line 18
    move-result-object v4

    .line 19
    const/4 v5, 0x0

    .line 20
    aput-object v4, v3, v5

    .line 21
    .line 22
    invoke-static {v0, v3, v1}, Lcom/google/protobuf/Descriptors$FileDescriptor;->internalBuildGeneratedFileFrom([Ljava/lang/String;[Lcom/google/protobuf/Descriptors$FileDescriptor;Lcom/google/protobuf/Descriptors$FileDescriptor$InternalDescriptorAssigner;)V

    .line 23
    .line 24
    .line 25
    invoke-static {}, Lcom/wufan/user/service/protobuf/MessageCloudGamingServerListResponse;->h()Lcom/google/protobuf/Descriptors$FileDescriptor;

    .line 26
    .line 27
    .line 28
    move-result-object v0

    .line 29
    invoke-virtual {v0}, Lcom/google/protobuf/Descriptors$FileDescriptor;->getMessageTypes()Ljava/util/List;

    .line 30
    .line 31
    .line 32
    move-result-object v0

    .line 33
    invoke-interface {v0, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 34
    .line 35
    .line 36
    move-result-object v0

    .line 37
    check-cast v0, Lcom/google/protobuf/Descriptors$Descriptor;

    .line 38
    .line 39
    sput-object v0, Lcom/wufan/user/service/protobuf/MessageCloudGamingServerListResponse;->a:Lcom/google/protobuf/Descriptors$Descriptor;

    .line 40
    .line 41
    new-instance v1, Lcom/google/protobuf/GeneratedMessageV3$FieldAccessorTable;

    .line 42
    .line 43
    const-string v3, "DataInfo"

    .line 44
    .line 45
    const-string v4, "ErrorMsg"

    .line 46
    .line 47
    const-string v5, "Error"

    .line 48
    .line 49
    filled-new-array {v5, v3, v4}, [Ljava/lang/String;

    .line 50
    .line 51
    .line 52
    move-result-object v3

    .line 53
    invoke-direct {v1, v0, v3}, Lcom/google/protobuf/GeneratedMessageV3$FieldAccessorTable;-><init>(Lcom/google/protobuf/Descriptors$Descriptor;[Ljava/lang/String;)V

    .line 54
    .line 55
    .line 56
    sput-object v1, Lcom/wufan/user/service/protobuf/MessageCloudGamingServerListResponse;->b:Lcom/google/protobuf/GeneratedMessageV3$FieldAccessorTable;

    .line 57
    .line 58
    invoke-static {}, Lcom/wufan/user/service/protobuf/MessageCloudGamingServerListResponse;->h()Lcom/google/protobuf/Descriptors$FileDescriptor;

    .line 59
    .line 60
    .line 61
    move-result-object v0

    .line 62
    invoke-virtual {v0}, Lcom/google/protobuf/Descriptors$FileDescriptor;->getMessageTypes()Ljava/util/List;

    .line 63
    .line 64
    .line 65
    move-result-object v0

    .line 66
    invoke-interface {v0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 67
    .line 68
    .line 69
    move-result-object v0

    .line 70
    check-cast v0, Lcom/google/protobuf/Descriptors$Descriptor;

    .line 71
    .line 72
    sput-object v0, Lcom/wufan/user/service/protobuf/MessageCloudGamingServerListResponse;->c:Lcom/google/protobuf/Descriptors$Descriptor;

    .line 73
    .line 74
    new-instance v1, Lcom/google/protobuf/GeneratedMessageV3$FieldAccessorTable;

    .line 75
    .line 76
    const-string v2, "PackageName"

    .line 77
    .line 78
    const-string v3, "ListInfo"

    .line 79
    .line 80
    const-string v4, "GameId"

    .line 81
    .line 82
    filled-new-array {v4, v2, v3}, [Ljava/lang/String;

    .line 83
    .line 84
    .line 85
    move-result-object v2

    .line 86
    invoke-direct {v1, v0, v2}, Lcom/google/protobuf/GeneratedMessageV3$FieldAccessorTable;-><init>(Lcom/google/protobuf/Descriptors$Descriptor;[Ljava/lang/String;)V

    .line 87
    .line 88
    .line 89
    sput-object v1, Lcom/wufan/user/service/protobuf/MessageCloudGamingServerListResponse;->d:Lcom/google/protobuf/GeneratedMessageV3$FieldAccessorTable;

    .line 90
    .line 91
    invoke-static {}, Lcom/wufan/user/service/protobuf/MessageCloudGamingServerListResponse;->h()Lcom/google/protobuf/Descriptors$FileDescriptor;

    .line 92
    .line 93
    .line 94
    move-result-object v0

    .line 95
    invoke-virtual {v0}, Lcom/google/protobuf/Descriptors$FileDescriptor;->getMessageTypes()Ljava/util/List;

    .line 96
    .line 97
    .line 98
    move-result-object v0

    .line 99
    const/4 v1, 0x2

    .line 100
    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 101
    .line 102
    .line 103
    move-result-object v0

    .line 104
    check-cast v0, Lcom/google/protobuf/Descriptors$Descriptor;

    .line 105
    .line 106
    sput-object v0, Lcom/wufan/user/service/protobuf/MessageCloudGamingServerListResponse;->e:Lcom/google/protobuf/Descriptors$Descriptor;

    .line 107
    .line 108
    new-instance v1, Lcom/google/protobuf/GeneratedMessageV3$FieldAccessorTable;

    .line 109
    .line 110
    const-string v2, "ServerLineNum"

    .line 111
    .line 112
    const-string v3, "ServerName"

    .line 113
    .line 114
    const-string v4, "CurrentHsnTotal"

    .line 115
    .line 116
    const-string v5, "CurrentInServerNum"

    .line 117
    .line 118
    const-string v6, "IsVip"

    .line 119
    .line 120
    const-string v7, "State"

    .line 121
    .line 122
    const-string v8, "K"

    .line 123
    .line 124
    const-string v9, "VideoCodeRateTitle"

    .line 125
    .line 126
    const-string v10, "TimeOut"

    .line 127
    .line 128
    filled-new-array/range {v2 .. v10}, [Ljava/lang/String;

    .line 129
    .line 130
    .line 131
    move-result-object v2

    .line 132
    invoke-direct {v1, v0, v2}, Lcom/google/protobuf/GeneratedMessageV3$FieldAccessorTable;-><init>(Lcom/google/protobuf/Descriptors$Descriptor;[Ljava/lang/String;)V

    .line 133
    .line 134
    .line 135
    sput-object v1, Lcom/wufan/user/service/protobuf/MessageCloudGamingServerListResponse;->f:Lcom/google/protobuf/GeneratedMessageV3$FieldAccessorTable;

    .line 136
    .line 137
    invoke-static {}, Lcom/wufan/user/service/protobuf/enumeration/a;->b()Lcom/google/protobuf/Descriptors$FileDescriptor;

    .line 138
    .line 139
    .line 140
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
    sget-object v0, Lcom/wufan/user/service/protobuf/MessageCloudGamingServerListResponse;->a:Lcom/google/protobuf/Descriptors$Descriptor;

    .line 2
    .line 3
    return-object v0
.end method

.method static synthetic b()Lcom/google/protobuf/GeneratedMessageV3$FieldAccessorTable;
    .locals 1

    .line 1
    sget-object v0, Lcom/wufan/user/service/protobuf/MessageCloudGamingServerListResponse;->b:Lcom/google/protobuf/GeneratedMessageV3$FieldAccessorTable;

    .line 2
    .line 3
    return-object v0
.end method

.method static synthetic c()Lcom/google/protobuf/Descriptors$Descriptor;
    .locals 1

    .line 1
    sget-object v0, Lcom/wufan/user/service/protobuf/MessageCloudGamingServerListResponse;->c:Lcom/google/protobuf/Descriptors$Descriptor;

    .line 2
    .line 3
    return-object v0
.end method

.method static synthetic d()Lcom/google/protobuf/GeneratedMessageV3$FieldAccessorTable;
    .locals 1

    .line 1
    sget-object v0, Lcom/wufan/user/service/protobuf/MessageCloudGamingServerListResponse;->d:Lcom/google/protobuf/GeneratedMessageV3$FieldAccessorTable;

    .line 2
    .line 3
    return-object v0
.end method

.method static synthetic e()Lcom/google/protobuf/Descriptors$Descriptor;
    .locals 1

    .line 1
    sget-object v0, Lcom/wufan/user/service/protobuf/MessageCloudGamingServerListResponse;->e:Lcom/google/protobuf/Descriptors$Descriptor;

    .line 2
    .line 3
    return-object v0
.end method

.method static synthetic f()Lcom/google/protobuf/GeneratedMessageV3$FieldAccessorTable;
    .locals 1

    .line 1
    sget-object v0, Lcom/wufan/user/service/protobuf/MessageCloudGamingServerListResponse;->f:Lcom/google/protobuf/GeneratedMessageV3$FieldAccessorTable;

    .line 2
    .line 3
    return-object v0
.end method

.method static synthetic g(Lcom/google/protobuf/Descriptors$FileDescriptor;)Lcom/google/protobuf/Descriptors$FileDescriptor;
    .locals 0

    .line 1
    sput-object p0, Lcom/wufan/user/service/protobuf/MessageCloudGamingServerListResponse;->g:Lcom/google/protobuf/Descriptors$FileDescriptor;

    .line 2
    .line 3
    return-object p0
.end method

.method public static h()Lcom/google/protobuf/Descriptors$FileDescriptor;
    .locals 1

    .line 1
    sget-object v0, Lcom/wufan/user/service/protobuf/MessageCloudGamingServerListResponse;->g:Lcom/google/protobuf/Descriptors$FileDescriptor;

    .line 2
    .line 3
    return-object v0
.end method

.method public static i(Lcom/google/protobuf/ExtensionRegistry;)V
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
    invoke-static {p0}, Lcom/wufan/user/service/protobuf/MessageCloudGamingServerListResponse;->j(Lcom/google/protobuf/ExtensionRegistryLite;)V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method public static j(Lcom/google/protobuf/ExtensionRegistryLite;)V
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
