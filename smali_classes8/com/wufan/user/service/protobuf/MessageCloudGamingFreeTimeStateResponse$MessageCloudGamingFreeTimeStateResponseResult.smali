.class public final Lcom/wufan/user/service/protobuf/MessageCloudGamingFreeTimeStateResponse$MessageCloudGamingFreeTimeStateResponseResult;
.super Lcom/google/protobuf/GeneratedMessageV3;
.source "SourceFile"

# interfaces
.implements Lcom/wufan/user/service/protobuf/MessageCloudGamingFreeTimeStateResponse$c;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/wufan/user/service/protobuf/MessageCloudGamingFreeTimeStateResponse;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "MessageCloudGamingFreeTimeStateResponseResult"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/wufan/user/service/protobuf/MessageCloudGamingFreeTimeStateResponse$MessageCloudGamingFreeTimeStateResponseResult$b;
    }
.end annotation


# static fields
.field public static final DATA_FIELD_NUMBER:I = 0x4

.field private static final DEFAULT_INSTANCE:Lcom/wufan/user/service/protobuf/MessageCloudGamingFreeTimeStateResponse$MessageCloudGamingFreeTimeStateResponseResult;

.field public static final ERRORMSG_FIELD_NUMBER:I = 0x3

.field public static final ERROR_FIELD_NUMBER:I = 0x1

.field private static final PARSER:Lcom/google/protobuf/Parser;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/protobuf/Parser<",
            "Lcom/wufan/user/service/protobuf/MessageCloudGamingFreeTimeStateResponse$MessageCloudGamingFreeTimeStateResponseResult;",
            ">;"
        }
    .end annotation
.end field

.field public static final STATUS_FIELD_NUMBER:I = 0x2

.field public static final TIPSMSG_FIELD_NUMBER:I = 0x5

.field private static final serialVersionUID:J


# instance fields
.field private data_:Lcom/wufan/user/service/protobuf/MessageCloudGamingFreeTimeStateResponse$MembersInfo;

.field private volatile errorMsg_:Ljava/lang/Object;

.field private error_:I

.field private memoizedIsInitialized:B

.field private status_:Z

.field private volatile tipsMsg_:Ljava/lang/Object;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 1
    new-instance v0, Lcom/wufan/user/service/protobuf/MessageCloudGamingFreeTimeStateResponse$MessageCloudGamingFreeTimeStateResponseResult;

    .line 2
    .line 3
    invoke-direct {v0}, Lcom/wufan/user/service/protobuf/MessageCloudGamingFreeTimeStateResponse$MessageCloudGamingFreeTimeStateResponseResult;-><init>()V

    .line 4
    .line 5
    .line 6
    sput-object v0, Lcom/wufan/user/service/protobuf/MessageCloudGamingFreeTimeStateResponse$MessageCloudGamingFreeTimeStateResponseResult;->DEFAULT_INSTANCE:Lcom/wufan/user/service/protobuf/MessageCloudGamingFreeTimeStateResponse$MessageCloudGamingFreeTimeStateResponseResult;

    .line 7
    .line 8
    new-instance v0, Lcom/wufan/user/service/protobuf/MessageCloudGamingFreeTimeStateResponse$MessageCloudGamingFreeTimeStateResponseResult$a;

    .line 9
    .line 10
    invoke-direct {v0}, Lcom/wufan/user/service/protobuf/MessageCloudGamingFreeTimeStateResponse$MessageCloudGamingFreeTimeStateResponseResult$a;-><init>()V

    .line 11
    .line 12
    .line 13
    sput-object v0, Lcom/wufan/user/service/protobuf/MessageCloudGamingFreeTimeStateResponse$MessageCloudGamingFreeTimeStateResponseResult;->PARSER:Lcom/google/protobuf/Parser;

    .line 14
    .line 15
    return-void
.end method

