.class public final Lcom/wufan/friend/chat/protocol/PlayGameArgs;
.super Lcom/google/protobuf/GeneratedMessageV3;
.source "SourceFile"

# interfaces
.implements Lcom/wufan/friend/chat/protocol/d0;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/wufan/friend/chat/protocol/PlayGameArgs$b;,
        Lcom/wufan/friend/chat/protocol/PlayGameArgs$State;
    }
.end annotation


# static fields
.field public static final ACCOUNTID_FIELD_NUMBER:I = 0x5

.field private static final DEFAULT_INSTANCE:Lcom/wufan/friend/chat/protocol/PlayGameArgs;

.field public static final GAMEID_FIELD_NUMBER:I = 0x2

.field public static final LOBBYROOMID_FIELD_NUMBER:I = 0x4

.field public static final LOCALBATTLEGAMEIDS_FIELD_NUMBER:I = 0x7

.field private static final PARSER:Lcom/google/protobuf/Parser;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/protobuf/Parser<",
            "Lcom/wufan/friend/chat/protocol/PlayGameArgs;",
            ">;"
        }
    .end annotation
.end field

.field public static final STATE_FIELD_NUMBER:I = 0x1

.field public static final TYPE_FIELD_NUMBER:I = 0x3

.field public static final VERSUS_FIELD_NUMBER:I = 0x6

.field private static final serialVersionUID:J


# instance fields
.field private accountId_:I

.field private bitField0_:I

.field private gameId_:J

.field private lobbyRoomId_:J

.field private localBattleGameIdsMemoizedSerializedSize:I

.field private localBattleGameIds_:Lcom/google/protobuf/Internal$LongList;

.field private memoizedIsInitialized:B

.field private state_:I

.field private type_:I

.field private versus_:Z


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 1
    new-instance v0, Lcom/wufan/friend/chat/protocol/PlayGameArgs;

    .line 2
    .line 3
    invoke-direct {v0}, Lcom/wufan/friend/chat/protocol/PlayGameArgs;-><init>()V

    .line 4
    .line 5
    .line 6
    sput-object v0, Lcom/wufan/friend/chat/protocol/PlayGameArgs;->DEFAULT_INSTANCE:Lcom/wufan/friend/chat/protocol/PlayGameArgs;

    .line 7
    .line 8
    new-instance v0, Lcom/wufan/friend/chat/protocol/PlayGameArgs$a;

    .line 9
    .line 10
    invoke-direct {v0}, Lcom/wufan/friend/chat/protocol/PlayGameArgs$a;-><init>()V

    .line 11
    .line 12
    .line 13
    sput-object v0, Lcom/wufan/friend/chat/protocol/PlayGameArgs;->PARSER:Lcom/google/protobuf/Parser;

    .line 14
    .line 15
    return-void
.end method

.method private constructor <init>()V
    .locals 1

    .line 6
    invoke-direct {p0}, Lcom/google/protobuf/GeneratedMessageV3;-><init>()V

    const/4 v0, -0x1

    .line 7
    iput v0, p0, Lcom/wufan/friend/chat/protocol/PlayGameArgs;->localBattleGameIdsMemoizedSerializedSize:I

    .line 8
    iput-byte v0, p0, Lcom/wufan/friend/chat/protocol/PlayGameArgs;->memoizedIsInitialized:B

    const/4 v0, 0x0

    .line 9
    iput v0, p0, Lcom/wufan/friend/chat/protocol/PlayGameArgs;->state_:I

    .line 10
    iput v0, p0, Lcom/wufan/friend/chat/protocol/PlayGameArgs;->type_:I

    .line 11
    invoke-static {}, Lcom/google/protobuf/GeneratedMessageV3;->emptyLongList()Lcom/google/protobuf/Internal$LongList;

    move-result-object v0

    iput-object v0, p0, Lcom/wufan/friend/chat/protocol/PlayGameArgs;->localBattleGameIds_:Lcom/google/protobuf/Internal$LongList;

    return-void
.end method

