.class public final Lcom/wufan/user/service/protobuf/MessageCloudGamingFreeTimeStateResponse;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/wufan/user/service/protobuf/MessageCloudGamingFreeTimeStateResponse$MembersInfo;,
        Lcom/wufan/user/service/protobuf/MessageCloudGamingFreeTimeStateResponse$b;,
        Lcom/wufan/user/service/protobuf/MessageCloudGamingFreeTimeStateResponse$MessageCloudGamingFreeTimeStateResponseResult;,
        Lcom/wufan/user/service/protobuf/MessageCloudGamingFreeTimeStateResponse$c;
    }
.end annotation


# static fields
.field private static final a:Lcom/google/protobuf/Descriptors$Descriptor;

.field private static final b:Lcom/google/protobuf/GeneratedMessageV3$FieldAccessorTable;

.field private static final c:Lcom/google/protobuf/Descriptors$Descriptor;

.field private static final d:Lcom/google/protobuf/GeneratedMessageV3$FieldAccessorTable;

.field private static e:Lcom/google/protobuf/Descriptors$FileDescriptor;


# direct methods
.method static constructor <clinit>()V
    .locals 7

    .line 1
    const-string v0, "\n+cloud_gaming_free_time_state_response.proto\"\u008d\u0001\n-MessageCloudGamingFreeTimeStateResponseResult\u0012\r\n\u0005error\u0018\u0001 \u0001(\u0005\u0012\u000e\n\u0006status\u0018\u0002 \u0001(\u0008\u0012\u0010\n\u0008errorMsg\u0018\u0003 \u0001(\t\u0012\u001a\n\u0004data\u0018\u0004 \u0001(\u000b2\u000c.MembersInfo\u0012\u000f\n\u0007tipsMsg\u0018\u0005 \u0001(\t\"-\n\u000bMembersInfo\u0012\u000b\n\u0003uid\u0018\u0001 \u0001(\u0005\u0012\u0011\n\tsecretKey\u0018\u0002 \u0001(\tBJ\n\u001fcom.wufan.user.service.protobufB\'MessageCloudGamingFreeTimeStateResponseb\u0006proto3"

    .line 2
    .line 3
    filled-new-array {v0}, [Ljava/lang/String;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    new-instance v1, Lcom/wufan/user/service/protobuf/MessageCloudGamingFreeTimeStateResponse$a;

    .line 8
    .line 9
    invoke-direct {v1}, Lcom/wufan/user/service/protobuf/MessageCloudGamingFreeTimeStateResponse$a;-><init>()V

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
    invoke-static {}, Lcom/wufan/user/service/protobuf/MessageCloudGamingFreeTimeStateResponse;->f()Lcom/google/protobuf/Descriptors$FileDescriptor;

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
    sput-object v0, Lcom/wufan/user/service/protobuf/MessageCloudGamingFreeTimeStateResponse;->a:Lcom/google/protobuf/Descriptors$Descriptor;

    .line 33
    .line 34
    new-instance v1, Lcom/google/protobuf/GeneratedMessageV3$FieldAccessorTable;

    .line 35
    .line 36
    const-string v2, "Data"

    .line 37
    .line 38
    const-string v3, "TipsMsg"

    .line 39
    .line 40
    const-string v4, "Error"

    .line 41
    .line 42
    const-string v5, "Status"

    .line 43
    .line 44
    const-string v6, "ErrorMsg"

    .line 45
    .line 46
    filled-new-array {v4, v5, v6, v2, v3}, [Ljava/lang/String;

    .line 47
    .line 48
    .line 49
    move-result-object v2

    .line 50
    invoke-direct {v1, v0, v2}, Lcom/google/protobuf/GeneratedMessageV3$FieldAccessorTable;-><init>(Lcom/google/protobuf/Descriptors$Descriptor;[Ljava/lang/String;)V

    .line 51
    .line 52
    .line 53
    sput-object v1, Lcom/wufan/user/service/protobuf/MessageCloudGamingFreeTimeStateResponse;->b:Lcom/google/protobuf/GeneratedMessageV3$FieldAccessorTable;

    .line 54
    .line 55
    invoke-static {}, Lcom/wufan/user/service/protobuf/MessageCloudGamingFreeTimeStateResponse;->f()Lcom/google/protobuf/Descriptors$FileDescriptor;

    .line 56
    .line 57
    .line 58
    move-result-object v0

    .line 59
    invoke-virtual {v0}, Lcom/google/protobuf/Descriptors$FileDescriptor;->getMessageTypes()Ljava/util/List;

    .line 60
    .line 61
    .line 62
    move-result-object v0

    .line 63
    const/4 v1, 0x1

    .line 64
    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 65
    .line 66
    .line 67
    move-result-object v0

    .line 68
    check-cast v0, Lcom/google/protobuf/Descriptors$Descriptor;

    .line 69
    .line 70
    sput-object v0, Lcom/wufan/user/service/protobuf/MessageCloudGamingFreeTimeStateResponse;->c:Lcom/google/protobuf/Descriptors$Descriptor;

    .line 71
    .line 72
    new-instance v1, Lcom/google/protobuf/GeneratedMessageV3$FieldAccessorTable;

    .line 73
    .line 74
    const-string v2, "Uid"

    .line 75
    .line 76
    const-string v3, "SecretKey"

    .line 77
    .line 78
    filled-new-array {v2, v3}, [Ljava/lang/String;

    .line 79
    .line 80
    .line 81
    move-result-object v2

    .line 82
    invoke-direct {v1, v0, v2}, Lcom/google/protobuf/GeneratedMessageV3$FieldAccessorTable;-><init>(Lcom/google/protobuf/Descriptors$Descriptor;[Ljava/lang/String;)V

    .line 83
    .line 84
    .line 85
    sput-object v1, Lcom/wufan/user/service/protobuf/MessageCloudGamingFreeTimeStateResponse;->d:Lcom/google/protobuf/GeneratedMessageV3$FieldAccessorTable;

    .line 86
    .line 87
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
    sget-object v0, Lcom/wufan/user/service/protobuf/MessageCloudGamingFreeTimeStateResponse;->a:Lcom/google/protobuf/Descriptors$Descriptor;

    .line 2
    .line 3
    return-object v0
.end method

.method static synthetic b()Lcom/google/protobuf/GeneratedMessageV3$FieldAccessorTable;
    .locals 1

    .line 1
    sget-object v0, Lcom/wufan/user/service/protobuf/MessageCloudGamingFreeTimeStateResponse;->b:Lcom/google/protobuf/GeneratedMessageV3$FieldAccessorTable;

    .line 2
    .line 3
    return-object v0
.end method

.method static synthetic c()Lcom/google/protobuf/Descriptors$Descriptor;
    .locals 1

    .line 1
    sget-object v0, Lcom/wufan/user/service/protobuf/MessageCloudGamingFreeTimeStateResponse;->c:Lcom/google/protobuf/Descriptors$Descriptor;

    .line 2
    .line 3
    return-object v0
.end method

.method static synthetic d()Lcom/google/protobuf/GeneratedMessageV3$FieldAccessorTable;
    .locals 1

    .line 1
    sget-object v0, Lcom/wufan/user/service/protobuf/MessageCloudGamingFreeTimeStateResponse;->d:Lcom/google/protobuf/GeneratedMessageV3$FieldAccessorTable;

    .line 2
    .line 3
    return-object v0
.end method

.method static synthetic e(Lcom/google/protobuf/Descriptors$FileDescriptor;)Lcom/google/protobuf/Descriptors$FileDescriptor;
    .locals 0

    .line 1
    sput-object p0, Lcom/wufan/user/service/protobuf/MessageCloudGamingFreeTimeStateResponse;->e:Lcom/google/protobuf/Descriptors$FileDescriptor;

    .line 2
    .line 3
    return-object p0
.end method

.method public static f()Lcom/google/protobuf/Descriptors$FileDescriptor;
    .locals 1

    .line 1
    sget-object v0, Lcom/wufan/user/service/protobuf/MessageCloudGamingFreeTimeStateResponse;->e:Lcom/google/protobuf/Descriptors$FileDescriptor;

    .line 2
    .line 3
    return-object v0
.end method

.method public static g(Lcom/google/protobuf/ExtensionRegistry;)V
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
    invoke-static {p0}, Lcom/wufan/user/service/protobuf/MessageCloudGamingFreeTimeStateResponse;->h(Lcom/google/protobuf/ExtensionRegistryLite;)V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method public static h(Lcom/google/protobuf/ExtensionRegistryLite;)V
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
