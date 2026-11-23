.class public final Lcom/wufan/friend/chat/protocol/ResponseData;
.super Lcom/google/protobuf/GeneratedMessageV3;
.source "SourceFile"

# interfaces
.implements Lcom/wufan/friend/chat/protocol/o0;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/wufan/friend/chat/protocol/ResponseData$b;
    }
.end annotation


# static fields
.field public static final CHATMESSAGEMUTEDATA_FIELD_NUMBER:I = 0x5

.field private static final DEFAULT_INSTANCE:Lcom/wufan/friend/chat/protocol/ResponseData;

.field public static final LOCALBATTLEGAMEDATA_FIELD_NUMBER:I = 0x4

.field public static final LOGINDATA_FIELD_NUMBER:I = 0x1

.field public static final NOTIFICATION_FIELD_NUMBER:I = 0x2

.field private static final PARSER:Lcom/google/protobuf/Parser;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/protobuf/Parser<",
            "Lcom/wufan/friend/chat/protocol/ResponseData;",
            ">;"
        }
    .end annotation
.end field

.field public static final RECOMMENDPLAYERDATA_FIELD_NUMBER:I = 0x3

.field private static final serialVersionUID:J


# instance fields
.field private chatMessageMuteData_:Lcom/wufan/friend/chat/protocol/ChatMessageMuteData;

.field private localBattleGameData_:Lcom/wufan/friend/chat/protocol/LocalBattleGameData;

.field private loginData_:Lcom/wufan/friend/chat/protocol/LoginData;

.field private memoizedIsInitialized:B

.field private notification_:Lcom/wufan/friend/chat/protocol/NotificationData;

.field private recommendPlayerData_:Lcom/wufan/friend/chat/protocol/RecommendPlayerData;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 1
    new-instance v0, Lcom/wufan/friend/chat/protocol/ResponseData;

    .line 2
    .line 3
    invoke-direct {v0}, Lcom/wufan/friend/chat/protocol/ResponseData;-><init>()V

    .line 4
    .line 5
    .line 6
    sput-object v0, Lcom/wufan/friend/chat/protocol/ResponseData;->DEFAULT_INSTANCE:Lcom/wufan/friend/chat/protocol/ResponseData;

    .line 7
    .line 8
    new-instance v0, Lcom/wufan/friend/chat/protocol/ResponseData$a;

    .line 9
    .line 10
    invoke-direct {v0}, Lcom/wufan/friend/chat/protocol/ResponseData$a;-><init>()V

    .line 11
    .line 12
    .line 13
    sput-object v0, Lcom/wufan/friend/chat/protocol/ResponseData;->PARSER:Lcom/google/protobuf/Parser;

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
    iput-byte v0, p0, Lcom/wufan/friend/chat/protocol/ResponseData;->memoizedIsInitialized:B

    return-void
.end method

