.class public final Lcom/wufan/user/service/protobuf/MessageCloudGamingOrderRequest;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/wufan/user/service/protobuf/MessageCloudGamingOrderRequest$MessageCloudGamingPropRequestParameters;,
        Lcom/wufan/user/service/protobuf/MessageCloudGamingOrderRequest$d;,
        Lcom/wufan/user/service/protobuf/MessageCloudGamingOrderRequest$MessageCloudGamingCoinRequestParameters;,
        Lcom/wufan/user/service/protobuf/MessageCloudGamingOrderRequest$b;,
        Lcom/wufan/user/service/protobuf/MessageCloudGamingOrderRequest$MessageCloudGamingOrderRequestParameters;,
        Lcom/wufan/user/service/protobuf/MessageCloudGamingOrderRequest$c;
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
    const-string v0, "\n cloud_gaming_order_request.proto\u001a\u001denumeration/enumeration.proto\"\u00cc\u0001\n(MessageCloudGamingOrderRequestParameters\u0012\u000b\n\u0003uid\u0018\u0001 \u0001(\u0005\u0012\r\n\u0005token\u0018\u0002 \u0001(\t\u0012\u0012\n\nappVersion\u0018\u0003 \u0001(\t\u0012+\n\nvipFeeType\u0018\u0004 \u0001(\u000e2\u0017.enumeration.VipFeeType\u0012\u0013\n\u000bproductName\u0018\u0005 \u0001(\t\u0012\u000c\n\u0004sign\u0018\u0006 \u0001(\t\u0012\u000f\n\u0007payType\u0018\u0007 \u0001(\u0005\u0012\u000f\n\u0007jumpUrl\u0018\u0008 \u0001(\t\"\u0098\u0001\n\'MessageCloudGamingCoinRequestParameters\u0012\u000b\n\u0003uid\u0018\u0001 \u0001(\u0005\u0012\r\n\u0005token\u0018\u0002 \u0001(\t\u0012\u0012\n\nappVersion\u0018\u0003 \u0001(\t\u0012\u000c\n\u0004sign\u0018\u0004 \u0001(\t\u0012\u000f\n\u0007payType\u0018\u0005 \u0001(\u0005\u0012\u000f\n\u0007jumpUrl\u0018\u0006 \u0001(\t\u0012\r\n\u0005skuId\u0018\u0007 \u0001(\u0005\"\u0098\u0001\n\'MessageCloudGamingPropRequestParameters\u0012\u000b\n\u0003uid\u0018\u0001 \u0001(\u0005\u0012\r\n\u0005token\u0018\u0002 \u0001(\t\u0012\u0012\n\nappVersion\u0018\u0003 \u0001(\t\u0012\u000c\n\u0004sign\u0018\u0004 \u0001(\t\u0012\u000f\n\u0007payType\u0018\u0005 \u0001(\u0005\u0012\u000f\n\u0007jumpUrl\u0018\u0006 \u0001(\t\u0012\r\n\u0005skuId\u0018\u0007 \u0001(\tBA\n\u001fcom.wufan.user.service.protobufB\u001eMessageCloudGamingOrderRequestb\u0006proto3"

    .line 2
    .line 3
    filled-new-array {v0}, [Ljava/lang/String;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    new-instance v1, Lcom/wufan/user/service/protobuf/MessageCloudGamingOrderRequest$a;

    .line 8
    .line 9
    invoke-direct {v1}, Lcom/wufan/user/service/protobuf/MessageCloudGamingOrderRequest$a;-><init>()V

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
    invoke-static {}, Lcom/wufan/user/service/protobuf/MessageCloudGamingOrderRequest;->h()Lcom/google/protobuf/Descriptors$FileDescriptor;

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
    sput-object v0, Lcom/wufan/user/service/protobuf/MessageCloudGamingOrderRequest;->a:Lcom/google/protobuf/Descriptors$Descriptor;

    .line 40
    .line 41
    new-instance v1, Lcom/google/protobuf/GeneratedMessageV3$FieldAccessorTable;

    .line 42
    .line 43
    const-string v3, "Uid"

    .line 44
    .line 45
    const-string v4, "Token"

    .line 46
    .line 47
    const-string v5, "AppVersion"

    .line 48
    .line 49
    const-string v6, "VipFeeType"

    .line 50
    .line 51
    const-string v7, "ProductName"

    .line 52
    .line 53
    const-string v8, "Sign"

    .line 54
    .line 55
    const-string v9, "PayType"

    .line 56
    .line 57
    const-string v10, "JumpUrl"

    .line 58
    .line 59
    filled-new-array/range {v3 .. v10}, [Ljava/lang/String;

    .line 60
    .line 61
    .line 62
    move-result-object v3

    .line 63
    invoke-direct {v1, v0, v3}, Lcom/google/protobuf/GeneratedMessageV3$FieldAccessorTable;-><init>(Lcom/google/protobuf/Descriptors$Descriptor;[Ljava/lang/String;)V

    .line 64
    .line 65
    .line 66
    sput-object v1, Lcom/wufan/user/service/protobuf/MessageCloudGamingOrderRequest;->b:Lcom/google/protobuf/GeneratedMessageV3$FieldAccessorTable;

    .line 67
    .line 68
    invoke-static {}, Lcom/wufan/user/service/protobuf/MessageCloudGamingOrderRequest;->h()Lcom/google/protobuf/Descriptors$FileDescriptor;

    .line 69
    .line 70
    .line 71
    move-result-object v0

    .line 72
    invoke-virtual {v0}, Lcom/google/protobuf/Descriptors$FileDescriptor;->getMessageTypes()Ljava/util/List;

    .line 73
    .line 74
    .line 75
    move-result-object v0

    .line 76
    invoke-interface {v0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 77
    .line 78
    .line 79
    move-result-object v0

    .line 80
    check-cast v0, Lcom/google/protobuf/Descriptors$Descriptor;

    .line 81
    .line 82
    sput-object v0, Lcom/wufan/user/service/protobuf/MessageCloudGamingOrderRequest;->c:Lcom/google/protobuf/Descriptors$Descriptor;

    .line 83
    .line 84
    new-instance v1, Lcom/google/protobuf/GeneratedMessageV3$FieldAccessorTable;

    .line 85
    .line 86
    const-string v2, "Uid"

    .line 87
    .line 88
    const-string v3, "Token"

    .line 89
    .line 90
    const-string v4, "AppVersion"

    .line 91
    .line 92
    const-string v5, "Sign"

    .line 93
    .line 94
    const-string v6, "PayType"

    .line 95
    .line 96
    const-string v7, "JumpUrl"

    .line 97
    .line 98
    const-string v8, "SkuId"

    .line 99
    .line 100
    filled-new-array/range {v2 .. v8}, [Ljava/lang/String;

    .line 101
    .line 102
    .line 103
    move-result-object v2

    .line 104
    invoke-direct {v1, v0, v2}, Lcom/google/protobuf/GeneratedMessageV3$FieldAccessorTable;-><init>(Lcom/google/protobuf/Descriptors$Descriptor;[Ljava/lang/String;)V

    .line 105
    .line 106
    .line 107
    sput-object v1, Lcom/wufan/user/service/protobuf/MessageCloudGamingOrderRequest;->d:Lcom/google/protobuf/GeneratedMessageV3$FieldAccessorTable;

    .line 108
    .line 109
    invoke-static {}, Lcom/wufan/user/service/protobuf/MessageCloudGamingOrderRequest;->h()Lcom/google/protobuf/Descriptors$FileDescriptor;

    .line 110
    .line 111
    .line 112
    move-result-object v0

    .line 113
    invoke-virtual {v0}, Lcom/google/protobuf/Descriptors$FileDescriptor;->getMessageTypes()Ljava/util/List;

    .line 114
    .line 115
    .line 116
    move-result-object v0

    .line 117
    const/4 v1, 0x2

    .line 118
    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 119
    .line 120
    .line 121
    move-result-object v0

    .line 122
    check-cast v0, Lcom/google/protobuf/Descriptors$Descriptor;

    .line 123
    .line 124
    sput-object v0, Lcom/wufan/user/service/protobuf/MessageCloudGamingOrderRequest;->e:Lcom/google/protobuf/Descriptors$Descriptor;

    .line 125
    .line 126
    new-instance v1, Lcom/google/protobuf/GeneratedMessageV3$FieldAccessorTable;

    .line 127
    .line 128
    const-string v2, "Uid"

    .line 129
    .line 130
    const-string v3, "Token"

    .line 131
    .line 132
    const-string v4, "AppVersion"

    .line 133
    .line 134
    const-string v5, "Sign"

    .line 135
    .line 136
    const-string v6, "PayType"

    .line 137
    .line 138
    const-string v7, "JumpUrl"

    .line 139
    .line 140
    const-string v8, "SkuId"

    .line 141
    .line 142
    filled-new-array/range {v2 .. v8}, [Ljava/lang/String;

    .line 143
    .line 144
    .line 145
    move-result-object v2

    .line 146
    invoke-direct {v1, v0, v2}, Lcom/google/protobuf/GeneratedMessageV3$FieldAccessorTable;-><init>(Lcom/google/protobuf/Descriptors$Descriptor;[Ljava/lang/String;)V

    .line 147
    .line 148
    .line 149
    sput-object v1, Lcom/wufan/user/service/protobuf/MessageCloudGamingOrderRequest;->f:Lcom/google/protobuf/GeneratedMessageV3$FieldAccessorTable;

    .line 150
    .line 151
    invoke-static {}, Lcom/wufan/user/service/protobuf/enumeration/a;->b()Lcom/google/protobuf/Descriptors$FileDescriptor;

    .line 152
    .line 153
    .line 154
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
    sget-object v0, Lcom/wufan/user/service/protobuf/MessageCloudGamingOrderRequest;->a:Lcom/google/protobuf/Descriptors$Descriptor;

    .line 2
    .line 3
    return-object v0
.end method

.method static synthetic b()Lcom/google/protobuf/GeneratedMessageV3$FieldAccessorTable;
    .locals 1

    .line 1
    sget-object v0, Lcom/wufan/user/service/protobuf/MessageCloudGamingOrderRequest;->b:Lcom/google/protobuf/GeneratedMessageV3$FieldAccessorTable;

    .line 2
    .line 3
    return-object v0
.end method

.method static synthetic c()Lcom/google/protobuf/Descriptors$Descriptor;
    .locals 1

    .line 1
    sget-object v0, Lcom/wufan/user/service/protobuf/MessageCloudGamingOrderRequest;->c:Lcom/google/protobuf/Descriptors$Descriptor;

    .line 2
    .line 3
    return-object v0
.end method

.method static synthetic d()Lcom/google/protobuf/GeneratedMessageV3$FieldAccessorTable;
    .locals 1

    .line 1
    sget-object v0, Lcom/wufan/user/service/protobuf/MessageCloudGamingOrderRequest;->d:Lcom/google/protobuf/GeneratedMessageV3$FieldAccessorTable;

    .line 2
    .line 3
    return-object v0
.end method

.method static synthetic e()Lcom/google/protobuf/Descriptors$Descriptor;
    .locals 1

    .line 1
    sget-object v0, Lcom/wufan/user/service/protobuf/MessageCloudGamingOrderRequest;->e:Lcom/google/protobuf/Descriptors$Descriptor;

    .line 2
    .line 3
    return-object v0
.end method

.method static synthetic f()Lcom/google/protobuf/GeneratedMessageV3$FieldAccessorTable;
    .locals 1

    .line 1
    sget-object v0, Lcom/wufan/user/service/protobuf/MessageCloudGamingOrderRequest;->f:Lcom/google/protobuf/GeneratedMessageV3$FieldAccessorTable;

    .line 2
    .line 3
    return-object v0
.end method

.method static synthetic g(Lcom/google/protobuf/Descriptors$FileDescriptor;)Lcom/google/protobuf/Descriptors$FileDescriptor;
    .locals 0

    .line 1
    sput-object p0, Lcom/wufan/user/service/protobuf/MessageCloudGamingOrderRequest;->g:Lcom/google/protobuf/Descriptors$FileDescriptor;

    .line 2
    .line 3
    return-object p0
.end method

.method public static h()Lcom/google/protobuf/Descriptors$FileDescriptor;
    .locals 1

    .line 1
    sget-object v0, Lcom/wufan/user/service/protobuf/MessageCloudGamingOrderRequest;->g:Lcom/google/protobuf/Descriptors$FileDescriptor;

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
    invoke-static {p0}, Lcom/wufan/user/service/protobuf/MessageCloudGamingOrderRequest;->j(Lcom/google/protobuf/ExtensionRegistryLite;)V

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
