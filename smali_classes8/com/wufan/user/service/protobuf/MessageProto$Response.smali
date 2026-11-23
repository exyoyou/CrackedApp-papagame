.class public final Lcom/wufan/user/service/protobuf/MessageProto$Response;
.super Lcom/google/protobuf/GeneratedMessageV3;
.source "SourceFile"

# interfaces
.implements Lcom/wufan/user/service/protobuf/MessageProto$i;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/wufan/user/service/protobuf/MessageProto;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Response"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/wufan/user/service/protobuf/MessageProto$Response$b;,
        Lcom/wufan/user/service/protobuf/MessageProto$Response$StatusCode;,
        Lcom/wufan/user/service/protobuf/MessageProto$Response$ProtoType;,
        Lcom/wufan/user/service/protobuf/MessageProto$Response$LogicErrorCode;
    }
.end annotation


# static fields
.field public static final BROADCASTUSERS_FIELD_NUMBER:I = 0x5

.field private static final DEFAULT_INSTANCE:Lcom/wufan/user/service/protobuf/MessageProto$Response;

.field public static final ERRORCODE_FIELD_NUMBER:I = 0xb

.field public static final ERROR_FIELD_NUMBER:I = 0x6

.field public static final LOGICERRORCODE_FIELD_NUMBER:I = 0x8

.field public static final MESSAGEINFO_FIELD_NUMBER:I = 0x4

.field public static final ONLINEPEOPLECOUNT_FIELD_NUMBER:I = 0x9

.field private static final PARSER:Lcom/google/protobuf/Parser;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/protobuf/Parser<",
            "Lcom/wufan/user/service/protobuf/MessageProto$Response;",
            ">;"
        }
    .end annotation
.end field

.field public static final PONG_FIELD_NUMBER:I = 0x7

.field public static final QUEUEINFO_FIELD_NUMBER:I = 0xa

.field public static final REQUESTID_FIELD_NUMBER:I = 0x2

.field public static final STATUSCODE_FIELD_NUMBER:I = 0x1

.field public static final TYPE_FIELD_NUMBER:I = 0x3

.field private static final serialVersionUID:J


# instance fields
.field private bitField0_:I

.field private broadcastUsersMemoizedSerializedSize:I

.field private broadcastUsers_:Lcom/google/protobuf/Internal$IntList;

.field private errorCode_:I

.field private volatile error_:Ljava/lang/Object;

.field private logicErrorCode_:I

.field private memoizedIsInitialized:B

.field private messageInfo_:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/wufan/user/service/protobuf/MessageProto$MessageInfo;",
            ">;"
        }
    .end annotation
.end field

.field private onlinePeopleCount_:I

.field private pong_:Lcom/wufan/user/service/protobuf/MessageProto$Pong;

.field private queueInfo_:Lcom/wufan/user/service/protobuf/MessageProto$QueueInfo;

.field private requestId_:J

.field private statusCode_:I

.field private type_:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 1
    new-instance v0, Lcom/wufan/user/service/protobuf/MessageProto$Response;

    .line 2
    .line 3
    invoke-direct {v0}, Lcom/wufan/user/service/protobuf/MessageProto$Response;-><init>()V

    .line 4
    .line 5
    .line 6
    sput-object v0, Lcom/wufan/user/service/protobuf/MessageProto$Response;->DEFAULT_INSTANCE:Lcom/wufan/user/service/protobuf/MessageProto$Response;

    .line 7
    .line 8
    new-instance v0, Lcom/wufan/user/service/protobuf/MessageProto$Response$a;

    .line 9
    .line 10
    invoke-direct {v0}, Lcom/wufan/user/service/protobuf/MessageProto$Response$a;-><init>()V

    .line 11
    .line 12
    .line 13
    sput-object v0, Lcom/wufan/user/service/protobuf/MessageProto$Response;->PARSER:Lcom/google/protobuf/Parser;

    .line 14
    .line 15
    return-void
.end method

