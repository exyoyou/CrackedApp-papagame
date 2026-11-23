.class public final Lcom/wufan/user/service/protobuf/MessageProto$MessageRequest;
.super Lcom/google/protobuf/GeneratedMessageV3;
.source "SourceFile"

# interfaces
.implements Lcom/wufan/user/service/protobuf/MessageProto$d;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/wufan/user/service/protobuf/MessageProto;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "MessageRequest"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/wufan/user/service/protobuf/MessageProto$MessageRequest$b;,
        Lcom/wufan/user/service/protobuf/MessageProto$MessageRequest$ProtoType;
    }
.end annotation


# static fields
.field public static final ACCOUNT_FIELD_NUMBER:I = 0x7

.field public static final APPVERSION_FIELD_NUMBER:I = 0x1

.field private static final DEFAULT_INSTANCE:Lcom/wufan/user/service/protobuf/MessageProto$MessageRequest;

.field public static final PARAMS_FIELD_NUMBER:I = 0x5

.field private static final PARSER:Lcom/google/protobuf/Parser;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/protobuf/Parser<",
            "Lcom/wufan/user/service/protobuf/MessageProto$MessageRequest;",
            ">;"
        }
    .end annotation
.end field

.field public static final PUSHPARAMS_FIELD_NUMBER:I = 0x6

.field public static final REQUESTID_FIELD_NUMBER:I = 0x4

.field public static final TYPE_FIELD_NUMBER:I = 0x3

.field public static final VERSION_FIELD_NUMBER:I = 0x2

.field private static final serialVersionUID:J


# instance fields
.field private account_:Lcom/wufan/user/service/protobuf/MessageProto$Account;

.field private volatile appVersion_:Ljava/lang/Object;

.field private bitField0_:I

.field private memoizedIsInitialized:B

.field private params_:Lcom/wufan/user/service/protobuf/MessageProto$Params;

.field private pushParams_:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/wufan/user/service/protobuf/MessageProto$PushParams;",
            ">;"
        }
    .end annotation
.end field

.field private requestId_:J

.field private type_:I

.field private version_:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 1
    new-instance v0, Lcom/wufan/user/service/protobuf/MessageProto$MessageRequest;

    .line 2
    .line 3
    invoke-direct {v0}, Lcom/wufan/user/service/protobuf/MessageProto$MessageRequest;-><init>()V

    .line 4
    .line 5
    .line 6
    sput-object v0, Lcom/wufan/user/service/protobuf/MessageProto$MessageRequest;->DEFAULT_INSTANCE:Lcom/wufan/user/service/protobuf/MessageProto$MessageRequest;

    .line 7
    .line 8
    new-instance v0, Lcom/wufan/user/service/protobuf/MessageProto$MessageRequest$a;

    .line 9
    .line 10
    invoke-direct {v0}, Lcom/wufan/user/service/protobuf/MessageProto$MessageRequest$a;-><init>()V

    .line 11
    .line 12
    .line 13
    sput-object v0, Lcom/wufan/user/service/protobuf/MessageProto$MessageRequest;->PARSER:Lcom/google/protobuf/Parser;

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
    iput-byte v0, p0, Lcom/wufan/user/service/protobuf/MessageProto$MessageRequest;->memoizedIsInitialized:B

    const-string v0, ""

    .line 7
    iput-object v0, p0, Lcom/wufan/user/service/protobuf/MessageProto$MessageRequest;->appVersion_:Ljava/lang/Object;

    const/4 v0, 0x0

    .line 8
    iput v0, p0, Lcom/wufan/user/service/protobuf/MessageProto$MessageRequest;->type_:I

    .line 9
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/wufan/user/service/protobuf/MessageProto$MessageRequest;->pushParams_:Ljava/util/List;

    return-void
.end method