.method private constructor <init>(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)V
    .locals 7
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
    invoke-direct {p0}, Lcom/wufan/friend/chat/protocol/PlayGameArgs;-><init>()V

    .line 13
    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 14
    invoke-static {}, Lcom/google/protobuf/UnknownFieldSet;->newBuilder()Lcom/google/protobuf/UnknownFieldSet$Builder;

    move-result-object v0

    const/4 v1, 0x0

    const/4 v2, 0x0

    :cond_0
    :goto_0
    if-nez v1, :cond_e

    .line 15
    :try_start_0
    invoke-virtual {p1}, Lcom/google/protobuf/CodedInputStream;->readTag()I

    move-result v3

    const/4 v4, 0x1

    if-eqz v3, :cond_c

    const/16 v5, 0x8

    if-eq v3, v5, :cond_b

    const/16 v5, 0x10

    if-eq v3, v5, :cond_a

    const/16 v5, 0x18

    if-eq v3, v5, :cond_9

    const/16 v5, 0x20

    if-eq v3, v5, :cond_8

    const/16 v5, 0x28

    if-eq v3, v5, :cond_7

    const/16 v5, 0x30

    if-eq v3, v5, :cond_6

    const/16 v5, 0x38

    if-eq v3, v5, :cond_4

    const/16 v5, 0x3a

    if-eq v3, v5, :cond_1

    .line 16
    invoke-virtual {p0, p1, v0, p2, v3}, Lcom/google/protobuf/GeneratedMessageV3;->parseUnknownField(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/UnknownFieldSet$Builder;Lcom/google/protobuf/ExtensionRegistryLite;I)Z

    move-result v3

    if-nez v3, :cond_0

    goto/16 :goto_2

    .line 17
    :cond_1
    invoke-virtual {p1}, Lcom/google/protobuf/CodedInputStream;->readRawVarint32()I

    move-result v3

    .line 18
    invoke-virtual {p1, v3}, Lcom/google/protobuf/CodedInputStream;->pushLimit(I)I

    move-result v3

    and-int/lit8 v4, v2, 0x40

    if-nez v4, :cond_2

    .line 19
    invoke-virtual {p1}, Lcom/google/protobuf/CodedInputStream;->getBytesUntilLimit()I

    move-result v4

    if-lez v4, :cond_2

    .line 20
    invoke-static {}, Lcom/google/protobuf/GeneratedMessageV3;->newLongList()Lcom/google/protobuf/Internal$LongList;

    move-result-object v4

    iput-object v4, p0, Lcom/wufan/friend/chat/protocol/PlayGameArgs;->localBattleGameIds_:Lcom/google/protobuf/Internal$LongList;

    or-int/lit8 v2, v2, 0x40

    .line 21
    :cond_2
    :goto_1
    invoke-virtual {p1}, Lcom/google/protobuf/CodedInputStream;->getBytesUntilLimit()I

    move-result v4

    if-lez v4, :cond_3

    .line 22
    iget-object v4, p0, Lcom/wufan/friend/chat/protocol/PlayGameArgs;->localBattleGameIds_:Lcom/google/protobuf/Internal$LongList;

    invoke-virtual {p1}, Lcom/google/protobuf/CodedInputStream;->readInt64()J

    move-result-wide v5

    invoke-interface {v4, v5, v6}, Lcom/google/protobuf/Internal$LongList;->addLong(J)V

    goto :goto_1

    .line 23
    :cond_3
    invoke-virtual {p1, v3}, Lcom/google/protobuf/CodedInputStream;->popLimit(I)V

    goto :goto_0

    :cond_4
    and-int/lit8 v3, v2, 0x40

    if-nez v3, :cond_5

    .line 24
    invoke-static {}, Lcom/google/protobuf/GeneratedMessageV3;->newLongList()Lcom/google/protobuf/Internal$LongList;

    move-result-object v3

    iput-object v3, p0, Lcom/wufan/friend/chat/protocol/PlayGameArgs;->localBattleGameIds_:Lcom/google/protobuf/Internal$LongList;

    or-int/lit8 v2, v2, 0x40

    .line 25
    :cond_5
    iget-object v3, p0, Lcom/wufan/friend/chat/protocol/PlayGameArgs;->localBattleGameIds_:Lcom/google/protobuf/Internal$LongList;

    invoke-virtual {p1}, Lcom/google/protobuf/CodedInputStream;->readInt64()J

    move-result-wide v4

    invoke-interface {v3, v4, v5}, Lcom/google/protobuf/Internal$LongList;->addLong(J)V

    goto :goto_0

    .line 26
    :cond_6
    invoke-virtual {p1}, Lcom/google/protobuf/CodedInputStream;->readBool()Z

    move-result v3

    iput-boolean v3, p0, Lcom/wufan/friend/chat/protocol/PlayGameArgs;->versus_:Z

    goto :goto_0

    .line 27
    :cond_7
    invoke-virtual {p1}, Lcom/google/protobuf/CodedInputStream;->readInt32()I

    move-result v3

    iput v3, p0, Lcom/wufan/friend/chat/protocol/PlayGameArgs;->accountId_:I

    goto/16 :goto_0

    .line 28
    :cond_8
    invoke-virtual {p1}, Lcom/google/protobuf/CodedInputStream;->readInt64()J

    move-result-wide v3

    iput-wide v3, p0, Lcom/wufan/friend/chat/protocol/PlayGameArgs;->lobbyRoomId_:J

    goto/16 :goto_0

    .line 29
    :cond_9
    invoke-virtual {p1}, Lcom/google/protobuf/CodedInputStream;->readEnum()I

    move-result v3

    .line 30
    iput v3, p0, Lcom/wufan/friend/chat/protocol/PlayGameArgs;->type_:I

    goto/16 :goto_0

    .line 31
    :cond_a
    invoke-virtual {p1}, Lcom/google/protobuf/CodedInputStream;->readInt64()J

    move-result-wide v3

    iput-wide v3, p0, Lcom/wufan/friend/chat/protocol/PlayGameArgs;->gameId_:J

    goto/16 :goto_0

    .line 32
    :cond_b
    invoke-virtual {p1}, Lcom/google/protobuf/CodedInputStream;->readEnum()I

    move-result v3

    .line 33
    iput v3, p0, Lcom/wufan/friend/chat/protocol/PlayGameArgs;->state_:I
    :try_end_0
    .catch Lcom/google/protobuf/InvalidProtocolBufferException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto/16 :goto_0

    :cond_c
    :goto_2
    const/4 v1, 0x1

    goto/16 :goto_0

    :catchall_0
    move-exception p1

    goto :goto_3

    :catch_0
    move-exception p1

    .line 34
    :try_start_1
    new-instance p2, Lcom/google/protobuf/InvalidProtocolBufferException;

    invoke-direct {p2, p1}, Lcom/google/protobuf/InvalidProtocolBufferException;-><init>(Ljava/io/IOException;)V

    .line 35
    invoke-virtual {p2, p0}, Lcom/google/protobuf/InvalidProtocolBufferException;->setUnfinishedMessage(Lcom/google/protobuf/MessageLite;)Lcom/google/protobuf/InvalidProtocolBufferException;

    move-result-object p1

    throw p1

    :catch_1
    move-exception p1

    .line 36
    invoke-virtual {p1, p0}, Lcom/google/protobuf/InvalidProtocolBufferException;->setUnfinishedMessage(Lcom/google/protobuf/MessageLite;)Lcom/google/protobuf/InvalidProtocolBufferException;

    move-result-object p1

    throw p1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :goto_3
    and-int/lit8 p2, v2, 0x40

    if-eqz p2, :cond_d

    .line 37
    iget-object p2, p0, Lcom/wufan/friend/chat/protocol/PlayGameArgs;->localBattleGameIds_:Lcom/google/protobuf/Internal$LongList;

    invoke-interface {p2}, Lcom/google/protobuf/Internal$ProtobufList;->makeImmutable()V

    .line 38
    :cond_d
    invoke-virtual {v0}, Lcom/google/protobuf/UnknownFieldSet$Builder;->build()Lcom/google/protobuf/UnknownFieldSet;

    move-result-object p2

    iput-object p2, p0, Lcom/google/protobuf/GeneratedMessageV3;->unknownFields:Lcom/google/protobuf/UnknownFieldSet;

    .line 39
    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageV3;->makeExtensionsImmutable()V

    .line 40
    throw p1

    :cond_e
    and-int/lit8 p1, v2, 0x40

    if-eqz p1, :cond_f

    .line 41
    iget-object p1, p0, Lcom/wufan/friend/chat/protocol/PlayGameArgs;->localBattleGameIds_:Lcom/google/protobuf/Internal$LongList;

    invoke-interface {p1}, Lcom/google/protobuf/Internal$ProtobufList;->makeImmutable()V

    .line 42
    :cond_f
    invoke-virtual {v0}, Lcom/google/protobuf/UnknownFieldSet$Builder;->build()Lcom/google/protobuf/UnknownFieldSet;

    move-result-object p1

    iput-object p1, p0, Lcom/google/protobuf/GeneratedMessageV3;->unknownFields:Lcom/google/protobuf/UnknownFieldSet;

    .line 43
    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageV3;->makeExtensionsImmutable()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;Lcom/wufan/friend/chat/protocol/PlayGameArgs$a;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .line 1
    invoke-direct {p0, p1, p2}, Lcom/wufan/friend/chat/protocol/PlayGameArgs;-><init>(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)V

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
    iput p1, p0, Lcom/wufan/friend/chat/protocol/PlayGameArgs;->localBattleGameIdsMemoizedSerializedSize:I

    .line 5
    iput-byte p1, p0, Lcom/wufan/friend/chat/protocol/PlayGameArgs;->memoizedIsInitialized:B

    return-void
.end method

.method synthetic constructor <init>(Lcom/google/protobuf/GeneratedMessageV3$Builder;Lcom/wufan/friend/chat/protocol/PlayGameArgs$a;)V
    .locals 0

    .line 2
    invoke-direct {p0, p1}, Lcom/wufan/friend/chat/protocol/PlayGameArgs;-><init>(Lcom/google/protobuf/GeneratedMessageV3$Builder;)V

    return-void
.end method

.method static synthetic access$1002(Lcom/wufan/friend/chat/protocol/PlayGameArgs;Z)Z
    .locals 0

    .line 1
    iput-boolean p1, p0, Lcom/wufan/friend/chat/protocol/PlayGameArgs;->versus_:Z

    .line 2
    .line 3
    return p1
.end method

.method static synthetic access$1100(Lcom/wufan/friend/chat/protocol/PlayGameArgs;)Lcom/google/protobuf/Internal$LongList;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/wufan/friend/chat/protocol/PlayGameArgs;->localBattleGameIds_:Lcom/google/protobuf/Internal$LongList;

    .line 2
    .line 3
    return-object p0
.end method

.method static synthetic access$1102(Lcom/wufan/friend/chat/protocol/PlayGameArgs;Lcom/google/protobuf/Internal$LongList;)Lcom/google/protobuf/Internal$LongList;
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/wufan/friend/chat/protocol/PlayGameArgs;->localBattleGameIds_:Lcom/google/protobuf/Internal$LongList;

    .line 2
    .line 3
    return-object p1
.end method

.method static synthetic access$1202(Lcom/wufan/friend/chat/protocol/PlayGameArgs;I)I
    .locals 0

    .line 1
    iput p1, p0, Lcom/wufan/friend/chat/protocol/PlayGameArgs;->bitField0_:I

    .line 2
    .line 3
    return p1
.end method

.method static synthetic access$1300(Lcom/wufan/friend/chat/protocol/PlayGameArgs;)Lcom/google/protobuf/UnknownFieldSet;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/google/protobuf/GeneratedMessageV3;->unknownFields:Lcom/google/protobuf/UnknownFieldSet;

    .line 2
    .line 3
    return-object p0
