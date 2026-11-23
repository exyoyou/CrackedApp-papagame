.class public final Lcom/wufan/user/service/protobuf/MessageCloudGamingServerListResponse$LineList;
.super Lcom/google/protobuf/GeneratedMessageV3;
.source "SourceFile"

# interfaces
.implements Lcom/wufan/user/service/protobuf/MessageCloudGamingServerListResponse$b;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/wufan/user/service/protobuf/MessageCloudGamingServerListResponse;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "LineList"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/wufan/user/service/protobuf/MessageCloudGamingServerListResponse$LineList$b;
    }
.end annotation


# static fields
.field public static final CURRENTHSNTOTAL_FIELD_NUMBER:I = 0x3

.field public static final CURRENTINSERVERNUM_FIELD_NUMBER:I = 0x4

.field private static final DEFAULT_INSTANCE:Lcom/wufan/user/service/protobuf/MessageCloudGamingServerListResponse$LineList;

.field public static final ISVIP_FIELD_NUMBER:I = 0x5

.field public static final K_FIELD_NUMBER:I = 0x7

.field private static final PARSER:Lcom/google/protobuf/Parser;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/protobuf/Parser<",
            "Lcom/wufan/user/service/protobuf/MessageCloudGamingServerListResponse$LineList;",
            ">;"
        }
    .end annotation
.end field

.field public static final SERVERLINENUM_FIELD_NUMBER:I = 0x1

.field public static final SERVERNAME_FIELD_NUMBER:I = 0x2

.field public static final STATE_FIELD_NUMBER:I = 0x6

.field public static final TIMEOUT_FIELD_NUMBER:I = 0x9

.field public static final VIDEOCODERATETITLE_FIELD_NUMBER:I = 0x8

.field private static final serialVersionUID:J


# instance fields
.field private currentHsnTotal_:I

.field private currentInServerNum_:I

.field private isVip_:Z

.field private volatile k_:Ljava/lang/Object;

.field private memoizedIsInitialized:B

.field private volatile serverLineNum_:Ljava/lang/Object;

.field private volatile serverName_:Ljava/lang/Object;

.field private state_:I

.field private timeOut_:I

.field private volatile videoCodeRateTitle_:Ljava/lang/Object;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 1
    new-instance v0, Lcom/wufan/user/service/protobuf/MessageCloudGamingServerListResponse$LineList;

    .line 2
    .line 3
    invoke-direct {v0}, Lcom/wufan/user/service/protobuf/MessageCloudGamingServerListResponse$LineList;-><init>()V

    .line 4
    .line 5
    .line 6
    sput-object v0, Lcom/wufan/user/service/protobuf/MessageCloudGamingServerListResponse$LineList;->DEFAULT_INSTANCE:Lcom/wufan/user/service/protobuf/MessageCloudGamingServerListResponse$LineList;

    .line 7
    .line 8
    new-instance v0, Lcom/wufan/user/service/protobuf/MessageCloudGamingServerListResponse$LineList$a;

    .line 9
    .line 10
    invoke-direct {v0}, Lcom/wufan/user/service/protobuf/MessageCloudGamingServerListResponse$LineList$a;-><init>()V

    .line 11
    .line 12
    .line 13
    sput-object v0, Lcom/wufan/user/service/protobuf/MessageCloudGamingServerListResponse$LineList;->PARSER:Lcom/google/protobuf/Parser;

    .line 14
    .line 15
    return-void
.end method

.method private constructor <init>()V
    .locals 2

    .line 5
    invoke-direct {p0}, Lcom/google/protobuf/GeneratedMessageV3;-><init>()V

    const/4 v0, -0x1

    .line 6
    iput-byte v0, p0, Lcom/wufan/user/service/protobuf/MessageCloudGamingServerListResponse$LineList;->memoizedIsInitialized:B

    const-string v0, ""

    .line 7
    iput-object v0, p0, Lcom/wufan/user/service/protobuf/MessageCloudGamingServerListResponse$LineList;->serverLineNum_:Ljava/lang/Object;

    .line 8
    iput-object v0, p0, Lcom/wufan/user/service/protobuf/MessageCloudGamingServerListResponse$LineList;->serverName_:Ljava/lang/Object;

    const/4 v1, 0x0

    .line 9
    iput v1, p0, Lcom/wufan/user/service/protobuf/MessageCloudGamingServerListResponse$LineList;->state_:I

    .line 10
    iput-object v0, p0, Lcom/wufan/user/service/protobuf/MessageCloudGamingServerListResponse$LineList;->k_:Ljava/lang/Object;

    .line 11
    iput-object v0, p0, Lcom/wufan/user/service/protobuf/MessageCloudGamingServerListResponse$LineList;->videoCodeRateTitle_:Ljava/lang/Object;

    return-void
.end method

.method private constructor <init>(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)V
    .locals 5
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "input",
            "extensionRegistry"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .line 12
    invoke-direct {p0}, Lcom/wufan/user/service/protobuf/MessageCloudGamingServerListResponse$LineList;-><init>()V

    .line 13
    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 14
    invoke-static {}, Lcom/google/protobuf/UnknownFieldSet;->newBuilder()Lcom/google/protobuf/UnknownFieldSet$Builder;

    move-result-object v0

    const/4 v1, 0x0

    :cond_0
    :goto_0
    if-nez v1, :cond_b

    .line 15
    :try_start_0
    invoke-virtual {p1}, Lcom/google/protobuf/CodedInputStream;->readTag()I

    move-result v2

    const/4 v3, 0x1

    if-eqz v2, :cond_a

    const/16 v4, 0xa

    if-eq v2, v4, :cond_9

    const/16 v4, 0x12

    if-eq v2, v4, :cond_8

    const/16 v4, 0x18

    if-eq v2, v4, :cond_7

    const/16 v4, 0x20

    if-eq v2, v4, :cond_6

    const/16 v4, 0x28

    if-eq v2, v4, :cond_5

    const/16 v4, 0x30

    if-eq v2, v4, :cond_4

    const/16 v4, 0x3a

    if-eq v2, v4, :cond_3

    const/16 v4, 0x42

    if-eq v2, v4, :cond_2

    const/16 v4, 0x48

    if-eq v2, v4, :cond_1

    .line 16
    invoke-virtual {p0, p1, v0, p2, v2}, Lcom/google/protobuf/GeneratedMessageV3;->parseUnknownField(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/UnknownFieldSet$Builder;Lcom/google/protobuf/ExtensionRegistryLite;I)Z

    move-result v2

    if-nez v2, :cond_0

    goto :goto_1

    .line 17
    :cond_1
    invoke-virtual {p1}, Lcom/google/protobuf/CodedInputStream;->readInt32()I

    move-result v2

    iput v2, p0, Lcom/wufan/user/service/protobuf/MessageCloudGamingServerListResponse$LineList;->timeOut_:I

    goto :goto_0

    .line 18
    :cond_2
    invoke-virtual {p1}, Lcom/google/protobuf/CodedInputStream;->readStringRequireUtf8()Ljava/lang/String;

    move-result-object v2

    .line 19
    iput-object v2, p0, Lcom/wufan/user/service/protobuf/MessageCloudGamingServerListResponse$LineList;->videoCodeRateTitle_:Ljava/lang/Object;

    goto :goto_0

    .line 20
    :cond_3
    invoke-virtual {p1}, Lcom/google/protobuf/CodedInputStream;->readStringRequireUtf8()Ljava/lang/String;

    move-result-object v2

    .line 21
    iput-object v2, p0, Lcom/wufan/user/service/protobuf/MessageCloudGamingServerListResponse$LineList;->k_:Ljava/lang/Object;

    goto :goto_0

    .line 22
    :cond_4
    invoke-virtual {p1}, Lcom/google/protobuf/CodedInputStream;->readEnum()I

    move-result v2

    .line 23
    iput v2, p0, Lcom/wufan/user/service/protobuf/MessageCloudGamingServerListResponse$LineList;->state_:I

    goto :goto_0

    .line 24
    :cond_5
    invoke-virtual {p1}, Lcom/google/protobuf/CodedInputStream;->readBool()Z

    move-result v2

    iput-boolean v2, p0, Lcom/wufan/user/service/protobuf/MessageCloudGamingServerListResponse$LineList;->isVip_:Z

    goto :goto_0

    .line 25
    :cond_6
    invoke-virtual {p1}, Lcom/google/protobuf/CodedInputStream;->readInt32()I

    move-result v2

    iput v2, p0, Lcom/wufan/user/service/protobuf/MessageCloudGamingServerListResponse$LineList;->currentInServerNum_:I

    goto :goto_0

    .line 26
    :cond_7
    invoke-virtual {p1}, Lcom/google/protobuf/CodedInputStream;->readInt32()I

    move-result v2

    iput v2, p0, Lcom/wufan/user/service/protobuf/MessageCloudGamingServerListResponse$LineList;->currentHsnTotal_:I

    goto :goto_0

    .line 27
    :cond_8
    invoke-virtual {p1}, Lcom/google/protobuf/CodedInputStream;->readStringRequireUtf8()Ljava/lang/String;

    move-result-object v2

    .line 28
    iput-object v2, p0, Lcom/wufan/user/service/protobuf/MessageCloudGamingServerListResponse$LineList;->serverName_:Ljava/lang/Object;

    goto :goto_0

    .line 29
    :cond_9
    invoke-virtual {p1}, Lcom/google/protobuf/CodedInputStream;->readStringRequireUtf8()Ljava/lang/String;

    move-result-object v2

    .line 30
    iput-object v2, p0, Lcom/wufan/user/service/protobuf/MessageCloudGamingServerListResponse$LineList;->serverLineNum_:Ljava/lang/Object;
    :try_end_0
    .catch Lcom/google/protobuf/InvalidProtocolBufferException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :cond_a
    :goto_1
    const/4 v1, 0x1

    goto :goto_0

    :catchall_0
    move-exception p1

    goto :goto_2

    :catch_0
    move-exception p1

    .line 31
    :try_start_1
    new-instance p2, Lcom/google/protobuf/InvalidProtocolBufferException;

    invoke-direct {p2, p1}, Lcom/google/protobuf/InvalidProtocolBufferException;-><init>(Ljava/io/IOException;)V

    .line 32
    invoke-virtual {p2, p0}, Lcom/google/protobuf/InvalidProtocolBufferException;->setUnfinishedMessage(Lcom/google/protobuf/MessageLite;)Lcom/google/protobuf/InvalidProtocolBufferException;

    move-result-object p1

    throw p1

    :catch_1
    move-exception p1

    .line 33
    invoke-virtual {p1, p0}, Lcom/google/protobuf/InvalidProtocolBufferException;->setUnfinishedMessage(Lcom/google/protobuf/MessageLite;)Lcom/google/protobuf/InvalidProtocolBufferException;

    move-result-object p1

    throw p1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 34
    :goto_2
    invoke-virtual {v0}, Lcom/google/protobuf/UnknownFieldSet$Builder;->build()Lcom/google/protobuf/UnknownFieldSet;

    move-result-object p2

    iput-object p2, p0, Lcom/google/protobuf/GeneratedMessageV3;->unknownFields:Lcom/google/protobuf/UnknownFieldSet;

    .line 35
    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageV3;->makeExtensionsImmutable()V

    .line 36
    throw p1

    .line 37
    :cond_b
    invoke-virtual {v0}, Lcom/google/protobuf/UnknownFieldSet$Builder;->build()Lcom/google/protobuf/UnknownFieldSet;

    move-result-object p1

    iput-object p1, p0, Lcom/google/protobuf/GeneratedMessageV3;->unknownFields:Lcom/google/protobuf/UnknownFieldSet;

    .line 38
    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageV3;->makeExtensionsImmutable()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;Lcom/wufan/user/service/protobuf/MessageCloudGamingServerListResponse$a;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .line 1
    invoke-direct {p0, p1, p2}, Lcom/wufan/user/service/protobuf/MessageCloudGamingServerListResponse$LineList;-><init>(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)V

    return-void
