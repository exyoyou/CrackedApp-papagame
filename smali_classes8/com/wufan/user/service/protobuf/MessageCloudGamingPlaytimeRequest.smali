.class public final Lcom/wufan/user/service/protobuf/MessageCloudGamingPlaytimeRequest;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/wufan/user/service/protobuf/MessageCloudGamingPlaytimeRequest$MessageCloudGamingPlaytimeSummaryRequest;,
        Lcom/wufan/user/service/protobuf/MessageCloudGamingPlaytimeRequest$c;,
        Lcom/wufan/user/service/protobuf/MessageCloudGamingPlaytimeRequest$MessageCloudGamingPlaytimeVipRequest;,
        Lcom/wufan/user/service/protobuf/MessageCloudGamingPlaytimeRequest$d;,
        Lcom/wufan/user/service/protobuf/MessageCloudGamingPlaytimeRequest$MessageCloudGamingPlaytimeSignInRequest;,
        Lcom/wufan/user/service/protobuf/MessageCloudGamingPlaytimeRequest$b;
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
    .locals 7

    .line 1
    const-string v0, "\n)proto/cloud_gaming_playtime_request.proto\"{\n\'MessageCloudGamingPlaytimeSignInRequest\u0012\u000b\n\u0003uid\u0018\u0001 \u0001(\u0005\u0012\r\n\u0005token\u0018\u0002 \u0001(\t\u0012\u0012\n\nappVersion\u0018\u0003 \u0001(\t\u0012\u000c\n\u0004sign\u0018\u0004 \u0001(\t\u0012\u0012\n\nsignInType\u0018\u0005 \u0001(\u0005\"d\n$MessageCloudGamingPlaytimeVipRequest\u0012\u000b\n\u0003uid\u0018\u0001 \u0001(\u0005\u0012\r\n\u0005token\u0018\u0002 \u0001(\t\u0012\u0012\n\nappVersion\u0018\u0003 \u0001(\t\u0012\u000c\n\u0004sign\u0018\u0004 \u0001(\t\"h\n(MessageCloudGamingPlaytimeSummaryRequest\u0012\u000b\n\u0003uid\u0018\u0001 \u0001(\u0005\u0012\r\n\u0005token\u0018\u0002 \u0001(\t\u0012\u0012\n\nappVersion\u0018\u0003 \u0001(\t\u0012\u000c\n\u0004sign\u0018\u0004 \u0001(\tBD\n\u001fcom.wufan.user.service.protobufB!MessageCloudGamingPlaytimeRequestb\u0006proto3"

    .line 2
    .line 3
    filled-new-array {v0}, [Ljava/lang/String;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    const/4 v1, 0x0

    .line 8
    new-array v2, v1, [Lcom/google/protobuf/Descriptors$FileDescriptor;

    .line 9
    .line 10
    invoke-static {v0, v2}, Lcom/google/protobuf/Descriptors$FileDescriptor;->internalBuildGeneratedFileFrom([Ljava/lang/String;[Lcom/google/protobuf/Descriptors$FileDescriptor;)Lcom/google/protobuf/Descriptors$FileDescriptor;

    .line 11
    .line 12
    .line 13
    move-result-object v0

    .line 14
    sput-object v0, Lcom/wufan/user/service/protobuf/MessageCloudGamingPlaytimeRequest;->g:Lcom/google/protobuf/Descriptors$FileDescriptor;

    .line 15
    .line 16
    invoke-static {}, Lcom/wufan/user/service/protobuf/MessageCloudGamingPlaytimeRequest;->g()Lcom/google/protobuf/Descriptors$FileDescriptor;

    .line 17
    .line 18
    .line 19
    move-result-object v0

    .line 20
    invoke-virtual {v0}, Lcom/google/protobuf/Descriptors$FileDescriptor;->getMessageTypes()Ljava/util/List;

    .line 21
    .line 22
    .line 23
    move-result-object v0

    .line 24
    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 25
    .line 26
    .line 27
    move-result-object v0

    .line 28
    check-cast v0, Lcom/google/protobuf/Descriptors$Descriptor;

    .line 29
    .line 30
    sput-object v0, Lcom/wufan/user/service/protobuf/MessageCloudGamingPlaytimeRequest;->a:Lcom/google/protobuf/Descriptors$Descriptor;

    .line 31
    .line 32
    new-instance v1, Lcom/google/protobuf/GeneratedMessageV3$FieldAccessorTable;

    .line 33
    .line 34
    const-string v2, "SignInType"

    .line 35
    .line 36
    const-string v3, "Uid"

    .line 37
    .line 38
    const-string v4, "Token"

    .line 39
    .line 40
    const-string v5, "AppVersion"

    .line 41
    .line 42
    const-string v6, "Sign"

    .line 43
    .line 44
    filled-new-array {v3, v4, v5, v6, v2}, [Ljava/lang/String;

    .line 45
    .line 46
    .line 47
    move-result-object v2

    .line 48
    invoke-direct {v1, v0, v2}, Lcom/google/protobuf/GeneratedMessageV3$FieldAccessorTable;-><init>(Lcom/google/protobuf/Descriptors$Descriptor;[Ljava/lang/String;)V

    .line 49
    .line 50
    .line 51
    sput-object v1, Lcom/wufan/user/service/protobuf/MessageCloudGamingPlaytimeRequest;->b:Lcom/google/protobuf/GeneratedMessageV3$FieldAccessorTable;

    .line 52
    .line 53
    invoke-static {}, Lcom/wufan/user/service/protobuf/MessageCloudGamingPlaytimeRequest;->g()Lcom/google/protobuf/Descriptors$FileDescriptor;

    .line 54
    .line 55
    .line 56
    move-result-object v0

    .line 57
    invoke-virtual {v0}, Lcom/google/protobuf/Descriptors$FileDescriptor;->getMessageTypes()Ljava/util/List;

    .line 58
    .line 59
    .line 60
    move-result-object v0

    .line 61
    const/4 v1, 0x1

    .line 62
    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 63
    .line 64
    .line 65
    move-result-object v0

    .line 66
    check-cast v0, Lcom/google/protobuf/Descriptors$Descriptor;

    .line 67
    .line 68
    sput-object v0, Lcom/wufan/user/service/protobuf/MessageCloudGamingPlaytimeRequest;->c:Lcom/google/protobuf/Descriptors$Descriptor;

    .line 69
    .line 70
    new-instance v1, Lcom/google/protobuf/GeneratedMessageV3$FieldAccessorTable;

    .line 71
    .line 72
    filled-new-array {v3, v4, v5, v6}, [Ljava/lang/String;

    .line 73
    .line 74
    .line 75
    move-result-object v2

    .line 76
    invoke-direct {v1, v0, v2}, Lcom/google/protobuf/GeneratedMessageV3$FieldAccessorTable;-><init>(Lcom/google/protobuf/Descriptors$Descriptor;[Ljava/lang/String;)V

    .line 77
    .line 78
    .line 79
    sput-object v1, Lcom/wufan/user/service/protobuf/MessageCloudGamingPlaytimeRequest;->d:Lcom/google/protobuf/GeneratedMessageV3$FieldAccessorTable;

    .line 80
    .line 81
    invoke-static {}, Lcom/wufan/user/service/protobuf/MessageCloudGamingPlaytimeRequest;->g()Lcom/google/protobuf/Descriptors$FileDescriptor;

    .line 82
    .line 83
    .line 84
    move-result-object v0

    .line 85
    invoke-virtual {v0}, Lcom/google/protobuf/Descriptors$FileDescriptor;->getMessageTypes()Ljava/util/List;

    .line 86
    .line 87
    .line 88
    move-result-object v0

    .line 89
    const/4 v1, 0x2

    .line 90
    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 91
    .line 92
    .line 93
    move-result-object v0

    .line 94
    check-cast v0, Lcom/google/protobuf/Descriptors$Descriptor;

    .line 95
    .line 96
    sput-object v0, Lcom/wufan/user/service/protobuf/MessageCloudGamingPlaytimeRequest;->e:Lcom/google/protobuf/Descriptors$Descriptor;

    .line 97
    .line 98
    new-instance v1, Lcom/google/protobuf/GeneratedMessageV3$FieldAccessorTable;

    .line 99
    .line 100
    filled-new-array {v3, v4, v5, v6}, [Ljava/lang/String;

    .line 101
    .line 102
    .line 103
    move-result-object v2

    .line 104
    invoke-direct {v1, v0, v2}, Lcom/google/protobuf/GeneratedMessageV3$FieldAccessorTable;-><init>(Lcom/google/protobuf/Descriptors$Descriptor;[Ljava/lang/String;)V

    .line 105
    .line 106
    .line 107
    sput-object v1, Lcom/wufan/user/service/protobuf/MessageCloudGamingPlaytimeRequest;->f:Lcom/google/protobuf/GeneratedMessageV3$FieldAccessorTable;

    .line 108
    .line 109
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
    sget-object v0, Lcom/wufan/user/service/protobuf/MessageCloudGamingPlaytimeRequest;->a:Lcom/google/protobuf/Descriptors$Descriptor;

    .line 2
    .line 3
    return-object v0
.end method

.method static synthetic b()Lcom/google/protobuf/GeneratedMessageV3$FieldAccessorTable;
    .locals 1

    .line 1
    sget-object v0, Lcom/wufan/user/service/protobuf/MessageCloudGamingPlaytimeRequest;->b:Lcom/google/protobuf/GeneratedMessageV3$FieldAccessorTable;

    .line 2
    .line 3
    return-object v0
.end method

.method static synthetic c()Lcom/google/protobuf/Descriptors$Descriptor;
    .locals 1

    .line 1
    sget-object v0, Lcom/wufan/user/service/protobuf/MessageCloudGamingPlaytimeRequest;->c:Lcom/google/protobuf/Descriptors$Descriptor;

    .line 2
    .line 3
    return-object v0
.end method

.method static synthetic d()Lcom/google/protobuf/GeneratedMessageV3$FieldAccessorTable;
    .locals 1

    .line 1
    sget-object v0, Lcom/wufan/user/service/protobuf/MessageCloudGamingPlaytimeRequest;->d:Lcom/google/protobuf/GeneratedMessageV3$FieldAccessorTable;

    .line 2
    .line 3
    return-object v0
.end method

.method static synthetic e()Lcom/google/protobuf/Descriptors$Descriptor;
    .locals 1

    .line 1
    sget-object v0, Lcom/wufan/user/service/protobuf/MessageCloudGamingPlaytimeRequest;->e:Lcom/google/protobuf/Descriptors$Descriptor;

    .line 2
    .line 3
    return-object v0
.end method

.method static synthetic f()Lcom/google/protobuf/GeneratedMessageV3$FieldAccessorTable;
    .locals 1

    .line 1
    sget-object v0, Lcom/wufan/user/service/protobuf/MessageCloudGamingPlaytimeRequest;->f:Lcom/google/protobuf/GeneratedMessageV3$FieldAccessorTable;

    .line 2
    .line 3
    return-object v0
.end method

.method public static g()Lcom/google/protobuf/Descriptors$FileDescriptor;
    .locals 1

    .line 1
    sget-object v0, Lcom/wufan/user/service/protobuf/MessageCloudGamingPlaytimeRequest;->g:Lcom/google/protobuf/Descriptors$FileDescriptor;

    .line 2
    .line 3
    return-object v0
.end method

.method public static h(Lcom/google/protobuf/ExtensionRegistry;)V
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
    invoke-static {p0}, Lcom/wufan/user/service/protobuf/MessageCloudGamingPlaytimeRequest;->i(Lcom/google/protobuf/ExtensionRegistryLite;)V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method public static i(Lcom/google/protobuf/ExtensionRegistryLite;)V
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