.method private constructor <init>(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)V
    .locals 6
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

    .line 7
    invoke-direct {p0}, Lcom/wufan/friend/chat/protocol/ResponseData;-><init>()V

    .line 8
    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 9
    invoke-static {}, Lcom/google/protobuf/UnknownFieldSet;->newBuilder()Lcom/google/protobuf/UnknownFieldSet$Builder;

    move-result-object v0

    const/4 v1, 0x0

    :cond_0
    :goto_0
    if-nez v1, :cond_c

    .line 10
    :try_start_0
    invoke-virtual {p1}, Lcom/google/protobuf/CodedInputStream;->readTag()I

    move-result v2

    const/4 v3, 0x1

    if-eqz v2, :cond_b

    const/16 v4, 0xa

    const/4 v5, 0x0

    if-eq v2, v4, :cond_9

    const/16 v4, 0x12

    if-eq v2, v4, :cond_7

    const/16 v4, 0x1a

    if-eq v2, v4, :cond_5

    const/16 v4, 0x22

    if-eq v2, v4, :cond_3

    const/16 v4, 0x2a

    if-eq v2, v4, :cond_1

    .line 11
    invoke-virtual {p0, p1, v0, p2, v2}, Lcom/google/protobuf/GeneratedMessageV3;->parseUnknownField(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/UnknownFieldSet$Builder;Lcom/google/protobuf/ExtensionRegistryLite;I)Z

    move-result v2

    if-nez v2, :cond_0

    goto/16 :goto_1

    .line 12
    :cond_1
    iget-object v2, p0, Lcom/wufan/friend/chat/protocol/ResponseData;->chatMessageMuteData_:Lcom/wufan/friend/chat/protocol/ChatMessageMuteData;

    if-eqz v2, :cond_2

    .line 13
    invoke-virtual {v2}, Lcom/wufan/friend/chat/protocol/ChatMessageMuteData;->toBuilder()Lcom/wufan/friend/chat/protocol/ChatMessageMuteData$b;

    move-result-object v5

    .line 14
    :cond_2
    invoke-static {}, Lcom/wufan/friend/chat/protocol/ChatMessageMuteData;->parser()Lcom/google/protobuf/Parser;

    move-result-object v2

    invoke-virtual {p1, v2, p2}, Lcom/google/protobuf/CodedInputStream;->readMessage(Lcom/google/protobuf/Parser;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/MessageLite;

    move-result-object v2

    check-cast v2, Lcom/wufan/friend/chat/protocol/ChatMessageMuteData;

    iput-object v2, p0, Lcom/wufan/friend/chat/protocol/ResponseData;->chatMessageMuteData_:Lcom/wufan/friend/chat/protocol/ChatMessageMuteData;

    if-eqz v5, :cond_0

    .line 15
    invoke-virtual {v5, v2}, Lcom/wufan/friend/chat/protocol/ChatMessageMuteData$b;->mergeFrom(Lcom/wufan/friend/chat/protocol/ChatMessageMuteData;)Lcom/wufan/friend/chat/protocol/ChatMessageMuteData$b;

    .line 16
    invoke-virtual {v5}, Lcom/wufan/friend/chat/protocol/ChatMessageMuteData$b;->buildPartial()Lcom/wufan/friend/chat/protocol/ChatMessageMuteData;

    move-result-object v2

    iput-object v2, p0, Lcom/wufan/friend/chat/protocol/ResponseData;->chatMessageMuteData_:Lcom/wufan/friend/chat/protocol/ChatMessageMuteData;

    goto :goto_0

    .line 17
    :cond_3
    iget-object v2, p0, Lcom/wufan/friend/chat/protocol/ResponseData;->localBattleGameData_:Lcom/wufan/friend/chat/protocol/LocalBattleGameData;

    if-eqz v2, :cond_4

    .line 18
    invoke-virtual {v2}, Lcom/wufan/friend/chat/protocol/LocalBattleGameData;->toBuilder()Lcom/wufan/friend/chat/protocol/LocalBattleGameData$b;

    move-result-object v5

    .line 19
    :cond_4
    invoke-static {}, Lcom/wufan/friend/chat/protocol/LocalBattleGameData;->parser()Lcom/google/protobuf/Parser;

    move-result-object v2

    invoke-virtual {p1, v2, p2}, Lcom/google/protobuf/CodedInputStream;->readMessage(Lcom/google/protobuf/Parser;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/MessageLite;

    move-result-object v2

    check-cast v2, Lcom/wufan/friend/chat/protocol/LocalBattleGameData;

    iput-object v2, p0, Lcom/wufan/friend/chat/protocol/ResponseData;->localBattleGameData_:Lcom/wufan/friend/chat/protocol/LocalBattleGameData;

    if-eqz v5, :cond_0

    .line 20
    invoke-virtual {v5, v2}, Lcom/wufan/friend/chat/protocol/LocalBattleGameData$b;->mergeFrom(Lcom/wufan/friend/chat/protocol/LocalBattleGameData;)Lcom/wufan/friend/chat/protocol/LocalBattleGameData$b;

    .line 21
    invoke-virtual {v5}, Lcom/wufan/friend/chat/protocol/LocalBattleGameData$b;->buildPartial()Lcom/wufan/friend/chat/protocol/LocalBattleGameData;

    move-result-object v2

    iput-object v2, p0, Lcom/wufan/friend/chat/protocol/ResponseData;->localBattleGameData_:Lcom/wufan/friend/chat/protocol/LocalBattleGameData;

    goto :goto_0

    .line 22
    :cond_5
    iget-object v2, p0, Lcom/wufan/friend/chat/protocol/ResponseData;->recommendPlayerData_:Lcom/wufan/friend/chat/protocol/RecommendPlayerData;

    if-eqz v2, :cond_6

    .line 23
    invoke-virtual {v2}, Lcom/wufan/friend/chat/protocol/RecommendPlayerData;->toBuilder()Lcom/wufan/friend/chat/protocol/RecommendPlayerData$b;

    move-result-object v5

    .line 24
    :cond_6
    invoke-static {}, Lcom/wufan/friend/chat/protocol/RecommendPlayerData;->parser()Lcom/google/protobuf/Parser;

    move-result-object v2

    invoke-virtual {p1, v2, p2}, Lcom/google/protobuf/CodedInputStream;->readMessage(Lcom/google/protobuf/Parser;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/MessageLite;

    move-result-object v2

    check-cast v2, Lcom/wufan/friend/chat/protocol/RecommendPlayerData;

    iput-object v2, p0, Lcom/wufan/friend/chat/protocol/ResponseData;->recommendPlayerData_:Lcom/wufan/friend/chat/protocol/RecommendPlayerData;

    if-eqz v5, :cond_0

    .line 25
    invoke-virtual {v5, v2}, Lcom/wufan/friend/chat/protocol/RecommendPlayerData$b;->mergeFrom(Lcom/wufan/friend/chat/protocol/RecommendPlayerData;)Lcom/wufan/friend/chat/protocol/RecommendPlayerData$b;

    .line 26
    invoke-virtual {v5}, Lcom/wufan/friend/chat/protocol/RecommendPlayerData$b;->buildPartial()Lcom/wufan/friend/chat/protocol/RecommendPlayerData;

    move-result-object v2

    iput-object v2, p0, Lcom/wufan/friend/chat/protocol/ResponseData;->recommendPlayerData_:Lcom/wufan/friend/chat/protocol/RecommendPlayerData;

    goto/16 :goto_0

    .line 27
    :cond_7
    iget-object v2, p0, Lcom/wufan/friend/chat/protocol/ResponseData;->notification_:Lcom/wufan/friend/chat/protocol/NotificationData;

    if-eqz v2, :cond_8

    .line 28
    invoke-virtual {v2}, Lcom/wufan/friend/chat/protocol/NotificationData;->toBuilder()Lcom/wufan/friend/chat/protocol/NotificationData$b;

    move-result-object v5

    .line 29
    :cond_8
    invoke-static {}, Lcom/wufan/friend/chat/protocol/NotificationData;->parser()Lcom/google/protobuf/Parser;

    move-result-object v2

    invoke-virtual {p1, v2, p2}, Lcom/google/protobuf/CodedInputStream;->readMessage(Lcom/google/protobuf/Parser;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/MessageLite;

    move-result-object v2

    check-cast v2, Lcom/wufan/friend/chat/protocol/NotificationData;

    iput-object v2, p0, Lcom/wufan/friend/chat/protocol/ResponseData;->notification_:Lcom/wufan/friend/chat/protocol/NotificationData;

    if-eqz v5, :cond_0

    .line 30
    invoke-virtual {v5, v2}, Lcom/wufan/friend/chat/protocol/NotificationData$b;->mergeFrom(Lcom/wufan/friend/chat/protocol/NotificationData;)Lcom/wufan/friend/chat/protocol/NotificationData$b;

    .line 31
    invoke-virtual {v5}, Lcom/wufan/friend/chat/protocol/NotificationData$b;->buildPartial()Lcom/wufan/friend/chat/protocol/NotificationData;

    move-result-object v2

    iput-object v2, p0, Lcom/wufan/friend/chat/protocol/ResponseData;->notification_:Lcom/wufan/friend/chat/protocol/NotificationData;

    goto/16 :goto_0

    .line 32
    :cond_9
    iget-object v2, p0, Lcom/wufan/friend/chat/protocol/ResponseData;->loginData_:Lcom/wufan/friend/chat/protocol/LoginData;

    if-eqz v2, :cond_a

    .line 33
    invoke-virtual {v2}, Lcom/wufan/friend/chat/protocol/LoginData;->toBuilder()Lcom/wufan/friend/chat/protocol/LoginData$b;

    move-result-object v5

    .line 34
    :cond_a
    invoke-static {}, Lcom/wufan/friend/chat/protocol/LoginData;->parser()Lcom/google/protobuf/Parser;

    move-result-object v2

    invoke-virtual {p1, v2, p2}, Lcom/google/protobuf/CodedInputStream;->readMessage(Lcom/google/protobuf/Parser;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/MessageLite;

    move-result-object v2

    check-cast v2, Lcom/wufan/friend/chat/protocol/LoginData;

    iput-object v2, p0, Lcom/wufan/friend/chat/protocol/ResponseData;->loginData_:Lcom/wufan/friend/chat/protocol/LoginData;

    if-eqz v5, :cond_0

    .line 35
    invoke-virtual {v5, v2}, Lcom/wufan/friend/chat/protocol/LoginData$b;->mergeFrom(Lcom/wufan/friend/chat/protocol/LoginData;)Lcom/wufan/friend/chat/protocol/LoginData$b;

    .line 36
    invoke-virtual {v5}, Lcom/wufan/friend/chat/protocol/LoginData$b;->buildPartial()Lcom/wufan/friend/chat/protocol/LoginData;

    move-result-object v2

    iput-object v2, p0, Lcom/wufan/friend/chat/protocol/ResponseData;->loginData_:Lcom/wufan/friend/chat/protocol/LoginData;
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

    .line 37
    :try_start_1
    new-instance p2, Lcom/google/protobuf/InvalidProtocolBufferException;

    invoke-direct {p2, p1}, Lcom/google/protobuf/InvalidProtocolBufferException;-><init>(Ljava/io/IOException;)V

    .line 38
    invoke-virtual {p2, p0}, Lcom/google/protobuf/InvalidProtocolBufferException;->setUnfinishedMessage(Lcom/google/protobuf/MessageLite;)Lcom/google/protobuf/InvalidProtocolBufferException;

    move-result-object p1

    throw p1

    :catch_1
    move-exception p1

    .line 39
    invoke-virtual {p1, p0}, Lcom/google/protobuf/InvalidProtocolBufferException;->setUnfinishedMessage(Lcom/google/protobuf/MessageLite;)Lcom/google/protobuf/InvalidProtocolBufferException;

    move-result-object p1

    throw p1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 40
    :goto_2
    invoke-virtual {v0}, Lcom/google/protobuf/UnknownFieldSet$Builder;->build()Lcom/google/protobuf/UnknownFieldSet;

    move-result-object p2

    iput-object p2, p0, Lcom/google/protobuf/GeneratedMessageV3;->unknownFields:Lcom/google/protobuf/UnknownFieldSet;

    .line 41
    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageV3;->makeExtensionsImmutable()V

    .line 42
    throw p1

    .line 43
    :cond_c
    invoke-virtual {v0}, Lcom/google/protobuf/UnknownFieldSet$Builder;->build()Lcom/google/protobuf/UnknownFieldSet;

    move-result-object p1

    iput-object p1, p0, Lcom/google/protobuf/GeneratedMessageV3;->unknownFields:Lcom/google/protobuf/UnknownFieldSet;

    .line 44
    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageV3;->makeExtensionsImmutable()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;Lcom/wufan/friend/chat/protocol/ResponseData$a;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .line 1
    invoke-direct {p0, p1, p2}, Lcom/wufan/friend/chat/protocol/ResponseData;-><init>(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)V

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
    iput-byte p1, p0, Lcom/wufan/friend/chat/protocol/ResponseData;->memoizedIsInitialized:B

    return-void
.end method

.method synthetic constructor <init>(Lcom/google/protobuf/GeneratedMessageV3$Builder;Lcom/wufan/friend/chat/protocol/ResponseData$a;)V
    .locals 0

    .line 2
    invoke-direct {p0, p1}, Lcom/wufan/friend/chat/protocol/ResponseData;-><init>(Lcom/google/protobuf/GeneratedMessageV3$Builder;)V

    return-void
.end method

.method static synthetic access$1000()Lcom/google/protobuf/Parser;
    .locals 1

    .line 1
    sget-object v0, Lcom/wufan/friend/chat/protocol/ResponseData;->PARSER:Lcom/google/protobuf/Parser;

    .line 2
    .line 3
    return-object v0
.end method

.method static synthetic access$200()Z
    .locals 1

    .line 1
    sget-boolean v0, Lcom/google/protobuf/GeneratedMessageV3;->alwaysUseFieldBuilders:Z

    .line 2
    .line 3
    return v0
.end method

.method static synthetic access$402(Lcom/wufan/friend/chat/protocol/ResponseData;Lcom/wufan/friend/chat/protocol/LoginData;)Lcom/wufan/friend/chat/protocol/LoginData;
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/wufan/friend/chat/protocol/ResponseData;->loginData_:Lcom/wufan/friend/chat/protocol/LoginData;

    .line 2
    .line 3
    return-object p1
.end method

.method static synthetic access$502(Lcom/wufan/friend/chat/protocol/ResponseData;Lcom/wufan/friend/chat/protocol/NotificationData;)Lcom/wufan/friend/chat/protocol/NotificationData;
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/wufan/friend/chat/protocol/ResponseData;->notification_:Lcom/wufan/friend/chat/protocol/NotificationData;

    .line 2
    .line 3
    return-object p1
.end method

.method static synthetic access$602(Lcom/wufan/friend/chat/protocol/ResponseData;Lcom/wufan/friend/chat/protocol/RecommendPlayerData;)Lcom/wufan/friend/chat/protocol/RecommendPlayerData;
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/wufan/friend/chat/protocol/ResponseData;->recommendPlayerData_:Lcom/wufan/friend/chat/protocol/RecommendPlayerData;

    .line 2
    .line 3
    return-object p1
.end method

.method static synthetic access$702(Lcom/wufan/friend/chat/protocol/ResponseData;Lcom/wufan/friend/chat/protocol/LocalBattleGameData;)Lcom/wufan/friend/chat/protocol/LocalBattleGameData;
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/wufan/friend/chat/protocol/ResponseData;->localBattleGameData_:Lcom/wufan/friend/chat/protocol/LocalBattleGameData;

    .line 2
    .line 3
    return-object p1
.end method

.method static synthetic access$802(Lcom/wufan/friend/chat/protocol/ResponseData;Lcom/wufan/friend/chat/protocol/ChatMessageMuteData;)Lcom/wufan/friend/chat/protocol/ChatMessageMuteData;
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/wufan/friend/chat/protocol/ResponseData;->chatMessageMuteData_:Lcom/wufan/friend/chat/protocol/ChatMessageMuteData;

    .line 2
    .line 3
    return-object p1
.end method

.method static synthetic access$900(Lcom/wufan/friend/chat/protocol/ResponseData;)Lcom/google/protobuf/UnknownFieldSet;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/google/protobuf/GeneratedMessageV3;->unknownFields:Lcom/google/protobuf/UnknownFieldSet;

    .line 2
    .line 3
    return-object p0
.end method

.method public static getDefaultInstance()Lcom/wufan/friend/chat/protocol/ResponseData;
    .locals 1

    .line 1
    sget-object v0, Lcom/wufan/friend/chat/protocol/ResponseData;->DEFAULT_INSTANCE:Lcom/wufan/friend/chat/protocol/ResponseData;

    .line 2
    .line 3
    return-object v0
.end method

.method public static final getDescriptor()Lcom/google/protobuf/Descriptors$Descriptor;
    .locals 1

    .line 1
    sget-object v0, Lcom/wufan/friend/chat/protocol/a0;->K:Lcom/google/protobuf/Descriptors$Descriptor;

    .line 2
    .line 3
    return-object v0
.end method

.method public static newBuilder()Lcom/wufan/friend/chat/protocol/ResponseData$b;
    .locals 1

    .line 1
    sget-object v0, Lcom/wufan/friend/chat/protocol/ResponseData;->DEFAULT_INSTANCE:Lcom/wufan/friend/chat/protocol/ResponseData;

    invoke-virtual {v0}, Lcom/wufan/friend/chat/protocol/ResponseData;->toBuilder()Lcom/wufan/friend/chat/protocol/ResponseData$b;

    move-result-object v0

    return-object v0
.end method

.method public static newBuilder(Lcom/wufan/friend/chat/protocol/ResponseData;)Lcom/wufan/friend/chat/protocol/ResponseData$b;
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
    sget-object v0, Lcom/wufan/friend/chat/protocol/ResponseData;->DEFAULT_INSTANCE:Lcom/wufan/friend/chat/protocol/ResponseData;

    invoke-virtual {v0}, Lcom/wufan/friend/chat/protocol/ResponseData;->toBuilder()Lcom/wufan/friend/chat/protocol/ResponseData$b;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/wufan/friend/chat/protocol/ResponseData$b;->mergeFrom(Lcom/wufan/friend/chat/protocol/ResponseData;)Lcom/wufan/friend/chat/protocol/ResponseData$b;

    move-result-object p0

    return-object p0
.end method

.method public static parseDelimitedFrom(Ljava/io/InputStream;)Lcom/wufan/friend/chat/protocol/ResponseData;
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
    sget-object v0, Lcom/wufan/friend/chat/protocol/ResponseData;->PARSER:Lcom/google/protobuf/Parser;

    .line 2
    invoke-static {v0, p0}, Lcom/google/protobuf/GeneratedMessageV3;->parseDelimitedWithIOException(Lcom/google/protobuf/Parser;Ljava/io/InputStream;)Lcom/google/protobuf/Message;

    move-result-object p0

    check-cast p0, Lcom/wufan/friend/chat/protocol/ResponseData;

    return-object p0
.end method

.method public static parseDelimitedFrom(Ljava/io/InputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/wufan/friend/chat/protocol/ResponseData;
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
    sget-object v0, Lcom/wufan/friend/chat/protocol/ResponseData;->PARSER:Lcom/google/protobuf/Parser;

    .line 4
    invoke-static {v0, p0, p1}, Lcom/google/protobuf/GeneratedMessageV3;->parseDelimitedWithIOException(Lcom/google/protobuf/Parser;Ljava/io/InputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/Message;

    move-result-object p0

    check-cast p0, Lcom/wufan/friend/chat/protocol/ResponseData;

    return-object p0
.end method

.method public static parseFrom(Lcom/google/protobuf/ByteString;)Lcom/wufan/friend/chat/protocol/ResponseData;
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
    sget-object v0, Lcom/wufan/friend/chat/protocol/ResponseData;->PARSER:Lcom/google/protobuf/Parser;

    invoke-interface {v0, p0}, Lcom/google/protobuf/Parser;->parseFrom(Lcom/google/protobuf/ByteString;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/wufan/friend/chat/protocol/ResponseData;

    return-object p0
.end method

.method public static parseFrom(Lcom/google/protobuf/ByteString;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/wufan/friend/chat/protocol/ResponseData;
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
    sget-object v0, Lcom/wufan/friend/chat/protocol/ResponseData;->PARSER:Lcom/google/protobuf/Parser;

    invoke-interface {v0, p0, p1}, Lcom/google/protobuf/Parser;->parseFrom(Lcom/google/protobuf/ByteString;Lcom/google/protobuf/ExtensionRegistryLite;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/wufan/friend/chat/protocol/ResponseData;

    return-object p0
.end method

.method public static parseFrom(Lcom/google/protobuf/CodedInputStream;)Lcom/wufan/friend/chat/protocol/ResponseData;
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
    sget-object v0, Lcom/wufan/friend/chat/protocol/ResponseData;->PARSER:Lcom/google/protobuf/Parser;

    .line 12
    invoke-static {v0, p0}, Lcom/google/protobuf/GeneratedMessageV3;->parseWithIOException(Lcom/google/protobuf/Parser;Lcom/google/protobuf/CodedInputStream;)Lcom/google/protobuf/Message;

    move-result-object p0

    check-cast p0, Lcom/wufan/friend/chat/protocol/ResponseData;

    return-object p0
.end method

.method public static parseFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/wufan/friend/chat/protocol/ResponseData;
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
    sget-object v0, Lcom/wufan/friend/chat/protocol/ResponseData;->PARSER:Lcom/google/protobuf/Parser;

    .line 14
    invoke-static {v0, p0, p1}, Lcom/google/protobuf/GeneratedMessageV3;->parseWithIOException(Lcom/google/protobuf/Parser;Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/Message;

    move-result-object p0

    check-cast p0, Lcom/wufan/friend/chat/protocol/ResponseData;

    return-object p0
.end method

.method public static parseFrom(Ljava/io/InputStream;)Lcom/wufan/friend/chat/protocol/ResponseData;
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
    sget-object v0, Lcom/wufan/friend/chat/protocol/ResponseData;->PARSER:Lcom/google/protobuf/Parser;

    .line 8
    invoke-static {v0, p0}, Lcom/google/protobuf/GeneratedMessageV3;->parseWithIOException(Lcom/google/protobuf/Parser;Ljava/io/InputStream;)Lcom/google/protobuf/Message;

    move-result-object p0

    check-cast p0, Lcom/wufan/friend/chat/protocol/ResponseData;

    return-object p0
.end method

.method public static parseFrom(Ljava/io/InputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/wufan/friend/chat/protocol/ResponseData;
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
    sget-object v0, Lcom/wufan/friend/chat/protocol/ResponseData;->PARSER:Lcom/google/protobuf/Parser;

    .line 10
    invoke-static {v0, p0, p1}, Lcom/google/protobuf/GeneratedMessageV3;->parseWithIOException(Lcom/google/protobuf/Parser;Ljava/io/InputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/Message;

    move-result-object p0

    check-cast p0, Lcom/wufan/friend/chat/protocol/ResponseData;

    return-object p0
.end method

.method public static parseFrom(Ljava/nio/ByteBuffer;)Lcom/wufan/friend/chat/protocol/ResponseData;
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
    sget-object v0, Lcom/wufan/friend/chat/protocol/ResponseData;->PARSER:Lcom/google/protobuf/Parser;

    invoke-interface {v0, p0}, Lcom/google/protobuf/Parser;->parseFrom(Ljava/nio/ByteBuffer;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/wufan/friend/chat/protocol/ResponseData;

    return-object p0
.end method

.method public static parseFrom(Ljava/nio/ByteBuffer;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/wufan/friend/chat/protocol/ResponseData;
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
    sget-object v0, Lcom/wufan/friend/chat/protocol/ResponseData;->PARSER:Lcom/google/protobuf/Parser;

    invoke-interface {v0, p0, p1}, Lcom/google/protobuf/Parser;->parseFrom(Ljava/nio/ByteBuffer;Lcom/google/protobuf/ExtensionRegistryLite;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/wufan/friend/chat/protocol/ResponseData;

    return-object p0
.end method

.method public static parseFrom([B)Lcom/wufan/friend/chat/protocol/ResponseData;
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
    sget-object v0, Lcom/wufan/friend/chat/protocol/ResponseData;->PARSER:Lcom/google/protobuf/Parser;

    invoke-interface {v0, p0}, Lcom/google/protobuf/Parser;->parseFrom([B)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/wufan/friend/chat/protocol/ResponseData;

    return-object p0
.end method

.method public static parseFrom([BLcom/google/protobuf/ExtensionRegistryLite;)Lcom/wufan/friend/chat/protocol/ResponseData;
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
    sget-object v0, Lcom/wufan/friend/chat/protocol/ResponseData;->PARSER:Lcom/google/protobuf/Parser;

    invoke-interface {v0, p0, p1}, Lcom/google/protobuf/Parser;->parseFrom([BLcom/google/protobuf/ExtensionRegistryLite;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/wufan/friend/chat/protocol/ResponseData;

    return-object p0
.end method

.method public static parser()Lcom/google/protobuf/Parser;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/google/protobuf/Parser<",
            "Lcom/wufan/friend/chat/protocol/ResponseData;",
            ">;"
        }
    .end annotation

    .line 1
    sget-object v0, Lcom/wufan/friend/chat/protocol/ResponseData;->PARSER:Lcom/google/protobuf/Parser;

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
    instance-of v1, p1, Lcom/wufan/friend/chat/protocol/ResponseData;

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
    check-cast p1, Lcom/wufan/friend/chat/protocol/ResponseData;

    .line 15
    .line 16
    invoke-virtual {p0}, Lcom/wufan/friend/chat/protocol/ResponseData;->hasLoginData()Z

    .line 17
    .line 18
    .line 19
    move-result v1

    .line 20
    invoke-virtual {p1}, Lcom/wufan/friend/chat/protocol/ResponseData;->hasLoginData()Z

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
    invoke-virtual {p0}, Lcom/wufan/friend/chat/protocol/ResponseData;->hasLoginData()Z

    .line 29
    .line 30
    .line 31
    move-result v1

    .line 32
    if-eqz v1, :cond_3

    .line 33
    .line 34
    invoke-virtual {p0}, Lcom/wufan/friend/chat/protocol/ResponseData;->getLoginData()Lcom/wufan/friend/chat/protocol/LoginData;

    .line 35
    .line 36
    .line 37
    move-result-object v1

    .line 38
    invoke-virtual {p1}, Lcom/wufan/friend/chat/protocol/ResponseData;->getLoginData()Lcom/wufan/friend/chat/protocol/LoginData;

    .line 39
    .line 40
    .line 41
    move-result-object v2

    .line 42
    invoke-virtual {v1, v2}, Lcom/wufan/friend/chat/protocol/LoginData;->equals(Ljava/lang/Object;)Z

    .line 43
    .line 44
    .line 45
    move-result v1

    .line 46
    if-nez v1, :cond_3

    .line 47
    .line 48
    return v3

    .line 49
    :cond_3
    invoke-virtual {p0}, Lcom/wufan/friend/chat/protocol/ResponseData;->hasNotification()Z

    .line 50
    .line 51
    .line 52
    move-result v1

    .line 53
    invoke-virtual {p1}, Lcom/wufan/friend/chat/protocol/ResponseData;->hasNotification()Z

    .line 54
    .line 55
    .line 56
    move-result v2

    .line 57
    if-eq v1, v2, :cond_4

    .line 58
    .line 59
    return v3

    .line 60
    :cond_4
    invoke-virtual {p0}, Lcom/wufan/friend/chat/protocol/ResponseData;->hasNotification()Z

    .line 61
    .line 62
    .line 63
    move-result v1

    .line 64
    if-eqz v1, :cond_5

    .line 65
    .line 66
    invoke-virtual {p0}, Lcom/wufan/friend/chat/protocol/ResponseData;->getNotification()Lcom/wufan/friend/chat/protocol/NotificationData;

    .line 67
    .line 68
    .line 69
    move-result-object v1

    .line 70
    invoke-virtual {p1}, Lcom/wufan/friend/chat/protocol/ResponseData;->getNotification()Lcom/wufan/friend/chat/protocol/NotificationData;

    .line 71
    .line 72
    .line 73
    move-result-object v2

    .line 74
    invoke-virtual {v1, v2}, Lcom/wufan/friend/chat/protocol/NotificationData;->equals(Ljava/lang/Object;)Z

    .line 75
    .line 76
    .line 77
    move-result v1

    .line 78
    if-nez v1, :cond_5

    .line 79
    .line 80
    return v3

    .line 81
    :cond_5
    invoke-virtual {p0}, Lcom/wufan/friend/chat/protocol/ResponseData;->hasRecommendPlayerData()Z

    .line 82
    .line 83
    .line 84
    move-result v1

    .line 85
    invoke-virtual {p1}, Lcom/wufan/friend/chat/protocol/ResponseData;->hasRecommendPlayerData()Z

    .line 86
    .line 87
    .line 88
    move-result v2

    .line 89
    if-eq v1, v2, :cond_6

    .line 90
    .line 91
    return v3

    .line 92
    :cond_6
    invoke-virtual {p0}, Lcom/wufan/friend/chat/protocol/ResponseData;->hasRecommendPlayerData()Z

    .line 93
    .line 94
    .line 95
    move-result v1

    .line 96
    if-eqz v1, :cond_7

    .line 97
    .line 98
    invoke-virtual {p0}, Lcom/wufan/friend/chat/protocol/ResponseData;->getRecommendPlayerData()Lcom/wufan/friend/chat/protocol/RecommendPlayerData;

    .line 99
    .line 100
    .line 101
    move-result-object v1

    .line 102
    invoke-virtual {p1}, Lcom/wufan/friend/chat/protocol/ResponseData;->getRecommendPlayerData()Lcom/wufan/friend/chat/protocol/RecommendPlayerData;

    .line 103
    .line 104
    .line 105
    move-result-object v2

    .line 106
    invoke-virtual {v1, v2}, Lcom/wufan/friend/chat/protocol/RecommendPlayerData;->equals(Ljava/lang/Object;)Z

    .line 107
    .line 108
    .line 109
    move-result v1

    .line 110
    if-nez v1, :cond_7

    .line 111
    .line 112
    return v3

    .line 113
    :cond_7
    invoke-virtual {p0}, Lcom/wufan/friend/chat/protocol/ResponseData;->hasLocalBattleGameData()Z

    .line 114
    .line 115
    .line 116
    move-result v1

    .line 117
    invoke-virtual {p1}, Lcom/wufan/friend/chat/protocol/ResponseData;->hasLocalBattleGameData()Z

    .line 118
    .line 119
    .line 120
    move-result v2

    .line 121
    if-eq v1, v2, :cond_8

    .line 122
    .line 123
    return v3

    .line 124
    :cond_8
    invoke-virtual {p0}, Lcom/wufan/friend/chat/protocol/ResponseData;->hasLocalBattleGameData()Z

    .line 125
    .line 126
    .line 127
    move-result v1

    .line 128
    if-eqz v1, :cond_9

    .line 129
    .line 130
    invoke-virtual {p0}, Lcom/wufan/friend/chat/protocol/ResponseData;->getLocalBattleGameData()Lcom/wufan/friend/chat/protocol/LocalBattleGameData;

    .line 131
    .line 132
    .line 133
    move-result-object v1

    .line 134
    invoke-virtual {p1}, Lcom/wufan/friend/chat/protocol/ResponseData;->getLocalBattleGameData()Lcom/wufan/friend/chat/protocol/LocalBattleGameData;

    .line 135
    .line 136
    .line 137
    move-result-object v2

    .line 138
    invoke-virtual {v1, v2}, Lcom/wufan/friend/chat/protocol/LocalBattleGameData;->equals(Ljava/lang/Object;)Z

    .line 139
    .line 140
    .line 141
    move-result v1

    .line 142
    if-nez v1, :cond_9

    .line 143
    .line 144
    return v3

    .line 145
    :cond_9
    invoke-virtual {p0}, Lcom/wufan/friend/chat/protocol/ResponseData;->hasChatMessageMuteData()Z

    .line 146
    .line 147
    .line 148
    move-result v1

    .line 149
    invoke-virtual {p1}, Lcom/wufan/friend/chat/protocol/ResponseData;->hasChatMessageMuteData()Z

    .line 150
    .line 151
    .line 152
    move-result v2

    .line 153
    if-eq v1, v2, :cond_a

    .line 154
    .line 155
    return v3

    .line 156
    :cond_a
    invoke-virtual {p0}, Lcom/wufan/friend/chat/protocol/ResponseData;->hasChatMessageMuteData()Z

    .line 157
    .line 158
    .line 159
    move-result v1

    .line 160
    if-eqz v1, :cond_b

    .line 161
    .line 162
    invoke-virtual {p0}, Lcom/wufan/friend/chat/protocol/ResponseData;->getChatMessageMuteData()Lcom/wufan/friend/chat/protocol/ChatMessageMuteData;

    .line 163
    .line 164
    .line 165
    move-result-object v1

    .line 166
    invoke-virtual {p1}, Lcom/wufan/friend/chat/protocol/ResponseData;->getChatMessageMuteData()Lcom/wufan/friend/chat/protocol/ChatMessageMuteData;

    .line 167
    .line 168
    .line 169
    move-result-object v2

    .line 170
    invoke-virtual {v1, v2}, Lcom/wufan/friend/chat/protocol/ChatMessageMuteData;->equals(Ljava/lang/Object;)Z

    .line 171
    .line 172
    .line 173
    move-result v1

    .line 174
    if-nez v1, :cond_b

    .line 175
    .line 176
    return v3

    .line 177
    :cond_b
    iget-object v1, p0, Lcom/google/protobuf/GeneratedMessageV3;->unknownFields:Lcom/google/protobuf/UnknownFieldSet;

    .line 178
    .line 179
    iget-object p1, p1, Lcom/google/protobuf/GeneratedMessageV3;->unknownFields:Lcom/google/protobuf/UnknownFieldSet;

    .line 180
    .line 181
    invoke-virtual {v1, p1}, Lcom/google/protobuf/UnknownFieldSet;->equals(Ljava/lang/Object;)Z

    .line 182
    .line 183
    .line 184
    move-result p1

    .line 185
    if-nez p1, :cond_c

    .line 186
    .line 187
    return v3

    .line 188
    :cond_c
    return v0
.end method

.method public getChatMessageMuteData()Lcom/wufan/friend/chat/protocol/ChatMessageMuteData;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/wufan/friend/chat/protocol/ResponseData;->chatMessageMuteData_:Lcom/wufan/friend/chat/protocol/ChatMessageMuteData;

    .line 2
    .line 3
    if-nez v0, :cond_0

    .line 4
    .line 5
    invoke-static {}, Lcom/wufan/friend/chat/protocol/ChatMessageMuteData;->getDefaultInstance()Lcom/wufan/friend/chat/protocol/ChatMessageMuteData;

    .line 6
    .line 7
    .line 8
    move-result-object v0

    .line 9
    :cond_0
    return-object v0
.end method

.method public getChatMessageMuteDataOrBuilder()Lcom/wufan/friend/chat/protocol/f;
    .locals 1

    .line 1
    invoke-virtual {p0}, Lcom/wufan/friend/chat/protocol/ResponseData;->getChatMessageMuteData()Lcom/wufan/friend/chat/protocol/ChatMessageMuteData;

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
    invoke-virtual {p0}, Lcom/wufan/friend/chat/protocol/ResponseData;->getDefaultInstanceForType()Lcom/wufan/friend/chat/protocol/ResponseData;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic getDefaultInstanceForType()Lcom/google/protobuf/MessageLite;
    .locals 1

    .line 2
    invoke-virtual {p0}, Lcom/wufan/friend/chat/protocol/ResponseData;->getDefaultInstanceForType()Lcom/wufan/friend/chat/protocol/ResponseData;

    move-result-object v0

    return-object v0
.end method

.method public getDefaultInstanceForType()Lcom/wufan/friend/chat/protocol/ResponseData;
    .locals 1

    .line 3
    sget-object v0, Lcom/wufan/friend/chat/protocol/ResponseData;->DEFAULT_INSTANCE:Lcom/wufan/friend/chat/protocol/ResponseData;

    return-object v0
.end method

.method public getLocalBattleGameData()Lcom/wufan/friend/chat/protocol/LocalBattleGameData;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/wufan/friend/chat/protocol/ResponseData;->localBattleGameData_:Lcom/wufan/friend/chat/protocol/LocalBattleGameData;

    .line 2
    .line 3
    if-nez v0, :cond_0

    .line 4
    .line 5
    invoke-static {}, Lcom/wufan/friend/chat/protocol/LocalBattleGameData;->getDefaultInstance()Lcom/wufan/friend/chat/protocol/LocalBattleGameData;

    .line 6
    .line 7
    .line 8
    move-result-object v0

    .line 9
    :cond_0
    return-object v0
.end method

.method public getLocalBattleGameDataOrBuilder()Lcom/wufan/friend/chat/protocol/w;
    .locals 1

    .line 1
    invoke-virtual {p0}, Lcom/wufan/friend/chat/protocol/ResponseData;->getLocalBattleGameData()Lcom/wufan/friend/chat/protocol/LocalBattleGameData;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    return-object v0
.end method

.method public getLoginData()Lcom/wufan/friend/chat/protocol/LoginData;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/wufan/friend/chat/protocol/ResponseData;->loginData_:Lcom/wufan/friend/chat/protocol/LoginData;

    .line 2
    .line 3
    if-nez v0, :cond_0

    .line 4
    .line 5
    invoke-static {}, Lcom/wufan/friend/chat/protocol/LoginData;->getDefaultInstance()Lcom/wufan/friend/chat/protocol/LoginData;

    .line 6
    .line 7
    .line 8
    move-result-object v0

    .line 9
    :cond_0
    return-object v0
.end method

.method public getLoginDataOrBuilder()Lcom/wufan/friend/chat/protocol/z;
    .locals 1

    .line 1
    invoke-virtual {p0}, Lcom/wufan/friend/chat/protocol/ResponseData;->getLoginData()Lcom/wufan/friend/chat/protocol/LoginData;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    return-object v0
.end method

.method public getNotification()Lcom/wufan/friend/chat/protocol/NotificationData;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/wufan/friend/chat/protocol/ResponseData;->notification_:Lcom/wufan/friend/chat/protocol/NotificationData;

    .line 2
    .line 3
    if-nez v0, :cond_0

    .line 4
    .line 5
    invoke-static {}, Lcom/wufan/friend/chat/protocol/NotificationData;->getDefaultInstance()Lcom/wufan/friend/chat/protocol/NotificationData;

    .line 6
    .line 7
    .line 8
    move-result-object v0

    .line 9
    :cond_0
    return-object v0
.end method

.method public getNotificationOrBuilder()Lcom/wufan/friend/chat/protocol/b0;
    .locals 1

    .line 1
    invoke-virtual {p0}, Lcom/wufan/friend/chat/protocol/ResponseData;->getNotification()Lcom/wufan/friend/chat/protocol/NotificationData;

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
            "Lcom/wufan/friend/chat/protocol/ResponseData;",
            ">;"
        }
    .end annotation

    .line 1
    sget-object v0, Lcom/wufan/friend/chat/protocol/ResponseData;->PARSER:Lcom/google/protobuf/Parser;

    .line 2
    .line 3
    return-object v0
.end method

.method public getRecommendPlayerData()Lcom/wufan/friend/chat/protocol/RecommendPlayerData;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/wufan/friend/chat/protocol/ResponseData;->recommendPlayerData_:Lcom/wufan/friend/chat/protocol/RecommendPlayerData;

    .line 2
    .line 3
    if-nez v0, :cond_0

    .line 4
    .line 5
    invoke-static {}, Lcom/wufan/friend/chat/protocol/RecommendPlayerData;->getDefaultInstance()Lcom/wufan/friend/chat/protocol/RecommendPlayerData;

    .line 6
    .line 7
    .line 8
    move-result-object v0

    .line 9
    :cond_0
    return-object v0
.end method

.method public getRecommendPlayerDataOrBuilder()Lcom/wufan/friend/chat/protocol/i0;
    .locals 1

    .line 1
    invoke-virtual {p0}, Lcom/wufan/friend/chat/protocol/ResponseData;->getRecommendPlayerData()Lcom/wufan/friend/chat/protocol/RecommendPlayerData;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
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
    iget-object v0, p0, Lcom/wufan/friend/chat/protocol/ResponseData;->loginData_:Lcom/wufan/friend/chat/protocol/LoginData;

    .line 8
    .line 9
    const/4 v1, 0x0

    .line 10
    if-eqz v0, :cond_1

    .line 11
    .line 12
    const/4 v0, 0x1

    .line 13
    invoke-virtual {p0}, Lcom/wufan/friend/chat/protocol/ResponseData;->getLoginData()Lcom/wufan/friend/chat/protocol/LoginData;

    .line 14
    .line 15
    .line 16
    move-result-object v2

    .line 17
    invoke-static {v0, v2}, Lcom/google/protobuf/CodedOutputStream;->computeMessageSize(ILcom/google/protobuf/MessageLite;)I

    .line 18
    .line 19
    .line 20
    move-result v0

    .line 21
    add-int/2addr v1, v0

    .line 22
    :cond_1
    iget-object v0, p0, Lcom/wufan/friend/chat/protocol/ResponseData;->notification_:Lcom/wufan/friend/chat/protocol/NotificationData;

    .line 23
    .line 24
    if-eqz v0, :cond_2

    .line 25
    .line 26
    const/4 v0, 0x2

    .line 27
    invoke-virtual {p0}, Lcom/wufan/friend/chat/protocol/ResponseData;->getNotification()Lcom/wufan/friend/chat/protocol/NotificationData;

    .line 28
    .line 29
    .line 30
    move-result-object v2

    .line 31
    invoke-static {v0, v2}, Lcom/google/protobuf/CodedOutputStream;->computeMessageSize(ILcom/google/protobuf/MessageLite;)I

    .line 32
    .line 33
    .line 34
    move-result v0

    .line 35
    add-int/2addr v1, v0

    .line 36
    :cond_2
    iget-object v0, p0, Lcom/wufan/friend/chat/protocol/ResponseData;->recommendPlayerData_:Lcom/wufan/friend/chat/protocol/RecommendPlayerData;

    .line 37
    .line 38
    if-eqz v0, :cond_3

    .line 39
    .line 40
    const/4 v0, 0x3

    .line 41
    invoke-virtual {p0}, Lcom/wufan/friend/chat/protocol/ResponseData;->getRecommendPlayerData()Lcom/wufan/friend/chat/protocol/RecommendPlayerData;

    .line 42
    .line 43
    .line 44
    move-result-object v2

    .line 45
    invoke-static {v0, v2}, Lcom/google/protobuf/CodedOutputStream;->computeMessageSize(ILcom/google/protobuf/MessageLite;)I

    .line 46
    .line 47
    .line 48
    move-result v0

    .line 49
    add-int/2addr v1, v0

    .line 50
    :cond_3
    iget-object v0, p0, Lcom/wufan/friend/chat/protocol/ResponseData;->localBattleGameData_:Lcom/wufan/friend/chat/protocol/LocalBattleGameData;

    .line 51
    .line 52
    if-eqz v0, :cond_4

    .line 53
    .line 54
    const/4 v0, 0x4

    .line 55
    invoke-virtual {p0}, Lcom/wufan/friend/chat/protocol/ResponseData;->getLocalBattleGameData()Lcom/wufan/friend/chat/protocol/LocalBattleGameData;

    .line 56
    .line 57
    .line 58
    move-result-object v2

    .line 59
    invoke-static {v0, v2}, Lcom/google/protobuf/CodedOutputStream;->computeMessageSize(ILcom/google/protobuf/MessageLite;)I

    .line 60
    .line 61
    .line 62
    move-result v0

    .line 63
    add-int/2addr v1, v0

    .line 64
    :cond_4
    iget-object v0, p0, Lcom/wufan/friend/chat/protocol/ResponseData;->chatMessageMuteData_:Lcom/wufan/friend/chat/protocol/ChatMessageMuteData;

    .line 65
    .line 66
    if-eqz v0, :cond_5

    .line 67
    .line 68
    const/4 v0, 0x5

    .line 69
    invoke-virtual {p0}, Lcom/wufan/friend/chat/protocol/ResponseData;->getChatMessageMuteData()Lcom/wufan/friend/chat/protocol/ChatMessageMuteData;

    .line 70
    .line 71
    .line 72
    move-result-object v2

    .line 73
    invoke-static {v0, v2}, Lcom/google/protobuf/CodedOutputStream;->computeMessageSize(ILcom/google/protobuf/MessageLite;)I

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

.method public final getUnknownFields()Lcom/google/protobuf/UnknownFieldSet;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageV3;->unknownFields:Lcom/google/protobuf/UnknownFieldSet;

    .line 2
    .line 3
    return-object v0
.end method

.method public hasChatMessageMuteData()Z
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/wufan/friend/chat/protocol/ResponseData;->chatMessageMuteData_:Lcom/wufan/friend/chat/protocol/ChatMessageMuteData;

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

.method public hasLocalBattleGameData()Z
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/wufan/friend/chat/protocol/ResponseData;->localBattleGameData_:Lcom/wufan/friend/chat/protocol/LocalBattleGameData;

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

.method public hasLoginData()Z
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/wufan/friend/chat/protocol/ResponseData;->loginData_:Lcom/wufan/friend/chat/protocol/LoginData;

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

.method public hasNotification()Z
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/wufan/friend/chat/protocol/ResponseData;->notification_:Lcom/wufan/friend/chat/protocol/NotificationData;

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

.method public hasRecommendPlayerData()Z
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/wufan/friend/chat/protocol/ResponseData;->recommendPlayerData_:Lcom/wufan/friend/chat/protocol/RecommendPlayerData;

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
    invoke-static {}, Lcom/wufan/friend/chat/protocol/ResponseData;->getDescriptor()Lcom/google/protobuf/Descriptors$Descriptor;

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
    invoke-virtual {p0}, Lcom/wufan/friend/chat/protocol/ResponseData;->hasLoginData()Z

    .line 18
    .line 19
    .line 20
    move-result v0

    .line 21
    if-eqz v0, :cond_1

    .line 22
    .line 23
    mul-int/lit8 v1, v1, 0x25

    .line 24
    .line 25
    add-int/lit8 v1, v1, 0x1

    .line 26
    .line 27
    mul-int/lit8 v1, v1, 0x35

    .line 28
    .line 29
    invoke-virtual {p0}, Lcom/wufan/friend/chat/protocol/ResponseData;->getLoginData()Lcom/wufan/friend/chat/protocol/LoginData;

    .line 30
    .line 31
    .line 32
    move-result-object v0

    .line 33
    invoke-virtual {v0}, Lcom/wufan/friend/chat/protocol/LoginData;->hashCode()I

    .line 34
    .line 35
    .line 36
    move-result v0

    .line 37
    add-int/2addr v1, v0

    .line 38
    :cond_1
    invoke-virtual {p0}, Lcom/wufan/friend/chat/protocol/ResponseData;->hasNotification()Z

    .line 39
    .line 40
    .line 41
    move-result v0

    .line 42
    if-eqz v0, :cond_2

    .line 43
    .line 44
    mul-int/lit8 v1, v1, 0x25

    .line 45
    .line 46
    add-int/lit8 v1, v1, 0x2

    .line 47
    .line 48
    mul-int/lit8 v1, v1, 0x35

    .line 49
    .line 50
    invoke-virtual {p0}, Lcom/wufan/friend/chat/protocol/ResponseData;->getNotification()Lcom/wufan/friend/chat/protocol/NotificationData;

    .line 51
    .line 52
    .line 53
    move-result-object v0

    .line 54
    invoke-virtual {v0}, Lcom/wufan/friend/chat/protocol/NotificationData;->hashCode()I

    .line 55
    .line 56
    .line 57
    move-result v0

    .line 58
    add-int/2addr v1, v0

    .line 59
    :cond_2
    invoke-virtual {p0}, Lcom/wufan/friend/chat/protocol/ResponseData;->hasRecommendPlayerData()Z

    .line 60
    .line 61
    .line 62
    move-result v0

    .line 63
    if-eqz v0, :cond_3

    .line 64
    .line 65
    mul-int/lit8 v1, v1, 0x25

    .line 66
    .line 67
    add-int/lit8 v1, v1, 0x3

    .line 68
    .line 69
    mul-int/lit8 v1, v1, 0x35

    .line 70
    .line 71
    invoke-virtual {p0}, Lcom/wufan/friend/chat/protocol/ResponseData;->getRecommendPlayerData()Lcom/wufan/friend/chat/protocol/RecommendPlayerData;

    .line 72
    .line 73
    .line 74
    move-result-object v0

    .line 75
    invoke-virtual {v0}, Lcom/wufan/friend/chat/protocol/RecommendPlayerData;->hashCode()I

    .line 76
    .line 77
    .line 78
    move-result v0

    .line 79
    add-int/2addr v1, v0

    .line 80
    :cond_3
    invoke-virtual {p0}, Lcom/wufan/friend/chat/protocol/ResponseData;->hasLocalBattleGameData()Z

    .line 81
    .line 82
    .line 83
    move-result v0

    .line 84
    if-eqz v0, :cond_4

    .line 85
    .line 86
    mul-int/lit8 v1, v1, 0x25

    .line 87
    .line 88
    add-int/lit8 v1, v1, 0x4

    .line 89
    .line 90
    mul-int/lit8 v1, v1, 0x35

    .line 91
    .line 92
    invoke-virtual {p0}, Lcom/wufan/friend/chat/protocol/ResponseData;->getLocalBattleGameData()Lcom/wufan/friend/chat/protocol/LocalBattleGameData;

    .line 93
    .line 94
    .line 95
    move-result-object v0

    .line 96
    invoke-virtual {v0}, Lcom/wufan/friend/chat/protocol/LocalBattleGameData;->hashCode()I

    .line 97
    .line 98
    .line 99
    move-result v0

    .line 100
    add-int/2addr v1, v0

    .line 101
    :cond_4
    invoke-virtual {p0}, Lcom/wufan/friend/chat/protocol/ResponseData;->hasChatMessageMuteData()Z

    .line 102
    .line 103
    .line 104
    move-result v0

    .line 105
    if-eqz v0, :cond_5

    .line 106
    .line 107
    mul-int/lit8 v1, v1, 0x25

    .line 108
    .line 109
    add-int/lit8 v1, v1, 0x5

    .line 110
    .line 111
    mul-int/lit8 v1, v1, 0x35

    .line 112
    .line 113
    invoke-virtual {p0}, Lcom/wufan/friend/chat/protocol/ResponseData;->getChatMessageMuteData()Lcom/wufan/friend/chat/protocol/ChatMessageMuteData;

    .line 114
    .line 115
    .line 116
    move-result-object v0

    .line 117
    invoke-virtual {v0}, Lcom/wufan/friend/chat/protocol/ChatMessageMuteData;->hashCode()I

    .line 118
    .line 119
    .line 120
    move-result v0

    .line 121
    add-int/2addr v1, v0

    .line 122
    :cond_5
    mul-int/lit8 v1, v1, 0x1d

    .line 123
    .line 124
    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageV3;->unknownFields:Lcom/google/protobuf/UnknownFieldSet;

    .line 125
    .line 126
    invoke-virtual {v0}, Lcom/google/protobuf/UnknownFieldSet;->hashCode()I

    .line 127
    .line 128
    .line 129
    move-result v0

    .line 130
    add-int/2addr v1, v0

    .line 131
    iput v1, p0, Lcom/google/protobuf/AbstractMessageLite;->memoizedHashCode:I

    .line 132
    .line 133
    return v1
.end method

.method protected internalGetFieldAccessorTable()Lcom/google/protobuf/GeneratedMessageV3$FieldAccessorTable;
    .locals 3

    .line 1
    sget-object v0, Lcom/wufan/friend/chat/protocol/a0;->L:Lcom/google/protobuf/GeneratedMessageV3$FieldAccessorTable;

    .line 2
    .line 3
    const-class v1, Lcom/wufan/friend/chat/protocol/ResponseData;

    .line 4
    .line 5
    const-class v2, Lcom/wufan/friend/chat/protocol/ResponseData$b;

    .line 6
    .line 7
    invoke-virtual {v0, v1, v2}, Lcom/google/protobuf/GeneratedMessageV3$FieldAccessorTable;->ensureFieldAccessorsInitialized(Ljava/lang/Class;Ljava/lang/Class;)Lcom/google/protobuf/GeneratedMessageV3$FieldAccessorTable;

    .line 8
    .line 9
    .line 10
    move-result-object v0

    .line 11
    return-object v0
.end method

.method public final isInitialized()Z
    .locals 2

    .line 1
    iget-byte v0, p0, Lcom/wufan/friend/chat/protocol/ResponseData;->memoizedIsInitialized:B

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
    iput-byte v1, p0, Lcom/wufan/friend/chat/protocol/ResponseData;->memoizedIsInitialized:B

    .line 12
    .line 13
    return v1
.end method

.method public bridge synthetic newBuilderForType()Lcom/google/protobuf/Message$Builder;
    .locals 1

    .line 1
    invoke-virtual {p0}, Lcom/wufan/friend/chat/protocol/ResponseData;->newBuilderForType()Lcom/wufan/friend/chat/protocol/ResponseData$b;

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
    invoke-virtual {p0, p1}, Lcom/wufan/friend/chat/protocol/ResponseData;->newBuilderForType(Lcom/google/protobuf/GeneratedMessageV3$BuilderParent;)Lcom/wufan/friend/chat/protocol/ResponseData$b;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic newBuilderForType()Lcom/google/protobuf/MessageLite$Builder;
    .locals 1

    .line 3
    invoke-virtual {p0}, Lcom/wufan/friend/chat/protocol/ResponseData;->newBuilderForType()Lcom/wufan/friend/chat/protocol/ResponseData$b;

    move-result-object v0

    return-object v0
.end method

.method public newBuilderForType()Lcom/wufan/friend/chat/protocol/ResponseData$b;
    .locals 1

    .line 4
    invoke-static {}, Lcom/wufan/friend/chat/protocol/ResponseData;->newBuilder()Lcom/wufan/friend/chat/protocol/ResponseData$b;

    move-result-object v0

    return-object v0
.end method

.method protected newBuilderForType(Lcom/google/protobuf/GeneratedMessageV3$BuilderParent;)Lcom/wufan/friend/chat/protocol/ResponseData$b;
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
    new-instance v0, Lcom/wufan/friend/chat/protocol/ResponseData$b;

    const/4 v1, 0x0

    invoke-direct {v0, p1, v1}, Lcom/wufan/friend/chat/protocol/ResponseData$b;-><init>(Lcom/google/protobuf/GeneratedMessageV3$BuilderParent;Lcom/wufan/friend/chat/protocol/ResponseData$a;)V

    return-object v0
.end method

.method public bridge synthetic toBuilder()Lcom/google/protobuf/Message$Builder;
    .locals 1

    .line 1
    invoke-virtual {p0}, Lcom/wufan/friend/chat/protocol/ResponseData;->toBuilder()Lcom/wufan/friend/chat/protocol/ResponseData$b;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic toBuilder()Lcom/google/protobuf/MessageLite$Builder;
    .locals 1

    .line 2
    invoke-virtual {p0}, Lcom/wufan/friend/chat/protocol/ResponseData;->toBuilder()Lcom/wufan/friend/chat/protocol/ResponseData$b;

    move-result-object v0

    return-object v0
.end method

.method public toBuilder()Lcom/wufan/friend/chat/protocol/ResponseData$b;
    .locals 2

    .line 3
    sget-object v0, Lcom/wufan/friend/chat/protocol/ResponseData;->DEFAULT_INSTANCE:Lcom/wufan/friend/chat/protocol/ResponseData;

    const/4 v1, 0x0

    if-ne p0, v0, :cond_0

    .line 4
    new-instance v0, Lcom/wufan/friend/chat/protocol/ResponseData$b;

    invoke-direct {v0, v1}, Lcom/wufan/friend/chat/protocol/ResponseData$b;-><init>(Lcom/wufan/friend/chat/protocol/ResponseData$a;)V

    goto :goto_0

    :cond_0
    new-instance v0, Lcom/wufan/friend/chat/protocol/ResponseData$b;

    invoke-direct {v0, v1}, Lcom/wufan/friend/chat/protocol/ResponseData$b;-><init>(Lcom/wufan/friend/chat/protocol/ResponseData$a;)V

    invoke-virtual {v0, p0}, Lcom/wufan/friend/chat/protocol/ResponseData$b;->mergeFrom(Lcom/wufan/friend/chat/protocol/ResponseData;)Lcom/wufan/friend/chat/protocol/ResponseData$b;

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
    iget-object v0, p0, Lcom/wufan/friend/chat/protocol/ResponseData;->loginData_:Lcom/wufan/friend/chat/protocol/LoginData;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    const/4 v0, 0x1

    .line 6
    invoke-virtual {p0}, Lcom/wufan/friend/chat/protocol/ResponseData;->getLoginData()Lcom/wufan/friend/chat/protocol/LoginData;

    .line 7
    .line 8
    .line 9
    move-result-object v1

    .line 10
    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/CodedOutputStream;->writeMessage(ILcom/google/protobuf/MessageLite;)V

    .line 11
    .line 12
    .line 13
    :cond_0
    iget-object v0, p0, Lcom/wufan/friend/chat/protocol/ResponseData;->notification_:Lcom/wufan/friend/chat/protocol/NotificationData;

    .line 14
    .line 15
    if-eqz v0, :cond_1

    .line 16
    .line 17
    const/4 v0, 0x2

    .line 18
    invoke-virtual {p0}, Lcom/wufan/friend/chat/protocol/ResponseData;->getNotification()Lcom/wufan/friend/chat/protocol/NotificationData;

    .line 19
    .line 20
    .line 21
    move-result-object v1

    .line 22
    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/CodedOutputStream;->writeMessage(ILcom/google/protobuf/MessageLite;)V

    .line 23
    .line 24
    .line 25
    :cond_1
    iget-object v0, p0, Lcom/wufan/friend/chat/protocol/ResponseData;->recommendPlayerData_:Lcom/wufan/friend/chat/protocol/RecommendPlayerData;

    .line 26
    .line 27
    if-eqz v0, :cond_2

    .line 28
    .line 29
    const/4 v0, 0x3

    .line 30
    invoke-virtual {p0}, Lcom/wufan/friend/chat/protocol/ResponseData;->getRecommendPlayerData()Lcom/wufan/friend/chat/protocol/RecommendPlayerData;

    .line 31
    .line 32
    .line 33
    move-result-object v1

    .line 34
    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/CodedOutputStream;->writeMessage(ILcom/google/protobuf/MessageLite;)V

    .line 35
    .line 36
    .line 37
    :cond_2
    iget-object v0, p0, Lcom/wufan/friend/chat/protocol/ResponseData;->localBattleGameData_:Lcom/wufan/friend/chat/protocol/LocalBattleGameData;

    .line 38
    .line 39
    if-eqz v0, :cond_3

    .line 40
    .line 41
    const/4 v0, 0x4

    .line 42
    invoke-virtual {p0}, Lcom/wufan/friend/chat/protocol/ResponseData;->getLocalBattleGameData()Lcom/wufan/friend/chat/protocol/LocalBattleGameData;

    .line 43
    .line 44
    .line 45
    move-result-object v1

    .line 46
    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/CodedOutputStream;->writeMessage(ILcom/google/protobuf/MessageLite;)V

    .line 47
    .line 48
    .line 49
    :cond_3
    iget-object v0, p0, Lcom/wufan/friend/chat/protocol/ResponseData;->chatMessageMuteData_:Lcom/wufan/friend/chat/protocol/ChatMessageMuteData;

    .line 50
    .line 51
    if-eqz v0, :cond_4

    .line 52
    .line 53
    const/4 v0, 0x5

    .line 54
    invoke-virtual {p0}, Lcom/wufan/friend/chat/protocol/ResponseData;->getChatMessageMuteData()Lcom/wufan/friend/chat/protocol/ChatMessageMuteData;

    .line 55
    .line 56
    .line 57
    move-result-object v1

    .line 58
    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/CodedOutputStream;->writeMessage(ILcom/google/protobuf/MessageLite;)V

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