.end method

.method static synthetic access$1400()Lcom/google/protobuf/Parser;
    .locals 1

    .line 1
    sget-object v0, Lcom/wufan/friend/chat/protocol/PlayGameArgs;->PARSER:Lcom/google/protobuf/Parser;

    .line 2
    .line 3
    return-object v0
.end method

.method static synthetic access$1500()Lcom/google/protobuf/Internal$LongList;
    .locals 1

    .line 1
    invoke-static {}, Lcom/google/protobuf/GeneratedMessageV3;->emptyLongList()Lcom/google/protobuf/Internal$LongList;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    return-object v0
.end method

.method static synthetic access$1600(Lcom/google/protobuf/Internal$LongList;)Lcom/google/protobuf/Internal$LongList;
    .locals 0

    .line 1
    invoke-static {p0}, Lcom/google/protobuf/GeneratedMessageV3;->mutableCopy(Lcom/google/protobuf/Internal$LongList;)Lcom/google/protobuf/Internal$LongList;

    .line 2
    .line 3
    .line 4
    move-result-object p0

    .line 5
    return-object p0
.end method

.method static synthetic access$1700()Lcom/google/protobuf/Internal$LongList;
    .locals 1

    .line 1
    invoke-static {}, Lcom/google/protobuf/GeneratedMessageV3;->emptyLongList()Lcom/google/protobuf/Internal$LongList;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
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

.method static synthetic access$300()Lcom/google/protobuf/Internal$LongList;
    .locals 1

    .line 1
    invoke-static {}, Lcom/google/protobuf/GeneratedMessageV3;->emptyLongList()Lcom/google/protobuf/Internal$LongList;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    return-object v0
.end method

.method static synthetic access$500(Lcom/wufan/friend/chat/protocol/PlayGameArgs;)I
    .locals 0

    .line 1
    iget p0, p0, Lcom/wufan/friend/chat/protocol/PlayGameArgs;->state_:I

    .line 2
    .line 3
    return p0
.end method

.method static synthetic access$502(Lcom/wufan/friend/chat/protocol/PlayGameArgs;I)I
    .locals 0

    .line 1
    iput p1, p0, Lcom/wufan/friend/chat/protocol/PlayGameArgs;->state_:I

    .line 2
    .line 3
    return p1
.end method

.method static synthetic access$602(Lcom/wufan/friend/chat/protocol/PlayGameArgs;J)J
    .locals 0

    .line 1
    iput-wide p1, p0, Lcom/wufan/friend/chat/protocol/PlayGameArgs;->gameId_:J

    .line 2
    .line 3
    return-wide p1
.end method

.method static synthetic access$700(Lcom/wufan/friend/chat/protocol/PlayGameArgs;)I
    .locals 0

    .line 1
    iget p0, p0, Lcom/wufan/friend/chat/protocol/PlayGameArgs;->type_:I

    .line 2
    .line 3
    return p0
.end method

.method static synthetic access$702(Lcom/wufan/friend/chat/protocol/PlayGameArgs;I)I
    .locals 0

    .line 1
    iput p1, p0, Lcom/wufan/friend/chat/protocol/PlayGameArgs;->type_:I

    .line 2
    .line 3
    return p1
.end method

.method static synthetic access$802(Lcom/wufan/friend/chat/protocol/PlayGameArgs;J)J
    .locals 0

    .line 1
    iput-wide p1, p0, Lcom/wufan/friend/chat/protocol/PlayGameArgs;->lobbyRoomId_:J

    .line 2
    .line 3
    return-wide p1
.end method

.method static synthetic access$902(Lcom/wufan/friend/chat/protocol/PlayGameArgs;I)I
    .locals 0

    .line 1
    iput p1, p0, Lcom/wufan/friend/chat/protocol/PlayGameArgs;->accountId_:I

    .line 2
    .line 3
    return p1
.end method

.method public static getDefaultInstance()Lcom/wufan/friend/chat/protocol/PlayGameArgs;
    .locals 1

    .line 1
    sget-object v0, Lcom/wufan/friend/chat/protocol/PlayGameArgs;->DEFAULT_INSTANCE:Lcom/wufan/friend/chat/protocol/PlayGameArgs;

    .line 2
    .line 3
    return-object v0
.end method

.method public static final getDescriptor()Lcom/google/protobuf/Descriptors$Descriptor;
    .locals 1

    .line 1
    sget-object v0, Lcom/wufan/friend/chat/protocol/a0;->w:Lcom/google/protobuf/Descriptors$Descriptor;

    .line 2
    .line 3
    return-object v0
.end method

.method public static newBuilder()Lcom/wufan/friend/chat/protocol/PlayGameArgs$b;
    .locals 1

    .line 1
    sget-object v0, Lcom/wufan/friend/chat/protocol/PlayGameArgs;->DEFAULT_INSTANCE:Lcom/wufan/friend/chat/protocol/PlayGameArgs;

    invoke-virtual {v0}, Lcom/wufan/friend/chat/protocol/PlayGameArgs;->toBuilder()Lcom/wufan/friend/chat/protocol/PlayGameArgs$b;

    move-result-object v0

    return-object v0
.end method

.method public static newBuilder(Lcom/wufan/friend/chat/protocol/PlayGameArgs;)Lcom/wufan/friend/chat/protocol/PlayGameArgs$b;
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
    sget-object v0, Lcom/wufan/friend/chat/protocol/PlayGameArgs;->DEFAULT_INSTANCE:Lcom/wufan/friend/chat/protocol/PlayGameArgs;

    invoke-virtual {v0}, Lcom/wufan/friend/chat/protocol/PlayGameArgs;->toBuilder()Lcom/wufan/friend/chat/protocol/PlayGameArgs$b;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/wufan/friend/chat/protocol/PlayGameArgs$b;->mergeFrom(Lcom/wufan/friend/chat/protocol/PlayGameArgs;)Lcom/wufan/friend/chat/protocol/PlayGameArgs$b;

    move-result-object p0

    return-object p0
.end method

.method public static parseDelimitedFrom(Ljava/io/InputStream;)Lcom/wufan/friend/chat/protocol/PlayGameArgs;
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
    sget-object v0, Lcom/wufan/friend/chat/protocol/PlayGameArgs;->PARSER:Lcom/google/protobuf/Parser;

    .line 2
    invoke-static {v0, p0}, Lcom/google/protobuf/GeneratedMessageV3;->parseDelimitedWithIOException(Lcom/google/protobuf/Parser;Ljava/io/InputStream;)Lcom/google/protobuf/Message;

    move-result-object p0

    check-cast p0, Lcom/wufan/friend/chat/protocol/PlayGameArgs;

    return-object p0
.end method

