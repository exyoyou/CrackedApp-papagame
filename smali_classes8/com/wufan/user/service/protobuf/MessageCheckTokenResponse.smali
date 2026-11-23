.class public final Lcom/wufan/user/service/protobuf/MessageCheckTokenResponse;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/wufan/user/service/protobuf/MessageCheckTokenResponse$MemberInfo;,
        Lcom/wufan/user/service/protobuf/MessageCheckTokenResponse$b;,
        Lcom/wufan/user/service/protobuf/MessageCheckTokenResponse$MessageCheckTokenResponseResult;,
        Lcom/wufan/user/service/protobuf/MessageCheckTokenResponse$c;
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
    const-string v0, "\n\u001acheck_token_response.proto\"]\n\u001fMessageCheckTokenResponseResult\u0012\r\n\u0005error\u0018\u0001 \u0001(\u0005\u0012\u0019\n\u0004data\u0018\u0002 \u0001(\u000b2\u000b.MemberInfo\u0012\u0010\n\u0008errorMsg\u0018\u0003 \u0001(\t\"e\n\nMemberInfo\u0012\u000b\n\u0003uid\u0018\u0001 \u0001(\u0005\u0012\u0010\n\u0008vipLevel\u0018\u0002 \u0001(\u0005\u0012\u0011\n\tsvipLevel\u0018\u0003 \u0001(\u0005\u0012\u0012\n\nvipExpTime\u0018\u0004 \u0001(\u0003\u0012\u0011\n\tsecretKey\u0018\u0005 \u0001(\tB<\n\u001fcom.wufan.user.service.protobufB\u0019MessageCheckTokenResponseb\u0006proto3"

    .line 2
    .line 3
    filled-new-array {v0}, [Ljava/lang/String;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    new-instance v1, Lcom/wufan/user/service/protobuf/MessageCheckTokenResponse$a;

    .line 8
    .line 9
    invoke-direct {v1}, Lcom/wufan/user/service/protobuf/MessageCheckTokenResponse$a;-><init>()V

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
    invoke-static {}, Lcom/wufan/user/service/protobuf/MessageCheckTokenResponse;->f()Lcom/google/protobuf/Descriptors$FileDescriptor;

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
    sput-object v0, Lcom/wufan/user/service/protobuf/MessageCheckTokenResponse;->a:Lcom/google/protobuf/Descriptors$Descriptor;

    .line 33
    .line 34
    new-instance v1, Lcom/google/protobuf/GeneratedMessageV3$FieldAccessorTable;

    .line 35
    .line 36
    const-string v2, "Data"

    .line 37
    .line 38
    const-string v3, "ErrorMsg"

    .line 39
    .line 40
    const-string v4, "Error"

    .line 41
    .line 42
    filled-new-array {v4, v2, v3}, [Ljava/lang/String;

    .line 43
    .line 44
    .line 45
    move-result-object v2

    .line 46
    invoke-direct {v1, v0, v2}, Lcom/google/protobuf/GeneratedMessageV3$FieldAccessorTable;-><init>(Lcom/google/protobuf/Descriptors$Descriptor;[Ljava/lang/String;)V

    .line 47
    .line 48
    .line 49
    sput-object v1, Lcom/wufan/user/service/protobuf/MessageCheckTokenResponse;->b:Lcom/google/protobuf/GeneratedMessageV3$FieldAccessorTable;

    .line 50
    .line 51
    invoke-static {}, Lcom/wufan/user/service/protobuf/MessageCheckTokenResponse;->f()Lcom/google/protobuf/Descriptors$FileDescriptor;

    .line 52
    .line 53
    .line 54
    move-result-object v0

    .line 55
    invoke-virtual {v0}, Lcom/google/protobuf/Descriptors$FileDescriptor;->getMessageTypes()Ljava/util/List;

    .line 56
    .line 57
    .line 58
    move-result-object v0

    .line 59
    const/4 v1, 0x1

    .line 60
    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 61
    .line 62
    .line 63
    move-result-object v0

    .line 64
    check-cast v0, Lcom/google/protobuf/Descriptors$Descriptor;

    .line 65
    .line 66
    sput-object v0, Lcom/wufan/user/service/protobuf/MessageCheckTokenResponse;->c:Lcom/google/protobuf/Descriptors$Descriptor;

    .line 67
    .line 68
    new-instance v1, Lcom/google/protobuf/GeneratedMessageV3$FieldAccessorTable;

    .line 69
    .line 70
    const-string v2, "VipExpTime"

    .line 71
    .line 72
    const-string v3, "SecretKey"

    .line 73
    .line 74
    const-string v4, "Uid"

    .line 75
    .line 76
    const-string v5, "VipLevel"

    .line 77
    .line 78
    const-string v6, "SvipLevel"

    .line 79
    .line 80
    filled-new-array {v4, v5, v6, v2, v3}, [Ljava/lang/String;

    .line 81
    .line 82
    .line 83
    move-result-object v2

    .line 84
    invoke-direct {v1, v0, v2}, Lcom/google/protobuf/GeneratedMessageV3$FieldAccessorTable;-><init>(Lcom/google/protobuf/Descriptors$Descriptor;[Ljava/lang/String;)V

    .line 85
    .line 86
    .line 87
    sput-object v1, Lcom/wufan/user/service/protobuf/MessageCheckTokenResponse;->d:Lcom/google/protobuf/GeneratedMessageV3$FieldAccessorTable;

    .line 88
    .line 89
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
    sget-object v0, Lcom/wufan/user/service/protobuf/MessageCheckTokenResponse;->a:Lcom/google/protobuf/Descriptors$Descriptor;

    .line 2
    .line 3
    return-object v0
.end method

.method static synthetic b()Lcom/google/protobuf/GeneratedMessageV3$FieldAccessorTable;
    .locals 1

    .line 1
    sget-object v0, Lcom/wufan/user/service/protobuf/MessageCheckTokenResponse;->b:Lcom/google/protobuf/GeneratedMessageV3$FieldAccessorTable;

    .line 2
    .line 3
    return-object v0
.end method

.method static synthetic c()Lcom/google/protobuf/Descriptors$Descriptor;
    .locals 1

    .line 1
    sget-object v0, Lcom/wufan/user/service/protobuf/MessageCheckTokenResponse;->c:Lcom/google/protobuf/Descriptors$Descriptor;

    .line 2
    .line 3
    return-object v0
.end method

.method static synthetic d()Lcom/google/protobuf/GeneratedMessageV3$FieldAccessorTable;
    .locals 1

    .line 1
    sget-object v0, Lcom/wufan/user/service/protobuf/MessageCheckTokenResponse;->d:Lcom/google/protobuf/GeneratedMessageV3$FieldAccessorTable;

    .line 2
    .line 3
    return-object v0
.end method

.method static synthetic e(Lcom/google/protobuf/Descriptors$FileDescriptor;)Lcom/google/protobuf/Descriptors$FileDescriptor;
    .locals 0

    .line 1
    sput-object p0, Lcom/wufan/user/service/protobuf/MessageCheckTokenResponse;->e:Lcom/google/protobuf/Descriptors$FileDescriptor;

    .line 2
    .line 3
    return-object p0
.end method

.method public static f()Lcom/google/protobuf/Descriptors$FileDescriptor;
    .locals 1

    .line 1
    sget-object v0, Lcom/wufan/user/service/protobuf/MessageCheckTokenResponse;->e:Lcom/google/protobuf/Descriptors$FileDescriptor;

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
    invoke-static {p0}, Lcom/wufan/user/service/protobuf/MessageCheckTokenResponse;->h(Lcom/google/protobuf/ExtensionRegistryLite;)V

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