.method private constructor <init>(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)V
    .locals 8
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

    .line 10
    invoke-direct {p0}, Lcom/wufan/user/service/protobuf/MessageProto$MessageRequest;-><init>()V

    .line 11
    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 12
    invoke-static {}, Lcom/google/protobuf/UnknownFieldSet;->newBuilder()Lcom/google/protobuf/UnknownFieldSet$Builder;

    move-result-object v0

    const/4 v1, 0x0

    const/4 v2, 0x0

    :cond_0
    :goto_0
    const/16 v3, 0x20

    if-nez v1, :cond_d

    .line 13
    :try_start_0
    invoke-virtual {p1}, Lcom/google/protobuf/CodedInputStream;->readTag()I

    move-result v4

    const/4 v5, 0x1

    if-eqz v4, :cond_b

    const/16 v6, 0xa

    if-eq v4, v6, :cond_a

    const/16 v6, 0x10

    if-eq v4, v6, :cond_9

    const/16 v6, 0x18

    if-eq v4, v6, :cond_8

    if-eq v4, v3, :cond_7

    const/16 v6, 0x2a

    const/4 v7, 0x0

    if-eq v4, v6, :cond_5

    const/16 v6, 0x32

    if-eq v4, v6, :cond_3

    const/16 v6, 0x3a

    if-eq v4, v6, :cond_1

    .line 14
    invoke-virtual {p0, p1, v0, p2, v4}, Lcom/google/protobuf/GeneratedMessageV3;->parseUnknownField(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/UnknownFieldSet$Builder;Lcom/google/protobuf/ExtensionRegistryLite;I)Z

    move-result v3

    if-nez v3, :cond_0

    goto/16 :goto_1

    .line 15
    :cond_1
    iget-object v4, p0, Lcom/wufan/user/service/protobuf/MessageProto$MessageRequest;->account_:Lcom/wufan/user/service/protobuf/MessageProto$Account;

    if-eqz v4, :cond_2

    .line 16
    invoke-virtual {v4}, Lcom/wufan/user/service/protobuf/MessageProto$Account;->toBuilder()Lcom/wufan/user/service/protobuf/MessageProto$Account$b;

    move-result-object v7

    .line 17
    :cond_2
    invoke-static {}, Lcom/wufan/user/service/protobuf/MessageProto$Account;->parser()Lcom/google/protobuf/Parser;

    move-result-object v4

    invoke-virtual {p1, v4, p2}, Lcom/google/protobuf/CodedInputStream;->readMessage(Lcom/google/protobuf/Parser;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/MessageLite;

    move-result-object v4

    check-cast v4, Lcom/wufan/user/service/protobuf/MessageProto$Account;

    iput-object v4, p0, Lcom/wufan/user/service/protobuf/MessageProto$MessageRequest;->account_:Lcom/wufan/user/service/protobuf/MessageProto$Account;

    if-eqz v7, :cond_0

    .line 18
    invoke-virtual {v7, v4}, Lcom/wufan/user/service/protobuf/MessageProto$Account$b;->mergeFrom(Lcom/wufan/user/service/protobuf/MessageProto$Account;)Lcom/wufan/user/service/protobuf/MessageProto$Account$b;

    .line 19
    invoke-virtual {v7}, Lcom/wufan/user/service/protobuf/MessageProto$Account$b;->buildPartial()Lcom/wufan/user/service/protobuf/MessageProto$Account;

    move-result-object v4

    iput-object v4, p0, Lcom/wufan/user/service/protobuf/MessageProto$MessageRequest;->account_:Lcom/wufan/user/service/protobuf/MessageProto$Account;

    goto :goto_0

    :cond_3
    and-int/lit8 v4, v2, 0x20

    if-nez v4, :cond_4

    .line 20
    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    iput-object v4, p0, Lcom/wufan/user/service/protobuf/MessageProto$MessageRequest;->pushParams_:Ljava/util/List;

    or-int/lit8 v2, v2, 0x20

    .line 21
    :cond_4
    iget-object v4, p0, Lcom/wufan/user/service/protobuf/MessageProto$MessageRequest;->pushParams_:Ljava/util/List;

    .line 22
    invoke-static {}, Lcom/wufan/user/service/protobuf/MessageProto$PushParams;->parser()Lcom/google/protobuf/Parser;

    move-result-object v5

    invoke-virtual {p1, v5, p2}, Lcom/google/protobuf/CodedInputStream;->readMessage(Lcom/google/protobuf/Parser;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/MessageLite;

    move-result-object v5

    check-cast v5, Lcom/wufan/user/service/protobuf/MessageProto$PushParams;

    .line 23
    invoke-interface {v4, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 24
    :cond_5
    iget-object v4, p0, Lcom/wufan/user/service/protobuf/MessageProto$MessageRequest;->params_:Lcom/wufan/user/service/protobuf/MessageProto$Params;

    if-eqz v4, :cond_6

    .line 25
    invoke-virtual {v4}, Lcom/wufan/user/service/protobuf/MessageProto$Params;->toBuilder()Lcom/wufan/user/service/protobuf/MessageProto$Params$b;

    move-result-object v7

    .line 26
    :cond_6
    invoke-static {}, Lcom/wufan/user/service/protobuf/MessageProto$Params;->parser()Lcom/google/protobuf/Parser;

    move-result-object v4

    invoke-virtual {p1, v4, p2}, Lcom/google/protobuf/CodedInputStream;->readMessage(Lcom/google/protobuf/Parser;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/MessageLite;

    move-result-object v4

    check-cast v4, Lcom/wufan/user/service/protobuf/MessageProto$Params;

    iput-object v4, p0, Lcom/wufan/user/service/protobuf/MessageProto$MessageRequest;->params_:Lcom/wufan/user/service/protobuf/MessageProto$Params;

    if-eqz v7, :cond_0

    .line 27
    invoke-virtual {v7, v4}, Lcom/wufan/user/service/protobuf/MessageProto$Params$b;->mergeFrom(Lcom/wufan/user/service/protobuf/MessageProto$Params;)Lcom/wufan/user/service/protobuf/MessageProto$Params$b;

    .line 28
    invoke-virtual {v7}, Lcom/wufan/user/service/protobuf/MessageProto$Params$b;->buildPartial()Lcom/wufan/user/service/protobuf/MessageProto$Params;

    move-result-object v4

    iput-object v4, p0, Lcom/wufan/user/service/protobuf/MessageProto$MessageRequest;->params_:Lcom/wufan/user/service/protobuf/MessageProto$Params;

    goto/16 :goto_0

    .line 29
    :cond_7
    invoke-virtual {p1}, Lcom/google/protobuf/CodedInputStream;->readInt64()J

    move-result-wide v4

    iput-wide v4, p0, Lcom/wufan/user/service/protobuf/MessageProto$MessageRequest;->requestId_:J

    goto/16 :goto_0

    .line 30
    :cond_8
    invoke-virtual {p1}, Lcom/google/protobuf/CodedInputStream;->readEnum()I

    move-result v4

    .line 31
    iput v4, p0, Lcom/wufan/user/service/protobuf/MessageProto$MessageRequest;->type_:I

    goto/16 :goto_0

    .line 32
    :cond_9
    invoke-virtual {p1}, Lcom/google/protobuf/CodedInputStream;->readInt32()I

    move-result v4

    iput v4, p0, Lcom/wufan/user/service/protobuf/MessageProto$MessageRequest;->version_:I

    goto/16 :goto_0

    .line 33
    :cond_a
    invoke-virtual {p1}, Lcom/google/protobuf/CodedInputStream;->readStringRequireUtf8()Ljava/lang/String;

    move-result-object v4

    .line 34
    iput-object v4, p0, Lcom/wufan/user/service/protobuf/MessageProto$MessageRequest;->appVersion_:Ljava/lang/Object;
    :try_end_0
    .catch Lcom/google/protobuf/InvalidProtocolBufferException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto/16 :goto_0

    :cond_b
    :goto_1
    const/4 v1, 0x1

    goto/16 :goto_0

    :catchall_0
    move-exception p1

    goto :goto_2

    :catch_0
    move-exception p1

    .line 35
    :try_start_1
    new-instance p2, Lcom/google/protobuf/InvalidProtocolBufferException;

    invoke-direct {p2, p1}, Lcom/google/protobuf/InvalidProtocolBufferException;-><init>(Ljava/io/IOException;)V

    .line 36
    invoke-virtual {p2, p0}, Lcom/google/protobuf/InvalidProtocolBufferException;->setUnfinishedMessage(Lcom/google/protobuf/MessageLite;)Lcom/google/protobuf/InvalidProtocolBufferException;

    move-result-object p1

    throw p1

    :catch_1
    move-exception p1

    .line 37
    invoke-virtual {p1, p0}, Lcom/google/protobuf/InvalidProtocolBufferException;->setUnfinishedMessage(Lcom/google/protobuf/MessageLite;)Lcom/google/protobuf/InvalidProtocolBufferException;

    move-result-object p1

    throw p1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :goto_2
    and-int/lit8 p2, v2, 0x20

    if-eqz p2, :cond_c

    .line 38
    iget-object p2, p0, Lcom/wufan/user/service/protobuf/MessageProto$MessageRequest;->pushParams_:Ljava/util/List;

    invoke-static {p2}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object p2

    iput-object p2, p0, Lcom/wufan/user/service/protobuf/MessageProto$MessageRequest;->pushParams_:Ljava/util/List;

    .line 39
    :cond_c
    invoke-virtual {v0}, Lcom/google/protobuf/UnknownFieldSet$Builder;->build()Lcom/google/protobuf/UnknownFieldSet;

    move-result-object p2

    iput-object p2, p0, Lcom/google/protobuf/GeneratedMessageV3;->unknownFields:Lcom/google/protobuf/UnknownFieldSet;

    .line 40
    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageV3;->makeExtensionsImmutable()V

    .line 41
    throw p1

    :cond_d
    and-int/lit8 p1, v2, 0x20

    if-eqz p1, :cond_e

    .line 42
    iget-object p1, p0, Lcom/wufan/user/service/protobuf/MessageProto$MessageRequest;->pushParams_:Ljava/util/List;

    invoke-static {p1}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object p1

    iput-object p1, p0, Lcom/wufan/user/service/protobuf/MessageProto$MessageRequest;->pushParams_:Ljava/util/List;

    .line 43
    :cond_e
    invoke-virtual {v0}, Lcom/google/protobuf/UnknownFieldSet$Builder;->build()Lcom/google/protobuf/UnknownFieldSet;

    move-result-object p1

    iput-object p1, p0, Lcom/google/protobuf/GeneratedMessageV3;->unknownFields:Lcom/google/protobuf/UnknownFieldSet;

    .line 44
    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageV3;->makeExtensionsImmutable()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;Lcom/wufan/user/service/protobuf/MessageProto$a;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .line 1
    invoke-direct {p0, p1, p2}, Lcom/wufan/user/service/protobuf/MessageProto$MessageRequest;-><init>(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)V

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
    iput-byte p1, p0, Lcom/wufan/user/service/protobuf/MessageProto$MessageRequest;->memoizedIsInitialized:B

    return-void
.end method

.method synthetic constructor <init>(Lcom/google/protobuf/GeneratedMessageV3$Builder;Lcom/wufan/user/service/protobuf/MessageProto$a;)V
    .locals 0

    .line 2
    invoke-direct {p0, p1}, Lcom/wufan/user/service/protobuf/MessageProto$MessageRequest;-><init>(Lcom/google/protobuf/GeneratedMessageV3$Builder;)V

    return-void
.end method

.method static synthetic access$1002(Lcom/wufan/user/service/protobuf/MessageProto$MessageRequest;Lcom/wufan/user/service/protobuf/MessageProto$Params;)Lcom/wufan/user/service/protobuf/MessageProto$Params;
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/wufan/user/service/protobuf/MessageProto$MessageRequest;->params_:Lcom/wufan/user/service/protobuf/MessageProto$Params;

    .line 2
    .line 3
    return-object p1
.end method

.method static synthetic access$1100(Lcom/wufan/user/service/protobuf/MessageProto$MessageRequest;)Ljava/util/List;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/wufan/user/service/protobuf/MessageProto$MessageRequest;->pushParams_:Ljava/util/List;

    .line 2
    .line 3
    return-object p0
.end method

.method static synthetic access$1102(Lcom/wufan/user/service/protobuf/MessageProto$MessageRequest;Ljava/util/List;)Ljava/util/List;
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/wufan/user/service/protobuf/MessageProto$MessageRequest;->pushParams_:Ljava/util/List;

    .line 2
    .line 3
    return-object p1
.end method

.method static synthetic access$1202(Lcom/wufan/user/service/protobuf/MessageProto$MessageRequest;Lcom/wufan/user/service/protobuf/MessageProto$Account;)Lcom/wufan/user/service/protobuf/MessageProto$Account;
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/wufan/user/service/protobuf/MessageProto$MessageRequest;->account_:Lcom/wufan/user/service/protobuf/MessageProto$Account;

    .line 2
    .line 3
    return-object p1
.end method

.method static synthetic access$1302(Lcom/wufan/user/service/protobuf/MessageProto$MessageRequest;I)I
    .locals 0

    .line 1
    iput p1, p0, Lcom/wufan/user/service/protobuf/MessageProto$MessageRequest;->bitField0_:I

    .line 2
    .line 3
    return p1
.end method

.method static synthetic access$1400()Z
    .locals 1

    .line 1
    sget-boolean v0, Lcom/google/protobuf/GeneratedMessageV3;->alwaysUseFieldBuilders:Z

    .line 2
    .line 3
    return v0
.end method

.method static synthetic access$1500(Lcom/wufan/user/service/protobuf/MessageProto$MessageRequest;)Lcom/google/protobuf/UnknownFieldSet;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/google/protobuf/GeneratedMessageV3;->unknownFields:Lcom/google/protobuf/UnknownFieldSet;

    .line 2
    .line 3
    return-object p0
.end method

.method static synthetic access$1600()Lcom/google/protobuf/Parser;
    .locals 1

    .line 1
    sget-object v0, Lcom/wufan/user/service/protobuf/MessageProto$MessageRequest;->PARSER:Lcom/google/protobuf/Parser;

    .line 2
    .line 3
    return-object v0
.end method

.method static synthetic access$1700(Lcom/google/protobuf/ByteString;)V
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

.method static synthetic access$600(Lcom/wufan/user/service/protobuf/MessageProto$MessageRequest;)Ljava/lang/Object;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/wufan/user/service/protobuf/MessageProto$MessageRequest;->appVersion_:Ljava/lang/Object;

    .line 2
    .line 3
    return-object p0
.end method

.method static synthetic access$602(Lcom/wufan/user/service/protobuf/MessageProto$MessageRequest;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/wufan/user/service/protobuf/MessageProto$MessageRequest;->appVersion_:Ljava/lang/Object;

    .line 2
    .line 3
    return-object p1
.end method

.method static synthetic access$702(Lcom/wufan/user/service/protobuf/MessageProto$MessageRequest;I)I
    .locals 0

    .line 1
    iput p1, p0, Lcom/wufan/user/service/protobuf/MessageProto$MessageRequest;->version_:I

    .line 2
    .line 3
    return p1
.end method

.method static synthetic access$800(Lcom/wufan/user/service/protobuf/MessageProto$MessageRequest;)I
    .locals 0

    .line 1
    iget p0, p0, Lcom/wufan/user/service/protobuf/MessageProto$MessageRequest;->type_:I

    .line 2
    .line 3
    return p0
.end method

.method static synthetic access$802(Lcom/wufan/user/service/protobuf/MessageProto$MessageRequest;I)I
    .locals 0

    .line 1
    iput p1, p0, Lcom/wufan/user/service/protobuf/MessageProto$MessageRequest;->type_:I

    .line 2
    .line 3
    return p1
.end method

.method static synthetic access$902(Lcom/wufan/user/service/protobuf/MessageProto$MessageRequest;J)J
    .locals 0

    .line 1
    iput-wide p1, p0, Lcom/wufan/user/service/protobuf/MessageProto$MessageRequest;->requestId_:J

    .line 2
    .line 3
    return-wide p1
.end method

.method public static getDefaultInstance()Lcom/wufan/user/service/protobuf/MessageProto$MessageRequest;
    .locals 1

    .line 1
    sget-object v0, Lcom/wufan/user/service/protobuf/MessageProto$MessageRequest;->DEFAULT_INSTANCE:Lcom/wufan/user/service/protobuf/MessageProto$MessageRequest;

    .line 2
    .line 3
    return-object v0
.end method

.method public static final getDescriptor()Lcom/google/protobuf/Descriptors$Descriptor;
    .locals 1

    .line 1
    invoke-static {}, Lcom/wufan/user/service/protobuf/MessageProto;->a()Lcom/google/protobuf/Descriptors$Descriptor;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    return-object v0
.end method

.method public static newBuilder()Lcom/wufan/user/service/protobuf/MessageProto$MessageRequest$b;
    .locals 1

    .line 1
    sget-object v0, Lcom/wufan/user/service/protobuf/MessageProto$MessageRequest;->DEFAULT_INSTANCE:Lcom/wufan/user/service/protobuf/MessageProto$MessageRequest;

    invoke-virtual {v0}, Lcom/wufan/user/service/protobuf/MessageProto$MessageRequest;->toBuilder()Lcom/wufan/user/service/protobuf/MessageProto$MessageRequest$b;

    move-result-object v0

    return-object v0
.end method

.method public static newBuilder(Lcom/wufan/user/service/protobuf/MessageProto$MessageRequest;)Lcom/wufan/user/service/protobuf/MessageProto$MessageRequest$b;
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
    sget-object v0, Lcom/wufan/user/service/protobuf/MessageProto$MessageRequest;->DEFAULT_INSTANCE:Lcom/wufan/user/service/protobuf/MessageProto$MessageRequest;

    invoke-virtual {v0}, Lcom/wufan/user/service/protobuf/MessageProto$MessageRequest;->toBuilder()Lcom/wufan/user/service/protobuf/MessageProto$MessageRequest$b;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/wufan/user/service/protobuf/MessageProto$MessageRequest$b;->mergeFrom(Lcom/wufan/user/service/protobuf/MessageProto$MessageRequest;)Lcom/wufan/user/service/protobuf/MessageProto$MessageRequest$b;

    move-result-object p0

    return-object p0
.end method

.method public static parseDelimitedFrom(Ljava/io/InputStream;)Lcom/wufan/user/service/protobuf/MessageProto$MessageRequest;
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
    sget-object v0, Lcom/wufan/user/service/protobuf/MessageProto$MessageRequest;->PARSER:Lcom/google/protobuf/Parser;

    .line 2
    invoke-static {v0, p0}, Lcom/google/protobuf/GeneratedMessageV3;->parseDelimitedWithIOException(Lcom/google/protobuf/Parser;Ljava/io/InputStream;)Lcom/google/protobuf/Message;

    move-result-object p0

    check-cast p0, Lcom/wufan/user/service/protobuf/MessageProto$MessageRequest;

    return-object p0
.end method

.method public static parseDelimitedFrom(Ljava/io/InputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/wufan/user/service/protobuf/MessageProto$MessageRequest;
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
    sget-object v0, Lcom/wufan/user/service/protobuf/MessageProto$MessageRequest;->PARSER:Lcom/google/protobuf/Parser;

    .line 4
    invoke-static {v0, p0, p1}, Lcom/google/protobuf/GeneratedMessageV3;->parseDelimitedWithIOException(Lcom/google/protobuf/Parser;Ljava/io/InputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/Message;

    move-result-object p0

    check-cast p0, Lcom/wufan/user/service/protobuf/MessageProto$MessageRequest;

    return-object p0
.end method

.method public static parseFrom(Lcom/google/protobuf/ByteString;)Lcom/wufan/user/service/protobuf/MessageProto$MessageRequest;
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
    sget-object v0, Lcom/wufan/user/service/protobuf/MessageProto$MessageRequest;->PARSER:Lcom/google/protobuf/Parser;

    invoke-interface {v0, p0}, Lcom/google/protobuf/Parser;->parseFrom(Lcom/google/protobuf/ByteString;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/wufan/user/service/protobuf/MessageProto$MessageRequest;

    return-object p0
.end method

.method public static parseFrom(Lcom/google/protobuf/ByteString;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/wufan/user/service/protobuf/MessageProto$MessageRequest;
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
    sget-object v0, Lcom/wufan/user/service/protobuf/MessageProto$MessageRequest;->PARSER:Lcom/google/protobuf/Parser;

    invoke-interface {v0, p0, p1}, Lcom/google/protobuf/Parser;->parseFrom(Lcom/google/protobuf/ByteString;Lcom/google/protobuf/ExtensionRegistryLite;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/wufan/user/service/protobuf/MessageProto$MessageRequest;

    return-object p0
.end method

.method public static parseFrom(Lcom/google/protobuf/CodedInputStream;)Lcom/wufan/user/service/protobuf/MessageProto$MessageRequest;
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
    sget-object v0, Lcom/wufan/user/service/protobuf/MessageProto$MessageRequest;->PARSER:Lcom/google/protobuf/Parser;

    .line 12
    invoke-static {v0, p0}, Lcom/google/protobuf/GeneratedMessageV3;->parseWithIOException(Lcom/google/protobuf/Parser;Lcom/google/protobuf/CodedInputStream;)Lcom/google/protobuf/Message;

    move-result-object p0

    check-cast p0, Lcom/wufan/user/service/protobuf/MessageProto$MessageRequest;

    return-object p0
.end method

.method public static parseFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/wufan/user/service/protobuf/MessageProto$MessageRequest;
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
    sget-object v0, Lcom/wufan/user/service/protobuf/MessageProto$MessageRequest;->PARSER:Lcom/google/protobuf/Parser;

    .line 14
    invoke-static {v0, p0, p1}, Lcom/google/protobuf/GeneratedMessageV3;->parseWithIOException(Lcom/google/protobuf/Parser;Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/Message;

    move-result-object p0

    check-cast p0, Lcom/wufan/user/service/protobuf/MessageProto$MessageRequest;

    return-object p0
.end method

.method public static parseFrom(Ljava/io/InputStream;)Lcom/wufan/user/service/protobuf/MessageProto$MessageRequest;
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
    sget-object v0, Lcom/wufan/user/service/protobuf/MessageProto$MessageRequest;->PARSER:Lcom/google/protobuf/Parser;

    .line 8
    invoke-static {v0, p0}, Lcom/google/protobuf/GeneratedMessageV3;->parseWithIOException(Lcom/google/protobuf/Parser;Ljava/io/InputStream;)Lcom/google/protobuf/Message;

    move-result-object p0

    check-cast p0, Lcom/wufan/user/service/protobuf/MessageProto$MessageRequest;

    return-object p0
.end method

.method public static parseFrom(Ljava/io/InputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/wufan/user/service/protobuf/MessageProto$MessageRequest;
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
    sget-object v0, Lcom/wufan/user/service/protobuf/MessageProto$MessageRequest;->PARSER:Lcom/google/protobuf/Parser;

    .line 10
    invoke-static {v0, p0, p1}, Lcom/google/protobuf/GeneratedMessageV3;->parseWithIOException(Lcom/google/protobuf/Parser;Ljava/io/InputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/Message;

    move-result-object p0

    check-cast p0, Lcom/wufan/user/service/protobuf/MessageProto$MessageRequest;

    return-object p0
.end method

.method public static parseFrom(Ljava/nio/ByteBuffer;)Lcom/wufan/user/service/protobuf/MessageProto$MessageRequest;
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
    sget-object v0, Lcom/wufan/user/service/protobuf/MessageProto$MessageRequest;->PARSER:Lcom/google/protobuf/Parser;

    invoke-interface {v0, p0}, Lcom/google/protobuf/Parser;->parseFrom(Ljava/nio/ByteBuffer;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/wufan/user/service/protobuf/MessageProto$MessageRequest;

    return-object p0
.end method

.method public static parseFrom(Ljava/nio/ByteBuffer;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/wufan/user/service/protobuf/MessageProto$MessageRequest;
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
    sget-object v0, Lcom/wufan/user/service/protobuf/MessageProto$MessageRequest;->PARSER:Lcom/google/protobuf/Parser;

    invoke-interface {v0, p0, p1}, Lcom/google/protobuf/Parser;->parseFrom(Ljava/nio/ByteBuffer;Lcom/google/protobuf/ExtensionRegistryLite;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/wufan/user/service/protobuf/MessageProto$MessageRequest;

    return-object p0
.end method

.method public static parseFrom([B)Lcom/wufan/user/service/protobuf/MessageProto$MessageRequest;
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
    sget-object v0, Lcom/wufan/user/service/protobuf/MessageProto$MessageRequest;->PARSER:Lcom/google/protobuf/Parser;

    invoke-interface {v0, p0}, Lcom/google/protobuf/Parser;->parseFrom([B)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/wufan/user/service/protobuf/MessageProto$MessageRequest;

    return-object p0
.end method

.method public static parseFrom([BLcom/google/protobuf/ExtensionRegistryLite;)Lcom/wufan/user/service/protobuf/MessageProto$MessageRequest;
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
    sget-object v0, Lcom/wufan/user/service/protobuf/MessageProto$MessageRequest;->PARSER:Lcom/google/protobuf/Parser;

    invoke-interface {v0, p0, p1}, Lcom/google/protobuf/Parser;->parseFrom([BLcom/google/protobuf/ExtensionRegistryLite;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/wufan/user/service/protobuf/MessageProto$MessageRequest;

    return-object p0
.end method

.method public static parser()Lcom/google/protobuf/Parser;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/google/protobuf/Parser<",
            "Lcom/wufan/user/service/protobuf/MessageProto$MessageRequest;",
            ">;"
        }
    .end annotation

    .line 1
    sget-object v0, Lcom/wufan/user/service/protobuf/MessageProto$MessageRequest;->PARSER:Lcom/google/protobuf/Parser;

    .line 2
    .line 3
    return-object v0
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 7
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
    instance-of v1, p1, Lcom/wufan/user/service/protobuf/MessageProto$MessageRequest;

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
    check-cast p1, Lcom/wufan/user/service/protobuf/MessageProto$MessageRequest;

    .line 15
    .line 16
    invoke-virtual {p0}, Lcom/wufan/user/service/protobuf/MessageProto$MessageRequest;->getAppVersion()Ljava/lang/String;

    .line 17
    .line 18
    .line 19
    move-result-object v1

    .line 20
    invoke-virtual {p1}, Lcom/wufan/user/service/protobuf/MessageProto$MessageRequest;->getAppVersion()Ljava/lang/String;

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
    invoke-virtual {p0}, Lcom/wufan/user/service/protobuf/MessageProto$MessageRequest;->getVersion()I

    .line 33
    .line 34
    .line 35
    move-result v1

    .line 36
    invoke-virtual {p1}, Lcom/wufan/user/service/protobuf/MessageProto$MessageRequest;->getVersion()I

    .line 37
    .line 38
    .line 39
    move-result v3

    .line 40
    if-eq v1, v3, :cond_3

    .line 41
    .line 42
    return v2

    .line 43
    :cond_3
    iget v1, p0, Lcom/wufan/user/service/protobuf/MessageProto$MessageRequest;->type_:I

    .line 44
    .line 45
    iget v3, p1, Lcom/wufan/user/service/protobuf/MessageProto$MessageRequest;->type_:I

    .line 46
    .line 47
    if-eq v1, v3, :cond_4

    .line 48
    .line 49
    return v2

    .line 50
    :cond_4
    invoke-virtual {p0}, Lcom/wufan/user/service/protobuf/MessageProto$MessageRequest;->getRequestId()J

    .line 51
    .line 52
    .line 53
    move-result-wide v3

    .line 54
    invoke-virtual {p1}, Lcom/wufan/user/service/protobuf/MessageProto$MessageRequest;->getRequestId()J

    .line 55
    .line 56
    .line 57
    move-result-wide v5

    .line 58
    cmp-long v1, v3, v5

    .line 59
    .line 60
    if-eqz v1, :cond_5

    .line 61
    .line 62
    return v2

    .line 63
    :cond_5
    invoke-virtual {p0}, Lcom/wufan/user/service/protobuf/MessageProto$MessageRequest;->hasParams()Z

    .line 64
    .line 65
    .line 66
    move-result v1

    .line 67
    invoke-virtual {p1}, Lcom/wufan/user/service/protobuf/MessageProto$MessageRequest;->hasParams()Z

    .line 68
    .line 69
    .line 70
    move-result v3

    .line 71
    if-eq v1, v3, :cond_6

    .line 72
    .line 73
    return v2

    .line 74
    :cond_6
    invoke-virtual {p0}, Lcom/wufan/user/service/protobuf/MessageProto$MessageRequest;->hasParams()Z

    .line 75
    .line 76
    .line 77
    move-result v1

    .line 78
    if-eqz v1, :cond_7

    .line 79
    .line 80
    invoke-virtual {p0}, Lcom/wufan/user/service/protobuf/MessageProto$MessageRequest;->getParams()Lcom/wufan/user/service/protobuf/MessageProto$Params;

    .line 81
    .line 82
    .line 83
    move-result-object v1

    .line 84
    invoke-virtual {p1}, Lcom/wufan/user/service/protobuf/MessageProto$MessageRequest;->getParams()Lcom/wufan/user/service/protobuf/MessageProto$Params;

    .line 85
    .line 86
    .line 87
    move-result-object v3

    .line 88
    invoke-virtual {v1, v3}, Lcom/wufan/user/service/protobuf/MessageProto$Params;->equals(Ljava/lang/Object;)Z

    .line 89
    .line 90
    .line 91
    move-result v1

    .line 92
    if-nez v1, :cond_7

    .line 93
    .line 94
    return v2

    .line 95
    :cond_7
    invoke-virtual {p0}, Lcom/wufan/user/service/protobuf/MessageProto$MessageRequest;->getPushParamsList()Ljava/util/List;

    .line 96
    .line 97
    .line 98
    move-result-object v1

    .line 99
    invoke-virtual {p1}, Lcom/wufan/user/service/protobuf/MessageProto$MessageRequest;->getPushParamsList()Ljava/util/List;

    .line 100
    .line 101
    .line 102
    move-result-object v3

    .line 103
    invoke-interface {v1, v3}, Ljava/util/List;->equals(Ljava/lang/Object;)Z

    .line 104
    .line 105
    .line 106
    move-result v1

    .line 107
    if-nez v1, :cond_8

    .line 108
    .line 109
    return v2

    .line 110
    :cond_8
    invoke-virtual {p0}, Lcom/wufan/user/service/protobuf/MessageProto$MessageRequest;->hasAccount()Z

    .line 111
    .line 112
    .line 113
    move-result v1

    .line 114
    invoke-virtual {p1}, Lcom/wufan/user/service/protobuf/MessageProto$MessageRequest;->hasAccount()Z

    .line 115
    .line 116
    .line 117
    move-result v3

    .line 118
    if-eq v1, v3, :cond_9

    .line 119
    .line 120
    return v2

    .line 121
    :cond_9
    invoke-virtual {p0}, Lcom/wufan/user/service/protobuf/MessageProto$MessageRequest;->hasAccount()Z

    .line 122
    .line 123
    .line 124
    move-result v1

    .line 125
    if-eqz v1, :cond_a

    .line 126
    .line 127
    invoke-virtual {p0}, Lcom/wufan/user/service/protobuf/MessageProto$MessageRequest;->getAccount()Lcom/wufan/user/service/protobuf/MessageProto$Account;

    .line 128
    .line 129
    .line 130
    move-result-object v1

    .line 131
    invoke-virtual {p1}, Lcom/wufan/user/service/protobuf/MessageProto$MessageRequest;->getAccount()Lcom/wufan/user/service/protobuf/MessageProto$Account;

    .line 132
    .line 133
    .line 134
    move-result-object v3

    .line 135
    invoke-virtual {v1, v3}, Lcom/wufan/user/service/protobuf/MessageProto$Account;->equals(Ljava/lang/Object;)Z

    .line 136
    .line 137
    .line 138
    move-result v1

    .line 139
    if-nez v1, :cond_a

    .line 140
    .line 141
    return v2

    .line 142
    :cond_a
    iget-object v1, p0, Lcom/google/protobuf/GeneratedMessageV3;->unknownFields:Lcom/google/protobuf/UnknownFieldSet;

    .line 143
    .line 144
    iget-object p1, p1, Lcom/google/protobuf/GeneratedMessageV3;->unknownFields:Lcom/google/protobuf/UnknownFieldSet;

    .line 145
    .line 146
    invoke-virtual {v1, p1}, Lcom/google/protobuf/UnknownFieldSet;->equals(Ljava/lang/Object;)Z

    .line 147
    .line 148
    .line 149
    move-result p1

    .line 150
    if-nez p1, :cond_b

    .line 151
    .line 152
    return v2

    .line 153
    :cond_b
    return v0
.end method

.method public getAccount()Lcom/wufan/user/service/protobuf/MessageProto$Account;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/wufan/user/service/protobuf/MessageProto$MessageRequest;->account_:Lcom/wufan/user/service/protobuf/MessageProto$Account;

    .line 2
    .line 3
    if-nez v0, :cond_0

    .line 4
    .line 5
    invoke-static {}, Lcom/wufan/user/service/protobuf/MessageProto$Account;->getDefaultInstance()Lcom/wufan/user/service/protobuf/MessageProto$Account;

    .line 6
    .line 7
    .line 8
    move-result-object v0

    .line 9
    :cond_0
    return-object v0
.end method

.method public getAccountOrBuilder()Lcom/wufan/user/service/protobuf/MessageProto$b;
    .locals 1

    .line 1
    invoke-virtual {p0}, Lcom/wufan/user/service/protobuf/MessageProto$MessageRequest;->getAccount()Lcom/wufan/user/service/protobuf/MessageProto$Account;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    return-object v0
.end method

.method public getAppVersion()Ljava/lang/String;
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/wufan/user/service/protobuf/MessageProto$MessageRequest;->appVersion_:Ljava/lang/Object;

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
    iput-object v0, p0, Lcom/wufan/user/service/protobuf/MessageProto$MessageRequest;->appVersion_:Ljava/lang/Object;

    .line 17
    .line 18
    return-object v0
.end method

.method public getAppVersionBytes()Lcom/google/protobuf/ByteString;
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/wufan/user/service/protobuf/MessageProto$MessageRequest;->appVersion_:Ljava/lang/Object;

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
    iput-object v0, p0, Lcom/wufan/user/service/protobuf/MessageProto$MessageRequest;->appVersion_:Ljava/lang/Object;

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

.method public bridge synthetic getDefaultInstanceForType()Lcom/google/protobuf/Message;
    .locals 1

    .line 1
    invoke-virtual {p0}, Lcom/wufan/user/service/protobuf/MessageProto$MessageRequest;->getDefaultInstanceForType()Lcom/wufan/user/service/protobuf/MessageProto$MessageRequest;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic getDefaultInstanceForType()Lcom/google/protobuf/MessageLite;
    .locals 1

    .line 2
    invoke-virtual {p0}, Lcom/wufan/user/service/protobuf/MessageProto$MessageRequest;->getDefaultInstanceForType()Lcom/wufan/user/service/protobuf/MessageProto$MessageRequest;

    move-result-object v0

    return-object v0
.end method

.method public getDefaultInstanceForType()Lcom/wufan/user/service/protobuf/MessageProto$MessageRequest;
    .locals 1

    .line 3
    sget-object v0, Lcom/wufan/user/service/protobuf/MessageProto$MessageRequest;->DEFAULT_INSTANCE:Lcom/wufan/user/service/protobuf/MessageProto$MessageRequest;

    return-object v0
.end method

.method public getParams()Lcom/wufan/user/service/protobuf/MessageProto$Params;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/wufan/user/service/protobuf/MessageProto$MessageRequest;->params_:Lcom/wufan/user/service/protobuf/MessageProto$Params;

    .line 2
    .line 3
    if-nez v0, :cond_0

    .line 4
    .line 5
    invoke-static {}, Lcom/wufan/user/service/protobuf/MessageProto$Params;->getDefaultInstance()Lcom/wufan/user/service/protobuf/MessageProto$Params;

    .line 6
    .line 7
    .line 8
    move-result-object v0

    .line 9
    :cond_0
    return-object v0
.end method

.method public getParamsOrBuilder()Lcom/wufan/user/service/protobuf/MessageProto$e;
    .locals 1

    .line 1
    invoke-virtual {p0}, Lcom/wufan/user/service/protobuf/MessageProto$MessageRequest;->getParams()Lcom/wufan/user/service/protobuf/MessageProto$Params;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    return-object v0
.end method

.method public getParserForType()Lcom/google/protobuf/Parser;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/google/protobuf/Parser<",
            "Lcom/wufan/user/service/protobuf/MessageProto$MessageRequest;",
            ">;"
        }
    .end annotation

    .line 1
    sget-object v0, Lcom/wufan/user/service/protobuf/MessageProto$MessageRequest;->PARSER:Lcom/google/protobuf/Parser;

    .line 2
    .line 3
    return-object v0
.end method

.method public getPushParams(I)Lcom/wufan/user/service/protobuf/MessageProto$PushParams;
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "index"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/wufan/user/service/protobuf/MessageProto$MessageRequest;->pushParams_:Ljava/util/List;

    .line 2
    .line 3
    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 4
    .line 5
    .line 6
    move-result-object p1

    .line 7
    check-cast p1, Lcom/wufan/user/service/protobuf/MessageProto$PushParams;

    .line 8
    .line 9
    return-object p1
.end method

.method public getPushParamsCount()I
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/wufan/user/service/protobuf/MessageProto$MessageRequest;->pushParams_:Ljava/util/List;

    .line 2
    .line 3
    invoke-interface {v0}, Ljava/util/List;->size()I

    .line 4
    .line 5
    .line 6
    move-result v0

    .line 7
    return v0
.end method

.method public getPushParamsList()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/wufan/user/service/protobuf/MessageProto$PushParams;",
            ">;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/wufan/user/service/protobuf/MessageProto$MessageRequest;->pushParams_:Ljava/util/List;

    .line 2
    .line 3
    return-object v0
.end method

.method public getPushParamsOrBuilder(I)Lcom/wufan/user/service/protobuf/MessageProto$g;
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "index"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/wufan/user/service/protobuf/MessageProto$MessageRequest;->pushParams_:Ljava/util/List;

    .line 2
    .line 3
    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 4
    .line 5
    .line 6
    move-result-object p1

    .line 7
    check-cast p1, Lcom/wufan/user/service/protobuf/MessageProto$g;

    .line 8
    .line 9
    return-object p1
.end method

.method public getPushParamsOrBuilderList()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "+",
            "Lcom/wufan/user/service/protobuf/MessageProto$g;",
            ">;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/wufan/user/service/protobuf/MessageProto$MessageRequest;->pushParams_:Ljava/util/List;

    .line 2
    .line 3
    return-object v0
.end method

.method public getRequestId()J
    .locals 2

    .line 1
    iget-wide v0, p0, Lcom/wufan/user/service/protobuf/MessageProto$MessageRequest;->requestId_:J

    .line 2
    .line 3
    return-wide v0
.end method

.method public getSerializedSize()I
    .locals 7

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
    invoke-virtual {p0}, Lcom/wufan/user/service/protobuf/MessageProto$MessageRequest;->getAppVersionBytes()Lcom/google/protobuf/ByteString;

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
    iget-object v0, p0, Lcom/wufan/user/service/protobuf/MessageProto$MessageRequest;->appVersion_:Ljava/lang/Object;

    .line 19
    .line 20
    const/4 v2, 0x1

    .line 21
    invoke-static {v2, v0}, Lcom/google/protobuf/GeneratedMessageV3;->computeStringSize(ILjava/lang/Object;)I

    .line 22
    .line 23
    .line 24
    move-result v0

    .line 25
    add-int/2addr v0, v1

    .line 26
    goto :goto_0

    .line 27
    :cond_1
    const/4 v0, 0x0

    .line 28
    :goto_0
    iget v2, p0, Lcom/wufan/user/service/protobuf/MessageProto$MessageRequest;->version_:I

    .line 29
    .line 30
    if-eqz v2, :cond_2

    .line 31
    .line 32
    const/4 v3, 0x2

    .line 33
    invoke-static {v3, v2}, Lcom/google/protobuf/CodedOutputStream;->computeInt32Size(II)I

    .line 34
    .line 35
    .line 36
    move-result v2

    .line 37
    add-int/2addr v0, v2

    .line 38
    :cond_2
    iget v2, p0, Lcom/wufan/user/service/protobuf/MessageProto$MessageRequest;->type_:I

    .line 39
    .line 40
    sget-object v3, Lcom/wufan/user/service/protobuf/MessageProto$MessageRequest$ProtoType;->LOGIN:Lcom/wufan/user/service/protobuf/MessageProto$MessageRequest$ProtoType;

    .line 41
    .line 42
    invoke-virtual {v3}, Lcom/wufan/user/service/protobuf/MessageProto$MessageRequest$ProtoType;->getNumber()I

    .line 43
    .line 44
    .line 45
    move-result v3

    .line 46
    if-eq v2, v3, :cond_3

    .line 47
    .line 48
    const/4 v2, 0x3

    .line 49
    iget v3, p0, Lcom/wufan/user/service/protobuf/MessageProto$MessageRequest;->type_:I

    .line 50
    .line 51
    invoke-static {v2, v3}, Lcom/google/protobuf/CodedOutputStream;->computeEnumSize(II)I

    .line 52
    .line 53
    .line 54
    move-result v2

    .line 55
    add-int/2addr v0, v2

    .line 56
    :cond_3
    iget-wide v2, p0, Lcom/wufan/user/service/protobuf/MessageProto$MessageRequest;->requestId_:J

    .line 57
    .line 58
    const-wide/16 v4, 0x0

    .line 59
    .line 60
    cmp-long v6, v2, v4

    .line 61
    .line 62
    if-eqz v6, :cond_4

    .line 63
    .line 64
    const/4 v4, 0x4

    .line 65
    invoke-static {v4, v2, v3}, Lcom/google/protobuf/CodedOutputStream;->computeInt64Size(IJ)I

    .line 66
    .line 67
    .line 68
    move-result v2

    .line 69
    add-int/2addr v0, v2

    .line 70
    :cond_4
    iget-object v2, p0, Lcom/wufan/user/service/protobuf/MessageProto$MessageRequest;->params_:Lcom/wufan/user/service/protobuf/MessageProto$Params;

    .line 71
    .line 72
    if-eqz v2, :cond_5

    .line 73
    .line 74
    const/4 v2, 0x5

    .line 75
    invoke-virtual {p0}, Lcom/wufan/user/service/protobuf/MessageProto$MessageRequest;->getParams()Lcom/wufan/user/service/protobuf/MessageProto$Params;

    .line 76
    .line 77
    .line 78
    move-result-object v3

    .line 79
    invoke-static {v2, v3}, Lcom/google/protobuf/CodedOutputStream;->computeMessageSize(ILcom/google/protobuf/MessageLite;)I

    .line 80
    .line 81
    .line 82
    move-result v2

    .line 83
    add-int/2addr v0, v2

    .line 84
    :cond_5
    :goto_1
    iget-object v2, p0, Lcom/wufan/user/service/protobuf/MessageProto$MessageRequest;->pushParams_:Ljava/util/List;

    .line 85
    .line 86
    invoke-interface {v2}, Ljava/util/List;->size()I

    .line 87
    .line 88
    .line 89
    move-result v2

    .line 90
    if-ge v1, v2, :cond_6

    .line 91
    .line 92
    iget-object v2, p0, Lcom/wufan/user/service/protobuf/MessageProto$MessageRequest;->pushParams_:Ljava/util/List;

    .line 93
    .line 94
    invoke-interface {v2, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 95
    .line 96
    .line 97
    move-result-object v2

    .line 98
    check-cast v2, Lcom/google/protobuf/MessageLite;

    .line 99
    .line 100
    const/4 v3, 0x6

    .line 101
    invoke-static {v3, v2}, Lcom/google/protobuf/CodedOutputStream;->computeMessageSize(ILcom/google/protobuf/MessageLite;)I

    .line 102
    .line 103
    .line 104
    move-result v2

    .line 105
    add-int/2addr v0, v2

    .line 106
    add-int/lit8 v1, v1, 0x1

    .line 107
    .line 108
    goto :goto_1

    .line 109
    :cond_6
    iget-object v1, p0, Lcom/wufan/user/service/protobuf/MessageProto$MessageRequest;->account_:Lcom/wufan/user/service/protobuf/MessageProto$Account;

    .line 110
    .line 111
    if-eqz v1, :cond_7

    .line 112
    .line 113
    const/4 v1, 0x7

    .line 114
    invoke-virtual {p0}, Lcom/wufan/user/service/protobuf/MessageProto$MessageRequest;->getAccount()Lcom/wufan/user/service/protobuf/MessageProto$Account;

    .line 115
    .line 116
    .line 117
    move-result-object v2

    .line 118
    invoke-static {v1, v2}, Lcom/google/protobuf/CodedOutputStream;->computeMessageSize(ILcom/google/protobuf/MessageLite;)I

    .line 119
    .line 120
    .line 121
    move-result v1

    .line 122
    add-int/2addr v0, v1

    .line 123
    :cond_7
    iget-object v1, p0, Lcom/google/protobuf/GeneratedMessageV3;->unknownFields:Lcom/google/protobuf/UnknownFieldSet;

    .line 124
    .line 125
    invoke-virtual {v1}, Lcom/google/protobuf/UnknownFieldSet;->getSerializedSize()I

    .line 126
    .line 127
    .line 128
    move-result v1

    .line 129
    add-int/2addr v0, v1

    .line 130
    iput v0, p0, Lcom/google/protobuf/AbstractMessage;->memoizedSize:I

    .line 131
    .line 132
    return v0
.end method

.method public getType()Lcom/wufan/user/service/protobuf/MessageProto$MessageRequest$ProtoType;
    .locals 1

    .line 1
    iget v0, p0, Lcom/wufan/user/service/protobuf/MessageProto$MessageRequest;->type_:I

    .line 2
    .line 3
    invoke-static {v0}, Lcom/wufan/user/service/protobuf/MessageProto$MessageRequest$ProtoType;->valueOf(I)Lcom/wufan/user/service/protobuf/MessageProto$MessageRequest$ProtoType;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    if-nez v0, :cond_0

    .line 8
    .line 9
    sget-object v0, Lcom/wufan/user/service/protobuf/MessageProto$MessageRequest$ProtoType;->UNRECOGNIZED:Lcom/wufan/user/service/protobuf/MessageProto$MessageRequest$ProtoType;

    .line 10
    .line 11
    :cond_0
    return-object v0
.end method

.method public getTypeValue()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/wufan/user/service/protobuf/MessageProto$MessageRequest;->type_:I

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

.method public getVersion()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/wufan/user/service/protobuf/MessageProto$MessageRequest;->version_:I

    .line 2
    .line 3
    return v0
.end method

.method public hasAccount()Z
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/wufan/user/service/protobuf/MessageProto$MessageRequest;->account_:Lcom/wufan/user/service/protobuf/MessageProto$Account;

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

.method public hasParams()Z
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/wufan/user/service/protobuf/MessageProto$MessageRequest;->params_:Lcom/wufan/user/service/protobuf/MessageProto$Params;

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
    .locals 4

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
    invoke-static {}, Lcom/wufan/user/service/protobuf/MessageProto$MessageRequest;->getDescriptor()Lcom/google/protobuf/Descriptors$Descriptor;

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
    invoke-virtual {p0}, Lcom/wufan/user/service/protobuf/MessageProto$MessageRequest;->getAppVersion()Ljava/lang/String;

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
    invoke-virtual {p0}, Lcom/wufan/user/service/protobuf/MessageProto$MessageRequest;->getVersion()I

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
    iget v0, p0, Lcom/wufan/user/service/protobuf/MessageProto$MessageRequest;->type_:I

    .line 50
    .line 51
    add-int/2addr v1, v0

    .line 52
    mul-int/lit8 v1, v1, 0x25

    .line 53
    .line 54
    add-int/lit8 v1, v1, 0x4

    .line 55
    .line 56
    mul-int/lit8 v1, v1, 0x35

    .line 57
    .line 58
    invoke-virtual {p0}, Lcom/wufan/user/service/protobuf/MessageProto$MessageRequest;->getRequestId()J

    .line 59
    .line 60
    .line 61
    move-result-wide v2

    .line 62
    invoke-static {v2, v3}, Lcom/google/protobuf/Internal;->hashLong(J)I

    .line 63
    .line 64
    .line 65
    move-result v0

    .line 66
    add-int/2addr v1, v0

    .line 67
    invoke-virtual {p0}, Lcom/wufan/user/service/protobuf/MessageProto$MessageRequest;->hasParams()Z

    .line 68
    .line 69
    .line 70
    move-result v0

    .line 71
    if-eqz v0, :cond_1

    .line 72
    .line 73
    mul-int/lit8 v1, v1, 0x25

    .line 74
    .line 75
    add-int/lit8 v1, v1, 0x5

    .line 76
    .line 77
    mul-int/lit8 v1, v1, 0x35

    .line 78
    .line 79
    invoke-virtual {p0}, Lcom/wufan/user/service/protobuf/MessageProto$MessageRequest;->getParams()Lcom/wufan/user/service/protobuf/MessageProto$Params;

    .line 80
    .line 81
    .line 82
    move-result-object v0

    .line 83
    invoke-virtual {v0}, Lcom/wufan/user/service/protobuf/MessageProto$Params;->hashCode()I

    .line 84
    .line 85
    .line 86
    move-result v0

    .line 87
    add-int/2addr v1, v0

    .line 88
    :cond_1
    invoke-virtual {p0}, Lcom/wufan/user/service/protobuf/MessageProto$MessageRequest;->getPushParamsCount()I

    .line 89
    .line 90
    .line 91
    move-result v0

    .line 92
    if-lez v0, :cond_2

    .line 93
    .line 94
    mul-int/lit8 v1, v1, 0x25

    .line 95
    .line 96
    add-int/lit8 v1, v1, 0x6

    .line 97
    .line 98
    mul-int/lit8 v1, v1, 0x35

    .line 99
    .line 100
    invoke-virtual {p0}, Lcom/wufan/user/service/protobuf/MessageProto$MessageRequest;->getPushParamsList()Ljava/util/List;

    .line 101
    .line 102
    .line 103
    move-result-object v0

    .line 104
    invoke-interface {v0}, Ljava/util/List;->hashCode()I

    .line 105
    .line 106
    .line 107
    move-result v0

    .line 108
    add-int/2addr v1, v0

    .line 109
    :cond_2
    invoke-virtual {p0}, Lcom/wufan/user/service/protobuf/MessageProto$MessageRequest;->hasAccount()Z

    .line 110
    .line 111
    .line 112
    move-result v0

    .line 113
    if-eqz v0, :cond_3

    .line 114
    .line 115
    mul-int/lit8 v1, v1, 0x25

    .line 116
    .line 117
    add-int/lit8 v1, v1, 0x7

    .line 118
    .line 119
    mul-int/lit8 v1, v1, 0x35

    .line 120
    .line 121
    invoke-virtual {p0}, Lcom/wufan/user/service/protobuf/MessageProto$MessageRequest;->getAccount()Lcom/wufan/user/service/protobuf/MessageProto$Account;

    .line 122
    .line 123
    .line 124
    move-result-object v0

    .line 125
    invoke-virtual {v0}, Lcom/wufan/user/service/protobuf/MessageProto$Account;->hashCode()I

    .line 126
    .line 127
    .line 128
    move-result v0

    .line 129
    add-int/2addr v1, v0

    .line 130
    :cond_3
    mul-int/lit8 v1, v1, 0x1d

    .line 131
    .line 132
    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageV3;->unknownFields:Lcom/google/protobuf/UnknownFieldSet;

    .line 133
    .line 134
    invoke-virtual {v0}, Lcom/google/protobuf/UnknownFieldSet;->hashCode()I

    .line 135
    .line 136
    .line 137
    move-result v0

    .line 138
    add-int/2addr v1, v0

    .line 139
    iput v1, p0, Lcom/google/protobuf/AbstractMessageLite;->memoizedHashCode:I

    .line 140
    .line 141
    return v1
.end method

.method protected internalGetFieldAccessorTable()Lcom/google/protobuf/GeneratedMessageV3$FieldAccessorTable;
    .locals 3

    .line 1
    invoke-static {}, Lcom/wufan/user/service/protobuf/MessageProto;->b()Lcom/google/protobuf/GeneratedMessageV3$FieldAccessorTable;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    const-class v1, Lcom/wufan/user/service/protobuf/MessageProto$MessageRequest;

    .line 6
    .line 7
    const-class v2, Lcom/wufan/user/service/protobuf/MessageProto$MessageRequest$b;

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
    iget-byte v0, p0, Lcom/wufan/user/service/protobuf/MessageProto$MessageRequest;->memoizedIsInitialized:B

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
    iput-byte v1, p0, Lcom/wufan/user/service/protobuf/MessageProto$MessageRequest;->memoizedIsInitialized:B

    .line 12
    .line 13
    return v1
.end method

.method public bridge synthetic newBuilderForType()Lcom/google/protobuf/Message$Builder;
    .locals 1

    .line 1
    invoke-virtual {p0}, Lcom/wufan/user/service/protobuf/MessageProto$MessageRequest;->newBuilderForType()Lcom/wufan/user/service/protobuf/MessageProto$MessageRequest$b;

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
    invoke-virtual {p0, p1}, Lcom/wufan/user/service/protobuf/MessageProto$MessageRequest;->newBuilderForType(Lcom/google/protobuf/GeneratedMessageV3$BuilderParent;)Lcom/wufan/user/service/protobuf/MessageProto$MessageRequest$b;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic newBuilderForType()Lcom/google/protobuf/MessageLite$Builder;
    .locals 1

    .line 3
    invoke-virtual {p0}, Lcom/wufan/user/service/protobuf/MessageProto$MessageRequest;->newBuilderForType()Lcom/wufan/user/service/protobuf/MessageProto$MessageRequest$b;

    move-result-object v0

    return-object v0
.end method

.method public newBuilderForType()Lcom/wufan/user/service/protobuf/MessageProto$MessageRequest$b;
    .locals 1

    .line 4
    invoke-static {}, Lcom/wufan/user/service/protobuf/MessageProto$MessageRequest;->newBuilder()Lcom/wufan/user/service/protobuf/MessageProto$MessageRequest$b;

    move-result-object v0

    return-object v0
.end method

.method protected newBuilderForType(Lcom/google/protobuf/GeneratedMessageV3$BuilderParent;)Lcom/wufan/user/service/protobuf/MessageProto$MessageRequest$b;
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
    new-instance v0, Lcom/wufan/user/service/protobuf/MessageProto$MessageRequest$b;

    const/4 v1, 0x0

    invoke-direct {v0, p1, v1}, Lcom/wufan/user/service/protobuf/MessageProto$MessageRequest$b;-><init>(Lcom/google/protobuf/GeneratedMessageV3$BuilderParent;Lcom/wufan/user/service/protobuf/MessageProto$a;)V

    return-object v0
.end method

.method public bridge synthetic toBuilder()Lcom/google/protobuf/Message$Builder;
    .locals 1

    .line 1
    invoke-virtual {p0}, Lcom/wufan/user/service/protobuf/MessageProto$MessageRequest;->toBuilder()Lcom/wufan/user/service/protobuf/MessageProto$MessageRequest$b;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic toBuilder()Lcom/google/protobuf/MessageLite$Builder;
    .locals 1

    .line 2
    invoke-virtual {p0}, Lcom/wufan/user/service/protobuf/MessageProto$MessageRequest;->toBuilder()Lcom/wufan/user/service/protobuf/MessageProto$MessageRequest$b;

    move-result-object v0

    return-object v0
.end method

.method public toBuilder()Lcom/wufan/user/service/protobuf/MessageProto$MessageRequest$b;
    .locals 2

    .line 3
    sget-object v0, Lcom/wufan/user/service/protobuf/MessageProto$MessageRequest;->DEFAULT_INSTANCE:Lcom/wufan/user/service/protobuf/MessageProto$MessageRequest;

    const/4 v1, 0x0

    if-ne p0, v0, :cond_0

    .line 4
    new-instance v0, Lcom/wufan/user/service/protobuf/MessageProto$MessageRequest$b;

    invoke-direct {v0, v1}, Lcom/wufan/user/service/protobuf/MessageProto$MessageRequest$b;-><init>(Lcom/wufan/user/service/protobuf/MessageProto$a;)V

    goto :goto_0

    :cond_0
    new-instance v0, Lcom/wufan/user/service/protobuf/MessageProto$MessageRequest$b;

    invoke-direct {v0, v1}, Lcom/wufan/user/service/protobuf/MessageProto$MessageRequest$b;-><init>(Lcom/wufan/user/service/protobuf/MessageProto$a;)V

    invoke-virtual {v0, p0}, Lcom/wufan/user/service/protobuf/MessageProto$MessageRequest$b;->mergeFrom(Lcom/wufan/user/service/protobuf/MessageProto$MessageRequest;)Lcom/wufan/user/service/protobuf/MessageProto$MessageRequest$b;

    move-result-object v0

    :goto_0
    return-object v0
.end method

.method public writeTo(Lcom/google/protobuf/CodedOutputStream;)V
    .locals 5
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
    invoke-virtual {p0}, Lcom/wufan/user/service/protobuf/MessageProto$MessageRequest;->getAppVersionBytes()Lcom/google/protobuf/ByteString;

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
    iget-object v0, p0, Lcom/wufan/user/service/protobuf/MessageProto$MessageRequest;->appVersion_:Ljava/lang/Object;

    .line 12
    .line 13
    const/4 v1, 0x1

    .line 14
    invoke-static {p1, v1, v0}, Lcom/google/protobuf/GeneratedMessageV3;->writeString(Lcom/google/protobuf/CodedOutputStream;ILjava/lang/Object;)V

    .line 15
    .line 16
    .line 17
    :cond_0
    iget v0, p0, Lcom/wufan/user/service/protobuf/MessageProto$MessageRequest;->version_:I

    .line 18
    .line 19
    if-eqz v0, :cond_1

    .line 20
    .line 21
    const/4 v1, 0x2

    .line 22
    invoke-virtual {p1, v1, v0}, Lcom/google/protobuf/CodedOutputStream;->writeInt32(II)V

    .line 23
    .line 24
    .line 25
    :cond_1
    iget v0, p0, Lcom/wufan/user/service/protobuf/MessageProto$MessageRequest;->type_:I

    .line 26
    .line 27
    sget-object v1, Lcom/wufan/user/service/protobuf/MessageProto$MessageRequest$ProtoType;->LOGIN:Lcom/wufan/user/service/protobuf/MessageProto$MessageRequest$ProtoType;

    .line 28
    .line 29
    invoke-virtual {v1}, Lcom/wufan/user/service/protobuf/MessageProto$MessageRequest$ProtoType;->getNumber()I

    .line 30
    .line 31
    .line 32
    move-result v1

    .line 33
    if-eq v0, v1, :cond_2

    .line 34
    .line 35
    const/4 v0, 0x3

    .line 36
    iget v1, p0, Lcom/wufan/user/service/protobuf/MessageProto$MessageRequest;->type_:I

    .line 37
    .line 38
    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/CodedOutputStream;->writeEnum(II)V

    .line 39
    .line 40
    .line 41
    :cond_2
    iget-wide v0, p0, Lcom/wufan/user/service/protobuf/MessageProto$MessageRequest;->requestId_:J

    .line 42
    .line 43
    const-wide/16 v2, 0x0

    .line 44
    .line 45
    cmp-long v4, v0, v2

    .line 46
    .line 47
    if-eqz v4, :cond_3

    .line 48
    .line 49
    const/4 v2, 0x4

    .line 50
    invoke-virtual {p1, v2, v0, v1}, Lcom/google/protobuf/CodedOutputStream;->writeInt64(IJ)V

    .line 51
    .line 52
    .line 53
    :cond_3
    iget-object v0, p0, Lcom/wufan/user/service/protobuf/MessageProto$MessageRequest;->params_:Lcom/wufan/user/service/protobuf/MessageProto$Params;

    .line 54
    .line 55
    if-eqz v0, :cond_4

    .line 56
    .line 57
    const/4 v0, 0x5

    .line 58
    invoke-virtual {p0}, Lcom/wufan/user/service/protobuf/MessageProto$MessageRequest;->getParams()Lcom/wufan/user/service/protobuf/MessageProto$Params;

    .line 59
    .line 60
    .line 61
    move-result-object v1

    .line 62
    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/CodedOutputStream;->writeMessage(ILcom/google/protobuf/MessageLite;)V

    .line 63
    .line 64
    .line 65
    :cond_4
    const/4 v0, 0x0

    .line 66
    :goto_0
    iget-object v1, p0, Lcom/wufan/user/service/protobuf/MessageProto$MessageRequest;->pushParams_:Ljava/util/List;

    .line 67
    .line 68
    invoke-interface {v1}, Ljava/util/List;->size()I

    .line 69
    .line 70
    .line 71
    move-result v1

    .line 72
    if-ge v0, v1, :cond_5

    .line 73
    .line 74
    iget-object v1, p0, Lcom/wufan/user/service/protobuf/MessageProto$MessageRequest;->pushParams_:Ljava/util/List;

    .line 75
    .line 76
    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 77
    .line 78
    .line 79
    move-result-object v1

    .line 80
    check-cast v1, Lcom/google/protobuf/MessageLite;

    .line 81
    .line 82
    const/4 v2, 0x6

    .line 83
    invoke-virtual {p1, v2, v1}, Lcom/google/protobuf/CodedOutputStream;->writeMessage(ILcom/google/protobuf/MessageLite;)V

    .line 84
    .line 85
    .line 86
    add-int/lit8 v0, v0, 0x1

    .line 87
    .line 88
    goto :goto_0

    .line 89
    :cond_5
    iget-object v0, p0, Lcom/wufan/user/service/protobuf/MessageProto$MessageRequest;->account_:Lcom/wufan/user/service/protobuf/MessageProto$Account;

    .line 90
    .line 91
    if-eqz v0, :cond_6

    .line 92
    .line 93
    const/4 v0, 0x7

    .line 94
    invoke-virtual {p0}, Lcom/wufan/user/service/protobuf/MessageProto$MessageRequest;->getAccount()Lcom/wufan/user/service/protobuf/MessageProto$Account;

    .line 95
    .line 96
    .line 97
    move-result-object v1

    .line 98
    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/CodedOutputStream;->writeMessage(ILcom/google/protobuf/MessageLite;)V

    .line 99
    .line 100
    .line 101
    :cond_6
    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageV3;->unknownFields:Lcom/google/protobuf/UnknownFieldSet;

    .line 102
    .line 103
    invoke-virtual {v0, p1}, Lcom/google/protobuf/UnknownFieldSet;->writeTo(Lcom/google/protobuf/CodedOutputStream;)V

    .line 104
    .line 105
    .line 106
    return-void
.end method