.method private constructor <init>()V
    .locals 2

    .line 6
    invoke-direct {p0}, Lcom/google/protobuf/GeneratedMessageV3;-><init>()V

    const/4 v0, -0x1

    .line 7
    iput v0, p0, Lcom/wufan/user/service/protobuf/MessageProto$Response;->broadcastUsersMemoizedSerializedSize:I

    .line 8
    iput-byte v0, p0, Lcom/wufan/user/service/protobuf/MessageProto$Response;->memoizedIsInitialized:B

    const/4 v0, 0x0

    .line 9
    iput v0, p0, Lcom/wufan/user/service/protobuf/MessageProto$Response;->statusCode_:I

    .line 10
    iput v0, p0, Lcom/wufan/user/service/protobuf/MessageProto$Response;->type_:I

    .line 11
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v1

    iput-object v1, p0, Lcom/wufan/user/service/protobuf/MessageProto$Response;->messageInfo_:Ljava/util/List;

    .line 12
    invoke-static {}, Lcom/google/protobuf/GeneratedMessageV3;->emptyIntList()Lcom/google/protobuf/Internal$IntList;

    move-result-object v1

    iput-object v1, p0, Lcom/wufan/user/service/protobuf/MessageProto$Response;->broadcastUsers_:Lcom/google/protobuf/Internal$IntList;

    const-string v1, ""

    .line 13
    iput-object v1, p0, Lcom/wufan/user/service/protobuf/MessageProto$Response;->error_:Ljava/lang/Object;

    .line 14
    iput v0, p0, Lcom/wufan/user/service/protobuf/MessageProto$Response;->logicErrorCode_:I

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

    .line 15
    invoke-direct {p0}, Lcom/wufan/user/service/protobuf/MessageProto$Response;-><init>()V

    .line 16
    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 17
    invoke-static {}, Lcom/google/protobuf/UnknownFieldSet;->newBuilder()Lcom/google/protobuf/UnknownFieldSet$Builder;

    move-result-object v0

    const/4 v1, 0x0

    const/4 v2, 0x0

    :cond_0
    :goto_0
    if-nez v1, :cond_9

    .line 18
    :try_start_0
    invoke-virtual {p1}, Lcom/google/protobuf/CodedInputStream;->readTag()I

    move-result v3

    const/4 v4, 0x0

    const/4 v5, 0x1

    sparse-switch v3, :sswitch_data_0

    .line 19
    invoke-virtual {p0, p1, v0, p2, v3}, Lcom/google/protobuf/GeneratedMessageV3;->parseUnknownField(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/UnknownFieldSet$Builder;Lcom/google/protobuf/ExtensionRegistryLite;I)Z

    move-result v3

    goto/16 :goto_3

    .line 20
    :sswitch_0
    invoke-virtual {p1}, Lcom/google/protobuf/CodedInputStream;->readInt32()I

    move-result v3

    iput v3, p0, Lcom/wufan/user/service/protobuf/MessageProto$Response;->errorCode_:I

    goto :goto_0

    .line 21
    :sswitch_1
    iget-object v3, p0, Lcom/wufan/user/service/protobuf/MessageProto$Response;->queueInfo_:Lcom/wufan/user/service/protobuf/MessageProto$QueueInfo;

    if-eqz v3, :cond_1

    .line 22
    invoke-virtual {v3}, Lcom/wufan/user/service/protobuf/MessageProto$QueueInfo;->toBuilder()Lcom/wufan/user/service/protobuf/MessageProto$QueueInfo$b;

    move-result-object v4

    .line 23
    :cond_1
    invoke-static {}, Lcom/wufan/user/service/protobuf/MessageProto$QueueInfo;->parser()Lcom/google/protobuf/Parser;

    move-result-object v3

    invoke-virtual {p1, v3, p2}, Lcom/google/protobuf/CodedInputStream;->readMessage(Lcom/google/protobuf/Parser;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/MessageLite;

    move-result-object v3

    check-cast v3, Lcom/wufan/user/service/protobuf/MessageProto$QueueInfo;

    iput-object v3, p0, Lcom/wufan/user/service/protobuf/MessageProto$Response;->queueInfo_:Lcom/wufan/user/service/protobuf/MessageProto$QueueInfo;

    if-eqz v4, :cond_0

    .line 24
    invoke-virtual {v4, v3}, Lcom/wufan/user/service/protobuf/MessageProto$QueueInfo$b;->mergeFrom(Lcom/wufan/user/service/protobuf/MessageProto$QueueInfo;)Lcom/wufan/user/service/protobuf/MessageProto$QueueInfo$b;

    .line 25
    invoke-virtual {v4}, Lcom/wufan/user/service/protobuf/MessageProto$QueueInfo$b;->buildPartial()Lcom/wufan/user/service/protobuf/MessageProto$QueueInfo;

    move-result-object v3

    iput-object v3, p0, Lcom/wufan/user/service/protobuf/MessageProto$Response;->queueInfo_:Lcom/wufan/user/service/protobuf/MessageProto$QueueInfo;

    goto :goto_0

    .line 26
    :sswitch_2
    invoke-virtual {p1}, Lcom/google/protobuf/CodedInputStream;->readInt32()I

    move-result v3

    iput v3, p0, Lcom/wufan/user/service/protobuf/MessageProto$Response;->onlinePeopleCount_:I

    goto :goto_0

    .line 27
    :sswitch_3
    invoke-virtual {p1}, Lcom/google/protobuf/CodedInputStream;->readEnum()I

    move-result v3

    .line 28
    iput v3, p0, Lcom/wufan/user/service/protobuf/MessageProto$Response;->logicErrorCode_:I

    goto :goto_0

    .line 29
    :sswitch_4
    iget-object v3, p0, Lcom/wufan/user/service/protobuf/MessageProto$Response;->pong_:Lcom/wufan/user/service/protobuf/MessageProto$Pong;

    if-eqz v3, :cond_2

    .line 30
    invoke-virtual {v3}, Lcom/wufan/user/service/protobuf/MessageProto$Pong;->toBuilder()Lcom/wufan/user/service/protobuf/MessageProto$Pong$b;

    move-result-object v4

    .line 31
    :cond_2
    invoke-static {}, Lcom/wufan/user/service/protobuf/MessageProto$Pong;->parser()Lcom/google/protobuf/Parser;

    move-result-object v3

    invoke-virtual {p1, v3, p2}, Lcom/google/protobuf/CodedInputStream;->readMessage(Lcom/google/protobuf/Parser;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/MessageLite;

    move-result-object v3

    check-cast v3, Lcom/wufan/user/service/protobuf/MessageProto$Pong;

    iput-object v3, p0, Lcom/wufan/user/service/protobuf/MessageProto$Response;->pong_:Lcom/wufan/user/service/protobuf/MessageProto$Pong;

    if-eqz v4, :cond_0

    .line 32
    invoke-virtual {v4, v3}, Lcom/wufan/user/service/protobuf/MessageProto$Pong$b;->mergeFrom(Lcom/wufan/user/service/protobuf/MessageProto$Pong;)Lcom/wufan/user/service/protobuf/MessageProto$Pong$b;

    .line 33
    invoke-virtual {v4}, Lcom/wufan/user/service/protobuf/MessageProto$Pong$b;->buildPartial()Lcom/wufan/user/service/protobuf/MessageProto$Pong;

    move-result-object v3

    iput-object v3, p0, Lcom/wufan/user/service/protobuf/MessageProto$Response;->pong_:Lcom/wufan/user/service/protobuf/MessageProto$Pong;

    goto :goto_0

    .line 34
    :sswitch_5
    invoke-virtual {p1}, Lcom/google/protobuf/CodedInputStream;->readStringRequireUtf8()Ljava/lang/String;

    move-result-object v3

    .line 35
    iput-object v3, p0, Lcom/wufan/user/service/protobuf/MessageProto$Response;->error_:Ljava/lang/Object;

    goto :goto_0

    .line 36
    :sswitch_6
    invoke-virtual {p1}, Lcom/google/protobuf/CodedInputStream;->readRawVarint32()I

    move-result v3

    .line 37
    invoke-virtual {p1, v3}, Lcom/google/protobuf/CodedInputStream;->pushLimit(I)I

    move-result v3

    and-int/lit8 v4, v2, 0x10

    if-nez v4, :cond_3

    .line 38
    invoke-virtual {p1}, Lcom/google/protobuf/CodedInputStream;->getBytesUntilLimit()I

    move-result v4

    if-lez v4, :cond_3

    .line 39
    invoke-static {}, Lcom/google/protobuf/GeneratedMessageV3;->newIntList()Lcom/google/protobuf/Internal$IntList;

    move-result-object v4

    iput-object v4, p0, Lcom/wufan/user/service/protobuf/MessageProto$Response;->broadcastUsers_:Lcom/google/protobuf/Internal$IntList;

    or-int/lit8 v2, v2, 0x10

    .line 40
    :cond_3
    :goto_1
    invoke-virtual {p1}, Lcom/google/protobuf/CodedInputStream;->getBytesUntilLimit()I

    move-result v4

    if-lez v4, :cond_4

    .line 41
    iget-object v4, p0, Lcom/wufan/user/service/protobuf/MessageProto$Response;->broadcastUsers_:Lcom/google/protobuf/Internal$IntList;

    invoke-virtual {p1}, Lcom/google/protobuf/CodedInputStream;->readInt32()I

    move-result v5

    invoke-interface {v4, v5}, Lcom/google/protobuf/Internal$IntList;->addInt(I)V

    goto :goto_1

    .line 42
    :cond_4
    invoke-virtual {p1, v3}, Lcom/google/protobuf/CodedInputStream;->popLimit(I)V

    goto/16 :goto_0

    :sswitch_7
    and-int/lit8 v3, v2, 0x10

    if-nez v3, :cond_5

    .line 43
    invoke-static {}, Lcom/google/protobuf/GeneratedMessageV3;->newIntList()Lcom/google/protobuf/Internal$IntList;

    move-result-object v3

    iput-object v3, p0, Lcom/wufan/user/service/protobuf/MessageProto$Response;->broadcastUsers_:Lcom/google/protobuf/Internal$IntList;

    or-int/lit8 v2, v2, 0x10

    .line 44
    :cond_5
    iget-object v3, p0, Lcom/wufan/user/service/protobuf/MessageProto$Response;->broadcastUsers_:Lcom/google/protobuf/Internal$IntList;

    invoke-virtual {p1}, Lcom/google/protobuf/CodedInputStream;->readInt32()I

    move-result v4

    invoke-interface {v3, v4}, Lcom/google/protobuf/Internal$IntList;->addInt(I)V

    goto/16 :goto_0

    :sswitch_8
    and-int/lit8 v3, v2, 0x8

    if-nez v3, :cond_6

    .line 45
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    iput-object v3, p0, Lcom/wufan/user/service/protobuf/MessageProto$Response;->messageInfo_:Ljava/util/List;

    or-int/lit8 v2, v2, 0x8

    .line 46
    :cond_6
    iget-object v3, p0, Lcom/wufan/user/service/protobuf/MessageProto$Response;->messageInfo_:Ljava/util/List;

    .line 47
    invoke-static {}, Lcom/wufan/user/service/protobuf/MessageProto$MessageInfo;->parser()Lcom/google/protobuf/Parser;

    move-result-object v4

    invoke-virtual {p1, v4, p2}, Lcom/google/protobuf/CodedInputStream;->readMessage(Lcom/google/protobuf/Parser;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/MessageLite;

    move-result-object v4

    check-cast v4, Lcom/wufan/user/service/protobuf/MessageProto$MessageInfo;

    .line 48
    invoke-interface {v3, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto/16 :goto_0

    .line 49
    :sswitch_9
    invoke-virtual {p1}, Lcom/google/protobuf/CodedInputStream;->readEnum()I

    move-result v3

    .line 50
    iput v3, p0, Lcom/wufan/user/service/protobuf/MessageProto$Response;->type_:I

    goto/16 :goto_0

    .line 51
    :sswitch_a
    invoke-virtual {p1}, Lcom/google/protobuf/CodedInputStream;->readInt64()J

    move-result-wide v3

    iput-wide v3, p0, Lcom/wufan/user/service/protobuf/MessageProto$Response;->requestId_:J

    goto/16 :goto_0

    .line 52
    :sswitch_b
    invoke-virtual {p1}, Lcom/google/protobuf/CodedInputStream;->readEnum()I

    move-result v3

    .line 53
    iput v3, p0, Lcom/wufan/user/service/protobuf/MessageProto$Response;->statusCode_:I
    :try_end_0
    .catch Lcom/google/protobuf/InvalidProtocolBufferException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto/16 :goto_0

    :goto_2
    :sswitch_c
    const/4 v1, 0x1

    goto/16 :goto_0

    :goto_3
    if-nez v3, :cond_0

    goto :goto_2

    :catchall_0
    move-exception p1

    goto :goto_4

    :catch_0
    move-exception p1

    .line 54
    :try_start_1
    new-instance p2, Lcom/google/protobuf/InvalidProtocolBufferException;

    invoke-direct {p2, p1}, Lcom/google/protobuf/InvalidProtocolBufferException;-><init>(Ljava/io/IOException;)V

    .line 55
    invoke-virtual {p2, p0}, Lcom/google/protobuf/InvalidProtocolBufferException;->setUnfinishedMessage(Lcom/google/protobuf/MessageLite;)Lcom/google/protobuf/InvalidProtocolBufferException;

    move-result-object p1

    throw p1

    :catch_1
    move-exception p1

    .line 56
    invoke-virtual {p1, p0}, Lcom/google/protobuf/InvalidProtocolBufferException;->setUnfinishedMessage(Lcom/google/protobuf/MessageLite;)Lcom/google/protobuf/InvalidProtocolBufferException;

    move-result-object p1

    throw p1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :goto_4
    and-int/lit8 p2, v2, 0x8

    if-eqz p2, :cond_7

    .line 57
    iget-object p2, p0, Lcom/wufan/user/service/protobuf/MessageProto$Response;->messageInfo_:Ljava/util/List;

    invoke-static {p2}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object p2

    iput-object p2, p0, Lcom/wufan/user/service/protobuf/MessageProto$Response;->messageInfo_:Ljava/util/List;

    :cond_7
    and-int/lit8 p2, v2, 0x10

    if-eqz p2, :cond_8

    .line 58
    iget-object p2, p0, Lcom/wufan/user/service/protobuf/MessageProto$Response;->broadcastUsers_:Lcom/google/protobuf/Internal$IntList;

    invoke-interface {p2}, Lcom/google/protobuf/Internal$ProtobufList;->makeImmutable()V

    .line 59
    :cond_8
    invoke-virtual {v0}, Lcom/google/protobuf/UnknownFieldSet$Builder;->build()Lcom/google/protobuf/UnknownFieldSet;

    move-result-object p2

    iput-object p2, p0, Lcom/google/protobuf/GeneratedMessageV3;->unknownFields:Lcom/google/protobuf/UnknownFieldSet;

    .line 60
    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageV3;->makeExtensionsImmutable()V

    .line 61
    throw p1

    :cond_9
    and-int/lit8 p1, v2, 0x8

    if-eqz p1, :cond_a

    .line 62
    iget-object p1, p0, Lcom/wufan/user/service/protobuf/MessageProto$Response;->messageInfo_:Ljava/util/List;

    invoke-static {p1}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object p1

    iput-object p1, p0, Lcom/wufan/user/service/protobuf/MessageProto$Response;->messageInfo_:Ljava/util/List;

    :cond_a
    and-int/lit8 p1, v2, 0x10

    if-eqz p1, :cond_b

    .line 63
    iget-object p1, p0, Lcom/wufan/user/service/protobuf/MessageProto$Response;->broadcastUsers_:Lcom/google/protobuf/Internal$IntList;

    invoke-interface {p1}, Lcom/google/protobuf/Internal$ProtobufList;->makeImmutable()V

    .line 64
    :cond_b
    invoke-virtual {v0}, Lcom/google/protobuf/UnknownFieldSet$Builder;->build()Lcom/google/protobuf/UnknownFieldSet;

    move-result-object p1

    iput-object p1, p0, Lcom/google/protobuf/GeneratedMessageV3;->unknownFields:Lcom/google/protobuf/UnknownFieldSet;

    .line 65
    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageV3;->makeExtensionsImmutable()V

    return-void

    :sswitch_data_0
    .sparse-switch
        0x0 -> :sswitch_c
        0x8 -> :sswitch_b
        0x10 -> :sswitch_a
        0x18 -> :sswitch_9
        0x22 -> :sswitch_8
        0x28 -> :sswitch_7
        0x2a -> :sswitch_6
        0x32 -> :sswitch_5
        0x3a -> :sswitch_4
        0x40 -> :sswitch_3
        0x48 -> :sswitch_2
        0x52 -> :sswitch_1
        0x58 -> :sswitch_0
    .end sparse-switch
.end method

.method synthetic constructor <init>(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;Lcom/wufan/user/service/protobuf/MessageProto$a;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .line 1
    invoke-direct {p0, p1, p2}, Lcom/wufan/user/service/protobuf/MessageProto$Response;-><init>(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)V

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
    iput p1, p0, Lcom/wufan/user/service/protobuf/MessageProto$Response;->broadcastUsersMemoizedSerializedSize:I

    .line 5
    iput-byte p1, p0, Lcom/wufan/user/service/protobuf/MessageProto$Response;->memoizedIsInitialized:B

    return-void
.end method

.method synthetic constructor <init>(Lcom/google/protobuf/GeneratedMessageV3$Builder;Lcom/wufan/user/service/protobuf/MessageProto$a;)V
    .locals 0

    .line 2
    invoke-direct {p0, p1}, Lcom/wufan/user/service/protobuf/MessageProto$Response;-><init>(Lcom/google/protobuf/GeneratedMessageV3$Builder;)V

    return-void
.end method

.method static synthetic access$10000(Lcom/wufan/user/service/protobuf/MessageProto$Response;)I
    .locals 0

    .line 1
    iget p0, p0, Lcom/wufan/user/service/protobuf/MessageProto$Response;->statusCode_:I

    .line 2
    .line 3
    return p0
.end method

.method static synthetic access$10002(Lcom/wufan/user/service/protobuf/MessageProto$Response;I)I
    .locals 0

    .line 1
    iput p1, p0, Lcom/wufan/user/service/protobuf/MessageProto$Response;->statusCode_:I

    .line 2
    .line 3
    return p1
.end method

.method static synthetic access$10102(Lcom/wufan/user/service/protobuf/MessageProto$Response;J)J
    .locals 0

    .line 1
    iput-wide p1, p0, Lcom/wufan/user/service/protobuf/MessageProto$Response;->requestId_:J

    .line 2
    .line 3
    return-wide p1
.end method

.method static synthetic access$10200(Lcom/wufan/user/service/protobuf/MessageProto$Response;)I
    .locals 0

    .line 1
    iget p0, p0, Lcom/wufan/user/service/protobuf/MessageProto$Response;->type_:I

    .line 2
    .line 3
    return p0
.end method

.method static synthetic access$10202(Lcom/wufan/user/service/protobuf/MessageProto$Response;I)I
    .locals 0

    .line 1
    iput p1, p0, Lcom/wufan/user/service/protobuf/MessageProto$Response;->type_:I

    .line 2
    .line 3
    return p1
.end method

.method static synthetic access$10300(Lcom/wufan/user/service/protobuf/MessageProto$Response;)Ljava/util/List;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/wufan/user/service/protobuf/MessageProto$Response;->messageInfo_:Ljava/util/List;

    .line 2
    .line 3
    return-object p0
.end method

.method static synthetic access$10302(Lcom/wufan/user/service/protobuf/MessageProto$Response;Ljava/util/List;)Ljava/util/List;
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/wufan/user/service/protobuf/MessageProto$Response;->messageInfo_:Ljava/util/List;

    .line 2
    .line 3
    return-object p1
.end method

.method static synthetic access$10400(Lcom/wufan/user/service/protobuf/MessageProto$Response;)Lcom/google/protobuf/Internal$IntList;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/wufan/user/service/protobuf/MessageProto$Response;->broadcastUsers_:Lcom/google/protobuf/Internal$IntList;

    .line 2
    .line 3
    return-object p0
.end method

.method static synthetic access$10402(Lcom/wufan/user/service/protobuf/MessageProto$Response;Lcom/google/protobuf/Internal$IntList;)Lcom/google/protobuf/Internal$IntList;
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/wufan/user/service/protobuf/MessageProto$Response;->broadcastUsers_:Lcom/google/protobuf/Internal$IntList;

    .line 2
    .line 3
    return-object p1
.end method

.method static synthetic access$10500(Lcom/wufan/user/service/protobuf/MessageProto$Response;)Ljava/lang/Object;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/wufan/user/service/protobuf/MessageProto$Response;->error_:Ljava/lang/Object;

    .line 2
    .line 3
    return-object p0
.end method

.method static synthetic access$10502(Lcom/wufan/user/service/protobuf/MessageProto$Response;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/wufan/user/service/protobuf/MessageProto$Response;->error_:Ljava/lang/Object;

    .line 2
    .line 3
    return-object p1
.end method

.method static synthetic access$10602(Lcom/wufan/user/service/protobuf/MessageProto$Response;Lcom/wufan/user/service/protobuf/MessageProto$Pong;)Lcom/wufan/user/service/protobuf/MessageProto$Pong;
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/wufan/user/service/protobuf/MessageProto$Response;->pong_:Lcom/wufan/user/service/protobuf/MessageProto$Pong;

    .line 2
    .line 3
    return-object p1
.end method

.method static synthetic access$10700(Lcom/wufan/user/service/protobuf/MessageProto$Response;)I
    .locals 0

    .line 1
    iget p0, p0, Lcom/wufan/user/service/protobuf/MessageProto$Response;->logicErrorCode_:I

    .line 2
    .line 3
    return p0
.end method

.method static synthetic access$10702(Lcom/wufan/user/service/protobuf/MessageProto$Response;I)I
    .locals 0

    .line 1
    iput p1, p0, Lcom/wufan/user/service/protobuf/MessageProto$Response;->logicErrorCode_:I

    .line 2
    .line 3
    return p1
.end method

.method static synthetic access$10802(Lcom/wufan/user/service/protobuf/MessageProto$Response;I)I
    .locals 0

    .line 1
    iput p1, p0, Lcom/wufan/user/service/protobuf/MessageProto$Response;->onlinePeopleCount_:I

    .line 2
    .line 3
    return p1
.end method

.method static synthetic access$10902(Lcom/wufan/user/service/protobuf/MessageProto$Response;Lcom/wufan/user/service/protobuf/MessageProto$QueueInfo;)Lcom/wufan/user/service/protobuf/MessageProto$QueueInfo;
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/wufan/user/service/protobuf/MessageProto$Response;->queueInfo_:Lcom/wufan/user/service/protobuf/MessageProto$QueueInfo;

    .line 2
    .line 3
    return-object p1
.end method

.method static synthetic access$11002(Lcom/wufan/user/service/protobuf/MessageProto$Response;I)I
    .locals 0

    .line 1
    iput p1, p0, Lcom/wufan/user/service/protobuf/MessageProto$Response;->errorCode_:I

    .line 2
    .line 3
    return p1
.end method

.method static synthetic access$11102(Lcom/wufan/user/service/protobuf/MessageProto$Response;I)I
    .locals 0

    .line 1
    iput p1, p0, Lcom/wufan/user/service/protobuf/MessageProto$Response;->bitField0_:I

    .line 2
    .line 3
    return p1
.end method

.method static synthetic access$11200()Z
    .locals 1

    .line 1
    sget-boolean v0, Lcom/google/protobuf/GeneratedMessageV3;->alwaysUseFieldBuilders:Z

    .line 2
    .line 3
    return v0
.end method

.method static synthetic access$11300(Lcom/wufan/user/service/protobuf/MessageProto$Response;)Lcom/google/protobuf/UnknownFieldSet;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/google/protobuf/GeneratedMessageV3;->unknownFields:Lcom/google/protobuf/UnknownFieldSet;

    .line 2
    .line 3
    return-object p0
.end method

.method static synthetic access$11400()Lcom/google/protobuf/Parser;
    .locals 1

    .line 1
    sget-object v0, Lcom/wufan/user/service/protobuf/MessageProto$Response;->PARSER:Lcom/google/protobuf/Parser;

    .line 2
    .line 3
    return-object v0
.end method

.method static synthetic access$11500()Lcom/google/protobuf/Internal$IntList;
    .locals 1

    .line 1
    invoke-static {}, Lcom/google/protobuf/GeneratedMessageV3;->emptyIntList()Lcom/google/protobuf/Internal$IntList;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    return-object v0
.end method

.method static synthetic access$11600(Lcom/google/protobuf/Internal$IntList;)Lcom/google/protobuf/Internal$IntList;
    .locals 0

    .line 1
    invoke-static {p0}, Lcom/google/protobuf/GeneratedMessageV3;->mutableCopy(Lcom/google/protobuf/Internal$IntList;)Lcom/google/protobuf/Internal$IntList;

    .line 2
    .line 3
    .line 4
    move-result-object p0

    .line 5
    return-object p0
.end method

.method static synthetic access$11700()Lcom/google/protobuf/Internal$IntList;
    .locals 1

    .line 1
    invoke-static {}, Lcom/google/protobuf/GeneratedMessageV3;->emptyIntList()Lcom/google/protobuf/Internal$IntList;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    return-object v0
.end method

.method static synthetic access$11800(Lcom/google/protobuf/ByteString;)V
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

.method static synthetic access$9700()Z
    .locals 1

    .line 1
    sget-boolean v0, Lcom/google/protobuf/GeneratedMessageV3;->alwaysUseFieldBuilders:Z

    .line 2
    .line 3
    return v0
.end method

.method static synthetic access$9800()Lcom/google/protobuf/Internal$IntList;
    .locals 1

    .line 1
    invoke-static {}, Lcom/google/protobuf/GeneratedMessageV3;->emptyIntList()Lcom/google/protobuf/Internal$IntList;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    return-object v0
.end method

.method public static getDefaultInstance()Lcom/wufan/user/service/protobuf/MessageProto$Response;
    .locals 1

    .line 1
    sget-object v0, Lcom/wufan/user/service/protobuf/MessageProto$Response;->DEFAULT_INSTANCE:Lcom/wufan/user/service/protobuf/MessageProto$Response;

    .line 2
    .line 3
    return-object v0
.end method

.method public static final getDescriptor()Lcom/google/protobuf/Descriptors$Descriptor;
    .locals 1

    .line 1
    invoke-static {}, Lcom/wufan/user/service/protobuf/MessageProto;->p()Lcom/google/protobuf/Descriptors$Descriptor;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    return-object v0
.end method

.method public static newBuilder()Lcom/wufan/user/service/protobuf/MessageProto$Response$b;
    .locals 1

    .line 1
    sget-object v0, Lcom/wufan/user/service/protobuf/MessageProto$Response;->DEFAULT_INSTANCE:Lcom/wufan/user/service/protobuf/MessageProto$Response;

    invoke-virtual {v0}, Lcom/wufan/user/service/protobuf/MessageProto$Response;->toBuilder()Lcom/wufan/user/service/protobuf/MessageProto$Response$b;

    move-result-object v0

    return-object v0
.end method

.method public static newBuilder(Lcom/wufan/user/service/protobuf/MessageProto$Response;)Lcom/wufan/user/service/protobuf/MessageProto$Response$b;
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
    sget-object v0, Lcom/wufan/user/service/protobuf/MessageProto$Response;->DEFAULT_INSTANCE:Lcom/wufan/user/service/protobuf/MessageProto$Response;

    invoke-virtual {v0}, Lcom/wufan/user/service/protobuf/MessageProto$Response;->toBuilder()Lcom/wufan/user/service/protobuf/MessageProto$Response$b;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/wufan/user/service/protobuf/MessageProto$Response$b;->mergeFrom(Lcom/wufan/user/service/protobuf/MessageProto$Response;)Lcom/wufan/user/service/protobuf/MessageProto$Response$b;

    move-result-object p0

    return-object p0
.end method

.method public static parseDelimitedFrom(Ljava/io/InputStream;)Lcom/wufan/user/service/protobuf/MessageProto$Response;
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
    sget-object v0, Lcom/wufan/user/service/protobuf/MessageProto$Response;->PARSER:Lcom/google/protobuf/Parser;

    .line 2
    invoke-static {v0, p0}, Lcom/google/protobuf/GeneratedMessageV3;->parseDelimitedWithIOException(Lcom/google/protobuf/Parser;Ljava/io/InputStream;)Lcom/google/protobuf/Message;

    move-result-object p0

    check-cast p0, Lcom/wufan/user/service/protobuf/MessageProto$Response;

    return-object p0
.end method

.method public static parseDelimitedFrom(Ljava/io/InputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/wufan/user/service/protobuf/MessageProto$Response;
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
    sget-object v0, Lcom/wufan/user/service/protobuf/MessageProto$Response;->PARSER:Lcom/google/protobuf/Parser;

    .line 4
    invoke-static {v0, p0, p1}, Lcom/google/protobuf/GeneratedMessageV3;->parseDelimitedWithIOException(Lcom/google/protobuf/Parser;Ljava/io/InputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/Message;

    move-result-object p0

    check-cast p0, Lcom/wufan/user/service/protobuf/MessageProto$Response;

    return-object p0
.end method

.method public static parseFrom(Lcom/google/protobuf/ByteString;)Lcom/wufan/user/service/protobuf/MessageProto$Response;
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
    sget-object v0, Lcom/wufan/user/service/protobuf/MessageProto$Response;->PARSER:Lcom/google/protobuf/Parser;

    invoke-interface {v0, p0}, Lcom/google/protobuf/Parser;->parseFrom(Lcom/google/protobuf/ByteString;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/wufan/user/service/protobuf/MessageProto$Response;

    return-object p0
.end method

.method public static parseFrom(Lcom/google/protobuf/ByteString;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/wufan/user/service/protobuf/MessageProto$Response;
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
    sget-object v0, Lcom/wufan/user/service/protobuf/MessageProto$Response;->PARSER:Lcom/google/protobuf/Parser;

    invoke-interface {v0, p0, p1}, Lcom/google/protobuf/Parser;->parseFrom(Lcom/google/protobuf/ByteString;Lcom/google/protobuf/ExtensionRegistryLite;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/wufan/user/service/protobuf/MessageProto$Response;

    return-object p0
.end method

.method public static parseFrom(Lcom/google/protobuf/CodedInputStream;)Lcom/wufan/user/service/protobuf/MessageProto$Response;
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
    sget-object v0, Lcom/wufan/user/service/protobuf/MessageProto$Response;->PARSER:Lcom/google/protobuf/Parser;

    .line 12
    invoke-static {v0, p0}, Lcom/google/protobuf/GeneratedMessageV3;->parseWithIOException(Lcom/google/protobuf/Parser;Lcom/google/protobuf/CodedInputStream;)Lcom/google/protobuf/Message;

    move-result-object p0

    check-cast p0, Lcom/wufan/user/service/protobuf/MessageProto$Response;

    return-object p0
.end method

.method public static parseFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/wufan/user/service/protobuf/MessageProto$Response;
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
    sget-object v0, Lcom/wufan/user/service/protobuf/MessageProto$Response;->PARSER:Lcom/google/protobuf/Parser;

    .line 14
    invoke-static {v0, p0, p1}, Lcom/google/protobuf/GeneratedMessageV3;->parseWithIOException(Lcom/google/protobuf/Parser;Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/Message;

    move-result-object p0

    check-cast p0, Lcom/wufan/user/service/protobuf/MessageProto$Response;

    return-object p0
.end method

.method public static parseFrom(Ljava/io/InputStream;)Lcom/wufan/user/service/protobuf/MessageProto$Response;
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
    sget-object v0, Lcom/wufan/user/service/protobuf/MessageProto$Response;->PARSER:Lcom/google/protobuf/Parser;

    .line 8
    invoke-static {v0, p0}, Lcom/google/protobuf/GeneratedMessageV3;->parseWithIOException(Lcom/google/protobuf/Parser;Ljava/io/InputStream;)Lcom/google/protobuf/Message;

    move-result-object p0

    check-cast p0, Lcom/wufan/user/service/protobuf/MessageProto$Response;

    return-object p0
.end method

.method public static parseFrom(Ljava/io/InputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/wufan/user/service/protobuf/MessageProto$Response;
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
    sget-object v0, Lcom/wufan/user/service/protobuf/MessageProto$Response;->PARSER:Lcom/google/protobuf/Parser;

    .line 10
    invoke-static {v0, p0, p1}, Lcom/google/protobuf/GeneratedMessageV3;->parseWithIOException(Lcom/google/protobuf/Parser;Ljava/io/InputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/Message;

    move-result-object p0

    check-cast p0, Lcom/wufan/user/service/protobuf/MessageProto$Response;

    return-object p0
.end method

.method public static parseFrom(Ljava/nio/ByteBuffer;)Lcom/wufan/user/service/protobuf/MessageProto$Response;
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
    sget-object v0, Lcom/wufan/user/service/protobuf/MessageProto$Response;->PARSER:Lcom/google/protobuf/Parser;

    invoke-interface {v0, p0}, Lcom/google/protobuf/Parser;->parseFrom(Ljava/nio/ByteBuffer;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/wufan/user/service/protobuf/MessageProto$Response;

    return-object p0
.end method

.method public static parseFrom(Ljava/nio/ByteBuffer;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/wufan/user/service/protobuf/MessageProto$Response;
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
    sget-object v0, Lcom/wufan/user/service/protobuf/MessageProto$Response;->PARSER:Lcom/google/protobuf/Parser;

    invoke-interface {v0, p0, p1}, Lcom/google/protobuf/Parser;->parseFrom(Ljava/nio/ByteBuffer;Lcom/google/protobuf/ExtensionRegistryLite;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/wufan/user/service/protobuf/MessageProto$Response;

    return-object p0
.end method

.method public static parseFrom([B)Lcom/wufan/user/service/protobuf/MessageProto$Response;
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
    sget-object v0, Lcom/wufan/user/service/protobuf/MessageProto$Response;->PARSER:Lcom/google/protobuf/Parser;

    invoke-interface {v0, p0}, Lcom/google/protobuf/Parser;->parseFrom([B)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/wufan/user/service/protobuf/MessageProto$Response;

    return-object p0
.end method

.method public static parseFrom([BLcom/google/protobuf/ExtensionRegistryLite;)Lcom/wufan/user/service/protobuf/MessageProto$Response;
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
    sget-object v0, Lcom/wufan/user/service/protobuf/MessageProto$Response;->PARSER:Lcom/google/protobuf/Parser;

    invoke-interface {v0, p0, p1}, Lcom/google/protobuf/Parser;->parseFrom([BLcom/google/protobuf/ExtensionRegistryLite;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/wufan/user/service/protobuf/MessageProto$Response;

    return-object p0
.end method

.method public static parser()Lcom/google/protobuf/Parser;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/google/protobuf/Parser<",
            "Lcom/wufan/user/service/protobuf/MessageProto$Response;",
            ">;"
        }
    .end annotation

    .line 1
    sget-object v0, Lcom/wufan/user/service/protobuf/MessageProto$Response;->PARSER:Lcom/google/protobuf/Parser;

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
    instance-of v1, p1, Lcom/wufan/user/service/protobuf/MessageProto$Response;

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
    check-cast p1, Lcom/wufan/user/service/protobuf/MessageProto$Response;

    .line 15
    .line 16
    iget v1, p0, Lcom/wufan/user/service/protobuf/MessageProto$Response;->statusCode_:I

    .line 17
    .line 18
    iget v2, p1, Lcom/wufan/user/service/protobuf/MessageProto$Response;->statusCode_:I

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
    invoke-virtual {p0}, Lcom/wufan/user/service/protobuf/MessageProto$Response;->getRequestId()J

    .line 25
    .line 26
    .line 27
    move-result-wide v1

    .line 28
    invoke-virtual {p1}, Lcom/wufan/user/service/protobuf/MessageProto$Response;->getRequestId()J

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
    iget v1, p0, Lcom/wufan/user/service/protobuf/MessageProto$Response;->type_:I

    .line 38
    .line 39
    iget v2, p1, Lcom/wufan/user/service/protobuf/MessageProto$Response;->type_:I

    .line 40
    .line 41
    if-eq v1, v2, :cond_4

    .line 42
    .line 43
    return v3

    .line 44
    :cond_4
    invoke-virtual {p0}, Lcom/wufan/user/service/protobuf/MessageProto$Response;->getMessageInfoList()Ljava/util/List;

    .line 45
    .line 46
    .line 47
    move-result-object v1

    .line 48
    invoke-virtual {p1}, Lcom/wufan/user/service/protobuf/MessageProto$Response;->getMessageInfoList()Ljava/util/List;

    .line 49
    .line 50
    .line 51
    move-result-object v2

    .line 52
    invoke-interface {v1, v2}, Ljava/util/List;->equals(Ljava/lang/Object;)Z

    .line 53
    .line 54
    .line 55
    move-result v1

    .line 56
    if-nez v1, :cond_5

    .line 57
    .line 58
    return v3

    .line 59
    :cond_5
    invoke-virtual {p0}, Lcom/wufan/user/service/protobuf/MessageProto$Response;->getBroadcastUsersList()Ljava/util/List;

    .line 60
    .line 61
    .line 62
    move-result-object v1

    .line 63
    invoke-virtual {p1}, Lcom/wufan/user/service/protobuf/MessageProto$Response;->getBroadcastUsersList()Ljava/util/List;

    .line 64
    .line 65
    .line 66
    move-result-object v2

    .line 67
    invoke-interface {v1, v2}, Ljava/util/List;->equals(Ljava/lang/Object;)Z

    .line 68
    .line 69
    .line 70
    move-result v1

    .line 71
    if-nez v1, :cond_6

    .line 72
    .line 73
    return v3

    .line 74
    :cond_6
    invoke-virtual {p0}, Lcom/wufan/user/service/protobuf/MessageProto$Response;->getError()Ljava/lang/String;

    .line 75
    .line 76
    .line 77
    move-result-object v1

    .line 78
    invoke-virtual {p1}, Lcom/wufan/user/service/protobuf/MessageProto$Response;->getError()Ljava/lang/String;

    .line 79
    .line 80
    .line 81
    move-result-object v2

    .line 82
    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 83
    .line 84
    .line 85
    move-result v1

    .line 86
    if-nez v1, :cond_7

    .line 87
    .line 88
    return v3

    .line 89
    :cond_7
    invoke-virtual {p0}, Lcom/wufan/user/service/protobuf/MessageProto$Response;->hasPong()Z

    .line 90
    .line 91
    .line 92
    move-result v1

    .line 93
    invoke-virtual {p1}, Lcom/wufan/user/service/protobuf/MessageProto$Response;->hasPong()Z

    .line 94
    .line 95
    .line 96
    move-result v2

    .line 97
    if-eq v1, v2, :cond_8

    .line 98
    .line 99
    return v3

    .line 100
    :cond_8
    invoke-virtual {p0}, Lcom/wufan/user/service/protobuf/MessageProto$Response;->hasPong()Z

    .line 101
    .line 102
    .line 103
    move-result v1

    .line 104
    if-eqz v1, :cond_9

    .line 105
    .line 106
    invoke-virtual {p0}, Lcom/wufan/user/service/protobuf/MessageProto$Response;->getPong()Lcom/wufan/user/service/protobuf/MessageProto$Pong;

    .line 107
    .line 108
    .line 109
    move-result-object v1

    .line 110
    invoke-virtual {p1}, Lcom/wufan/user/service/protobuf/MessageProto$Response;->getPong()Lcom/wufan/user/service/protobuf/MessageProto$Pong;

    .line 111
    .line 112
    .line 113
    move-result-object v2

    .line 114
    invoke-virtual {v1, v2}, Lcom/wufan/user/service/protobuf/MessageProto$Pong;->equals(Ljava/lang/Object;)Z

    .line 115
    .line 116
    .line 117
    move-result v1

    .line 118
    if-nez v1, :cond_9

    .line 119
    .line 120
    return v3

    .line 121
    :cond_9
    iget v1, p0, Lcom/wufan/user/service/protobuf/MessageProto$Response;->logicErrorCode_:I

    .line 122
    .line 123
    iget v2, p1, Lcom/wufan/user/service/protobuf/MessageProto$Response;->logicErrorCode_:I

    .line 124
    .line 125
    if-eq v1, v2, :cond_a

    .line 126
    .line 127
    return v3

    .line 128
    :cond_a
    invoke-virtual {p0}, Lcom/wufan/user/service/protobuf/MessageProto$Response;->getOnlinePeopleCount()I

    .line 129
    .line 130
    .line 131
    move-result v1

    .line 132
    invoke-virtual {p1}, Lcom/wufan/user/service/protobuf/MessageProto$Response;->getOnlinePeopleCount()I

    .line 133
    .line 134
    .line 135
    move-result v2

    .line 136
    if-eq v1, v2, :cond_b

    .line 137
    .line 138
    return v3

    .line 139
    :cond_b
    invoke-virtual {p0}, Lcom/wufan/user/service/protobuf/MessageProto$Response;->hasQueueInfo()Z

    .line 140
    .line 141
    .line 142
    move-result v1

    .line 143
    invoke-virtual {p1}, Lcom/wufan/user/service/protobuf/MessageProto$Response;->hasQueueInfo()Z

    .line 144
    .line 145
    .line 146
    move-result v2

    .line 147
    if-eq v1, v2, :cond_c

    .line 148
    .line 149
    return v3

    .line 150
    :cond_c
    invoke-virtual {p0}, Lcom/wufan/user/service/protobuf/MessageProto$Response;->hasQueueInfo()Z

    .line 151
    .line 152
    .line 153
    move-result v1

    .line 154
    if-eqz v1, :cond_d

    .line 155
    .line 156
    invoke-virtual {p0}, Lcom/wufan/user/service/protobuf/MessageProto$Response;->getQueueInfo()Lcom/wufan/user/service/protobuf/MessageProto$QueueInfo;

    .line 157
    .line 158
    .line 159
    move-result-object v1

    .line 160
    invoke-virtual {p1}, Lcom/wufan/user/service/protobuf/MessageProto$Response;->getQueueInfo()Lcom/wufan/user/service/protobuf/MessageProto$QueueInfo;

    .line 161
    .line 162
    .line 163
    move-result-object v2

    .line 164
    invoke-virtual {v1, v2}, Lcom/wufan/user/service/protobuf/MessageProto$QueueInfo;->equals(Ljava/lang/Object;)Z

    .line 165
    .line 166
    .line 167
    move-result v1

    .line 168
    if-nez v1, :cond_d

    .line 169
    .line 170
    return v3

    .line 171
    :cond_d
    invoke-virtual {p0}, Lcom/wufan/user/service/protobuf/MessageProto$Response;->getErrorCode()I

    .line 172
    .line 173
    .line 174
    move-result v1

    .line 175
    invoke-virtual {p1}, Lcom/wufan/user/service/protobuf/MessageProto$Response;->getErrorCode()I

    .line 176
    .line 177
    .line 178
    move-result v2

    .line 179
    if-eq v1, v2, :cond_e

    .line 180
    .line 181
    return v3

    .line 182
    :cond_e
    iget-object v1, p0, Lcom/google/protobuf/GeneratedMessageV3;->unknownFields:Lcom/google/protobuf/UnknownFieldSet;

    .line 183
    .line 184
    iget-object p1, p1, Lcom/google/protobuf/GeneratedMessageV3;->unknownFields:Lcom/google/protobuf/UnknownFieldSet;

    .line 185
    .line 186
    invoke-virtual {v1, p1}, Lcom/google/protobuf/UnknownFieldSet;->equals(Ljava/lang/Object;)Z

    .line 187
    .line 188
    .line 189
    move-result p1

    .line 190
    if-nez p1, :cond_f

    .line 191
    .line 192
    return v3

    .line 193
    :cond_f
    return v0
.end method

.method public getBroadcastUsers(I)I
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
    iget-object v0, p0, Lcom/wufan/user/service/protobuf/MessageProto$Response;->broadcastUsers_:Lcom/google/protobuf/Internal$IntList;

    .line 2
    .line 3
    invoke-interface {v0, p1}, Lcom/google/protobuf/Internal$IntList;->getInt(I)I

    .line 4
    .line 5
    .line 6
    move-result p1

    .line 7
    return p1
.end method

.method public getBroadcastUsersCount()I
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/wufan/user/service/protobuf/MessageProto$Response;->broadcastUsers_:Lcom/google/protobuf/Internal$IntList;

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

.method public getBroadcastUsersList()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/wufan/user/service/protobuf/MessageProto$Response;->broadcastUsers_:Lcom/google/protobuf/Internal$IntList;

    .line 2
    .line 3
    return-object v0
.end method

.method public bridge synthetic getDefaultInstanceForType()Lcom/google/protobuf/Message;
    .locals 1

    .line 1
    invoke-virtual {p0}, Lcom/wufan/user/service/protobuf/MessageProto$Response;->getDefaultInstanceForType()Lcom/wufan/user/service/protobuf/MessageProto$Response;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic getDefaultInstanceForType()Lcom/google/protobuf/MessageLite;
    .locals 1

    .line 2
    invoke-virtual {p0}, Lcom/wufan/user/service/protobuf/MessageProto$Response;->getDefaultInstanceForType()Lcom/wufan/user/service/protobuf/MessageProto$Response;

    move-result-object v0

    return-object v0
.end method

.method public getDefaultInstanceForType()Lcom/wufan/user/service/protobuf/MessageProto$Response;
    .locals 1

    .line 3
    sget-object v0, Lcom/wufan/user/service/protobuf/MessageProto$Response;->DEFAULT_INSTANCE:Lcom/wufan/user/service/protobuf/MessageProto$Response;

    return-object v0
.end method

.method public getError()Ljava/lang/String;
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/wufan/user/service/protobuf/MessageProto$Response;->error_:Ljava/lang/Object;

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
    iput-object v0, p0, Lcom/wufan/user/service/protobuf/MessageProto$Response;->error_:Ljava/lang/Object;

    .line 17
    .line 18
    return-object v0
.end method

.method public getErrorBytes()Lcom/google/protobuf/ByteString;
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/wufan/user/service/protobuf/MessageProto$Response;->error_:Ljava/lang/Object;

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
    iput-object v0, p0, Lcom/wufan/user/service/protobuf/MessageProto$Response;->error_:Ljava/lang/Object;

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

.method public getErrorCode()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/wufan/user/service/protobuf/MessageProto$Response;->errorCode_:I

    .line 2
    .line 3
    return v0
.end method

.method public getLogicErrorCode()Lcom/wufan/user/service/protobuf/MessageProto$Response$LogicErrorCode;
    .locals 1

    .line 1
    iget v0, p0, Lcom/wufan/user/service/protobuf/MessageProto$Response;->logicErrorCode_:I

    .line 2
    .line 3
    invoke-static {v0}, Lcom/wufan/user/service/protobuf/MessageProto$Response$LogicErrorCode;->valueOf(I)Lcom/wufan/user/service/protobuf/MessageProto$Response$LogicErrorCode;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    if-nez v0, :cond_0

    .line 8
    .line 9
    sget-object v0, Lcom/wufan/user/service/protobuf/MessageProto$Response$LogicErrorCode;->UNRECOGNIZED:Lcom/wufan/user/service/protobuf/MessageProto$Response$LogicErrorCode;

    .line 10
    .line 11
    :cond_0
    return-object v0
.end method

.method public getLogicErrorCodeValue()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/wufan/user/service/protobuf/MessageProto$Response;->logicErrorCode_:I

    .line 2
    .line 3
    return v0
.end method

.method public getMessageInfo(I)Lcom/wufan/user/service/protobuf/MessageProto$MessageInfo;
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
    iget-object v0, p0, Lcom/wufan/user/service/protobuf/MessageProto$Response;->messageInfo_:Ljava/util/List;

    .line 2
    .line 3
    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 4
    .line 5
    .line 6
    move-result-object p1

    .line 7
    check-cast p1, Lcom/wufan/user/service/protobuf/MessageProto$MessageInfo;

    .line 8
    .line 9
    return-object p1
.end method

.method public getMessageInfoCount()I
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/wufan/user/service/protobuf/MessageProto$Response;->messageInfo_:Ljava/util/List;

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

.method public getMessageInfoList()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/wufan/user/service/protobuf/MessageProto$MessageInfo;",
            ">;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/wufan/user/service/protobuf/MessageProto$Response;->messageInfo_:Ljava/util/List;

    .line 2
    .line 3
    return-object v0
.end method

.method public getMessageInfoOrBuilder(I)Lcom/wufan/user/service/protobuf/MessageProto$c;
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
    iget-object v0, p0, Lcom/wufan/user/service/protobuf/MessageProto$Response;->messageInfo_:Ljava/util/List;

    .line 2
    .line 3
    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 4
    .line 5
    .line 6
    move-result-object p1

    .line 7
    check-cast p1, Lcom/wufan/user/service/protobuf/MessageProto$c;

    .line 8
    .line 9
    return-object p1
.end method

.method public getMessageInfoOrBuilderList()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "+",
            "Lcom/wufan/user/service/protobuf/MessageProto$c;",
            ">;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/wufan/user/service/protobuf/MessageProto$Response;->messageInfo_:Ljava/util/List;

    .line 2
    .line 3
    return-object v0
.end method

.method public getOnlinePeopleCount()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/wufan/user/service/protobuf/MessageProto$Response;->onlinePeopleCount_:I

    .line 2
    .line 3
    return v0
.end method

.method public getParserForType()Lcom/google/protobuf/Parser;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/google/protobuf/Parser<",
            "Lcom/wufan/user/service/protobuf/MessageProto$Response;",
            ">;"
        }
    .end annotation

    .line 1
    sget-object v0, Lcom/wufan/user/service/protobuf/MessageProto$Response;->PARSER:Lcom/google/protobuf/Parser;

    .line 2
    .line 3
    return-object v0
.end method

.method public getPong()Lcom/wufan/user/service/protobuf/MessageProto$Pong;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/wufan/user/service/protobuf/MessageProto$Response;->pong_:Lcom/wufan/user/service/protobuf/MessageProto$Pong;

    .line 2
    .line 3
    if-nez v0, :cond_0

    .line 4
    .line 5
    invoke-static {}, Lcom/wufan/user/service/protobuf/MessageProto$Pong;->getDefaultInstance()Lcom/wufan/user/service/protobuf/MessageProto$Pong;

    .line 6
    .line 7
    .line 8
    move-result-object v0

    .line 9
    :cond_0
    return-object v0
.end method

.method public getPongOrBuilder()Lcom/wufan/user/service/protobuf/MessageProto$f;
    .locals 1

    .line 1
    invoke-virtual {p0}, Lcom/wufan/user/service/protobuf/MessageProto$Response;->getPong()Lcom/wufan/user/service/protobuf/MessageProto$Pong;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    return-object v0
.end method

.method public getQueueInfo()Lcom/wufan/user/service/protobuf/MessageProto$QueueInfo;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/wufan/user/service/protobuf/MessageProto$Response;->queueInfo_:Lcom/wufan/user/service/protobuf/MessageProto$QueueInfo;

    .line 2
    .line 3
    if-nez v0, :cond_0

    .line 4
    .line 5
    invoke-static {}, Lcom/wufan/user/service/protobuf/MessageProto$QueueInfo;->getDefaultInstance()Lcom/wufan/user/service/protobuf/MessageProto$QueueInfo;

    .line 6
    .line 7
    .line 8
    move-result-object v0

    .line 9
    :cond_0
    return-object v0
.end method

.method public getQueueInfoOrBuilder()Lcom/wufan/user/service/protobuf/MessageProto$h;
    .locals 1

    .line 1
    invoke-virtual {p0}, Lcom/wufan/user/service/protobuf/MessageProto$Response;->getQueueInfo()Lcom/wufan/user/service/protobuf/MessageProto$QueueInfo;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    return-object v0
.end method

.method public getRequestId()J
    .locals 2

    .line 1
    iget-wide v0, p0, Lcom/wufan/user/service/protobuf/MessageProto$Response;->requestId_:J

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
    iget v0, p0, Lcom/wufan/user/service/protobuf/MessageProto$Response;->statusCode_:I

    .line 8
    .line 9
    sget-object v1, Lcom/wufan/user/service/protobuf/MessageProto$Response$StatusCode;->UNDEFINED_CODE:Lcom/wufan/user/service/protobuf/MessageProto$Response$StatusCode;

    .line 10
    .line 11
    invoke-virtual {v1}, Lcom/wufan/user/service/protobuf/MessageProto$Response$StatusCode;->getNumber()I

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
    iget v0, p0, Lcom/wufan/user/service/protobuf/MessageProto$Response;->statusCode_:I

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
    iget-wide v3, p0, Lcom/wufan/user/service/protobuf/MessageProto$Response;->requestId_:J

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
    iget v1, p0, Lcom/wufan/user/service/protobuf/MessageProto$Response;->type_:I

    .line 43
    .line 44
    sget-object v3, Lcom/wufan/user/service/protobuf/MessageProto$Response$ProtoType;->UNDEFINED_RESPONSE:Lcom/wufan/user/service/protobuf/MessageProto$Response$ProtoType;

    .line 45
    .line 46
    invoke-virtual {v3}, Lcom/wufan/user/service/protobuf/MessageProto$Response$ProtoType;->getNumber()I

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
    iget v3, p0, Lcom/wufan/user/service/protobuf/MessageProto$Response;->type_:I

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
    const/4 v1, 0x0

    .line 61
    :goto_1
    iget-object v3, p0, Lcom/wufan/user/service/protobuf/MessageProto$Response;->messageInfo_:Ljava/util/List;

    .line 62
    .line 63
    invoke-interface {v3}, Ljava/util/List;->size()I

    .line 64
    .line 65
    .line 66
    move-result v3

    .line 67
    if-ge v1, v3, :cond_4

    .line 68
    .line 69
    iget-object v3, p0, Lcom/wufan/user/service/protobuf/MessageProto$Response;->messageInfo_:Ljava/util/List;

    .line 70
    .line 71
    invoke-interface {v3, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 72
    .line 73
    .line 74
    move-result-object v3

    .line 75
    check-cast v3, Lcom/google/protobuf/MessageLite;

    .line 76
    .line 77
    const/4 v4, 0x4

    .line 78
    invoke-static {v4, v3}, Lcom/google/protobuf/CodedOutputStream;->computeMessageSize(ILcom/google/protobuf/MessageLite;)I

    .line 79
    .line 80
    .line 81
    move-result v3

    .line 82
    add-int/2addr v0, v3

    .line 83
    add-int/lit8 v1, v1, 0x1

    .line 84
    .line 85
    goto :goto_1

    .line 86
    :cond_4
    const/4 v1, 0x0

    .line 87
    :goto_2
    iget-object v3, p0, Lcom/wufan/user/service/protobuf/MessageProto$Response;->broadcastUsers_:Lcom/google/protobuf/Internal$IntList;

    .line 88
    .line 89
    invoke-interface {v3}, Ljava/util/List;->size()I

    .line 90
    .line 91
    .line 92
    move-result v3

    .line 93
    if-ge v2, v3, :cond_5

    .line 94
    .line 95
    iget-object v3, p0, Lcom/wufan/user/service/protobuf/MessageProto$Response;->broadcastUsers_:Lcom/google/protobuf/Internal$IntList;

    .line 96
    .line 97
    invoke-interface {v3, v2}, Lcom/google/protobuf/Internal$IntList;->getInt(I)I

    .line 98
    .line 99
    .line 100
    move-result v3

    .line 101
    invoke-static {v3}, Lcom/google/protobuf/CodedOutputStream;->computeInt32SizeNoTag(I)I

    .line 102
    .line 103
    .line 104
    move-result v3

    .line 105
    add-int/2addr v1, v3

    .line 106
    add-int/lit8 v2, v2, 0x1

    .line 107
    .line 108
    goto :goto_2

    .line 109
    :cond_5
    add-int/2addr v0, v1

    .line 110
    invoke-virtual {p0}, Lcom/wufan/user/service/protobuf/MessageProto$Response;->getBroadcastUsersList()Ljava/util/List;

    .line 111
    .line 112
    .line 113
    move-result-object v2

    .line 114
    invoke-interface {v2}, Ljava/util/List;->isEmpty()Z

    .line 115
    .line 116
    .line 117
    move-result v2

    .line 118
    if-nez v2, :cond_6

    .line 119
    .line 120
    add-int/lit8 v0, v0, 0x1

    .line 121
    .line 122
    invoke-static {v1}, Lcom/google/protobuf/CodedOutputStream;->computeInt32SizeNoTag(I)I

    .line 123
    .line 124
    .line 125
    move-result v2

    .line 126
    add-int/2addr v0, v2

    .line 127
    :cond_6
    iput v1, p0, Lcom/wufan/user/service/protobuf/MessageProto$Response;->broadcastUsersMemoizedSerializedSize:I

    .line 128
    .line 129
    invoke-virtual {p0}, Lcom/wufan/user/service/protobuf/MessageProto$Response;->getErrorBytes()Lcom/google/protobuf/ByteString;

    .line 130
    .line 131
    .line 132
    move-result-object v1

    .line 133
    invoke-virtual {v1}, Lcom/google/protobuf/ByteString;->isEmpty()Z

    .line 134
    .line 135
    .line 136
    move-result v1

    .line 137
    if-nez v1, :cond_7

    .line 138
    .line 139
    const/4 v1, 0x6

    .line 140
    iget-object v2, p0, Lcom/wufan/user/service/protobuf/MessageProto$Response;->error_:Ljava/lang/Object;

    .line 141
    .line 142
    invoke-static {v1, v2}, Lcom/google/protobuf/GeneratedMessageV3;->computeStringSize(ILjava/lang/Object;)I

    .line 143
    .line 144
    .line 145
    move-result v1

    .line 146
    add-int/2addr v0, v1

    .line 147
    :cond_7
    iget-object v1, p0, Lcom/wufan/user/service/protobuf/MessageProto$Response;->pong_:Lcom/wufan/user/service/protobuf/MessageProto$Pong;

    .line 148
    .line 149
    if-eqz v1, :cond_8

    .line 150
    .line 151
    const/4 v1, 0x7

    .line 152
    invoke-virtual {p0}, Lcom/wufan/user/service/protobuf/MessageProto$Response;->getPong()Lcom/wufan/user/service/protobuf/MessageProto$Pong;

    .line 153
    .line 154
    .line 155
    move-result-object v2

    .line 156
    invoke-static {v1, v2}, Lcom/google/protobuf/CodedOutputStream;->computeMessageSize(ILcom/google/protobuf/MessageLite;)I

    .line 157
    .line 158
    .line 159
    move-result v1

    .line 160
    add-int/2addr v0, v1

    .line 161
    :cond_8
    iget v1, p0, Lcom/wufan/user/service/protobuf/MessageProto$Response;->logicErrorCode_:I

    .line 162
    .line 163
    sget-object v2, Lcom/wufan/user/service/protobuf/MessageProto$Response$LogicErrorCode;->UNDEFINED_ERROR_CODE:Lcom/wufan/user/service/protobuf/MessageProto$Response$LogicErrorCode;

    .line 164
    .line 165
    invoke-virtual {v2}, Lcom/wufan/user/service/protobuf/MessageProto$Response$LogicErrorCode;->getNumber()I

    .line 166
    .line 167
    .line 168
    move-result v2

    .line 169
    if-eq v1, v2, :cond_9

    .line 170
    .line 171
    const/16 v1, 0x8

    .line 172
    .line 173
    iget v2, p0, Lcom/wufan/user/service/protobuf/MessageProto$Response;->logicErrorCode_:I

    .line 174
    .line 175
    invoke-static {v1, v2}, Lcom/google/protobuf/CodedOutputStream;->computeEnumSize(II)I

    .line 176
    .line 177
    .line 178
    move-result v1

    .line 179
    add-int/2addr v0, v1

    .line 180
    :cond_9
    iget v1, p0, Lcom/wufan/user/service/protobuf/MessageProto$Response;->onlinePeopleCount_:I

    .line 181
    .line 182
    if-eqz v1, :cond_a

    .line 183
    .line 184
    const/16 v2, 0x9

    .line 185
    .line 186
    invoke-static {v2, v1}, Lcom/google/protobuf/CodedOutputStream;->computeInt32Size(II)I

    .line 187
    .line 188
    .line 189
    move-result v1

    .line 190
    add-int/2addr v0, v1

    .line 191
    :cond_a
    iget-object v1, p0, Lcom/wufan/user/service/protobuf/MessageProto$Response;->queueInfo_:Lcom/wufan/user/service/protobuf/MessageProto$QueueInfo;

    .line 192
    .line 193
    if-eqz v1, :cond_b

    .line 194
    .line 195
    const/16 v1, 0xa

    .line 196
    .line 197
    invoke-virtual {p0}, Lcom/wufan/user/service/protobuf/MessageProto$Response;->getQueueInfo()Lcom/wufan/user/service/protobuf/MessageProto$QueueInfo;

    .line 198
    .line 199
    .line 200
    move-result-object v2

    .line 201
    invoke-static {v1, v2}, Lcom/google/protobuf/CodedOutputStream;->computeMessageSize(ILcom/google/protobuf/MessageLite;)I

    .line 202
    .line 203
    .line 204
    move-result v1

    .line 205
    add-int/2addr v0, v1

    .line 206
    :cond_b
    iget v1, p0, Lcom/wufan/user/service/protobuf/MessageProto$Response;->errorCode_:I

    .line 207
    .line 208
    if-eqz v1, :cond_c

    .line 209
    .line 210
    const/16 v2, 0xb

    .line 211
    .line 212
    invoke-static {v2, v1}, Lcom/google/protobuf/CodedOutputStream;->computeInt32Size(II)I

    .line 213
    .line 214
    .line 215
    move-result v1

    .line 216
    add-int/2addr v0, v1

    .line 217
    :cond_c
    iget-object v1, p0, Lcom/google/protobuf/GeneratedMessageV3;->unknownFields:Lcom/google/protobuf/UnknownFieldSet;

    .line 218
    .line 219
    invoke-virtual {v1}, Lcom/google/protobuf/UnknownFieldSet;->getSerializedSize()I

    .line 220
    .line 221
    .line 222
    move-result v1

    .line 223
    add-int/2addr v0, v1

    .line 224
    iput v0, p0, Lcom/google/protobuf/AbstractMessage;->memoizedSize:I

    .line 225
    .line 226
    return v0
.end method

.method public getStatusCode()Lcom/wufan/user/service/protobuf/MessageProto$Response$StatusCode;
    .locals 1

    .line 1
    iget v0, p0, Lcom/wufan/user/service/protobuf/MessageProto$Response;->statusCode_:I

    .line 2
    .line 3
    invoke-static {v0}, Lcom/wufan/user/service/protobuf/MessageProto$Response$StatusCode;->valueOf(I)Lcom/wufan/user/service/protobuf/MessageProto$Response$StatusCode;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    if-nez v0, :cond_0

    .line 8
    .line 9
    sget-object v0, Lcom/wufan/user/service/protobuf/MessageProto$Response$StatusCode;->UNRECOGNIZED:Lcom/wufan/user/service/protobuf/MessageProto$Response$StatusCode;

    .line 10
    .line 11
    :cond_0
    return-object v0
.end method

.method public getStatusCodeValue()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/wufan/user/service/protobuf/MessageProto$Response;->statusCode_:I

    .line 2
    .line 3
    return v0
.end method

.method public getType()Lcom/wufan/user/service/protobuf/MessageProto$Response$ProtoType;
    .locals 1

    .line 1
    iget v0, p0, Lcom/wufan/user/service/protobuf/MessageProto$Response;->type_:I

    .line 2
    .line 3
    invoke-static {v0}, Lcom/wufan/user/service/protobuf/MessageProto$Response$ProtoType;->valueOf(I)Lcom/wufan/user/service/protobuf/MessageProto$Response$ProtoType;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    if-nez v0, :cond_0

    .line 8
    .line 9
    sget-object v0, Lcom/wufan/user/service/protobuf/MessageProto$Response$ProtoType;->UNRECOGNIZED:Lcom/wufan/user/service/protobuf/MessageProto$Response$ProtoType;

    .line 10
    .line 11
    :cond_0
    return-object v0
.end method

.method public getTypeValue()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/wufan/user/service/protobuf/MessageProto$Response;->type_:I

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

.method public hasPong()Z
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/wufan/user/service/protobuf/MessageProto$Response;->pong_:Lcom/wufan/user/service/protobuf/MessageProto$Pong;

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

.method public hasQueueInfo()Z
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/wufan/user/service/protobuf/MessageProto$Response;->queueInfo_:Lcom/wufan/user/service/protobuf/MessageProto$QueueInfo;

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
    invoke-static {}, Lcom/wufan/user/service/protobuf/MessageProto$Response;->getDescriptor()Lcom/google/protobuf/Descriptors$Descriptor;

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
    iget v0, p0, Lcom/wufan/user/service/protobuf/MessageProto$Response;->statusCode_:I

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
    invoke-virtual {p0}, Lcom/wufan/user/service/protobuf/MessageProto$Response;->getRequestId()J

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
    iget v0, p0, Lcom/wufan/user/service/protobuf/MessageProto$Response;->type_:I

    .line 48
    .line 49
    add-int/2addr v1, v0

    .line 50
    invoke-virtual {p0}, Lcom/wufan/user/service/protobuf/MessageProto$Response;->getMessageInfoCount()I

    .line 51
    .line 52
    .line 53
    move-result v0

    .line 54
    if-lez v0, :cond_1

    .line 55
    .line 56
    mul-int/lit8 v1, v1, 0x25

    .line 57
    .line 58
    add-int/lit8 v1, v1, 0x4

    .line 59
    .line 60
    mul-int/lit8 v1, v1, 0x35

    .line 61
    .line 62
    invoke-virtual {p0}, Lcom/wufan/user/service/protobuf/MessageProto$Response;->getMessageInfoList()Ljava/util/List;

    .line 63
    .line 64
    .line 65
    move-result-object v0

    .line 66
    invoke-interface {v0}, Ljava/util/List;->hashCode()I

    .line 67
    .line 68
    .line 69
    move-result v0

    .line 70
    add-int/2addr v1, v0

    .line 71
    :cond_1
    invoke-virtual {p0}, Lcom/wufan/user/service/protobuf/MessageProto$Response;->getBroadcastUsersCount()I

    .line 72
    .line 73
    .line 74
    move-result v0

    .line 75
    if-lez v0, :cond_2

    .line 76
    .line 77
    mul-int/lit8 v1, v1, 0x25

    .line 78
    .line 79
    add-int/lit8 v1, v1, 0x5

    .line 80
    .line 81
    mul-int/lit8 v1, v1, 0x35

    .line 82
    .line 83
    invoke-virtual {p0}, Lcom/wufan/user/service/protobuf/MessageProto$Response;->getBroadcastUsersList()Ljava/util/List;

    .line 84
    .line 85
    .line 86
    move-result-object v0

    .line 87
    invoke-interface {v0}, Ljava/util/List;->hashCode()I

    .line 88
    .line 89
    .line 90
    move-result v0

    .line 91
    add-int/2addr v1, v0

    .line 92
    :cond_2
    mul-int/lit8 v1, v1, 0x25

    .line 93
    .line 94
    add-int/lit8 v1, v1, 0x6

    .line 95
    .line 96
    mul-int/lit8 v1, v1, 0x35

    .line 97
    .line 98
    invoke-virtual {p0}, Lcom/wufan/user/service/protobuf/MessageProto$Response;->getError()Ljava/lang/String;

    .line 99
    .line 100
    .line 101
    move-result-object v0

    .line 102
    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    .line 103
    .line 104
    .line 105
    move-result v0

    .line 106
    add-int/2addr v1, v0

    .line 107
    invoke-virtual {p0}, Lcom/wufan/user/service/protobuf/MessageProto$Response;->hasPong()Z

    .line 108
    .line 109
    .line 110
    move-result v0

    .line 111
    if-eqz v0, :cond_3

    .line 112
    .line 113
    mul-int/lit8 v1, v1, 0x25

    .line 114
    .line 115
    add-int/lit8 v1, v1, 0x7

    .line 116
    .line 117
    mul-int/lit8 v1, v1, 0x35

    .line 118
    .line 119
    invoke-virtual {p0}, Lcom/wufan/user/service/protobuf/MessageProto$Response;->getPong()Lcom/wufan/user/service/protobuf/MessageProto$Pong;

    .line 120
    .line 121
    .line 122
    move-result-object v0

    .line 123
    invoke-virtual {v0}, Lcom/wufan/user/service/protobuf/MessageProto$Pong;->hashCode()I

    .line 124
    .line 125
    .line 126
    move-result v0

    .line 127
    add-int/2addr v1, v0

    .line 128
    :cond_3
    mul-int/lit8 v1, v1, 0x25

    .line 129
    .line 130
    add-int/lit8 v1, v1, 0x8

    .line 131
    .line 132
    mul-int/lit8 v1, v1, 0x35

    .line 133
    .line 134
    iget v0, p0, Lcom/wufan/user/service/protobuf/MessageProto$Response;->logicErrorCode_:I

    .line 135
    .line 136
    add-int/2addr v1, v0

    .line 137
    mul-int/lit8 v1, v1, 0x25

    .line 138
    .line 139
    add-int/lit8 v1, v1, 0x9

    .line 140
    .line 141
    mul-int/lit8 v1, v1, 0x35

    .line 142
    .line 143
    invoke-virtual {p0}, Lcom/wufan/user/service/protobuf/MessageProto$Response;->getOnlinePeopleCount()I

    .line 144
    .line 145
    .line 146
    move-result v0

    .line 147
    add-int/2addr v1, v0

    .line 148
    invoke-virtual {p0}, Lcom/wufan/user/service/protobuf/MessageProto$Response;->hasQueueInfo()Z

    .line 149
    .line 150
    .line 151
    move-result v0

    .line 152
    if-eqz v0, :cond_4

    .line 153
    .line 154
    mul-int/lit8 v1, v1, 0x25

    .line 155
    .line 156
    add-int/lit8 v1, v1, 0xa

    .line 157
    .line 158
    mul-int/lit8 v1, v1, 0x35

    .line 159
    .line 160
    invoke-virtual {p0}, Lcom/wufan/user/service/protobuf/MessageProto$Response;->getQueueInfo()Lcom/wufan/user/service/protobuf/MessageProto$QueueInfo;

    .line 161
    .line 162
    .line 163
    move-result-object v0

    .line 164
    invoke-virtual {v0}, Lcom/wufan/user/service/protobuf/MessageProto$QueueInfo;->hashCode()I

    .line 165
    .line 166
    .line 167
    move-result v0

    .line 168
    add-int/2addr v1, v0

    .line 169
    :cond_4
    mul-int/lit8 v1, v1, 0x25

    .line 170
    .line 171
    add-int/lit8 v1, v1, 0xb

    .line 172
    .line 173
    mul-int/lit8 v1, v1, 0x35

    .line 174
    .line 175
    invoke-virtual {p0}, Lcom/wufan/user/service/protobuf/MessageProto$Response;->getErrorCode()I

    .line 176
    .line 177
    .line 178
    move-result v0

    .line 179
    add-int/2addr v1, v0

    .line 180
    mul-int/lit8 v1, v1, 0x1d

    .line 181
    .line 182
    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageV3;->unknownFields:Lcom/google/protobuf/UnknownFieldSet;

    .line 183
    .line 184
    invoke-virtual {v0}, Lcom/google/protobuf/UnknownFieldSet;->hashCode()I

    .line 185
    .line 186
    .line 187
    move-result v0

    .line 188
    add-int/2addr v1, v0

    .line 189
    iput v1, p0, Lcom/google/protobuf/AbstractMessageLite;->memoizedHashCode:I

    .line 190
    .line 191
    return v1
.end method

.method protected internalGetFieldAccessorTable()Lcom/google/protobuf/GeneratedMessageV3$FieldAccessorTable;
    .locals 3

    .line 1
    invoke-static {}, Lcom/wufan/user/service/protobuf/MessageProto;->q()Lcom/google/protobuf/GeneratedMessageV3$FieldAccessorTable;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    const-class v1, Lcom/wufan/user/service/protobuf/MessageProto$Response;

    .line 6
    .line 7
    const-class v2, Lcom/wufan/user/service/protobuf/MessageProto$Response$b;

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
    iget-byte v0, p0, Lcom/wufan/user/service/protobuf/MessageProto$Response;->memoizedIsInitialized:B

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
    iput-byte v1, p0, Lcom/wufan/user/service/protobuf/MessageProto$Response;->memoizedIsInitialized:B

    .line 12
    .line 13
    return v1
.end method

.method public bridge synthetic newBuilderForType()Lcom/google/protobuf/Message$Builder;
    .locals 1

    .line 1
    invoke-virtual {p0}, Lcom/wufan/user/service/protobuf/MessageProto$Response;->newBuilderForType()Lcom/wufan/user/service/protobuf/MessageProto$Response$b;

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
    invoke-virtual {p0, p1}, Lcom/wufan/user/service/protobuf/MessageProto$Response;->newBuilderForType(Lcom/google/protobuf/GeneratedMessageV3$BuilderParent;)Lcom/wufan/user/service/protobuf/MessageProto$Response$b;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic newBuilderForType()Lcom/google/protobuf/MessageLite$Builder;
    .locals 1

    .line 3
    invoke-virtual {p0}, Lcom/wufan/user/service/protobuf/MessageProto$Response;->newBuilderForType()Lcom/wufan/user/service/protobuf/MessageProto$Response$b;

    move-result-object v0

    return-object v0
.end method

.method public newBuilderForType()Lcom/wufan/user/service/protobuf/MessageProto$Response$b;
    .locals 1

    .line 4
    invoke-static {}, Lcom/wufan/user/service/protobuf/MessageProto$Response;->newBuilder()Lcom/wufan/user/service/protobuf/MessageProto$Response$b;

    move-result-object v0

    return-object v0
.end method

.method protected newBuilderForType(Lcom/google/protobuf/GeneratedMessageV3$BuilderParent;)Lcom/wufan/user/service/protobuf/MessageProto$Response$b;
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
    new-instance v0, Lcom/wufan/user/service/protobuf/MessageProto$Response$b;

    const/4 v1, 0x0

    invoke-direct {v0, p1, v1}, Lcom/wufan/user/service/protobuf/MessageProto$Response$b;-><init>(Lcom/google/protobuf/GeneratedMessageV3$BuilderParent;Lcom/wufan/user/service/protobuf/MessageProto$a;)V

    return-object v0
.end method

.method public bridge synthetic toBuilder()Lcom/google/protobuf/Message$Builder;
    .locals 1

    .line 1
    invoke-virtual {p0}, Lcom/wufan/user/service/protobuf/MessageProto$Response;->toBuilder()Lcom/wufan/user/service/protobuf/MessageProto$Response$b;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic toBuilder()Lcom/google/protobuf/MessageLite$Builder;
    .locals 1

    .line 2
    invoke-virtual {p0}, Lcom/wufan/user/service/protobuf/MessageProto$Response;->toBuilder()Lcom/wufan/user/service/protobuf/MessageProto$Response$b;

    move-result-object v0

    return-object v0
.end method

.method public toBuilder()Lcom/wufan/user/service/protobuf/MessageProto$Response$b;
    .locals 2

    .line 3
    sget-object v0, Lcom/wufan/user/service/protobuf/MessageProto$Response;->DEFAULT_INSTANCE:Lcom/wufan/user/service/protobuf/MessageProto$Response;

    const/4 v1, 0x0

    if-ne p0, v0, :cond_0

    .line 4
    new-instance v0, Lcom/wufan/user/service/protobuf/MessageProto$Response$b;

    invoke-direct {v0, v1}, Lcom/wufan/user/service/protobuf/MessageProto$Response$b;-><init>(Lcom/wufan/user/service/protobuf/MessageProto$a;)V

    goto :goto_0

    :cond_0
    new-instance v0, Lcom/wufan/user/service/protobuf/MessageProto$Response$b;

    invoke-direct {v0, v1}, Lcom/wufan/user/service/protobuf/MessageProto$Response$b;-><init>(Lcom/wufan/user/service/protobuf/MessageProto$a;)V

    invoke-virtual {v0, p0}, Lcom/wufan/user/service/protobuf/MessageProto$Response$b;->mergeFrom(Lcom/wufan/user/service/protobuf/MessageProto$Response;)Lcom/wufan/user/service/protobuf/MessageProto$Response$b;

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
    invoke-virtual {p0}, Lcom/wufan/user/service/protobuf/MessageProto$Response;->getSerializedSize()I

    .line 2
    .line 3
    .line 4
    iget v0, p0, Lcom/wufan/user/service/protobuf/MessageProto$Response;->statusCode_:I

    .line 5
    .line 6
    sget-object v1, Lcom/wufan/user/service/protobuf/MessageProto$Response$StatusCode;->UNDEFINED_CODE:Lcom/wufan/user/service/protobuf/MessageProto$Response$StatusCode;

    .line 7
    .line 8
    invoke-virtual {v1}, Lcom/wufan/user/service/protobuf/MessageProto$Response$StatusCode;->getNumber()I

    .line 9
    .line 10
    .line 11
    move-result v1

    .line 12
    if-eq v0, v1, :cond_0

    .line 13
    .line 14
    iget v0, p0, Lcom/wufan/user/service/protobuf/MessageProto$Response;->statusCode_:I

    .line 15
    .line 16
    const/4 v1, 0x1

    .line 17
    invoke-virtual {p1, v1, v0}, Lcom/google/protobuf/CodedOutputStream;->writeEnum(II)V

    .line 18
    .line 19
    .line 20
    :cond_0
    iget-wide v0, p0, Lcom/wufan/user/service/protobuf/MessageProto$Response;->requestId_:J

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
    const/4 v2, 0x2

    .line 29
    invoke-virtual {p1, v2, v0, v1}, Lcom/google/protobuf/CodedOutputStream;->writeInt64(IJ)V

    .line 30
    .line 31
    .line 32
    :cond_1
    iget v0, p0, Lcom/wufan/user/service/protobuf/MessageProto$Response;->type_:I

    .line 33
    .line 34
    sget-object v1, Lcom/wufan/user/service/protobuf/MessageProto$Response$ProtoType;->UNDEFINED_RESPONSE:Lcom/wufan/user/service/protobuf/MessageProto$Response$ProtoType;

    .line 35
    .line 36
    invoke-virtual {v1}, Lcom/wufan/user/service/protobuf/MessageProto$Response$ProtoType;->getNumber()I

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
    iget v1, p0, Lcom/wufan/user/service/protobuf/MessageProto$Response;->type_:I

    .line 44
    .line 45
    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/CodedOutputStream;->writeEnum(II)V

    .line 46
    .line 47
    .line 48
    :cond_2
    const/4 v0, 0x0

    .line 49
    const/4 v1, 0x0

    .line 50
    :goto_0
    iget-object v2, p0, Lcom/wufan/user/service/protobuf/MessageProto$Response;->messageInfo_:Ljava/util/List;

    .line 51
    .line 52
    invoke-interface {v2}, Ljava/util/List;->size()I

    .line 53
    .line 54
    .line 55
    move-result v2

    .line 56
    if-ge v1, v2, :cond_3

    .line 57
    .line 58
    iget-object v2, p0, Lcom/wufan/user/service/protobuf/MessageProto$Response;->messageInfo_:Ljava/util/List;

    .line 59
    .line 60
    invoke-interface {v2, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 61
    .line 62
    .line 63
    move-result-object v2

    .line 64
    check-cast v2, Lcom/google/protobuf/MessageLite;

    .line 65
    .line 66
    const/4 v3, 0x4

    .line 67
    invoke-virtual {p1, v3, v2}, Lcom/google/protobuf/CodedOutputStream;->writeMessage(ILcom/google/protobuf/MessageLite;)V

    .line 68
    .line 69
    .line 70
    add-int/lit8 v1, v1, 0x1

    .line 71
    .line 72
    goto :goto_0

    .line 73
    :cond_3
    invoke-virtual {p0}, Lcom/wufan/user/service/protobuf/MessageProto$Response;->getBroadcastUsersList()Ljava/util/List;

    .line 74
    .line 75
    .line 76
    move-result-object v1

    .line 77
    invoke-interface {v1}, Ljava/util/List;->size()I

    .line 78
    .line 79
    .line 80
    move-result v1

    .line 81
    if-lez v1, :cond_4

    .line 82
    .line 83
    const/16 v1, 0x2a

    .line 84
    .line 85
    invoke-virtual {p1, v1}, Lcom/google/protobuf/CodedOutputStream;->writeUInt32NoTag(I)V

    .line 86
    .line 87
    .line 88
    iget v1, p0, Lcom/wufan/user/service/protobuf/MessageProto$Response;->broadcastUsersMemoizedSerializedSize:I

    .line 89
    .line 90
    invoke-virtual {p1, v1}, Lcom/google/protobuf/CodedOutputStream;->writeUInt32NoTag(I)V

    .line 91
    .line 92
    .line 93
    :cond_4
    :goto_1
    iget-object v1, p0, Lcom/wufan/user/service/protobuf/MessageProto$Response;->broadcastUsers_:Lcom/google/protobuf/Internal$IntList;

    .line 94
    .line 95
    invoke-interface {v1}, Ljava/util/List;->size()I

    .line 96
    .line 97
    .line 98
    move-result v1

    .line 99
    if-ge v0, v1, :cond_5

    .line 100
    .line 101
    iget-object v1, p0, Lcom/wufan/user/service/protobuf/MessageProto$Response;->broadcastUsers_:Lcom/google/protobuf/Internal$IntList;

    .line 102
    .line 103
    invoke-interface {v1, v0}, Lcom/google/protobuf/Internal$IntList;->getInt(I)I

    .line 104
    .line 105
    .line 106
    move-result v1

    .line 107
    invoke-virtual {p1, v1}, Lcom/google/protobuf/CodedOutputStream;->writeInt32NoTag(I)V

    .line 108
    .line 109
    .line 110
    add-int/lit8 v0, v0, 0x1

    .line 111
    .line 112
    goto :goto_1

    .line 113
    :cond_5
    invoke-virtual {p0}, Lcom/wufan/user/service/protobuf/MessageProto$Response;->getErrorBytes()Lcom/google/protobuf/ByteString;

    .line 114
    .line 115
    .line 116
    move-result-object v0

    .line 117
    invoke-virtual {v0}, Lcom/google/protobuf/ByteString;->isEmpty()Z

    .line 118
    .line 119
    .line 120
    move-result v0

    .line 121
    if-nez v0, :cond_6

    .line 122
    .line 123
    const/4 v0, 0x6

    .line 124
    iget-object v1, p0, Lcom/wufan/user/service/protobuf/MessageProto$Response;->error_:Ljava/lang/Object;

    .line 125
    .line 126
    invoke-static {p1, v0, v1}, Lcom/google/protobuf/GeneratedMessageV3;->writeString(Lcom/google/protobuf/CodedOutputStream;ILjava/lang/Object;)V

    .line 127
    .line 128
    .line 129
    :cond_6
    iget-object v0, p0, Lcom/wufan/user/service/protobuf/MessageProto$Response;->pong_:Lcom/wufan/user/service/protobuf/MessageProto$Pong;

    .line 130
    .line 131
    if-eqz v0, :cond_7

    .line 132
    .line 133
    const/4 v0, 0x7

    .line 134
    invoke-virtual {p0}, Lcom/wufan/user/service/protobuf/MessageProto$Response;->getPong()Lcom/wufan/user/service/protobuf/MessageProto$Pong;

    .line 135
    .line 136
    .line 137
    move-result-object v1

    .line 138
    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/CodedOutputStream;->writeMessage(ILcom/google/protobuf/MessageLite;)V

    .line 139
    .line 140
    .line 141
    :cond_7
    iget v0, p0, Lcom/wufan/user/service/protobuf/MessageProto$Response;->logicErrorCode_:I

    .line 142
    .line 143
    sget-object v1, Lcom/wufan/user/service/protobuf/MessageProto$Response$LogicErrorCode;->UNDEFINED_ERROR_CODE:Lcom/wufan/user/service/protobuf/MessageProto$Response$LogicErrorCode;

    .line 144
    .line 145
    invoke-virtual {v1}, Lcom/wufan/user/service/protobuf/MessageProto$Response$LogicErrorCode;->getNumber()I

    .line 146
    .line 147
    .line 148
    move-result v1

    .line 149
    if-eq v0, v1, :cond_8

    .line 150
    .line 151
    const/16 v0, 0x8

    .line 152
    .line 153
    iget v1, p0, Lcom/wufan/user/service/protobuf/MessageProto$Response;->logicErrorCode_:I

    .line 154
    .line 155
    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/CodedOutputStream;->writeEnum(II)V

    .line 156
    .line 157
    .line 158
    :cond_8
    iget v0, p0, Lcom/wufan/user/service/protobuf/MessageProto$Response;->onlinePeopleCount_:I

    .line 159
    .line 160
    if-eqz v0, :cond_9

    .line 161
    .line 162
    const/16 v1, 0x9

    .line 163
    .line 164
    invoke-virtual {p1, v1, v0}, Lcom/google/protobuf/CodedOutputStream;->writeInt32(II)V

    .line 165
    .line 166
    .line 167
    :cond_9
    iget-object v0, p0, Lcom/wufan/user/service/protobuf/MessageProto$Response;->queueInfo_:Lcom/wufan/user/service/protobuf/MessageProto$QueueInfo;

    .line 168
    .line 169
    if-eqz v0, :cond_a

    .line 170
    .line 171
    const/16 v0, 0xa

    .line 172
    .line 173
    invoke-virtual {p0}, Lcom/wufan/user/service/protobuf/MessageProto$Response;->getQueueInfo()Lcom/wufan/user/service/protobuf/MessageProto$QueueInfo;

    .line 174
    .line 175
    .line 176
    move-result-object v1

    .line 177
    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/CodedOutputStream;->writeMessage(ILcom/google/protobuf/MessageLite;)V

    .line 178
    .line 179
    .line 180
    :cond_a
    iget v0, p0, Lcom/wufan/user/service/protobuf/MessageProto$Response;->errorCode_:I

    .line 181
    .line 182
    if-eqz v0, :cond_b

    .line 183
    .line 184
    const/16 v1, 0xb

    .line 185
    .line 186
    invoke-virtual {p1, v1, v0}, Lcom/google/protobuf/CodedOutputStream;->writeInt32(II)V

    .line 187
    .line 188
    .line 189
    :cond_b
    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageV3;->unknownFields:Lcom/google/protobuf/UnknownFieldSet;

    .line 190
    .line 191
    invoke-virtual {v0, p1}, Lcom/google/protobuf/UnknownFieldSet;->writeTo(Lcom/google/protobuf/CodedOutputStream;)V

    .line 192
    .line 193
    .line 194
    return-void
.end method