.end method

.method private constructor <init>(Lcom/google/protobuf/GeneratedMessageV3$Builder;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "builder"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/protobuf/GeneratedMessageV3$Builder<",
            "*>;)V"
        }
    .end annotation

    .line 3
    invoke-direct {p0, p1}, Lcom/google/protobuf/GeneratedMessageV3;-><init>(Lcom/google/protobuf/GeneratedMessageV3$Builder;)V

    const/4 p1, -0x1

    .line 4
    iput-byte p1, p0, Lcom/wufan/user/service/protobuf/MessageCloudGamingServerListResponse$LineList;->memoizedIsInitialized:B

    return-void
.end method

.method synthetic constructor <init>(Lcom/google/protobuf/GeneratedMessageV3$Builder;Lcom/wufan/user/service/protobuf/MessageCloudGamingServerListResponse$a;)V
    .locals 0

    .line 2
    invoke-direct {p0, p1}, Lcom/wufan/user/service/protobuf/MessageCloudGamingServerListResponse$LineList;-><init>(Lcom/google/protobuf/GeneratedMessageV3$Builder;)V

    return-void
.end method

.method static synthetic access$3200()Z
    .locals 1

    .line 1
    sget-boolean v0, Lcom/google/protobuf/GeneratedMessageV3;->alwaysUseFieldBuilders:Z

    .line 2
    .line 3
    return v0
.end method

.method static synthetic access$3400(Lcom/wufan/user/service/protobuf/MessageCloudGamingServerListResponse$LineList;)Ljava/lang/Object;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/wufan/user/service/protobuf/MessageCloudGamingServerListResponse$LineList;->serverLineNum_:Ljava/lang/Object;

    .line 2
    .line 3
    return-object p0
.end method