.method public static parseDelimitedFrom(Ljava/io/InputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/wufan/friend/chat/protocol/PlayGameArgs;
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
    sget-object v0, Lcom/wufan/friend/chat/protocol/PlayGameArgs;->PARSER:Lcom/google/protobuf/Parser;

    .line 4
    invoke-static {v0, p0, p1}, Lcom/google/protobuf/GeneratedMessageV3;->parseDelimitedWithIOException(Lcom/google/protobuf/Parser;Ljava/io/InputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/Message;

    move-result-object p0

    check-cast p0, Lcom/wufan/friend/chat/protocol/PlayGameArgs;

    return-object p0
.end method

.method public static parseFrom(Lcom/google/protobuf/ByteString;)Lcom/wufan/friend/chat/protocol/PlayGameArgs;
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
    sget-object v0, Lcom/wufan/friend/chat/protocol/PlayGameArgs;->PARSER:Lcom/google/protobuf/Parser;

    invoke-interface {v0, p0}, Lcom/google/protobuf/Parser;->parseFrom(Lcom/google/protobuf/ByteString;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/wufan/friend/chat/protocol/PlayGameArgs;

    return-object p0
.end method

.method public static parseFrom(Lcom/google/protobuf/ByteString;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/wufan/friend/chat/protocol/PlayGameArgs;
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
    sget-object v0, Lcom/wufan/friend/chat/protocol/PlayGameArgs;->PARSER:Lcom/google/protobuf/Parser;

    invoke-interface {v0, p0, p1}, Lcom/google/protobuf/Parser;->parseFrom(Lcom/google/protobuf/ByteString;Lcom/google/protobuf/ExtensionRegistryLite;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/wufan/friend/chat/protocol/PlayGameArgs;

    return-object p0
.end method

.method public static parseFrom(Lcom/google/protobuf/CodedInputStream;)Lcom/wufan/friend/chat/protocol/PlayGameArgs;
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
    sget-object v0, Lcom/wufan/friend/chat/protocol/PlayGameArgs;->PARSER:Lcom/google/protobuf/Parser;

    .line 12
    invoke-static {v0, p0}, Lcom/google/protobuf/GeneratedMessageV3;->parseWithIOException(Lcom/google/protobuf/Parser;Lcom/google/protobuf/CodedInputStream;)Lcom/google/protobuf/Message;

    move-result-object p0

    check-cast p0, Lcom/wufan/friend/chat/protocol/PlayGameArgs;

    return-object p0
.end method

.method public static parseFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/wufan/friend/chat/protocol/PlayGameArgs;
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
    sget-object v0, Lcom/wufan/friend/chat/protocol/PlayGameArgs;->PARSER:Lcom/google/protobuf/Parser;

    .line 14
    invoke-static {v0, p0, p1}, Lcom/google/protobuf/GeneratedMessageV3;->parseWithIOException(Lcom/google/protobuf/Parser;Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/Message;

    move-result-object p0

    check-cast p0, Lcom/wufan/friend/chat/protocol/PlayGameArgs;

    return-object p0
.end method

.method public static parseFrom(Ljava/io/InputStream;)Lcom/wufan/friend/chat/protocol/PlayGameArgs;
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
    sget-object v0, Lcom/wufan/friend/chat/protocol/PlayGameArgs;->PARSER:Lcom/google/protobuf/Parser;

    .line 8
    invoke-static {v0, p0}, Lcom/google/protobuf/GeneratedMessageV3;->parseWithIOException(Lcom/google/protobuf/Parser;Ljava/io/InputStream;)Lcom/google/protobuf/Message;

    move-result-object p0

    check-cast p0, Lcom/wufan/friend/chat/protocol/PlayGameArgs;

    return-object p0
.end method

.method public static parseFrom(Ljava/io/InputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/wufan/friend/chat/protocol/PlayGameArgs;
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
    sget-object v0, Lcom/wufan/friend/chat/protocol/PlayGameArgs;->PARSER:Lcom/google/protobuf/Parser;

    .line 10
    invoke-static {v0, p0, p1}, Lcom/google/protobuf/GeneratedMessageV3;->parseWithIOException(Lcom/google/protobuf/Parser;Ljava/io/InputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/Message;

    move-result-object p0

    check-cast p0, Lcom/wufan/friend/chat/protocol/PlayGameArgs;

    return-object p0
.end method

.method public static parseFrom(Ljava/nio/ByteBuffer;)Lcom/wufan/friend/chat/protocol/PlayGameArgs;
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
    sget-object v0, Lcom/wufan/friend/chat/protocol/PlayGameArgs;->PARSER:Lcom/google/protobuf/Parser;

    invoke-interface {v0, p0}, Lcom/google/protobuf/Parser;->parseFrom(Ljava/nio/ByteBuffer;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/wufan/friend/chat/protocol/PlayGameArgs;

    return-object p0
.end method

.method public static parseFrom(Ljava/nio/ByteBuffer;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/wufan/friend/chat/protocol/PlayGameArgs;
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
    sget-object v0, Lcom/wufan/friend/chat/protocol/PlayGameArgs;->PARSER:Lcom/google/protobuf/Parser;

    invoke-interface {v0, p0, p1}, Lcom/google/protobuf/Parser;->parseFrom(Ljava/nio/ByteBuffer;Lcom/google/protobuf/ExtensionRegistryLite;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/wufan/friend/chat/protocol/PlayGameArgs;

    return-object p0
.end method

.method public static parseFrom([B)Lcom/wufan/friend/chat/protocol/PlayGameArgs;
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
    sget-object v0, Lcom/wufan/friend/chat/protocol/PlayGameArgs;->PARSER:Lcom/google/protobuf/Parser;

    invoke-interface {v0, p0}, Lcom/google/protobuf/Parser;->parseFrom([B)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/wufan/friend/chat/protocol/PlayGameArgs;

    return-object p0
.end method

.method public static parseFrom([BLcom/google/protobuf/ExtensionRegistryLite;)Lcom/wufan/friend/chat/protocol/PlayGameArgs;
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
    sget-object v0, Lcom/wufan/friend/chat/protocol/PlayGameArgs;->PARSER:Lcom/google/protobuf/Parser;

    invoke-interface {v0, p0, p1}, Lcom/google/protobuf/Parser;->parseFrom([BLcom/google/protobuf/ExtensionRegistryLite;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/wufan/friend/chat/protocol/PlayGameArgs;

    return-object p0
.end method

.method public static parser()Lcom/google/protobuf/Parser;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/google/protobuf/Parser<",
            "Lcom/wufan/friend/chat/protocol/PlayGameArgs;",
            ">;"
        }
    .end annotation

    .line 1
    sget-object v0, Lcom/wufan/friend/chat/protocol/PlayGameArgs;->PARSER:Lcom/google/protobuf/Parser;

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
    instance-of v1, p1, Lcom/wufan/friend/chat/protocol/PlayGameArgs;

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
    check-cast p1, Lcom/wufan/friend/chat/protocol/PlayGameArgs;

    .line 15
    .line 16
    iget v1, p0, Lcom/wufan/friend/chat/protocol/PlayGameArgs;->state_:I

    .line 17
    .line 18
    iget v2, p1, Lcom/wufan/friend/chat/protocol/PlayGameArgs;->state_:I

    .line 19
    .line 20
    const/4 v3, 0x0

    .line 21
    if-eq v1, v2, :cond_2

    .line 22
    .line 23
    return v3

    .line 24
    :cond_2
    invoke-virtual {p0}, Lcom/wufan/friend/chat/protocol/PlayGameArgs;->getGameId()J

    .line 25
    .line 26
    .line 27
    move-result-wide v1

    .line 28
    invoke-virtual {p1}, Lcom/wufan/friend/chat/protocol/PlayGameArgs;->getGameId()J

    .line 29
    .line 30
    .line 31
    move-result-wide v4

    .line 32
    cmp-long v6, v1, v4

    .line 33
    .line 34
    if-eqz v6, :cond_3

    .line 35
    .line 36
    return v3

    .line 37
    :cond_3
    iget v1, p0, Lcom/wufan/friend/chat/protocol/PlayGameArgs;->type_:I

    .line 38
    .line 39
    iget v2, p1, Lcom/wufan/friend/chat/protocol/PlayGameArgs;->type_:I

    .line 40
    .line 41
    if-eq v1, v2, :cond_4

    .line 42
    .line 43
    return v3

    .line 44
    :cond_4
    invoke-virtual {p0}, Lcom/wufan/friend/chat/protocol/PlayGameArgs;->getLobbyRoomId()J

    .line 45
    .line 46
    .line 47
    move-result-wide v1

    .line 48
    invoke-virtual {p1}, Lcom/wufan/friend/chat/protocol/PlayGameArgs;->getLobbyRoomId()J

    .line 49
    .line 50
    .line 51
    move-result-wide v4

    .line 52
    cmp-long v6, v1, v4

    .line 53
    .line 54
    if-eqz v6, :cond_5

    .line 55
    .line 56
    return v3

    .line 57
    :cond_5
    invoke-virtual {p0}, Lcom/wufan/friend/chat/protocol/PlayGameArgs;->getAccountId()I

    .line 58
    .line 59
    .line 60
    move-result v1

    .line 61
    invoke-virtual {p1}, Lcom/wufan/friend/chat/protocol/PlayGameArgs;->getAccountId()I

    .line 62
    .line 63
    .line 64
    move-result v2

    .line 65
    if-eq v1, v2, :cond_6

    .line 66
    .line 67
    return v3

    .line 68
    :cond_6
    invoke-virtual {p0}, Lcom/wufan/friend/chat/protocol/PlayGameArgs;->getVersus()Z

    .line 69
    .line 70
    .line 71
    move-result v1

    .line 72
    invoke-virtual {p1}, Lcom/wufan/friend/chat/protocol/PlayGameArgs;->getVersus()Z

    .line 73
    .line 74
    .line 75
    move-result v2

    .line 76
    if-eq v1, v2, :cond_7

    .line 77
    .line 78
    return v3

    .line 79
    :cond_7
    invoke-virtual {p0}, Lcom/wufan/friend/chat/protocol/PlayGameArgs;->getLocalBattleGameIdsList()Ljava/util/List;

    .line 80
    .line 81
    .line 82
    move-result-object v1

    .line 83
    invoke-virtual {p1}, Lcom/wufan/friend/chat/protocol/PlayGameArgs;->getLocalBattleGameIdsList()Ljava/util/List;

    .line 84
    .line 85
    .line 86
    move-result-object v2

    .line 87
    invoke-interface {v1, v2}, Ljava/util/List;->equals(Ljava/lang/Object;)Z

    .line 88
    .line 89
    .line 90
    move-result v1

    .line 91
    if-nez v1, :cond_8

    .line 92
    .line 93
    return v3

    .line 94
    :cond_8
    iget-object v1, p0, Lcom/google/protobuf/GeneratedMessageV3;->unknownFields:Lcom/google/protobuf/UnknownFieldSet;

    .line 95
    .line 96
    iget-object p1, p1, Lcom/google/protobuf/GeneratedMessageV3;->unknownFields:Lcom/google/protobuf/UnknownFieldSet;

    .line 97
    .line 98
    invoke-virtual {v1, p1}, Lcom/google/protobuf/UnknownFieldSet;->equals(Ljava/lang/Object;)Z

    .line 99
    .line 100
    .line 101
    move-result p1

    .line 102
    if-nez p1, :cond_9

    .line 103
    .line 104
    return v3

    .line 105
    :cond_9
    return v0
.end method

.method public getAccountId()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/wufan/friend/chat/protocol/PlayGameArgs;->accountId_:I

    .line 2
    .line 3
    return v0
.end method

.method public bridge synthetic getDefaultInstanceForType()Lcom/google/protobuf/Message;
    .locals 1

    .line 1
    invoke-virtual {p0}, Lcom/wufan/friend/chat/protocol/PlayGameArgs;->getDefaultInstanceForType()Lcom/wufan/friend/chat/protocol/PlayGameArgs;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic getDefaultInstanceForType()Lcom/google/protobuf/MessageLite;
    .locals 1

    .line 2
    invoke-virtual {p0}, Lcom/wufan/friend/chat/protocol/PlayGameArgs;->getDefaultInstanceForType()Lcom/wufan/friend/chat/protocol/PlayGameArgs;

    move-result-object v0

    return-object v0
.end method

.method public getDefaultInstanceForType()Lcom/wufan/friend/chat/protocol/PlayGameArgs;
    .locals 1

    .line 3
    sget-object v0, Lcom/wufan/friend/chat/protocol/PlayGameArgs;->DEFAULT_INSTANCE:Lcom/wufan/friend/chat/protocol/PlayGameArgs;

    return-object v0
.end method

.method public getGameId()J
    .locals 2

    .line 1
    iget-wide v0, p0, Lcom/wufan/friend/chat/protocol/PlayGameArgs;->gameId_:J

    .line 2
    .line 3
    return-wide v0
.end method

.method public getLobbyRoomId()J
    .locals 2

    .line 1
    iget-wide v0, p0, Lcom/wufan/friend/chat/protocol/PlayGameArgs;->lobbyRoomId_:J

    .line 2
    .line 3
    return-wide v0
.end method

.method public getLocalBattleGameIds(I)J
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "index"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/wufan/friend/chat/protocol/PlayGameArgs;->localBattleGameIds_:Lcom/google/protobuf/Internal$LongList;

    .line 2
    .line 3
    invoke-interface {v0, p1}, Lcom/google/protobuf/Internal$LongList;->getLong(I)J

    .line 4
    .line 5
    .line 6
    move-result-wide v0

    .line 7
    return-wide v0
.end method

.method public getLocalBattleGameIdsCount()I
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/wufan/friend/chat/protocol/PlayGameArgs;->localBattleGameIds_:Lcom/google/protobuf/Internal$LongList;

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

.method public getLocalBattleGameIdsList()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/lang/Long;",
            ">;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/wufan/friend/chat/protocol/PlayGameArgs;->localBattleGameIds_:Lcom/google/protobuf/Internal$LongList;

    .line 2
    .line 3
    return-object v0
.end method

.method public getParserForType()Lcom/google/protobuf/Parser;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/google/protobuf/Parser<",
            "Lcom/wufan/friend/chat/protocol/PlayGameArgs;",
            ">;"
        }
    .end annotation

    .line 1
    sget-object v0, Lcom/wufan/friend/chat/protocol/PlayGameArgs;->PARSER:Lcom/google/protobuf/Parser;

    .line 2
    .line 3
    return-object v0
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
    iget v0, p0, Lcom/wufan/friend/chat/protocol/PlayGameArgs;->state_:I

    .line 8
    .line 9
    sget-object v1, Lcom/wufan/friend/chat/protocol/PlayGameArgs$State;->START:Lcom/wufan/friend/chat/protocol/PlayGameArgs$State;

    .line 10
    .line 11
    invoke-virtual {v1}, Lcom/wufan/friend/chat/protocol/PlayGameArgs$State;->getNumber()I

    .line 12
    .line 13
    .line 14
    move-result v1

    .line 15
    const/4 v2, 0x0

    .line 16
    if-eq v0, v1, :cond_1

    .line 17
    .line 18
    iget v0, p0, Lcom/wufan/friend/chat/protocol/PlayGameArgs;->state_:I

    .line 19
    .line 20
    const/4 v1, 0x1

    .line 21
    invoke-static {v1, v0}, Lcom/google/protobuf/CodedOutputStream;->computeEnumSize(II)I

    .line 22
    .line 23
    .line 24
    move-result v0

    .line 25
    add-int/2addr v0, v2

    .line 26
    goto :goto_0

    .line 27
    :cond_1
    const/4 v0, 0x0

    .line 28
    :goto_0
    iget-wide v3, p0, Lcom/wufan/friend/chat/protocol/PlayGameArgs;->gameId_:J

    .line 29
    .line 30
    const-wide/16 v5, 0x0

    .line 31
    .line 32
    cmp-long v1, v3, v5

    .line 33
    .line 34
    if-eqz v1, :cond_2

    .line 35
    .line 36
    const/4 v1, 0x2

    .line 37
    invoke-static {v1, v3, v4}, Lcom/google/protobuf/CodedOutputStream;->computeInt64Size(IJ)I

    .line 38
    .line 39
    .line 40
    move-result v1

    .line 41
    add-int/2addr v0, v1

    .line 42
    :cond_2
    iget v1, p0, Lcom/wufan/friend/chat/protocol/PlayGameArgs;->type_:I

    .line 43
    .line 44
    sget-object v3, Lcom/wufan/friend/chat/protocol/PlayType;->STAND:Lcom/wufan/friend/chat/protocol/PlayType;

    .line 45
    .line 46
    invoke-virtual {v3}, Lcom/wufan/friend/chat/protocol/PlayType;->getNumber()I

    .line 47
    .line 48
    .line 49
    move-result v3

    .line 50
    if-eq v1, v3, :cond_3

    .line 51
    .line 52
    const/4 v1, 0x3

    .line 53
    iget v3, p0, Lcom/wufan/friend/chat/protocol/PlayGameArgs;->type_:I

    .line 54
    .line 55
    invoke-static {v1, v3}, Lcom/google/protobuf/CodedOutputStream;->computeEnumSize(II)I

    .line 56
    .line 57
    .line 58
    move-result v1

    .line 59
    add-int/2addr v0, v1

    .line 60
    :cond_3
    iget-wide v3, p0, Lcom/wufan/friend/chat/protocol/PlayGameArgs;->lobbyRoomId_:J

    .line 61
    .line 62
    cmp-long v1, v3, v5

    .line 63
    .line 64
    if-eqz v1, :cond_4

    .line 65
    .line 66
    const/4 v1, 0x4

    .line 67
    invoke-static {v1, v3, v4}, Lcom/google/protobuf/CodedOutputStream;->computeInt64Size(IJ)I

    .line 68
    .line 69
    .line 70
    move-result v1

    .line 71
    add-int/2addr v0, v1

    .line 72
    :cond_4
    iget v1, p0, Lcom/wufan/friend/chat/protocol/PlayGameArgs;->accountId_:I

    .line 73
    .line 74
    if-eqz v1, :cond_5

    .line 75
    .line 76
    const/4 v3, 0x5

    .line 77
    invoke-static {v3, v1}, Lcom/google/protobuf/CodedOutputStream;->computeInt32Size(II)I

    .line 78
    .line 79
    .line 80
    move-result v1

    .line 81
    add-int/2addr v0, v1

    .line 82
    :cond_5
    iget-boolean v1, p0, Lcom/wufan/friend/chat/protocol/PlayGameArgs;->versus_:Z

    .line 83
    .line 84
    if-eqz v1, :cond_6

    .line 85
    .line 86
    const/4 v3, 0x6

    .line 87
    invoke-static {v3, v1}, Lcom/google/protobuf/CodedOutputStream;->computeBoolSize(IZ)I

    .line 88
    .line 89
    .line 90
    move-result v1

    .line 91
    add-int/2addr v0, v1

    .line 92
    :cond_6
    const/4 v1, 0x0

    .line 93
    :goto_1
    iget-object v3, p0, Lcom/wufan/friend/chat/protocol/PlayGameArgs;->localBattleGameIds_:Lcom/google/protobuf/Internal$LongList;

    .line 94
    .line 95
    invoke-interface {v3}, Ljava/util/List;->size()I

    .line 96
    .line 97
    .line 98
    move-result v3

    .line 99
    if-ge v2, v3, :cond_7

    .line 100
    .line 101
    iget-object v3, p0, Lcom/wufan/friend/chat/protocol/PlayGameArgs;->localBattleGameIds_:Lcom/google/protobuf/Internal$LongList;

    .line 102
    .line 103
    invoke-interface {v3, v2}, Lcom/google/protobuf/Internal$LongList;->getLong(I)J

    .line 104
    .line 105
    .line 106
    move-result-wide v3

    .line 107
    invoke-static {v3, v4}, Lcom/google/protobuf/CodedOutputStream;->computeInt64SizeNoTag(J)I

    .line 108
    .line 109
    .line 110
    move-result v3

    .line 111
    add-int/2addr v1, v3

    .line 112
    add-int/lit8 v2, v2, 0x1

    .line 113
    .line 114
    goto :goto_1

    .line 115
    :cond_7
    add-int/2addr v0, v1

    .line 116
    invoke-virtual {p0}, Lcom/wufan/friend/chat/protocol/PlayGameArgs;->getLocalBattleGameIdsList()Ljava/util/List;

    .line 117
    .line 118
    .line 119
    move-result-object v2

    .line 120
    invoke-interface {v2}, Ljava/util/List;->isEmpty()Z

    .line 121
    .line 122
    .line 123
    move-result v2

    .line 124
    if-nez v2, :cond_8

    .line 125
    .line 126
    add-int/lit8 v0, v0, 0x1

    .line 127
    .line 128
    invoke-static {v1}, Lcom/google/protobuf/CodedOutputStream;->computeInt32SizeNoTag(I)I

    .line 129
    .line 130
    .line 131
    move-result v2

    .line 132
    add-int/2addr v0, v2

    .line 133
    :cond_8
    iput v1, p0, Lcom/wufan/friend/chat/protocol/PlayGameArgs;->localBattleGameIdsMemoizedSerializedSize:I

    .line 134
    .line 135
    iget-object v1, p0, Lcom/google/protobuf/GeneratedMessageV3;->unknownFields:Lcom/google/protobuf/UnknownFieldSet;

    .line 136
    .line 137
    invoke-virtual {v1}, Lcom/google/protobuf/UnknownFieldSet;->getSerializedSize()I

    .line 138
    .line 139
    .line 140
    move-result v1

    .line 141
    add-int/2addr v0, v1

    .line 142
    iput v0, p0, Lcom/google/protobuf/AbstractMessage;->memoizedSize:I

    .line 143
    .line 144
    return v0
.end method

.method public getState()Lcom/wufan/friend/chat/protocol/PlayGameArgs$State;
    .locals 1

    .line 1
    iget v0, p0, Lcom/wufan/friend/chat/protocol/PlayGameArgs;->state_:I

    .line 2
    .line 3
    invoke-static {v0}, Lcom/wufan/friend/chat/protocol/PlayGameArgs$State;->valueOf(I)Lcom/wufan/friend/chat/protocol/PlayGameArgs$State;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    if-nez v0, :cond_0

    .line 8
    .line 9
    sget-object v0, Lcom/wufan/friend/chat/protocol/PlayGameArgs$State;->UNRECOGNIZED:Lcom/wufan/friend/chat/protocol/PlayGameArgs$State;

    .line 10
    .line 11
    :cond_0
    return-object v0
.end method

.method public getStateValue()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/wufan/friend/chat/protocol/PlayGameArgs;->state_:I

    .line 2
    .line 3
    return v0
.end method

.method public getType()Lcom/wufan/friend/chat/protocol/PlayType;
    .locals 1

    .line 1
    iget v0, p0, Lcom/wufan/friend/chat/protocol/PlayGameArgs;->type_:I

    .line 2
    .line 3
    invoke-static {v0}, Lcom/wufan/friend/chat/protocol/PlayType;->valueOf(I)Lcom/wufan/friend/chat/protocol/PlayType;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    if-nez v0, :cond_0

    .line 8
    .line 9
    sget-object v0, Lcom/wufan/friend/chat/protocol/PlayType;->UNRECOGNIZED:Lcom/wufan/friend/chat/protocol/PlayType;

    .line 10
    .line 11
    :cond_0
    return-object v0
.end method

.method public getTypeValue()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/wufan/friend/chat/protocol/PlayGameArgs;->type_:I

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

.method public getVersus()Z
    .locals 1

    .line 1
    iget-boolean v0, p0, Lcom/wufan/friend/chat/protocol/PlayGameArgs;->versus_:Z

    .line 2
    .line 3
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
    invoke-static {}, Lcom/wufan/friend/chat/protocol/PlayGameArgs;->getDescriptor()Lcom/google/protobuf/Descriptors$Descriptor;

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
    iget v0, p0, Lcom/wufan/friend/chat/protocol/PlayGameArgs;->state_:I

    .line 24
    .line 25
    add-int/2addr v1, v0

    .line 26
    mul-int/lit8 v1, v1, 0x25

    .line 27
    .line 28
    add-int/lit8 v1, v1, 0x2

    .line 29
    .line 30
    mul-int/lit8 v1, v1, 0x35

    .line 31
    .line 32
    invoke-virtual {p0}, Lcom/wufan/friend/chat/protocol/PlayGameArgs;->getGameId()J

    .line 33
    .line 34
    .line 35
    move-result-wide v2

    .line 36
    invoke-static {v2, v3}, Lcom/google/protobuf/Internal;->hashLong(J)I

    .line 37
    .line 38
    .line 39
    move-result v0

    .line 40
    add-int/2addr v1, v0

    .line 41
    mul-int/lit8 v1, v1, 0x25

    .line 42
    .line 43
    add-int/lit8 v1, v1, 0x3

    .line 44
    .line 45
    mul-int/lit8 v1, v1, 0x35

    .line 46
    .line 47
    iget v0, p0, Lcom/wufan/friend/chat/protocol/PlayGameArgs;->type_:I

    .line 48
    .line 49
    add-int/2addr v1, v0

    .line 50
    mul-int/lit8 v1, v1, 0x25

    .line 51
    .line 52
    add-int/lit8 v1, v1, 0x4

    .line 53
    .line 54
    mul-int/lit8 v1, v1, 0x35

    .line 55
    .line 56
    invoke-virtual {p0}, Lcom/wufan/friend/chat/protocol/PlayGameArgs;->getLobbyRoomId()J

    .line 57
    .line 58
    .line 59
    move-result-wide v2

    .line 60
    invoke-static {v2, v3}, Lcom/google/protobuf/Internal;->hashLong(J)I

    .line 61
    .line 62
    .line 63
    move-result v0

    .line 64
    add-int/2addr v1, v0

    .line 65
    mul-int/lit8 v1, v1, 0x25

    .line 66
    .line 67
    add-int/lit8 v1, v1, 0x5

    .line 68
    .line 69
    mul-int/lit8 v1, v1, 0x35

    .line 70
    .line 71
    invoke-virtual {p0}, Lcom/wufan/friend/chat/protocol/PlayGameArgs;->getAccountId()I

    .line 72
    .line 73
    .line 74
    move-result v0

    .line 75
    add-int/2addr v1, v0

    .line 76
    mul-int/lit8 v1, v1, 0x25

    .line 77
    .line 78
    add-int/lit8 v1, v1, 0x6

    .line 79
    .line 80
    mul-int/lit8 v1, v1, 0x35

    .line 81
    .line 82
    invoke-virtual {p0}, Lcom/wufan/friend/chat/protocol/PlayGameArgs;->getVersus()Z

    .line 83
    .line 84
    .line 85
    move-result v0

    .line 86
    invoke-static {v0}, Lcom/google/protobuf/Internal;->hashBoolean(Z)I

    .line 87
    .line 88
    .line 89
    move-result v0

    .line 90
    add-int/2addr v1, v0

    .line 91
    invoke-virtual {p0}, Lcom/wufan/friend/chat/protocol/PlayGameArgs;->getLocalBattleGameIdsCount()I

    .line 92
    .line 93
    .line 94
    move-result v0

    .line 95
    if-lez v0, :cond_1

    .line 96
    .line 97
    mul-int/lit8 v1, v1, 0x25

    .line 98
    .line 99
    add-int/lit8 v1, v1, 0x7

    .line 100
    .line 101
    mul-int/lit8 v1, v1, 0x35

    .line 102
    .line 103
    invoke-virtual {p0}, Lcom/wufan/friend/chat/protocol/PlayGameArgs;->getLocalBattleGameIdsList()Ljava/util/List;

    .line 104
    .line 105
    .line 106
    move-result-object v0

    .line 107
    invoke-interface {v0}, Ljava/util/List;->hashCode()I

    .line 108
    .line 109
    .line 110
    move-result v0

    .line 111
    add-int/2addr v1, v0

    .line 112
    :cond_1
    mul-int/lit8 v1, v1, 0x1d

    .line 113
    .line 114
    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageV3;->unknownFields:Lcom/google/protobuf/UnknownFieldSet;

    .line 115
    .line 116
    invoke-virtual {v0}, Lcom/google/protobuf/UnknownFieldSet;->hashCode()I

    .line 117
    .line 118
    .line 119
    move-result v0

    .line 120
    add-int/2addr v1, v0

    .line 121
    iput v1, p0, Lcom/google/protobuf/AbstractMessageLite;->memoizedHashCode:I

    .line 122
    .line 123
    return v1
.end method

.method protected internalGetFieldAccessorTable()Lcom/google/protobuf/GeneratedMessageV3$FieldAccessorTable;
    .locals 3

    .line 1
    sget-object v0, Lcom/wufan/friend/chat/protocol/a0;->x:Lcom/google/protobuf/GeneratedMessageV3$FieldAccessorTable;

    .line 2
    .line 3
    const-class v1, Lcom/wufan/friend/chat/protocol/PlayGameArgs;

    .line 4
    .line 5
    const-class v2, Lcom/wufan/friend/chat/protocol/PlayGameArgs$b;

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
    iget-byte v0, p0, Lcom/wufan/friend/chat/protocol/PlayGameArgs;->memoizedIsInitialized:B

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
    iput-byte v1, p0, Lcom/wufan/friend/chat/protocol/PlayGameArgs;->memoizedIsInitialized:B

    .line 12
    .line 13
    return v1
.end method

.method public bridge synthetic newBuilderForType()Lcom/google/protobuf/Message$Builder;
    .locals 1

    .line 1
    invoke-virtual {p0}, Lcom/wufan/friend/chat/protocol/PlayGameArgs;->newBuilderForType()Lcom/wufan/friend/chat/protocol/PlayGameArgs$b;

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
    invoke-virtual {p0, p1}, Lcom/wufan/friend/chat/protocol/PlayGameArgs;->newBuilderForType(Lcom/google/protobuf/GeneratedMessageV3$BuilderParent;)Lcom/wufan/friend/chat/protocol/PlayGameArgs$b;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic newBuilderForType()Lcom/google/protobuf/MessageLite$Builder;
    .locals 1

    .line 3
    invoke-virtual {p0}, Lcom/wufan/friend/chat/protocol/PlayGameArgs;->newBuilderForType()Lcom/wufan/friend/chat/protocol/PlayGameArgs$b;

    move-result-object v0

    return-object v0
.end method

.method public newBuilderForType()Lcom/wufan/friend/chat/protocol/PlayGameArgs$b;
    .locals 1

    .line 4
    invoke-static {}, Lcom/wufan/friend/chat/protocol/PlayGameArgs;->newBuilder()Lcom/wufan/friend/chat/protocol/PlayGameArgs$b;

    move-result-object v0

    return-object v0
.end method

.method protected newBuilderForType(Lcom/google/protobuf/GeneratedMessageV3$BuilderParent;)Lcom/wufan/friend/chat/protocol/PlayGameArgs$b;
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
    new-instance v0, Lcom/wufan/friend/chat/protocol/PlayGameArgs$b;

    const/4 v1, 0x0

    invoke-direct {v0, p1, v1}, Lcom/wufan/friend/chat/protocol/PlayGameArgs$b;-><init>(Lcom/google/protobuf/GeneratedMessageV3$BuilderParent;Lcom/wufan/friend/chat/protocol/PlayGameArgs$a;)V

    return-object v0
.end method

.method public bridge synthetic toBuilder()Lcom/google/protobuf/Message$Builder;
    .locals 1

    .line 1
    invoke-virtual {p0}, Lcom/wufan/friend/chat/protocol/PlayGameArgs;->toBuilder()Lcom/wufan/friend/chat/protocol/PlayGameArgs$b;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic toBuilder()Lcom/google/protobuf/MessageLite$Builder;
    .locals 1

    .line 2
    invoke-virtual {p0}, Lcom/wufan/friend/chat/protocol/PlayGameArgs;->toBuilder()Lcom/wufan/friend/chat/protocol/PlayGameArgs$b;

    move-result-object v0

    return-object v0
.end method

.method public toBuilder()Lcom/wufan/friend/chat/protocol/PlayGameArgs$b;
    .locals 2

    .line 3
    sget-object v0, Lcom/wufan/friend/chat/protocol/PlayGameArgs;->DEFAULT_INSTANCE:Lcom/wufan/friend/chat/protocol/PlayGameArgs;

    const/4 v1, 0x0

    if-ne p0, v0, :cond_0

    .line 4
    new-instance v0, Lcom/wufan/friend/chat/protocol/PlayGameArgs$b;

    invoke-direct {v0, v1}, Lcom/wufan/friend/chat/protocol/PlayGameArgs$b;-><init>(Lcom/wufan/friend/chat/protocol/PlayGameArgs$a;)V

    goto :goto_0

    :cond_0
    new-instance v0, Lcom/wufan/friend/chat/protocol/PlayGameArgs$b;

    invoke-direct {v0, v1}, Lcom/wufan/friend/chat/protocol/PlayGameArgs$b;-><init>(Lcom/wufan/friend/chat/protocol/PlayGameArgs$a;)V

    invoke-virtual {v0, p0}, Lcom/wufan/friend/chat/protocol/PlayGameArgs$b;->mergeFrom(Lcom/wufan/friend/chat/protocol/PlayGameArgs;)Lcom/wufan/friend/chat/protocol/PlayGameArgs$b;

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
    invoke-virtual {p0}, Lcom/wufan/friend/chat/protocol/PlayGameArgs;->getSerializedSize()I

    .line 2
    .line 3
    .line 4
    iget v0, p0, Lcom/wufan/friend/chat/protocol/PlayGameArgs;->state_:I

    .line 5
    .line 6
    sget-object v1, Lcom/wufan/friend/chat/protocol/PlayGameArgs$State;->START:Lcom/wufan/friend/chat/protocol/PlayGameArgs$State;

    .line 7
    .line 8
    invoke-virtual {v1}, Lcom/wufan/friend/chat/protocol/PlayGameArgs$State;->getNumber()I

    .line 9
    .line 10
    .line 11
    move-result v1

    .line 12
    if-eq v0, v1, :cond_0

    .line 13
    .line 14
    iget v0, p0, Lcom/wufan/friend/chat/protocol/PlayGameArgs;->state_:I

    .line 15
    .line 16
    const/4 v1, 0x1

    .line 17
    invoke-virtual {p1, v1, v0}, Lcom/google/protobuf/CodedOutputStream;->writeEnum(II)V

    .line 18
    .line 19
    .line 20
    :cond_0
    iget-wide v0, p0, Lcom/wufan/friend/chat/protocol/PlayGameArgs;->gameId_:J

    .line 21
    .line 22
    const-wide/16 v2, 0x0

    .line 23
    .line 24
    cmp-long v4, v0, v2

    .line 25
    .line 26
    if-eqz v4, :cond_1

    .line 27
    .line 28
    const/4 v4, 0x2

    .line 29
    invoke-virtual {p1, v4, v0, v1}, Lcom/google/protobuf/CodedOutputStream;->writeInt64(IJ)V

    .line 30
    .line 31
    .line 32
    :cond_1
    iget v0, p0, Lcom/wufan/friend/chat/protocol/PlayGameArgs;->type_:I

    .line 33
    .line 34
    sget-object v1, Lcom/wufan/friend/chat/protocol/PlayType;->STAND:Lcom/wufan/friend/chat/protocol/PlayType;

    .line 35
    .line 36
    invoke-virtual {v1}, Lcom/wufan/friend/chat/protocol/PlayType;->getNumber()I

    .line 37
    .line 38
    .line 39
    move-result v1

    .line 40
    if-eq v0, v1, :cond_2

    .line 41
    .line 42
    const/4 v0, 0x3

    .line 43
    iget v1, p0, Lcom/wufan/friend/chat/protocol/PlayGameArgs;->type_:I

    .line 44
    .line 45
    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/CodedOutputStream;->writeEnum(II)V

    .line 46
    .line 47
    .line 48
    :cond_2
    iget-wide v0, p0, Lcom/wufan/friend/chat/protocol/PlayGameArgs;->lobbyRoomId_:J

    .line 49
    .line 50
    cmp-long v4, v0, v2

    .line 51
    .line 52
    if-eqz v4, :cond_3

    .line 53
    .line 54
    const/4 v2, 0x4

    .line 55
    invoke-virtual {p1, v2, v0, v1}, Lcom/google/protobuf/CodedOutputStream;->writeInt64(IJ)V

    .line 56
    .line 57
    .line 58
    :cond_3
    iget v0, p0, Lcom/wufan/friend/chat/protocol/PlayGameArgs;->accountId_:I

    .line 59
    .line 60
    if-eqz v0, :cond_4

    .line 61
    .line 62
    const/4 v1, 0x5

    .line 63
    invoke-virtual {p1, v1, v0}, Lcom/google/protobuf/CodedOutputStream;->writeInt32(II)V

    .line 64
    .line 65
    .line 66
    :cond_4
    iget-boolean v0, p0, Lcom/wufan/friend/chat/protocol/PlayGameArgs;->versus_:Z

    .line 67
    .line 68
    if-eqz v0, :cond_5

    .line 69
    .line 70
    const/4 v1, 0x6

    .line 71
    invoke-virtual {p1, v1, v0}, Lcom/google/protobuf/CodedOutputStream;->writeBool(IZ)V

    .line 72
    .line 73
    .line 74
    :cond_5
    invoke-virtual {p0}, Lcom/wufan/friend/chat/protocol/PlayGameArgs;->getLocalBattleGameIdsList()Ljava/util/List;

    .line 75
    .line 76
    .line 77
    move-result-object v0

    .line 78
    invoke-interface {v0}, Ljava/util/List;->size()I

    .line 79
    .line 80
    .line 81
    move-result v0

    .line 82
    if-lez v0, :cond_6

    .line 83
    .line 84
    const/16 v0, 0x3a

    .line 85
    .line 86
    invoke-virtual {p1, v0}, Lcom/google/protobuf/CodedOutputStream;->writeUInt32NoTag(I)V

    .line 87
    .line 88
    .line 89
    iget v0, p0, Lcom/wufan/friend/chat/protocol/PlayGameArgs;->localBattleGameIdsMemoizedSerializedSize:I

    .line 90
    .line 91
    invoke-virtual {p1, v0}, Lcom/google/protobuf/CodedOutputStream;->writeUInt32NoTag(I)V

    .line 92
    .line 93
    .line 94
    :cond_6
    const/4 v0, 0x0

    .line 95
    :goto_0
    iget-object v1, p0, Lcom/wufan/friend/chat/protocol/PlayGameArgs;->localBattleGameIds_:Lcom/google/protobuf/Internal$LongList;

    .line 96
    .line 97
    invoke-interface {v1}, Ljava/util/List;->size()I

    .line 98
    .line 99
    .line 100
    move-result v1

    .line 101
    if-ge v0, v1, :cond_7

    .line 102
    .line 103
    iget-object v1, p0, Lcom/wufan/friend/chat/protocol/PlayGameArgs;->localBattleGameIds_:Lcom/google/protobuf/Internal$LongList;

    .line 104
    .line 105
    invoke-interface {v1, v0}, Lcom/google/protobuf/Internal$LongList;->getLong(I)J

    .line 106
    .line 107
    .line 108
    move-result-wide v1

    .line 109
    invoke-virtual {p1, v1, v2}, Lcom/google/protobuf/CodedOutputStream;->writeInt64NoTag(J)V

    .line 110
    .line 111
    .line 112
    add-int/lit8 v0, v0, 0x1

    .line 113
    .line 114
    goto :goto_0

    .line 115
    :cond_7
    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageV3;->unknownFields:Lcom/google/protobuf/UnknownFieldSet;

    .line 116
    .line 117
    invoke-virtual {v0, p1}, Lcom/google/protobuf/UnknownFieldSet;->writeTo(Lcom/google/protobuf/CodedOutputStream;)V

    .line 118
    .line 119
    .line 120
    return-void
.end method