.method private constructor <init>()V
    .locals 1

    .line 5
    invoke-direct {p0}, Lcom/google/protobuf/GeneratedMessageV3;-><init>()V

    const/4 v0, -0x1

    .line 6
    iput-byte v0, p0, Lcom/wufan/user/service/protobuf/MessageCloudGamingFreeTimeStateResponse$MessageCloudGamingFreeTimeStateResponseResult;->memoizedIsInitialized:B

    const-string v0, ""

    .line 7
    iput-object v0, p0, Lcom/wufan/user/service/protobuf/MessageCloudGamingFreeTimeStateResponse$MessageCloudGamingFreeTimeStateResponseResult;->errorMsg_:Ljava/lang/Object;

    .line 8
    iput-object v0, p0, Lcom/wufan/user/service/protobuf/MessageCloudGamingFreeTimeStateResponse$MessageCloudGamingFreeTimeStateResponseResult;->tipsMsg_:Ljava/lang/Object;

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

    .line 9
    invoke-direct {p0}, Lcom/wufan/user/service/protobuf/MessageCloudGamingFreeTimeStateResponse$MessageCloudGamingFreeTimeStateResponseResult;-><init>()V

    .line 10
    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 11
    invoke-static {}, Lcom/google/protobuf/UnknownFieldSet;->newBuilder()Lcom/google/protobuf/UnknownFieldSet$Builder;

    move-result-object v0

    const/4 v1, 0x0

    :cond_0
    :goto_0
    if-nez v1, :cond_8

    .line 12
    :try_start_0
    invoke-virtual {p1}, Lcom/google/protobuf/CodedInputStream;->readTag()I

    move-result v2

    const/4 v3, 0x1

    if-eqz v2, :cond_7

    const/16 v4, 0x8

    if-eq v2, v4, :cond_6

    const/16 v4, 0x10

    if-eq v2, v4, :cond_5

    const/16 v4, 0x1a

    if-eq v2, v4, :cond_4

    const/16 v4, 0x22

    if-eq v2, v4, :cond_2

    const/16 v4, 0x2a

    if-eq v2, v4, :cond_1

    .line 13
    invoke-virtual {p0, p1, v0, p2, v2}, Lcom/google/protobuf/GeneratedMessageV3;->parseUnknownField(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/UnknownFieldSet$Builder;Lcom/google/protobuf/ExtensionRegistryLite;I)Z

    move-result v2

    if-nez v2, :cond_0

    goto :goto_2

    .line 14
    :cond_1
    invoke-virtual {p1}, Lcom/google/protobuf/CodedInputStream;->readStringRequireUtf8()Ljava/lang/String;

    move-result-object v2

    .line 15
    iput-object v2, p0, Lcom/wufan/user/service/protobuf/MessageCloudGamingFreeTimeStateResponse$MessageCloudGamingFreeTimeStateResponseResult;->tipsMsg_:Ljava/lang/Object;

    goto :goto_0

    .line 16
    :cond_2
    iget-object v2, p0, Lcom/wufan/user/service/protobuf/MessageCloudGamingFreeTimeStateResponse$MessageCloudGamingFreeTimeStateResponseResult;->data_:Lcom/wufan/user/service/protobuf/MessageCloudGamingFreeTimeStateResponse$MembersInfo;

    if-eqz v2, :cond_3

    .line 17
    invoke-virtual {v2}, Lcom/wufan/user/service/protobuf/MessageCloudGamingFreeTimeStateResponse$MembersInfo;->toBuilder()Lcom/wufan/user/service/protobuf/MessageCloudGamingFreeTimeStateResponse$MembersInfo$b;

    move-result-object v2

    goto :goto_1

    :cond_3
    const/4 v2, 0x0

    .line 18
    :goto_1
    invoke-static {}, Lcom/wufan/user/service/protobuf/MessageCloudGamingFreeTimeStateResponse$MembersInfo;->parser()Lcom/google/protobuf/Parser;

    move-result-object v3

    invoke-virtual {p1, v3, p2}, Lcom/google/protobuf/CodedInputStream;->readMessage(Lcom/google/protobuf/Parser;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/MessageLite;

    move-result-object v3

    check-cast v3, Lcom/wufan/user/service/protobuf/MessageCloudGamingFreeTimeStateResponse$MembersInfo;

    iput-object v3, p0, Lcom/wufan/user/service/protobuf/MessageCloudGamingFreeTimeStateResponse$MessageCloudGamingFreeTimeStateResponseResult;->data_:Lcom/wufan/user/service/protobuf/MessageCloudGamingFreeTimeStateResponse$MembersInfo;

    if-eqz v2, :cond_0

    .line 19
    invoke-virtual {v2, v3}, Lcom/wufan/user/service/protobuf/MessageCloudGamingFreeTimeStateResponse$MembersInfo$b;->mergeFrom(Lcom/wufan/user/service/protobuf/MessageCloudGamingFreeTimeStateResponse$MembersInfo;)Lcom/wufan/user/service/protobuf/MessageCloudGamingFreeTimeStateResponse$MembersInfo$b;

    .line 20
    invoke-virtual {v2}, Lcom/wufan/user/service/protobuf/MessageCloudGamingFreeTimeStateResponse$MembersInfo$b;->buildPartial()Lcom/wufan/user/service/protobuf/MessageCloudGamingFreeTimeStateResponse$MembersInfo;

    move-result-object v2

    iput-object v2, p0, Lcom/wufan/user/service/protobuf/MessageCloudGamingFreeTimeStateResponse$MessageCloudGamingFreeTimeStateResponseResult;->data_:Lcom/wufan/user/service/protobuf/MessageCloudGamingFreeTimeStateResponse$MembersInfo;

    goto :goto_0

    .line 21
    :cond_4
    invoke-virtual {p1}, Lcom/google/protobuf/CodedInputStream;->readStringRequireUtf8()Ljava/lang/String;

    move-result-object v2

    .line 22
    iput-object v2, p0, Lcom/wufan/user/service/protobuf/MessageCloudGamingFreeTimeStateResponse$MessageCloudGamingFreeTimeStateResponseResult;->errorMsg_:Ljava/lang/Object;

    goto :goto_0

    .line 23
    :cond_5
    invoke-virtual {p1}, Lcom/google/protobuf/CodedInputStream;->readBool()Z

    move-result v2

    iput-boolean v2, p0, Lcom/wufan/user/service/protobuf/MessageCloudGamingFreeTimeStateResponse$MessageCloudGamingFreeTimeStateResponseResult;->status_:Z

    goto :goto_0

    .line 24
    :cond_6
    invoke-virtual {p1}, Lcom/google/protobuf/CodedInputStream;->readInt32()I

    move-result v2

    iput v2, p0, Lcom/wufan/user/service/protobuf/MessageCloudGamingFreeTimeStateResponse$MessageCloudGamingFreeTimeStateResponseResult;->error_:I
    :try_end_0
    .catch Lcom/google/protobuf/InvalidProtocolBufferException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :cond_7
    :goto_2
    const/4 v1, 0x1

    goto :goto_0

    :catchall_0
    move-exception p1

    goto :goto_3

    :catch_0
    move-exception p1

    .line 25
    :try_start_1
    new-instance p2, Lcom/google/protobuf/InvalidProtocolBufferException;

    invoke-direct {p2, p1}, Lcom/google/protobuf/InvalidProtocolBufferException;-><init>(Ljava/io/IOException;)V

    .line 26
    invoke-virtual {p2, p0}, Lcom/google/protobuf/InvalidProtocolBufferException;->setUnfinishedMessage(Lcom/google/protobuf/MessageLite;)Lcom/google/protobuf/InvalidProtocolBufferException;

    move-result-object p1

    throw p1

    :catch_1
    move-exception p1

    .line 27
    invoke-virtual {p1, p0}, Lcom/google/protobuf/InvalidProtocolBufferException;->setUnfinishedMessage(Lcom/google/protobuf/MessageLite;)Lcom/google/protobuf/InvalidProtocolBufferException;

    move-result-object p1

    throw p1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 28
    :goto_3
    invoke-virtual {v0}, Lcom/google/protobuf/UnknownFieldSet$Builder;->build()Lcom/google/protobuf/UnknownFieldSet;

    move-result-object p2

    iput-object p2, p0, Lcom/google/protobuf/GeneratedMessageV3;->unknownFields:Lcom/google/protobuf/UnknownFieldSet;

    .line 29
    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageV3;->makeExtensionsImmutable()V

    .line 30
    throw p1

    .line 31
    :cond_8
    invoke-virtual {v0}, Lcom/google/protobuf/UnknownFieldSet$Builder;->build()Lcom/google/protobuf/UnknownFieldSet;

    move-result-object p1

    iput-object p1, p0, Lcom/google/protobuf/GeneratedMessageV3;->unknownFields:Lcom/google/protobuf/UnknownFieldSet;

    .line 32
    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageV3;->makeExtensionsImmutable()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;Lcom/wufan/user/service/protobuf/MessageCloudGamingFreeTimeStateResponse$a;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .line 1
    invoke-direct {p0, p1, p2}, Lcom/wufan/user/service/protobuf/MessageCloudGamingFreeTimeStateResponse$MessageCloudGamingFreeTimeStateResponseResult;-><init>(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)V

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
    iput-byte p1, p0, Lcom/wufan/user/service/protobuf/MessageCloudGamingFreeTimeStateResponse$MessageCloudGamingFreeTimeStateResponseResult;->memoizedIsInitialized:B

    return-void
.end method

.method synthetic constructor <init>(Lcom/google/protobuf/GeneratedMessageV3$Builder;Lcom/wufan/user/service/protobuf/MessageCloudGamingFreeTimeStateResponse$a;)V
    .locals 0

    .line 2
    invoke-direct {p0, p1}, Lcom/wufan/user/service/protobuf/MessageCloudGamingFreeTimeStateResponse$MessageCloudGamingFreeTimeStateResponseResult;-><init>(Lcom/google/protobuf/GeneratedMessageV3$Builder;)V

    return-void
.end method

.method static synthetic access$1000(Lcom/wufan/user/service/protobuf/MessageCloudGamingFreeTimeStateResponse$MessageCloudGamingFreeTimeStateResponseResult;)Ljava/lang/Object;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/wufan/user/service/protobuf/MessageCloudGamingFreeTimeStateResponse$MessageCloudGamingFreeTimeStateResponseResult;->tipsMsg_:Ljava/lang/Object;

    .line 2
    .line 3
    return-object p0
.end method

.method static synthetic access$1002(Lcom/wufan/user/service/protobuf/MessageCloudGamingFreeTimeStateResponse$MessageCloudGamingFreeTimeStateResponseResult;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/wufan/user/service/protobuf/MessageCloudGamingFreeTimeStateResponse$MessageCloudGamingFreeTimeStateResponseResult;->tipsMsg_:Ljava/lang/Object;

    .line 2
    .line 3
    return-object p1
.end method

.method static synthetic access$1100(Lcom/wufan/user/service/protobuf/MessageCloudGamingFreeTimeStateResponse$MessageCloudGamingFreeTimeStateResponseResult;)Lcom/google/protobuf/UnknownFieldSet;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/google/protobuf/GeneratedMessageV3;->unknownFields:Lcom/google/protobuf/UnknownFieldSet;

    .line 2
    .line 3
    return-object p0
.end method

.method static synthetic access$1200()Lcom/google/protobuf/Parser;
    .locals 1

    .line 1
    sget-object v0, Lcom/wufan/user/service/protobuf/MessageCloudGamingFreeTimeStateResponse$MessageCloudGamingFreeTimeStateResponseResult;->PARSER:Lcom/google/protobuf/Parser;

    .line 2
    .line 3
    return-object v0
.end method

.method static synthetic access$1300(Lcom/google/protobuf/ByteString;)V
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

.method static synthetic access$1400(Lcom/google/protobuf/ByteString;)V
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

.method static synthetic access$400()Z
    .locals 1

    .line 1
    sget-boolean v0, Lcom/google/protobuf/GeneratedMessageV3;->alwaysUseFieldBuilders:Z

    .line 2
    .line 3
    return v0
.end method

.method static synthetic access$602(Lcom/wufan/user/service/protobuf/MessageCloudGamingFreeTimeStateResponse$MessageCloudGamingFreeTimeStateResponseResult;I)I
    .locals 0

    .line 1
    iput p1, p0, Lcom/wufan/user/service/protobuf/MessageCloudGamingFreeTimeStateResponse$MessageCloudGamingFreeTimeStateResponseResult;->error_:I

    .line 2
    .line 3
    return p1
.end method

.method static synthetic access$702(Lcom/wufan/user/service/protobuf/MessageCloudGamingFreeTimeStateResponse$MessageCloudGamingFreeTimeStateResponseResult;Z)Z
    .locals 0

    .line 1
    iput-boolean p1, p0, Lcom/wufan/user/service/protobuf/MessageCloudGamingFreeTimeStateResponse$MessageCloudGamingFreeTimeStateResponseResult;->status_:Z

    .line 2
    .line 3
    return p1
.end method

.method static synthetic access$800(Lcom/wufan/user/service/protobuf/MessageCloudGamingFreeTimeStateResponse$MessageCloudGamingFreeTimeStateResponseResult;)Ljava/lang/Object;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/wufan/user/service/protobuf/MessageCloudGamingFreeTimeStateResponse$MessageCloudGamingFreeTimeStateResponseResult;->errorMsg_:Ljava/lang/Object;

    .line 2
    .line 3
    return-object p0
.end method

.method static synthetic access$802(Lcom/wufan/user/service/protobuf/MessageCloudGamingFreeTimeStateResponse$MessageCloudGamingFreeTimeStateResponseResult;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/wufan/user/service/protobuf/MessageCloudGamingFreeTimeStateResponse$MessageCloudGamingFreeTimeStateResponseResult;->errorMsg_:Ljava/lang/Object;

    .line 2
    .line 3
    return-object p1
.end method

.method static synthetic access$902(Lcom/wufan/user/service/protobuf/MessageCloudGamingFreeTimeStateResponse$MessageCloudGamingFreeTimeStateResponseResult;Lcom/wufan/user/service/protobuf/MessageCloudGamingFreeTimeStateResponse$MembersInfo;)Lcom/wufan/user/service/protobuf/MessageCloudGamingFreeTimeStateResponse$MembersInfo;
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/wufan/user/service/protobuf/MessageCloudGamingFreeTimeStateResponse$MessageCloudGamingFreeTimeStateResponseResult;->data_:Lcom/wufan/user/service/protobuf/MessageCloudGamingFreeTimeStateResponse$MembersInfo;

    .line 2
    .line 3
    return-object p1
.end method

.method public static getDefaultInstance()Lcom/wufan/user/service/protobuf/MessageCloudGamingFreeTimeStateResponse$MessageCloudGamingFreeTimeStateResponseResult;
    .locals 1

    .line 1
    sget-object v0, Lcom/wufan/user/service/protobuf/MessageCloudGamingFreeTimeStateResponse$MessageCloudGamingFreeTimeStateResponseResult;->DEFAULT_INSTANCE:Lcom/wufan/user/service/protobuf/MessageCloudGamingFreeTimeStateResponse$MessageCloudGamingFreeTimeStateResponseResult;

    .line 2
    .line 3
    return-object v0
.end method

.method public static final getDescriptor()Lcom/google/protobuf/Descriptors$Descriptor;
    .locals 1

    .line 1
    invoke-static {}, Lcom/wufan/user/service/protobuf/MessageCloudGamingFreeTimeStateResponse;->a()Lcom/google/protobuf/Descriptors$Descriptor;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    return-object v0
.end method

.method public static newBuilder()Lcom/wufan/user/service/protobuf/MessageCloudGamingFreeTimeStateResponse$MessageCloudGamingFreeTimeStateResponseResult$b;
    .locals 1

    .line 1
    sget-object v0, Lcom/wufan/user/service/protobuf/MessageCloudGamingFreeTimeStateResponse$MessageCloudGamingFreeTimeStateResponseResult;->DEFAULT_INSTANCE:Lcom/wufan/user/service/protobuf/MessageCloudGamingFreeTimeStateResponse$MessageCloudGamingFreeTimeStateResponseResult;

    invoke-virtual {v0}, Lcom/wufan/user/service/protobuf/MessageCloudGamingFreeTimeStateResponse$MessageCloudGamingFreeTimeStateResponseResult;->toBuilder()Lcom/wufan/user/service/protobuf/MessageCloudGamingFreeTimeStateResponse$MessageCloudGamingFreeTimeStateResponseResult$b;

    move-result-object v0

    return-object v0
.end method

.method public static newBuilder(Lcom/wufan/user/service/protobuf/MessageCloudGamingFreeTimeStateResponse$MessageCloudGamingFreeTimeStateResponseResult;)Lcom/wufan/user/service/protobuf/MessageCloudGamingFreeTimeStateResponse$MessageCloudGamingFreeTimeStateResponseResult$b;
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
    sget-object v0, Lcom/wufan/user/service/protobuf/MessageCloudGamingFreeTimeStateResponse$MessageCloudGamingFreeTimeStateResponseResult;->DEFAULT_INSTANCE:Lcom/wufan/user/service/protobuf/MessageCloudGamingFreeTimeStateResponse$MessageCloudGamingFreeTimeStateResponseResult;

    invoke-virtual {v0}, Lcom/wufan/user/service/protobuf/MessageCloudGamingFreeTimeStateResponse$MessageCloudGamingFreeTimeStateResponseResult;->toBuilder()Lcom/wufan/user/service/protobuf/MessageCloudGamingFreeTimeStateResponse$MessageCloudGamingFreeTimeStateResponseResult$b;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/wufan/user/service/protobuf/MessageCloudGamingFreeTimeStateResponse$MessageCloudGamingFreeTimeStateResponseResult$b;->mergeFrom(Lcom/wufan/user/service/protobuf/MessageCloudGamingFreeTimeStateResponse$MessageCloudGamingFreeTimeStateResponseResult;)Lcom/wufan/user/service/protobuf/MessageCloudGamingFreeTimeStateResponse$MessageCloudGamingFreeTimeStateResponseResult$b;

    move-result-object p0

    return-object p0
.end method

.method public static parseDelimitedFrom(Ljava/io/InputStream;)Lcom/wufan/user/service/protobuf/MessageCloudGamingFreeTimeStateResponse$MessageCloudGamingFreeTimeStateResponseResult;
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
    sget-object v0, Lcom/wufan/user/service/protobuf/MessageCloudGamingFreeTimeStateResponse$MessageCloudGamingFreeTimeStateResponseResult;->PARSER:Lcom/google/protobuf/Parser;

    .line 2
    invoke-static {v0, p0}, Lcom/google/protobuf/GeneratedMessageV3;->parseDelimitedWithIOException(Lcom/google/protobuf/Parser;Ljava/io/InputStream;)Lcom/google/protobuf/Message;

    move-result-object p0

    check-cast p0, Lcom/wufan/user/service/protobuf/MessageCloudGamingFreeTimeStateResponse$MessageCloudGamingFreeTimeStateResponseResult;

    return-object p0
.end method

.method public static parseDelimitedFrom(Ljava/io/InputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/wufan/user/service/protobuf/MessageCloudGamingFreeTimeStateResponse$MessageCloudGamingFreeTimeStateResponseResult;
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
    sget-object v0, Lcom/wufan/user/service/protobuf/MessageCloudGamingFreeTimeStateResponse$MessageCloudGamingFreeTimeStateResponseResult;->PARSER:Lcom/google/protobuf/Parser;

    .line 4
    invoke-static {v0, p0, p1}, Lcom/google/protobuf/GeneratedMessageV3;->parseDelimitedWithIOException(Lcom/google/protobuf/Parser;Ljava/io/InputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/Message;

    move-result-object p0

    check-cast p0, Lcom/wufan/user/service/protobuf/MessageCloudGamingFreeTimeStateResponse$MessageCloudGamingFreeTimeStateResponseResult;

    return-object p0
.end method

.method public static parseFrom(Lcom/google/protobuf/ByteString;)Lcom/wufan/user/service/protobuf/MessageCloudGamingFreeTimeStateResponse$MessageCloudGamingFreeTimeStateResponseResult;
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
    sget-object v0, Lcom/wufan/user/service/protobuf/MessageCloudGamingFreeTimeStateResponse$MessageCloudGamingFreeTimeStateResponseResult;->PARSER:Lcom/google/protobuf/Parser;

    invoke-interface {v0, p0}, Lcom/google/protobuf/Parser;->parseFrom(Lcom/google/protobuf/ByteString;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/wufan/user/service/protobuf/MessageCloudGamingFreeTimeStateResponse$MessageCloudGamingFreeTimeStateResponseResult;

    return-object p0
.end method

.method public static parseFrom(Lcom/google/protobuf/ByteString;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/wufan/user/service/protobuf/MessageCloudGamingFreeTimeStateResponse$MessageCloudGamingFreeTimeStateResponseResult;
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
    sget-object v0, Lcom/wufan/user/service/protobuf/MessageCloudGamingFreeTimeStateResponse$MessageCloudGamingFreeTimeStateResponseResult;->PARSER:Lcom/google/protobuf/Parser;

    invoke-interface {v0, p0, p1}, Lcom/google/protobuf/Parser;->parseFrom(Lcom/google/protobuf/ByteString;Lcom/google/protobuf/ExtensionRegistryLite;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/wufan/user/service/protobuf/MessageCloudGamingFreeTimeStateResponse$MessageCloudGamingFreeTimeStateResponseResult;

    return-object p0
.end method

.method public static parseFrom(Lcom/google/protobuf/CodedInputStream;)Lcom/wufan/user/service/protobuf/MessageCloudGamingFreeTimeStateResponse$MessageCloudGamingFreeTimeStateResponseResult;
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
    sget-object v0, Lcom/wufan/user/service/protobuf/MessageCloudGamingFreeTimeStateResponse$MessageCloudGamingFreeTimeStateResponseResult;->PARSER:Lcom/google/protobuf/Parser;

    .line 12
    invoke-static {v0, p0}, Lcom/google/protobuf/GeneratedMessageV3;->parseWithIOException(Lcom/google/protobuf/Parser;Lcom/google/protobuf/CodedInputStream;)Lcom/google/protobuf/Message;

    move-result-object p0

    check-cast p0, Lcom/wufan/user/service/protobuf/MessageCloudGamingFreeTimeStateResponse$MessageCloudGamingFreeTimeStateResponseResult;

    return-object p0
.end method

.method public static parseFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/wufan/user/service/protobuf/MessageCloudGamingFreeTimeStateResponse$MessageCloudGamingFreeTimeStateResponseResult;
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
    sget-object v0, Lcom/wufan/user/service/protobuf/MessageCloudGamingFreeTimeStateResponse$MessageCloudGamingFreeTimeStateResponseResult;->PARSER:Lcom/google/protobuf/Parser;

    .line 14
    invoke-static {v0, p0, p1}, Lcom/google/protobuf/GeneratedMessageV3;->parseWithIOException(Lcom/google/protobuf/Parser;Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/Message;

    move-result-object p0

    check-cast p0, Lcom/wufan/user/service/protobuf/MessageCloudGamingFreeTimeStateResponse$MessageCloudGamingFreeTimeStateResponseResult;

    return-object p0
.end method

.method public static parseFrom(Ljava/io/InputStream;)Lcom/wufan/user/service/protobuf/MessageCloudGamingFreeTimeStateResponse$MessageCloudGamingFreeTimeStateResponseResult;
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
    sget-object v0, Lcom/wufan/user/service/protobuf/MessageCloudGamingFreeTimeStateResponse$MessageCloudGamingFreeTimeStateResponseResult;->PARSER:Lcom/google/protobuf/Parser;

    .line 8
    invoke-static {v0, p0}, Lcom/google/protobuf/GeneratedMessageV3;->parseWithIOException(Lcom/google/protobuf/Parser;Ljava/io/InputStream;)Lcom/google/protobuf/Message;

    move-result-object p0

    check-cast p0, Lcom/wufan/user/service/protobuf/MessageCloudGamingFreeTimeStateResponse$MessageCloudGamingFreeTimeStateResponseResult;

    return-object p0
.end method

.method public static parseFrom(Ljava/io/InputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/wufan/user/service/protobuf/MessageCloudGamingFreeTimeStateResponse$MessageCloudGamingFreeTimeStateResponseResult;
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
    sget-object v0, Lcom/wufan/user/service/protobuf/MessageCloudGamingFreeTimeStateResponse$MessageCloudGamingFreeTimeStateResponseResult;->PARSER:Lcom/google/protobuf/Parser;

    .line 10
    invoke-static {v0, p0, p1}, Lcom/google/protobuf/GeneratedMessageV3;->parseWithIOException(Lcom/google/protobuf/Parser;Ljava/io/InputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/Message;

    move-result-object p0

    check-cast p0, Lcom/wufan/user/service/protobuf/MessageCloudGamingFreeTimeStateResponse$MessageCloudGamingFreeTimeStateResponseResult;

    return-object p0
.end method

.method public static parseFrom(Ljava/nio/ByteBuffer;)Lcom/wufan/user/service/protobuf/MessageCloudGamingFreeTimeStateResponse$MessageCloudGamingFreeTimeStateResponseResult;
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
    sget-object v0, Lcom/wufan/user/service/protobuf/MessageCloudGamingFreeTimeStateResponse$MessageCloudGamingFreeTimeStateResponseResult;->PARSER:Lcom/google/protobuf/Parser;

    invoke-interface {v0, p0}, Lcom/google/protobuf/Parser;->parseFrom(Ljava/nio/ByteBuffer;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/wufan/user/service/protobuf/MessageCloudGamingFreeTimeStateResponse$MessageCloudGamingFreeTimeStateResponseResult;

    return-object p0
.end method

.method public static parseFrom(Ljava/nio/ByteBuffer;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/wufan/user/service/protobuf/MessageCloudGamingFreeTimeStateResponse$MessageCloudGamingFreeTimeStateResponseResult;
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
    sget-object v0, Lcom/wufan/user/service/protobuf/MessageCloudGamingFreeTimeStateResponse$MessageCloudGamingFreeTimeStateResponseResult;->PARSER:Lcom/google/protobuf/Parser;

    invoke-interface {v0, p0, p1}, Lcom/google/protobuf/Parser;->parseFrom(Ljava/nio/ByteBuffer;Lcom/google/protobuf/ExtensionRegistryLite;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/wufan/user/service/protobuf/MessageCloudGamingFreeTimeStateResponse$MessageCloudGamingFreeTimeStateResponseResult;

    return-object p0
.end method

.method public static parseFrom([B)Lcom/wufan/user/service/protobuf/MessageCloudGamingFreeTimeStateResponse$MessageCloudGamingFreeTimeStateResponseResult;
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
    sget-object v0, Lcom/wufan/user/service/protobuf/MessageCloudGamingFreeTimeStateResponse$MessageCloudGamingFreeTimeStateResponseResult;->PARSER:Lcom/google/protobuf/Parser;

    invoke-interface {v0, p0}, Lcom/google/protobuf/Parser;->parseFrom([B)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/wufan/user/service/protobuf/MessageCloudGamingFreeTimeStateResponse$MessageCloudGamingFreeTimeStateResponseResult;

    return-object p0
.end method

.method public static parseFrom([BLcom/google/protobuf/ExtensionRegistryLite;)Lcom/wufan/user/service/protobuf/MessageCloudGamingFreeTimeStateResponse$MessageCloudGamingFreeTimeStateResponseResult;
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
    sget-object v0, Lcom/wufan/user/service/protobuf/MessageCloudGamingFreeTimeStateResponse$MessageCloudGamingFreeTimeStateResponseResult;->PARSER:Lcom/google/protobuf/Parser;

    invoke-interface {v0, p0, p1}, Lcom/google/protobuf/Parser;->parseFrom([BLcom/google/protobuf/ExtensionRegistryLite;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/wufan/user/service/protobuf/MessageCloudGamingFreeTimeStateResponse$MessageCloudGamingFreeTimeStateResponseResult;

    return-object p0
.end method

.method public static parser()Lcom/google/protobuf/Parser;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/google/protobuf/Parser<",
            "Lcom/wufan/user/service/protobuf/MessageCloudGamingFreeTimeStateResponse$MessageCloudGamingFreeTimeStateResponseResult;",
            ">;"
        }
    .end annotation

    .line 1
    sget-object v0, Lcom/wufan/user/service/protobuf/MessageCloudGamingFreeTimeStateResponse$MessageCloudGamingFreeTimeStateResponseResult;->PARSER:Lcom/google/protobuf/Parser;

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
    instance-of v1, p1, Lcom/wufan/user/service/protobuf/MessageCloudGamingFreeTimeStateResponse$MessageCloudGamingFreeTimeStateResponseResult;

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
    check-cast p1, Lcom/wufan/user/service/protobuf/MessageCloudGamingFreeTimeStateResponse$MessageCloudGamingFreeTimeStateResponseResult;

    .line 15
    .line 16
    invoke-virtual {p0}, Lcom/wufan/user/service/protobuf/MessageCloudGamingFreeTimeStateResponse$MessageCloudGamingFreeTimeStateResponseResult;->getError()I

    .line 17
    .line 18
    .line 19
    move-result v1

    .line 20
    invoke-virtual {p1}, Lcom/wufan/user/service/protobuf/MessageCloudGamingFreeTimeStateResponse$MessageCloudGamingFreeTimeStateResponseResult;->getError()I

    .line 21
    .line 22
    .line 23
    move-result v2

    .line 24
    const/4 v3, 0x0

    .line 25
    if-eq v1, v2, :cond_2

    .line 26
    .line 27
    return v3

    .line 28
    :cond_2
    invoke-virtual {p0}, Lcom/wufan/user/service/protobuf/MessageCloudGamingFreeTimeStateResponse$MessageCloudGamingFreeTimeStateResponseResult;->getStatus()Z

    .line 29
    .line 30
    .line 31
    move-result v1

    .line 32
    invoke-virtual {p1}, Lcom/wufan/user/service/protobuf/MessageCloudGamingFreeTimeStateResponse$MessageCloudGamingFreeTimeStateResponseResult;->getStatus()Z

    .line 33
    .line 34
    .line 35
    move-result v2

    .line 36
    if-eq v1, v2, :cond_3

    .line 37
    .line 38
    return v3

    .line 39
    :cond_3
    invoke-virtual {p0}, Lcom/wufan/user/service/protobuf/MessageCloudGamingFreeTimeStateResponse$MessageCloudGamingFreeTimeStateResponseResult;->getErrorMsg()Ljava/lang/String;

    .line 40
    .line 41
    .line 42
    move-result-object v1

    .line 43
    invoke-virtual {p1}, Lcom/wufan/user/service/protobuf/MessageCloudGamingFreeTimeStateResponse$MessageCloudGamingFreeTimeStateResponseResult;->getErrorMsg()Ljava/lang/String;

    .line 44
    .line 45
    .line 46
    move-result-object v2

    .line 47
    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 48
    .line 49
    .line 50
    move-result v1

    .line 51
    if-nez v1, :cond_4

    .line 52
    .line 53
    return v3

    .line 54
    :cond_4
    invoke-virtual {p0}, Lcom/wufan/user/service/protobuf/MessageCloudGamingFreeTimeStateResponse$MessageCloudGamingFreeTimeStateResponseResult;->hasData()Z

    .line 55
    .line 56
    .line 57
    move-result v1

    .line 58
    invoke-virtual {p1}, Lcom/wufan/user/service/protobuf/MessageCloudGamingFreeTimeStateResponse$MessageCloudGamingFreeTimeStateResponseResult;->hasData()Z

    .line 59
    .line 60
    .line 61
    move-result v2

    .line 62
    if-eq v1, v2, :cond_5

    .line 63
    .line 64
    return v3

    .line 65
    :cond_5
    invoke-virtual {p0}, Lcom/wufan/user/service/protobuf/MessageCloudGamingFreeTimeStateResponse$MessageCloudGamingFreeTimeStateResponseResult;->hasData()Z

    .line 66
    .line 67
    .line 68
    move-result v1

    .line 69
    if-eqz v1, :cond_6

    .line 70
    .line 71
    invoke-virtual {p0}, Lcom/wufan/user/service/protobuf/MessageCloudGamingFreeTimeStateResponse$MessageCloudGamingFreeTimeStateResponseResult;->getData()Lcom/wufan/user/service/protobuf/MessageCloudGamingFreeTimeStateResponse$MembersInfo;

    .line 72
    .line 73
    .line 74
    move-result-object v1

    .line 75
    invoke-virtual {p1}, Lcom/wufan/user/service/protobuf/MessageCloudGamingFreeTimeStateResponse$MessageCloudGamingFreeTimeStateResponseResult;->getData()Lcom/wufan/user/service/protobuf/MessageCloudGamingFreeTimeStateResponse$MembersInfo;

    .line 76
    .line 77
    .line 78
    move-result-object v2

    .line 79
    invoke-virtual {v1, v2}, Lcom/wufan/user/service/protobuf/MessageCloudGamingFreeTimeStateResponse$MembersInfo;->equals(Ljava/lang/Object;)Z

    .line 80
    .line 81
    .line 82
    move-result v1

    .line 83
    if-nez v1, :cond_6

    .line 84
    .line 85
    return v3

    .line 86
    :cond_6
    invoke-virtual {p0}, Lcom/wufan/user/service/protobuf/MessageCloudGamingFreeTimeStateResponse$MessageCloudGamingFreeTimeStateResponseResult;->getTipsMsg()Ljava/lang/String;

    .line 87
    .line 88
    .line 89
    move-result-object v1

    .line 90
    invoke-virtual {p1}, Lcom/wufan/user/service/protobuf/MessageCloudGamingFreeTimeStateResponse$MessageCloudGamingFreeTimeStateResponseResult;->getTipsMsg()Ljava/lang/String;

    .line 91
    .line 92
    .line 93
    move-result-object v2

    .line 94
    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 95
    .line 96
    .line 97
    move-result v1

    .line 98
    if-nez v1, :cond_7

    .line 99
    .line 100
    return v3

    .line 101
    :cond_7
    iget-object v1, p0, Lcom/google/protobuf/GeneratedMessageV3;->unknownFields:Lcom/google/protobuf/UnknownFieldSet;

    .line 102
    .line 103
    iget-object p1, p1, Lcom/google/protobuf/GeneratedMessageV3;->unknownFields:Lcom/google/protobuf/UnknownFieldSet;

    .line 104
    .line 105
    invoke-virtual {v1, p1}, Lcom/google/protobuf/UnknownFieldSet;->equals(Ljava/lang/Object;)Z

    .line 106
    .line 107
    .line 108
    move-result p1

    .line 109
    if-nez p1, :cond_8

    .line 110
    .line 111
    return v3

    .line 112
    :cond_8
    return v0
.end method

.method public getData()Lcom/wufan/user/service/protobuf/MessageCloudGamingFreeTimeStateResponse$MembersInfo;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/wufan/user/service/protobuf/MessageCloudGamingFreeTimeStateResponse$MessageCloudGamingFreeTimeStateResponseResult;->data_:Lcom/wufan/user/service/protobuf/MessageCloudGamingFreeTimeStateResponse$MembersInfo;

    .line 2
    .line 3
    if-nez v0, :cond_0

    .line 4
    .line 5
    invoke-static {}, Lcom/wufan/user/service/protobuf/MessageCloudGamingFreeTimeStateResponse$MembersInfo;->getDefaultInstance()Lcom/wufan/user/service/protobuf/MessageCloudGamingFreeTimeStateResponse$MembersInfo;

    .line 6
    .line 7
    .line 8
    move-result-object v0

    .line 9
    :cond_0
    return-object v0
.end method

.method public getDataOrBuilder()Lcom/wufan/user/service/protobuf/MessageCloudGamingFreeTimeStateResponse$b;
    .locals 1

    .line 1
    invoke-virtual {p0}, Lcom/wufan/user/service/protobuf/MessageCloudGamingFreeTimeStateResponse$MessageCloudGamingFreeTimeStateResponseResult;->getData()Lcom/wufan/user/service/protobuf/MessageCloudGamingFreeTimeStateResponse$MembersInfo;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    return-object v0
.end method

.method public bridge synthetic getDefaultInstanceForType()Lcom/google/protobuf/Message;
    .locals 1

    .line 1
    invoke-virtual {p0}, Lcom/wufan/user/service/protobuf/MessageCloudGamingFreeTimeStateResponse$MessageCloudGamingFreeTimeStateResponseResult;->getDefaultInstanceForType()Lcom/wufan/user/service/protobuf/MessageCloudGamingFreeTimeStateResponse$MessageCloudGamingFreeTimeStateResponseResult;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic getDefaultInstanceForType()Lcom/google/protobuf/MessageLite;
    .locals 1

    .line 2
    invoke-virtual {p0}, Lcom/wufan/user/service/protobuf/MessageCloudGamingFreeTimeStateResponse$MessageCloudGamingFreeTimeStateResponseResult;->getDefaultInstanceForType()Lcom/wufan/user/service/protobuf/MessageCloudGamingFreeTimeStateResponse$MessageCloudGamingFreeTimeStateResponseResult;

    move-result-object v0

    return-object v0
.end method

.method public getDefaultInstanceForType()Lcom/wufan/user/service/protobuf/MessageCloudGamingFreeTimeStateResponse$MessageCloudGamingFreeTimeStateResponseResult;
    .locals 1

    .line 3
    sget-object v0, Lcom/wufan/user/service/protobuf/MessageCloudGamingFreeTimeStateResponse$MessageCloudGamingFreeTimeStateResponseResult;->DEFAULT_INSTANCE:Lcom/wufan/user/service/protobuf/MessageCloudGamingFreeTimeStateResponse$MessageCloudGamingFreeTimeStateResponseResult;

    return-object v0
.end method

.method public getError()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/wufan/user/service/protobuf/MessageCloudGamingFreeTimeStateResponse$MessageCloudGamingFreeTimeStateResponseResult;->error_:I

    .line 2
    .line 3
    return v0
.end method

.method public getErrorMsg()Ljava/lang/String;
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/wufan/user/service/protobuf/MessageCloudGamingFreeTimeStateResponse$MessageCloudGamingFreeTimeStateResponseResult;->errorMsg_:Ljava/lang/Object;

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
    iput-object v0, p0, Lcom/wufan/user/service/protobuf/MessageCloudGamingFreeTimeStateResponse$MessageCloudGamingFreeTimeStateResponseResult;->errorMsg_:Ljava/lang/Object;

    .line 17
    .line 18
    return-object v0
.end method

.method public getErrorMsgBytes()Lcom/google/protobuf/ByteString;
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/wufan/user/service/protobuf/MessageCloudGamingFreeTimeStateResponse$MessageCloudGamingFreeTimeStateResponseResult;->errorMsg_:Ljava/lang/Object;

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
    iput-object v0, p0, Lcom/wufan/user/service/protobuf/MessageCloudGamingFreeTimeStateResponse$MessageCloudGamingFreeTimeStateResponseResult;->errorMsg_:Ljava/lang/Object;

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
            "Lcom/wufan/user/service/protobuf/MessageCloudGamingFreeTimeStateResponse$MessageCloudGamingFreeTimeStateResponseResult;",
            ">;"
        }
    .end annotation

    .line 1
    sget-object v0, Lcom/wufan/user/service/protobuf/MessageCloudGamingFreeTimeStateResponse$MessageCloudGamingFreeTimeStateResponseResult;->PARSER:Lcom/google/protobuf/Parser;

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
    iget v0, p0, Lcom/wufan/user/service/protobuf/MessageCloudGamingFreeTimeStateResponse$MessageCloudGamingFreeTimeStateResponseResult;->error_:I

    .line 8
    .line 9
    const/4 v1, 0x0

    .line 10
    if-eqz v0, :cond_1

    .line 11
    .line 12
    const/4 v2, 0x1

    .line 13
    invoke-static {v2, v0}, Lcom/google/protobuf/CodedOutputStream;->computeInt32Size(II)I

    .line 14
    .line 15
    .line 16
    move-result v0

    .line 17
    add-int/2addr v1, v0

    .line 18
    :cond_1
    iget-boolean v0, p0, Lcom/wufan/user/service/protobuf/MessageCloudGamingFreeTimeStateResponse$MessageCloudGamingFreeTimeStateResponseResult;->status_:Z

    .line 19
    .line 20
    if-eqz v0, :cond_2

    .line 21
    .line 22
    const/4 v2, 0x2

    .line 23
    invoke-static {v2, v0}, Lcom/google/protobuf/CodedOutputStream;->computeBoolSize(IZ)I

    .line 24
    .line 25
    .line 26
    move-result v0

    .line 27
    add-int/2addr v1, v0

    .line 28
    :cond_2
    invoke-virtual {p0}, Lcom/wufan/user/service/protobuf/MessageCloudGamingFreeTimeStateResponse$MessageCloudGamingFreeTimeStateResponseResult;->getErrorMsgBytes()Lcom/google/protobuf/ByteString;

    .line 29
    .line 30
    .line 31
    move-result-object v0

    .line 32
    invoke-virtual {v0}, Lcom/google/protobuf/ByteString;->isEmpty()Z

    .line 33
    .line 34
    .line 35
    move-result v0

    .line 36
    if-nez v0, :cond_3

    .line 37
    .line 38
    const/4 v0, 0x3

    .line 39
    iget-object v2, p0, Lcom/wufan/user/service/protobuf/MessageCloudGamingFreeTimeStateResponse$MessageCloudGamingFreeTimeStateResponseResult;->errorMsg_:Ljava/lang/Object;

    .line 40
    .line 41
    invoke-static {v0, v2}, Lcom/google/protobuf/GeneratedMessageV3;->computeStringSize(ILjava/lang/Object;)I

    .line 42
    .line 43
    .line 44
    move-result v0

    .line 45
    add-int/2addr v1, v0

    .line 46
    :cond_3
    iget-object v0, p0, Lcom/wufan/user/service/protobuf/MessageCloudGamingFreeTimeStateResponse$MessageCloudGamingFreeTimeStateResponseResult;->data_:Lcom/wufan/user/service/protobuf/MessageCloudGamingFreeTimeStateResponse$MembersInfo;

    .line 47
    .line 48
    if-eqz v0, :cond_4

    .line 49
    .line 50
    const/4 v0, 0x4

    .line 51
    invoke-virtual {p0}, Lcom/wufan/user/service/protobuf/MessageCloudGamingFreeTimeStateResponse$MessageCloudGamingFreeTimeStateResponseResult;->getData()Lcom/wufan/user/service/protobuf/MessageCloudGamingFreeTimeStateResponse$MembersInfo;

    .line 52
    .line 53
    .line 54
    move-result-object v2

    .line 55
    invoke-static {v0, v2}, Lcom/google/protobuf/CodedOutputStream;->computeMessageSize(ILcom/google/protobuf/MessageLite;)I

    .line 56
    .line 57
    .line 58
    move-result v0

    .line 59
    add-int/2addr v1, v0

    .line 60
    :cond_4
    invoke-virtual {p0}, Lcom/wufan/user/service/protobuf/MessageCloudGamingFreeTimeStateResponse$MessageCloudGamingFreeTimeStateResponseResult;->getTipsMsgBytes()Lcom/google/protobuf/ByteString;

    .line 61
    .line 62
    .line 63
    move-result-object v0

    .line 64
    invoke-virtual {v0}, Lcom/google/protobuf/ByteString;->isEmpty()Z

    .line 65
    .line 66
    .line 67
    move-result v0

    .line 68
    if-nez v0, :cond_5

    .line 69
    .line 70
    const/4 v0, 0x5

    .line 71
    iget-object v2, p0, Lcom/wufan/user/service/protobuf/MessageCloudGamingFreeTimeStateResponse$MessageCloudGamingFreeTimeStateResponseResult;->tipsMsg_:Ljava/lang/Object;

    .line 72
    .line 73
    invoke-static {v0, v2}, Lcom/google/protobuf/GeneratedMessageV3;->computeStringSize(ILjava/lang/Object;)I

    .line 74
    .line 75
    .line 76
    move-result v0

    .line 77
    add-int/2addr v1, v0

    .line 78
    :cond_5
    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageV3;->unknownFields:Lcom/google/protobuf/UnknownFieldSet;

    .line 79
    .line 80
    invoke-virtual {v0}, Lcom/google/protobuf/UnknownFieldSet;->getSerializedSize()I

    .line 81
    .line 82
    .line 83
    move-result v0

    .line 84
    add-int/2addr v1, v0

    .line 85
    iput v1, p0, Lcom/google/protobuf/AbstractMessage;->memoizedSize:I

    .line 86
    .line 87
    return v1
.end method

.method public getStatus()Z
    .locals 1

    .line 1
    iget-boolean v0, p0, Lcom/wufan/user/service/protobuf/MessageCloudGamingFreeTimeStateResponse$MessageCloudGamingFreeTimeStateResponseResult;->status_:Z

    .line 2
    .line 3
    return v0
.end method

.method public getTipsMsg()Ljava/lang/String;
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/wufan/user/service/protobuf/MessageCloudGamingFreeTimeStateResponse$MessageCloudGamingFreeTimeStateResponseResult;->tipsMsg_:Ljava/lang/Object;

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
    iput-object v0, p0, Lcom/wufan/user/service/protobuf/MessageCloudGamingFreeTimeStateResponse$MessageCloudGamingFreeTimeStateResponseResult;->tipsMsg_:Ljava/lang/Object;

    .line 17
    .line 18
    return-object v0
.end method

.method public getTipsMsgBytes()Lcom/google/protobuf/ByteString;
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/wufan/user/service/protobuf/MessageCloudGamingFreeTimeStateResponse$MessageCloudGamingFreeTimeStateResponseResult;->tipsMsg_:Ljava/lang/Object;

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
    iput-object v0, p0, Lcom/wufan/user/service/protobuf/MessageCloudGamingFreeTimeStateResponse$MessageCloudGamingFreeTimeStateResponseResult;->tipsMsg_:Ljava/lang/Object;

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

.method public final getUnknownFields()Lcom/google/protobuf/UnknownFieldSet;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageV3;->unknownFields:Lcom/google/protobuf/UnknownFieldSet;

    .line 2
    .line 3
    return-object v0
.end method

.method public hasData()Z
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/wufan/user/service/protobuf/MessageCloudGamingFreeTimeStateResponse$MessageCloudGamingFreeTimeStateResponseResult;->data_:Lcom/wufan/user/service/protobuf/MessageCloudGamingFreeTimeStateResponse$MembersInfo;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    const/4 v0, 0x1

    .line 6
    goto :goto_0

    .line 7
    :cond_0
    const/4 v0, 0x0

    .line 8
    :goto_0
    return v0
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
    invoke-static {}, Lcom/wufan/user/service/protobuf/MessageCloudGamingFreeTimeStateResponse$MessageCloudGamingFreeTimeStateResponseResult;->getDescriptor()Lcom/google/protobuf/Descriptors$Descriptor;

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
    invoke-virtual {p0}, Lcom/wufan/user/service/protobuf/MessageCloudGamingFreeTimeStateResponse$MessageCloudGamingFreeTimeStateResponseResult;->getError()I

    .line 24
    .line 25
    .line 26
    move-result v0

    .line 27
    add-int/2addr v1, v0

    .line 28
    mul-int/lit8 v1, v1, 0x25

    .line 29
    .line 30
    add-int/lit8 v1, v1, 0x2

    .line 31
    .line 32
    mul-int/lit8 v1, v1, 0x35

    .line 33
    .line 34
    invoke-virtual {p0}, Lcom/wufan/user/service/protobuf/MessageCloudGamingFreeTimeStateResponse$MessageCloudGamingFreeTimeStateResponseResult;->getStatus()Z

    .line 35
    .line 36
    .line 37
    move-result v0

    .line 38
    invoke-static {v0}, Lcom/google/protobuf/Internal;->hashBoolean(Z)I

    .line 39
    .line 40
    .line 41
    move-result v0

    .line 42
    add-int/2addr v1, v0

    .line 43
    mul-int/lit8 v1, v1, 0x25

    .line 44
    .line 45
    add-int/lit8 v1, v1, 0x3

    .line 46
    .line 47
    mul-int/lit8 v1, v1, 0x35

    .line 48
    .line 49
    invoke-virtual {p0}, Lcom/wufan/user/service/protobuf/MessageCloudGamingFreeTimeStateResponse$MessageCloudGamingFreeTimeStateResponseResult;->getErrorMsg()Ljava/lang/String;

    .line 50
    .line 51
    .line 52
    move-result-object v0

    .line 53
    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    .line 54
    .line 55
    .line 56
    move-result v0

    .line 57
    add-int/2addr v1, v0

    .line 58
    invoke-virtual {p0}, Lcom/wufan/user/service/protobuf/MessageCloudGamingFreeTimeStateResponse$MessageCloudGamingFreeTimeStateResponseResult;->hasData()Z

    .line 59
    .line 60
    .line 61
    move-result v0

    .line 62
    if-eqz v0, :cond_1

    .line 63
    .line 64
    mul-int/lit8 v1, v1, 0x25

    .line 65
    .line 66
    add-int/lit8 v1, v1, 0x4

    .line 67
    .line 68
    mul-int/lit8 v1, v1, 0x35

    .line 69
    .line 70
    invoke-virtual {p0}, Lcom/wufan/user/service/protobuf/MessageCloudGamingFreeTimeStateResponse$MessageCloudGamingFreeTimeStateResponseResult;->getData()Lcom/wufan/user/service/protobuf/MessageCloudGamingFreeTimeStateResponse$MembersInfo;

    .line 71
    .line 72
    .line 73
    move-result-object v0

    .line 74
    invoke-virtual {v0}, Lcom/wufan/user/service/protobuf/MessageCloudGamingFreeTimeStateResponse$MembersInfo;->hashCode()I

    .line 75
    .line 76
    .line 77
    move-result v0

    .line 78
    add-int/2addr v1, v0

    .line 79
    :cond_1
    mul-int/lit8 v1, v1, 0x25

    .line 80
    .line 81
    add-int/lit8 v1, v1, 0x5

    .line 82
    .line 83
    mul-int/lit8 v1, v1, 0x35

    .line 84
    .line 85
    invoke-virtual {p0}, Lcom/wufan/user/service/protobuf/MessageCloudGamingFreeTimeStateResponse$MessageCloudGamingFreeTimeStateResponseResult;->getTipsMsg()Ljava/lang/String;

    .line 86
    .line 87
    .line 88
    move-result-object v0

    .line 89
    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    .line 90
    .line 91
    .line 92
    move-result v0

    .line 93
    add-int/2addr v1, v0

    .line 94
    mul-int/lit8 v1, v1, 0x1d

    .line 95
    .line 96
    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageV3;->unknownFields:Lcom/google/protobuf/UnknownFieldSet;

    .line 97
    .line 98
    invoke-virtual {v0}, Lcom/google/protobuf/UnknownFieldSet;->hashCode()I

    .line 99
    .line 100
    .line 101
    move-result v0

    .line 102
    add-int/2addr v1, v0

    .line 103
    iput v1, p0, Lcom/google/protobuf/AbstractMessageLite;->memoizedHashCode:I

    .line 104
    .line 105
    return v1
.end method

.method protected internalGetFieldAccessorTable()Lcom/google/protobuf/GeneratedMessageV3$FieldAccessorTable;
    .locals 3

    .line 1
    invoke-static {}, Lcom/wufan/user/service/protobuf/MessageCloudGamingFreeTimeStateResponse;->b()Lcom/google/protobuf/GeneratedMessageV3$FieldAccessorTable;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    const-class v1, Lcom/wufan/user/service/protobuf/MessageCloudGamingFreeTimeStateResponse$MessageCloudGamingFreeTimeStateResponseResult;

    .line 6
    .line 7
    const-class v2, Lcom/wufan/user/service/protobuf/MessageCloudGamingFreeTimeStateResponse$MessageCloudGamingFreeTimeStateResponseResult$b;

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
    iget-byte v0, p0, Lcom/wufan/user/service/protobuf/MessageCloudGamingFreeTimeStateResponse$MessageCloudGamingFreeTimeStateResponseResult;->memoizedIsInitialized:B

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
    iput-byte v1, p0, Lcom/wufan/user/service/protobuf/MessageCloudGamingFreeTimeStateResponse$MessageCloudGamingFreeTimeStateResponseResult;->memoizedIsInitialized:B

    .line 12
    .line 13
    return v1
.end method

.method public bridge synthetic newBuilderForType()Lcom/google/protobuf/Message$Builder;
    .locals 1

    .line 1
    invoke-virtual {p0}, Lcom/wufan/user/service/protobuf/MessageCloudGamingFreeTimeStateResponse$MessageCloudGamingFreeTimeStateResponseResult;->newBuilderForType()Lcom/wufan/user/service/protobuf/MessageCloudGamingFreeTimeStateResponse$MessageCloudGamingFreeTimeStateResponseResult$b;

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
    invoke-virtual {p0, p1}, Lcom/wufan/user/service/protobuf/MessageCloudGamingFreeTimeStateResponse$MessageCloudGamingFreeTimeStateResponseResult;->newBuilderForType(Lcom/google/protobuf/GeneratedMessageV3$BuilderParent;)Lcom/wufan/user/service/protobuf/MessageCloudGamingFreeTimeStateResponse$MessageCloudGamingFreeTimeStateResponseResult$b;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic newBuilderForType()Lcom/google/protobuf/MessageLite$Builder;
    .locals 1

    .line 3
    invoke-virtual {p0}, Lcom/wufan/user/service/protobuf/MessageCloudGamingFreeTimeStateResponse$MessageCloudGamingFreeTimeStateResponseResult;->newBuilderForType()Lcom/wufan/user/service/protobuf/MessageCloudGamingFreeTimeStateResponse$MessageCloudGamingFreeTimeStateResponseResult$b;

    move-result-object v0

    return-object v0
.end method

.method public newBuilderForType()Lcom/wufan/user/service/protobuf/MessageCloudGamingFreeTimeStateResponse$MessageCloudGamingFreeTimeStateResponseResult$b;
    .locals 1

    .line 4
    invoke-static {}, Lcom/wufan/user/service/protobuf/MessageCloudGamingFreeTimeStateResponse$MessageCloudGamingFreeTimeStateResponseResult;->newBuilder()Lcom/wufan/user/service/protobuf/MessageCloudGamingFreeTimeStateResponse$MessageCloudGamingFreeTimeStateResponseResult$b;

    move-result-object v0

    return-object v0
.end method

.method protected newBuilderForType(Lcom/google/protobuf/GeneratedMessageV3$BuilderParent;)Lcom/wufan/user/service/protobuf/MessageCloudGamingFreeTimeStateResponse$MessageCloudGamingFreeTimeStateResponseResult$b;
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
    new-instance v0, Lcom/wufan/user/service/protobuf/MessageCloudGamingFreeTimeStateResponse$MessageCloudGamingFreeTimeStateResponseResult$b;

    const/4 v1, 0x0

    invoke-direct {v0, p1, v1}, Lcom/wufan/user/service/protobuf/MessageCloudGamingFreeTimeStateResponse$MessageCloudGamingFreeTimeStateResponseResult$b;-><init>(Lcom/google/protobuf/GeneratedMessageV3$BuilderParent;Lcom/wufan/user/service/protobuf/MessageCloudGamingFreeTimeStateResponse$a;)V

    return-object v0
.end method

.method public bridge synthetic toBuilder()Lcom/google/protobuf/Message$Builder;
    .locals 1

    .line 1
    invoke-virtual {p0}, Lcom/wufan/user/service/protobuf/MessageCloudGamingFreeTimeStateResponse$MessageCloudGamingFreeTimeStateResponseResult;->toBuilder()Lcom/wufan/user/service/protobuf/MessageCloudGamingFreeTimeStateResponse$MessageCloudGamingFreeTimeStateResponseResult$b;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic toBuilder()Lcom/google/protobuf/MessageLite$Builder;
    .locals 1

    .line 2
    invoke-virtual {p0}, Lcom/wufan/user/service/protobuf/MessageCloudGamingFreeTimeStateResponse$MessageCloudGamingFreeTimeStateResponseResult;->toBuilder()Lcom/wufan/user/service/protobuf/MessageCloudGamingFreeTimeStateResponse$MessageCloudGamingFreeTimeStateResponseResult$b;

    move-result-object v0

    return-object v0
.end method

.method public toBuilder()Lcom/wufan/user/service/protobuf/MessageCloudGamingFreeTimeStateResponse$MessageCloudGamingFreeTimeStateResponseResult$b;
    .locals 2

    .line 3
    sget-object v0, Lcom/wufan/user/service/protobuf/MessageCloudGamingFreeTimeStateResponse$MessageCloudGamingFreeTimeStateResponseResult;->DEFAULT_INSTANCE:Lcom/wufan/user/service/protobuf/MessageCloudGamingFreeTimeStateResponse$MessageCloudGamingFreeTimeStateResponseResult;

    const/4 v1, 0x0

    if-ne p0, v0, :cond_0

    .line 4
    new-instance v0, Lcom/wufan/user/service/protobuf/MessageCloudGamingFreeTimeStateResponse$MessageCloudGamingFreeTimeStateResponseResult$b;

    invoke-direct {v0, v1}, Lcom/wufan/user/service/protobuf/MessageCloudGamingFreeTimeStateResponse$MessageCloudGamingFreeTimeStateResponseResult$b;-><init>(Lcom/wufan/user/service/protobuf/MessageCloudGamingFreeTimeStateResponse$a;)V

    goto :goto_0

    :cond_0
    new-instance v0, Lcom/wufan/user/service/protobuf/MessageCloudGamingFreeTimeStateResponse$MessageCloudGamingFreeTimeStateResponseResult$b;

    invoke-direct {v0, v1}, Lcom/wufan/user/service/protobuf/MessageCloudGamingFreeTimeStateResponse$MessageCloudGamingFreeTimeStateResponseResult$b;-><init>(Lcom/wufan/user/service/protobuf/MessageCloudGamingFreeTimeStateResponse$a;)V

    invoke-virtual {v0, p0}, Lcom/wufan/user/service/protobuf/MessageCloudGamingFreeTimeStateResponse$MessageCloudGamingFreeTimeStateResponseResult$b;->mergeFrom(Lcom/wufan/user/service/protobuf/MessageCloudGamingFreeTimeStateResponse$MessageCloudGamingFreeTimeStateResponseResult;)Lcom/wufan/user/service/protobuf/MessageCloudGamingFreeTimeStateResponse$MessageCloudGamingFreeTimeStateResponseResult$b;

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
    iget v0, p0, Lcom/wufan/user/service/protobuf/MessageCloudGamingFreeTimeStateResponse$MessageCloudGamingFreeTimeStateResponseResult;->error_:I

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    const/4 v1, 0x1

    .line 6
    invoke-virtual {p1, v1, v0}, Lcom/google/protobuf/CodedOutputStream;->writeInt32(II)V

    .line 7
    .line 8
    .line 9
    :cond_0
    iget-boolean v0, p0, Lcom/wufan/user/service/protobuf/MessageCloudGamingFreeTimeStateResponse$MessageCloudGamingFreeTimeStateResponseResult;->status_:Z

    .line 10
    .line 11
    if-eqz v0, :cond_1

    .line 12
    .line 13
    const/4 v1, 0x2

    .line 14
    invoke-virtual {p1, v1, v0}, Lcom/google/protobuf/CodedOutputStream;->writeBool(IZ)V

    .line 15
    .line 16
    .line 17
    :cond_1
    invoke-virtual {p0}, Lcom/wufan/user/service/protobuf/MessageCloudGamingFreeTimeStateResponse$MessageCloudGamingFreeTimeStateResponseResult;->getErrorMsgBytes()Lcom/google/protobuf/ByteString;

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
    if-nez v0, :cond_2

    .line 26
    .line 27
    const/4 v0, 0x3

    .line 28
    iget-object v1, p0, Lcom/wufan/user/service/protobuf/MessageCloudGamingFreeTimeStateResponse$MessageCloudGamingFreeTimeStateResponseResult;->errorMsg_:Ljava/lang/Object;

    .line 29
    .line 30
    invoke-static {p1, v0, v1}, Lcom/google/protobuf/GeneratedMessageV3;->writeString(Lcom/google/protobuf/CodedOutputStream;ILjava/lang/Object;)V

    .line 31
    .line 32
    .line 33
    :cond_2
    iget-object v0, p0, Lcom/wufan/user/service/protobuf/MessageCloudGamingFreeTimeStateResponse$MessageCloudGamingFreeTimeStateResponseResult;->data_:Lcom/wufan/user/service/protobuf/MessageCloudGamingFreeTimeStateResponse$MembersInfo;

    .line 34
    .line 35
    if-eqz v0, :cond_3

    .line 36
    .line 37
    const/4 v0, 0x4

    .line 38
    invoke-virtual {p0}, Lcom/wufan/user/service/protobuf/MessageCloudGamingFreeTimeStateResponse$MessageCloudGamingFreeTimeStateResponseResult;->getData()Lcom/wufan/user/service/protobuf/MessageCloudGamingFreeTimeStateResponse$MembersInfo;

    .line 39
    .line 40
    .line 41
    move-result-object v1

    .line 42
    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/CodedOutputStream;->writeMessage(ILcom/google/protobuf/MessageLite;)V

    .line 43
    .line 44
    .line 45
    :cond_3
    invoke-virtual {p0}, Lcom/wufan/user/service/protobuf/MessageCloudGamingFreeTimeStateResponse$MessageCloudGamingFreeTimeStateResponseResult;->getTipsMsgBytes()Lcom/google/protobuf/ByteString;

    .line 46
    .line 47
    .line 48
    move-result-object v0

    .line 49
    invoke-virtual {v0}, Lcom/google/protobuf/ByteString;->isEmpty()Z

    .line 50
    .line 51
    .line 52
    move-result v0

    .line 53
    if-nez v0, :cond_4

    .line 54
    .line 55
    const/4 v0, 0x5

    .line 56
    iget-object v1, p0, Lcom/wufan/user/service/protobuf/MessageCloudGamingFreeTimeStateResponse$MessageCloudGamingFreeTimeStateResponseResult;->tipsMsg_:Ljava/lang/Object;

    .line 57
    .line 58
    invoke-static {p1, v0, v1}, Lcom/google/protobuf/GeneratedMessageV3;->writeString(Lcom/google/protobuf/CodedOutputStream;ILjava/lang/Object;)V

    .line 59
    .line 60
    .line 61
    :cond_4
    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageV3;->unknownFields:Lcom/google/protobuf/UnknownFieldSet;

    .line 62
    .line 63
    invoke-virtual {v0, p1}, Lcom/google/protobuf/UnknownFieldSet;->writeTo(Lcom/google/protobuf/CodedOutputStream;)V

    .line 64
    .line 65
    .line 66
    return-void
.end method
