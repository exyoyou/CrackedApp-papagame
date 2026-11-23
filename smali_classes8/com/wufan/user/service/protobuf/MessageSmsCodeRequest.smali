.class public final Lcom/wufan/user/service/protobuf/MessageSmsCodeRequest;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/wufan/user/service/protobuf/MessageSmsCodeRequest$SmsCodeRequestParameters;,
        Lcom/wufan/user/service/protobuf/MessageSmsCodeRequest$b;
    }
.end annotation


# static fields
.field private static final a:Lcom/google/protobuf/Descriptors$Descriptor;

.field private static final b:Lcom/google/protobuf/GeneratedMessageV3$FieldAccessorTable;

.field private static c:Lcom/google/protobuf/Descriptors$FileDescriptor;


# direct methods
.method static constructor <clinit>()V
    .locals 8

    .line 1
    const-string v0, "\n\u0016sms_code_request.proto\u001a\u001denumeration/enumeration.proto\"\u00b5\u0001\n\u0018SmsCodeRequestParameters\u0012\u000b\n\u0003uid\u0018\u0001 \u0001(\u0005\u0012-\n\u000bcontentType\u0018\u0002 \u0001(\u000e2\u0018.enumeration.ContentType\u0012+\n\nsourceType\u0018\u0003 \u0001(\u000e2\u0017.enumeration.SourceType\u0012\u000e\n\u0006mobile\u0018\u0004 \u0001(\t\u0012\u000c\n\u0004sign\u0018\u0005 \u0001(\t\u0012\u0012\n\nappVersion\u0018\u0006 \u0001(\tB8\n\u001fcom.wufan.user.service.protobufB\u0015MessageSmsCodeRequestb\u0006proto3"

    .line 2
    .line 3
    filled-new-array {v0}, [Ljava/lang/String;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    new-instance v1, Lcom/wufan/user/service/protobuf/MessageSmsCodeRequest$a;

    .line 8
    .line 9
    invoke-direct {v1}, Lcom/wufan/user/service/protobuf/MessageSmsCodeRequest$a;-><init>()V

    .line 10
    .line 11
    .line 12
    const/4 v2, 0x1

    .line 13
    new-array v2, v2, [Lcom/google/protobuf/Descriptors$FileDescriptor;

    .line 14
    .line 15
    invoke-static {}, Lcom/wufan/user/service/protobuf/enumeration/a;->b()Lcom/google/protobuf/Descriptors$FileDescriptor;

    .line 16
    .line 17
    .line 18
    move-result-object v3

    .line 19
    const/4 v4, 0x0

    .line 20
    aput-object v3, v2, v4

    .line 21
    .line 22
    invoke-static {v0, v2, v1}, Lcom/google/protobuf/Descriptors$FileDescriptor;->internalBuildGeneratedFileFrom([Ljava/lang/String;[Lcom/google/protobuf/Descriptors$FileDescriptor;Lcom/google/protobuf/Descriptors$FileDescriptor$InternalDescriptorAssigner;)V

    .line 23
    .line 24
    .line 25
    invoke-static {}, Lcom/wufan/user/service/protobuf/MessageSmsCodeRequest;->d()Lcom/google/protobuf/Descriptors$FileDescriptor;

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
    invoke-interface {v0, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 34
    .line 35
    .line 36
    move-result-object v0

    .line 37
    check-cast v0, Lcom/google/protobuf/Descriptors$Descriptor;

    .line 38
    .line 39
    sput-object v0, Lcom/wufan/user/service/protobuf/MessageSmsCodeRequest;->a:Lcom/google/protobuf/Descriptors$Descriptor;

    .line 40
    .line 41
    new-instance v1, Lcom/google/protobuf/GeneratedMessageV3$FieldAccessorTable;

    .line 42
    .line 43
    const-string v2, "Uid"

    .line 44
    .line 45
    const-string v3, "ContentType"

    .line 46
    .line 47
    const-string v4, "SourceType"

    .line 48
    .line 49
    const-string v5, "Mobile"

    .line 50
    .line 51
    const-string v6, "Sign"

    .line 52
    .line 53
    const-string v7, "AppVersion"

    .line 54
    .line 55
    filled-new-array/range {v2 .. v7}, [Ljava/lang/String;

    .line 56
    .line 57
    .line 58
    move-result-object v2

    .line 59
    invoke-direct {v1, v0, v2}, Lcom/google/protobuf/GeneratedMessageV3$FieldAccessorTable;-><init>(Lcom/google/protobuf/Descriptors$Descriptor;[Ljava/lang/String;)V

    .line 60
    .line 61
    .line 62
    sput-object v1, Lcom/wufan/user/service/protobuf/MessageSmsCodeRequest;->b:Lcom/google/protobuf/GeneratedMessageV3$FieldAccessorTable;

    .line 63
    .line 64
    invoke-static {}, Lcom/wufan/user/service/protobuf/enumeration/a;->b()Lcom/google/protobuf/Descriptors$FileDescriptor;

    .line 65
    .line 66
    .line 67
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
    sget-object v0, Lcom/wufan/user/service/protobuf/MessageSmsCodeRequest;->a:Lcom/google/protobuf/Descriptors$Descriptor;

    .line 2
    .line 3
    return-object v0
.end method

.method static synthetic b()Lcom/google/protobuf/GeneratedMessageV3$FieldAccessorTable;
    .locals 1

    .line 1
    sget-object v0, Lcom/wufan/user/service/protobuf/MessageSmsCodeRequest;->b:Lcom/google/protobuf/GeneratedMessageV3$FieldAccessorTable;

    .line 2
    .line 3
    return-object v0
.end method

.method static synthetic c(Lcom/google/protobuf/Descriptors$FileDescriptor;)Lcom/google/protobuf/Descriptors$FileDescriptor;
    .locals 0

    .line 1
    sput-object p0, Lcom/wufan/user/service/protobuf/MessageSmsCodeRequest;->c:Lcom/google/protobuf/Descriptors$FileDescriptor;

    .line 2
    .line 3
    return-object p0
.end method

.method public static d()Lcom/google/protobuf/Descriptors$FileDescriptor;
    .locals 1

    .line 1
    sget-object v0, Lcom/wufan/user/service/protobuf/MessageSmsCodeRequest;->c:Lcom/google/protobuf/Descriptors$FileDescriptor;

    .line 2
    .line 3
    return-object v0
.end method

.method public static e(Lcom/google/protobuf/ExtensionRegistry;)V
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
    invoke-static {p0}, Lcom/wufan/user/service/protobuf/MessageSmsCodeRequest;->f(Lcom/google/protobuf/ExtensionRegistryLite;)V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method public static f(Lcom/google/protobuf/ExtensionRegistryLite;)V
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
