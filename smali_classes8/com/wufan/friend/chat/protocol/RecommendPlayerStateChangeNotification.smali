.class public final Lcom/wufan/friend/chat/protocol/RecommendPlayerStateChangeNotification;
.super Lcom/google/protobuf/GeneratedMessageV3;
.source "SourceFile"

# interfaces
.implements Lcom/wufan/friend/chat/protocol/k0;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/wufan/friend/chat/protocol/RecommendPlayerStateChangeNotification$b;
    }
.end annotation


# static fields
.field private static final DEFAULT_INSTANCE:Lcom/wufan/friend/chat/protocol/RecommendPlayerStateChangeNotification;

.field public static final FRIEND_FIELD_NUMBER:I = 0x1

.field private static final PARSER:Lcom/google/protobuf/Parser;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/protobuf/Parser<",
            "Lcom/wufan/friend/chat/protocol/RecommendPlayerStateChangeNotification;",
            ">;"
        }
    .end annotation
.end field

.field public static final PLAYSTATE_FIELD_NUMBER:I = 0x3

.field public static final STATE_FIELD_NUMBER:I = 0x2

.field private static final serialVersionUID:J


# instance fields
.field private friend_:Lcom/wufan/friend/chat/protocol/AccountInfo;

.field private memoizedIsInitialized:B

.field private playState_:Lcom/wufan/friend/chat/protocol/PlayState;