.method static synthetic access$3402(Lcom/wufan/user/service/protobuf/MessageCloudGamingServerListResponse$LineList;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/wufan/user/service/protobuf/MessageCloudGamingServerListResponse$LineList;->serverLineNum_:Ljava/lang/Object;

    .line 2
    .line 3
    return-object p1
.end method

.method static synthetic access$3500(Lcom/wufan/user/service/protobuf/MessageCloudGamingServerListResponse$LineList;)Ljava/lang/Object;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/wufan/user/service/protobuf/MessageCloudGamingServerListResponse$LineList;->serverName_:Ljava/lang/Object;

    .line 2
    .line 3
    return-object p0
.end method

.method static synthetic access$3502(Lcom/wufan/user/service/protobuf/MessageCloudGamingServerListResponse$LineList;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/wufan/user/service/protobuf/MessageCloudGamingServerListResponse$LineList;->serverName_:Ljava/lang/Object;

    .line 2
    .line 3
    return-object p1
.end method

.method static synthetic access$3602(Lcom/wufan/user/service/protobuf/MessageCloudGamingServerListResponse$LineList;I)I
    .locals 0

    .line 1
    iput p1, p0, Lcom/wufan/user/service/protobuf/MessageCloudGamingServerListResponse$LineList;->currentHsnTotal_:I

    .line 2
    .line 3
    return p1
.end method

.method static synthetic access$3702(Lcom/wufan/user/service/protobuf/MessageCloudGamingServerListResponse$LineList;I)I
    .locals 0

    .line 1
    iput p1, p0, Lcom/wufan/user/service/protobuf/MessageCloudGamingServerListResponse$LineList;->currentInServerNum_:I

    .line 2
    .line 3
    return p1
.end method

.method static synthetic access$3802(Lcom/wufan/user/service/protobuf/MessageCloudGamingServerListResponse$LineList;Z)Z
    .locals 0

    .line 1
    iput-boolean p1, p0, Lcom/wufan/user/service/protobuf/MessageCloudGamingServerListResponse$LineList;->isVip_:Z

    .line 2
    .line 3
    return p1
.end method

.method static synthetic access$3900(Lcom/wufan/user/service/protobuf/MessageCloudGamingServerListResponse$LineList;)I
    .locals 0

    .line 1
    iget p0, p0, Lcom/wufan/user/service/protobuf/MessageCloudGamingServerListResponse$LineList;->state_:I

    .line 2
    .line 3
    return p0
.end method

.method static synthetic access$3902(Lcom/wufan/user/service/protobuf/MessageCloudGamingServerListResponse$LineList;I)I
    .locals 0

    .line 1
    iput p1, p0, Lcom/wufan/user/service/protobuf/MessageCloudGamingServerListResponse$LineList;->state_:I

    .line 2
    .line 3
    return p1
.end method

.method static synthetic access$4000(Lcom/wufan/user/service/protobuf/MessageCloudGamingServerListResponse$LineList;)Ljava/lang/Object;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/wufan/user/service/protobuf/MessageCloudGamingServerListResponse$LineList;->k_:Ljava/lang/Object;

    .line 2
    .line 3
    return-object p0
.end method

.method static synthetic access$4002(Lcom/wufan/user/service/protobuf/MessageCloudGamingServerListResponse$LineList;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/wufan/user/service/protobuf/MessageCloudGamingServerListResponse$LineList;->k_:Ljava/lang/Object;

    .line 2
    .line 3
    return-object p1
.end method

.method static synthetic access$4100(Lcom/wufan/user/service/protobuf/MessageCloudGamingServerListResponse$LineList;)Ljava/lang/Object;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/wufan/user/service/protobuf/MessageCloudGamingServerListResponse$LineList;->videoCodeRateTitle_:Ljava/lang/Object;

    .line 2
    .line 3
    return-object p0
.end method

.method static synthetic access$4102(Lcom/wufan/user/service/protobuf/MessageCloudGamingServerListResponse$LineList;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/wufan/user/service/protobuf/MessageCloudGamingServerListResponse$LineList;->videoCodeRateTitle_:Ljava/lang/Object;

    .line 2
    .line 3
    return-object p1
.end method

.method static synthetic access$4202(Lcom/wufan/user/service/protobuf/MessageCloudGamingServerListResponse$LineList;I)I
    .locals 0

    .line 1
    iput p1, p0, Lcom/wufan/user/service/protobuf/MessageCloudGamingServerListResponse$LineList;->timeOut_:I

    .line 2
    .line 3
    return p1
.end method

.method static synthetic access$4300(Lcom/wufan/user/service/protobuf/MessageCloudGamingServerListResponse$LineList;)Lcom/google/protobuf/UnknownFieldSet;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/google/protobuf/GeneratedMessageV3;->unknownFields:Lcom/google/protobuf/UnknownFieldSet;

    .line 2
    .line 3
    return-object p0
.end method

.method static synthetic access$4400()Lcom/google/protobuf/Parser;
    .locals 1

    .line 1
    sget-object v0, Lcom/wufan/user/service/protobuf/MessageCloudGamingServerListResponse$LineList;->PARSER:Lcom/google/protobuf/Parser;

    .line 2
    .line 3
    return-object v0
.end method

.method static synthetic access$4500(Lcom/google/protobuf/ByteString;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalArgumentException;
        }
    .end annotation

    .line 1
    invoke-static {p0}, Lcom/google/protobuf/AbstractMessageLite;->checkByteStringIsUtf8(Lcom/google/protobuf/ByteString;)V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method static synthetic access$4600(Lcom/google/protobuf/ByteString;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalArgumentException;
        }
    .end annotation

    .line 1
    invoke-static {p0}, Lcom/google/protobuf/AbstractMessageLite;->checkByteStringIsUtf8(Lcom/google/protobuf/ByteString;)V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method static synthetic access$4700(Lcom/google/protobuf/ByteString;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalArgumentException;
        }
    .end annotation

    .line 1
    invoke-static {p0}, Lcom/google/protobuf/AbstractMessageLite;->checkByteStringIsUtf8(Lcom/google/protobuf/ByteString;)V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method static synthetic access$4800(Lcom/google/protobuf/ByteString;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalArgumentException;
        }
    .end annotation

    .line 1
    invoke-static {p0}, Lcom/google/protobuf/AbstractMessageLite;->checkByteStringIsUtf8(Lcom/google/protobuf/ByteString;)V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method public static getDefaultInstance()Lcom/wufan/user/service/protobuf/MessageCloudGamingServerListResponse$LineList;
    .locals 1

    .line 1
    sget-object v0, Lcom/wufan/user/service/protobuf/MessageCloudGamingServerListResponse$LineList;->DEFAULT_INSTANCE:Lcom/wufan/user/service/protobuf/MessageCloudGamingServerListResponse$LineList;

    .line 2
    .line 3
    return-object v0
.end method

.method public static final getDescriptor()Lcom/google/protobuf/Descriptors$Descriptor;
    .locals 1

    .line 1
    invoke-static {}, Lcom/wufan/user/service/protobuf/MessageCloudGamingServerListResponse;->e()Lcom/google/protobuf/Descriptors$Descriptor;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    return-object v0
.end method

.method public static newBuilder()Lcom/wufan/user/service/protobuf/MessageCloudGamingServerListResponse$LineList$b;
    .locals 1

    .line 1
    sget-object v0, Lcom/wufan/user/service/protobuf/MessageCloudGamingServerListResponse$LineList;->DEFAULT_INSTANCE:Lcom/wufan/user/service/protobuf/MessageCloudGamingServerListResponse$LineList;

    invoke-virtual {v0}, Lcom/wufan/user/service/protobuf/MessageCloudGamingServerListResponse$LineList;->toBuilder()Lcom/wufan/user/service/protobuf/MessageCloudGamingServerListResponse$LineList$b;

    move-result-object v0

    return-object v0
.end method

.method public static newBuilder(Lcom/wufan/user/service/protobuf/MessageCloudGamingServerListResponse$LineList;)Lcom/wufan/user/service/protobuf/MessageCloudGamingServerListResponse$LineList$b;
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "prototype"
        }
    .end annotation

    .line 2
    sget-object v0, Lcom/wufan/user/service/protobuf/MessageCloudGamingServerListResponse$LineList;->DEFAULT_INSTANCE:Lcom/wufan/user/service/protobuf/MessageCloudGamingServerListResponse$LineList;

    invoke-virtual {v0}, Lcom/wufan/user/service/protobuf/MessageCloudGamingServerListResponse$LineList;->toBuilder()Lcom/wufan/user/service/protobuf/MessageCloudGamingServerListResponse$LineList$b;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/wufan/user/service/protobuf/MessageCloudGamingServerListResponse$LineList$b;->mergeFrom(Lcom/wufan/user/service/protobuf/MessageCloudGamingServerListResponse$LineList;)Lcom/wufan/user/service/protobuf/MessageCloudGamingServerListResponse$LineList$b;

    move-result-object p0

    return-object p0
.end method

.method public static parseDelimitedFrom(Ljava/io/InputStream;)Lcom/wufan/user/service/protobuf/MessageCloudGamingServerListResponse$LineList;
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "input"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    sget-object v0, Lcom/wufan/user/service/protobuf/MessageCloudGamingServerListResponse$LineList;->PARSER:Lcom/google/protobuf/Parser;

    .line 2
    invoke-static {v0, p0}, Lcom/google/protobuf/GeneratedMessageV3;->parseDelimitedWithIOException(Lcom/google/protobuf/Parser;Ljava/io/InputStream;)Lcom/google/protobuf/Message;

    move-result-object p0

    check-cast p0, Lcom/wufan/user/service/protobuf/MessageCloudGamingServerListResponse$LineList;

    return-object p0
.end method

.method public static parseDelimitedFrom(Ljava/io/InputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/wufan/user/service/protobuf/MessageCloudGamingServerListResponse$LineList;
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "input",
            "extensionRegistry"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 3
    sget-object v0, Lcom/wufan/user/service/protobuf/MessageCloudGamingServerListResponse$LineList;->PARSER:Lcom/google/protobuf/Parser;

    .line 4
    invoke-static {v0, p0, p1}, Lcom/google/protobuf/GeneratedMessageV3;->parseDelimitedWithIOException(Lcom/google/protobuf/Parser;Ljava/io/InputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/Message;

    move-result-object p0

    check-cast p0, Lcom/wufan/user/service/protobuf/MessageCloudGamingServerListResponse$LineList;

    return-object p0
.end method

.method public static parseFrom(Lcom/google/protobuf/ByteString;)Lcom/wufan/user/service/protobuf/MessageCloudGamingServerListResponse$LineList;
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "data"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .line 3
    sget-object v0, Lcom/wufan/user/service/protobuf/MessageCloudGamingServerListResponse$LineList;->PARSER:Lcom/google/protobuf/Parser;

    invoke-interface {v0, p0}, Lcom/google/protobuf/Parser;->parseFrom(Lcom/google/protobuf/ByteString;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/wufan/user/service/protobuf/MessageCloudGamingServerListResponse$LineList;

    return-object p0
.end method

.method public static parseFrom(Lcom/google/protobuf/ByteString;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/wufan/user/service/protobuf/MessageCloudGamingServerListResponse$LineList;
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "data",
            "extensionRegistry"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .line 4
    sget-object v0, Lcom/wufan/user/service/protobuf/MessageCloudGamingServerListResponse$LineList;->PARSER:Lcom/google/protobuf/Parser;

    invoke-interface {v0, p0, p1}, Lcom/google/protobuf/Parser;->parseFrom(Lcom/google/protobuf/ByteString;Lcom/google/protobuf/ExtensionRegistryLite;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/wufan/user/service/protobuf/MessageCloudGamingServerListResponse$LineList;

    return-object p0
.end method

.method public static parseFrom(Lcom/google/protobuf/CodedInputStream;)Lcom/wufan/user/service/protobuf/MessageCloudGamingServerListResponse$LineList;
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "input"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 11
    sget-object v0, Lcom/wufan/user/service/protobuf/MessageCloudGamingServerListResponse$LineList;->PARSER:Lcom/google/protobuf/Parser;

    .line 12
    invoke-static {v0, p0}, Lcom/google/protobuf/GeneratedMessageV3;->parseWithIOException(Lcom/google/protobuf/Parser;Lcom/google/protobuf/CodedInputStream;)Lcom/google/protobuf/Message;

    move-result-object p0

    check-cast p0, Lcom/wufan/user/service/protobuf/MessageCloudGamingServerListResponse$LineList;

    return-object p0
.end method

.method public static parseFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/wufan/user/service/protobuf/MessageCloudGamingServerListResponse$LineList;
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "input",
            "extensionRegistry"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 13
    sget-object v0, Lcom/wufan/user/service/protobuf/MessageCloudGamingServerListResponse$LineList;->PARSER:Lcom/google/protobuf/Parser;

    .line 14
    invoke-static {v0, p0, p1}, Lcom/google/protobuf/GeneratedMessageV3;->parseWithIOException(Lcom/google/protobuf/Parser;Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/Message;

    move-result-object p0

    check-cast p0, Lcom/wufan/user/service/protobuf/MessageCloudGamingServerListResponse$LineList;

    return-object p0
.end method

.method public static parseFrom(Ljava/io/InputStream;)Lcom/wufan/user/service/protobuf/MessageCloudGamingServerListResponse$LineList;
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "input"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 7
    sget-object v0, Lcom/wufan/user/service/protobuf/MessageCloudGamingServerListResponse$LineList;->PARSER:Lcom/google/protobuf/Parser;

    .line 8
    invoke-static {v0, p0}, Lcom/google/protobuf/GeneratedMessageV3;->parseWithIOException(Lcom/google/protobuf/Parser;Ljava/io/InputStream;)Lcom/google/protobuf/Message;

    move-result-object p0

    check-cast p0, Lcom/wufan/user/service/protobuf/MessageCloudGamingServerListResponse$LineList;

    return-object p0
.end method

.method public static parseFrom(Ljava/io/InputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/wufan/user/service/protobuf/MessageCloudGamingServerListResponse$LineList;
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "input",
            "extensionRegistry"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 9
    sget-object v0, Lcom/wufan/user/service/protobuf/MessageCloudGamingServerListResponse$LineList;->PARSER:Lcom/google/protobuf/Parser;

    .line 10
    invoke-static {v0, p0, p1}, Lcom/google/protobuf/GeneratedMessageV3;->parseWithIOException(Lcom/google/protobuf/Parser;Ljava/io/InputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/Message;

    move-result-object p0

    check-cast p0, Lcom/wufan/user/service/protobuf/MessageCloudGamingServerListResponse$LineList;

    return-object p0
.end method

.method public static parseFrom(Ljava/nio/ByteBuffer;)Lcom/wufan/user/service/protobuf/MessageCloudGamingServerListResponse$LineList;
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "data"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .line 1
    sget-object v0, Lcom/wufan/user/service/protobuf/MessageCloudGamingServerListResponse$LineList;->PARSER:Lcom/google/protobuf/Parser;

    invoke-interface {v0, p0}, Lcom/google/protobuf/Parser;->parseFrom(Ljava/nio/ByteBuffer;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/wufan/user/service/protobuf/MessageCloudGamingServerListResponse$LineList;

    return-object p0
.end method

.method public static parseFrom(Ljava/nio/ByteBuffer;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/wufan/user/service/protobuf/MessageCloudGamingServerListResponse$LineList;
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "data",
            "extensionRegistry"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .line 2
    sget-object v0, Lcom/wufan/user/service/protobuf/MessageCloudGamingServerListResponse$LineList;->PARSER:Lcom/google/protobuf/Parser;

    invoke-interface {v0, p0, p1}, Lcom/google/protobuf/Parser;->parseFrom(Ljava/nio/ByteBuffer;Lcom/google/protobuf/ExtensionRegistryLite;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/wufan/user/service/protobuf/MessageCloudGamingServerListResponse$LineList;

    return-object p0
.end method

.method public static parseFrom([B)Lcom/wufan/user/service/protobuf/MessageCloudGamingServerListResponse$LineList;
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "data"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .line 5
    sget-object v0, Lcom/wufan/user/service/protobuf/MessageCloudGamingServerListResponse$LineList;->PARSER:Lcom/google/protobuf/Parser;

    invoke-interface {v0, p0}, Lcom/google/protobuf/Parser;->parseFrom([B)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/wufan/user/service/protobuf/MessageCloudGamingServerListResponse$LineList;

    return-object p0
.end method

.method public static parseFrom([BLcom/google/protobuf/ExtensionRegistryLite;)Lcom/wufan/user/service/protobuf/MessageCloudGamingServerListResponse$LineList;
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "data",
            "extensionRegistry"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .line 6
    sget-object v0, Lcom/wufan/user/service/protobuf/MessageCloudGamingServerListResponse$LineList;->PARSER:Lcom/google/protobuf/Parser;

    invoke-interface {v0, p0, p1}, Lcom/google/protobuf/Parser;->parseFrom([BLcom/google/protobuf/ExtensionRegistryLite;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/wufan/user/service/protobuf/MessageCloudGamingServerListResponse$LineList;

    return-object p0
.end method

.method public static parser()Lcom/google/protobuf/Parser;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/google/protobuf/Parser<",
            "Lcom/wufan/user/service/protobuf/MessageCloudGamingServerListResponse$LineList;",
            ">;"
        }
    .end annotation

    .line 1
    sget-object v0, Lcom/wufan/user/service/protobuf/MessageCloudGamingServerListResponse$LineList;->PARSER:Lcom/google/protobuf/Parser;

    .line 2
    .line 3
    return-object v0
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 4
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x10
        }
        names = {
            "obj"
        }
    .end annotation

    .line 1
    const/4 v0, 0x1

    .line 2
    if-ne p1, p0, :cond_0

    .line 3
    .line 4
    return v0

    .line 5
    :cond_0
    instance-of v1, p1, Lcom/wufan/user/service/protobuf/MessageCloudGamingServerListResponse$LineList;

    .line 6
    .line 7
    if-nez v1, :cond_1

    .line 8
    .line 9
    invoke-super {p0, p1}, Lcom/google/protobuf/AbstractMessage;->equals(Ljava/lang/Object;)Z

    .line 10
    .line 11
    .line 12
    move-result p1

    .line 13
    return p1

    .line 14
    :cond_1
    check-cast p1, Lcom/wufan/user/service/protobuf/MessageCloudGamingServerListResponse$LineList;

    .line 15
    .line 16
    invoke-virtual {p0}, Lcom/wufan/user/service/protobuf/MessageCloudGamingServerListResponse$LineList;->getServerLineNum()Ljava/lang/String;

    .line 17
    .line 18
    .line 19
    move-result-object v1

    .line 20
    invoke-virtual {p1}, Lcom/wufan/user/service/protobuf/MessageCloudGamingServerListResponse$LineList;->getServerLineNum()Ljava/lang/String;

    .line 21
    .line 22
    .line 23
    move-result-object v2

    .line 24
    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 25
    .line 26
    .line 27
    move-result v1

    .line 28
    const/4 v2, 0x0

    .line 29
    if-nez v1, :cond_2

    .line 30
    .line 31
    return v2

    .line 32
    :cond_2
    invoke-virtual {p0}, Lcom/wufan/user/service/protobuf/MessageCloudGamingServerListResponse$LineList;->getServerName()Ljava/lang/String;

    .line 33
    .line 34
    .line 35
    move-result-object v1

    .line 36
    invoke-virtual {p1}, Lcom/wufan/user/service/protobuf/MessageCloudGamingServerListResponse$LineList;->getServerName()Ljava/lang/String;

    .line 37
    .line 38
    .line 39
    move-result-object v3

    .line 40
    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 41
    .line 42
    .line 43
    move-result v1

    .line 44
    if-nez v1, :cond_3

    .line 45
    .line 46
    return v2

    .line 47
    :cond_3
    invoke-virtual {p0}, Lcom/wufan/user/service/protobuf/MessageCloudGamingServerListResponse$LineList;->getCurrentHsnTotal()I

    .line 48
    .line 49
    .line 50
    move-result v1

    .line 51
    invoke-virtual {p1}, Lcom/wufan/user/service/protobuf/MessageCloudGamingServerListResponse$LineList;->getCurrentHsnTotal()I

    .line 52
    .line 53
    .line 54
    move-result v3

    .line 55
    if-eq v1, v3, :cond_4

    .line 56
    .line 57
    return v2

    .line 58
    :cond_4
    invoke-virtual {p0}, Lcom/wufan/user/service/protobuf/MessageCloudGamingServerListResponse$LineList;->getCurrentInServerNum()I

    .line 59
    .line 60
    .line 61
    move-result v1

    .line 62
    invoke-virtual {p1}, Lcom/wufan/user/service/protobuf/MessageCloudGamingServerListResponse$LineList;->getCurrentInServerNum()I

    .line 63
    .line 64
    .line 65
    move-result v3

    .line 66
    if-eq v1, v3, :cond_5

    .line 67
    .line 68
    return v2

    .line 69
    :cond_5
    invoke-virtual {p0}, Lcom/wufan/user/service/protobuf/MessageCloudGamingServerListResponse$LineList;->getIsVip()Z

    .line 70
    .line 71
    .line 72
    move-result v1

    .line 73
    invoke-virtual {p1}, Lcom/wufan/user/service/protobuf/MessageCloudGamingServerListResponse$LineList;->getIsVip()Z

    .line 74
    .line 75
    .line 76
    move-result v3

    .line 77
    if-eq v1, v3, :cond_6

    .line 78
    .line 79
    return v2

    .line 80
    :cond_6
    iget v1, p0, Lcom/wufan/user/service/protobuf/MessageCloudGamingServerListResponse$LineList;->state_:I

    .line 81
    .line 82
    iget v3, p1, Lcom/wufan/user/service/protobuf/MessageCloudGamingServerListResponse$LineList;->state_:I

    .line 83
    .line 84
    if-eq v1, v3, :cond_7

    .line 85
    .line 86
    return v2

    .line 87
    :cond_7
    invoke-virtual {p0}, Lcom/wufan/user/service/protobuf/MessageCloudGamingServerListResponse$LineList;->getK()Ljava/lang/String;

    .line 88
    .line 89
    .line 90
    move-result-object v1

    .line 91
    invoke-virtual {p1}, Lcom/wufan/user/service/protobuf/MessageCloudGamingServerListResponse$LineList;->getK()Ljava/lang/String;

    .line 92
    .line 93
    .line 94
    move-result-object v3

    .line 95
    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 96
    .line 97
    .line 98
    move-result v1

    .line 99
    if-nez v1, :cond_8

    .line 100
    .line 101
    return v2

    .line 102
    :cond_8
    invoke-virtual {p0}, Lcom/wufan/user/service/protobuf/MessageCloudGamingServerListResponse$LineList;->getVideoCodeRateTitle()Ljava/lang/String;

    .line 103
    .line 104
    .line 105
    move-result-object v1

    .line 106
    invoke-virtual {p1}, Lcom/wufan/user/service/protobuf/MessageCloudGamingServerListResponse$LineList;->getVideoCodeRateTitle()Ljava/lang/String;

    .line 107
    .line 108
    .line 109
    move-result-object v3

    .line 110
    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 111
    .line 112
    .line 113
    move-result v1

    .line 114
    if-nez v1, :cond_9

    .line 115
    .line 116
    return v2

    .line 117
    :cond_9
    invoke-virtual {p0}, Lcom/wufan/user/service/protobuf/MessageCloudGamingServerListResponse$LineList;->getTimeOut()I

    .line 118
    .line 119
    .line 120
    move-result v1

    .line 121
    invoke-virtual {p1}, Lcom/wufan/user/service/protobuf/MessageCloudGamingServerListResponse$LineList;->getTimeOut()I

    .line 122
    .line 123
    .line 124
    move-result v3

    .line 125
    if-eq v1, v3, :cond_a

    .line 126
    .line 127
    return v2

    .line 128
    :cond_a
    iget-object v1, p0, Lcom/google/protobuf/GeneratedMessageV3;->unknownFields:Lcom/google/protobuf/UnknownFieldSet;

    .line 129
    .line 130
    iget-object p1, p1, Lcom/google/protobuf/GeneratedMessageV3;->unknownFields:Lcom/google/protobuf/UnknownFieldSet;

    .line 131
    .line 132
    invoke-virtual {v1, p1}, Lcom/google/protobuf/UnknownFieldSet;->equals(Ljava/lang/Object;)Z

    .line 133
    .line 134
    .line 135
    move-result p1

    .line 136
    if-nez p1, :cond_b

    .line 137
    .line 138
    return v2

    .line 139
    :cond_b
    return v0
.end method

.method public getCurrentHsnTotal()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/wufan/user/service/protobuf/MessageCloudGamingServerListResponse$LineList;->currentHsnTotal_:I

    .line 2
    .line 3
    return v0
.end method

.method public getCurrentInServerNum()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/wufan/user/service/protobuf/MessageCloudGamingServerListResponse$LineList;->currentInServerNum_:I

    .line 2
    .line 3
    return v0
.end method

.method public bridge synthetic getDefaultInstanceForType()Lcom/google/protobuf/Message;
    .locals 1

    .line 1
    invoke-virtual {p0}, Lcom/wufan/user/service/protobuf/MessageCloudGamingServerListResponse$LineList;->getDefaultInstanceForType()Lcom/wufan/user/service/protobuf/MessageCloudGamingServerListResponse$LineList;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic getDefaultInstanceForType()Lcom/google/protobuf/MessageLite;
    .locals 1

    .line 2
    invoke-virtual {p0}, Lcom/wufan/user/service/protobuf/MessageCloudGamingServerListResponse$LineList;->getDefaultInstanceForType()Lcom/wufan/user/service/protobuf/MessageCloudGamingServerListResponse$LineList;

    move-result-object v0

    return-object v0
.end method

.method public getDefaultInstanceForType()Lcom/wufan/user/service/protobuf/MessageCloudGamingServerListResponse$LineList;
    .locals 1

    .line 3
    sget-object v0, Lcom/wufan/user/service/protobuf/MessageCloudGamingServerListResponse$LineList;->DEFAULT_INSTANCE:Lcom/wufan/user/service/protobuf/MessageCloudGamingServerListResponse$LineList;

    return-object v0
.end method

.method public getIsVip()Z
    .locals 1

    .line 1
    iget-boolean v0, p0, Lcom/wufan/user/service/protobuf/MessageCloudGamingServerListResponse$LineList;->isVip_:Z

    .line 2
    .line 3
    return v0
.end method

.method public getK()Ljava/lang/String;
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/wufan/user/service/protobuf/MessageCloudGamingServerListResponse$LineList;->k_:Ljava/lang/Object;

    .line 2
    .line 3
    instance-of v1, v0, Ljava/lang/String;

    .line 4
    .line 5
    if-eqz v1, :cond_0

    .line 6
    .line 7
    check-cast v0, Ljava/lang/String;

    .line 8
    .line 9
    return-object v0

    .line 10
    :cond_0
    check-cast v0, Lcom/google/protobuf/ByteString;

    .line 11
    .line 12
    invoke-virtual {v0}, Lcom/google/protobuf/ByteString;->toStringUtf8()Ljava/lang/String;

    .line 13
    .line 14
    .line 15
    move-result-object v0

    .line 16
    iput-object v0, p0, Lcom/wufan/user/service/protobuf/MessageCloudGamingServerListResponse$LineList;->k_:Ljava/lang/Object;

    .line 17
    .line 18
    return-object v0
.end method

.method public getKBytes()Lcom/google/protobuf/ByteString;
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/wufan/user/service/protobuf/MessageCloudGamingServerListResponse$LineList;->k_:Ljava/lang/Object;

    .line 2
    .line 3
    instance-of v1, v0, Ljava/lang/String;

    .line 4
    .line 5
    if-eqz v1, :cond_0

    .line 6
    .line 7
    check-cast v0, Ljava/lang/String;

    .line 8
    .line 9
    invoke-static {v0}, Lcom/google/protobuf/ByteString;->copyFromUtf8(Ljava/lang/String;)Lcom/google/protobuf/ByteString;

    .line 10
    .line 11
    .line 12
    move-result-object v0

    .line 13
    iput-object v0, p0, Lcom/wufan/user/service/protobuf/MessageCloudGamingServerListResponse$LineList;->k_:Ljava/lang/Object;

    .line 14
    .line 15
    return-object v0

    .line 16
    :cond_0
    check-cast v0, Lcom/google/protobuf/ByteString;

    .line 17
    .line 18
    return-object v0
.end method

.method public getParserForType()Lcom/google/protobuf/Parser;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/google/protobuf/Parser<",
            "Lcom/wufan/user/service/protobuf/MessageCloudGamingServerListResponse$LineList;",
            ">;"
        }
    .end annotation

    .line 1
    sget-object v0, Lcom/wufan/user/service/protobuf/MessageCloudGamingServerListResponse$LineList;->PARSER:Lcom/google/protobuf/Parser;

    .line 2
    .line 3
    return-object v0
.end method

.method public getSerializedSize()I
    .locals 3

    .line 1
    iget v0, p0, Lcom/google/protobuf/AbstractMessage;->memoizedSize:I

    .line 2
    .line 3
    const/4 v1, -0x1

    .line 4
    if-eq v0, v1, :cond_0

    .line 5
    .line 6
    return v0

    .line 7
    :cond_0
    invoke-virtual {p0}, Lcom/wufan/user/service/protobuf/MessageCloudGamingServerListResponse$LineList;->getServerLineNumBytes()Lcom/google/protobuf/ByteString;

    .line 8
    .line 9
    .line 10
    move-result-object v0

    .line 11
    invoke-virtual {v0}, Lcom/google/protobuf/ByteString;->isEmpty()Z

    .line 12
    .line 13
    .line 14
    move-result v0

    .line 15
    const/4 v1, 0x0

    .line 16
    if-nez v0, :cond_1

    .line 17
    .line 18
    const/4 v0, 0x1

    .line 19
    iget-object v2, p0, Lcom/wufan/user/service/protobuf/MessageCloudGamingServerListResponse$LineList;->serverLineNum_:Ljava/lang/Object;

    .line 20
    .line 21
    invoke-static {v0, v2}, Lcom/google/protobuf/GeneratedMessageV3;->computeStringSize(ILjava/lang/Object;)I

    .line 22
    .line 23
    .line 24
    move-result v0

    .line 25
    add-int/2addr v1, v0

    .line 26
    :cond_1
    invoke-virtual {p0}, Lcom/wufan/user/service/protobuf/MessageCloudGamingServerListResponse$LineList;->getServerNameBytes()Lcom/google/protobuf/ByteString;

    .line 27
    .line 28
    .line 29
    move-result-object v0

    .line 30
    invoke-virtual {v0}, Lcom/google/protobuf/ByteString;->isEmpty()Z

    .line 31
    .line 32
    .line 33
    move-result v0

    .line 34
    if-nez v0, :cond_2

    .line 35
    .line 36
    const/4 v0, 0x2

    .line 37
    iget-object v2, p0, Lcom/wufan/user/service/protobuf/MessageCloudGamingServerListResponse$LineList;->serverName_:Ljava/lang/Object;

    .line 38
    .line 39
    invoke-static {v0, v2}, Lcom/google/protobuf/GeneratedMessageV3;->computeStringSize(ILjava/lang/Object;)I

    .line 40
    .line 41
    .line 42
    move-result v0

    .line 43
    add-int/2addr v1, v0

    .line 44
    :cond_2
    iget v0, p0, Lcom/wufan/user/service/protobuf/MessageCloudGamingServerListResponse$LineList;->currentHsnTotal_:I

    .line 45
    .line 46
    if-eqz v0, :cond_3

    .line 47
    .line 48
    const/4 v2, 0x3

    .line 49
    invoke-static {v2, v0}, Lcom/google/protobuf/CodedOutputStream;->computeInt32Size(II)I

    .line 50
    .line 51
    .line 52
    move-result v0

    .line 53
    add-int/2addr v1, v0

    .line 54
    :cond_3
    iget v0, p0, Lcom/wufan/user/service/protobuf/MessageCloudGamingServerListResponse$LineList;->currentInServerNum_:I

    .line 55
    .line 56
    if-eqz v0, :cond_4

    .line 57
    .line 58
    const/4 v2, 0x4

    .line 59
    invoke-static {v2, v0}, Lcom/google/protobuf/CodedOutputStream;->computeInt32Size(II)I

    .line 60
    .line 61
    .line 62
    move-result v0

    .line 63
    add-int/2addr v1, v0

    .line 64
    :cond_4
    iget-boolean v0, p0, Lcom/wufan/user/service/protobuf/MessageCloudGamingServerListResponse$LineList;->isVip_:Z

    .line 65
    .line 66
    if-eqz v0, :cond_5

    .line 67
    .line 68
    const/4 v2, 0x5

    .line 69
    invoke-static {v2, v0}, Lcom/google/protobuf/CodedOutputStream;->computeBoolSize(IZ)I

    .line 70
    .line 71
    .line 72
    move-result v0

    .line 73
    add-int/2addr v1, v0

    .line 74
    :cond_5
    iget v0, p0, Lcom/wufan/user/service/protobuf/MessageCloudGamingServerListResponse$LineList;->state_:I

    .line 75
    .line 76
    sget-object v2, Lcom/wufan/user/service/protobuf/enumeration/ServerState;->SERVER_LINE_FULL:Lcom/wufan/user/service/protobuf/enumeration/ServerState;

    .line 77
    .line 78
    invoke-virtual {v2}, Lcom/wufan/user/service/protobuf/enumeration/ServerState;->getNumber()I

    .line 79
    .line 80
    .line 81
    move-result v2

    .line 82
    if-eq v0, v2, :cond_6

    .line 83
    .line 84
    const/4 v0, 0x6

    .line 85
    iget v2, p0, Lcom/wufan/user/service/protobuf/MessageCloudGamingServerListResponse$LineList;->state_:I

    .line 86
    .line 87
    invoke-static {v0, v2}, Lcom/google/protobuf/CodedOutputStream;->computeEnumSize(II)I

    .line 88
    .line 89
    .line 90
    move-result v0

    .line 91
    add-int/2addr v1, v0

    .line 92
    :cond_6
    invoke-virtual {p0}, Lcom/wufan/user/service/protobuf/MessageCloudGamingServerListResponse$LineList;->getKBytes()Lcom/google/protobuf/ByteString;

    .line 93
    .line 94
    .line 95
    move-result-object v0

    .line 96
    invoke-virtual {v0}, Lcom/google/protobuf/ByteString;->isEmpty()Z

    .line 97
    .line 98
    .line 99
    move-result v0

    .line 100
    if-nez v0, :cond_7

    .line 101
    .line 102
    const/4 v0, 0x7

    .line 103
    iget-object v2, p0, Lcom/wufan/user/service/protobuf/MessageCloudGamingServerListResponse$LineList;->k_:Ljava/lang/Object;

    .line 104
    .line 105
    invoke-static {v0, v2}, Lcom/google/protobuf/GeneratedMessageV3;->computeStringSize(ILjava/lang/Object;)I

    .line 106
    .line 107
    .line 108
    move-result v0

    .line 109
    add-int/2addr v1, v0

    .line 110
    :cond_7
    invoke-virtual {p0}, Lcom/wufan/user/service/protobuf/MessageCloudGamingServerListResponse$LineList;->getVideoCodeRateTitleBytes()Lcom/google/protobuf/ByteString;

    .line 111
    .line 112
    .line 113
    move-result-object v0

    .line 114
    invoke-virtual {v0}, Lcom/google/protobuf/ByteString;->isEmpty()Z

    .line 115
    .line 116
    .line 117
    move-result v0

    .line 118
    if-nez v0, :cond_8

    .line 119
    .line 120
    const/16 v0, 0x8

    .line 121
    .line 122
    iget-object v2, p0, Lcom/wufan/user/service/protobuf/MessageCloudGamingServerListResponse$LineList;->videoCodeRateTitle_:Ljava/lang/Object;

    .line 123
    .line 124
    invoke-static {v0, v2}, Lcom/google/protobuf/GeneratedMessageV3;->computeStringSize(ILjava/lang/Object;)I

    .line 125
    .line 126
    .line 127
    move-result v0

    .line 128
    add-int/2addr v1, v0

    .line 129
    :cond_8
    iget v0, p0, Lcom/wufan/user/service/protobuf/MessageCloudGamingServerListResponse$LineList;->timeOut_:I

    .line 130
    .line 131
    if-eqz v0, :cond_9

    .line 132
    .line 133
    const/16 v2, 0x9

    .line 134
    .line 135
    invoke-static {v2, v0}, Lcom/google/protobuf/CodedOutputStream;->computeInt32Size(II)I

    .line 136
    .line 137
    .line 138
    move-result v0

    .line 139
    add-int/2addr v1, v0

    .line 140
    :cond_9
    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageV3;->unknownFields:Lcom/google/protobuf/UnknownFieldSet;

    .line 141
    .line 142
    invoke-virtual {v0}, Lcom/google/protobuf/UnknownFieldSet;->getSerializedSize()I

    .line 143
    .line 144
    .line 145
    move-result v0

    .line 146
    add-int/2addr v1, v0

    .line 147
    iput v1, p0, Lcom/google/protobuf/AbstractMessage;->memoizedSize:I

    .line 148
    .line 149
    return v1
.end method

.method public getServerLineNum()Ljava/lang/String;
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/wufan/user/service/protobuf/MessageCloudGamingServerListResponse$LineList;->serverLineNum_:Ljava/lang/Object;

    .line 2
    .line 3
    instance-of v1, v0, Ljava/lang/String;

    .line 4
    .line 5
    if-eqz v1, :cond_0

    .line 6
    .line 7
    check-cast v0, Ljava/lang/String;

    .line 8
    .line 9
    return-object v0

    .line 10
    :cond_0
    check-cast v0, Lcom/google/protobuf/ByteString;

    .line 11
    .line 12
    invoke-virtual {v0}, Lcom/google/protobuf/ByteString;->toStringUtf8()Ljava/lang/String;

    .line 13
    .line 14
    .line 15
    move-result-object v0

    .line 16
    iput-object v0, p0, Lcom/wufan/user/service/protobuf/MessageCloudGamingServerListResponse$LineList;->serverLineNum_:Ljava/lang/Object;

    .line 17
    .line 18
    return-object v0
.end method

.method public getServerLineNumBytes()Lcom/google/protobuf/ByteString;
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/wufan/user/service/protobuf/MessageCloudGamingServerListResponse$LineList;->serverLineNum_:Ljava/lang/Object;

    .line 2
    .line 3
    instance-of v1, v0, Ljava/lang/String;

    .line 4
    .line 5
    if-eqz v1, :cond_0

    .line 6
    .line 7
    check-cast v0, Ljava/lang/String;

    .line 8
    .line 9
    invoke-static {v0}, Lcom/google/protobuf/ByteString;->copyFromUtf8(Ljava/lang/String;)Lcom/google/protobuf/ByteString;

    .line 10
    .line 11
    .line 12
    move-result-object v0

    .line 13
    iput-object v0, p0, Lcom/wufan/user/service/protobuf/MessageCloudGamingServerListResponse$LineList;->serverLineNum_:Ljava/lang/Object;

    .line 14
    .line 15
    return-object v0

    .line 16
    :cond_0
    check-cast v0, Lcom/google/protobuf/ByteString;

    .line 17
    .line 18
    return-object v0
.end method

.method public getServerName()Ljava/lang/String;
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/wufan/user/service/protobuf/MessageCloudGamingServerListResponse$LineList;->serverName_:Ljava/lang/Object;

    .line 2
    .line 3
    instance-of v1, v0, Ljava/lang/String;

    .line 4
    .line 5
    if-eqz v1, :cond_0

    .line 6
    .line 7
    check-cast v0, Ljava/lang/String;

    .line 8
    .line 9
    return-object v0

    .line 10
    :cond_0
    check-cast v0, Lcom/google/protobuf/ByteString;

    .line 11
    .line 12
    invoke-virtual {v0}, Lcom/google/protobuf/ByteString;->toStringUtf8()Ljava/lang/String;

    .line 13
    .line 14
    .line 15
    move-result-object v0

    .line 16
    iput-object v0, p0, Lcom/wufan/user/service/protobuf/MessageCloudGamingServerListResponse$LineList;->serverName_:Ljava/lang/Object;

    .line 17
    .line 18
    return-object v0
.end method

.method public getServerNameBytes()Lcom/google/protobuf/ByteString;
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/wufan/user/service/protobuf/MessageCloudGamingServerListResponse$LineList;->serverName_:Ljava/lang/Object;

    .line 2
    .line 3
    instance-of v1, v0, Ljava/lang/String;

    .line 4
    .line 5
    if-eqz v1, :cond_0

    .line 6
    .line 7
    check-cast v0, Ljava/lang/String;

    .line 8
    .line 9
    invoke-static {v0}, Lcom/google/protobuf/ByteString;->copyFromUtf8(Ljava/lang/String;)Lcom/google/protobuf/ByteString;

    .line 10
    .line 11
    .line 12
    move-result-object v0

    .line 13
    iput-object v0, p0, Lcom/wufan/user/service/protobuf/MessageCloudGamingServerListResponse$LineList;->serverName_:Ljava/lang/Object;

    .line 14
    .line 15
    return-object v0

    .line 16
    :cond_0
    check-cast v0, Lcom/google/protobuf/ByteString;

    .line 17
    .line 18
    return-object v0
.end method

.method public getState()Lcom/wufan/user/service/protobuf/enumeration/ServerState;
    .locals 1

    .line 1
    iget v0, p0, Lcom/wufan/user/service/protobuf/MessageCloudGamingServerListResponse$LineList;->state_:I

    .line 2
    .line 3
    invoke-static {v0}, Lcom/wufan/user/service/protobuf/enumeration/ServerState;->valueOf(I)Lcom/wufan/user/service/protobuf/enumeration/ServerState;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    if-nez v0, :cond_0

    .line 8
    .line 9
    sget-object v0, Lcom/wufan/user/service/protobuf/enumeration/ServerState;->UNRECOGNIZED:Lcom/wufan/user/service/protobuf/enumeration/ServerState;

    .line 10
    .line 11
    :cond_0
    return-object v0
.end method

.method public getStateValue()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/wufan/user/service/protobuf/MessageCloudGamingServerListResponse$LineList;->state_:I

    .line 2
    .line 3
    return v0
.end method

.method public getTimeOut()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/wufan/user/service/protobuf/MessageCloudGamingServerListResponse$LineList;->timeOut_:I

    .line 2
    .line 3
    return v0
.end method

.method public final getUnknownFields()Lcom/google/protobuf/UnknownFieldSet;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageV3;->unknownFields:Lcom/google/protobuf/UnknownFieldSet;

    .line 2
    .line 3
    return-object v0
.end method

.method public getVideoCodeRateTitle()Ljava/lang/String;
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/wufan/user/service/protobuf/MessageCloudGamingServerListResponse$LineList;->videoCodeRateTitle_:Ljava/lang/Object;

    .line 2
    .line 3
    instance-of v1, v0, Ljava/lang/String;

    .line 4
    .line 5
    if-eqz v1, :cond_0

    .line 6
    .line 7
    check-cast v0, Ljava/lang/String;

    .line 8
    .line 9
    return-object v0

    .line 10
    :cond_0
    check-cast v0, Lcom/google/protobuf/ByteString;

    .line 11
    .line 12
    invoke-virtual {v0}, Lcom/google/protobuf/ByteString;->toStringUtf8()Ljava/lang/String;

    .line 13
    .line 14
    .line 15
    move-result-object v0

    .line 16
    iput-object v0, p0, Lcom/wufan/user/service/protobuf/MessageCloudGamingServerListResponse$LineList;->videoCodeRateTitle_:Ljava/lang/Object;

    .line 17
    .line 18
    return-object v0
.end method

.method public getVideoCodeRateTitleBytes()Lcom/google/protobuf/ByteString;
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/wufan/user/service/protobuf/MessageCloudGamingServerListResponse$LineList;->videoCodeRateTitle_:Ljava/lang/Object;

    .line 2
    .line 3
    instance-of v1, v0, Ljava/lang/String;

    .line 4
    .line 5
    if-eqz v1, :cond_0

    .line 6
    .line 7
    check-cast v0, Ljava/lang/String;

    .line 8
    .line 9
    invoke-static {v0}, Lcom/google/protobuf/ByteString;->copyFromUtf8(Ljava/lang/String;)Lcom/google/protobuf/ByteString;

    .line 10
    .line 11
    .line 12
    move-result-object v0

    .line 13
    iput-object v0, p0, Lcom/wufan/user/service/protobuf/MessageCloudGamingServerListResponse$LineList;->videoCodeRateTitle_:Ljava/lang/Object;

    .line 14
    .line 15
    return-object v0

    .line 16
    :cond_0
    check-cast v0, Lcom/google/protobuf/ByteString;

    .line 17
    .line 18
    return-object v0
.end method

.method public hashCode()I
    .locals 2

    .line 1
    iget v0, p0, Lcom/google/protobuf/AbstractMessageLite;->memoizedHashCode:I

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    return v0

    .line 6
    :cond_0
    invoke-static {}, Lcom/wufan/user/service/protobuf/MessageCloudGamingServerListResponse$LineList;->getDescriptor()Lcom/google/protobuf/Descriptors$Descriptor;

    .line 7
    .line 8
    .line 9
    move-result-object v0

    .line 10
    invoke-virtual {v0}, Ljava/lang/Object;->hashCode()I

    .line 11
    .line 12
    .line 13
    move-result v0

    .line 14
    const/16 v1, 0x30b

    .line 15
    .line 16
    add-int/2addr v1, v0

    .line 17
    mul-int/lit8 v1, v1, 0x25

    .line 18
    .line 19
    add-int/lit8 v1, v1, 0x1

    .line 20
    .line 21
    mul-int/lit8 v1, v1, 0x35

    .line 22
    .line 23
    invoke-virtual {p0}, Lcom/wufan/user/service/protobuf/MessageCloudGamingServerListResponse$LineList;->getServerLineNum()Ljava/lang/String;

    .line 24
    .line 25
    .line 26
    move-result-object v0

    .line 27
    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    .line 28
    .line 29
    .line 30
    move-result v0

    .line 31
    add-int/2addr v1, v0

    .line 32
    mul-int/lit8 v1, v1, 0x25

    .line 33
    .line 34
    add-int/lit8 v1, v1, 0x2

    .line 35
    .line 36
    mul-int/lit8 v1, v1, 0x35

    .line 37
    .line 38
    invoke-virtual {p0}, Lcom/wufan/user/service/protobuf/MessageCloudGamingServerListResponse$LineList;->getServerName()Ljava/lang/String;

    .line 39
    .line 40
    .line 41
    move-result-object v0

    .line 42
    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    .line 43
    .line 44
    .line 45
    move-result v0

    .line 46
    add-int/2addr v1, v0

    .line 47
    mul-int/lit8 v1, v1, 0x25

    .line 48
    .line 49
    add-int/lit8 v1, v1, 0x3

    .line 50
    .line 51
    mul-int/lit8 v1, v1, 0x35

    .line 52
    .line 53
    invoke-virtual {p0}, Lcom/wufan/user/service/protobuf/MessageCloudGamingServerListResponse$LineList;->getCurrentHsnTotal()I

    .line 54
    .line 55
    .line 56
    move-result v0

    .line 57
    add-int/2addr v1, v0

    .line 58
    mul-int/lit8 v1, v1, 0x25

    .line 59
    .line 60
    add-int/lit8 v1, v1, 0x4

    .line 61
    .line 62
    mul-int/lit8 v1, v1, 0x35

    .line 63
    .line 64
    invoke-virtual {p0}, Lcom/wufan/user/service/protobuf/MessageCloudGamingServerListResponse$LineList;->getCurrentInServerNum()I

    .line 65
    .line 66
    .line 67
    move-result v0

    .line 68
    add-int/2addr v1, v0

    .line 69
    mul-int/lit8 v1, v1, 0x25

    .line 70
    .line 71
    add-int/lit8 v1, v1, 0x5

    .line 72
    .line 73
    mul-int/lit8 v1, v1, 0x35

    .line 74
    .line 75
    invoke-virtual {p0}, Lcom/wufan/user/service/protobuf/MessageCloudGamingServerListResponse$LineList;->getIsVip()Z

    .line 76
    .line 77
    .line 78
    move-result v0

    .line 79
    invoke-static {v0}, Lcom/google/protobuf/Internal;->hashBoolean(Z)I

    .line 80
    .line 81
    .line 82
    move-result v0

    .line 83
    add-int/2addr v1, v0

    .line 84
    mul-int/lit8 v1, v1, 0x25

    .line 85
    .line 86
    add-int/lit8 v1, v1, 0x6

    .line 87
    .line 88
    mul-int/lit8 v1, v1, 0x35

    .line 89
    .line 90
    iget v0, p0, Lcom/wufan/user/service/protobuf/MessageCloudGamingServerListResponse$LineList;->state_:I

    .line 91
    .line 92
    add-int/2addr v1, v0

    .line 93
    mul-int/lit8 v1, v1, 0x25

    .line 94
    .line 95
    add-int/lit8 v1, v1, 0x7

    .line 96
    .line 97
    mul-int/lit8 v1, v1, 0x35

    .line 98
    .line 99
    invoke-virtual {p0}, Lcom/wufan/user/service/protobuf/MessageCloudGamingServerListResponse$LineList;->getK()Ljava/lang/String;

    .line 100
    .line 101
    .line 102
    move-result-object v0

    .line 103
    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    .line 104
    .line 105
    .line 106
    move-result v0

    .line 107
    add-int/2addr v1, v0

    .line 108
    mul-int/lit8 v1, v1, 0x25

    .line 109
    .line 110
    add-int/lit8 v1, v1, 0x8

    .line 111
    .line 112
    mul-int/lit8 v1, v1, 0x35

    .line 113
    .line 114
    invoke-virtual {p0}, Lcom/wufan/user/service/protobuf/MessageCloudGamingServerListResponse$LineList;->getVideoCodeRateTitle()Ljava/lang/String;

    .line 115
    .line 116
    .line 117
    move-result-object v0

    .line 118
    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    .line 119
    .line 120
    .line 121
    move-result v0

    .line 122
    add-int/2addr v1, v0

    .line 123
    mul-int/lit8 v1, v1, 0x25

    .line 124
    .line 125
    add-int/lit8 v1, v1, 0x9

    .line 126
    .line 127
    mul-int/lit8 v1, v1, 0x35

    .line 128
    .line 129
    invoke-virtual {p0}, Lcom/wufan/user/service/protobuf/MessageCloudGamingServerListResponse$LineList;->getTimeOut()I

    .line 130
    .line 131
    .line 132
    move-result v0

    .line 133
    add-int/2addr v1, v0

    .line 134
    mul-int/lit8 v1, v1, 0x1d

    .line 135
    .line 136
    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageV3;->unknownFields:Lcom/google/protobuf/UnknownFieldSet;

    .line 137
    .line 138
    invoke-virtual {v0}, Lcom/google/protobuf/UnknownFieldSet;->hashCode()I

    .line 139
    .line 140
    .line 141
    move-result v0

    .line 142
    add-int/2addr v1, v0

    .line 143
    iput v1, p0, Lcom/google/protobuf/AbstractMessageLite;->memoizedHashCode:I

    .line 144
    .line 145
    return v1
.end method

.method protected internalGetFieldAccessorTable()Lcom/google/protobuf/GeneratedMessageV3$FieldAccessorTable;
    .locals 3

    .line 1
    invoke-static {}, Lcom/wufan/user/service/protobuf/MessageCloudGamingServerListResponse;->f()Lcom/google/protobuf/GeneratedMessageV3$FieldAccessorTable;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    const-class v1, Lcom/wufan/user/service/protobuf/MessageCloudGamingServerListResponse$LineList;

    .line 6
    .line 7
    const-class v2, Lcom/wufan/user/service/protobuf/MessageCloudGamingServerListResponse$LineList$b;

    .line 8
    .line 9
    invoke-virtual {v0, v1, v2}, Lcom/google/protobuf/GeneratedMessageV3$FieldAccessorTable;->ensureFieldAccessorsInitialized(Ljava/lang/Class;Ljava/lang/Class;)Lcom/google/protobuf/GeneratedMessageV3$FieldAccessorTable;

    .line 10
    .line 11
    .line 12
    move-result-object v0

    .line 13
    return-object v0
.end method

.method public final isInitialized()Z
    .locals 2

    .line 1
    iget-byte v0, p0, Lcom/wufan/user/service/protobuf/MessageCloudGamingServerListResponse$LineList;->memoizedIsInitialized:B

    .line 2
    .line 3
    const/4 v1, 0x1

    .line 4
    if-ne v0, v1, :cond_0

    .line 5
    .line 6
    return v1

    .line 7
    :cond_0
    if-nez v0, :cond_1

    .line 8
    .line 9
    const/4 v0, 0x0

    .line 10
    return v0

    .line 11
    :cond_1
    iput-byte v1, p0, Lcom/wufan/user/service/protobuf/MessageCloudGamingServerListResponse$LineList;->memoizedIsInitialized:B

    .line 12
    .line 13
    return v1
.end method

.method public bridge synthetic newBuilderForType()Lcom/google/protobuf/Message$Builder;
    .locals 1

    .line 1
    invoke-virtual {p0}, Lcom/wufan/user/service/protobuf/MessageCloudGamingServerListResponse$LineList;->newBuilderForType()Lcom/wufan/user/service/protobuf/MessageCloudGamingServerListResponse$LineList$b;

    move-result-object v0

    return-object v0
.end method

.method protected bridge synthetic newBuilderForType(Lcom/google/protobuf/GeneratedMessageV3$BuilderParent;)Lcom/google/protobuf/Message$Builder;
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1000
        }
        names = {
            "parent"
        }
    .end annotation

    .line 2
    invoke-virtual {p0, p1}, Lcom/wufan/user/service/protobuf/MessageCloudGamingServerListResponse$LineList;->newBuilderForType(Lcom/google/protobuf/GeneratedMessageV3$BuilderParent;)Lcom/wufan/user/service/protobuf/MessageCloudGamingServerListResponse$LineList$b;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic newBuilderForType()Lcom/google/protobuf/MessageLite$Builder;
    .locals 1

    .line 3
    invoke-virtual {p0}, Lcom/wufan/user/service/protobuf/MessageCloudGamingServerListResponse$LineList;->newBuilderForType()Lcom/wufan/user/service/protobuf/MessageCloudGamingServerListResponse$LineList$b;

    move-result-object v0

    return-object v0
.end method

.method public newBuilderForType()Lcom/wufan/user/service/protobuf/MessageCloudGamingServerListResponse$LineList$b;
    .locals 1

    .line 4
    invoke-static {}, Lcom/wufan/user/service/protobuf/MessageCloudGamingServerListResponse$LineList;->newBuilder()Lcom/wufan/user/service/protobuf/MessageCloudGamingServerListResponse$LineList$b;

    move-result-object v0

    return-object v0
.end method

.method protected newBuilderForType(Lcom/google/protobuf/GeneratedMessageV3$BuilderParent;)Lcom/wufan/user/service/protobuf/MessageCloudGamingServerListResponse$LineList$b;
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "parent"
        }
    .end annotation

    .line 5
    new-instance v0, Lcom/wufan/user/service/protobuf/MessageCloudGamingServerListResponse$LineList$b;

    const/4 v1, 0x0

    invoke-direct {v0, p1, v1}, Lcom/wufan/user/service/protobuf/MessageCloudGamingServerListResponse$LineList$b;-><init>(Lcom/google/protobuf/GeneratedMessageV3$BuilderParent;Lcom/wufan/user/service/protobuf/MessageCloudGamingServerListResponse$a;)V

    return-object v0
.end method

.method public bridge synthetic toBuilder()Lcom/google/protobuf/Message$Builder;
    .locals 1

    .line 1
    invoke-virtual {p0}, Lcom/wufan/user/service/protobuf/MessageCloudGamingServerListResponse$LineList;->toBuilder()Lcom/wufan/user/service/protobuf/MessageCloudGamingServerListResponse$LineList$b;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic toBuilder()Lcom/google/protobuf/MessageLite$Builder;
    .locals 1

    .line 2
    invoke-virtual {p0}, Lcom/wufan/user/service/protobuf/MessageCloudGamingServerListResponse$LineList;->toBuilder()Lcom/wufan/user/service/protobuf/MessageCloudGamingServerListResponse$LineList$b;

    move-result-object v0

    return-object v0
.end method

.method public toBuilder()Lcom/wufan/user/service/protobuf/MessageCloudGamingServerListResponse$LineList$b;
    .locals 2

    .line 3
    sget-object v0, Lcom/wufan/user/service/protobuf/MessageCloudGamingServerListResponse$LineList;->DEFAULT_INSTANCE:Lcom/wufan/user/service/protobuf/MessageCloudGamingServerListResponse$LineList;

    const/4 v1, 0x0

    if-ne p0, v0, :cond_0

    .line 4
    new-instance v0, Lcom/wufan/user/service/protobuf/MessageCloudGamingServerListResponse$LineList$b;

    invoke-direct {v0, v1}, Lcom/wufan/user/service/protobuf/MessageCloudGamingServerListResponse$LineList$b;-><init>(Lcom/wufan/user/service/protobuf/MessageCloudGamingServerListResponse$a;)V

    goto :goto_0

    :cond_0
    new-instance v0, Lcom/wufan/user/service/protobuf/MessageCloudGamingServerListResponse$LineList$b;

    invoke-direct {v0, v1}, Lcom/wufan/user/service/protobuf/MessageCloudGamingServerListResponse$LineList$b;-><init>(Lcom/wufan/user/service/protobuf/MessageCloudGamingServerListResponse$a;)V

    invoke-virtual {v0, p0}, Lcom/wufan/user/service/protobuf/MessageCloudGamingServerListResponse$LineList$b;->mergeFrom(Lcom/wufan/user/service/protobuf/MessageCloudGamingServerListResponse$LineList;)Lcom/wufan/user/service/protobuf/MessageCloudGamingServerListResponse$LineList$b;

    move-result-object v0

    :goto_0
    return-object v0
.end method

.method public writeTo(Lcom/google/protobuf/CodedOutputStream;)V
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "output"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    invoke-virtual {p0}, Lcom/wufan/user/service/protobuf/MessageCloudGamingServerListResponse$LineList;->getServerLineNumBytes()Lcom/google/protobuf/ByteString;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    invoke-virtual {v0}, Lcom/google/protobuf/ByteString;->isEmpty()Z

    .line 6
    .line 7
    .line 8
    move-result v0

    .line 9
    if-nez v0, :cond_0

    .line 10
    .line 11
    const/4 v0, 0x1

    .line 12
    iget-object v1, p0, Lcom/wufan/user/service/protobuf/MessageCloudGamingServerListResponse$LineList;->serverLineNum_:Ljava/lang/Object;

    .line 13
    .line 14
    invoke-static {p1, v0, v1}, Lcom/google/protobuf/GeneratedMessageV3;->writeString(Lcom/google/protobuf/CodedOutputStream;ILjava/lang/Object;)V

    .line 15
    .line 16
    .line 17
    :cond_0
    invoke-virtual {p0}, Lcom/wufan/user/service/protobuf/MessageCloudGamingServerListResponse$LineList;->getServerNameBytes()Lcom/google/protobuf/ByteString;

    .line 18
    .line 19
    .line 20
    move-result-object v0

    .line 21
    invoke-virtual {v0}, Lcom/google/protobuf/ByteString;->isEmpty()Z

    .line 22
    .line 23
    .line 24
    move-result v0

    .line 25
    if-nez v0, :cond_1

    .line 26
    .line 27
    const/4 v0, 0x2

    .line 28
    iget-object v1, p0, Lcom/wufan/user/service/protobuf/MessageCloudGamingServerListResponse$LineList;->serverName_:Ljava/lang/Object;

    .line 29
    .line 30
    invoke-static {p1, v0, v1}, Lcom/google/protobuf/GeneratedMessageV3;->writeString(Lcom/google/protobuf/CodedOutputStream;ILjava/lang/Object;)V

    .line 31
    .line 32
    .line 33
    :cond_1
    iget v0, p0, Lcom/wufan/user/service/protobuf/MessageCloudGamingServerListResponse$LineList;->currentHsnTotal_:I

    .line 34
    .line 35
    if-eqz v0, :cond_2

    .line 36
    .line 37
    const/4 v1, 0x3

    .line 38
    invoke-virtual {p1, v1, v0}, Lcom/google/protobuf/CodedOutputStream;->writeInt32(II)V

    .line 39
    .line 40
    .line 41
    :cond_2
    iget v0, p0, Lcom/wufan/user/service/protobuf/MessageCloudGamingServerListResponse$LineList;->currentInServerNum_:I

    .line 42
    .line 43
    if-eqz v0, :cond_3

    .line 44
    .line 45
    const/4 v1, 0x4

    .line 46
    invoke-virtual {p1, v1, v0}, Lcom/google/protobuf/CodedOutputStream;->writeInt32(II)V

    .line 47
    .line 48
    .line 49
    :cond_3
    iget-boolean v0, p0, Lcom/wufan/user/service/protobuf/MessageCloudGamingServerListResponse$LineList;->isVip_:Z

    .line 50
    .line 51
    if-eqz v0, :cond_4

    .line 52
    .line 53
    const/4 v1, 0x5

    .line 54
    invoke-virtual {p1, v1, v0}, Lcom/google/protobuf/CodedOutputStream;->writeBool(IZ)V

    .line 55
    .line 56
    .line 57
    :cond_4
    iget v0, p0, Lcom/wufan/user/service/protobuf/MessageCloudGamingServerListResponse$LineList;->state_:I

    .line 58
    .line 59
    sget-object v1, Lcom/wufan/user/service/protobuf/enumeration/ServerState;->SERVER_LINE_FULL:Lcom/wufan/user/service/protobuf/enumeration/ServerState;

    .line 60
    .line 61
    invoke-virtual {v1}, Lcom/wufan/user/service/protobuf/enumeration/ServerState;->getNumber()I

    .line 62
    .line 63
    .line 64
    move-result v1

    .line 65
    if-eq v0, v1, :cond_5

    .line 66
    .line 67
    const/4 v0, 0x6

    .line 68
    iget v1, p0, Lcom/wufan/user/service/protobuf/MessageCloudGamingServerListResponse$LineList;->state_:I

    .line 69
    .line 70
    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/CodedOutputStream;->writeEnum(II)V

    .line 71
    .line 72
    .line 73
    :cond_5
    invoke-virtual {p0}, Lcom/wufan/user/service/protobuf/MessageCloudGamingServerListResponse$LineList;->getKBytes()Lcom/google/protobuf/ByteString;

    .line 74
    .line 75
    .line 76
    move-result-object v0

    .line 77
    invoke-virtual {v0}, Lcom/google/protobuf/ByteString;->isEmpty()Z

    .line 78
    .line 79
    .line 80
    move-result v0

    .line 81
    if-nez v0, :cond_6

    .line 82
    .line 83
    const/4 v0, 0x7

    .line 84
    iget-object v1, p0, Lcom/wufan/user/service/protobuf/MessageCloudGamingServerListResponse$LineList;->k_:Ljava/lang/Object;

    .line 85
    .line 86
    invoke-static {p1, v0, v1}, Lcom/google/protobuf/GeneratedMessageV3;->writeString(Lcom/google/protobuf/CodedOutputStream;ILjava/lang/Object;)V

    .line 87
    .line 88
    .line 89
    :cond_6
    invoke-virtual {p0}, Lcom/wufan/user/service/protobuf/MessageCloudGamingServerListResponse$LineList;->getVideoCodeRateTitleBytes()Lcom/google/protobuf/ByteString;

    .line 90
    .line 91
    .line 92
    move-result-object v0

    .line 93
    invoke-virtual {v0}, Lcom/google/protobuf/ByteString;->isEmpty()Z

    .line 94
    .line 95
    .line 96
    move-result v0

    .line 97
    if-nez v0, :cond_7

    .line 98
    .line 99
    const/16 v0, 0x8

    .line 100
    .line 101
    iget-object v1, p0, Lcom/wufan/user/service/protobuf/MessageCloudGamingServerListResponse$LineList;->videoCodeRateTitle_:Ljava/lang/Object;

    .line 102
    .line 103
    invoke-static {p1, v0, v1}, Lcom/google/protobuf/GeneratedMessageV3;->writeString(Lcom/google/protobuf/CodedOutputStream;ILjava/lang/Object;)V

    .line 104
    .line 105
    .line 106
    :cond_7
    iget v0, p0, Lcom/wufan/user/service/protobuf/MessageCloudGamingServerListResponse$LineList;->timeOut_:I

    .line 107
    .line 108
    if-eqz v0, :cond_8

    .line 109
    .line 110
    const/16 v1, 0x9

    .line 111
    .line 112
    invoke-virtual {p1, v1, v0}, Lcom/google/protobuf/CodedOutputStream;->writeInt32(II)V

    .line 113
    .line 114
    .line 115
    :cond_8
    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageV3;->unknownFields:Lcom/google/protobuf/UnknownFieldSet;

    .line 116
    .line 117
    invoke-virtual {v0, p1}, Lcom/google/protobuf/UnknownFieldSet;->writeTo(Lcom/google/protobuf/CodedOutputStream;)V

    .line 118
    .line 119
    .line 120
    return-void
.end method