.field private state_:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 1
    new-instance v0, Lcom/wufan/friend/chat/protocol/RecommendPlayerStateChangeNotification;

    .line 2
    .line 3
    invoke-direct {v0}, Lcom/wufan/friend/chat/protocol/RecommendPlayerStateChangeNotification;-><init>()V

    .line 4
    .line 5
    .line 6
    sput-object v0, Lcom/wufan/friend/chat/protocol/RecommendPlayerStateChangeNotification;->DEFAULT_INSTANCE:Lcom/wufan/friend/chat/protocol/RecommendPlayerStateChangeNotification;

    .line 7
    .line 8
    new-instance v0, Lcom/wufan/friend/chat/protocol/RecommendPlayerStateChangeNotification$a;

    .line 9
    .line 10
    invoke-direct {v0}, Lcom/wufan/friend/chat/protocol/RecommendPlayerStateChangeNotification$a;-><init>()V

    .line 11
    .line 12
    .line 13
    sput-object v0, Lcom/wufan/friend/chat/protocol/RecommendPlayerStateChangeNotification;->PARSER:Lcom/google/protobuf/Parser;

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
    iput-byte v0, p0, Lcom/wufan/friend/chat/protocol/RecommendPlayerStateChangeNotification;->memoizedIsInitialized:B

    const/4 v0, 0x0

    .line 7
    iput v0, p0, Lcom/wufan/friend/chat/protocol/RecommendPlayerStateChangeNotification;->state_:I

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

    .line 8
    invoke-direct {p0}, Lcom/wufan/friend/chat/protocol/RecommendPlayerStateChangeNotification;-><init>()V

    .line 9
    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 10
    invoke-static {}, Lcom/google/protobuf/UnknownFieldSet;->newBuilder()Lcom/google/protobuf/UnknownFieldSet$Builder;

    move-result-object v0

    const/4 v1, 0x0

    :cond_0
    :goto_0
    if-nez v1, :cond_7

    .line 11
    :try_start_0
    invoke-virtual {p1}, Lcom/google/protobuf/CodedInputStream;->readTag()I

    move-result v2

    const/4 v3, 0x1

    if-eqz v2, :cond_6

    const/16 v4, 0xa

    const/4 v5, 0x0

    if-eq v2, v4, :cond_4

    const/16 v4, 0x10

    if-eq v2, v4, :cond_3

    const/16 v4, 0x1a

    if-eq v2, v4, :cond_1

    .line 12
    invoke-virtual {p0, p1, v0, p2, v2}, Lcom/google/protobuf/GeneratedMessageV3;->parseUnknownField(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/UnknownFieldSet$Builder;Lcom/google/protobuf/ExtensionRegistryLite;I)Z

    move-result v2

    if-nez v2, :cond_0

    goto :goto_1

    .line 13
    :cond_1
    iget-object v2, p0, Lcom/wufan/friend/chat/protocol/RecommendPlayerStateChangeNotification;->playState_:Lcom/wufan/friend/chat/protocol/PlayState;

    if-eqz v2, :cond_2

    .line 14
    invoke-virtual {v2}, Lcom/wufan/friend/chat/protocol/PlayState;->toBuilder()Lcom/wufan/friend/chat/protocol/PlayState$b;

    move-result-object v5

    .line 15
    :cond_2
    invoke-static {}, Lcom/wufan/friend/chat/protocol/PlayState;->parser()Lcom/google/protobuf/Parser;

    move-result-object v2

    invoke-virtual {p1, v2, p2}, Lcom/google/protobuf/CodedInputStream;->readMessage(Lcom/google/protobuf/Parser;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/MessageLite;

    move-result-object v2

    check-cast v2, Lcom/wufan/friend/chat/protocol/PlayState;

    iput-object v2, p0, Lcom/wufan/friend/chat/protocol/RecommendPlayerStateChangeNotification;->playState_:Lcom/wufan/friend/chat/protocol/PlayState;

    if-eqz v5, :cond_0

    .line 16
    invoke-virtual {v5, v2}, Lcom/wufan/friend/chat/protocol/PlayState$b;->mergeFrom(Lcom/wufan/friend/chat/protocol/PlayState;)Lcom/wufan/friend/chat/protocol/PlayState$b;

    .line 17
    invoke-virtual {v5}, Lcom/wufan/friend/chat/protocol/PlayState$b;->buildPartial()Lcom/wufan/friend/chat/protocol/PlayState;

    move-result-object v2

    iput-object v2, p0, Lcom/wufan/friend/chat/protocol/RecommendPlayerStateChangeNotification;->playState_:Lcom/wufan/friend/chat/protocol/PlayState;

    goto :goto_0

    .line 18
    :cond_3
    invoke-virtual {p1}, Lcom/google/protobuf/CodedInputStream;->readEnum()I

    move-result v2

    .line 19
    iput v2, p0, Lcom/wufan/friend/chat/protocol/RecommendPlayerStateChangeNotification;->state_:I

    goto :goto_0

    .line 20
    :cond_4
    iget-object v2, p0, Lcom/wufan/friend/chat/protocol/RecommendPlayerStateChangeNotification;->friend_:Lcom/wufan/friend/chat/protocol/AccountInfo;

    if-eqz v2, :cond_5

    .line 21
    invoke-virtual {v2}, Lcom/wufan/friend/chat/protocol/AccountInfo;->toBuilder()Lcom/wufan/friend/chat/protocol/AccountInfo$b;

    move-result-object v5

    .line 22
    :cond_5
    invoke-static {}, Lcom/wufan/friend/chat/protocol/AccountInfo;->parser()Lcom/google/protobuf/Parser;

    move-result-object v2

    invoke-virtual {p1, v2, p2}, Lcom/google/protobuf/CodedInputStream;->readMessage(Lcom/google/protobuf/Parser;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/MessageLite;

    move-result-object v2

    check-cast v2, Lcom/wufan/friend/chat/protocol/AccountInfo;

    iput-object v2, p0, Lcom/wufan/friend/chat/protocol/RecommendPlayerStateChangeNotification;->friend_:Lcom/wufan/friend/chat/protocol/AccountInfo;

    if-eqz v5, :cond_0

    .line 23
    invoke-virtual {v5, v2}, Lcom/wufan/friend/chat/protocol/AccountInfo$b;->mergeFrom(Lcom/wufan/friend/chat/protocol/AccountInfo;)Lcom/wufan/friend/chat/protocol/AccountInfo$b;

    .line 24
    invoke-virtual {v5}, Lcom/wufan/friend/chat/protocol/AccountInfo$b;->buildPartial()Lcom/wufan/friend/chat/protocol/AccountInfo;

    move-result-object v2

    iput-object v2, p0, Lcom/wufan/friend/chat/protocol/RecommendPlayerStateChangeNotification;->friend_:Lcom/wufan/friend/chat/protocol/AccountInfo;
    :try_end_0
    .catch Lcom/google/protobuf/InvalidProtocolBufferException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :cond_6
    :goto_1
    const/4 v1, 0x1

    goto :goto_0

    :catchall_0
    move-exception p1

    goto :goto_2

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
    :goto_2
    invoke-virtual {v0}, Lcom/google/protobuf/UnknownFieldSet$Builder;->build()Lcom/google/protobuf/UnknownFieldSet;

    move-result-object p2

    iput-object p2, p0, Lcom/google/protobuf/GeneratedMessageV3;->unknownFields:Lcom/google/protobuf/UnknownFieldSet;

    .line 29
    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageV3;->makeExtensionsImmutable()V

    .line 30
    throw p1

    .line 31
    :cond_7
    invoke-virtual {v0}, Lcom/google/protobuf/UnknownFieldSet$Builder;->build()Lcom/google/protobuf/UnknownFieldSet;

    move-result-object p1

    iput-object p1, p0, Lcom/google/protobuf/GeneratedMessageV3;->unknownFields:Lcom/google/protobuf/UnknownFieldSet;

    .line 32
    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageV3;->makeExtensionsImmutable()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;Lcom/wufan/friend/chat/protocol/RecommendPlayerStateChangeNotification$a;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .line 1
    invoke-direct {p0, p1, p2}, Lcom/wufan/friend/chat/protocol/RecommendPlayerStateChangeNotification;-><init>(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)V

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
    iput-byte p1, p0, Lcom/wufan/friend/chat/protocol/RecommendPlayerStateChangeNotification;->memoizedIsInitialized:B

    return-void
.end method

.method synthetic constructor <init>(Lcom/google/protobuf/GeneratedMessageV3$Builder;Lcom/wufan/friend/chat/protocol/RecommendPlayerStateChangeNotification$a;)V
    .locals 0

    .line 2
    invoke-direct {p0, p1}, Lcom/wufan/friend/chat/protocol/RecommendPlayerStateChangeNotification;-><init>(Lcom/google/protobuf/GeneratedMessageV3$Builder;)V

    return-void
.end method

.method static synthetic access$200()Z
    .locals 1

    .line 1
    sget-boolean v0, Lcom/google/protobuf/GeneratedMessageV3;->alwaysUseFieldBuilders:Z

    .line 2
    .line 3
    return v0
.end method

.method static synthetic access$402(Lcom/wufan/friend/chat/protocol/RecommendPlayerStateChangeNotification;Lcom/wufan/friend/chat/protocol/AccountInfo;)Lcom/wufan/friend/chat/protocol/AccountInfo;
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/wufan/friend/chat/protocol/RecommendPlayerStateChangeNotification;->friend_:Lcom/wufan/friend/chat/protocol/AccountInfo;

    .line 2
    .line 3
    return-object p1
.end method

.method static synthetic access$500(Lcom/wufan/friend/chat/protocol/RecommendPlayerStateChangeNotification;)I
    .locals 0

    .line 1
    iget p0, p0, Lcom/wufan/friend/chat/protocol/RecommendPlayerStateChangeNotification;->state_:I

    .line 2
    .line 3
    return p0
.end method

.method static synthetic access$502(Lcom/wufan/friend/chat/protocol/RecommendPlayerStateChangeNotification;I)I
    .locals 0

    .line 1
    iput p1, p0, Lcom/wufan/friend/chat/protocol/RecommendPlayerStateChangeNotification;->state_:I

    .line 2
    .line 3
    return p1
.end method

.method static synthetic access$602(Lcom/wufan/friend/chat/protocol/RecommendPlayerStateChangeNotification;Lcom/wufan/friend/chat/protocol/PlayState;)Lcom/wufan/friend/chat/protocol/PlayState;
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/wufan/friend/chat/protocol/RecommendPlayerStateChangeNotification;->playState_:Lcom/wufan/friend/chat/protocol/PlayState;

    .line 2
    .line 3
    return-object p1
.end method

.method static synthetic access$700(Lcom/wufan/friend/chat/protocol/RecommendPlayerStateChangeNotification;)Lcom/google/protobuf/UnknownFieldSet;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/google/protobuf/GeneratedMessageV3;->unknownFields:Lcom/google/protobuf/UnknownFieldSet;

    .line 2
    .line 3
    return-object p0
.end method

.method static synthetic access$800()Lcom/google/protobuf/Parser;
    .locals 1

    .line 1
    sget-object v0, Lcom/wufan/friend/chat/protocol/RecommendPlayerStateChangeNotification;->PARSER:Lcom/google/protobuf/Parser;

    .line 2
    .line 3
    return-object v0
.end method

.method public static getDefaultInstance()Lcom/wufan/friend/chat/protocol/RecommendPlayerStateChangeNotification;
    .locals 1

    .line 1
    sget-object v0, Lcom/wufan/friend/chat/protocol/RecommendPlayerStateChangeNotification;->DEFAULT_INSTANCE:Lcom/wufan/friend/chat/protocol/RecommendPlayerStateChangeNotification;

    .line 2
    .line 3
    return-object v0
.end method

.method public static final getDescriptor()Lcom/google/protobuf/Descriptors$Descriptor;
    .locals 1

    .line 1
    sget-object v0, Lcom/wufan/friend/chat/protocol/a0;->y0:Lcom/google/protobuf/Descriptors$Descriptor;

    .line 2
    .line 3
    return-object v0
.end method

.method public static newBuilder()Lcom/wufan/friend/chat/protocol/RecommendPlayerStateChangeNotification$b;
    .locals 1

    .line 1
    sget-object v0, Lcom/wufan/friend/chat/protocol/RecommendPlayerStateChangeNotification;->DEFAULT_INSTANCE:Lcom/wufan/friend/chat/protocol/RecommendPlayerStateChangeNotification;

    invoke-virtual {v0}, Lcom/wufan/friend/chat/protocol/RecommendPlayerStateChangeNotification;->toBuilder()Lcom/wufan/friend/chat/protocol/RecommendPlayerStateChangeNotification$b;

    move-result-object v0

    return-object v0
.end method

.method public static newBuilder(Lcom/wufan/friend/chat/protocol/RecommendPlayerStateChangeNotification;)Lcom/wufan/friend/chat/protocol/RecommendPlayerStateChangeNotification$b;
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
    sget-object v0, Lcom/wufan/friend/chat/protocol/RecommendPlayerStateChangeNotification;->DEFAULT_INSTANCE:Lcom/wufan/friend/chat/protocol/RecommendPlayerStateChangeNotification;

    invoke-virtual {v0}, Lcom/wufan/friend/chat/protocol/RecommendPlayerStateChangeNotification;->toBuilder()Lcom/wufan/friend/chat/protocol/RecommendPlayerStateChangeNotification$b;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/wufan/friend/chat/protocol/RecommendPlayerStateChangeNotification$b;->mergeFrom(Lcom/wufan/friend/chat/protocol/RecommendPlayerStateChangeNotification;)Lcom/wufan/friend/chat/protocol/RecommendPlayerStateChangeNotification$b;

    move-result-object p0

    return-object p0
.end method

.method public static parseDelimitedFrom(Ljava/io/InputStream;)Lcom/wufan/friend/chat/protocol/RecommendPlayerStateChangeNotification;
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
    sget-object v0, Lcom/wufan/friend/chat/protocol/RecommendPlayerStateChangeNotification;->PARSER:Lcom/google/protobuf/Parser;

    .line 2
    invoke-static {v0, p0}, Lcom/google/protobuf/GeneratedMessageV3;->parseDelimitedWithIOException(Lcom/google/protobuf/Parser;Ljava/io/InputStream;)Lcom/google/protobuf/Message;

    move-result-object p0

    check-cast p0, Lcom/wufan/friend/chat/protocol/RecommendPlayerStateChangeNotification;

    return-object p0
.end method

.method public static parseDelimitedFrom(Ljava/io/InputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/wufan/friend/chat/protocol/RecommendPlayerStateChangeNotification;
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
    sget-object v0, Lcom/wufan/friend/chat/protocol/RecommendPlayerStateChangeNotification;->PARSER:Lcom/google/protobuf/Parser;

    .line 4
    invoke-static {v0, p0, p1}, Lcom/google/protobuf/GeneratedMessageV3;->parseDelimitedWithIOException(Lcom/google/protobuf/Parser;Ljava/io/InputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/Message;

    move-result-object p0

    check-cast p0, Lcom/wufan/friend/chat/protocol/RecommendPlayerStateChangeNotification;

    return-object p0
.end method

.method public static parseFrom(Lcom/google/protobuf/ByteString;)Lcom/wufan/friend/chat/protocol/RecommendPlayerStateChangeNotification;
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
    sget-object v0, Lcom/wufan/friend/chat/protocol/RecommendPlayerStateChangeNotification;->PARSER:Lcom/google/protobuf/Parser;

    invoke-interface {v0, p0}, Lcom/google/protobuf/Parser;->parseFrom(Lcom/google/protobuf/ByteString;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/wufan/friend/chat/protocol/RecommendPlayerStateChangeNotification;

    return-object p0
.end method

.method public static parseFrom(Lcom/google/protobuf/ByteString;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/wufan/friend/chat/protocol/RecommendPlayerStateChangeNotification;
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
    sget-object v0, Lcom/wufan/friend/chat/protocol/RecommendPlayerStateChangeNotification;->PARSER:Lcom/google/protobuf/Parser;

    invoke-interface {v0, p0, p1}, Lcom/google/protobuf/Parser;->parseFrom(Lcom/google/protobuf/ByteString;Lcom/google/protobuf/ExtensionRegistryLite;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/wufan/friend/chat/protocol/RecommendPlayerStateChangeNotification;

    return-object p0
.end method

.method public static parseFrom(Lcom/google/protobuf/CodedInputStream;)Lcom/wufan/friend/chat/protocol/RecommendPlayerStateChangeNotification;
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
    sget-object v0, Lcom/wufan/friend/chat/protocol/RecommendPlayerStateChangeNotification;->PARSER:Lcom/google/protobuf/Parser;

    .line 12
    invoke-static {v0, p0}, Lcom/google/protobuf/GeneratedMessageV3;->parseWithIOException(Lcom/google/protobuf/Parser;Lcom/google/protobuf/CodedInputStream;)Lcom/google/protobuf/Message;

    move-result-object p0

    check-cast p0, Lcom/wufan/friend/chat/protocol/RecommendPlayerStateChangeNotification;

    return-object p0
.end method

.method public static parseFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/wufan/friend/chat/protocol/RecommendPlayerStateChangeNotification;
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
    sget-object v0, Lcom/wufan/friend/chat/protocol/RecommendPlayerStateChangeNotification;->PARSER:Lcom/google/protobuf/Parser;

    .line 14
    invoke-static {v0, p0, p1}, Lcom/google/protobuf/GeneratedMessageV3;->parseWithIOException(Lcom/google/protobuf/Parser;Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/Message;

    move-result-object p0

    check-cast p0, Lcom/wufan/friend/chat/protocol/RecommendPlayerStateChangeNotification;

    return-object p0
.end method

.method public static parseFrom(Ljava/io/InputStream;)Lcom/wufan/friend/chat/protocol/RecommendPlayerStateChangeNotification;
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
    sget-object v0, Lcom/wufan/friend/chat/protocol/RecommendPlayerStateChangeNotification;->PARSER:Lcom/google/protobuf/Parser;

    .line 8
    invoke-static {v0, p0}, Lcom/google/protobuf/GeneratedMessageV3;->parseWithIOException(Lcom/google/protobuf/Parser;Ljava/io/InputStream;)Lcom/google/protobuf/Message;

    move-result-object p0

    check-cast p0, Lcom/wufan/friend/chat/protocol/RecommendPlayerStateChangeNotification;

    return-object p0
.end method

.method public static parseFrom(Ljava/io/InputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/wufan/friend/chat/protocol/RecommendPlayerStateChangeNotification;
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
    sget-object v0, Lcom/wufan/friend/chat/protocol/RecommendPlayerStateChangeNotification;->PARSER:Lcom/google/protobuf/Parser;

    .line 10
    invoke-static {v0, p0, p1}, Lcom/google/protobuf/GeneratedMessageV3;->parseWithIOException(Lcom/google/protobuf/Parser;Ljava/io/InputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/Message;

    move-result-object p0

    check-cast p0, Lcom/wufan/friend/chat/protocol/RecommendPlayerStateChangeNotification;

    return-object p0
.end method

.method public static parseFrom(Ljava/nio/ByteBuffer;)Lcom/wufan/friend/chat/protocol/RecommendPlayerStateChangeNotification;
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
    sget-object v0, Lcom/wufan/friend/chat/protocol/RecommendPlayerStateChangeNotification;->PARSER:Lcom/google/protobuf/Parser;

    invoke-interface {v0, p0}, Lcom/google/protobuf/Parser;->parseFrom(Ljava/nio/ByteBuffer;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/wufan/friend/chat/protocol/RecommendPlayerStateChangeNotification;

    return-object p0
.end method

.method public static parseFrom(Ljava/nio/ByteBuffer;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/wufan/friend/chat/protocol/RecommendPlayerStateChangeNotification;
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
    sget-object v0, Lcom/wufan/friend/chat/protocol/RecommendPlayerStateChangeNotification;->PARSER:Lcom/google/protobuf/Parser;

    invoke-interface {v0, p0, p1}, Lcom/google/protobuf/Parser;->parseFrom(Ljava/nio/ByteBuffer;Lcom/google/protobuf/ExtensionRegistryLite;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/wufan/friend/chat/protocol/RecommendPlayerStateChangeNotification;

    return-object p0
.end method

.method public static parseFrom([B)Lcom/wufan/friend/chat/protocol/RecommendPlayerStateChangeNotification;
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
    sget-object v0, Lcom/wufan/friend/chat/protocol/RecommendPlayerStateChangeNotification;->PARSER:Lcom/google/protobuf/Parser;

    invoke-interface {v0, p0}, Lcom/google/protobuf/Parser;->parseFrom([B)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/wufan/friend/chat/protocol/RecommendPlayerStateChangeNotification;

    return-object p0
.end method

.method public static parseFrom([BLcom/google/protobuf/ExtensionRegistryLite;)Lcom/wufan/friend/chat/protocol/RecommendPlayerStateChangeNotification;
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
    sget-object v0, Lcom/wufan/friend/chat/protocol/RecommendPlayerStateChangeNotification;->PARSER:Lcom/google/protobuf/Parser;

    invoke-interface {v0, p0, p1}, Lcom/google/protobuf/Parser;->parseFrom([BLcom/google/protobuf/ExtensionRegistryLite;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/wufan/friend/chat/protocol/RecommendPlayerStateChangeNotification;

    return-object p0
.end method

.method public static parser()Lcom/google/protobuf/Parser;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/google/protobuf/Parser<",
            "Lcom/wufan/friend/chat/protocol/RecommendPlayerStateChangeNotification;",
            ">;"
        }
    .end annotation

    .line 1
    sget-object v0, Lcom/wufan/friend/chat/protocol/RecommendPlayerStateChangeNotification;->PARSER:Lcom/google/protobuf/Parser;

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
    instance-of v1, p1, Lcom/wufan/friend/chat/protocol/RecommendPlayerStateChangeNotification;

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
    check-cast p1, Lcom/wufan/friend/chat/protocol/RecommendPlayerStateChangeNotification;

    .line 15
    .line 16
    invoke-virtual {p0}, Lcom/wufan/friend/chat/protocol/RecommendPlayerStateChangeNotification;->hasFriend()Z

    .line 17
    .line 18
    .line 19
    move-result v1

    .line 20
    invoke-virtual {p1}, Lcom/wufan/friend/chat/protocol/RecommendPlayerStateChangeNotification;->hasFriend()Z

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
    invoke-virtual {p0}, Lcom/wufan/friend/chat/protocol/RecommendPlayerStateChangeNotification;->hasFriend()Z

    .line 29
    .line 30
    .line 31
    move-result v1

    .line 32
    if-eqz v1, :cond_3

    .line 33
    .line 34
    invoke-virtual {p0}, Lcom/wufan/friend/chat/protocol/RecommendPlayerStateChangeNotification;->getFriend()Lcom/wufan/friend/chat/protocol/AccountInfo;

    .line 35
    .line 36
    .line 37
    move-result-object v1

    .line 38
    invoke-virtual {p1}, Lcom/wufan/friend/chat/protocol/RecommendPlayerStateChangeNotification;->getFriend()Lcom/wufan/friend/chat/protocol/AccountInfo;

    .line 39
    .line 40
    .line 41
    move-result-object v2

    .line 42
    invoke-virtual {v1, v2}, Lcom/wufan/friend/chat/protocol/AccountInfo;->equals(Ljava/lang/Object;)Z

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
    iget v1, p0, Lcom/wufan/friend/chat/protocol/RecommendPlayerStateChangeNotification;->state_:I

    .line 50
    .line 51
    iget v2, p1, Lcom/wufan/friend/chat/protocol/RecommendPlayerStateChangeNotification;->state_:I

    .line 52
    .line 53
    if-eq v1, v2, :cond_4

    .line 54
    .line 55
    return v3

    .line 56
    :cond_4
    invoke-virtual {p0}, Lcom/wufan/friend/chat/protocol/RecommendPlayerStateChangeNotification;->hasPlayState()Z

    .line 57
    .line 58
    .line 59
    move-result v1

    .line 60
    invoke-virtual {p1}, Lcom/wufan/friend/chat/protocol/RecommendPlayerStateChangeNotification;->hasPlayState()Z

    .line 61
    .line 62
    .line 63
    move-result v2

    .line 64
    if-eq v1, v2, :cond_5

    .line 65
    .line 66
    return v3

    .line 67
    :cond_5
    invoke-virtual {p0}, Lcom/wufan/friend/chat/protocol/RecommendPlayerStateChangeNotification;->hasPlayState()Z

    .line 68
    .line 69
    .line 70
    move-result v1

    .line 71
    if-eqz v1, :cond_6

    .line 72
    .line 73
    invoke-virtual {p0}, Lcom/wufan/friend/chat/protocol/RecommendPlayerStateChangeNotification;->getPlayState()Lcom/wufan/friend/chat/protocol/PlayState;

    .line 74
    .line 75
    .line 76
    move-result-object v1

    .line 77
    invoke-virtual {p1}, Lcom/wufan/friend/chat/protocol/RecommendPlayerStateChangeNotification;->getPlayState()Lcom/wufan/friend/chat/protocol/PlayState;

    .line 78
    .line 79
    .line 80
    move-result-object v2

    .line 81
    invoke-virtual {v1, v2}, Lcom/wufan/friend/chat/protocol/PlayState;->equals(Ljava/lang/Object;)Z

    .line 82
    .line 83
    .line 84
    move-result v1

    .line 85
    if-nez v1, :cond_6

    .line 86
    .line 87
    return v3

    .line 88
    :cond_6
    iget-object v1, p0, Lcom/google/protobuf/GeneratedMessageV3;->unknownFields:Lcom/google/protobuf/UnknownFieldSet;

    .line 89
    .line 90
    iget-object p1, p1, Lcom/google/protobuf/GeneratedMessageV3;->unknownFields:Lcom/google/protobuf/UnknownFieldSet;

    .line 91
    .line 92
    invoke-virtual {v1, p1}, Lcom/google/protobuf/UnknownFieldSet;->equals(Ljava/lang/Object;)Z

    .line 93
    .line 94
    .line 95
    move-result p1

    .line 96
    if-nez p1, :cond_7

    .line 97
    .line 98
    return v3

    .line 99
    :cond_7
    return v0
.end method

.method public bridge synthetic getDefaultInstanceForType()Lcom/google/protobuf/Message;
    .locals 1

    .line 1
    invoke-virtual {p0}, Lcom/wufan/friend/chat/protocol/RecommendPlayerStateChangeNotification;->getDefaultInstanceForType()Lcom/wufan/friend/chat/protocol/RecommendPlayerStateChangeNotification;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic getDefaultInstanceForType()Lcom/google/protobuf/MessageLite;
    .locals 1

    .line 2
    invoke-virtual {p0}, Lcom/wufan/friend/chat/protocol/RecommendPlayerStateChangeNotification;->getDefaultInstanceForType()Lcom/wufan/friend/chat/protocol/RecommendPlayerStateChangeNotification;

    move-result-object v0

    return-object v0
.end method

.method public getDefaultInstanceForType()Lcom/wufan/friend/chat/protocol/RecommendPlayerStateChangeNotification;
    .locals 1

    .line 3
    sget-object v0, Lcom/wufan/friend/chat/protocol/RecommendPlayerStateChangeNotification;->DEFAULT_INSTANCE:Lcom/wufan/friend/chat/protocol/RecommendPlayerStateChangeNotification;

    return-object v0
.end method

.method public getFriend()Lcom/wufan/friend/chat/protocol/AccountInfo;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/wufan/friend/chat/protocol/RecommendPlayerStateChangeNotification;->friend_:Lcom/wufan/friend/chat/protocol/AccountInfo;

    .line 2
    .line 3
    if-nez v0, :cond_0

    .line 4
    .line 5
    invoke-static {}, Lcom/wufan/friend/chat/protocol/AccountInfo;->getDefaultInstance()Lcom/wufan/friend/chat/protocol/AccountInfo;

    .line 6
    .line 7
    .line 8
    move-result-object v0

    .line 9
    :cond_0
    return-object v0
.end method

.method public getFriendOrBuilder()Lcom/wufan/friend/chat/protocol/a;
    .locals 1

    .line 1
    invoke-virtual {p0}, Lcom/wufan/friend/chat/protocol/RecommendPlayerStateChangeNotification;->getFriend()Lcom/wufan/friend/chat/protocol/AccountInfo;

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
            "Lcom/wufan/friend/chat/protocol/RecommendPlayerStateChangeNotification;",
            ">;"
        }
    .end annotation

    .line 1
    sget-object v0, Lcom/wufan/friend/chat/protocol/RecommendPlayerStateChangeNotification;->PARSER:Lcom/google/protobuf/Parser;

    .line 2
    .line 3
    return-object v0
.end method

.method public getPlayState()Lcom/wufan/friend/chat/protocol/PlayState;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/wufan/friend/chat/protocol/RecommendPlayerStateChangeNotification;->playState_:Lcom/wufan/friend/chat/protocol/PlayState;

    .line 2
    .line 3
    if-nez v0, :cond_0

    .line 4
    .line 5
    invoke-static {}, Lcom/wufan/friend/chat/protocol/PlayState;->getDefaultInstance()Lcom/wufan/friend/chat/protocol/PlayState;

    .line 6
    .line 7
    .line 8
    move-result-object v0

    .line 9
    :cond_0
    return-object v0
.end method

.method public getPlayStateOrBuilder()Lcom/wufan/friend/chat/protocol/e0;
    .locals 1

    .line 1
    invoke-virtual {p0}, Lcom/wufan/friend/chat/protocol/RecommendPlayerStateChangeNotification;->getPlayState()Lcom/wufan/friend/chat/protocol/PlayState;

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
    iget-object v0, p0, Lcom/wufan/friend/chat/protocol/RecommendPlayerStateChangeNotification;->friend_:Lcom/wufan/friend/chat/protocol/AccountInfo;

    .line 8
    .line 9
    const/4 v1, 0x0

    .line 10
    if-eqz v0, :cond_1

    .line 11
    .line 12
    const/4 v0, 0x1

    .line 13
    invoke-virtual {p0}, Lcom/wufan/friend/chat/protocol/RecommendPlayerStateChangeNotification;->getFriend()Lcom/wufan/friend/chat/protocol/AccountInfo;

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
    iget v0, p0, Lcom/wufan/friend/chat/protocol/RecommendPlayerStateChangeNotification;->state_:I

    .line 23
    .line 24
    sget-object v2, Lcom/wufan/friend/chat/protocol/OnlineState;->ONLINE:Lcom/wufan/friend/chat/protocol/OnlineState;

    .line 25
    .line 26
    invoke-virtual {v2}, Lcom/wufan/friend/chat/protocol/OnlineState;->getNumber()I

    .line 27
    .line 28
    .line 29
    move-result v2

    .line 30
    if-eq v0, v2, :cond_2

    .line 31
    .line 32
    const/4 v0, 0x2

    .line 33
    iget v2, p0, Lcom/wufan/friend/chat/protocol/RecommendPlayerStateChangeNotification;->state_:I

    .line 34
    .line 35
    invoke-static {v0, v2}, Lcom/google/protobuf/CodedOutputStream;->computeEnumSize(II)I

    .line 36
    .line 37
    .line 38
    move-result v0

    .line 39
    add-int/2addr v1, v0

    .line 40
    :cond_2
    iget-object v0, p0, Lcom/wufan/friend/chat/protocol/RecommendPlayerStateChangeNotification;->playState_:Lcom/wufan/friend/chat/protocol/PlayState;

    .line 41
    .line 42
    if-eqz v0, :cond_3

    .line 43
    .line 44
    const/4 v0, 0x3

    .line 45
    invoke-virtual {p0}, Lcom/wufan/friend/chat/protocol/RecommendPlayerStateChangeNotification;->getPlayState()Lcom/wufan/friend/chat/protocol/PlayState;

    .line 46
    .line 47
    .line 48
    move-result-object v2

    .line 49
    invoke-static {v0, v2}, Lcom/google/protobuf/CodedOutputStream;->computeMessageSize(ILcom/google/protobuf/MessageLite;)I

    .line 50
    .line 51
    .line 52
    move-result v0

    .line 53
    add-int/2addr v1, v0

    .line 54
    :cond_3
    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageV3;->unknownFields:Lcom/google/protobuf/UnknownFieldSet;

    .line 55
    .line 56
    invoke-virtual {v0}, Lcom/google/protobuf/UnknownFieldSet;->getSerializedSize()I

    .line 57
    .line 58
    .line 59
    move-result v0

    .line 60
    add-int/2addr v1, v0

    .line 61
    iput v1, p0, Lcom/google/protobuf/AbstractMessage;->memoizedSize:I

    .line 62
    .line 63
    return v1
.end method

.method public getState()Lcom/wufan/friend/chat/protocol/OnlineState;
    .locals 1

    .line 1
    iget v0, p0, Lcom/wufan/friend/chat/protocol/RecommendPlayerStateChangeNotification;->state_:I

    .line 2
    .line 3
    invoke-static {v0}, Lcom/wufan/friend/chat/protocol/OnlineState;->valueOf(I)Lcom/wufan/friend/chat/protocol/OnlineState;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    if-nez v0, :cond_0

    .line 8
    .line 9
    sget-object v0, Lcom/wufan/friend/chat/protocol/OnlineState;->UNRECOGNIZED:Lcom/wufan/friend/chat/protocol/OnlineState;

    .line 10
    .line 11
    :cond_0
    return-object v0
.end method

.method public getStateValue()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/wufan/friend/chat/protocol/RecommendPlayerStateChangeNotification;->state_:I

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

.method public hasFriend()Z
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/wufan/friend/chat/protocol/RecommendPlayerStateChangeNotification;->friend_:Lcom/wufan/friend/chat/protocol/AccountInfo;

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

.method public hasPlayState()Z
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/wufan/friend/chat/protocol/RecommendPlayerStateChangeNotification;->playState_:Lcom/wufan/friend/chat/protocol/PlayState;

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
    invoke-static {}, Lcom/wufan/friend/chat/protocol/RecommendPlayerStateChangeNotification;->getDescriptor()Lcom/google/protobuf/Descriptors$Descriptor;

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
    invoke-virtual {p0}, Lcom/wufan/friend/chat/protocol/RecommendPlayerStateChangeNotification;->hasFriend()Z

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
    invoke-virtual {p0}, Lcom/wufan/friend/chat/protocol/RecommendPlayerStateChangeNotification;->getFriend()Lcom/wufan/friend/chat/protocol/AccountInfo;

    .line 30
    .line 31
    .line 32
    move-result-object v0

    .line 33
    invoke-virtual {v0}, Lcom/wufan/friend/chat/protocol/AccountInfo;->hashCode()I

    .line 34
    .line 35
    .line 36
    move-result v0

    .line 37
    add-int/2addr v1, v0

    .line 38
    :cond_1
    mul-int/lit8 v1, v1, 0x25

    .line 39
    .line 40
    add-int/lit8 v1, v1, 0x2

    .line 41
    .line 42
    mul-int/lit8 v1, v1, 0x35

    .line 43
    .line 44
    iget v0, p0, Lcom/wufan/friend/chat/protocol/RecommendPlayerStateChangeNotification;->state_:I

    .line 45
    .line 46
    add-int/2addr v1, v0

    .line 47
    invoke-virtual {p0}, Lcom/wufan/friend/chat/protocol/RecommendPlayerStateChangeNotification;->hasPlayState()Z

    .line 48
    .line 49
    .line 50
    move-result v0

    .line 51
    if-eqz v0, :cond_2

    .line 52
    .line 53
    mul-int/lit8 v1, v1, 0x25

    .line 54
    .line 55
    add-int/lit8 v1, v1, 0x3

    .line 56
    .line 57
    mul-int/lit8 v1, v1, 0x35

    .line 58
    .line 59
    invoke-virtual {p0}, Lcom/wufan/friend/chat/protocol/RecommendPlayerStateChangeNotification;->getPlayState()Lcom/wufan/friend/chat/protocol/PlayState;

    .line 60
    .line 61
    .line 62
    move-result-object v0

    .line 63
    invoke-virtual {v0}, Lcom/wufan/friend/chat/protocol/PlayState;->hashCode()I

    .line 64
    .line 65
    .line 66
    move-result v0

    .line 67
    add-int/2addr v1, v0

    .line 68
    :cond_2
    mul-int/lit8 v1, v1, 0x1d

    .line 69
    .line 70
    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageV3;->unknownFields:Lcom/google/protobuf/UnknownFieldSet;

    .line 71
    .line 72
    invoke-virtual {v0}, Lcom/google/protobuf/UnknownFieldSet;->hashCode()I

    .line 73
    .line 74
    .line 75
    move-result v0

    .line 76
    add-int/2addr v1, v0

    .line 77
    iput v1, p0, Lcom/google/protobuf/AbstractMessageLite;->memoizedHashCode:I

    .line 78
    .line 79
    return v1
.end method

.method protected internalGetFieldAccessorTable()Lcom/google/protobuf/GeneratedMessageV3$FieldAccessorTable;
    .locals 3

    .line 1
    sget-object v0, Lcom/wufan/friend/chat/protocol/a0;->z0:Lcom/google/protobuf/GeneratedMessageV3$FieldAccessorTable;

    .line 2
    .line 3
    const-class v1, Lcom/wufan/friend/chat/protocol/RecommendPlayerStateChangeNotification;

    .line 4
    .line 5
    const-class v2, Lcom/wufan/friend/chat/protocol/RecommendPlayerStateChangeNotification$b;

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
    iget-byte v0, p0, Lcom/wufan/friend/chat/protocol/RecommendPlayerStateChangeNotification;->memoizedIsInitialized:B

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
    iput-byte v1, p0, Lcom/wufan/friend/chat/protocol/RecommendPlayerStateChangeNotification;->memoizedIsInitialized:B

    .line 12
    .line 13
    return v1
.end method

.method public bridge synthetic newBuilderForType()Lcom/google/protobuf/Message$Builder;
    .locals 1

    .line 1
    invoke-virtual {p0}, Lcom/wufan/friend/chat/protocol/RecommendPlayerStateChangeNotification;->newBuilderForType()Lcom/wufan/friend/chat/protocol/RecommendPlayerStateChangeNotification$b;

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
    invoke-virtual {p0, p1}, Lcom/wufan/friend/chat/protocol/RecommendPlayerStateChangeNotification;->newBuilderForType(Lcom/google/protobuf/GeneratedMessageV3$BuilderParent;)Lcom/wufan/friend/chat/protocol/RecommendPlayerStateChangeNotification$b;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic newBuilderForType()Lcom/google/protobuf/MessageLite$Builder;
    .locals 1

    .line 3
    invoke-virtual {p0}, Lcom/wufan/friend/chat/protocol/RecommendPlayerStateChangeNotification;->newBuilderForType()Lcom/wufan/friend/chat/protocol/RecommendPlayerStateChangeNotification$b;

    move-result-object v0

    return-object v0
.end method

.method public newBuilderForType()Lcom/wufan/friend/chat/protocol/RecommendPlayerStateChangeNotification$b;
    .locals 1

    .line 4
    invoke-static {}, Lcom/wufan/friend/chat/protocol/RecommendPlayerStateChangeNotification;->newBuilder()Lcom/wufan/friend/chat/protocol/RecommendPlayerStateChangeNotification$b;

    move-result-object v0

    return-object v0
.end method

.method protected newBuilderForType(Lcom/google/protobuf/GeneratedMessageV3$BuilderParent;)Lcom/wufan/friend/chat/protocol/RecommendPlayerStateChangeNotification$b;
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
    new-instance v0, Lcom/wufan/friend/chat/protocol/RecommendPlayerStateChangeNotification$b;

    const/4 v1, 0x0

    invoke-direct {v0, p1, v1}, Lcom/wufan/friend/chat/protocol/RecommendPlayerStateChangeNotification$b;-><init>(Lcom/google/protobuf/GeneratedMessageV3$BuilderParent;Lcom/wufan/friend/chat/protocol/RecommendPlayerStateChangeNotification$a;)V

    return-object v0
.end method

.method public bridge synthetic toBuilder()Lcom/google/protobuf/Message$Builder;
    .locals 1

    .line 1
    invoke-virtual {p0}, Lcom/wufan/friend/chat/protocol/RecommendPlayerStateChangeNotification;->toBuilder()Lcom/wufan/friend/chat/protocol/RecommendPlayerStateChangeNotification$b;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic toBuilder()Lcom/google/protobuf/MessageLite$Builder;
    .locals 1

    .line 2
    invoke-virtual {p0}, Lcom/wufan/friend/chat/protocol/RecommendPlayerStateChangeNotification;->toBuilder()Lcom/wufan/friend/chat/protocol/RecommendPlayerStateChangeNotification$b;

    move-result-object v0

    return-object v0
.end method

.method public toBuilder()Lcom/wufan/friend/chat/protocol/RecommendPlayerStateChangeNotification$b;
    .locals 2

    .line 3
    sget-object v0, Lcom/wufan/friend/chat/protocol/RecommendPlayerStateChangeNotification;->DEFAULT_INSTANCE:Lcom/wufan/friend/chat/protocol/RecommendPlayerStateChangeNotification;

    const/4 v1, 0x0

    if-ne p0, v0, :cond_0

    .line 4
    new-instance v0, Lcom/wufan/friend/chat/protocol/RecommendPlayerStateChangeNotification$b;

    invoke-direct {v0, v1}, Lcom/wufan/friend/chat/protocol/RecommendPlayerStateChangeNotification$b;-><init>(Lcom/wufan/friend/chat/protocol/RecommendPlayerStateChangeNotification$a;)V

    goto :goto_0

    :cond_0
    new-instance v0, Lcom/wufan/friend/chat/protocol/RecommendPlayerStateChangeNotification$b;

    invoke-direct {v0, v1}, Lcom/wufan/friend/chat/protocol/RecommendPlayerStateChangeNotification$b;-><init>(Lcom/wufan/friend/chat/protocol/RecommendPlayerStateChangeNotification$a;)V

    invoke-virtual {v0, p0}, Lcom/wufan/friend/chat/protocol/RecommendPlayerStateChangeNotification$b;->mergeFrom(Lcom/wufan/friend/chat/protocol/RecommendPlayerStateChangeNotification;)Lcom/wufan/friend/chat/protocol/RecommendPlayerStateChangeNotification$b;

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
    iget-object v0, p0, Lcom/wufan/friend/chat/protocol/RecommendPlayerStateChangeNotification;->friend_:Lcom/wufan/friend/chat/protocol/AccountInfo;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    const/4 v0, 0x1

    .line 6
    invoke-virtual {p0}, Lcom/wufan/friend/chat/protocol/RecommendPlayerStateChangeNotification;->getFriend()Lcom/wufan/friend/chat/protocol/AccountInfo;

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
    iget v0, p0, Lcom/wufan/friend/chat/protocol/RecommendPlayerStateChangeNotification;->state_:I

    .line 14
    .line 15
    sget-object v1, Lcom/wufan/friend/chat/protocol/OnlineState;->ONLINE:Lcom/wufan/friend/chat/protocol/OnlineState;

    .line 16
    .line 17
    invoke-virtual {v1}, Lcom/wufan/friend/chat/protocol/OnlineState;->getNumber()I

    .line 18
    .line 19
    .line 20
    move-result v1

    .line 21
    if-eq v0, v1, :cond_1

    .line 22
    .line 23
    const/4 v0, 0x2

    .line 24
    iget v1, p0, Lcom/wufan/friend/chat/protocol/RecommendPlayerStateChangeNotification;->state_:I

    .line 25
    .line 26
    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/CodedOutputStream;->writeEnum(II)V

    .line 27
    .line 28
    .line 29
    :cond_1
    iget-object v0, p0, Lcom/wufan/friend/chat/protocol/RecommendPlayerStateChangeNotification;->playState_:Lcom/wufan/friend/chat/protocol/PlayState;

    .line 30
    .line 31
    if-eqz v0, :cond_2

    .line 32
    .line 33
    const/4 v0, 0x3

    .line 34
    invoke-virtual {p0}, Lcom/wufan/friend/chat/protocol/RecommendPlayerStateChangeNotification;->getPlayState()Lcom/wufan/friend/chat/protocol/PlayState;

    .line 35
    .line 36
    .line 37
    move-result-object v1

    .line 38
    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/CodedOutputStream;->writeMessage(ILcom/google/protobuf/MessageLite;)V

    .line 39
    .line 40
    .line 41
    :cond_2
    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageV3;->unknownFields:Lcom/google/protobuf/UnknownFieldSet;

    .line 42
    .line 43
    invoke-virtual {v0, p1}, Lcom/google/protobuf/UnknownFieldSet;->writeTo(Lcom/google/protobuf/CodedOutputStream;)V

    .line 44
    .line 45
    .line 46
    return-void
.end method
